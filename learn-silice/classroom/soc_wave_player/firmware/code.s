
code.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00000097          	auipc	ra,0x0
       8:	1e4080e7          	jalr	484(ra) # 1e8 <main>
       c:	00000317          	auipc	t1,0x0
      10:	00830067          	jr	8(t1) # 14 <exit>

00000014 <exit>:
      14:	00000000          	.word	0x00000000
      18:	00008067          	ret

0000001c <clear_audio>:
      1c:	ff010113          	addi	sp,sp,-16 # fff0 <_files+0x20e8>
      20:	000057b7          	lui	a5,0x5
      24:	00812423          	sw	s0,8(sp)
      28:	f687a403          	lw	s0,-152(a5) # 4f68 <AUDIO>
      2c:	00112623          	sw	ra,12(sp)
      30:	00912223          	sw	s1,4(sp)
      34:	00042703          	lw	a4,0(s0)
      38:	00042783          	lw	a5,0(s0)
      3c:	fef70ee3          	beq	a4,a5,38 <clear_audio+0x1c>
      40:	00042483          	lw	s1,0(s0)
      44:	20000613          	li	a2,512
      48:	00000593          	li	a1,0
      4c:	00048513          	mv	a0,s1
      50:	00001097          	auipc	ra,0x1
      54:	388080e7          	jalr	904(ra) # 13d8 <memset>
      58:	00042783          	lw	a5,0(s0)
      5c:	fef48ee3          	beq	s1,a5,58 <clear_audio+0x3c>
      60:	00042483          	lw	s1,0(s0)
      64:	20000613          	li	a2,512
      68:	00000593          	li	a1,0
      6c:	00048513          	mv	a0,s1
      70:	00001097          	auipc	ra,0x1
      74:	368080e7          	jalr	872(ra) # 13d8 <memset>
      78:	00042783          	lw	a5,0(s0)
      7c:	fef48ee3          	beq	s1,a5,78 <clear_audio+0x5c>
      80:	00c12083          	lw	ra,12(sp)
      84:	00812403          	lw	s0,8(sp)
      88:	00412483          	lw	s1,4(sp)
      8c:	01010113          	addi	sp,sp,16
      90:	00008067          	ret

00000094 <scan_files>:
      94:	ec010113          	addi	sp,sp,-320
      98:	00005537          	lui	a0,0x5
      9c:	13212823          	sw	s2,304(sp)
      a0:	00410593          	addi	a1,sp,4
      a4:	00005937          	lui	s2,0x5
      a8:	f8050513          	addi	a0,a0,-128 # 4f80 <LEDS+0x4>
      ac:	12112e23          	sw	ra,316(sp)
      b0:	12812c23          	sw	s0,312(sp)
      b4:	12912a23          	sw	s1,308(sp)
      b8:	13312623          	sw	s3,300(sp)
      bc:	13412423          	sw	s4,296(sp)
      c0:	13512223          	sw	s5,292(sp)
      c4:	26092823          	sw	zero,624(s2) # 5270 <file_count>
      c8:	00003097          	auipc	ra,0x3
      cc:	440080e7          	jalr	1088(ra) # 3508 <fl_opendir>
      d0:	02050863          	beqz	a0,100 <scan_files+0x6c>
      d4:	01f00993          	li	s3,31
      d8:	00300a13          	li	s4,3
      dc:	02e00a93          	li	s5,46
      e0:	01010593          	addi	a1,sp,16
      e4:	00410513          	addi	a0,sp,4
      e8:	00004097          	auipc	ra,0x4
      ec:	ae4080e7          	jalr	-1308(ra) # 3bcc <fl_readdir>
      f0:	02050a63          	beqz	a0,124 <scan_files+0x90>
      f4:	00410513          	addi	a0,sp,4
      f8:	00002097          	auipc	ra,0x2
      fc:	fbc080e7          	jalr	-68(ra) # 20b4 <fl_closedir>
     100:	13c12083          	lw	ra,316(sp)
     104:	13812403          	lw	s0,312(sp)
     108:	13412483          	lw	s1,308(sp)
     10c:	13012903          	lw	s2,304(sp)
     110:	12c12983          	lw	s3,300(sp)
     114:	12812a03          	lw	s4,296(sp)
     118:	12412a83          	lw	s5,292(sp)
     11c:	14010113          	addi	sp,sp,320
     120:	00008067          	ret
     124:	27092403          	lw	s0,624(s2)
     128:	fc89c6e3          	blt	s3,s0,f4 <scan_files+0x60>
     12c:	11414783          	lbu	a5,276(sp)
     130:	fa0798e3          	bnez	a5,e0 <scan_files+0x4c>
     134:	01010513          	addi	a0,sp,16
     138:	00001097          	auipc	ra,0x1
     13c:	2e0080e7          	jalr	736(ra) # 1418 <strlen>
     140:	faaa50e3          	bge	s4,a0,e0 <scan_files+0x4c>
     144:	12050793          	addi	a5,a0,288
     148:	00278533          	add	a0,a5,sp
     14c:	eec54783          	lbu	a5,-276(a0)
     150:	f95798e3          	bne	a5,s5,e0 <scan_files+0x4c>
     154:	eed54783          	lbu	a5,-275(a0)
     158:	05200713          	li	a4,82
     15c:	0df7f793          	andi	a5,a5,223
     160:	f8e790e3          	bne	a5,a4,e0 <scan_files+0x4c>
     164:	eee54783          	lbu	a5,-274(a0)
     168:	04100713          	li	a4,65
     16c:	0df7f793          	andi	a5,a5,223
     170:	f6e798e3          	bne	a5,a4,e0 <scan_files+0x4c>
     174:	eef54783          	lbu	a5,-273(a0)
     178:	05700713          	li	a4,87
     17c:	0df7f793          	andi	a5,a5,223
     180:	f6e790e3          	bne	a5,a4,e0 <scan_files+0x4c>
     184:	000097b7          	lui	a5,0x9
     188:	00641493          	slli	s1,s0,0x6
     18c:	2a078793          	addi	a5,a5,672 # 92a0 <files>
     190:	00f484b3          	add	s1,s1,a5
     194:	03f00613          	li	a2,63
     198:	01010593          	addi	a1,sp,16
     19c:	00048513          	mv	a0,s1
     1a0:	00140413          	addi	s0,s0,1
     1a4:	00001097          	auipc	ra,0x1
     1a8:	2d4080e7          	jalr	724(ra) # 1478 <strncpy>
     1ac:	02048fa3          	sb	zero,63(s1)
     1b0:	26892823          	sw	s0,624(s2)
     1b4:	f2dff06f          	j	e0 <scan_files+0x4c>

000001b8 <clear_screen>:
     1b8:	ff010113          	addi	sp,sp,-16
     1bc:	00112623          	sw	ra,12(sp)
     1c0:	00001097          	auipc	ra,0x1
     1c4:	53c080e7          	jalr	1340(ra) # 16fc <display_framebuffer>
     1c8:	00004637          	lui	a2,0x4
     1cc:	00000593          	li	a1,0
     1d0:	00001097          	auipc	ra,0x1
     1d4:	208080e7          	jalr	520(ra) # 13d8 <memset>
     1d8:	00c12083          	lw	ra,12(sp)
     1dc:	01010113          	addi	sp,sp,16
     1e0:	00001317          	auipc	t1,0x1
     1e4:	6a430067          	jr	1700(t1) # 1884 <display_refresh>

000001e8 <main>:
     1e8:	000057b7          	lui	a5,0x5
     1ec:	f7c7a783          	lw	a5,-132(a5) # 4f7c <LEDS>
     1f0:	f1010113          	addi	sp,sp,-240
     1f4:	0e112623          	sw	ra,236(sp)
     1f8:	0e812423          	sw	s0,232(sp)
     1fc:	0e912223          	sw	s1,228(sp)
     200:	0f212023          	sw	s2,224(sp)
     204:	0d312e23          	sw	s3,220(sp)
     208:	0d412c23          	sw	s4,216(sp)
     20c:	0d512a23          	sw	s5,212(sp)
     210:	0d612823          	sw	s6,208(sp)
     214:	0d712623          	sw	s7,204(sp)
     218:	0d812423          	sw	s8,200(sp)
     21c:	0d912223          	sw	s9,196(sp)
     220:	0da12023          	sw	s10,192(sp)
     224:	0bb12e23          	sw	s11,188(sp)
     228:	0007a023          	sw	zero,0(a5)
     22c:	000017b7          	lui	a5,0x1
     230:	00005737          	lui	a4,0x5
     234:	73078793          	addi	a5,a5,1840 # 1730 <display_putchar>
     238:	28f72223          	sw	a5,644(a4) # 5284 <f_putchar>
     23c:	00001097          	auipc	ra,0x1
     240:	380080e7          	jalr	896(ra) # 15bc <oled_init>
     244:	00001097          	auipc	ra,0x1
     248:	384080e7          	jalr	900(ra) # 15c8 <oled_fullscreen>
     24c:	00000513          	li	a0,0
     250:	00001097          	auipc	ra,0x1
     254:	410080e7          	jalr	1040(ra) # 1660 <oled_clear>
     258:	00000593          	li	a1,0
     25c:	00000513          	li	a0,0
     260:	00001097          	auipc	ra,0x1
     264:	4a8080e7          	jalr	1192(ra) # 1708 <display_set_cursor>
     268:	00000593          	li	a1,0
     26c:	0ff00513          	li	a0,255
     270:	00001097          	auipc	ra,0x1
     274:	4ac080e7          	jalr	1196(ra) # 171c <display_set_front_back_color>
     278:	00005537          	lui	a0,0x5
     27c:	f8850513          	addi	a0,a0,-120 # 4f88 <LEDS+0xc>
     280:	00001097          	auipc	ra,0x1
     284:	7fc080e7          	jalr	2044(ra) # 1a7c <printf>
     288:	00001097          	auipc	ra,0x1
     28c:	5fc080e7          	jalr	1532(ra) # 1884 <display_refresh>
     290:	000014b7          	lui	s1,0x1
     294:	00001097          	auipc	ra,0x1
     298:	e6c080e7          	jalr	-404(ra) # 1100 <sdcard_init>
     29c:	00001437          	lui	s0,0x1
     2a0:	00002097          	auipc	ra,0x2
     2a4:	da4080e7          	jalr	-604(ra) # 2044 <fl_init>
     2a8:	31c48593          	addi	a1,s1,796 # 131c <sdcard_writesector>
     2ac:	2c840513          	addi	a0,s0,712 # 12c8 <sdcard_readsector>
     2b0:	00003097          	auipc	ra,0x3
     2b4:	c2c080e7          	jalr	-980(ra) # 2edc <fl_attach_media>
     2b8:	fe0518e3          	bnez	a0,2a8 <main+0xc0>
     2bc:	00000097          	auipc	ra,0x0
     2c0:	d60080e7          	jalr	-672(ra) # 1c <clear_audio>
     2c4:	00005537          	lui	a0,0x5
     2c8:	f9850513          	addi	a0,a0,-104 # 4f98 <LEDS+0x1c>
     2cc:	00001097          	auipc	ra,0x1
     2d0:	7b0080e7          	jalr	1968(ra) # 1a7c <printf>
     2d4:	00001097          	auipc	ra,0x1
     2d8:	5b0080e7          	jalr	1456(ra) # 1884 <display_refresh>
     2dc:	00000097          	auipc	ra,0x0
     2e0:	db8080e7          	jalr	-584(ra) # 94 <scan_files>
     2e4:	000057b7          	lui	a5,0x5
     2e8:	f6c7a903          	lw	s2,-148(a5) # 4f6c <BUTTONS>
     2ec:	000057b7          	lui	a5,0x5
     2f0:	f687a783          	lw	a5,-152(a5) # 4f68 <AUDIO>
     2f4:	00092483          	lw	s1,0(s2)
     2f8:	00005b37          	lui	s6,0x5
     2fc:	00000413          	li	s0,0
     300:	01a4f493          	andi	s1,s1,26
     304:	00005bb7          	lui	s7,0x5
     308:	00005c37          	lui	s8,0x5
     30c:	00f12623          	sw	a5,12(sp)
     310:	2a0b0c93          	addi	s9,s6,672 # 52a0 <tmp.0>
     314:	00000097          	auipc	ra,0x0
     318:	ea4080e7          	jalr	-348(ra) # 1b8 <clear_screen>
     31c:	00000593          	li	a1,0
     320:	00000513          	li	a0,0
     324:	00001097          	auipc	ra,0x1
     328:	3e4080e7          	jalr	996(ra) # 1708 <display_set_cursor>
     32c:	0ff00593          	li	a1,255
     330:	00000513          	li	a0,0
     334:	00001097          	auipc	ra,0x1
     338:	3e8080e7          	jalr	1000(ra) # 171c <display_set_front_back_color>
     33c:	f9cb8513          	addi	a0,s7,-100 # 4f9c <LEDS+0x20>
     340:	00001097          	auipc	ra,0x1
     344:	73c080e7          	jalr	1852(ra) # 1a7c <printf>
     348:	00000593          	li	a1,0
     34c:	0ff00513          	li	a0,255
     350:	00001097          	auipc	ra,0x1
     354:	3cc080e7          	jalr	972(ra) # 171c <display_set_front_back_color>
     358:	00005a37          	lui	s4,0x5
     35c:	270a2783          	lw	a5,624(s4) # 5270 <file_count>
     360:	04078663          	beqz	a5,3ac <main+0x1c4>
     364:	00009d37          	lui	s10,0x9
     368:	2a0d0d13          	addi	s10,s10,672 # 92a0 <files>
     36c:	00000993          	li	s3,0
     370:	270a2783          	lw	a5,624(s4)
     374:	04f9d463          	bge	s3,a5,3bc <main+0x1d4>
     378:	15341c63          	bne	s0,s3,4d0 <main+0x2e8>
     37c:	0ff00593          	li	a1,255
     380:	00000513          	li	a0,0
     384:	00001097          	auipc	ra,0x1
     388:	398080e7          	jalr	920(ra) # 171c <display_set_front_back_color>
     38c:	000d0613          	mv	a2,s10
     390:	00098593          	mv	a1,s3
     394:	fccc0513          	addi	a0,s8,-52 # 4fcc <LEDS+0x50>
     398:	00001097          	auipc	ra,0x1
     39c:	6e4080e7          	jalr	1764(ra) # 1a7c <printf>
     3a0:	00198993          	addi	s3,s3,1
     3a4:	040d0d13          	addi	s10,s10,64
     3a8:	fc9ff06f          	j	370 <main+0x188>
     3ac:	00005537          	lui	a0,0x5
     3b0:	fb850513          	addi	a0,a0,-72 # 4fb8 <LEDS+0x3c>
     3b4:	00001097          	auipc	ra,0x1
     3b8:	6c8080e7          	jalr	1736(ra) # 1a7c <printf>
     3bc:	00001097          	auipc	ra,0x1
     3c0:	4c8080e7          	jalr	1224(ra) # 1884 <display_refresh>
     3c4:	00092983          	lw	s3,0(s2)
     3c8:	fff4c493          	not	s1,s1
     3cc:	01a9f993          	andi	s3,s3,26
     3d0:	0134f4b3          	and	s1,s1,s3
     3d4:	0084f793          	andi	a5,s1,8
     3d8:	02078063          	beqz	a5,3f8 <main+0x210>
     3dc:	270a2583          	lw	a1,624(s4)
     3e0:	00058c63          	beqz	a1,3f8 <main+0x210>
     3e4:	fff40513          	addi	a0,s0,-1
     3e8:	00b50533          	add	a0,a0,a1
     3ec:	00001097          	auipc	ra,0x1
     3f0:	fbc080e7          	jalr	-68(ra) # 13a8 <__modsi3>
     3f4:	00050413          	mv	s0,a0
     3f8:	0104f793          	andi	a5,s1,16
     3fc:	00078e63          	beqz	a5,418 <main+0x230>
     400:	270a2583          	lw	a1,624(s4)
     404:	00058a63          	beqz	a1,418 <main+0x230>
     408:	00140513          	addi	a0,s0,1
     40c:	00001097          	auipc	ra,0x1
     410:	f9c080e7          	jalr	-100(ra) # 13a8 <__modsi3>
     414:	00050413          	mv	s0,a0
     418:	0024f493          	andi	s1,s1,2
     41c:	2e048e63          	beqz	s1,718 <main+0x530>
     420:	270a2783          	lw	a5,624(s4)
     424:	2ef05a63          	blez	a5,718 <main+0x530>
     428:	000097b7          	lui	a5,0x9
     42c:	2a078793          	addi	a5,a5,672 # 92a0 <files>
     430:	00641d13          	slli	s10,s0,0x6
     434:	00fd0d33          	add	s10,s10,a5
     438:	737577b7          	lui	a5,0x73757
     43c:	d2f78793          	addi	a5,a5,-721 # 73756d2f <__stacktop+0x73746d2f>
     440:	00f12c23          	sw	a5,24(sp)
     444:	000067b7          	lui	a5,0x6
     448:	36978793          	addi	a5,a5,873 # 6369 <tmp.0+0x10c9>
     44c:	00f11e23          	sh	a5,28(sp)
     450:	02f00793          	li	a5,47
     454:	00f10f23          	sb	a5,30(sp)
     458:	04900693          	li	a3,73
     45c:	00700793          	li	a5,7
     460:	00fd0733          	add	a4,s10,a5
     464:	ff974703          	lbu	a4,-7(a4)
     468:	00070663          	beqz	a4,474 <main+0x28c>
     46c:	06d79863          	bne	a5,a3,4dc <main+0x2f4>
     470:	04900793          	li	a5,73
     474:	01010713          	addi	a4,sp,16
     478:	0a078793          	addi	a5,a5,160
     47c:	00005a37          	lui	s4,0x5
     480:	00e787b3          	add	a5,a5,a4
     484:	fd4a0593          	addi	a1,s4,-44 # 4fd4 <LEDS+0x58>
     488:	01810513          	addi	a0,sp,24
     48c:	f6078423          	sb	zero,-152(a5)
     490:	00004097          	auipc	ra,0x4
     494:	6dc080e7          	jalr	1756(ra) # 4b6c <fl_fopen>
     498:	00050493          	mv	s1,a0
     49c:	04051a63          	bnez	a0,4f0 <main+0x308>
     4a0:	00000593          	li	a1,0
     4a4:	0ff00513          	li	a0,255
     4a8:	00001097          	auipc	ra,0x1
     4ac:	274080e7          	jalr	628(ra) # 171c <display_set_front_back_color>
     4b0:	00005537          	lui	a0,0x5
     4b4:	000d0593          	mv	a1,s10
     4b8:	fd850513          	addi	a0,a0,-40 # 4fd8 <LEDS+0x5c>
     4bc:	00001097          	auipc	ra,0x1
     4c0:	5c0080e7          	jalr	1472(ra) # 1a7c <printf>
     4c4:	00001097          	auipc	ra,0x1
     4c8:	3c0080e7          	jalr	960(ra) # 1884 <display_refresh>
     4cc:	24c0006f          	j	718 <main+0x530>
     4d0:	00000593          	li	a1,0
     4d4:	0ff00513          	li	a0,255
     4d8:	eadff06f          	j	384 <main+0x19c>
     4dc:	01810613          	addi	a2,sp,24
     4e0:	00f60633          	add	a2,a2,a5
     4e4:	00e60023          	sb	a4,0(a2) # 4000 <fatfs_fat_set_cluster+0x7c>
     4e8:	00178793          	addi	a5,a5,1
     4ec:	f75ff06f          	j	460 <main+0x278>
     4f0:	0ff00593          	li	a1,255
     4f4:	00000513          	li	a0,0
     4f8:	00001097          	auipc	ra,0x1
     4fc:	224080e7          	jalr	548(ra) # 171c <display_set_front_back_color>
     500:	00005537          	lui	a0,0x5
     504:	000d0593          	mv	a1,s10
     508:	fe850513          	addi	a0,a0,-24 # 4fe8 <LEDS+0x6c>
     50c:	00001097          	auipc	ra,0x1
     510:	570080e7          	jalr	1392(ra) # 1a7c <printf>
     514:	00001097          	auipc	ra,0x1
     518:	370080e7          	jalr	880(ra) # 1884 <display_refresh>
     51c:	676d77b7          	lui	a5,0x676d7
     520:	92f78793          	addi	a5,a5,-1745 # 676d692f <__stacktop+0x676c692f>
     524:	06f12223          	sw	a5,100(sp)
     528:	02f00793          	li	a5,47
     52c:	06f10423          	sb	a5,104(sp)
     530:	04400693          	li	a3,68
     534:	00500793          	li	a5,5
     538:	00fd0733          	add	a4,s10,a5
     53c:	ffb74703          	lbu	a4,-5(a4)
     540:	00070663          	beqz	a4,54c <main+0x364>
     544:	16d79863          	bne	a5,a3,6b4 <main+0x4cc>
     548:	04400793          	li	a5,68
     54c:	01010713          	addi	a4,sp,16
     550:	0a078793          	addi	a5,a5,160
     554:	00e787b3          	add	a5,a5,a4
     558:	05f00713          	li	a4,95
     55c:	fae78823          	sb	a4,-80(a5)
     560:	06900713          	li	a4,105
     564:	fae788a3          	sb	a4,-79(a5)
     568:	06d00713          	li	a4,109
     56c:	fae78923          	sb	a4,-78(a5)
     570:	06700713          	li	a4,103
     574:	fae789a3          	sb	a4,-77(a5)
     578:	02e00713          	li	a4,46
     57c:	fae78a23          	sb	a4,-76(a5)
     580:	07200713          	li	a4,114
     584:	fae78aa3          	sb	a4,-75(a5)
     588:	06100713          	li	a4,97
     58c:	fae78b23          	sb	a4,-74(a5)
     590:	fd4a0593          	addi	a1,s4,-44
     594:	07700713          	li	a4,119
     598:	06410513          	addi	a0,sp,100
     59c:	fae78ba3          	sb	a4,-73(a5)
     5a0:	fa078c23          	sb	zero,-72(a5)
     5a4:	00004097          	auipc	ra,0x4
     5a8:	5c8080e7          	jalr	1480(ra) # 4b6c <fl_fopen>
     5ac:	00050d13          	mv	s10,a0
     5b0:	02051063          	bnez	a0,5d0 <main+0x3e8>
     5b4:	00005537          	lui	a0,0x5
     5b8:	fd4a0593          	addi	a1,s4,-44
     5bc:	ffc50513          	addi	a0,a0,-4 # 4ffc <LEDS+0x80>
     5c0:	00004097          	auipc	ra,0x4
     5c4:	5ac080e7          	jalr	1452(ra) # 4b6c <fl_fopen>
     5c8:	00050d13          	mv	s10,a0
     5cc:	06050a63          	beqz	a0,640 <main+0x458>
     5d0:	00100593          	li	a1,1
     5d4:	000d0693          	mv	a3,s10
     5d8:	00004637          	lui	a2,0x4
     5dc:	2a0b0513          	addi	a0,s6,672
     5e0:	00004097          	auipc	ra,0x4
     5e4:	fb4080e7          	jalr	-76(ra) # 4594 <fl_fread>
     5e8:	000d0513          	mv	a0,s10
     5ec:	00004097          	auipc	ra,0x4
     5f0:	ec8080e7          	jalr	-312(ra) # 44b4 <fl_fclose>
     5f4:	00001097          	auipc	ra,0x1
     5f8:	108080e7          	jalr	264(ra) # 16fc <display_framebuffer>
     5fc:	07f00793          	li	a5,127
     600:	08000593          	li	a1,128
     604:	fff00813          	li	a6,-1
     608:	00779693          	slli	a3,a5,0x7
     60c:	01978633          	add	a2,a5,s9
     610:	00d506b3          	add	a3,a0,a3
     614:	00000713          	li	a4,0
     618:	00064303          	lbu	t1,0(a2) # 4000 <fatfs_fat_set_cluster+0x7c>
     61c:	00e688b3          	add	a7,a3,a4
     620:	00170713          	addi	a4,a4,1
     624:	00688023          	sb	t1,0(a7)
     628:	08060613          	addi	a2,a2,128
     62c:	feb716e3          	bne	a4,a1,618 <main+0x430>
     630:	fff78793          	addi	a5,a5,-1
     634:	fd079ae3          	bne	a5,a6,608 <main+0x420>
     638:	00001097          	auipc	ra,0x1
     63c:	24c080e7          	jalr	588(ra) # 1884 <display_refresh>
     640:	00000097          	auipc	ra,0x0
     644:	9dc080e7          	jalr	-1572(ra) # 1c <clear_audio>
     648:	00092a03          	lw	s4,0(s2)
     64c:	1ff00d93          	li	s11,511
     650:	f8000a93          	li	s5,-128
     654:	01aa7a13          	andi	s4,s4,26
     658:	00c12783          	lw	a5,12(sp)
     65c:	00048693          	mv	a3,s1
     660:	20000613          	li	a2,512
     664:	0007ad03          	lw	s10,0(a5)
     668:	00100593          	li	a1,1
     66c:	000d0513          	mv	a0,s10
     670:	00004097          	auipc	ra,0x4
     674:	f24080e7          	jalr	-220(ra) # 4594 <fl_fread>
     678:	04a04e63          	bgtz	a0,6d4 <main+0x4ec>
     67c:	00048513          	mv	a0,s1
     680:	00004097          	auipc	ra,0x4
     684:	e34080e7          	jalr	-460(ra) # 44b4 <fl_fclose>
     688:	00000097          	auipc	ra,0x0
     68c:	994080e7          	jalr	-1644(ra) # 1c <clear_audio>
     690:	00000593          	li	a1,0
     694:	0ff00513          	li	a0,255
     698:	00001097          	auipc	ra,0x1
     69c:	084080e7          	jalr	132(ra) # 171c <display_set_front_back_color>
     6a0:	00005537          	lui	a0,0x5
     6a4:	00c50513          	addi	a0,a0,12 # 500c <LEDS+0x90>
     6a8:	00001097          	auipc	ra,0x1
     6ac:	3d4080e7          	jalr	980(ra) # 1a7c <printf>
     6b0:	e15ff06f          	j	4c4 <main+0x2dc>
     6b4:	06410613          	addi	a2,sp,100
     6b8:	00f60633          	add	a2,a2,a5
     6bc:	00e60023          	sb	a4,0(a2)
     6c0:	00178793          	addi	a5,a5,1
     6c4:	e75ff06f          	j	538 <main+0x350>
     6c8:	01a507b3          	add	a5,a0,s10
     6cc:	01578023          	sb	s5,0(a5)
     6d0:	00150513          	addi	a0,a0,1
     6d4:	feaddae3          	bge	s11,a0,6c8 <main+0x4e0>
     6d8:	00c12783          	lw	a5,12(sp)
     6dc:	0007a783          	lw	a5,0(a5)
     6e0:	f6fd1ce3          	bne	s10,a5,658 <main+0x470>
     6e4:	00092783          	lw	a5,0(s2)
     6e8:	fffa4a13          	not	s4,s4
     6ec:	01a7f793          	andi	a5,a5,26
     6f0:	00fa7a33          	and	s4,s4,a5
     6f4:	002a7a13          	andi	s4,s4,2
     6f8:	020a0463          	beqz	s4,720 <main+0x538>
     6fc:	00048513          	mv	a0,s1
     700:	00004097          	auipc	ra,0x4
     704:	db4080e7          	jalr	-588(ra) # 44b4 <fl_fclose>
     708:	00000097          	auipc	ra,0x0
     70c:	914080e7          	jalr	-1772(ra) # 1c <clear_audio>
     710:	00000097          	auipc	ra,0x0
     714:	aa8080e7          	jalr	-1368(ra) # 1b8 <clear_screen>
     718:	00098493          	mv	s1,s3
     71c:	c01ff06f          	j	31c <main+0x134>
     720:	00078a13          	mv	s4,a5
     724:	fb5ff06f          	j	6d8 <main+0x4f0>

00000728 <sdcard_ponder>:
     728:	fe010113          	addi	sp,sp,-32
     72c:	00812e23          	sw	s0,28(sp)
     730:	02010413          	addi	s0,sp,32
     734:	fe042623          	sw	zero,-20(s0)
     738:	fe042423          	sw	zero,-24(s0)
     73c:	0380006f          	j	774 <sdcard_ponder+0x4c>
     740:	000057b7          	lui	a5,0x5
     744:	f707a783          	lw	a5,-144(a5) # 4f70 <SDCARD>
     748:	fec42703          	lw	a4,-20(s0)
     74c:	00676713          	ori	a4,a4,6
     750:	00e7a023          	sw	a4,0(a5)
     754:	00100713          	li	a4,1
     758:	fec42783          	lw	a5,-20(s0)
     75c:	40f707b3          	sub	a5,a4,a5
     760:	fef42623          	sw	a5,-20(s0)
     764:	00000013          	nop
     768:	fe842783          	lw	a5,-24(s0)
     76c:	00178793          	addi	a5,a5,1
     770:	fef42423          	sw	a5,-24(s0)
     774:	fe842703          	lw	a4,-24(s0)
     778:	00f00793          	li	a5,15
     77c:	fce7d2e3          	bge	a5,a4,740 <sdcard_ponder+0x18>
     780:	00000013          	nop
     784:	00000013          	nop
     788:	01c12403          	lw	s0,28(sp)
     78c:	02010113          	addi	sp,sp,32
     790:	00008067          	ret

00000794 <sdcard_send>:
     794:	fd010113          	addi	sp,sp,-48
     798:	02112623          	sw	ra,44(sp)
     79c:	02812423          	sw	s0,40(sp)
     7a0:	03010413          	addi	s0,sp,48
     7a4:	fca42e23          	sw	a0,-36(s0)
     7a8:	fe042623          	sw	zero,-20(s0)
     7ac:	fe042423          	sw	zero,-24(s0)
     7b0:	fdc42783          	lw	a5,-36(s0)
     7b4:	fef42223          	sw	a5,-28(s0)
     7b8:	fe442783          	lw	a5,-28(s0)
     7bc:	4077d793          	srai	a5,a5,0x7
     7c0:	0017f793          	andi	a5,a5,1
     7c4:	fef42423          	sw	a5,-24(s0)
     7c8:	fec42783          	lw	a5,-20(s0)
     7cc:	fe442703          	lw	a4,-28(s0)
     7d0:	00f717b3          	sll	a5,a4,a5
     7d4:	fef42223          	sw	a5,-28(s0)
     7d8:	fe842783          	lw	a5,-24(s0)
     7dc:	00179693          	slli	a3,a5,0x1
     7e0:	000057b7          	lui	a5,0x5
     7e4:	f707a783          	lw	a5,-144(a5) # 4f70 <SDCARD>
     7e8:	fec42703          	lw	a4,-20(s0)
     7ec:	00e6e733          	or	a4,a3,a4
     7f0:	00e7a023          	sw	a4,0(a5)
     7f4:	00100713          	li	a4,1
     7f8:	fec42783          	lw	a5,-20(s0)
     7fc:	40f707b3          	sub	a5,a4,a5
     800:	fef42623          	sw	a5,-20(s0)
     804:	fe442783          	lw	a5,-28(s0)
     808:	4077d793          	srai	a5,a5,0x7
     80c:	0017f793          	andi	a5,a5,1
     810:	fef42423          	sw	a5,-24(s0)
     814:	fec42783          	lw	a5,-20(s0)
     818:	fe442703          	lw	a4,-28(s0)
     81c:	00f717b3          	sll	a5,a4,a5
     820:	fef42223          	sw	a5,-28(s0)
     824:	fe842783          	lw	a5,-24(s0)
     828:	00179693          	slli	a3,a5,0x1
     82c:	000057b7          	lui	a5,0x5
     830:	f707a783          	lw	a5,-144(a5) # 4f70 <SDCARD>
     834:	fec42703          	lw	a4,-20(s0)
     838:	00e6e733          	or	a4,a3,a4
     83c:	00e7a023          	sw	a4,0(a5)
     840:	00100713          	li	a4,1
     844:	fec42783          	lw	a5,-20(s0)
     848:	40f707b3          	sub	a5,a4,a5
     84c:	fef42623          	sw	a5,-20(s0)
     850:	fe442783          	lw	a5,-28(s0)
     854:	4077d793          	srai	a5,a5,0x7
     858:	0017f793          	andi	a5,a5,1
     85c:	fef42423          	sw	a5,-24(s0)
     860:	fec42783          	lw	a5,-20(s0)
     864:	fe442703          	lw	a4,-28(s0)
     868:	00f717b3          	sll	a5,a4,a5
     86c:	fef42223          	sw	a5,-28(s0)
     870:	fe842783          	lw	a5,-24(s0)
     874:	00179693          	slli	a3,a5,0x1
     878:	000057b7          	lui	a5,0x5
     87c:	f707a783          	lw	a5,-144(a5) # 4f70 <SDCARD>
     880:	fec42703          	lw	a4,-20(s0)
     884:	00e6e733          	or	a4,a3,a4
     888:	00e7a023          	sw	a4,0(a5)
     88c:	00100713          	li	a4,1
     890:	fec42783          	lw	a5,-20(s0)
     894:	40f707b3          	sub	a5,a4,a5
     898:	fef42623          	sw	a5,-20(s0)
     89c:	fe442783          	lw	a5,-28(s0)
     8a0:	4077d793          	srai	a5,a5,0x7
     8a4:	0017f793          	andi	a5,a5,1
     8a8:	fef42423          	sw	a5,-24(s0)
     8ac:	fec42783          	lw	a5,-20(s0)
     8b0:	fe442703          	lw	a4,-28(s0)
     8b4:	00f717b3          	sll	a5,a4,a5
     8b8:	fef42223          	sw	a5,-28(s0)
     8bc:	fe842783          	lw	a5,-24(s0)
     8c0:	00179693          	slli	a3,a5,0x1
     8c4:	000057b7          	lui	a5,0x5
     8c8:	f707a783          	lw	a5,-144(a5) # 4f70 <SDCARD>
     8cc:	fec42703          	lw	a4,-20(s0)
     8d0:	00e6e733          	or	a4,a3,a4
     8d4:	00e7a023          	sw	a4,0(a5)
     8d8:	00100713          	li	a4,1
     8dc:	fec42783          	lw	a5,-20(s0)
     8e0:	40f707b3          	sub	a5,a4,a5
     8e4:	fef42623          	sw	a5,-20(s0)
     8e8:	fe442783          	lw	a5,-28(s0)
     8ec:	4077d793          	srai	a5,a5,0x7
     8f0:	0017f793          	andi	a5,a5,1
     8f4:	fef42423          	sw	a5,-24(s0)
     8f8:	fec42783          	lw	a5,-20(s0)
     8fc:	fe442703          	lw	a4,-28(s0)
     900:	00f717b3          	sll	a5,a4,a5
     904:	fef42223          	sw	a5,-28(s0)
     908:	fe842783          	lw	a5,-24(s0)
     90c:	00179693          	slli	a3,a5,0x1
     910:	000057b7          	lui	a5,0x5
     914:	f707a783          	lw	a5,-144(a5) # 4f70 <SDCARD>
     918:	fec42703          	lw	a4,-20(s0)
     91c:	00e6e733          	or	a4,a3,a4
     920:	00e7a023          	sw	a4,0(a5)
     924:	00100713          	li	a4,1
     928:	fec42783          	lw	a5,-20(s0)
     92c:	40f707b3          	sub	a5,a4,a5
     930:	fef42623          	sw	a5,-20(s0)
     934:	fe442783          	lw	a5,-28(s0)
     938:	4077d793          	srai	a5,a5,0x7
     93c:	0017f793          	andi	a5,a5,1
     940:	fef42423          	sw	a5,-24(s0)
     944:	fec42783          	lw	a5,-20(s0)
     948:	fe442703          	lw	a4,-28(s0)
     94c:	00f717b3          	sll	a5,a4,a5
     950:	fef42223          	sw	a5,-28(s0)
     954:	fe842783          	lw	a5,-24(s0)
     958:	00179693          	slli	a3,a5,0x1
     95c:	000057b7          	lui	a5,0x5
     960:	f707a783          	lw	a5,-144(a5) # 4f70 <SDCARD>
     964:	fec42703          	lw	a4,-20(s0)
     968:	00e6e733          	or	a4,a3,a4
     96c:	00e7a023          	sw	a4,0(a5)
     970:	00100713          	li	a4,1
     974:	fec42783          	lw	a5,-20(s0)
     978:	40f707b3          	sub	a5,a4,a5
     97c:	fef42623          	sw	a5,-20(s0)
     980:	fe442783          	lw	a5,-28(s0)
     984:	4077d793          	srai	a5,a5,0x7
     988:	0017f793          	andi	a5,a5,1
     98c:	fef42423          	sw	a5,-24(s0)
     990:	fec42783          	lw	a5,-20(s0)
     994:	fe442703          	lw	a4,-28(s0)
     998:	00f717b3          	sll	a5,a4,a5
     99c:	fef42223          	sw	a5,-28(s0)
     9a0:	fe842783          	lw	a5,-24(s0)
     9a4:	00179693          	slli	a3,a5,0x1
     9a8:	000057b7          	lui	a5,0x5
     9ac:	f707a783          	lw	a5,-144(a5) # 4f70 <SDCARD>
     9b0:	fec42703          	lw	a4,-20(s0)
     9b4:	00e6e733          	or	a4,a3,a4
     9b8:	00e7a023          	sw	a4,0(a5)
     9bc:	00100713          	li	a4,1
     9c0:	fec42783          	lw	a5,-20(s0)
     9c4:	40f707b3          	sub	a5,a4,a5
     9c8:	fef42623          	sw	a5,-20(s0)
     9cc:	fe442783          	lw	a5,-28(s0)
     9d0:	4077d793          	srai	a5,a5,0x7
     9d4:	0017f793          	andi	a5,a5,1
     9d8:	fef42423          	sw	a5,-24(s0)
     9dc:	fec42783          	lw	a5,-20(s0)
     9e0:	fe442703          	lw	a4,-28(s0)
     9e4:	00f717b3          	sll	a5,a4,a5
     9e8:	fef42223          	sw	a5,-28(s0)
     9ec:	fe842783          	lw	a5,-24(s0)
     9f0:	00179693          	slli	a3,a5,0x1
     9f4:	000057b7          	lui	a5,0x5
     9f8:	f707a783          	lw	a5,-144(a5) # 4f70 <SDCARD>
     9fc:	fec42703          	lw	a4,-20(s0)
     a00:	00e6e733          	or	a4,a3,a4
     a04:	00e7a023          	sw	a4,0(a5)
     a08:	00100713          	li	a4,1
     a0c:	fec42783          	lw	a5,-20(s0)
     a10:	40f707b3          	sub	a5,a4,a5
     a14:	fef42623          	sw	a5,-20(s0)
     a18:	fe442783          	lw	a5,-28(s0)
     a1c:	4077d793          	srai	a5,a5,0x7
     a20:	0017f793          	andi	a5,a5,1
     a24:	fef42423          	sw	a5,-24(s0)
     a28:	fec42783          	lw	a5,-20(s0)
     a2c:	fe442703          	lw	a4,-28(s0)
     a30:	00f717b3          	sll	a5,a4,a5
     a34:	fef42223          	sw	a5,-28(s0)
     a38:	fe842783          	lw	a5,-24(s0)
     a3c:	00179693          	slli	a3,a5,0x1
     a40:	000057b7          	lui	a5,0x5
     a44:	f707a783          	lw	a5,-144(a5) # 4f70 <SDCARD>
     a48:	fec42703          	lw	a4,-20(s0)
     a4c:	00e6e733          	or	a4,a3,a4
     a50:	00e7a023          	sw	a4,0(a5)
     a54:	00100713          	li	a4,1
     a58:	fec42783          	lw	a5,-20(s0)
     a5c:	40f707b3          	sub	a5,a4,a5
     a60:	fef42623          	sw	a5,-20(s0)
     a64:	fe442783          	lw	a5,-28(s0)
     a68:	4077d793          	srai	a5,a5,0x7
     a6c:	0017f793          	andi	a5,a5,1
     a70:	fef42423          	sw	a5,-24(s0)
     a74:	fec42783          	lw	a5,-20(s0)
     a78:	fe442703          	lw	a4,-28(s0)
     a7c:	00f717b3          	sll	a5,a4,a5
     a80:	fef42223          	sw	a5,-28(s0)
     a84:	fe842783          	lw	a5,-24(s0)
     a88:	00179693          	slli	a3,a5,0x1
     a8c:	000057b7          	lui	a5,0x5
     a90:	f707a783          	lw	a5,-144(a5) # 4f70 <SDCARD>
     a94:	fec42703          	lw	a4,-20(s0)
     a98:	00e6e733          	or	a4,a3,a4
     a9c:	00e7a023          	sw	a4,0(a5)
     aa0:	00100713          	li	a4,1
     aa4:	fec42783          	lw	a5,-20(s0)
     aa8:	40f707b3          	sub	a5,a4,a5
     aac:	fef42623          	sw	a5,-20(s0)
     ab0:	fe442783          	lw	a5,-28(s0)
     ab4:	4077d793          	srai	a5,a5,0x7
     ab8:	0017f793          	andi	a5,a5,1
     abc:	fef42423          	sw	a5,-24(s0)
     ac0:	fec42783          	lw	a5,-20(s0)
     ac4:	fe442703          	lw	a4,-28(s0)
     ac8:	00f717b3          	sll	a5,a4,a5
     acc:	fef42223          	sw	a5,-28(s0)
     ad0:	fe842783          	lw	a5,-24(s0)
     ad4:	00179693          	slli	a3,a5,0x1
     ad8:	000057b7          	lui	a5,0x5
     adc:	f707a783          	lw	a5,-144(a5) # 4f70 <SDCARD>
     ae0:	fec42703          	lw	a4,-20(s0)
     ae4:	00e6e733          	or	a4,a3,a4
     ae8:	00e7a023          	sw	a4,0(a5)
     aec:	00100713          	li	a4,1
     af0:	fec42783          	lw	a5,-20(s0)
     af4:	40f707b3          	sub	a5,a4,a5
     af8:	fef42623          	sw	a5,-20(s0)
     afc:	fe442783          	lw	a5,-28(s0)
     b00:	4077d793          	srai	a5,a5,0x7
     b04:	0017f793          	andi	a5,a5,1
     b08:	fef42423          	sw	a5,-24(s0)
     b0c:	fec42783          	lw	a5,-20(s0)
     b10:	fe442703          	lw	a4,-28(s0)
     b14:	00f717b3          	sll	a5,a4,a5
     b18:	fef42223          	sw	a5,-28(s0)
     b1c:	fe842783          	lw	a5,-24(s0)
     b20:	00179693          	slli	a3,a5,0x1
     b24:	000057b7          	lui	a5,0x5
     b28:	f707a783          	lw	a5,-144(a5) # 4f70 <SDCARD>
     b2c:	fec42703          	lw	a4,-20(s0)
     b30:	00e6e733          	or	a4,a3,a4
     b34:	00e7a023          	sw	a4,0(a5)
     b38:	00100713          	li	a4,1
     b3c:	fec42783          	lw	a5,-20(s0)
     b40:	40f707b3          	sub	a5,a4,a5
     b44:	fef42623          	sw	a5,-20(s0)
     b48:	fe442783          	lw	a5,-28(s0)
     b4c:	4077d793          	srai	a5,a5,0x7
     b50:	0017f793          	andi	a5,a5,1
     b54:	fef42423          	sw	a5,-24(s0)
     b58:	fec42783          	lw	a5,-20(s0)
     b5c:	fe442703          	lw	a4,-28(s0)
     b60:	00f717b3          	sll	a5,a4,a5
     b64:	fef42223          	sw	a5,-28(s0)
     b68:	fe842783          	lw	a5,-24(s0)
     b6c:	00179693          	slli	a3,a5,0x1
     b70:	000057b7          	lui	a5,0x5
     b74:	f707a783          	lw	a5,-144(a5) # 4f70 <SDCARD>
     b78:	fec42703          	lw	a4,-20(s0)
     b7c:	00e6e733          	or	a4,a3,a4
     b80:	00e7a023          	sw	a4,0(a5)
     b84:	00100713          	li	a4,1
     b88:	fec42783          	lw	a5,-20(s0)
     b8c:	40f707b3          	sub	a5,a4,a5
     b90:	fef42623          	sw	a5,-20(s0)
     b94:	fe442783          	lw	a5,-28(s0)
     b98:	4077d793          	srai	a5,a5,0x7
     b9c:	0017f793          	andi	a5,a5,1
     ba0:	fef42423          	sw	a5,-24(s0)
     ba4:	fec42783          	lw	a5,-20(s0)
     ba8:	fe442703          	lw	a4,-28(s0)
     bac:	00f717b3          	sll	a5,a4,a5
     bb0:	fef42223          	sw	a5,-28(s0)
     bb4:	fe842783          	lw	a5,-24(s0)
     bb8:	00179693          	slli	a3,a5,0x1
     bbc:	000057b7          	lui	a5,0x5
     bc0:	f707a783          	lw	a5,-144(a5) # 4f70 <SDCARD>
     bc4:	fec42703          	lw	a4,-20(s0)
     bc8:	00e6e733          	or	a4,a3,a4
     bcc:	00e7a023          	sw	a4,0(a5)
     bd0:	00100713          	li	a4,1
     bd4:	fec42783          	lw	a5,-20(s0)
     bd8:	40f707b3          	sub	a5,a4,a5
     bdc:	fef42623          	sw	a5,-20(s0)
     be0:	fe442783          	lw	a5,-28(s0)
     be4:	4077d793          	srai	a5,a5,0x7
     be8:	0017f793          	andi	a5,a5,1
     bec:	fef42423          	sw	a5,-24(s0)
     bf0:	fec42783          	lw	a5,-20(s0)
     bf4:	fe442703          	lw	a4,-28(s0)
     bf8:	00f717b3          	sll	a5,a4,a5
     bfc:	fef42223          	sw	a5,-28(s0)
     c00:	fe842783          	lw	a5,-24(s0)
     c04:	00179693          	slli	a3,a5,0x1
     c08:	000057b7          	lui	a5,0x5
     c0c:	f707a783          	lw	a5,-144(a5) # 4f70 <SDCARD>
     c10:	fec42703          	lw	a4,-20(s0)
     c14:	00e6e733          	or	a4,a3,a4
     c18:	00e7a023          	sw	a4,0(a5)
     c1c:	00100713          	li	a4,1
     c20:	fec42783          	lw	a5,-20(s0)
     c24:	40f707b3          	sub	a5,a4,a5
     c28:	fef42623          	sw	a5,-20(s0)
     c2c:	fe442783          	lw	a5,-28(s0)
     c30:	4077d793          	srai	a5,a5,0x7
     c34:	0017f793          	andi	a5,a5,1
     c38:	fef42423          	sw	a5,-24(s0)
     c3c:	fec42783          	lw	a5,-20(s0)
     c40:	fe442703          	lw	a4,-28(s0)
     c44:	00f717b3          	sll	a5,a4,a5
     c48:	fef42223          	sw	a5,-28(s0)
     c4c:	fe842783          	lw	a5,-24(s0)
     c50:	00179693          	slli	a3,a5,0x1
     c54:	000057b7          	lui	a5,0x5
     c58:	f707a783          	lw	a5,-144(a5) # 4f70 <SDCARD>
     c5c:	fec42703          	lw	a4,-20(s0)
     c60:	00e6e733          	or	a4,a3,a4
     c64:	00e7a023          	sw	a4,0(a5)
     c68:	00100713          	li	a4,1
     c6c:	fec42783          	lw	a5,-20(s0)
     c70:	40f707b3          	sub	a5,a4,a5
     c74:	fef42623          	sw	a5,-20(s0)
     c78:	000057b7          	lui	a5,0x5
     c7c:	f707a783          	lw	a5,-144(a5) # 4f70 <SDCARD>
     c80:	00200713          	li	a4,2
     c84:	00e7a023          	sw	a4,0(a5)
     c88:	000057b7          	lui	a5,0x5
     c8c:	2747a783          	lw	a5,628(a5) # 5274 <sdcard_while_loading_callback>
     c90:	000780e7          	jalr	a5
     c94:	00000013          	nop
     c98:	02c12083          	lw	ra,44(sp)
     c9c:	02812403          	lw	s0,40(sp)
     ca0:	03010113          	addi	sp,sp,48
     ca4:	00008067          	ret

00000ca8 <sdcard_read>:
     ca8:	fc010113          	addi	sp,sp,-64
     cac:	02112e23          	sw	ra,60(sp)
     cb0:	02812c23          	sw	s0,56(sp)
     cb4:	04010413          	addi	s0,sp,64
     cb8:	00050793          	mv	a5,a0
     cbc:	00058713          	mv	a4,a1
     cc0:	fcf407a3          	sb	a5,-49(s0)
     cc4:	00070793          	mv	a5,a4
     cc8:	fcf40723          	sb	a5,-50(s0)
     ccc:	fce44783          	lbu	a5,-50(s0)
     cd0:	fef42223          	sw	a5,-28(s0)
     cd4:	fcf44783          	lbu	a5,-49(s0)
     cd8:	fef42023          	sw	a5,-32(s0)
     cdc:	fe042623          	sw	zero,-20(s0)
     ce0:	0ff00793          	li	a5,255
     ce4:	fef42423          	sw	a5,-24(s0)
     ce8:	0600006f          	j	d48 <sdcard_read+0xa0>
     cec:	000057b7          	lui	a5,0x5
     cf0:	f707a783          	lw	a5,-144(a5) # 4f70 <SDCARD>
     cf4:	00300713          	li	a4,3
     cf8:	00e7a023          	sw	a4,0(a5)
     cfc:	fec42783          	lw	a5,-20(s0)
     d00:	00178793          	addi	a5,a5,1
     d04:	fef42623          	sw	a5,-20(s0)
     d08:	000057b7          	lui	a5,0x5
     d0c:	f707a783          	lw	a5,-144(a5) # 4f70 <SDCARD>
     d10:	00200713          	li	a4,2
     d14:	00e7a023          	sw	a4,0(a5)
     d18:	000057b7          	lui	a5,0x5
     d1c:	f707a783          	lw	a5,-144(a5) # 4f70 <SDCARD>
     d20:	0007a783          	lw	a5,0(a5)
     d24:	fcf42e23          	sw	a5,-36(s0)
     d28:	fe842783          	lw	a5,-24(s0)
     d2c:	00179793          	slli	a5,a5,0x1
     d30:	fdc42703          	lw	a4,-36(s0)
     d34:	00f767b3          	or	a5,a4,a5
     d38:	fef42423          	sw	a5,-24(s0)
     d3c:	000057b7          	lui	a5,0x5
     d40:	2747a783          	lw	a5,628(a5) # 5274 <sdcard_while_loading_callback>
     d44:	000780e7          	jalr	a5
     d48:	fe442783          	lw	a5,-28(s0)
     d4c:	00078e63          	beqz	a5,d68 <sdcard_read+0xc0>
     d50:	fe042783          	lw	a5,-32(s0)
     d54:	fff78793          	addi	a5,a5,-1
     d58:	fe842703          	lw	a4,-24(s0)
     d5c:	40f757b3          	sra	a5,a4,a5
     d60:	0017f793          	andi	a5,a5,1
     d64:	f80794e3          	bnez	a5,cec <sdcard_read+0x44>
     d68:	fe442783          	lw	a5,-28(s0)
     d6c:	00079863          	bnez	a5,d7c <sdcard_read+0xd4>
     d70:	fec42703          	lw	a4,-20(s0)
     d74:	fe042783          	lw	a5,-32(s0)
     d78:	f6f74ae3          	blt	a4,a5,cec <sdcard_read+0x44>
     d7c:	fe842783          	lw	a5,-24(s0)
     d80:	0ff7f793          	zext.b	a5,a5
     d84:	00078513          	mv	a0,a5
     d88:	03c12083          	lw	ra,60(sp)
     d8c:	03812403          	lw	s0,56(sp)
     d90:	04010113          	addi	sp,sp,64
     d94:	00008067          	ret

00000d98 <sdcard_get>:
     d98:	fd010113          	addi	sp,sp,-48
     d9c:	02112623          	sw	ra,44(sp)
     da0:	02812423          	sw	s0,40(sp)
     da4:	03010413          	addi	s0,sp,48
     da8:	00050793          	mv	a5,a0
     dac:	00058713          	mv	a4,a1
     db0:	fcf40fa3          	sb	a5,-33(s0)
     db4:	00070793          	mv	a5,a4
     db8:	fcf40f23          	sb	a5,-34(s0)
     dbc:	00000097          	auipc	ra,0x0
     dc0:	4e4080e7          	jalr	1252(ra) # 12a0 <sdcard_select>
     dc4:	fde44703          	lbu	a4,-34(s0)
     dc8:	fdf44783          	lbu	a5,-33(s0)
     dcc:	00070593          	mv	a1,a4
     dd0:	00078513          	mv	a0,a5
     dd4:	00000097          	auipc	ra,0x0
     dd8:	ed4080e7          	jalr	-300(ra) # ca8 <sdcard_read>
     ddc:	00050793          	mv	a5,a0
     de0:	fef407a3          	sb	a5,-17(s0)
     de4:	00100793          	li	a5,1
     de8:	fef42423          	sw	a5,-24(s0)
     dec:	0280006f          	j	e14 <sdcard_get+0x7c>
     df0:	00000593          	li	a1,0
     df4:	00800513          	li	a0,8
     df8:	00000097          	auipc	ra,0x0
     dfc:	eb0080e7          	jalr	-336(ra) # ca8 <sdcard_read>
     e00:	00050793          	mv	a5,a0
     e04:	fef407a3          	sb	a5,-17(s0)
     e08:	fe842783          	lw	a5,-24(s0)
     e0c:	00178793          	addi	a5,a5,1
     e10:	fef42423          	sw	a5,-24(s0)
     e14:	fdf44783          	lbu	a5,-33(s0)
     e18:	0037d793          	srli	a5,a5,0x3
     e1c:	0ff7f793          	zext.b	a5,a5
     e20:	00078713          	mv	a4,a5
     e24:	fe842783          	lw	a5,-24(s0)
     e28:	fce7c4e3          	blt	a5,a4,df0 <sdcard_get+0x58>
     e2c:	00000097          	auipc	ra,0x0
     e30:	488080e7          	jalr	1160(ra) # 12b4 <sdcard_unselect>
     e34:	fef44783          	lbu	a5,-17(s0)
     e38:	00078513          	mv	a0,a5
     e3c:	02c12083          	lw	ra,44(sp)
     e40:	02812403          	lw	s0,40(sp)
     e44:	03010113          	addi	sp,sp,48
     e48:	00008067          	ret

00000e4c <sdcard_cmd>:
     e4c:	fd010113          	addi	sp,sp,-48
     e50:	02112623          	sw	ra,44(sp)
     e54:	02812423          	sw	s0,40(sp)
     e58:	03010413          	addi	s0,sp,48
     e5c:	fca42e23          	sw	a0,-36(s0)
     e60:	00000097          	auipc	ra,0x0
     e64:	440080e7          	jalr	1088(ra) # 12a0 <sdcard_select>
     e68:	fe042623          	sw	zero,-20(s0)
     e6c:	02c0006f          	j	e98 <sdcard_cmd+0x4c>
     e70:	fec42783          	lw	a5,-20(s0)
     e74:	fdc42703          	lw	a4,-36(s0)
     e78:	00f707b3          	add	a5,a4,a5
     e7c:	0007c783          	lbu	a5,0(a5)
     e80:	00078513          	mv	a0,a5
     e84:	00000097          	auipc	ra,0x0
     e88:	910080e7          	jalr	-1776(ra) # 794 <sdcard_send>
     e8c:	fec42783          	lw	a5,-20(s0)
     e90:	00178793          	addi	a5,a5,1
     e94:	fef42623          	sw	a5,-20(s0)
     e98:	fec42703          	lw	a4,-20(s0)
     e9c:	00500793          	li	a5,5
     ea0:	fce7d8e3          	bge	a5,a4,e70 <sdcard_cmd+0x24>
     ea4:	00000097          	auipc	ra,0x0
     ea8:	410080e7          	jalr	1040(ra) # 12b4 <sdcard_unselect>
     eac:	00000013          	nop
     eb0:	02c12083          	lw	ra,44(sp)
     eb4:	02812403          	lw	s0,40(sp)
     eb8:	03010113          	addi	sp,sp,48
     ebc:	00008067          	ret

00000ec0 <sdcard_start_sector>:
     ec0:	fe010113          	addi	sp,sp,-32
     ec4:	00112e23          	sw	ra,28(sp)
     ec8:	00812c23          	sw	s0,24(sp)
     ecc:	02010413          	addi	s0,sp,32
     ed0:	fea42623          	sw	a0,-20(s0)
     ed4:	00000097          	auipc	ra,0x0
     ed8:	3cc080e7          	jalr	972(ra) # 12a0 <sdcard_select>
     edc:	05100793          	li	a5,81
     ee0:	00078513          	mv	a0,a5
     ee4:	00000097          	auipc	ra,0x0
     ee8:	8b0080e7          	jalr	-1872(ra) # 794 <sdcard_send>
     eec:	fec42783          	lw	a5,-20(s0)
     ef0:	0187d793          	srli	a5,a5,0x18
     ef4:	00078513          	mv	a0,a5
     ef8:	00000097          	auipc	ra,0x0
     efc:	89c080e7          	jalr	-1892(ra) # 794 <sdcard_send>
     f00:	fec42783          	lw	a5,-20(s0)
     f04:	4107d793          	srai	a5,a5,0x10
     f08:	0ff7f793          	zext.b	a5,a5
     f0c:	00078513          	mv	a0,a5
     f10:	00000097          	auipc	ra,0x0
     f14:	884080e7          	jalr	-1916(ra) # 794 <sdcard_send>
     f18:	fec42783          	lw	a5,-20(s0)
     f1c:	4087d793          	srai	a5,a5,0x8
     f20:	0ff7f793          	zext.b	a5,a5
     f24:	00078513          	mv	a0,a5
     f28:	00000097          	auipc	ra,0x0
     f2c:	86c080e7          	jalr	-1940(ra) # 794 <sdcard_send>
     f30:	fec42783          	lw	a5,-20(s0)
     f34:	0ff7f793          	zext.b	a5,a5
     f38:	00078513          	mv	a0,a5
     f3c:	00000097          	auipc	ra,0x0
     f40:	858080e7          	jalr	-1960(ra) # 794 <sdcard_send>
     f44:	05500793          	li	a5,85
     f48:	00078513          	mv	a0,a5
     f4c:	00000097          	auipc	ra,0x0
     f50:	848080e7          	jalr	-1976(ra) # 794 <sdcard_send>
     f54:	00000097          	auipc	ra,0x0
     f58:	360080e7          	jalr	864(ra) # 12b4 <sdcard_unselect>
     f5c:	fffff097          	auipc	ra,0xfffff
     f60:	7cc080e7          	jalr	1996(ra) # 728 <sdcard_ponder>
     f64:	00100593          	li	a1,1
     f68:	00800513          	li	a0,8
     f6c:	00000097          	auipc	ra,0x0
     f70:	e2c080e7          	jalr	-468(ra) # d98 <sdcard_get>
     f74:	00050793          	mv	a5,a0
     f78:	00078513          	mv	a0,a5
     f7c:	01c12083          	lw	ra,28(sp)
     f80:	01812403          	lw	s0,24(sp)
     f84:	02010113          	addi	sp,sp,32
     f88:	00008067          	ret

00000f8c <sdcard_read_sector>:
     f8c:	fd010113          	addi	sp,sp,-48
     f90:	02112623          	sw	ra,44(sp)
     f94:	02812423          	sw	s0,40(sp)
     f98:	03010413          	addi	s0,sp,48
     f9c:	fca42e23          	sw	a0,-36(s0)
     fa0:	fcb42c23          	sw	a1,-40(s0)
     fa4:	fdc42503          	lw	a0,-36(s0)
     fa8:	00000097          	auipc	ra,0x0
     fac:	f18080e7          	jalr	-232(ra) # ec0 <sdcard_start_sector>
     fb0:	00050793          	mv	a5,a0
     fb4:	fef405a3          	sb	a5,-21(s0)
     fb8:	feb44783          	lbu	a5,-21(s0)
     fbc:	00078663          	beqz	a5,fc8 <sdcard_read_sector+0x3c>
     fc0:	fd842783          	lw	a5,-40(s0)
     fc4:	08c0006f          	j	1050 <sdcard_read_sector+0xc4>
     fc8:	00100593          	li	a1,1
     fcc:	00100513          	li	a0,1
     fd0:	00000097          	auipc	ra,0x0
     fd4:	dc8080e7          	jalr	-568(ra) # d98 <sdcard_get>
     fd8:	fe042623          	sw	zero,-20(s0)
     fdc:	03c0006f          	j	1018 <sdcard_read_sector+0x8c>
     fe0:	00000593          	li	a1,0
     fe4:	00800513          	li	a0,8
     fe8:	00000097          	auipc	ra,0x0
     fec:	db0080e7          	jalr	-592(ra) # d98 <sdcard_get>
     ff0:	00050793          	mv	a5,a0
     ff4:	fef401a3          	sb	a5,-29(s0)
     ff8:	fd842783          	lw	a5,-40(s0)
     ffc:	00178713          	addi	a4,a5,1
    1000:	fce42c23          	sw	a4,-40(s0)
    1004:	fe344703          	lbu	a4,-29(s0)
    1008:	00e78023          	sb	a4,0(a5)
    100c:	fec42783          	lw	a5,-20(s0)
    1010:	00178793          	addi	a5,a5,1
    1014:	fef42623          	sw	a5,-20(s0)
    1018:	fec42703          	lw	a4,-20(s0)
    101c:	1ff00793          	li	a5,511
    1020:	fce7d0e3          	bge	a5,a4,fe0 <sdcard_read_sector+0x54>
    1024:	00000593          	li	a1,0
    1028:	01000513          	li	a0,16
    102c:	00000097          	auipc	ra,0x0
    1030:	d6c080e7          	jalr	-660(ra) # d98 <sdcard_get>
    1034:	00050793          	mv	a5,a0
    1038:	fef42223          	sw	a5,-28(s0)
    103c:	00000097          	auipc	ra,0x0
    1040:	278080e7          	jalr	632(ra) # 12b4 <sdcard_unselect>
    1044:	fffff097          	auipc	ra,0xfffff
    1048:	6e4080e7          	jalr	1764(ra) # 728 <sdcard_ponder>
    104c:	fd842783          	lw	a5,-40(s0)
    1050:	00078513          	mv	a0,a5
    1054:	02c12083          	lw	ra,44(sp)
    1058:	02812403          	lw	s0,40(sp)
    105c:	03010113          	addi	sp,sp,48
    1060:	00008067          	ret

00001064 <sdcard_preinit>:
    1064:	fe010113          	addi	sp,sp,-32
    1068:	00112e23          	sw	ra,28(sp)
    106c:	00812c23          	sw	s0,24(sp)
    1070:	02010413          	addi	s0,sp,32
    1074:	000057b7          	lui	a5,0x5
    1078:	f707a783          	lw	a5,-144(a5) # 4f70 <SDCARD>
    107c:	00600713          	li	a4,6
    1080:	00e7a023          	sw	a4,0(a5)
    1084:	013137b7          	lui	a5,0x1313
    1088:	d0078513          	addi	a0,a5,-768 # 1312d00 <__stacktop+0x1302d00>
    108c:	00000097          	auipc	ra,0x0
    1090:	1fc080e7          	jalr	508(ra) # 1288 <pause>
    1094:	fe042623          	sw	zero,-20(s0)
    1098:	fe042423          	sw	zero,-24(s0)
    109c:	0340006f          	j	10d0 <sdcard_preinit+0x6c>
    10a0:	000057b7          	lui	a5,0x5
    10a4:	f707a783          	lw	a5,-144(a5) # 4f70 <SDCARD>
    10a8:	fec42703          	lw	a4,-20(s0)
    10ac:	00676713          	ori	a4,a4,6
    10b0:	00e7a023          	sw	a4,0(a5)
    10b4:	00100713          	li	a4,1
    10b8:	fec42783          	lw	a5,-20(s0)
    10bc:	40f707b3          	sub	a5,a4,a5
    10c0:	fef42623          	sw	a5,-20(s0)
    10c4:	fe842783          	lw	a5,-24(s0)
    10c8:	00178793          	addi	a5,a5,1
    10cc:	fef42423          	sw	a5,-24(s0)
    10d0:	fe842703          	lw	a4,-24(s0)
    10d4:	09f00793          	li	a5,159
    10d8:	fce7d4e3          	bge	a5,a4,10a0 <sdcard_preinit+0x3c>
    10dc:	000057b7          	lui	a5,0x5
    10e0:	f707a783          	lw	a5,-144(a5) # 4f70 <SDCARD>
    10e4:	00600713          	li	a4,6
    10e8:	00e7a023          	sw	a4,0(a5)
    10ec:	00000013          	nop
    10f0:	01c12083          	lw	ra,28(sp)
    10f4:	01812403          	lw	s0,24(sp)
    10f8:	02010113          	addi	sp,sp,32
    10fc:	00008067          	ret

00001100 <sdcard_init>:
    1100:	fe010113          	addi	sp,sp,-32
    1104:	00112e23          	sw	ra,28(sp)
    1108:	00812c23          	sw	s0,24(sp)
    110c:	02010413          	addi	s0,sp,32
    1110:	000057b7          	lui	a5,0x5
    1114:	00001737          	lui	a4,0x1
    1118:	29c70713          	addi	a4,a4,668 # 129c <sdcard_idle>
    111c:	26e7aa23          	sw	a4,628(a5) # 5274 <sdcard_while_loading_callback>
    1120:	00000097          	auipc	ra,0x0
    1124:	f44080e7          	jalr	-188(ra) # 1064 <sdcard_preinit>
    1128:	000057b7          	lui	a5,0x5
    112c:	f6078513          	addi	a0,a5,-160 # 4f60 <cmd0>
    1130:	00000097          	auipc	ra,0x0
    1134:	d1c080e7          	jalr	-740(ra) # e4c <sdcard_cmd>
    1138:	00100593          	li	a1,1
    113c:	00800513          	li	a0,8
    1140:	00000097          	auipc	ra,0x0
    1144:	c58080e7          	jalr	-936(ra) # d98 <sdcard_get>
    1148:	00050793          	mv	a5,a0
    114c:	fef407a3          	sb	a5,-17(s0)
    1150:	fffff097          	auipc	ra,0xfffff
    1154:	5d8080e7          	jalr	1496(ra) # 728 <sdcard_ponder>
    1158:	fef44703          	lbu	a4,-17(s0)
    115c:	0ff00793          	li	a5,255
    1160:	00f71c63          	bne	a4,a5,1178 <sdcard_init+0x78>
    1164:	013137b7          	lui	a5,0x1313
    1168:	d0078513          	addi	a0,a5,-768 # 1312d00 <__stacktop+0x1302d00>
    116c:	00000097          	auipc	ra,0x0
    1170:	11c080e7          	jalr	284(ra) # 1288 <pause>
    1174:	fadff06f          	j	1120 <sdcard_init+0x20>
    1178:	00000013          	nop
    117c:	000057b7          	lui	a5,0x5
    1180:	f5878513          	addi	a0,a5,-168 # 4f58 <cmd8>
    1184:	00000097          	auipc	ra,0x0
    1188:	cc8080e7          	jalr	-824(ra) # e4c <sdcard_cmd>
    118c:	00100593          	li	a1,1
    1190:	02800513          	li	a0,40
    1194:	00000097          	auipc	ra,0x0
    1198:	c04080e7          	jalr	-1020(ra) # d98 <sdcard_get>
    119c:	00050793          	mv	a5,a0
    11a0:	fef407a3          	sb	a5,-17(s0)
    11a4:	fffff097          	auipc	ra,0xfffff
    11a8:	584080e7          	jalr	1412(ra) # 728 <sdcard_ponder>
    11ac:	000057b7          	lui	a5,0x5
    11b0:	f5078513          	addi	a0,a5,-176 # 4f50 <cmd55>
    11b4:	00000097          	auipc	ra,0x0
    11b8:	c98080e7          	jalr	-872(ra) # e4c <sdcard_cmd>
    11bc:	00100593          	li	a1,1
    11c0:	00800513          	li	a0,8
    11c4:	00000097          	auipc	ra,0x0
    11c8:	bd4080e7          	jalr	-1068(ra) # d98 <sdcard_get>
    11cc:	00050793          	mv	a5,a0
    11d0:	fef407a3          	sb	a5,-17(s0)
    11d4:	fffff097          	auipc	ra,0xfffff
    11d8:	554080e7          	jalr	1364(ra) # 728 <sdcard_ponder>
    11dc:	000057b7          	lui	a5,0x5
    11e0:	f4878513          	addi	a0,a5,-184 # 4f48 <acmd41>
    11e4:	00000097          	auipc	ra,0x0
    11e8:	c68080e7          	jalr	-920(ra) # e4c <sdcard_cmd>
    11ec:	00100593          	li	a1,1
    11f0:	00800513          	li	a0,8
    11f4:	00000097          	auipc	ra,0x0
    11f8:	ba4080e7          	jalr	-1116(ra) # d98 <sdcard_get>
    11fc:	00050793          	mv	a5,a0
    1200:	fef407a3          	sb	a5,-17(s0)
    1204:	fffff097          	auipc	ra,0xfffff
    1208:	524080e7          	jalr	1316(ra) # 728 <sdcard_ponder>
    120c:	fef44783          	lbu	a5,-17(s0)
    1210:	02078863          	beqz	a5,1240 <sdcard_init+0x140>
    1214:	00000097          	auipc	ra,0x0
    1218:	0a0080e7          	jalr	160(ra) # 12b4 <sdcard_unselect>
    121c:	fffff097          	auipc	ra,0xfffff
    1220:	50c080e7          	jalr	1292(ra) # 728 <sdcard_ponder>
    1224:	001e87b7          	lui	a5,0x1e8
    1228:	48078513          	addi	a0,a5,1152 # 1e8480 <__stacktop+0x1d8480>
    122c:	00000097          	auipc	ra,0x0
    1230:	05c080e7          	jalr	92(ra) # 1288 <pause>
    1234:	00000097          	auipc	ra,0x0
    1238:	06c080e7          	jalr	108(ra) # 12a0 <sdcard_select>
    123c:	f71ff06f          	j	11ac <sdcard_init+0xac>
    1240:	00000013          	nop
    1244:	000057b7          	lui	a5,0x5
    1248:	f4078513          	addi	a0,a5,-192 # 4f40 <cmd16>
    124c:	00000097          	auipc	ra,0x0
    1250:	c00080e7          	jalr	-1024(ra) # e4c <sdcard_cmd>
    1254:	00100593          	li	a1,1
    1258:	00800513          	li	a0,8
    125c:	00000097          	auipc	ra,0x0
    1260:	b3c080e7          	jalr	-1220(ra) # d98 <sdcard_get>
    1264:	00050793          	mv	a5,a0
    1268:	fef407a3          	sb	a5,-17(s0)
    126c:	fffff097          	auipc	ra,0xfffff
    1270:	4bc080e7          	jalr	1212(ra) # 728 <sdcard_ponder>
    1274:	00000013          	nop
    1278:	01c12083          	lw	ra,28(sp)
    127c:	01812403          	lw	s0,24(sp)
    1280:	02010113          	addi	sp,sp,32
    1284:	00008067          	ret

00001288 <pause>:
    1288:	c0002773          	rdcycle	a4
    128c:	c00027f3          	rdcycle	a5
    1290:	40e787b3          	sub	a5,a5,a4
    1294:	fea7ece3          	bltu	a5,a0,128c <pause+0x4>
    1298:	00008067          	ret

0000129c <sdcard_idle>:
    129c:	00008067          	ret

000012a0 <sdcard_select>:
    12a0:	000057b7          	lui	a5,0x5
    12a4:	f707a783          	lw	a5,-144(a5) # 4f70 <SDCARD>
    12a8:	00200713          	li	a4,2
    12ac:	00e7a023          	sw	a4,0(a5)
    12b0:	00008067          	ret

000012b4 <sdcard_unselect>:
    12b4:	000057b7          	lui	a5,0x5
    12b8:	f707a783          	lw	a5,-144(a5) # 4f70 <SDCARD>
    12bc:	00600713          	li	a4,6
    12c0:	00e7a023          	sw	a4,0(a5)
    12c4:	00008067          	ret

000012c8 <sdcard_readsector>:
    12c8:	04060663          	beqz	a2,1314 <sdcard_readsector+0x4c>
    12cc:	ff010113          	addi	sp,sp,-16
    12d0:	00912423          	sw	s1,8(sp)
    12d4:	01212223          	sw	s2,4(sp)
    12d8:	00112623          	sw	ra,12(sp)
    12dc:	00050493          	mv	s1,a0
    12e0:	00a60933          	add	s2,a2,a0
    12e4:	00048513          	mv	a0,s1
    12e8:	00000097          	auipc	ra,0x0
    12ec:	ca4080e7          	jalr	-860(ra) # f8c <sdcard_read_sector>
    12f0:	00148493          	addi	s1,s1,1
    12f4:	00050593          	mv	a1,a0
    12f8:	fe9916e3          	bne	s2,s1,12e4 <sdcard_readsector+0x1c>
    12fc:	00c12083          	lw	ra,12(sp)
    1300:	00812483          	lw	s1,8(sp)
    1304:	00412903          	lw	s2,4(sp)
    1308:	00100513          	li	a0,1
    130c:	01010113          	addi	sp,sp,16
    1310:	00008067          	ret
    1314:	00000513          	li	a0,0
    1318:	00008067          	ret

0000131c <sdcard_writesector>:
    131c:	00000513          	li	a0,0
    1320:	00008067          	ret

00001324 <__divsi3>:
    1324:	06054063          	bltz	a0,1384 <__umodsi3+0x10>
    1328:	0605c663          	bltz	a1,1394 <__umodsi3+0x20>

0000132c <__udivsi3>:
    132c:	00058613          	mv	a2,a1
    1330:	00050593          	mv	a1,a0
    1334:	fff00513          	li	a0,-1
    1338:	02060c63          	beqz	a2,1370 <__udivsi3+0x44>
    133c:	00100693          	li	a3,1
    1340:	00b67a63          	bgeu	a2,a1,1354 <__udivsi3+0x28>
    1344:	00c05863          	blez	a2,1354 <__udivsi3+0x28>
    1348:	00161613          	slli	a2,a2,0x1
    134c:	00169693          	slli	a3,a3,0x1
    1350:	feb66ae3          	bltu	a2,a1,1344 <__udivsi3+0x18>
    1354:	00000513          	li	a0,0
    1358:	00c5e663          	bltu	a1,a2,1364 <__udivsi3+0x38>
    135c:	40c585b3          	sub	a1,a1,a2
    1360:	00d56533          	or	a0,a0,a3
    1364:	0016d693          	srli	a3,a3,0x1
    1368:	00165613          	srli	a2,a2,0x1
    136c:	fe0696e3          	bnez	a3,1358 <__udivsi3+0x2c>
    1370:	00008067          	ret

00001374 <__umodsi3>:
    1374:	00008293          	mv	t0,ra
    1378:	fb5ff0ef          	jal	132c <__udivsi3>
    137c:	00058513          	mv	a0,a1
    1380:	00028067          	jr	t0
    1384:	40a00533          	neg	a0,a0
    1388:	0005d863          	bgez	a1,1398 <__umodsi3+0x24>
    138c:	40b005b3          	neg	a1,a1
    1390:	f95ff06f          	j	1324 <__divsi3>
    1394:	40b005b3          	neg	a1,a1
    1398:	00008293          	mv	t0,ra
    139c:	f89ff0ef          	jal	1324 <__divsi3>
    13a0:	40a00533          	neg	a0,a0
    13a4:	00028067          	jr	t0

000013a8 <__modsi3>:
    13a8:	00008293          	mv	t0,ra
    13ac:	0005ca63          	bltz	a1,13c0 <__modsi3+0x18>
    13b0:	00054c63          	bltz	a0,13c8 <__modsi3+0x20>
    13b4:	f79ff0ef          	jal	132c <__udivsi3>
    13b8:	00058513          	mv	a0,a1
    13bc:	00028067          	jr	t0
    13c0:	40b005b3          	neg	a1,a1
    13c4:	fe0558e3          	bgez	a0,13b4 <__modsi3+0xc>
    13c8:	40a00533          	neg	a0,a0
    13cc:	f61ff0ef          	jal	132c <__udivsi3>
    13d0:	40b00533          	neg	a0,a1
    13d4:	00028067          	jr	t0

000013d8 <memset>:
    13d8:	00c50633          	add	a2,a0,a2
    13dc:	00050793          	mv	a5,a0
    13e0:	00c79463          	bne	a5,a2,13e8 <memset+0x10>
    13e4:	00008067          	ret
    13e8:	00178793          	addi	a5,a5,1
    13ec:	feb78fa3          	sb	a1,-1(a5)
    13f0:	ff1ff06f          	j	13e0 <memset+0x8>

000013f4 <memcpy>:
    13f4:	00000793          	li	a5,0
    13f8:	00c79463          	bne	a5,a2,1400 <memcpy+0xc>
    13fc:	00008067          	ret
    1400:	00f58733          	add	a4,a1,a5
    1404:	00074683          	lbu	a3,0(a4)
    1408:	00f50733          	add	a4,a0,a5
    140c:	00178793          	addi	a5,a5,1
    1410:	00d70023          	sb	a3,0(a4)
    1414:	fe5ff06f          	j	13f8 <memcpy+0x4>

00001418 <strlen>:
    1418:	00050793          	mv	a5,a0
    141c:	00000513          	li	a0,0
    1420:	00a78733          	add	a4,a5,a0
    1424:	00074703          	lbu	a4,0(a4)
    1428:	00071463          	bnez	a4,1430 <strlen+0x18>
    142c:	00008067          	ret
    1430:	00150513          	addi	a0,a0,1
    1434:	fedff06f          	j	1420 <strlen+0x8>

00001438 <strncmp>:
    1438:	00000793          	li	a5,0
    143c:	00c79663          	bne	a5,a2,1448 <strncmp+0x10>
    1440:	00000513          	li	a0,0
    1444:	00008067          	ret
    1448:	00f50733          	add	a4,a0,a5
    144c:	00074683          	lbu	a3,0(a4)
    1450:	00f58733          	add	a4,a1,a5
    1454:	00074703          	lbu	a4,0(a4)
    1458:	00e6e863          	bltu	a3,a4,1468 <strncmp+0x30>
    145c:	00d76a63          	bltu	a4,a3,1470 <strncmp+0x38>
    1460:	00178793          	addi	a5,a5,1
    1464:	fd9ff06f          	j	143c <strncmp+0x4>
    1468:	fff00513          	li	a0,-1
    146c:	00008067          	ret
    1470:	00100513          	li	a0,1
    1474:	00008067          	ret

00001478 <strncpy>:
    1478:	00000793          	li	a5,0
    147c:	00c79463          	bne	a5,a2,1484 <strncpy+0xc>
    1480:	00008067          	ret
    1484:	00f58733          	add	a4,a1,a5
    1488:	00074683          	lbu	a3,0(a4)
    148c:	00f50733          	add	a4,a0,a5
    1490:	00178793          	addi	a5,a5,1
    1494:	00d70023          	sb	a3,0(a4)
    1498:	fe5ff06f          	j	147c <strncpy+0x4>

0000149c <oled_wait>:
    149c:	00000013          	nop
    14a0:	00000013          	nop
    14a4:	00000013          	nop
    14a8:	00000013          	nop
    14ac:	00000013          	nop
    14b0:	00000013          	nop
    14b4:	00000013          	nop
    14b8:	00008067          	ret

000014bc <oled_init_mode>:
    14bc:	000057b7          	lui	a5,0x5
    14c0:	f747a703          	lw	a4,-140(a5) # 4f74 <OLED_RST>
    14c4:	ff010113          	addi	sp,sp,-16
    14c8:	00912223          	sw	s1,4(sp)
    14cc:	00112623          	sw	ra,12(sp)
    14d0:	00812423          	sw	s0,8(sp)
    14d4:	00072023          	sw	zero,0(a4)
    14d8:	00050493          	mv	s1,a0
    14dc:	00040737          	lui	a4,0x40
    14e0:	00000013          	nop
    14e4:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    14e8:	fe071ce3          	bnez	a4,14e0 <oled_init_mode+0x24>
    14ec:	f747a703          	lw	a4,-140(a5)
    14f0:	00100693          	li	a3,1
    14f4:	00d72023          	sw	a3,0(a4)
    14f8:	00040737          	lui	a4,0x40
    14fc:	00000013          	nop
    1500:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    1504:	fe071ce3          	bnez	a4,14fc <oled_init_mode+0x40>
    1508:	f747a783          	lw	a5,-140(a5)
    150c:	0007a023          	sw	zero,0(a5)
    1510:	000407b7          	lui	a5,0x40
    1514:	00000013          	nop
    1518:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    151c:	fe079ce3          	bnez	a5,1514 <oled_init_mode+0x58>
    1520:	00005737          	lui	a4,0x5
    1524:	f7872783          	lw	a5,-136(a4) # 4f78 <OLED>
    1528:	2af00693          	li	a3,687
    152c:	00d7a023          	sw	a3,0(a5)
    1530:	000407b7          	lui	a5,0x40
    1534:	00000013          	nop
    1538:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    153c:	fe079ce3          	bnez	a5,1534 <oled_init_mode+0x78>
    1540:	f7872403          	lw	s0,-136(a4)
    1544:	2a000793          	li	a5,672
    1548:	00f42023          	sw	a5,0(s0)
    154c:	00000097          	auipc	ra,0x0
    1550:	f50080e7          	jalr	-176(ra) # 149c <oled_wait>
    1554:	4a000793          	li	a5,1184
    1558:	00048463          	beqz	s1,1560 <oled_init_mode+0xa4>
    155c:	42000793          	li	a5,1056
    1560:	00f42023          	sw	a5,0(s0)
    1564:	00000097          	auipc	ra,0x0
    1568:	f38080e7          	jalr	-200(ra) # 149c <oled_wait>
    156c:	2fd00793          	li	a5,765
    1570:	00f42023          	sw	a5,0(s0)
    1574:	00000097          	auipc	ra,0x0
    1578:	f28080e7          	jalr	-216(ra) # 149c <oled_wait>
    157c:	4b100793          	li	a5,1201
    1580:	00f42023          	sw	a5,0(s0)
    1584:	00000097          	auipc	ra,0x0
    1588:	f18080e7          	jalr	-232(ra) # 149c <oled_wait>
    158c:	2a200793          	li	a5,674
    1590:	00f42023          	sw	a5,0(s0)
    1594:	00000097          	auipc	ra,0x0
    1598:	f08080e7          	jalr	-248(ra) # 149c <oled_wait>
    159c:	40000793          	li	a5,1024
    15a0:	00f42023          	sw	a5,0(s0)
    15a4:	00812403          	lw	s0,8(sp)
    15a8:	00c12083          	lw	ra,12(sp)
    15ac:	00412483          	lw	s1,4(sp)
    15b0:	01010113          	addi	sp,sp,16
    15b4:	00000317          	auipc	t1,0x0
    15b8:	ee830067          	jr	-280(t1) # 149c <oled_wait>

000015bc <oled_init>:
    15bc:	00000513          	li	a0,0
    15c0:	00000317          	auipc	t1,0x0
    15c4:	efc30067          	jr	-260(t1) # 14bc <oled_init_mode>

000015c8 <oled_fullscreen>:
    15c8:	ff010113          	addi	sp,sp,-16
    15cc:	000057b7          	lui	a5,0x5
    15d0:	00812423          	sw	s0,8(sp)
    15d4:	f787a403          	lw	s0,-136(a5) # 4f78 <OLED>
    15d8:	00112623          	sw	ra,12(sp)
    15dc:	00912223          	sw	s1,4(sp)
    15e0:	01212023          	sw	s2,0(sp)
    15e4:	21500793          	li	a5,533
    15e8:	00f42023          	sw	a5,0(s0)
    15ec:	40000913          	li	s2,1024
    15f0:	00000097          	auipc	ra,0x0
    15f4:	eac080e7          	jalr	-340(ra) # 149c <oled_wait>
    15f8:	47f00493          	li	s1,1151
    15fc:	01242023          	sw	s2,0(s0)
    1600:	00000097          	auipc	ra,0x0
    1604:	e9c080e7          	jalr	-356(ra) # 149c <oled_wait>
    1608:	00942023          	sw	s1,0(s0)
    160c:	00000097          	auipc	ra,0x0
    1610:	e90080e7          	jalr	-368(ra) # 149c <oled_wait>
    1614:	27500793          	li	a5,629
    1618:	00f42023          	sw	a5,0(s0)
    161c:	00000097          	auipc	ra,0x0
    1620:	e80080e7          	jalr	-384(ra) # 149c <oled_wait>
    1624:	01242023          	sw	s2,0(s0)
    1628:	00000097          	auipc	ra,0x0
    162c:	e74080e7          	jalr	-396(ra) # 149c <oled_wait>
    1630:	00942023          	sw	s1,0(s0)
    1634:	00000097          	auipc	ra,0x0
    1638:	e68080e7          	jalr	-408(ra) # 149c <oled_wait>
    163c:	25c00793          	li	a5,604
    1640:	00f42023          	sw	a5,0(s0)
    1644:	00812403          	lw	s0,8(sp)
    1648:	00c12083          	lw	ra,12(sp)
    164c:	00412483          	lw	s1,4(sp)
    1650:	00012903          	lw	s2,0(sp)
    1654:	01010113          	addi	sp,sp,16
    1658:	00000317          	auipc	t1,0x0
    165c:	e4430067          	jr	-444(t1) # 149c <oled_wait>

00001660 <oled_clear>:
    1660:	fe010113          	addi	sp,sp,-32
    1664:	000057b7          	lui	a5,0x5
    1668:	01312623          	sw	s3,12(sp)
    166c:	f787a983          	lw	s3,-136(a5) # 4f78 <OLED>
    1670:	00812c23          	sw	s0,24(sp)
    1674:	01212823          	sw	s2,16(sp)
    1678:	00112e23          	sw	ra,28(sp)
    167c:	00912a23          	sw	s1,20(sp)
    1680:	08000913          	li	s2,128
    1684:	40056413          	ori	s0,a0,1024
    1688:	08000493          	li	s1,128
    168c:	0089a023          	sw	s0,0(s3)
    1690:	00000097          	auipc	ra,0x0
    1694:	e0c080e7          	jalr	-500(ra) # 149c <oled_wait>
    1698:	0089a023          	sw	s0,0(s3)
    169c:	00000097          	auipc	ra,0x0
    16a0:	e00080e7          	jalr	-512(ra) # 149c <oled_wait>
    16a4:	fff48493          	addi	s1,s1,-1
    16a8:	0089a023          	sw	s0,0(s3)
    16ac:	00000097          	auipc	ra,0x0
    16b0:	df0080e7          	jalr	-528(ra) # 149c <oled_wait>
    16b4:	fc049ce3          	bnez	s1,168c <oled_clear+0x2c>
    16b8:	fff90913          	addi	s2,s2,-1
    16bc:	fc0916e3          	bnez	s2,1688 <oled_clear+0x28>
    16c0:	01c12083          	lw	ra,28(sp)
    16c4:	01812403          	lw	s0,24(sp)
    16c8:	01412483          	lw	s1,20(sp)
    16cc:	01012903          	lw	s2,16(sp)
    16d0:	00c12983          	lw	s3,12(sp)
    16d4:	02010113          	addi	sp,sp,32
    16d8:	00008067          	ret

000016dc <oled_wait>:
    16dc:	00000013          	nop
    16e0:	00000013          	nop
    16e4:	00000013          	nop
    16e8:	00000013          	nop
    16ec:	00000013          	nop
    16f0:	00000013          	nop
    16f4:	00000013          	nop
    16f8:	00008067          	ret

000016fc <display_framebuffer>:
    16fc:	0000a537          	lui	a0,0xa
    1700:	aa050513          	addi	a0,a0,-1376 # 9aa0 <framebuffer>
    1704:	00008067          	ret

00001708 <display_set_cursor>:
    1708:	000057b7          	lui	a5,0x5
    170c:	28a7a023          	sw	a0,640(a5) # 5280 <cursor_x>
    1710:	000057b7          	lui	a5,0x5
    1714:	26b7ae23          	sw	a1,636(a5) # 527c <cursor_y>
    1718:	00008067          	ret

0000171c <display_set_front_back_color>:
    171c:	000057b7          	lui	a5,0x5
    1720:	26a78ca3          	sb	a0,633(a5) # 5279 <front_color>
    1724:	000057b7          	lui	a5,0x5
    1728:	26b78c23          	sb	a1,632(a5) # 5278 <back_color>
    172c:	00008067          	ret

00001730 <display_putchar>:
    1730:	00a00793          	li	a5,10
    1734:	000058b7          	lui	a7,0x5
    1738:	02f51663          	bne	a0,a5,1764 <display_putchar+0x34>
    173c:	00005737          	lui	a4,0x5
    1740:	27c72783          	lw	a5,636(a4) # 527c <cursor_y>
    1744:	2808a023          	sw	zero,640(a7) # 5280 <cursor_x>
    1748:	00878793          	addi	a5,a5,8
    174c:	26f72e23          	sw	a5,636(a4)
    1750:	07f00713          	li	a4,127
    1754:	00f75663          	bge	a4,a5,1760 <display_putchar+0x30>
    1758:	000057b7          	lui	a5,0x5
    175c:	2607ae23          	sw	zero,636(a5) # 527c <cursor_y>
    1760:	00008067          	ret
    1764:	ff010113          	addi	sp,sp,-16
    1768:	00812623          	sw	s0,12(sp)
    176c:	00912423          	sw	s1,8(sp)
    1770:	01212223          	sw	s2,4(sp)
    1774:	01f00713          	li	a4,31
    1778:	2808a783          	lw	a5,640(a7)
    177c:	0ca75063          	bge	a4,a0,183c <display_putchar+0x10c>
    1780:	00005737          	lui	a4,0x5
    1784:	27c72303          	lw	t1,636(a4) # 527c <cursor_y>
    1788:	08000593          	li	a1,128
    178c:	00800713          	li	a4,8
    1790:	406585b3          	sub	a1,a1,t1
    1794:	00b75463          	bge	a4,a1,179c <display_putchar+0x6c>
    1798:	00800593          	li	a1,8
    179c:	08000813          	li	a6,128
    17a0:	40f80833          	sub	a6,a6,a5
    17a4:	00500713          	li	a4,5
    17a8:	01075463          	bge	a4,a6,17b0 <display_putchar+0x80>
    17ac:	00500813          	li	a6,5
    17b0:	00005737          	lui	a4,0x5
    17b4:	27874483          	lbu	s1,632(a4) # 5278 <back_color>
    17b8:	00005737          	lui	a4,0x5
    17bc:	27974903          	lbu	s2,633(a4) # 5279 <front_color>
    17c0:	00251613          	slli	a2,a0,0x2
    17c4:	00005737          	lui	a4,0x5
    17c8:	0000a6b7          	lui	a3,0xa
    17cc:	05c70713          	addi	a4,a4,92 # 505c <font>
    17d0:	00a60633          	add	a2,a2,a0
    17d4:	aa068693          	addi	a3,a3,-1376 # 9aa0 <framebuffer>
    17d8:	00e60633          	add	a2,a2,a4
    17dc:	00779293          	slli	t0,a5,0x7
    17e0:	00000713          	li	a4,0
    17e4:	00100413          	li	s0,1
    17e8:	006686b3          	add	a3,a3,t1
    17ec:	04b75863          	bge	a4,a1,183c <display_putchar+0x10c>
    17f0:	00e413b3          	sll	t2,s0,a4
    17f4:	00060e13          	mv	t3,a2
    17f8:	00028313          	mv	t1,t0
    17fc:	00000513          	li	a0,0
    1800:	00e68fb3          	add	t6,a3,a4
    1804:	02c0006f          	j	1830 <display_putchar+0x100>
    1808:	f60e4e83          	lbu	t4,-160(t3)
    180c:	00090f13          	mv	t5,s2
    1810:	007efeb3          	and	t4,t4,t2
    1814:	000e9463          	bnez	t4,181c <display_putchar+0xec>
    1818:	00048f13          	mv	t5,s1
    181c:	006f8eb3          	add	t4,t6,t1
    1820:	01ee8023          	sb	t5,0(t4)
    1824:	00150513          	addi	a0,a0,1
    1828:	08030313          	addi	t1,t1,128
    182c:	001e0e13          	addi	t3,t3,1
    1830:	fd054ce3          	blt	a0,a6,1808 <display_putchar+0xd8>
    1834:	00170713          	addi	a4,a4,1
    1838:	fb5ff06f          	j	17ec <display_putchar+0xbc>
    183c:	00578793          	addi	a5,a5,5
    1840:	07f00713          	li	a4,127
    1844:	00f74663          	blt	a4,a5,1850 <display_putchar+0x120>
    1848:	28f8a023          	sw	a5,640(a7)
    184c:	0240006f          	j	1870 <display_putchar+0x140>
    1850:	000056b7          	lui	a3,0x5
    1854:	27c6a783          	lw	a5,636(a3) # 527c <cursor_y>
    1858:	2808a023          	sw	zero,640(a7)
    185c:	00878793          	addi	a5,a5,8
    1860:	26f6ae23          	sw	a5,636(a3)
    1864:	00f75663          	bge	a4,a5,1870 <display_putchar+0x140>
    1868:	000057b7          	lui	a5,0x5
    186c:	2607ae23          	sw	zero,636(a5) # 527c <cursor_y>
    1870:	00c12403          	lw	s0,12(sp)
    1874:	00812483          	lw	s1,8(sp)
    1878:	00412903          	lw	s2,4(sp)
    187c:	01010113          	addi	sp,sp,16
    1880:	00008067          	ret

00001884 <display_refresh>:
    1884:	fe010113          	addi	sp,sp,-32
    1888:	000057b7          	lui	a5,0x5
    188c:	01212823          	sw	s2,16(sp)
    1890:	f787a903          	lw	s2,-136(a5) # 4f78 <OLED>
    1894:	01312623          	sw	s3,12(sp)
    1898:	0000a9b7          	lui	s3,0xa
    189c:	00912a23          	sw	s1,20(sp)
    18a0:	01412423          	sw	s4,8(sp)
    18a4:	00112e23          	sw	ra,28(sp)
    18a8:	00812c23          	sw	s0,24(sp)
    18ac:	00000493          	li	s1,0
    18b0:	aa098993          	addi	s3,s3,-1376 # 9aa0 <framebuffer>
    18b4:	00004a37          	lui	s4,0x4
    18b8:	013487b3          	add	a5,s1,s3
    18bc:	0007c403          	lbu	s0,0(a5)
    18c0:	00148493          	addi	s1,s1,1
    18c4:	00245413          	srli	s0,s0,0x2
    18c8:	40046413          	ori	s0,s0,1024
    18cc:	00892023          	sw	s0,0(s2)
    18d0:	00000097          	auipc	ra,0x0
    18d4:	e0c080e7          	jalr	-500(ra) # 16dc <oled_wait>
    18d8:	00892023          	sw	s0,0(s2)
    18dc:	00000097          	auipc	ra,0x0
    18e0:	e00080e7          	jalr	-512(ra) # 16dc <oled_wait>
    18e4:	00892023          	sw	s0,0(s2)
    18e8:	00000097          	auipc	ra,0x0
    18ec:	df4080e7          	jalr	-524(ra) # 16dc <oled_wait>
    18f0:	fd4494e3          	bne	s1,s4,18b8 <display_refresh+0x34>
    18f4:	01c12083          	lw	ra,28(sp)
    18f8:	01812403          	lw	s0,24(sp)
    18fc:	01412483          	lw	s1,20(sp)
    1900:	01012903          	lw	s2,16(sp)
    1904:	00c12983          	lw	s3,12(sp)
    1908:	00812a03          	lw	s4,8(sp)
    190c:	02010113          	addi	sp,sp,32
    1910:	00008067          	ret

00001914 <print_string>:
    1914:	ff010113          	addi	sp,sp,-16
    1918:	00812423          	sw	s0,8(sp)
    191c:	00912223          	sw	s1,4(sp)
    1920:	00112623          	sw	ra,12(sp)
    1924:	00050413          	mv	s0,a0
    1928:	000054b7          	lui	s1,0x5
    192c:	00044503          	lbu	a0,0(s0)
    1930:	00051c63          	bnez	a0,1948 <print_string+0x34>
    1934:	00c12083          	lw	ra,12(sp)
    1938:	00812403          	lw	s0,8(sp)
    193c:	00412483          	lw	s1,4(sp)
    1940:	01010113          	addi	sp,sp,16
    1944:	00008067          	ret
    1948:	2844a783          	lw	a5,644(s1) # 5284 <f_putchar>
    194c:	00140413          	addi	s0,s0,1
    1950:	000780e7          	jalr	a5
    1954:	fd9ff06f          	j	192c <print_string+0x18>

00001958 <print_dec>:
    1958:	ef010113          	addi	sp,sp,-272
    195c:	10812423          	sw	s0,264(sp)
    1960:	10912223          	sw	s1,260(sp)
    1964:	10112623          	sw	ra,268(sp)
    1968:	11212023          	sw	s2,256(sp)
    196c:	00050413          	mv	s0,a0
    1970:	000054b7          	lui	s1,0x5
    1974:	08045063          	bgez	s0,19f4 <print_dec+0x9c>
    1978:	2844a783          	lw	a5,644(s1) # 5284 <f_putchar>
    197c:	02d00513          	li	a0,45
    1980:	40800433          	neg	s0,s0
    1984:	000780e7          	jalr	a5
    1988:	fedff06f          	j	1974 <print_dec+0x1c>
    198c:	00040513          	mv	a0,s0
    1990:	00a00593          	li	a1,10
    1994:	00000097          	auipc	ra,0x0
    1998:	990080e7          	jalr	-1648(ra) # 1324 <__divsi3>
    199c:	00251793          	slli	a5,a0,0x2
    19a0:	00f507b3          	add	a5,a0,a5
    19a4:	00179793          	slli	a5,a5,0x1
    19a8:	40f40433          	sub	s0,s0,a5
    19ac:	00148493          	addi	s1,s1,1
    19b0:	fe848fa3          	sb	s0,-1(s1)
    19b4:	00050413          	mv	s0,a0
    19b8:	fc041ae3          	bnez	s0,198c <print_dec+0x34>
    19bc:	fd2488e3          	beq	s1,s2,198c <print_dec+0x34>
    19c0:	00005437          	lui	s0,0x5
    19c4:	fff4c503          	lbu	a0,-1(s1)
    19c8:	28442783          	lw	a5,644(s0) # 5284 <f_putchar>
    19cc:	fff48493          	addi	s1,s1,-1
    19d0:	03050513          	addi	a0,a0,48
    19d4:	000780e7          	jalr	a5
    19d8:	ff2496e3          	bne	s1,s2,19c4 <print_dec+0x6c>
    19dc:	10c12083          	lw	ra,268(sp)
    19e0:	10812403          	lw	s0,264(sp)
    19e4:	10412483          	lw	s1,260(sp)
    19e8:	10012903          	lw	s2,256(sp)
    19ec:	11010113          	addi	sp,sp,272
    19f0:	00008067          	ret
    19f4:	00010493          	mv	s1,sp
    19f8:	00048913          	mv	s2,s1
    19fc:	fbdff06f          	j	19b8 <print_dec+0x60>

00001a00 <print_hex_digits>:
    1a00:	fe010113          	addi	sp,sp,-32
    1a04:	00812c23          	sw	s0,24(sp)
    1a08:	01212823          	sw	s2,16(sp)
    1a0c:	fff58413          	addi	s0,a1,-1
    1a10:	00005937          	lui	s2,0x5
    1a14:	00912a23          	sw	s1,20(sp)
    1a18:	01312623          	sw	s3,12(sp)
    1a1c:	00112e23          	sw	ra,28(sp)
    1a20:	00050493          	mv	s1,a0
    1a24:	00241413          	slli	s0,s0,0x2
    1a28:	01490913          	addi	s2,s2,20 # 5014 <LEDS+0x98>
    1a2c:	000059b7          	lui	s3,0x5
    1a30:	02045063          	bgez	s0,1a50 <print_hex_digits+0x50>
    1a34:	01c12083          	lw	ra,28(sp)
    1a38:	01812403          	lw	s0,24(sp)
    1a3c:	01412483          	lw	s1,20(sp)
    1a40:	01012903          	lw	s2,16(sp)
    1a44:	00c12983          	lw	s3,12(sp)
    1a48:	02010113          	addi	sp,sp,32
    1a4c:	00008067          	ret
    1a50:	0084d7b3          	srl	a5,s1,s0
    1a54:	00f7f793          	andi	a5,a5,15
    1a58:	00f907b3          	add	a5,s2,a5
    1a5c:	2849a703          	lw	a4,644(s3) # 5284 <f_putchar>
    1a60:	0007c503          	lbu	a0,0(a5)
    1a64:	ffc40413          	addi	s0,s0,-4
    1a68:	000700e7          	jalr	a4
    1a6c:	fc5ff06f          	j	1a30 <print_hex_digits+0x30>

00001a70 <print_hex>:
    1a70:	00800593          	li	a1,8
    1a74:	00000317          	auipc	t1,0x0
    1a78:	f8c30067          	jr	-116(t1) # 1a00 <print_hex_digits>

00001a7c <printf>:
    1a7c:	fb010113          	addi	sp,sp,-80
    1a80:	04f12223          	sw	a5,68(sp)
    1a84:	03410793          	addi	a5,sp,52
    1a88:	02812423          	sw	s0,40(sp)
    1a8c:	02912223          	sw	s1,36(sp)
    1a90:	03212023          	sw	s2,32(sp)
    1a94:	01312e23          	sw	s3,28(sp)
    1a98:	01412c23          	sw	s4,24(sp)
    1a9c:	01512a23          	sw	s5,20(sp)
    1aa0:	01612823          	sw	s6,16(sp)
    1aa4:	02112623          	sw	ra,44(sp)
    1aa8:	00050413          	mv	s0,a0
    1aac:	02b12a23          	sw	a1,52(sp)
    1ab0:	02c12c23          	sw	a2,56(sp)
    1ab4:	02d12e23          	sw	a3,60(sp)
    1ab8:	04e12023          	sw	a4,64(sp)
    1abc:	05012423          	sw	a6,72(sp)
    1ac0:	05112623          	sw	a7,76(sp)
    1ac4:	00f12623          	sw	a5,12(sp)
    1ac8:	02500913          	li	s2,37
    1acc:	000054b7          	lui	s1,0x5
    1ad0:	07300993          	li	s3,115
    1ad4:	07800a13          	li	s4,120
    1ad8:	06400a93          	li	s5,100
    1adc:	06300b13          	li	s6,99
    1ae0:	00044503          	lbu	a0,0(s0)
    1ae4:	02051663          	bnez	a0,1b10 <printf+0x94>
    1ae8:	02c12083          	lw	ra,44(sp)
    1aec:	02812403          	lw	s0,40(sp)
    1af0:	02412483          	lw	s1,36(sp)
    1af4:	02012903          	lw	s2,32(sp)
    1af8:	01c12983          	lw	s3,28(sp)
    1afc:	01812a03          	lw	s4,24(sp)
    1b00:	01412a83          	lw	s5,20(sp)
    1b04:	01012b03          	lw	s6,16(sp)
    1b08:	05010113          	addi	sp,sp,80
    1b0c:	00008067          	ret
    1b10:	09251863          	bne	a0,s2,1ba0 <printf+0x124>
    1b14:	00144503          	lbu	a0,1(s0)
    1b18:	03351463          	bne	a0,s3,1b40 <printf+0xc4>
    1b1c:	00c12783          	lw	a5,12(sp)
    1b20:	0007a503          	lw	a0,0(a5)
    1b24:	00478713          	addi	a4,a5,4
    1b28:	00e12623          	sw	a4,12(sp)
    1b2c:	00000097          	auipc	ra,0x0
    1b30:	de8080e7          	jalr	-536(ra) # 1914 <print_string>
    1b34:	00140413          	addi	s0,s0,1
    1b38:	00140413          	addi	s0,s0,1
    1b3c:	fa5ff06f          	j	1ae0 <printf+0x64>
    1b40:	03451063          	bne	a0,s4,1b60 <printf+0xe4>
    1b44:	00c12783          	lw	a5,12(sp)
    1b48:	0007a503          	lw	a0,0(a5)
    1b4c:	00478713          	addi	a4,a5,4
    1b50:	00e12623          	sw	a4,12(sp)
    1b54:	00000097          	auipc	ra,0x0
    1b58:	f1c080e7          	jalr	-228(ra) # 1a70 <print_hex>
    1b5c:	fd9ff06f          	j	1b34 <printf+0xb8>
    1b60:	03551063          	bne	a0,s5,1b80 <printf+0x104>
    1b64:	00c12783          	lw	a5,12(sp)
    1b68:	0007a503          	lw	a0,0(a5)
    1b6c:	00478713          	addi	a4,a5,4
    1b70:	00e12623          	sw	a4,12(sp)
    1b74:	00000097          	auipc	ra,0x0
    1b78:	de4080e7          	jalr	-540(ra) # 1958 <print_dec>
    1b7c:	fb9ff06f          	j	1b34 <printf+0xb8>
    1b80:	2844a783          	lw	a5,644(s1) # 5284 <f_putchar>
    1b84:	01651a63          	bne	a0,s6,1b98 <printf+0x11c>
    1b88:	00c12703          	lw	a4,12(sp)
    1b8c:	00072503          	lw	a0,0(a4)
    1b90:	00470693          	addi	a3,a4,4
    1b94:	00d12623          	sw	a3,12(sp)
    1b98:	000780e7          	jalr	a5
    1b9c:	f99ff06f          	j	1b34 <printf+0xb8>
    1ba0:	2844a783          	lw	a5,644(s1)
    1ba4:	000780e7          	jalr	a5
    1ba8:	f91ff06f          	j	1b38 <printf+0xbc>

00001bac <__mulsi3>:
    1bac:	00050793          	mv	a5,a0
    1bb0:	00000513          	li	a0,0
    1bb4:	00079463          	bnez	a5,1bbc <__mulsi3+0x10>
    1bb8:	00008067          	ret
    1bbc:	0017f713          	andi	a4,a5,1
    1bc0:	00070463          	beqz	a4,1bc8 <__mulsi3+0x1c>
    1bc4:	00b50533          	add	a0,a0,a1
    1bc8:	0017d793          	srli	a5,a5,0x1
    1bcc:	00159593          	slli	a1,a1,0x1
    1bd0:	fe5ff06f          	j	1bb4 <__mulsi3+0x8>

00001bd4 <fat_list_insert_last>:
    1bd4:	00452783          	lw	a5,4(a0)
    1bd8:	04079263          	bnez	a5,1c1c <fat_list_insert_last+0x48>
    1bdc:	00052783          	lw	a5,0(a0)
    1be0:	00079c63          	bnez	a5,1bf8 <fat_list_insert_last+0x24>
    1be4:	00b52023          	sw	a1,0(a0)
    1be8:	00b52223          	sw	a1,4(a0)
    1bec:	0005a023          	sw	zero,0(a1)
    1bf0:	0005a223          	sw	zero,4(a1)
    1bf4:	00008067          	ret
    1bf8:	0007a703          	lw	a4,0(a5)
    1bfc:	00f5a223          	sw	a5,4(a1)
    1c00:	00e5a023          	sw	a4,0(a1)
    1c04:	00071863          	bnez	a4,1c14 <fat_list_insert_last+0x40>
    1c08:	00b52023          	sw	a1,0(a0)
    1c0c:	00b7a023          	sw	a1,0(a5)
    1c10:	00008067          	ret
    1c14:	00b72223          	sw	a1,4(a4)
    1c18:	ff5ff06f          	j	1c0c <fat_list_insert_last+0x38>
    1c1c:	0047a703          	lw	a4,4(a5)
    1c20:	00f5a023          	sw	a5,0(a1)
    1c24:	00e5a223          	sw	a4,4(a1)
    1c28:	00071863          	bnez	a4,1c38 <fat_list_insert_last+0x64>
    1c2c:	00b52223          	sw	a1,4(a0)
    1c30:	00b7a223          	sw	a1,4(a5)
    1c34:	00008067          	ret
    1c38:	00b72023          	sw	a1,0(a4)
    1c3c:	ff5ff06f          	j	1c30 <fat_list_insert_last+0x5c>

00001c40 <FileString_StrCmpNoCase>:
    1c40:	00050313          	mv	t1,a0
    1c44:	00000793          	li	a5,0
    1c48:	01900e13          	li	t3,25
    1c4c:	00c79663          	bne	a5,a2,1c58 <FileString_StrCmpNoCase+0x18>
    1c50:	00000513          	li	a0,0
    1c54:	00008067          	ret
    1c58:	00f30733          	add	a4,t1,a5
    1c5c:	00074883          	lbu	a7,0(a4)
    1c60:	00f58733          	add	a4,a1,a5
    1c64:	00074803          	lbu	a6,0(a4)
    1c68:	fbf88713          	addi	a4,a7,-65
    1c6c:	0ff77713          	zext.b	a4,a4
    1c70:	00088693          	mv	a3,a7
    1c74:	00ee6663          	bltu	t3,a4,1c80 <FileString_StrCmpNoCase+0x40>
    1c78:	02088693          	addi	a3,a7,32
    1c7c:	0ff6f693          	zext.b	a3,a3
    1c80:	fbf80513          	addi	a0,a6,-65
    1c84:	0ff57513          	zext.b	a0,a0
    1c88:	00080713          	mv	a4,a6
    1c8c:	00ae6663          	bltu	t3,a0,1c98 <FileString_StrCmpNoCase+0x58>
    1c90:	02080713          	addi	a4,a6,32
    1c94:	0ff77713          	zext.b	a4,a4
    1c98:	40e68533          	sub	a0,a3,a4
    1c9c:	00e69863          	bne	a3,a4,1cac <FileString_StrCmpNoCase+0x6c>
    1ca0:	00088663          	beqz	a7,1cac <FileString_StrCmpNoCase+0x6c>
    1ca4:	00178793          	addi	a5,a5,1
    1ca8:	fa0812e3          	bnez	a6,1c4c <FileString_StrCmpNoCase+0xc>
    1cac:	00008067          	ret

00001cb0 <FileString_GetExtension>:
    1cb0:	00050713          	mv	a4,a0
    1cb4:	00050793          	mv	a5,a0
    1cb8:	02e00613          	li	a2,46
    1cbc:	fff00513          	li	a0,-1
    1cc0:	0007c683          	lbu	a3,0(a5)
    1cc4:	00069463          	bnez	a3,1ccc <FileString_GetExtension+0x1c>
    1cc8:	00008067          	ret
    1ccc:	00c69463          	bne	a3,a2,1cd4 <FileString_GetExtension+0x24>
    1cd0:	40e78533          	sub	a0,a5,a4
    1cd4:	00178793          	addi	a5,a5,1
    1cd8:	fe9ff06f          	j	1cc0 <FileString_GetExtension+0x10>

00001cdc <fatfs_fat_writeback>:
    1cdc:	00059663          	bnez	a1,1ce8 <fatfs_fat_writeback+0xc>
    1ce0:	00000513          	li	a0,0
    1ce4:	00008067          	ret
    1ce8:	2045a703          	lw	a4,516(a1)
    1cec:	ff010113          	addi	sp,sp,-16
    1cf0:	00812423          	sw	s0,8(sp)
    1cf4:	00112623          	sw	ra,12(sp)
    1cf8:	00058413          	mv	s0,a1
    1cfc:	00070a63          	beqz	a4,1d10 <fatfs_fat_writeback+0x34>
    1d00:	03852683          	lw	a3,56(a0)
    1d04:	00050793          	mv	a5,a0
    1d08:	00069863          	bnez	a3,1d18 <fatfs_fat_writeback+0x3c>
    1d0c:	20042223          	sw	zero,516(s0)
    1d10:	00100513          	li	a0,1
    1d14:	0380006f          	j	1d4c <fatfs_fat_writeback+0x70>
    1d18:	2005a503          	lw	a0,512(a1)
    1d1c:	0147a703          	lw	a4,20(a5)
    1d20:	0207a583          	lw	a1,32(a5)
    1d24:	00100613          	li	a2,1
    1d28:	40e507b3          	sub	a5,a0,a4
    1d2c:	00178793          	addi	a5,a5,1
    1d30:	00f5f663          	bgeu	a1,a5,1d3c <fatfs_fat_writeback+0x60>
    1d34:	00b70733          	add	a4,a4,a1
    1d38:	40a70633          	sub	a2,a4,a0
    1d3c:	00040593          	mv	a1,s0
    1d40:	000680e7          	jalr	a3
    1d44:	fc0514e3          	bnez	a0,1d0c <fatfs_fat_writeback+0x30>
    1d48:	00000513          	li	a0,0
    1d4c:	00c12083          	lw	ra,12(sp)
    1d50:	00812403          	lw	s0,8(sp)
    1d54:	01010113          	addi	sp,sp,16
    1d58:	00008067          	ret

00001d5c <fatfs_fat_read_sector>:
    1d5c:	fe010113          	addi	sp,sp,-32
    1d60:	01212823          	sw	s2,16(sp)
    1d64:	25452903          	lw	s2,596(a0)
    1d68:	00812c23          	sw	s0,24(sp)
    1d6c:	00912a23          	sw	s1,20(sp)
    1d70:	01312623          	sw	s3,12(sp)
    1d74:	00112e23          	sw	ra,28(sp)
    1d78:	00050993          	mv	s3,a0
    1d7c:	00058493          	mv	s1,a1
    1d80:	00000413          	li	s0,0
    1d84:	04091063          	bnez	s2,1dc4 <fatfs_fat_read_sector+0x68>
    1d88:	2549a783          	lw	a5,596(s3)
    1d8c:	20f42623          	sw	a5,524(s0)
    1d90:	20442783          	lw	a5,516(s0)
    1d94:	2489aa23          	sw	s0,596(s3)
    1d98:	08079863          	bnez	a5,1e28 <fatfs_fat_read_sector+0xcc>
    1d9c:	0349a783          	lw	a5,52(s3)
    1da0:	20942023          	sw	s1,512(s0)
    1da4:	00100613          	li	a2,1
    1da8:	00040593          	mv	a1,s0
    1dac:	00048513          	mv	a0,s1
    1db0:	000780e7          	jalr	a5
    1db4:	08051663          	bnez	a0,1e40 <fatfs_fat_read_sector+0xe4>
    1db8:	fff00793          	li	a5,-1
    1dbc:	20f42023          	sw	a5,512(s0)
    1dc0:	0480006f          	j	1e08 <fatfs_fat_read_sector+0xac>
    1dc4:	20092783          	lw	a5,512(s2)
    1dc8:	00f4e663          	bltu	s1,a5,1dd4 <fatfs_fat_read_sector+0x78>
    1dcc:	00178713          	addi	a4,a5,1
    1dd0:	02e4e463          	bltu	s1,a4,1df8 <fatfs_fat_read_sector+0x9c>
    1dd4:	20c92783          	lw	a5,524(s2)
    1dd8:	00079663          	bnez	a5,1de4 <fatfs_fat_read_sector+0x88>
    1ddc:	00040a63          	beqz	s0,1df0 <fatfs_fat_read_sector+0x94>
    1de0:	20042623          	sw	zero,524(s0)
    1de4:	00090413          	mv	s0,s2
    1de8:	20c92903          	lw	s2,524(s2)
    1dec:	f99ff06f          	j	1d84 <fatfs_fat_read_sector+0x28>
    1df0:	2409aa23          	sw	zero,596(s3)
    1df4:	ff1ff06f          	j	1de4 <fatfs_fat_read_sector+0x88>
    1df8:	40f484b3          	sub	s1,s1,a5
    1dfc:	00949493          	slli	s1,s1,0x9
    1e00:	009904b3          	add	s1,s2,s1
    1e04:	20992423          	sw	s1,520(s2)
    1e08:	01c12083          	lw	ra,28(sp)
    1e0c:	01812403          	lw	s0,24(sp)
    1e10:	01412483          	lw	s1,20(sp)
    1e14:	00c12983          	lw	s3,12(sp)
    1e18:	00090513          	mv	a0,s2
    1e1c:	01012903          	lw	s2,16(sp)
    1e20:	02010113          	addi	sp,sp,32
    1e24:	00008067          	ret
    1e28:	00040593          	mv	a1,s0
    1e2c:	00098513          	mv	a0,s3
    1e30:	00000097          	auipc	ra,0x0
    1e34:	eac080e7          	jalr	-340(ra) # 1cdc <fatfs_fat_writeback>
    1e38:	f60512e3          	bnez	a0,1d9c <fatfs_fat_read_sector+0x40>
    1e3c:	fcdff06f          	j	1e08 <fatfs_fat_read_sector+0xac>
    1e40:	20842423          	sw	s0,520(s0)
    1e44:	00040913          	mv	s2,s0
    1e48:	fc1ff06f          	j	1e08 <fatfs_fat_read_sector+0xac>

00001e4c <_allocate_file>:
    1e4c:	ff010113          	addi	sp,sp,-16
    1e50:	000057b7          	lui	a5,0x5
    1e54:	00812423          	sw	s0,8(sp)
    1e58:	2887a403          	lw	s0,648(a5) # 5288 <_free_file_list>
    1e5c:	00112623          	sw	ra,12(sp)
    1e60:	02040e63          	beqz	s0,1e9c <_allocate_file+0x50>
    1e64:	00042703          	lw	a4,0(s0)
    1e68:	00442683          	lw	a3,4(s0)
    1e6c:	28878793          	addi	a5,a5,648
    1e70:	04071063          	bnez	a4,1eb0 <_allocate_file+0x64>
    1e74:	00d7a023          	sw	a3,0(a5)
    1e78:	00442683          	lw	a3,4(s0)
    1e7c:	02069e63          	bnez	a3,1eb8 <_allocate_file+0x6c>
    1e80:	00e7a223          	sw	a4,4(a5)
    1e84:	00005537          	lui	a0,0x5
    1e88:	00040593          	mv	a1,s0
    1e8c:	29050513          	addi	a0,a0,656 # 5290 <_open_file_list>
    1e90:	00000097          	auipc	ra,0x0
    1e94:	d44080e7          	jalr	-700(ra) # 1bd4 <fat_list_insert_last>
    1e98:	bc440413          	addi	s0,s0,-1084
    1e9c:	00c12083          	lw	ra,12(sp)
    1ea0:	00040513          	mv	a0,s0
    1ea4:	00812403          	lw	s0,8(sp)
    1ea8:	01010113          	addi	sp,sp,16
    1eac:	00008067          	ret
    1eb0:	00d72223          	sw	a3,4(a4)
    1eb4:	fc5ff06f          	j	1e78 <_allocate_file+0x2c>
    1eb8:	00e6a023          	sw	a4,0(a3)
    1ebc:	fc9ff06f          	j	1e84 <_allocate_file+0x38>

00001ec0 <_free_file>:
    1ec0:	43c52783          	lw	a5,1084(a0)
    1ec4:	44052703          	lw	a4,1088(a0)
    1ec8:	43c50593          	addi	a1,a0,1084
    1ecc:	02079663          	bnez	a5,1ef8 <_free_file+0x38>
    1ed0:	000056b7          	lui	a3,0x5
    1ed4:	28e6a823          	sw	a4,656(a3) # 5290 <_open_file_list>
    1ed8:	44052703          	lw	a4,1088(a0)
    1edc:	02071263          	bnez	a4,1f00 <_free_file+0x40>
    1ee0:	00005737          	lui	a4,0x5
    1ee4:	28f72a23          	sw	a5,660(a4) # 5294 <_open_file_list+0x4>
    1ee8:	00005537          	lui	a0,0x5
    1eec:	28850513          	addi	a0,a0,648 # 5288 <_free_file_list>
    1ef0:	00000317          	auipc	t1,0x0
    1ef4:	ce430067          	jr	-796(t1) # 1bd4 <fat_list_insert_last>
    1ef8:	00e7a223          	sw	a4,4(a5)
    1efc:	fddff06f          	j	1ed8 <_free_file+0x18>
    1f00:	00f72023          	sw	a5,0(a4)
    1f04:	fe5ff06f          	j	1ee8 <_free_file+0x28>

00001f08 <fatfs_lba_of_cluster>:
    1f08:	ff010113          	addi	sp,sp,-16
    1f0c:	00812423          	sw	s0,8(sp)
    1f10:	00112623          	sw	ra,12(sp)
    1f14:	00050413          	mv	s0,a0
    1f18:	00058513          	mv	a0,a1
    1f1c:	00044583          	lbu	a1,0(s0)
    1f20:	ffe50513          	addi	a0,a0,-2
    1f24:	00000097          	auipc	ra,0x0
    1f28:	c88080e7          	jalr	-888(ra) # 1bac <__mulsi3>
    1f2c:	00442783          	lw	a5,4(s0)
    1f30:	00f50533          	add	a0,a0,a5
    1f34:	03042783          	lw	a5,48(s0)
    1f38:	00079863          	bnez	a5,1f48 <fatfs_lba_of_cluster+0x40>
    1f3c:	02845783          	lhu	a5,40(s0)
    1f40:	4047d793          	srai	a5,a5,0x4
    1f44:	00f50533          	add	a0,a0,a5
    1f48:	00c12083          	lw	ra,12(sp)
    1f4c:	00812403          	lw	s0,8(sp)
    1f50:	01010113          	addi	sp,sp,16
    1f54:	00008067          	ret

00001f58 <fatfs_sector_read>:
    1f58:	03452783          	lw	a5,52(a0)
    1f5c:	00058713          	mv	a4,a1
    1f60:	00070513          	mv	a0,a4
    1f64:	00060593          	mv	a1,a2
    1f68:	00068613          	mv	a2,a3
    1f6c:	00078067          	jr	a5

00001f70 <fatfs_sector_write>:
    1f70:	03852783          	lw	a5,56(a0)
    1f74:	00058713          	mv	a4,a1
    1f78:	00070513          	mv	a0,a4
    1f7c:	00060593          	mv	a1,a2
    1f80:	00068613          	mv	a2,a3
    1f84:	00078067          	jr	a5

00001f88 <fatfs_write_sector>:
    1f88:	03852783          	lw	a5,56(a0)
    1f8c:	0a078863          	beqz	a5,203c <fatfs_write_sector+0xb4>
    1f90:	fe010113          	addi	sp,sp,-32
    1f94:	01212823          	sw	s2,16(sp)
    1f98:	00068913          	mv	s2,a3
    1f9c:	03052683          	lw	a3,48(a0)
    1fa0:	00812c23          	sw	s0,24(sp)
    1fa4:	00912a23          	sw	s1,20(sp)
    1fa8:	00112e23          	sw	ra,28(sp)
    1fac:	00d5e733          	or	a4,a1,a3
    1fb0:	00050413          	mv	s0,a0
    1fb4:	00060493          	mv	s1,a2
    1fb8:	04071063          	bnez	a4,1ff8 <fatfs_write_sector+0x70>
    1fbc:	01052703          	lw	a4,16(a0)
    1fc0:	06e67063          	bgeu	a2,a4,2020 <fatfs_write_sector+0x98>
    1fc4:	01c52503          	lw	a0,28(a0)
    1fc8:	00c42703          	lw	a4,12(s0)
    1fcc:	00e50533          	add	a0,a0,a4
    1fd0:	00c50533          	add	a0,a0,a2
    1fd4:	02090e63          	beqz	s2,2010 <fatfs_write_sector+0x88>
    1fd8:	00100613          	li	a2,1
    1fdc:	00090593          	mv	a1,s2
    1fe0:	01812403          	lw	s0,24(sp)
    1fe4:	01c12083          	lw	ra,28(sp)
    1fe8:	01412483          	lw	s1,20(sp)
    1fec:	01012903          	lw	s2,16(sp)
    1ff0:	02010113          	addi	sp,sp,32
    1ff4:	00078067          	jr	a5
    1ff8:	00f12623          	sw	a5,12(sp)
    1ffc:	00000097          	auipc	ra,0x0
    2000:	f0c080e7          	jalr	-244(ra) # 1f08 <fatfs_lba_of_cluster>
    2004:	00c12783          	lw	a5,12(sp)
    2008:	00a48533          	add	a0,s1,a0
    200c:	fc9ff06f          	j	1fd4 <fatfs_write_sector+0x4c>
    2010:	24a42223          	sw	a0,580(s0)
    2014:	00100613          	li	a2,1
    2018:	04440593          	addi	a1,s0,68
    201c:	fc5ff06f          	j	1fe0 <fatfs_write_sector+0x58>
    2020:	01c12083          	lw	ra,28(sp)
    2024:	01812403          	lw	s0,24(sp)
    2028:	01412483          	lw	s1,20(sp)
    202c:	01012903          	lw	s2,16(sp)
    2030:	00000513          	li	a0,0
    2034:	02010113          	addi	sp,sp,32
    2038:	00008067          	ret
    203c:	00000513          	li	a0,0
    2040:	00008067          	ret

00002044 <fl_init>:
    2044:	ff010113          	addi	sp,sp,-16
    2048:	00812423          	sw	s0,8(sp)
    204c:	00005437          	lui	s0,0x5
    2050:	00112623          	sw	ra,12(sp)
    2054:	28840793          	addi	a5,s0,648 # 5288 <_free_file_list>
    2058:	0007a223          	sw	zero,4(a5)
    205c:	0007a023          	sw	zero,0(a5)
    2060:	0000e5b7          	lui	a1,0xe
    2064:	000057b7          	lui	a5,0x5
    2068:	29078793          	addi	a5,a5,656 # 5290 <_open_file_list>
    206c:	28840513          	addi	a0,s0,648
    2070:	34458593          	addi	a1,a1,836 # e344 <_files+0x43c>
    2074:	0007a223          	sw	zero,4(a5)
    2078:	0007a023          	sw	zero,0(a5)
    207c:	00000097          	auipc	ra,0x0
    2080:	b58080e7          	jalr	-1192(ra) # 1bd4 <fat_list_insert_last>
    2084:	0000e5b7          	lui	a1,0xe
    2088:	28840513          	addi	a0,s0,648
    208c:	78858593          	addi	a1,a1,1928 # e788 <_files+0x880>
    2090:	00000097          	auipc	ra,0x0
    2094:	b44080e7          	jalr	-1212(ra) # 1bd4 <fat_list_insert_last>
    2098:	00c12083          	lw	ra,12(sp)
    209c:	00812403          	lw	s0,8(sp)
    20a0:	000057b7          	lui	a5,0x5
    20a4:	00100713          	li	a4,1
    20a8:	28e7ae23          	sw	a4,668(a5) # 529c <_filelib_init>
    20ac:	01010113          	addi	sp,sp,16
    20b0:	00008067          	ret

000020b4 <fl_closedir>:
    20b4:	00000513          	li	a0,0
    20b8:	00008067          	ret

000020bc <fatfs_lfn_cache_entry>:
    20bc:	0005c783          	lbu	a5,0(a1)
    20c0:	01300693          	li	a3,19
    20c4:	01f7f793          	andi	a5,a5,31
    20c8:	fff78713          	addi	a4,a5,-1
    20cc:	0ff77613          	zext.b	a2,a4
    20d0:	0ac6ea63          	bltu	a3,a2,2184 <fatfs_lfn_cache_entry+0xc8>
    20d4:	10554683          	lbu	a3,261(a0)
    20d8:	00069463          	bnez	a3,20e0 <fatfs_lfn_cache_entry+0x24>
    20dc:	10f502a3          	sb	a5,261(a0)
    20e0:	00171793          	slli	a5,a4,0x1
    20e4:	00e787b3          	add	a5,a5,a4
    20e8:	0015c683          	lbu	a3,1(a1)
    20ec:	00279793          	slli	a5,a5,0x2
    20f0:	00e787b3          	add	a5,a5,a4
    20f4:	00f50533          	add	a0,a0,a5
    20f8:	00d50023          	sb	a3,0(a0)
    20fc:	0035c783          	lbu	a5,3(a1)
    2100:	0ff00713          	li	a4,255
    2104:	02000693          	li	a3,32
    2108:	00f500a3          	sb	a5,1(a0)
    210c:	0055c783          	lbu	a5,5(a1)
    2110:	00f50123          	sb	a5,2(a0)
    2114:	0075c783          	lbu	a5,7(a1)
    2118:	00f501a3          	sb	a5,3(a0)
    211c:	0095c783          	lbu	a5,9(a1)
    2120:	00f50223          	sb	a5,4(a0)
    2124:	00e5c783          	lbu	a5,14(a1)
    2128:	00f502a3          	sb	a5,5(a0)
    212c:	0105c783          	lbu	a5,16(a1)
    2130:	00f50323          	sb	a5,6(a0)
    2134:	0125c783          	lbu	a5,18(a1)
    2138:	00f503a3          	sb	a5,7(a0)
    213c:	0145c783          	lbu	a5,20(a1)
    2140:	00f50423          	sb	a5,8(a0)
    2144:	0165c783          	lbu	a5,22(a1)
    2148:	00f504a3          	sb	a5,9(a0)
    214c:	0185c783          	lbu	a5,24(a1)
    2150:	00f50523          	sb	a5,10(a0)
    2154:	01c5c783          	lbu	a5,28(a1)
    2158:	00f505a3          	sb	a5,11(a0)
    215c:	01e5c783          	lbu	a5,30(a1)
    2160:	00f50623          	sb	a5,12(a0)
    2164:	00d00793          	li	a5,13
    2168:	00054603          	lbu	a2,0(a0)
    216c:	00e61463          	bne	a2,a4,2174 <fatfs_lfn_cache_entry+0xb8>
    2170:	00d50023          	sb	a3,0(a0)
    2174:	fff78793          	addi	a5,a5,-1
    2178:	0ff7f793          	zext.b	a5,a5
    217c:	00150513          	addi	a0,a0,1
    2180:	fe0794e3          	bnez	a5,2168 <fatfs_lfn_cache_entry+0xac>
    2184:	00008067          	ret

00002188 <fatfs_lfn_cache_get>:
    2188:	10554703          	lbu	a4,261(a0)
    218c:	01400793          	li	a5,20
    2190:	00f71663          	bne	a4,a5,219c <fatfs_lfn_cache_get+0x14>
    2194:	10050223          	sb	zero,260(a0)
    2198:	00008067          	ret
    219c:	02070063          	beqz	a4,21bc <fatfs_lfn_cache_get+0x34>
    21a0:	00171793          	slli	a5,a4,0x1
    21a4:	00e787b3          	add	a5,a5,a4
    21a8:	00279793          	slli	a5,a5,0x2
    21ac:	00e787b3          	add	a5,a5,a4
    21b0:	00f507b3          	add	a5,a0,a5
    21b4:	00078023          	sb	zero,0(a5)
    21b8:	00008067          	ret
    21bc:	00050023          	sb	zero,0(a0)
    21c0:	00008067          	ret

000021c4 <fatfs_entry_lfn_text>:
    21c4:	00b54503          	lbu	a0,11(a0)
    21c8:	00f57513          	andi	a0,a0,15
    21cc:	ff150513          	addi	a0,a0,-15
    21d0:	00153513          	seqz	a0,a0
    21d4:	00008067          	ret

000021d8 <fatfs_entry_lfn_invalid>:
    21d8:	00054703          	lbu	a4,0(a0)
    21dc:	00050793          	mv	a5,a0
    21e0:	02070463          	beqz	a4,2208 <fatfs_entry_lfn_invalid+0x30>
    21e4:	0e500693          	li	a3,229
    21e8:	00100513          	li	a0,1
    21ec:	02d70063          	beq	a4,a3,220c <fatfs_entry_lfn_invalid+0x34>
    21f0:	00b7c783          	lbu	a5,11(a5)
    21f4:	00800713          	li	a4,8
    21f8:	00e78a63          	beq	a5,a4,220c <fatfs_entry_lfn_invalid+0x34>
    21fc:	0067f793          	andi	a5,a5,6
    2200:	00f03533          	snez	a0,a5
    2204:	00008067          	ret
    2208:	00100513          	li	a0,1
    220c:	00008067          	ret

00002210 <fatfs_entry_lfn_exists>:
    2210:	00b5c783          	lbu	a5,11(a1)
    2214:	00f00693          	li	a3,15
    2218:	00050713          	mv	a4,a0
    221c:	02d78a63          	beq	a5,a3,2250 <fatfs_entry_lfn_exists+0x40>
    2220:	0005c683          	lbu	a3,0(a1)
    2224:	00000513          	li	a0,0
    2228:	02068663          	beqz	a3,2254 <fatfs_entry_lfn_exists+0x44>
    222c:	0e500613          	li	a2,229
    2230:	02c68263          	beq	a3,a2,2254 <fatfs_entry_lfn_exists+0x44>
    2234:	00800693          	li	a3,8
    2238:	00d78e63          	beq	a5,a3,2254 <fatfs_entry_lfn_exists+0x44>
    223c:	0067f793          	andi	a5,a5,6
    2240:	00079a63          	bnez	a5,2254 <fatfs_entry_lfn_exists+0x44>
    2244:	10574503          	lbu	a0,261(a4)
    2248:	00a03533          	snez	a0,a0
    224c:	00008067          	ret
    2250:	00000513          	li	a0,0
    2254:	00008067          	ret

00002258 <fatfs_entry_sfn_only>:
    2258:	00b54783          	lbu	a5,11(a0)
    225c:	00f00713          	li	a4,15
    2260:	02e78663          	beq	a5,a4,228c <fatfs_entry_sfn_only+0x34>
    2264:	00054703          	lbu	a4,0(a0)
    2268:	00000513          	li	a0,0
    226c:	02070263          	beqz	a4,2290 <fatfs_entry_sfn_only+0x38>
    2270:	0e500693          	li	a3,229
    2274:	00d70e63          	beq	a4,a3,2290 <fatfs_entry_sfn_only+0x38>
    2278:	00800713          	li	a4,8
    227c:	00e78a63          	beq	a5,a4,2290 <fatfs_entry_sfn_only+0x38>
    2280:	0067f793          	andi	a5,a5,6
    2284:	0017b513          	seqz	a0,a5
    2288:	00008067          	ret
    228c:	00000513          	li	a0,0
    2290:	00008067          	ret

00002294 <fatfs_entry_is_dir>:
    2294:	00b54503          	lbu	a0,11(a0)
    2298:	00455513          	srli	a0,a0,0x4
    229c:	00157513          	andi	a0,a0,1
    22a0:	00008067          	ret

000022a4 <fatfs_entry_is_file>:
    22a4:	00b54503          	lbu	a0,11(a0)
    22a8:	00555513          	srli	a0,a0,0x5
    22ac:	00157513          	andi	a0,a0,1
    22b0:	00008067          	ret

000022b4 <fatfs_lfn_entries_required>:
    22b4:	ff010113          	addi	sp,sp,-16
    22b8:	00112623          	sw	ra,12(sp)
    22bc:	fffff097          	auipc	ra,0xfffff
    22c0:	15c080e7          	jalr	348(ra) # 1418 <strlen>
    22c4:	00050a63          	beqz	a0,22d8 <fatfs_lfn_entries_required+0x24>
    22c8:	00d00593          	li	a1,13
    22cc:	00c50513          	addi	a0,a0,12
    22d0:	fffff097          	auipc	ra,0xfffff
    22d4:	054080e7          	jalr	84(ra) # 1324 <__divsi3>
    22d8:	00c12083          	lw	ra,12(sp)
    22dc:	01010113          	addi	sp,sp,16
    22e0:	00008067          	ret

000022e4 <fatfs_filename_to_lfn>:
    22e4:	fa010113          	addi	sp,sp,-96
    22e8:	04912a23          	sw	s1,84(sp)
    22ec:	00058493          	mv	s1,a1
    22f0:	000055b7          	lui	a1,0x5
    22f4:	23c58593          	addi	a1,a1,572 # 523c <font+0x1e0>
    22f8:	05212823          	sw	s2,80(sp)
    22fc:	05312623          	sw	s3,76(sp)
    2300:	00060913          	mv	s2,a2
    2304:	00050993          	mv	s3,a0
    2308:	03400613          	li	a2,52
    230c:	00c10513          	addi	a0,sp,12
    2310:	04112e23          	sw	ra,92(sp)
    2314:	04812c23          	sw	s0,88(sp)
    2318:	05412423          	sw	s4,72(sp)
    231c:	05512223          	sw	s5,68(sp)
    2320:	05612023          	sw	s6,64(sp)
    2324:	00068b13          	mv	s6,a3
    2328:	fffff097          	auipc	ra,0xfffff
    232c:	0cc080e7          	jalr	204(ra) # 13f4 <memcpy>
    2330:	00098513          	mv	a0,s3
    2334:	fffff097          	auipc	ra,0xfffff
    2338:	0e4080e7          	jalr	228(ra) # 1418 <strlen>
    233c:	00050a93          	mv	s5,a0
    2340:	00098513          	mv	a0,s3
    2344:	00000097          	auipc	ra,0x0
    2348:	f70080e7          	jalr	-144(ra) # 22b4 <fatfs_lfn_entries_required>
    234c:	00191793          	slli	a5,s2,0x1
    2350:	012787b3          	add	a5,a5,s2
    2354:	00279793          	slli	a5,a5,0x2
    2358:	00050a13          	mv	s4,a0
    235c:	02000613          	li	a2,32
    2360:	00000593          	li	a1,0
    2364:	00048513          	mv	a0,s1
    2368:	01278433          	add	s0,a5,s2
    236c:	fffff097          	auipc	ra,0xfffff
    2370:	06c080e7          	jalr	108(ra) # 13d8 <memset>
    2374:	00190793          	addi	a5,s2,1
    2378:	fffa0a13          	addi	s4,s4,-1 # 3fff <fatfs_fat_set_cluster+0x7b>
    237c:	0ff7f793          	zext.b	a5,a5
    2380:	012a1463          	bne	s4,s2,2388 <fatfs_filename_to_lfn+0xa4>
    2384:	0407e793          	ori	a5,a5,64
    2388:	00f48023          	sb	a5,0(s1)
    238c:	00f00793          	li	a5,15
    2390:	00f485a3          	sb	a5,11(s1)
    2394:	016486a3          	sb	s6,13(s1)
    2398:	00c10713          	addi	a4,sp,12
    239c:	00040793          	mv	a5,s0
    23a0:	fff00613          	li	a2,-1
    23a4:	00072683          	lw	a3,0(a4)
    23a8:	00d486b3          	add	a3,s1,a3
    23ac:	0557d463          	bge	a5,s5,23f4 <fatfs_filename_to_lfn+0x110>
    23b0:	00f985b3          	add	a1,s3,a5
    23b4:	0005c583          	lbu	a1,0(a1)
    23b8:	00b68023          	sb	a1,0(a3)
    23bc:	00470713          	addi	a4,a4,4
    23c0:	04010693          	addi	a3,sp,64
    23c4:	00178793          	addi	a5,a5,1
    23c8:	fcd71ee3          	bne	a4,a3,23a4 <fatfs_filename_to_lfn+0xc0>
    23cc:	05c12083          	lw	ra,92(sp)
    23d0:	05812403          	lw	s0,88(sp)
    23d4:	05412483          	lw	s1,84(sp)
    23d8:	05012903          	lw	s2,80(sp)
    23dc:	04c12983          	lw	s3,76(sp)
    23e0:	04812a03          	lw	s4,72(sp)
    23e4:	04412a83          	lw	s5,68(sp)
    23e8:	04012b03          	lw	s6,64(sp)
    23ec:	06010113          	addi	sp,sp,96
    23f0:	00008067          	ret
    23f4:	01579663          	bne	a5,s5,2400 <fatfs_filename_to_lfn+0x11c>
    23f8:	00068023          	sb	zero,0(a3)
    23fc:	fc1ff06f          	j	23bc <fatfs_filename_to_lfn+0xd8>
    2400:	00c68023          	sb	a2,0(a3)
    2404:	00c680a3          	sb	a2,1(a3)
    2408:	fb5ff06f          	j	23bc <fatfs_filename_to_lfn+0xd8>

0000240c <fatfs_sfn_create_entry>:
    240c:	00000793          	li	a5,0
    2410:	00b00813          	li	a6,11
    2414:	00f508b3          	add	a7,a0,a5
    2418:	0008c303          	lbu	t1,0(a7)
    241c:	00f688b3          	add	a7,a3,a5
    2420:	00178793          	addi	a5,a5,1
    2424:	00688023          	sb	t1,0(a7)
    2428:	ff0796e3          	bne	a5,a6,2414 <fatfs_sfn_create_entry+0x8>
    242c:	02000793          	li	a5,32
    2430:	00f68823          	sb	a5,16(a3)
    2434:	00f68923          	sb	a5,18(a3)
    2438:	00f68c23          	sb	a5,24(a3)
    243c:	000686a3          	sb	zero,13(a3)
    2440:	00068723          	sb	zero,14(a3)
    2444:	000687a3          	sb	zero,15(a3)
    2448:	000688a3          	sb	zero,17(a3)
    244c:	000689a3          	sb	zero,19(a3)
    2450:	00068b23          	sb	zero,22(a3)
    2454:	00068ba3          	sb	zero,23(a3)
    2458:	00068ca3          	sb	zero,25(a3)
    245c:	01000793          	li	a5,16
    2460:	00071463          	bnez	a4,2468 <fatfs_sfn_create_entry+0x5c>
    2464:	02000793          	li	a5,32
    2468:	00f685a3          	sb	a5,11(a3)
    246c:	01065793          	srli	a5,a2,0x10
    2470:	00f68a23          	sb	a5,20(a3)
    2474:	0087d793          	srli	a5,a5,0x8
    2478:	00f68aa3          	sb	a5,21(a3)
    247c:	01061793          	slli	a5,a2,0x10
    2480:	0107d793          	srli	a5,a5,0x10
    2484:	0087d793          	srli	a5,a5,0x8
    2488:	00f68da3          	sb	a5,27(a3)
    248c:	0085d793          	srli	a5,a1,0x8
    2490:	00b68e23          	sb	a1,28(a3)
    2494:	00f68ea3          	sb	a5,29(a3)
    2498:	0105d793          	srli	a5,a1,0x10
    249c:	0185d593          	srli	a1,a1,0x18
    24a0:	00068623          	sb	zero,12(a3)
    24a4:	00c68d23          	sb	a2,26(a3)
    24a8:	00f68f23          	sb	a5,30(a3)
    24ac:	00b68fa3          	sb	a1,31(a3)
    24b0:	00008067          	ret

000024b4 <fatfs_lfn_create_sfn>:
    24b4:	0005c703          	lbu	a4,0(a1)
    24b8:	02e00793          	li	a5,46
    24bc:	16f70663          	beq	a4,a5,2628 <fatfs_lfn_create_sfn+0x174>
    24c0:	fe010113          	addi	sp,sp,-32
    24c4:	00912a23          	sw	s1,20(sp)
    24c8:	00050493          	mv	s1,a0
    24cc:	00058513          	mv	a0,a1
    24d0:	00112e23          	sw	ra,28(sp)
    24d4:	00812c23          	sw	s0,24(sp)
    24d8:	01212823          	sw	s2,16(sp)
    24dc:	00058413          	mv	s0,a1
    24e0:	fffff097          	auipc	ra,0xfffff
    24e4:	f38080e7          	jalr	-200(ra) # 1418 <strlen>
    24e8:	00b00613          	li	a2,11
    24ec:	02000593          	li	a1,32
    24f0:	00050913          	mv	s2,a0
    24f4:	00048513          	mv	a0,s1
    24f8:	fffff097          	auipc	ra,0xfffff
    24fc:	ee0080e7          	jalr	-288(ra) # 13d8 <memset>
    2500:	00300613          	li	a2,3
    2504:	02000593          	li	a1,32
    2508:	00c10513          	addi	a0,sp,12
    250c:	fffff097          	auipc	ra,0xfffff
    2510:	ecc080e7          	jalr	-308(ra) # 13d8 <memset>
    2514:	fff00713          	li	a4,-1
    2518:	00000793          	li	a5,0
    251c:	02e00693          	li	a3,46
    2520:	0d27c263          	blt	a5,s2,25e4 <fatfs_lfn_create_sfn+0x130>
    2524:	fff00793          	li	a5,-1
    2528:	0ef70863          	beq	a4,a5,2618 <fatfs_lfn_create_sfn+0x164>
    252c:	00170793          	addi	a5,a4,1
    2530:	00c10693          	addi	a3,sp,12
    2534:	00470613          	addi	a2,a4,4
    2538:	0cf61263          	bne	a2,a5,25fc <fatfs_lfn_create_sfn+0x148>
    253c:	00000613          	li	a2,0
    2540:	00000693          	li	a3,0
    2544:	02000513          	li	a0,32
    2548:	02e00813          	li	a6,46
    254c:	01900893          	li	a7,25
    2550:	00800313          	li	t1,8
    2554:	02e6dc63          	bge	a3,a4,258c <fatfs_lfn_create_sfn+0xd8>
    2558:	00d407b3          	add	a5,s0,a3
    255c:	0007c783          	lbu	a5,0(a5)
    2560:	0ca78063          	beq	a5,a0,2620 <fatfs_lfn_create_sfn+0x16c>
    2564:	0b078e63          	beq	a5,a6,2620 <fatfs_lfn_create_sfn+0x16c>
    2568:	f9f78593          	addi	a1,a5,-97
    256c:	0ff5f593          	zext.b	a1,a1
    2570:	00c48e33          	add	t3,s1,a2
    2574:	00160613          	addi	a2,a2,1
    2578:	00b8e663          	bltu	a7,a1,2584 <fatfs_lfn_create_sfn+0xd0>
    257c:	fe078793          	addi	a5,a5,-32
    2580:	0ff7f793          	zext.b	a5,a5
    2584:	00fe0023          	sb	a5,0(t3)
    2588:	08661c63          	bne	a2,t1,2620 <fatfs_lfn_create_sfn+0x16c>
    258c:	00c10793          	addi	a5,sp,12
    2590:	00800693          	li	a3,8
    2594:	01900513          	li	a0,25
    2598:	00b00593          	li	a1,11
    259c:	0007c703          	lbu	a4,0(a5)
    25a0:	f9f70613          	addi	a2,a4,-97
    25a4:	0ff67613          	zext.b	a2,a2
    25a8:	00c56663          	bltu	a0,a2,25b4 <fatfs_lfn_create_sfn+0x100>
    25ac:	fe070713          	addi	a4,a4,-32
    25b0:	0ff77713          	zext.b	a4,a4
    25b4:	00d48633          	add	a2,s1,a3
    25b8:	00e60023          	sb	a4,0(a2)
    25bc:	00168693          	addi	a3,a3,1
    25c0:	00178793          	addi	a5,a5,1
    25c4:	fcb69ce3          	bne	a3,a1,259c <fatfs_lfn_create_sfn+0xe8>
    25c8:	01c12083          	lw	ra,28(sp)
    25cc:	01812403          	lw	s0,24(sp)
    25d0:	01412483          	lw	s1,20(sp)
    25d4:	01012903          	lw	s2,16(sp)
    25d8:	00100513          	li	a0,1
    25dc:	02010113          	addi	sp,sp,32
    25e0:	00008067          	ret
    25e4:	00f40633          	add	a2,s0,a5
    25e8:	00064603          	lbu	a2,0(a2)
    25ec:	00d61463          	bne	a2,a3,25f4 <fatfs_lfn_create_sfn+0x140>
    25f0:	00078713          	mv	a4,a5
    25f4:	00178793          	addi	a5,a5,1
    25f8:	f29ff06f          	j	2520 <fatfs_lfn_create_sfn+0x6c>
    25fc:	0127d863          	bge	a5,s2,260c <fatfs_lfn_create_sfn+0x158>
    2600:	00f405b3          	add	a1,s0,a5
    2604:	0005c583          	lbu	a1,0(a1)
    2608:	00b68023          	sb	a1,0(a3)
    260c:	00178793          	addi	a5,a5,1
    2610:	00168693          	addi	a3,a3,1
    2614:	f25ff06f          	j	2538 <fatfs_lfn_create_sfn+0x84>
    2618:	00090713          	mv	a4,s2
    261c:	f21ff06f          	j	253c <fatfs_lfn_create_sfn+0x88>
    2620:	00168693          	addi	a3,a3,1
    2624:	f31ff06f          	j	2554 <fatfs_lfn_create_sfn+0xa0>
    2628:	00000513          	li	a0,0
    262c:	00008067          	ret

00002630 <fatfs_lfn_generate_tail>:
    2630:	000187b7          	lui	a5,0x18
    2634:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    2638:	16c7e463          	bltu	a5,a2,27a0 <fatfs_lfn_generate_tail+0x170>
    263c:	fa010113          	addi	sp,sp,-96
    2640:	04812c23          	sw	s0,88(sp)
    2644:	04912a23          	sw	s1,84(sp)
    2648:	05412423          	sw	s4,72(sp)
    264c:	00050493          	mv	s1,a0
    2650:	00058a13          	mv	s4,a1
    2654:	00060413          	mv	s0,a2
    2658:	00000593          	li	a1,0
    265c:	00c00613          	li	a2,12
    2660:	00410513          	addi	a0,sp,4
    2664:	04112e23          	sw	ra,92(sp)
    2668:	05312623          	sw	s3,76(sp)
    266c:	05512223          	sw	s5,68(sp)
    2670:	03712e23          	sw	s7,60(sp)
    2674:	05212823          	sw	s2,80(sp)
    2678:	05612023          	sw	s6,64(sp)
    267c:	fffff097          	auipc	ra,0xfffff
    2680:	d5c080e7          	jalr	-676(ra) # 13d8 <memset>
    2684:	000055b7          	lui	a1,0x5
    2688:	07e00793          	li	a5,126
    268c:	01100613          	li	a2,17
    2690:	01458593          	addi	a1,a1,20 # 5014 <LEDS+0x98>
    2694:	01c10513          	addi	a0,sp,28
    2698:	01010993          	addi	s3,sp,16
    269c:	00f10223          	sb	a5,4(sp)
    26a0:	00098a93          	mv	s5,s3
    26a4:	fffff097          	auipc	ra,0xfffff
    26a8:	d50080e7          	jalr	-688(ra) # 13f4 <memcpy>
    26ac:	00900b93          	li	s7,9
    26b0:	00a00593          	li	a1,10
    26b4:	00040513          	mv	a0,s0
    26b8:	fffff097          	auipc	ra,0xfffff
    26bc:	cbc080e7          	jalr	-836(ra) # 1374 <__umodsi3>
    26c0:	03050793          	addi	a5,a0,48
    26c4:	00278533          	add	a0,a5,sp
    26c8:	fec54783          	lbu	a5,-20(a0)
    26cc:	00098913          	mv	s2,s3
    26d0:	00040513          	mv	a0,s0
    26d4:	00a00593          	li	a1,10
    26d8:	00f98023          	sb	a5,0(s3)
    26dc:	00040b13          	mv	s6,s0
    26e0:	fffff097          	auipc	ra,0xfffff
    26e4:	c4c080e7          	jalr	-948(ra) # 132c <__udivsi3>
    26e8:	00198993          	addi	s3,s3,1
    26ec:	00050413          	mv	s0,a0
    26f0:	fd6be0e3          	bltu	s7,s6,26b0 <fatfs_lfn_generate_tail+0x80>
    26f4:	00098023          	sb	zero,0(s3)
    26f8:	00410713          	addi	a4,sp,4
    26fc:	00090793          	mv	a5,s2
    2700:	00170713          	addi	a4,a4,1
    2704:	0957f663          	bgeu	a5,s5,2790 <fatfs_lfn_generate_tail+0x160>
    2708:	00f10713          	addi	a4,sp,15
    270c:	00000793          	li	a5,0
    2710:	00e96663          	bltu	s2,a4,271c <fatfs_lfn_generate_tail+0xec>
    2714:	41590933          	sub	s2,s2,s5
    2718:	00190793          	addi	a5,s2,1
    271c:	03078793          	addi	a5,a5,48
    2720:	002787b3          	add	a5,a5,sp
    2724:	000a0593          	mv	a1,s4
    2728:	fc078aa3          	sb	zero,-43(a5)
    272c:	00b00613          	li	a2,11
    2730:	00048513          	mv	a0,s1
    2734:	fffff097          	auipc	ra,0xfffff
    2738:	cc0080e7          	jalr	-832(ra) # 13f4 <memcpy>
    273c:	00410513          	addi	a0,sp,4
    2740:	fffff097          	auipc	ra,0xfffff
    2744:	cd8080e7          	jalr	-808(ra) # 1418 <strlen>
    2748:	40a484b3          	sub	s1,s1,a0
    274c:	00050613          	mv	a2,a0
    2750:	00410593          	addi	a1,sp,4
    2754:	00848513          	addi	a0,s1,8
    2758:	fffff097          	auipc	ra,0xfffff
    275c:	c9c080e7          	jalr	-868(ra) # 13f4 <memcpy>
    2760:	05c12083          	lw	ra,92(sp)
    2764:	05812403          	lw	s0,88(sp)
    2768:	05412483          	lw	s1,84(sp)
    276c:	05012903          	lw	s2,80(sp)
    2770:	04c12983          	lw	s3,76(sp)
    2774:	04812a03          	lw	s4,72(sp)
    2778:	04412a83          	lw	s5,68(sp)
    277c:	04012b03          	lw	s6,64(sp)
    2780:	03c12b83          	lw	s7,60(sp)
    2784:	00100513          	li	a0,1
    2788:	06010113          	addi	sp,sp,96
    278c:	00008067          	ret
    2790:	0007c683          	lbu	a3,0(a5)
    2794:	fff78793          	addi	a5,a5,-1
    2798:	00d70023          	sb	a3,0(a4)
    279c:	f65ff06f          	j	2700 <fatfs_lfn_generate_tail+0xd0>
    27a0:	00000513          	li	a0,0
    27a4:	00008067          	ret

000027a8 <fatfs_total_path_levels>:
    27a8:	00050793          	mv	a5,a0
    27ac:	06050463          	beqz	a0,2814 <fatfs_total_path_levels+0x6c>
    27b0:	00054703          	lbu	a4,0(a0)
    27b4:	02f00693          	li	a3,47
    27b8:	00d71863          	bne	a4,a3,27c8 <fatfs_total_path_levels+0x20>
    27bc:	00150793          	addi	a5,a0,1
    27c0:	00000513          	li	a0,0
    27c4:	0400006f          	j	2804 <fatfs_total_path_levels+0x5c>
    27c8:	00154683          	lbu	a3,1(a0)
    27cc:	03a00713          	li	a4,58
    27d0:	00e68a63          	beq	a3,a4,27e4 <fatfs_total_path_levels+0x3c>
    27d4:	00254683          	lbu	a3,2(a0)
    27d8:	05c00713          	li	a4,92
    27dc:	fff00513          	li	a0,-1
    27e0:	02e69c63          	bne	a3,a4,2818 <fatfs_total_path_levels+0x70>
    27e4:	00378793          	addi	a5,a5,3
    27e8:	05c00713          	li	a4,92
    27ec:	fd5ff06f          	j	27c0 <fatfs_total_path_levels+0x18>
    27f0:	00178793          	addi	a5,a5,1
    27f4:	00e68663          	beq	a3,a4,2800 <fatfs_total_path_levels+0x58>
    27f8:	0007c683          	lbu	a3,0(a5)
    27fc:	fe069ae3          	bnez	a3,27f0 <fatfs_total_path_levels+0x48>
    2800:	00150513          	addi	a0,a0,1
    2804:	0007c683          	lbu	a3,0(a5)
    2808:	fe0698e3          	bnez	a3,27f8 <fatfs_total_path_levels+0x50>
    280c:	fff50513          	addi	a0,a0,-1
    2810:	00008067          	ret
    2814:	fff00513          	li	a0,-1
    2818:	00008067          	ret

0000281c <fatfs_get_substring>:
    281c:	0c050c63          	beqz	a0,28f4 <fatfs_get_substring+0xd8>
    2820:	fe010113          	addi	sp,sp,-32
    2824:	00912a23          	sw	s1,20(sp)
    2828:	00112e23          	sw	ra,28(sp)
    282c:	00812c23          	sw	s0,24(sp)
    2830:	01212823          	sw	s2,16(sp)
    2834:	01312623          	sw	s3,12(sp)
    2838:	01412423          	sw	s4,8(sp)
    283c:	00050793          	mv	a5,a0
    2840:	00068493          	mv	s1,a3
    2844:	fff00513          	li	a0,-1
    2848:	06d05a63          	blez	a3,28bc <fatfs_get_substring+0xa0>
    284c:	0007c983          	lbu	s3,0(a5)
    2850:	02f00713          	li	a4,47
    2854:	00058a13          	mv	s4,a1
    2858:	00060913          	mv	s2,a2
    285c:	00178413          	addi	s0,a5,1
    2860:	02e98463          	beq	s3,a4,2888 <fatfs_get_substring+0x6c>
    2864:	0017c683          	lbu	a3,1(a5)
    2868:	03a00713          	li	a4,58
    286c:	00e68a63          	beq	a3,a4,2880 <fatfs_get_substring+0x64>
    2870:	0027c683          	lbu	a3,2(a5)
    2874:	05c00713          	li	a4,92
    2878:	fff00513          	li	a0,-1
    287c:	04e69063          	bne	a3,a4,28bc <fatfs_get_substring+0xa0>
    2880:	00378413          	addi	s0,a5,3
    2884:	05c00993          	li	s3,92
    2888:	00040513          	mv	a0,s0
    288c:	fffff097          	auipc	ra,0xfffff
    2890:	b8c080e7          	jalr	-1140(ra) # 1418 <strlen>
    2894:	00000713          	li	a4,0
    2898:	00000693          	li	a3,0
    289c:	00000793          	li	a5,0
    28a0:	fff48493          	addi	s1,s1,-1
    28a4:	00e905b3          	add	a1,s2,a4
    28a8:	02a7ca63          	blt	a5,a0,28dc <fatfs_get_substring+0xc0>
    28ac:	00058023          	sb	zero,0(a1)
    28b0:	00094503          	lbu	a0,0(s2)
    28b4:	00153513          	seqz	a0,a0
    28b8:	40a00533          	neg	a0,a0
    28bc:	01c12083          	lw	ra,28(sp)
    28c0:	01812403          	lw	s0,24(sp)
    28c4:	01412483          	lw	s1,20(sp)
    28c8:	01012903          	lw	s2,16(sp)
    28cc:	00c12983          	lw	s3,12(sp)
    28d0:	00812a03          	lw	s4,8(sp)
    28d4:	02010113          	addi	sp,sp,32
    28d8:	00008067          	ret
    28dc:	00f40633          	add	a2,s0,a5
    28e0:	00064603          	lbu	a2,0(a2)
    28e4:	01361c63          	bne	a2,s3,28fc <fatfs_get_substring+0xe0>
    28e8:	00168693          	addi	a3,a3,1
    28ec:	00178793          	addi	a5,a5,1
    28f0:	fb5ff06f          	j	28a4 <fatfs_get_substring+0x88>
    28f4:	fff00513          	li	a0,-1
    28f8:	00008067          	ret
    28fc:	ff4698e3          	bne	a3,s4,28ec <fatfs_get_substring+0xd0>
    2900:	fe9756e3          	bge	a4,s1,28ec <fatfs_get_substring+0xd0>
    2904:	00170713          	addi	a4,a4,1
    2908:	00c58023          	sb	a2,0(a1)
    290c:	fe1ff06f          	j	28ec <fatfs_get_substring+0xd0>

00002910 <fatfs_split_path>:
    2910:	fd010113          	addi	sp,sp,-48
    2914:	02912223          	sw	s1,36(sp)
    2918:	01312e23          	sw	s3,28(sp)
    291c:	01412c23          	sw	s4,24(sp)
    2920:	01512a23          	sw	s5,20(sp)
    2924:	02112623          	sw	ra,44(sp)
    2928:	00068a93          	mv	s5,a3
    292c:	02812423          	sw	s0,40(sp)
    2930:	03212023          	sw	s2,32(sp)
    2934:	00050993          	mv	s3,a0
    2938:	00058493          	mv	s1,a1
    293c:	00060a13          	mv	s4,a2
    2940:	00e12623          	sw	a4,12(sp)
    2944:	00000097          	auipc	ra,0x0
    2948:	e64080e7          	jalr	-412(ra) # 27a8 <fatfs_total_path_levels>
    294c:	fff00793          	li	a5,-1
    2950:	00c12683          	lw	a3,12(sp)
    2954:	02f51863          	bne	a0,a5,2984 <fatfs_split_path+0x74>
    2958:	fff00913          	li	s2,-1
    295c:	02c12083          	lw	ra,44(sp)
    2960:	02812403          	lw	s0,40(sp)
    2964:	02412483          	lw	s1,36(sp)
    2968:	01c12983          	lw	s3,28(sp)
    296c:	01812a03          	lw	s4,24(sp)
    2970:	01412a83          	lw	s5,20(sp)
    2974:	00090513          	mv	a0,s2
    2978:	02012903          	lw	s2,32(sp)
    297c:	03010113          	addi	sp,sp,48
    2980:	00008067          	ret
    2984:	00050593          	mv	a1,a0
    2988:	00050413          	mv	s0,a0
    298c:	000a8613          	mv	a2,s5
    2990:	00098513          	mv	a0,s3
    2994:	00000097          	auipc	ra,0x0
    2998:	e88080e7          	jalr	-376(ra) # 281c <fatfs_get_substring>
    299c:	00050913          	mv	s2,a0
    29a0:	fa051ce3          	bnez	a0,2958 <fatfs_split_path+0x48>
    29a4:	00041663          	bnez	s0,29b0 <fatfs_split_path+0xa0>
    29a8:	00048023          	sb	zero,0(s1)
    29ac:	fb1ff06f          	j	295c <fatfs_split_path+0x4c>
    29b0:	00098513          	mv	a0,s3
    29b4:	fffff097          	auipc	ra,0xfffff
    29b8:	a64080e7          	jalr	-1436(ra) # 1418 <strlen>
    29bc:	00050413          	mv	s0,a0
    29c0:	000a8513          	mv	a0,s5
    29c4:	fffff097          	auipc	ra,0xfffff
    29c8:	a54080e7          	jalr	-1452(ra) # 1418 <strlen>
    29cc:	40a40433          	sub	s0,s0,a0
    29d0:	008a5463          	bge	s4,s0,29d8 <fatfs_split_path+0xc8>
    29d4:	000a0413          	mv	s0,s4
    29d8:	00048513          	mv	a0,s1
    29dc:	00040613          	mv	a2,s0
    29e0:	00098593          	mv	a1,s3
    29e4:	008484b3          	add	s1,s1,s0
    29e8:	fffff097          	auipc	ra,0xfffff
    29ec:	a0c080e7          	jalr	-1524(ra) # 13f4 <memcpy>
    29f0:	fe048fa3          	sb	zero,-1(s1)
    29f4:	f69ff06f          	j	295c <fatfs_split_path+0x4c>

000029f8 <fatfs_compare_names>:
    29f8:	fd010113          	addi	sp,sp,-48
    29fc:	02112623          	sw	ra,44(sp)
    2a00:	02812423          	sw	s0,40(sp)
    2a04:	02912223          	sw	s1,36(sp)
    2a08:	03212023          	sw	s2,32(sp)
    2a0c:	01312e23          	sw	s3,28(sp)
    2a10:	00058913          	mv	s2,a1
    2a14:	01412c23          	sw	s4,24(sp)
    2a18:	01512a23          	sw	s5,20(sp)
    2a1c:	01612823          	sw	s6,16(sp)
    2a20:	00050a13          	mv	s4,a0
    2a24:	fffff097          	auipc	ra,0xfffff
    2a28:	28c080e7          	jalr	652(ra) # 1cb0 <FileString_GetExtension>
    2a2c:	00050493          	mv	s1,a0
    2a30:	00090513          	mv	a0,s2
    2a34:	fffff097          	auipc	ra,0xfffff
    2a38:	27c080e7          	jalr	636(ra) # 1cb0 <FileString_GetExtension>
    2a3c:	fff00793          	li	a5,-1
    2a40:	00050413          	mv	s0,a0
    2a44:	00000993          	li	s3,0
    2a48:	08f49a63          	bne	s1,a5,2adc <fatfs_compare_names+0xe4>
    2a4c:	0c951e63          	bne	a0,s1,2b28 <fatfs_compare_names+0x130>
    2a50:	000a0513          	mv	a0,s4
    2a54:	fffff097          	auipc	ra,0xfffff
    2a58:	9c4080e7          	jalr	-1596(ra) # 1418 <strlen>
    2a5c:	00050493          	mv	s1,a0
    2a60:	00090513          	mv	a0,s2
    2a64:	fffff097          	auipc	ra,0xfffff
    2a68:	9b4080e7          	jalr	-1612(ra) # 1418 <strlen>
    2a6c:	00050413          	mv	s0,a0
    2a70:	fff48793          	addi	a5,s1,-1
    2a74:	00fa07b3          	add	a5,s4,a5
    2a78:	40978733          	sub	a4,a5,s1
    2a7c:	02000613          	li	a2,32
    2a80:	00078693          	mv	a3,a5
    2a84:	00e78863          	beq	a5,a4,2a94 <fatfs_compare_names+0x9c>
    2a88:	0007c583          	lbu	a1,0(a5)
    2a8c:	fff78793          	addi	a5,a5,-1
    2a90:	0cc58263          	beq	a1,a2,2b54 <fatfs_compare_names+0x15c>
    2a94:	fff40793          	addi	a5,s0,-1
    2a98:	00f907b3          	add	a5,s2,a5
    2a9c:	40878733          	sub	a4,a5,s0
    2aa0:	02000613          	li	a2,32
    2aa4:	00078693          	mv	a3,a5
    2aa8:	00e78863          	beq	a5,a4,2ab8 <fatfs_compare_names+0xc0>
    2aac:	0007c583          	lbu	a1,0(a5)
    2ab0:	fff78793          	addi	a5,a5,-1
    2ab4:	0ac58463          	beq	a1,a2,2b5c <fatfs_compare_names+0x164>
    2ab8:	00000993          	li	s3,0
    2abc:	06941663          	bne	s0,s1,2b28 <fatfs_compare_names+0x130>
    2ac0:	00040613          	mv	a2,s0
    2ac4:	00090593          	mv	a1,s2
    2ac8:	000a0513          	mv	a0,s4
    2acc:	fffff097          	auipc	ra,0xfffff
    2ad0:	174080e7          	jalr	372(ra) # 1c40 <FileString_StrCmpNoCase>
    2ad4:	00153993          	seqz	s3,a0
    2ad8:	0500006f          	j	2b28 <fatfs_compare_names+0x130>
    2adc:	04f50663          	beq	a0,a5,2b28 <fatfs_compare_names+0x130>
    2ae0:	00148a93          	addi	s5,s1,1
    2ae4:	015a0ab3          	add	s5,s4,s5
    2ae8:	00150b13          	addi	s6,a0,1
    2aec:	000a8513          	mv	a0,s5
    2af0:	fffff097          	auipc	ra,0xfffff
    2af4:	928080e7          	jalr	-1752(ra) # 1418 <strlen>
    2af8:	01690b33          	add	s6,s2,s6
    2afc:	00a12623          	sw	a0,12(sp)
    2b00:	000b0513          	mv	a0,s6
    2b04:	fffff097          	auipc	ra,0xfffff
    2b08:	914080e7          	jalr	-1772(ra) # 1418 <strlen>
    2b0c:	00c12603          	lw	a2,12(sp)
    2b10:	00a61c63          	bne	a2,a0,2b28 <fatfs_compare_names+0x130>
    2b14:	000b0593          	mv	a1,s6
    2b18:	000a8513          	mv	a0,s5
    2b1c:	fffff097          	auipc	ra,0xfffff
    2b20:	124080e7          	jalr	292(ra) # 1c40 <FileString_StrCmpNoCase>
    2b24:	f40506e3          	beqz	a0,2a70 <fatfs_compare_names+0x78>
    2b28:	02c12083          	lw	ra,44(sp)
    2b2c:	02812403          	lw	s0,40(sp)
    2b30:	02412483          	lw	s1,36(sp)
    2b34:	02012903          	lw	s2,32(sp)
    2b38:	01812a03          	lw	s4,24(sp)
    2b3c:	01412a83          	lw	s5,20(sp)
    2b40:	01012b03          	lw	s6,16(sp)
    2b44:	00098513          	mv	a0,s3
    2b48:	01c12983          	lw	s3,28(sp)
    2b4c:	03010113          	addi	sp,sp,48
    2b50:	00008067          	ret
    2b54:	414684b3          	sub	s1,a3,s4
    2b58:	f29ff06f          	j	2a80 <fatfs_compare_names+0x88>
    2b5c:	41268433          	sub	s0,a3,s2
    2b60:	f45ff06f          	j	2aa4 <fatfs_compare_names+0xac>

00002b64 <_check_file_open>:
    2b64:	fe010113          	addi	sp,sp,-32
    2b68:	000057b7          	lui	a5,0x5
    2b6c:	00812c23          	sw	s0,24(sp)
    2b70:	2907a403          	lw	s0,656(a5) # 5290 <_open_file_list>
    2b74:	00912a23          	sw	s1,20(sp)
    2b78:	01212823          	sw	s2,16(sp)
    2b7c:	01312623          	sw	s3,12(sp)
    2b80:	00112e23          	sw	ra,28(sp)
    2b84:	00050493          	mv	s1,a0
    2b88:	01450913          	addi	s2,a0,20
    2b8c:	11850993          	addi	s3,a0,280
    2b90:	02041263          	bnez	s0,2bb4 <_check_file_open+0x50>
    2b94:	00000513          	li	a0,0
    2b98:	01c12083          	lw	ra,28(sp)
    2b9c:	01812403          	lw	s0,24(sp)
    2ba0:	01412483          	lw	s1,20(sp)
    2ba4:	01012903          	lw	s2,16(sp)
    2ba8:	00c12983          	lw	s3,12(sp)
    2bac:	02010113          	addi	sp,sp,32
    2bb0:	00008067          	ret
    2bb4:	bc440793          	addi	a5,s0,-1084
    2bb8:	02f48663          	beq	s1,a5,2be4 <_check_file_open+0x80>
    2bbc:	00090593          	mv	a1,s2
    2bc0:	bd840513          	addi	a0,s0,-1064
    2bc4:	00000097          	auipc	ra,0x0
    2bc8:	e34080e7          	jalr	-460(ra) # 29f8 <fatfs_compare_names>
    2bcc:	00050c63          	beqz	a0,2be4 <_check_file_open+0x80>
    2bd0:	00098593          	mv	a1,s3
    2bd4:	cdc40513          	addi	a0,s0,-804
    2bd8:	00000097          	auipc	ra,0x0
    2bdc:	e20080e7          	jalr	-480(ra) # 29f8 <fatfs_compare_names>
    2be0:	00051663          	bnez	a0,2bec <_check_file_open+0x88>
    2be4:	00442403          	lw	s0,4(s0)
    2be8:	fa9ff06f          	j	2b90 <_check_file_open+0x2c>
    2bec:	00100513          	li	a0,1
    2bf0:	fa9ff06f          	j	2b98 <_check_file_open+0x34>

00002bf4 <fatfs_get_sfn_display_name>:
    2bf4:	00000713          	li	a4,0
    2bf8:	00c00613          	li	a2,12
    2bfc:	02000813          	li	a6,32
    2c00:	01900893          	li	a7,25
    2c04:	0005c783          	lbu	a5,0(a1)
    2c08:	00078463          	beqz	a5,2c10 <fatfs_get_sfn_display_name+0x1c>
    2c0c:	00c71863          	bne	a4,a2,2c1c <fatfs_get_sfn_display_name+0x28>
    2c10:	00050023          	sb	zero,0(a0)
    2c14:	00100513          	li	a0,1
    2c18:	00008067          	ret
    2c1c:	00158593          	addi	a1,a1,1
    2c20:	ff0782e3          	beq	a5,a6,2c04 <fatfs_get_sfn_display_name+0x10>
    2c24:	fbf78693          	addi	a3,a5,-65
    2c28:	0ff6f693          	zext.b	a3,a3
    2c2c:	00d8e663          	bltu	a7,a3,2c38 <fatfs_get_sfn_display_name+0x44>
    2c30:	02078793          	addi	a5,a5,32
    2c34:	0ff7f793          	zext.b	a5,a5
    2c38:	00f50023          	sb	a5,0(a0)
    2c3c:	00170713          	addi	a4,a4,1
    2c40:	00150513          	addi	a0,a0,1
    2c44:	fc1ff06f          	j	2c04 <fatfs_get_sfn_display_name+0x10>

00002c48 <fatfs_fat_init>:
    2c48:	ff010113          	addi	sp,sp,-16
    2c4c:	00812423          	sw	s0,8(sp)
    2c50:	00912223          	sw	s1,4(sp)
    2c54:	00112623          	sw	ra,12(sp)
    2c58:	fff00793          	li	a5,-1
    2c5c:	25850493          	addi	s1,a0,600
    2c60:	00050413          	mv	s0,a0
    2c64:	44f52c23          	sw	a5,1112(a0)
    2c68:	24052a23          	sw	zero,596(a0)
    2c6c:	44052e23          	sw	zero,1116(a0)
    2c70:	20000613          	li	a2,512
    2c74:	00048513          	mv	a0,s1
    2c78:	00000593          	li	a1,0
    2c7c:	ffffe097          	auipc	ra,0xffffe
    2c80:	75c080e7          	jalr	1884(ra) # 13d8 <memset>
    2c84:	25442783          	lw	a5,596(s0)
    2c88:	00c12083          	lw	ra,12(sp)
    2c8c:	24942a23          	sw	s1,596(s0)
    2c90:	46042023          	sw	zero,1120(s0)
    2c94:	46f42223          	sw	a5,1124(s0)
    2c98:	00812403          	lw	s0,8(sp)
    2c9c:	00412483          	lw	s1,4(sp)
    2ca0:	01010113          	addi	sp,sp,16
    2ca4:	00008067          	ret

00002ca8 <fatfs_init>:
    2ca8:	fd010113          	addi	sp,sp,-48
    2cac:	02812423          	sw	s0,40(sp)
    2cb0:	02112623          	sw	ra,44(sp)
    2cb4:	02912223          	sw	s1,36(sp)
    2cb8:	03212023          	sw	s2,32(sp)
    2cbc:	01312e23          	sw	s3,28(sp)
    2cc0:	fff00793          	li	a5,-1
    2cc4:	24f52223          	sw	a5,580(a0)
    2cc8:	24052423          	sw	zero,584(a0)
    2ccc:	02052223          	sw	zero,36(a0)
    2cd0:	00050413          	mv	s0,a0
    2cd4:	00000097          	auipc	ra,0x0
    2cd8:	f74080e7          	jalr	-140(ra) # 2c48 <fatfs_fat_init>
    2cdc:	03442783          	lw	a5,52(s0)
    2ce0:	02079263          	bnez	a5,2d04 <fatfs_init+0x5c>
    2ce4:	fff00513          	li	a0,-1
    2ce8:	02c12083          	lw	ra,44(sp)
    2cec:	02812403          	lw	s0,40(sp)
    2cf0:	02412483          	lw	s1,36(sp)
    2cf4:	02012903          	lw	s2,32(sp)
    2cf8:	01c12983          	lw	s3,28(sp)
    2cfc:	03010113          	addi	sp,sp,48
    2d00:	00008067          	ret
    2d04:	04440593          	addi	a1,s0,68
    2d08:	00100613          	li	a2,1
    2d0c:	00000513          	li	a0,0
    2d10:	00b12623          	sw	a1,12(sp)
    2d14:	000780e7          	jalr	a5
    2d18:	fc0506e3          	beqz	a0,2ce4 <fatfs_init+0x3c>
    2d1c:	24042703          	lw	a4,576(s0)
    2d20:	ffff07b7          	lui	a5,0xffff0
    2d24:	00c12583          	lw	a1,12(sp)
    2d28:	00e7f7b3          	and	a5,a5,a4
    2d2c:	aa550737          	lui	a4,0xaa550
    2d30:	00e78663          	beq	a5,a4,2d3c <fatfs_init+0x94>
    2d34:	ffd00513          	li	a0,-3
    2d38:	fb1ff06f          	j	2ce8 <fatfs_init+0x40>
    2d3c:	24245703          	lhu	a4,578(s0)
    2d40:	0000b7b7          	lui	a5,0xb
    2d44:	a5578793          	addi	a5,a5,-1451 # aa55 <framebuffer+0xfb5>
    2d48:	ffc00513          	li	a0,-4
    2d4c:	f8f71ee3          	bne	a4,a5,2ce8 <fatfs_init+0x40>
    2d50:	20644783          	lbu	a5,518(s0)
    2d54:	00600713          	li	a4,6
    2d58:	02f76463          	bltu	a4,a5,2d80 <fatfs_init+0xd8>
    2d5c:	00400713          	li	a4,4
    2d60:	00f76663          	bltu	a4,a5,2d6c <fatfs_init+0xc4>
    2d64:	00000513          	li	a0,0
    2d68:	02078663          	beqz	a5,2d94 <fatfs_init+0xec>
    2d6c:	20c45503          	lhu	a0,524(s0)
    2d70:	20a45783          	lhu	a5,522(s0)
    2d74:	01051513          	slli	a0,a0,0x10
    2d78:	00f56533          	or	a0,a0,a5
    2d7c:	0180006f          	j	2d94 <fatfs_init+0xec>
    2d80:	00c00713          	li	a4,12
    2d84:	12f76a63          	bltu	a4,a5,2eb8 <fatfs_init+0x210>
    2d88:	00a00713          	li	a4,10
    2d8c:	00000513          	li	a0,0
    2d90:	fcf76ee3          	bltu	a4,a5,2d6c <fatfs_init+0xc4>
    2d94:	03442783          	lw	a5,52(s0)
    2d98:	00a42e23          	sw	a0,28(s0)
    2d9c:	00100613          	li	a2,1
    2da0:	000780e7          	jalr	a5
    2da4:	f40500e3          	beqz	a0,2ce4 <fatfs_init+0x3c>
    2da8:	05044783          	lbu	a5,80(s0)
    2dac:	04f44703          	lbu	a4,79(s0)
    2db0:	ffe00513          	li	a0,-2
    2db4:	00879793          	slli	a5,a5,0x8
    2db8:	00e7e7b3          	or	a5,a5,a4
    2dbc:	20000713          	li	a4,512
    2dc0:	f2e794e3          	bne	a5,a4,2ce8 <fatfs_init+0x40>
    2dc4:	05644483          	lbu	s1,86(s0)
    2dc8:	05544783          	lbu	a5,85(s0)
    2dcc:	05144983          	lbu	s3,81(s0)
    2dd0:	00849493          	slli	s1,s1,0x8
    2dd4:	05a45583          	lhu	a1,90(s0)
    2dd8:	00f4e4b3          	or	s1,s1,a5
    2ddc:	01340023          	sb	s3,0(s0)
    2de0:	02941423          	sh	s1,40(s0)
    2de4:	05245903          	lhu	s2,82(s0)
    2de8:	05444503          	lbu	a0,84(s0)
    2dec:	00059463          	bnez	a1,2df4 <fatfs_init+0x14c>
    2df0:	06842583          	lw	a1,104(s0)
    2df4:	07042783          	lw	a5,112(s0)
    2df8:	02b42023          	sw	a1,32(s0)
    2dfc:	00549493          	slli	s1,s1,0x5
    2e00:	00f42423          	sw	a5,8(s0)
    2e04:	07445783          	lhu	a5,116(s0)
    2e08:	1ff48493          	addi	s1,s1,511
    2e0c:	4094d493          	srai	s1,s1,0x9
    2e10:	00f41c23          	sh	a5,24(s0)
    2e14:	fffff097          	auipc	ra,0xfffff
    2e18:	d98080e7          	jalr	-616(ra) # 1bac <__mulsi3>
    2e1c:	00a907b3          	add	a5,s2,a0
    2e20:	00f42623          	sw	a5,12(s0)
    2e24:	01c42783          	lw	a5,28(s0)
    2e28:	24245703          	lhu	a4,578(s0)
    2e2c:	00942823          	sw	s1,16(s0)
    2e30:	00f907b3          	add	a5,s2,a5
    2e34:	00f42a23          	sw	a5,20(s0)
    2e38:	00f507b3          	add	a5,a0,a5
    2e3c:	00f42223          	sw	a5,4(s0)
    2e40:	0000b7b7          	lui	a5,0xb
    2e44:	a5578793          	addi	a5,a5,-1451 # aa55 <framebuffer+0xfb5>
    2e48:	eef716e3          	bne	a4,a5,2d34 <fatfs_init+0x8c>
    2e4c:	05844783          	lbu	a5,88(s0)
    2e50:	05744703          	lbu	a4,87(s0)
    2e54:	00879793          	slli	a5,a5,0x8
    2e58:	00e7e7b3          	or	a5,a5,a4
    2e5c:	00079463          	bnez	a5,2e64 <fatfs_init+0x1bc>
    2e60:	06442783          	lw	a5,100(s0)
    2e64:	00990933          	add	s2,s2,s1
    2e68:	00a90533          	add	a0,s2,a0
    2e6c:	40a787b3          	sub	a5,a5,a0
    2e70:	ffb00513          	li	a0,-5
    2e74:	e6098ae3          	beqz	s3,2ce8 <fatfs_init+0x40>
    2e78:	00078513          	mv	a0,a5
    2e7c:	00098593          	mv	a1,s3
    2e80:	ffffe097          	auipc	ra,0xffffe
    2e84:	4ac080e7          	jalr	1196(ra) # 132c <__udivsi3>
    2e88:	00001737          	lui	a4,0x1
    2e8c:	00050793          	mv	a5,a0
    2e90:	ff470713          	addi	a4,a4,-12 # ff4 <sdcard_read_sector+0x68>
    2e94:	ffb00513          	li	a0,-5
    2e98:	e4f778e3          	bgeu	a4,a5,2ce8 <fatfs_init+0x40>
    2e9c:	00010737          	lui	a4,0x10
    2ea0:	ff470713          	addi	a4,a4,-12 # fff4 <_files+0x20ec>
    2ea4:	02f76663          	bltu	a4,a5,2ed0 <fatfs_init+0x228>
    2ea8:	00042423          	sw	zero,8(s0)
    2eac:	02042823          	sw	zero,48(s0)
    2eb0:	00000513          	li	a0,0
    2eb4:	e35ff06f          	j	2ce8 <fatfs_init+0x40>
    2eb8:	ff278793          	addi	a5,a5,-14
    2ebc:	0ff7f793          	zext.b	a5,a5
    2ec0:	00100713          	li	a4,1
    2ec4:	00000513          	li	a0,0
    2ec8:	eaf772e3          	bgeu	a4,a5,2d6c <fatfs_init+0xc4>
    2ecc:	ec9ff06f          	j	2d94 <fatfs_init+0xec>
    2ed0:	00100793          	li	a5,1
    2ed4:	02f42823          	sw	a5,48(s0)
    2ed8:	fd9ff06f          	j	2eb0 <fatfs_init+0x208>

00002edc <fl_attach_media>:
    2edc:	000057b7          	lui	a5,0x5
    2ee0:	29c7a783          	lw	a5,668(a5) # 529c <_filelib_init>
    2ee4:	ff010113          	addi	sp,sp,-16
    2ee8:	00812423          	sw	s0,8(sp)
    2eec:	00912223          	sw	s1,4(sp)
    2ef0:	00112623          	sw	ra,12(sp)
    2ef4:	00050493          	mv	s1,a0
    2ef8:	00058413          	mv	s0,a1
    2efc:	00079663          	bnez	a5,2f08 <fl_attach_media+0x2c>
    2f00:	fffff097          	auipc	ra,0xfffff
    2f04:	144080e7          	jalr	324(ra) # 2044 <fl_init>
    2f08:	0000e537          	lui	a0,0xe
    2f0c:	aa050793          	addi	a5,a0,-1376 # daa0 <_fs>
    2f10:	aa050513          	addi	a0,a0,-1376
    2f14:	0287ac23          	sw	s0,56(a5)
    2f18:	0297aa23          	sw	s1,52(a5)
    2f1c:	00000097          	auipc	ra,0x0
    2f20:	d8c080e7          	jalr	-628(ra) # 2ca8 <fatfs_init>
    2f24:	00050413          	mv	s0,a0
    2f28:	02050863          	beqz	a0,2f58 <fl_attach_media+0x7c>
    2f2c:	00050593          	mv	a1,a0
    2f30:	00005537          	lui	a0,0x5
    2f34:	02850513          	addi	a0,a0,40 # 5028 <LEDS+0xac>
    2f38:	fffff097          	auipc	ra,0xfffff
    2f3c:	b44080e7          	jalr	-1212(ra) # 1a7c <printf>
    2f40:	00c12083          	lw	ra,12(sp)
    2f44:	00040513          	mv	a0,s0
    2f48:	00812403          	lw	s0,8(sp)
    2f4c:	00412483          	lw	s1,4(sp)
    2f50:	01010113          	addi	sp,sp,16
    2f54:	00008067          	ret
    2f58:	000057b7          	lui	a5,0x5
    2f5c:	00100713          	li	a4,1
    2f60:	28e7ac23          	sw	a4,664(a5) # 5298 <_filelib_valid>
    2f64:	fddff06f          	j	2f40 <fl_attach_media+0x64>

00002f68 <fatfs_fat_purge>:
    2f68:	ff010113          	addi	sp,sp,-16
    2f6c:	00812423          	sw	s0,8(sp)
    2f70:	25452403          	lw	s0,596(a0)
    2f74:	00912223          	sw	s1,4(sp)
    2f78:	00112623          	sw	ra,12(sp)
    2f7c:	00050493          	mv	s1,a0
    2f80:	00041663          	bnez	s0,2f8c <fatfs_fat_purge+0x24>
    2f84:	00100513          	li	a0,1
    2f88:	0280006f          	j	2fb0 <fatfs_fat_purge+0x48>
    2f8c:	20442783          	lw	a5,516(s0)
    2f90:	00079663          	bnez	a5,2f9c <fatfs_fat_purge+0x34>
    2f94:	20c42403          	lw	s0,524(s0)
    2f98:	fe9ff06f          	j	2f80 <fatfs_fat_purge+0x18>
    2f9c:	00040593          	mv	a1,s0
    2fa0:	00048513          	mv	a0,s1
    2fa4:	fffff097          	auipc	ra,0xfffff
    2fa8:	d38080e7          	jalr	-712(ra) # 1cdc <fatfs_fat_writeback>
    2fac:	fe0514e3          	bnez	a0,2f94 <fatfs_fat_purge+0x2c>
    2fb0:	00c12083          	lw	ra,12(sp)
    2fb4:	00812403          	lw	s0,8(sp)
    2fb8:	00412483          	lw	s1,4(sp)
    2fbc:	01010113          	addi	sp,sp,16
    2fc0:	00008067          	ret

00002fc4 <fatfs_find_next_cluster>:
    2fc4:	ff010113          	addi	sp,sp,-16
    2fc8:	00812423          	sw	s0,8(sp)
    2fcc:	01212023          	sw	s2,0(sp)
    2fd0:	00112623          	sw	ra,12(sp)
    2fd4:	00912223          	sw	s1,4(sp)
    2fd8:	00050913          	mv	s2,a0
    2fdc:	00200413          	li	s0,2
    2fe0:	00058463          	beqz	a1,2fe8 <fatfs_find_next_cluster+0x24>
    2fe4:	00058413          	mv	s0,a1
    2fe8:	03092783          	lw	a5,48(s2)
    2fec:	00745493          	srli	s1,s0,0x7
    2ff0:	00079463          	bnez	a5,2ff8 <fatfs_find_next_cluster+0x34>
    2ff4:	00845493          	srli	s1,s0,0x8
    2ff8:	01492583          	lw	a1,20(s2)
    2ffc:	00090513          	mv	a0,s2
    3000:	00b485b3          	add	a1,s1,a1
    3004:	fffff097          	auipc	ra,0xfffff
    3008:	d58080e7          	jalr	-680(ra) # 1d5c <fatfs_fat_read_sector>
    300c:	00050793          	mv	a5,a0
    3010:	fff00513          	li	a0,-1
    3014:	04078a63          	beqz	a5,3068 <fatfs_find_next_cluster+0xa4>
    3018:	03092703          	lw	a4,48(s2)
    301c:	2087a783          	lw	a5,520(a5)
    3020:	06071063          	bnez	a4,3080 <fatfs_find_next_cluster+0xbc>
    3024:	00849493          	slli	s1,s1,0x8
    3028:	40940433          	sub	s0,s0,s1
    302c:	00010737          	lui	a4,0x10
    3030:	00141413          	slli	s0,s0,0x1
    3034:	ffe70713          	addi	a4,a4,-2 # fffe <_files+0x20f6>
    3038:	00e47433          	and	s0,s0,a4
    303c:	008787b3          	add	a5,a5,s0
    3040:	0017c503          	lbu	a0,1(a5)
    3044:	0007c783          	lbu	a5,0(a5)
    3048:	00851513          	slli	a0,a0,0x8
    304c:	00f50533          	add	a0,a0,a5
    3050:	ffff07b7          	lui	a5,0xffff0
    3054:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    3058:	00f507b3          	add	a5,a0,a5
    305c:	00700713          	li	a4,7
    3060:	00f76463          	bltu	a4,a5,3068 <fatfs_find_next_cluster+0xa4>
    3064:	fff00513          	li	a0,-1
    3068:	00c12083          	lw	ra,12(sp)
    306c:	00812403          	lw	s0,8(sp)
    3070:	00412483          	lw	s1,4(sp)
    3074:	00012903          	lw	s2,0(sp)
    3078:	01010113          	addi	sp,sp,16
    307c:	00008067          	ret
    3080:	00749493          	slli	s1,s1,0x7
    3084:	40940433          	sub	s0,s0,s1
    3088:	00010737          	lui	a4,0x10
    308c:	ffc70713          	addi	a4,a4,-4 # fffc <_files+0x20f4>
    3090:	00241413          	slli	s0,s0,0x2
    3094:	00e47433          	and	s0,s0,a4
    3098:	008787b3          	add	a5,a5,s0
    309c:	0037c503          	lbu	a0,3(a5)
    30a0:	0027c703          	lbu	a4,2(a5)
    30a4:	01851513          	slli	a0,a0,0x18
    30a8:	01071713          	slli	a4,a4,0x10
    30ac:	00e50533          	add	a0,a0,a4
    30b0:	0007c703          	lbu	a4,0(a5)
    30b4:	0017c783          	lbu	a5,1(a5)
    30b8:	00e50533          	add	a0,a0,a4
    30bc:	00879793          	slli	a5,a5,0x8
    30c0:	00f50533          	add	a0,a0,a5
    30c4:	00451513          	slli	a0,a0,0x4
    30c8:	00455513          	srli	a0,a0,0x4
    30cc:	f00007b7          	lui	a5,0xf0000
    30d0:	f85ff06f          	j	3054 <fatfs_find_next_cluster+0x90>

000030d4 <fatfs_sector_reader>:
    30d4:	03052783          	lw	a5,48(a0)
    30d8:	fd010113          	addi	sp,sp,-48
    30dc:	02812423          	sw	s0,40(sp)
    30e0:	03212023          	sw	s2,32(sp)
    30e4:	01312e23          	sw	s3,28(sp)
    30e8:	02112623          	sw	ra,44(sp)
    30ec:	02912223          	sw	s1,36(sp)
    30f0:	01412c23          	sw	s4,24(sp)
    30f4:	01512a23          	sw	s5,20(sp)
    30f8:	00f5e7b3          	or	a5,a1,a5
    30fc:	00050413          	mv	s0,a0
    3100:	00060913          	mv	s2,a2
    3104:	00068993          	mv	s3,a3
    3108:	06079c63          	bnez	a5,3180 <fatfs_sector_reader+0xac>
    310c:	01052783          	lw	a5,16(a0)
    3110:	02f66663          	bltu	a2,a5,313c <fatfs_sector_reader+0x68>
    3114:	00000513          	li	a0,0
    3118:	02c12083          	lw	ra,44(sp)
    311c:	02812403          	lw	s0,40(sp)
    3120:	02412483          	lw	s1,36(sp)
    3124:	02012903          	lw	s2,32(sp)
    3128:	01c12983          	lw	s3,28(sp)
    312c:	01812a03          	lw	s4,24(sp)
    3130:	01412a83          	lw	s5,20(sp)
    3134:	03010113          	addi	sp,sp,48
    3138:	00008067          	ret
    313c:	01c52503          	lw	a0,28(a0)
    3140:	00c42783          	lw	a5,12(s0)
    3144:	00f50533          	add	a0,a0,a5
    3148:	01250533          	add	a0,a0,s2
    314c:	0a098263          	beqz	s3,31f0 <fatfs_sector_reader+0x11c>
    3150:	03442783          	lw	a5,52(s0)
    3154:	00100613          	li	a2,1
    3158:	00098593          	mv	a1,s3
    315c:	02812403          	lw	s0,40(sp)
    3160:	02c12083          	lw	ra,44(sp)
    3164:	02412483          	lw	s1,36(sp)
    3168:	02012903          	lw	s2,32(sp)
    316c:	01c12983          	lw	s3,28(sp)
    3170:	01812a03          	lw	s4,24(sp)
    3174:	01412a83          	lw	s5,20(sp)
    3178:	03010113          	addi	sp,sp,48
    317c:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    3180:	00058493          	mv	s1,a1
    3184:	00054583          	lbu	a1,0(a0)
    3188:	00060513          	mv	a0,a2
    318c:	00000a93          	li	s5,0
    3190:	00b12623          	sw	a1,12(sp)
    3194:	ffffe097          	auipc	ra,0xffffe
    3198:	198080e7          	jalr	408(ra) # 132c <__udivsi3>
    319c:	00c12583          	lw	a1,12(sp)
    31a0:	00050a13          	mv	s4,a0
    31a4:	00090513          	mv	a0,s2
    31a8:	ffffe097          	auipc	ra,0xffffe
    31ac:	1cc080e7          	jalr	460(ra) # 1374 <__umodsi3>
    31b0:	00050913          	mv	s2,a0
    31b4:	034a9063          	bne	s5,s4,31d4 <fatfs_sector_reader+0x100>
    31b8:	fff00793          	li	a5,-1
    31bc:	f4f48ce3          	beq	s1,a5,3114 <fatfs_sector_reader+0x40>
    31c0:	00048593          	mv	a1,s1
    31c4:	00040513          	mv	a0,s0
    31c8:	fffff097          	auipc	ra,0xfffff
    31cc:	d40080e7          	jalr	-704(ra) # 1f08 <fatfs_lba_of_cluster>
    31d0:	f79ff06f          	j	3148 <fatfs_sector_reader+0x74>
    31d4:	00048593          	mv	a1,s1
    31d8:	00040513          	mv	a0,s0
    31dc:	00000097          	auipc	ra,0x0
    31e0:	de8080e7          	jalr	-536(ra) # 2fc4 <fatfs_find_next_cluster>
    31e4:	00050493          	mv	s1,a0
    31e8:	001a8a93          	addi	s5,s5,1
    31ec:	fc9ff06f          	j	31b4 <fatfs_sector_reader+0xe0>
    31f0:	24442783          	lw	a5,580(s0)
    31f4:	00a78c63          	beq	a5,a0,320c <fatfs_sector_reader+0x138>
    31f8:	03442783          	lw	a5,52(s0)
    31fc:	24a42223          	sw	a0,580(s0)
    3200:	00100613          	li	a2,1
    3204:	04440593          	addi	a1,s0,68
    3208:	f55ff06f          	j	315c <fatfs_sector_reader+0x88>
    320c:	00100513          	li	a0,1
    3210:	f09ff06f          	j	3118 <fatfs_sector_reader+0x44>

00003214 <fatfs_get_file_entry>:
    3214:	eb010113          	addi	sp,sp,-336
    3218:	14812423          	sw	s0,328(sp)
    321c:	01810413          	addi	s0,sp,24
    3220:	14912223          	sw	s1,324(sp)
    3224:	15212023          	sw	s2,320(sp)
    3228:	13312e23          	sw	s3,316(sp)
    322c:	13412c23          	sw	s4,312(sp)
    3230:	13512a23          	sw	s5,308(sp)
    3234:	13612823          	sw	s6,304(sp)
    3238:	14112623          	sw	ra,332(sp)
    323c:	13712623          	sw	s7,300(sp)
    3240:	13812423          	sw	s8,296(sp)
    3244:	13912223          	sw	s9,292(sp)
    3248:	13a12023          	sw	s10,288(sp)
    324c:	00050493          	mv	s1,a0
    3250:	00058a93          	mv	s5,a1
    3254:	00060913          	mv	s2,a2
    3258:	00068993          	mv	s3,a3
    325c:	10010ea3          	sb	zero,285(sp)
    3260:	11c10a13          	addi	s4,sp,284
    3264:	00040b13          	mv	s6,s0
    3268:	00040513          	mv	a0,s0
    326c:	00d00613          	li	a2,13
    3270:	00000593          	li	a1,0
    3274:	00d40413          	addi	s0,s0,13
    3278:	ffffe097          	auipc	ra,0xffffe
    327c:	160080e7          	jalr	352(ra) # 13d8 <memset>
    3280:	ff4414e3          	bne	s0,s4,3268 <fatfs_get_file_entry+0x54>
    3284:	00000a13          	li	s4,0
    3288:	24448c13          	addi	s8,s1,580
    328c:	00800c93          	li	s9,8
    3290:	02000b93          	li	s7,32
    3294:	02e00d13          	li	s10,46
    3298:	00000693          	li	a3,0
    329c:	000a0613          	mv	a2,s4
    32a0:	000a8593          	mv	a1,s5
    32a4:	00048513          	mv	a0,s1
    32a8:	00000097          	auipc	ra,0x0
    32ac:	e2c080e7          	jalr	-468(ra) # 30d4 <fatfs_sector_reader>
    32b0:	16050463          	beqz	a0,3418 <fatfs_get_file_entry+0x204>
    32b4:	04448413          	addi	s0,s1,68
    32b8:	00040513          	mv	a0,s0
    32bc:	fffff097          	auipc	ra,0xfffff
    32c0:	f08080e7          	jalr	-248(ra) # 21c4 <fatfs_entry_lfn_text>
    32c4:	02050263          	beqz	a0,32e8 <fatfs_get_file_entry+0xd4>
    32c8:	00040593          	mv	a1,s0
    32cc:	000b0513          	mv	a0,s6
    32d0:	fffff097          	auipc	ra,0xfffff
    32d4:	dec080e7          	jalr	-532(ra) # 20bc <fatfs_lfn_cache_entry>
    32d8:	02040413          	addi	s0,s0,32
    32dc:	fd841ee3          	bne	s0,s8,32b8 <fatfs_get_file_entry+0xa4>
    32e0:	001a0a13          	addi	s4,s4,1
    32e4:	fb5ff06f          	j	3298 <fatfs_get_file_entry+0x84>
    32e8:	00040513          	mv	a0,s0
    32ec:	fffff097          	auipc	ra,0xfffff
    32f0:	eec080e7          	jalr	-276(ra) # 21d8 <fatfs_entry_lfn_invalid>
    32f4:	00050663          	beqz	a0,3300 <fatfs_get_file_entry+0xec>
    32f8:	10010ea3          	sb	zero,285(sp)
    32fc:	fddff06f          	j	32d8 <fatfs_get_file_entry+0xc4>
    3300:	00040593          	mv	a1,s0
    3304:	000b0513          	mv	a0,s6
    3308:	fffff097          	auipc	ra,0xfffff
    330c:	f08080e7          	jalr	-248(ra) # 2210 <fatfs_entry_lfn_exists>
    3310:	06050863          	beqz	a0,3380 <fatfs_get_file_entry+0x16c>
    3314:	000b0513          	mv	a0,s6
    3318:	fffff097          	auipc	ra,0xfffff
    331c:	e70080e7          	jalr	-400(ra) # 2188 <fatfs_lfn_cache_get>
    3320:	00090593          	mv	a1,s2
    3324:	fffff097          	auipc	ra,0xfffff
    3328:	6d4080e7          	jalr	1748(ra) # 29f8 <fatfs_compare_names>
    332c:	fc0506e3          	beqz	a0,32f8 <fatfs_get_file_entry+0xe4>
    3330:	02000613          	li	a2,32
    3334:	00040593          	mv	a1,s0
    3338:	00098513          	mv	a0,s3
    333c:	ffffe097          	auipc	ra,0xffffe
    3340:	0b8080e7          	jalr	184(ra) # 13f4 <memcpy>
    3344:	00100513          	li	a0,1
    3348:	14c12083          	lw	ra,332(sp)
    334c:	14812403          	lw	s0,328(sp)
    3350:	14412483          	lw	s1,324(sp)
    3354:	14012903          	lw	s2,320(sp)
    3358:	13c12983          	lw	s3,316(sp)
    335c:	13812a03          	lw	s4,312(sp)
    3360:	13412a83          	lw	s5,308(sp)
    3364:	13012b03          	lw	s6,304(sp)
    3368:	12c12b83          	lw	s7,300(sp)
    336c:	12812c03          	lw	s8,296(sp)
    3370:	12412c83          	lw	s9,292(sp)
    3374:	12012d03          	lw	s10,288(sp)
    3378:	15010113          	addi	sp,sp,336
    337c:	00008067          	ret
    3380:	00040513          	mv	a0,s0
    3384:	fffff097          	auipc	ra,0xfffff
    3388:	ed4080e7          	jalr	-300(ra) # 2258 <fatfs_entry_sfn_only>
    338c:	f40506e3          	beqz	a0,32d8 <fatfs_get_file_entry+0xc4>
    3390:	00d00613          	li	a2,13
    3394:	00000593          	li	a1,0
    3398:	00810513          	addi	a0,sp,8
    339c:	ffffe097          	auipc	ra,0xffffe
    33a0:	03c080e7          	jalr	60(ra) # 13d8 <memset>
    33a4:	00000793          	li	a5,0
    33a8:	00f406b3          	add	a3,s0,a5
    33ac:	0006c683          	lbu	a3,0(a3)
    33b0:	00810713          	addi	a4,sp,8
    33b4:	00f70733          	add	a4,a4,a5
    33b8:	00d70023          	sb	a3,0(a4)
    33bc:	00178793          	addi	a5,a5,1
    33c0:	ff9794e3          	bne	a5,s9,33a8 <fatfs_get_file_entry+0x194>
    33c4:	00844783          	lbu	a5,8(s0)
    33c8:	00944683          	lbu	a3,9(s0)
    33cc:	00100713          	li	a4,1
    33d0:	00f108a3          	sb	a5,17(sp)
    33d4:	00d10923          	sb	a3,18(sp)
    33d8:	01769663          	bne	a3,s7,33e4 <fatfs_get_file_entry+0x1d0>
    33dc:	fe078793          	addi	a5,a5,-32
    33e0:	00f03733          	snez	a4,a5
    33e4:	00a44783          	lbu	a5,10(s0)
    33e8:	00f109a3          	sb	a5,19(sp)
    33ec:	01779663          	bne	a5,s7,33f8 <fatfs_get_file_entry+0x1e4>
    33f0:	02000793          	li	a5,32
    33f4:	00070a63          	beqz	a4,3408 <fatfs_get_file_entry+0x1f4>
    33f8:	00814703          	lbu	a4,8(sp)
    33fc:	02e00793          	li	a5,46
    3400:	01a71463          	bne	a4,s10,3408 <fatfs_get_file_entry+0x1f4>
    3404:	02000793          	li	a5,32
    3408:	00f10823          	sb	a5,16(sp)
    340c:	00090593          	mv	a1,s2
    3410:	00810513          	addi	a0,sp,8
    3414:	f11ff06f          	j	3324 <fatfs_get_file_entry+0x110>
    3418:	00000513          	li	a0,0
    341c:	f2dff06f          	j	3348 <fatfs_get_file_entry+0x134>

00003420 <_open_directory>:
    3420:	eb010113          	addi	sp,sp,-336
    3424:	13512a23          	sw	s5,308(sp)
    3428:	0000eab7          	lui	s5,0xe
    342c:	aa0a8793          	addi	a5,s5,-1376 # daa0 <_fs>
    3430:	14812423          	sw	s0,328(sp)
    3434:	14912223          	sw	s1,324(sp)
    3438:	15212023          	sw	s2,320(sp)
    343c:	13312e23          	sw	s3,316(sp)
    3440:	13412c23          	sw	s4,312(sp)
    3444:	13612823          	sw	s6,304(sp)
    3448:	0087a403          	lw	s0,8(a5)
    344c:	14112623          	sw	ra,332(sp)
    3450:	00050a13          	mv	s4,a0
    3454:	00058913          	mv	s2,a1
    3458:	fffff097          	auipc	ra,0xfffff
    345c:	350080e7          	jalr	848(ra) # 27a8 <fatfs_total_path_levels>
    3460:	00050993          	mv	s3,a0
    3464:	00000493          	li	s1,0
    3468:	fff00b13          	li	s6,-1
    346c:	0099d863          	bge	s3,s1,347c <_open_directory+0x5c>
    3470:	00892023          	sw	s0,0(s2)
    3474:	00100513          	li	a0,1
    3478:	0240006f          	j	349c <_open_directory+0x7c>
    347c:	10400693          	li	a3,260
    3480:	02c10613          	addi	a2,sp,44
    3484:	00048593          	mv	a1,s1
    3488:	000a0513          	mv	a0,s4
    348c:	fffff097          	auipc	ra,0xfffff
    3490:	390080e7          	jalr	912(ra) # 281c <fatfs_get_substring>
    3494:	03651863          	bne	a0,s6,34c4 <_open_directory+0xa4>
    3498:	00000513          	li	a0,0
    349c:	14c12083          	lw	ra,332(sp)
    34a0:	14812403          	lw	s0,328(sp)
    34a4:	14412483          	lw	s1,324(sp)
    34a8:	14012903          	lw	s2,320(sp)
    34ac:	13c12983          	lw	s3,316(sp)
    34b0:	13812a03          	lw	s4,312(sp)
    34b4:	13412a83          	lw	s5,308(sp)
    34b8:	13012b03          	lw	s6,304(sp)
    34bc:	15010113          	addi	sp,sp,336
    34c0:	00008067          	ret
    34c4:	00c10693          	addi	a3,sp,12
    34c8:	02c10613          	addi	a2,sp,44
    34cc:	00040593          	mv	a1,s0
    34d0:	aa0a8513          	addi	a0,s5,-1376
    34d4:	00000097          	auipc	ra,0x0
    34d8:	d40080e7          	jalr	-704(ra) # 3214 <fatfs_get_file_entry>
    34dc:	fa050ee3          	beqz	a0,3498 <_open_directory+0x78>
    34e0:	00c10513          	addi	a0,sp,12
    34e4:	fffff097          	auipc	ra,0xfffff
    34e8:	db0080e7          	jalr	-592(ra) # 2294 <fatfs_entry_is_dir>
    34ec:	fa0506e3          	beqz	a0,3498 <_open_directory+0x78>
    34f0:	02015403          	lhu	s0,32(sp)
    34f4:	02615783          	lhu	a5,38(sp)
    34f8:	00148493          	addi	s1,s1,1
    34fc:	01041413          	slli	s0,s0,0x10
    3500:	00f40433          	add	s0,s0,a5
    3504:	f69ff06f          	j	346c <_open_directory+0x4c>

00003508 <fl_opendir>:
    3508:	fe010113          	addi	sp,sp,-32
    350c:	fff00793          	li	a5,-1
    3510:	00f12623          	sw	a5,12(sp)
    3514:	000057b7          	lui	a5,0x5
    3518:	29c7a783          	lw	a5,668(a5) # 529c <_filelib_init>
    351c:	00812c23          	sw	s0,24(sp)
    3520:	01212823          	sw	s2,16(sp)
    3524:	00112e23          	sw	ra,28(sp)
    3528:	00912a23          	sw	s1,20(sp)
    352c:	00050913          	mv	s2,a0
    3530:	00058413          	mv	s0,a1
    3534:	00079663          	bnez	a5,3540 <fl_opendir+0x38>
    3538:	fffff097          	auipc	ra,0xfffff
    353c:	b0c080e7          	jalr	-1268(ra) # 2044 <fl_init>
    3540:	0000e4b7          	lui	s1,0xe
    3544:	aa048793          	addi	a5,s1,-1376 # daa0 <_fs>
    3548:	03c7a783          	lw	a5,60(a5)
    354c:	aa048493          	addi	s1,s1,-1376
    3550:	00078463          	beqz	a5,3558 <fl_opendir+0x50>
    3554:	000780e7          	jalr	a5
    3558:	00090513          	mv	a0,s2
    355c:	fffff097          	auipc	ra,0xfffff
    3560:	24c080e7          	jalr	588(ra) # 27a8 <fatfs_total_path_levels>
    3564:	fff00793          	li	a5,-1
    3568:	02f51063          	bne	a0,a5,3588 <fl_opendir+0x80>
    356c:	0084a783          	lw	a5,8(s1)
    3570:	00f12623          	sw	a5,12(sp)
    3574:	00c12783          	lw	a5,12(sp)
    3578:	00042023          	sw	zero,0(s0)
    357c:	00040423          	sb	zero,8(s0)
    3580:	00f42223          	sw	a5,4(s0)
    3584:	0180006f          	j	359c <fl_opendir+0x94>
    3588:	00c10593          	addi	a1,sp,12
    358c:	00090513          	mv	a0,s2
    3590:	00000097          	auipc	ra,0x0
    3594:	e90080e7          	jalr	-368(ra) # 3420 <_open_directory>
    3598:	fc051ee3          	bnez	a0,3574 <fl_opendir+0x6c>
    359c:	0404a783          	lw	a5,64(s1)
    35a0:	00078463          	beqz	a5,35a8 <fl_opendir+0xa0>
    35a4:	000780e7          	jalr	a5
    35a8:	00c12703          	lw	a4,12(sp)
    35ac:	fff00793          	li	a5,-1
    35b0:	00f71463          	bne	a4,a5,35b8 <fl_opendir+0xb0>
    35b4:	00000413          	li	s0,0
    35b8:	01c12083          	lw	ra,28(sp)
    35bc:	00040513          	mv	a0,s0
    35c0:	01812403          	lw	s0,24(sp)
    35c4:	01412483          	lw	s1,20(sp)
    35c8:	01012903          	lw	s2,16(sp)
    35cc:	02010113          	addi	sp,sp,32
    35d0:	00008067          	ret

000035d4 <_open_file>:
    35d4:	fc010113          	addi	sp,sp,-64
    35d8:	03312623          	sw	s3,44(sp)
    35dc:	02112e23          	sw	ra,60(sp)
    35e0:	02812c23          	sw	s0,56(sp)
    35e4:	02912a23          	sw	s1,52(sp)
    35e8:	03212823          	sw	s2,48(sp)
    35ec:	00050993          	mv	s3,a0
    35f0:	fffff097          	auipc	ra,0xfffff
    35f4:	85c080e7          	jalr	-1956(ra) # 1e4c <_allocate_file>
    35f8:	06050463          	beqz	a0,3660 <_open_file+0x8c>
    35fc:	01450913          	addi	s2,a0,20
    3600:	00050413          	mv	s0,a0
    3604:	10400613          	li	a2,260
    3608:	00000593          	li	a1,0
    360c:	00090513          	mv	a0,s2
    3610:	ffffe097          	auipc	ra,0xffffe
    3614:	dc8080e7          	jalr	-568(ra) # 13d8 <memset>
    3618:	11840493          	addi	s1,s0,280
    361c:	10400613          	li	a2,260
    3620:	00000593          	li	a1,0
    3624:	00048513          	mv	a0,s1
    3628:	ffffe097          	auipc	ra,0xffffe
    362c:	db0080e7          	jalr	-592(ra) # 13d8 <memset>
    3630:	10400713          	li	a4,260
    3634:	00048693          	mv	a3,s1
    3638:	10400613          	li	a2,260
    363c:	00090593          	mv	a1,s2
    3640:	00098513          	mv	a0,s3
    3644:	fffff097          	auipc	ra,0xfffff
    3648:	2cc080e7          	jalr	716(ra) # 2910 <fatfs_split_path>
    364c:	fff00793          	li	a5,-1
    3650:	02f51a63          	bne	a0,a5,3684 <_open_file+0xb0>
    3654:	00040513          	mv	a0,s0
    3658:	fffff097          	auipc	ra,0xfffff
    365c:	868080e7          	jalr	-1944(ra) # 1ec0 <_free_file>
    3660:	00000413          	li	s0,0
    3664:	03c12083          	lw	ra,60(sp)
    3668:	00040513          	mv	a0,s0
    366c:	03812403          	lw	s0,56(sp)
    3670:	03412483          	lw	s1,52(sp)
    3674:	03012903          	lw	s2,48(sp)
    3678:	02c12983          	lw	s3,44(sp)
    367c:	04010113          	addi	sp,sp,64
    3680:	00008067          	ret
    3684:	00040513          	mv	a0,s0
    3688:	fffff097          	auipc	ra,0xfffff
    368c:	4dc080e7          	jalr	1244(ra) # 2b64 <_check_file_open>
    3690:	fc0512e3          	bnez	a0,3654 <_open_file+0x80>
    3694:	01444783          	lbu	a5,20(s0)
    3698:	08079e63          	bnez	a5,3734 <_open_file+0x160>
    369c:	0000e7b7          	lui	a5,0xe
    36a0:	aa87a783          	lw	a5,-1368(a5) # daa8 <_fs+0x8>
    36a4:	00f42023          	sw	a5,0(s0)
    36a8:	00042583          	lw	a1,0(s0)
    36ac:	00048613          	mv	a2,s1
    36b0:	0000e4b7          	lui	s1,0xe
    36b4:	00010693          	mv	a3,sp
    36b8:	aa048513          	addi	a0,s1,-1376 # daa0 <_fs>
    36bc:	00000097          	auipc	ra,0x0
    36c0:	b58080e7          	jalr	-1192(ra) # 3214 <fatfs_get_file_entry>
    36c4:	f80508e3          	beqz	a0,3654 <_open_file+0x80>
    36c8:	00010513          	mv	a0,sp
    36cc:	fffff097          	auipc	ra,0xfffff
    36d0:	bd8080e7          	jalr	-1064(ra) # 22a4 <fatfs_entry_is_file>
    36d4:	f80500e3          	beqz	a0,3654 <_open_file+0x80>
    36d8:	00b00613          	li	a2,11
    36dc:	00010593          	mv	a1,sp
    36e0:	21c40513          	addi	a0,s0,540
    36e4:	ffffe097          	auipc	ra,0xffffe
    36e8:	d10080e7          	jalr	-752(ra) # 13f4 <memcpy>
    36ec:	01c12783          	lw	a5,28(sp)
    36f0:	01a15703          	lhu	a4,26(sp)
    36f4:	00042423          	sw	zero,8(s0)
    36f8:	00f42623          	sw	a5,12(s0)
    36fc:	01415783          	lhu	a5,20(sp)
    3700:	42042a23          	sw	zero,1076(s0)
    3704:	00042823          	sw	zero,16(s0)
    3708:	01079793          	slli	a5,a5,0x10
    370c:	00e787b3          	add	a5,a5,a4
    3710:	00f42223          	sw	a5,4(s0)
    3714:	fff00793          	li	a5,-1
    3718:	42f42823          	sw	a5,1072(s0)
    371c:	22f42423          	sw	a5,552(s0)
    3720:	22f42623          	sw	a5,556(s0)
    3724:	aa048513          	addi	a0,s1,-1376
    3728:	00000097          	auipc	ra,0x0
    372c:	840080e7          	jalr	-1984(ra) # 2f68 <fatfs_fat_purge>
    3730:	f35ff06f          	j	3664 <_open_file+0x90>
    3734:	00040593          	mv	a1,s0
    3738:	00090513          	mv	a0,s2
    373c:	00000097          	auipc	ra,0x0
    3740:	ce4080e7          	jalr	-796(ra) # 3420 <_open_directory>
    3744:	f60512e3          	bnez	a0,36a8 <_open_file+0xd4>
    3748:	f0dff06f          	j	3654 <_open_file+0x80>

0000374c <fatfs_sfn_exists>:
    374c:	fe010113          	addi	sp,sp,-32
    3750:	00912a23          	sw	s1,20(sp)
    3754:	01212823          	sw	s2,16(sp)
    3758:	01312623          	sw	s3,12(sp)
    375c:	01412423          	sw	s4,8(sp)
    3760:	01512223          	sw	s5,4(sp)
    3764:	00112e23          	sw	ra,28(sp)
    3768:	00812c23          	sw	s0,24(sp)
    376c:	00050493          	mv	s1,a0
    3770:	00058993          	mv	s3,a1
    3774:	00060a13          	mv	s4,a2
    3778:	00000913          	li	s2,0
    377c:	24450a93          	addi	s5,a0,580
    3780:	00000693          	li	a3,0
    3784:	00090613          	mv	a2,s2
    3788:	00098593          	mv	a1,s3
    378c:	00048513          	mv	a0,s1
    3790:	00000097          	auipc	ra,0x0
    3794:	944080e7          	jalr	-1724(ra) # 30d4 <fatfs_sector_reader>
    3798:	06050263          	beqz	a0,37fc <fatfs_sfn_exists+0xb0>
    379c:	04448413          	addi	s0,s1,68
    37a0:	00040513          	mv	a0,s0
    37a4:	fffff097          	auipc	ra,0xfffff
    37a8:	a20080e7          	jalr	-1504(ra) # 21c4 <fatfs_entry_lfn_text>
    37ac:	02051e63          	bnez	a0,37e8 <fatfs_sfn_exists+0x9c>
    37b0:	00040513          	mv	a0,s0
    37b4:	fffff097          	auipc	ra,0xfffff
    37b8:	a24080e7          	jalr	-1500(ra) # 21d8 <fatfs_entry_lfn_invalid>
    37bc:	02051663          	bnez	a0,37e8 <fatfs_sfn_exists+0x9c>
    37c0:	00040513          	mv	a0,s0
    37c4:	fffff097          	auipc	ra,0xfffff
    37c8:	a94080e7          	jalr	-1388(ra) # 2258 <fatfs_entry_sfn_only>
    37cc:	00050e63          	beqz	a0,37e8 <fatfs_sfn_exists+0x9c>
    37d0:	00b00613          	li	a2,11
    37d4:	000a0593          	mv	a1,s4
    37d8:	00040513          	mv	a0,s0
    37dc:	ffffe097          	auipc	ra,0xffffe
    37e0:	c5c080e7          	jalr	-932(ra) # 1438 <strncmp>
    37e4:	00050a63          	beqz	a0,37f8 <fatfs_sfn_exists+0xac>
    37e8:	02040413          	addi	s0,s0,32
    37ec:	fb541ae3          	bne	s0,s5,37a0 <fatfs_sfn_exists+0x54>
    37f0:	00190913          	addi	s2,s2,1
    37f4:	f8dff06f          	j	3780 <fatfs_sfn_exists+0x34>
    37f8:	00100513          	li	a0,1
    37fc:	01c12083          	lw	ra,28(sp)
    3800:	01812403          	lw	s0,24(sp)
    3804:	01412483          	lw	s1,20(sp)
    3808:	01012903          	lw	s2,16(sp)
    380c:	00c12983          	lw	s3,12(sp)
    3810:	00812a03          	lw	s4,8(sp)
    3814:	00412a83          	lw	s5,4(sp)
    3818:	02010113          	addi	sp,sp,32
    381c:	00008067          	ret

00003820 <fatfs_update_file_length>:
    3820:	03852783          	lw	a5,56(a0)
    3824:	14078e63          	beqz	a5,3980 <fatfs_update_file_length+0x160>
    3828:	fd010113          	addi	sp,sp,-48
    382c:	02912223          	sw	s1,36(sp)
    3830:	03212023          	sw	s2,32(sp)
    3834:	01312e23          	sw	s3,28(sp)
    3838:	01412c23          	sw	s4,24(sp)
    383c:	01512a23          	sw	s5,20(sp)
    3840:	01612823          	sw	s6,16(sp)
    3844:	01712623          	sw	s7,12(sp)
    3848:	02112623          	sw	ra,44(sp)
    384c:	02812423          	sw	s0,40(sp)
    3850:	00050493          	mv	s1,a0
    3854:	00058a13          	mv	s4,a1
    3858:	00060a93          	mv	s5,a2
    385c:	00068913          	mv	s2,a3
    3860:	00000993          	li	s3,0
    3864:	04450b93          	addi	s7,a0,68
    3868:	24450b13          	addi	s6,a0,580
    386c:	00000693          	li	a3,0
    3870:	00098613          	mv	a2,s3
    3874:	000a0593          	mv	a1,s4
    3878:	00048513          	mv	a0,s1
    387c:	00000097          	auipc	ra,0x0
    3880:	858080e7          	jalr	-1960(ra) # 30d4 <fatfs_sector_reader>
    3884:	0c050663          	beqz	a0,3950 <fatfs_update_file_length+0x130>
    3888:	000b8413          	mv	s0,s7
    388c:	00040513          	mv	a0,s0
    3890:	fffff097          	auipc	ra,0xfffff
    3894:	934080e7          	jalr	-1740(ra) # 21c4 <fatfs_entry_lfn_text>
    3898:	0a051463          	bnez	a0,3940 <fatfs_update_file_length+0x120>
    389c:	00040513          	mv	a0,s0
    38a0:	fffff097          	auipc	ra,0xfffff
    38a4:	938080e7          	jalr	-1736(ra) # 21d8 <fatfs_entry_lfn_invalid>
    38a8:	08051c63          	bnez	a0,3940 <fatfs_update_file_length+0x120>
    38ac:	00040513          	mv	a0,s0
    38b0:	fffff097          	auipc	ra,0xfffff
    38b4:	9a8080e7          	jalr	-1624(ra) # 2258 <fatfs_entry_sfn_only>
    38b8:	08050463          	beqz	a0,3940 <fatfs_update_file_length+0x120>
    38bc:	00b00613          	li	a2,11
    38c0:	000a8593          	mv	a1,s5
    38c4:	00040513          	mv	a0,s0
    38c8:	ffffe097          	auipc	ra,0xffffe
    38cc:	b70080e7          	jalr	-1168(ra) # 1438 <strncmp>
    38d0:	06051863          	bnez	a0,3940 <fatfs_update_file_length+0x120>
    38d4:	00895793          	srli	a5,s2,0x8
    38d8:	01240e23          	sb	s2,28(s0)
    38dc:	00f40ea3          	sb	a5,29(s0)
    38e0:	01095793          	srli	a5,s2,0x10
    38e4:	01895913          	srli	s2,s2,0x18
    38e8:	00f40f23          	sb	a5,30(s0)
    38ec:	01240fa3          	sb	s2,31(s0)
    38f0:	00040593          	mv	a1,s0
    38f4:	02000613          	li	a2,32
    38f8:	00040513          	mv	a0,s0
    38fc:	ffffe097          	auipc	ra,0xffffe
    3900:	af8080e7          	jalr	-1288(ra) # 13f4 <memcpy>
    3904:	02812403          	lw	s0,40(sp)
    3908:	0384a783          	lw	a5,56(s1)
    390c:	2444a503          	lw	a0,580(s1)
    3910:	02c12083          	lw	ra,44(sp)
    3914:	02412483          	lw	s1,36(sp)
    3918:	02012903          	lw	s2,32(sp)
    391c:	01c12983          	lw	s3,28(sp)
    3920:	01812a03          	lw	s4,24(sp)
    3924:	01412a83          	lw	s5,20(sp)
    3928:	01012b03          	lw	s6,16(sp)
    392c:	000b8593          	mv	a1,s7
    3930:	00c12b83          	lw	s7,12(sp)
    3934:	00100613          	li	a2,1
    3938:	03010113          	addi	sp,sp,48
    393c:	00078067          	jr	a5
    3940:	02040413          	addi	s0,s0,32
    3944:	f56414e3          	bne	s0,s6,388c <fatfs_update_file_length+0x6c>
    3948:	00198993          	addi	s3,s3,1
    394c:	f21ff06f          	j	386c <fatfs_update_file_length+0x4c>
    3950:	02c12083          	lw	ra,44(sp)
    3954:	02812403          	lw	s0,40(sp)
    3958:	02412483          	lw	s1,36(sp)
    395c:	02012903          	lw	s2,32(sp)
    3960:	01c12983          	lw	s3,28(sp)
    3964:	01812a03          	lw	s4,24(sp)
    3968:	01412a83          	lw	s5,20(sp)
    396c:	01012b03          	lw	s6,16(sp)
    3970:	00c12b83          	lw	s7,12(sp)
    3974:	00000513          	li	a0,0
    3978:	03010113          	addi	sp,sp,48
    397c:	00008067          	ret
    3980:	00000513          	li	a0,0
    3984:	00008067          	ret

00003988 <fatfs_list_directory_next>:
    3988:	ec010113          	addi	sp,sp,-320
    398c:	13212823          	sw	s2,304(sp)
    3990:	13312623          	sw	s3,300(sp)
    3994:	13412423          	sw	s4,296(sp)
    3998:	13512223          	sw	s5,292(sp)
    399c:	12112e23          	sw	ra,316(sp)
    39a0:	12812c23          	sw	s0,312(sp)
    39a4:	12912a23          	sw	s1,308(sp)
    39a8:	00050a13          	mv	s4,a0
    39ac:	00058913          	mv	s2,a1
    39b0:	00060993          	mv	s3,a2
    39b4:	10010ea3          	sb	zero,285(sp)
    39b8:	00f00a93          	li	s5,15
    39bc:	00092603          	lw	a2,0(s2)
    39c0:	00492583          	lw	a1,4(s2)
    39c4:	00000693          	li	a3,0
    39c8:	000a0513          	mv	a0,s4
    39cc:	fffff097          	auipc	ra,0xfffff
    39d0:	708080e7          	jalr	1800(ra) # 30d4 <fatfs_sector_reader>
    39d4:	12050263          	beqz	a0,3af8 <fatfs_list_directory_next+0x170>
    39d8:	00894483          	lbu	s1,8(s2)
    39dc:	00549413          	slli	s0,s1,0x5
    39e0:	04440413          	addi	s0,s0,68
    39e4:	008a0433          	add	s0,s4,s0
    39e8:	009afc63          	bgeu	s5,s1,3a00 <fatfs_list_directory_next+0x78>
    39ec:	00092783          	lw	a5,0(s2)
    39f0:	00090423          	sb	zero,8(s2)
    39f4:	00178793          	addi	a5,a5,1
    39f8:	00f92023          	sw	a5,0(s2)
    39fc:	fc1ff06f          	j	39bc <fatfs_list_directory_next+0x34>
    3a00:	00040513          	mv	a0,s0
    3a04:	ffffe097          	auipc	ra,0xffffe
    3a08:	7c0080e7          	jalr	1984(ra) # 21c4 <fatfs_entry_lfn_text>
    3a0c:	02050263          	beqz	a0,3a30 <fatfs_list_directory_next+0xa8>
    3a10:	00040593          	mv	a1,s0
    3a14:	01810513          	addi	a0,sp,24
    3a18:	ffffe097          	auipc	ra,0xffffe
    3a1c:	6a4080e7          	jalr	1700(ra) # 20bc <fatfs_lfn_cache_entry>
    3a20:	00148493          	addi	s1,s1,1
    3a24:	0ff4f493          	zext.b	s1,s1
    3a28:	02040413          	addi	s0,s0,32
    3a2c:	fbdff06f          	j	39e8 <fatfs_list_directory_next+0x60>
    3a30:	00040513          	mv	a0,s0
    3a34:	ffffe097          	auipc	ra,0xffffe
    3a38:	7a4080e7          	jalr	1956(ra) # 21d8 <fatfs_entry_lfn_invalid>
    3a3c:	00050663          	beqz	a0,3a48 <fatfs_list_directory_next+0xc0>
    3a40:	10010ea3          	sb	zero,285(sp)
    3a44:	fddff06f          	j	3a20 <fatfs_list_directory_next+0x98>
    3a48:	00040593          	mv	a1,s0
    3a4c:	01810513          	addi	a0,sp,24
    3a50:	ffffe097          	auipc	ra,0xffffe
    3a54:	7c0080e7          	jalr	1984(ra) # 2210 <fatfs_entry_lfn_exists>
    3a58:	0c050263          	beqz	a0,3b1c <fatfs_list_directory_next+0x194>
    3a5c:	01810513          	addi	a0,sp,24
    3a60:	ffffe097          	auipc	ra,0xffffe
    3a64:	728080e7          	jalr	1832(ra) # 2188 <fatfs_lfn_cache_get>
    3a68:	00050593          	mv	a1,a0
    3a6c:	10300613          	li	a2,259
    3a70:	00098513          	mv	a0,s3
    3a74:	ffffe097          	auipc	ra,0xffffe
    3a78:	a04080e7          	jalr	-1532(ra) # 1478 <strncpy>
    3a7c:	00040513          	mv	a0,s0
    3a80:	fffff097          	auipc	ra,0xfffff
    3a84:	814080e7          	jalr	-2028(ra) # 2294 <fatfs_entry_is_dir>
    3a88:	00a03533          	snez	a0,a0
    3a8c:	10a98223          	sb	a0,260(s3)
    3a90:	01d44783          	lbu	a5,29(s0)
    3a94:	01c44703          	lbu	a4,28(s0)
    3a98:	00148493          	addi	s1,s1,1
    3a9c:	00879793          	slli	a5,a5,0x8
    3aa0:	00e7e7b3          	or	a5,a5,a4
    3aa4:	01e44703          	lbu	a4,30(s0)
    3aa8:	0ff4f493          	zext.b	s1,s1
    3aac:	00100513          	li	a0,1
    3ab0:	01071713          	slli	a4,a4,0x10
    3ab4:	00f76733          	or	a4,a4,a5
    3ab8:	01f44783          	lbu	a5,31(s0)
    3abc:	01879793          	slli	a5,a5,0x18
    3ac0:	00e7e7b3          	or	a5,a5,a4
    3ac4:	10f9a623          	sw	a5,268(s3)
    3ac8:	01544783          	lbu	a5,21(s0)
    3acc:	01444703          	lbu	a4,20(s0)
    3ad0:	01a44683          	lbu	a3,26(s0)
    3ad4:	00879793          	slli	a5,a5,0x8
    3ad8:	00e7e7b3          	or	a5,a5,a4
    3adc:	01b44703          	lbu	a4,27(s0)
    3ae0:	01079793          	slli	a5,a5,0x10
    3ae4:	00871713          	slli	a4,a4,0x8
    3ae8:	00d76733          	or	a4,a4,a3
    3aec:	00e7e7b3          	or	a5,a5,a4
    3af0:	10f9a423          	sw	a5,264(s3)
    3af4:	00990423          	sb	s1,8(s2)
    3af8:	13c12083          	lw	ra,316(sp)
    3afc:	13812403          	lw	s0,312(sp)
    3b00:	13412483          	lw	s1,308(sp)
    3b04:	13012903          	lw	s2,304(sp)
    3b08:	12c12983          	lw	s3,300(sp)
    3b0c:	12812a03          	lw	s4,296(sp)
    3b10:	12412a83          	lw	s5,292(sp)
    3b14:	14010113          	addi	sp,sp,320
    3b18:	00008067          	ret
    3b1c:	00040513          	mv	a0,s0
    3b20:	ffffe097          	auipc	ra,0xffffe
    3b24:	738080e7          	jalr	1848(ra) # 2258 <fatfs_entry_sfn_only>
    3b28:	ee050ce3          	beqz	a0,3a20 <fatfs_list_directory_next+0x98>
    3b2c:	00d00613          	li	a2,13
    3b30:	00000593          	li	a1,0
    3b34:	00810513          	addi	a0,sp,8
    3b38:	10010ea3          	sb	zero,285(sp)
    3b3c:	ffffe097          	auipc	ra,0xffffe
    3b40:	89c080e7          	jalr	-1892(ra) # 13d8 <memset>
    3b44:	00000793          	li	a5,0
    3b48:	00800713          	li	a4,8
    3b4c:	00f40633          	add	a2,s0,a5
    3b50:	00064603          	lbu	a2,0(a2)
    3b54:	00810693          	addi	a3,sp,8
    3b58:	00f686b3          	add	a3,a3,a5
    3b5c:	00c68023          	sb	a2,0(a3)
    3b60:	00178793          	addi	a5,a5,1
    3b64:	fee794e3          	bne	a5,a4,3b4c <fatfs_list_directory_next+0x1c4>
    3b68:	00844783          	lbu	a5,8(s0)
    3b6c:	00944683          	lbu	a3,9(s0)
    3b70:	02000613          	li	a2,32
    3b74:	00f108a3          	sb	a5,17(sp)
    3b78:	00d10923          	sb	a3,18(sp)
    3b7c:	00100713          	li	a4,1
    3b80:	00c69663          	bne	a3,a2,3b8c <fatfs_list_directory_next+0x204>
    3b84:	fe078793          	addi	a5,a5,-32
    3b88:	00f03733          	snez	a4,a5
    3b8c:	00a44783          	lbu	a5,10(s0)
    3b90:	02000693          	li	a3,32
    3b94:	00f109a3          	sb	a5,19(sp)
    3b98:	00d79663          	bne	a5,a3,3ba4 <fatfs_list_directory_next+0x21c>
    3b9c:	02000793          	li	a5,32
    3ba0:	00070a63          	beqz	a4,3bb4 <fatfs_list_directory_next+0x22c>
    3ba4:	00814703          	lbu	a4,8(sp)
    3ba8:	02e00793          	li	a5,46
    3bac:	00f71463          	bne	a4,a5,3bb4 <fatfs_list_directory_next+0x22c>
    3bb0:	02000793          	li	a5,32
    3bb4:	00810593          	addi	a1,sp,8
    3bb8:	00098513          	mv	a0,s3
    3bbc:	00f10823          	sb	a5,16(sp)
    3bc0:	fffff097          	auipc	ra,0xfffff
    3bc4:	034080e7          	jalr	52(ra) # 2bf4 <fatfs_get_sfn_display_name>
    3bc8:	eb5ff06f          	j	3a7c <fatfs_list_directory_next+0xf4>

00003bcc <fl_readdir>:
    3bcc:	000057b7          	lui	a5,0x5
    3bd0:	29c7a783          	lw	a5,668(a5) # 529c <_filelib_init>
    3bd4:	fe010113          	addi	sp,sp,-32
    3bd8:	00912a23          	sw	s1,20(sp)
    3bdc:	01212823          	sw	s2,16(sp)
    3be0:	00112e23          	sw	ra,28(sp)
    3be4:	00812c23          	sw	s0,24(sp)
    3be8:	01312623          	sw	s3,12(sp)
    3bec:	00050493          	mv	s1,a0
    3bf0:	00058913          	mv	s2,a1
    3bf4:	00079663          	bnez	a5,3c00 <fl_readdir+0x34>
    3bf8:	ffffe097          	auipc	ra,0xffffe
    3bfc:	44c080e7          	jalr	1100(ra) # 2044 <fl_init>
    3c00:	0000e437          	lui	s0,0xe
    3c04:	aa040793          	addi	a5,s0,-1376 # daa0 <_fs>
    3c08:	03c7a783          	lw	a5,60(a5)
    3c0c:	aa040993          	addi	s3,s0,-1376
    3c10:	00078463          	beqz	a5,3c18 <fl_readdir+0x4c>
    3c14:	000780e7          	jalr	a5
    3c18:	aa040513          	addi	a0,s0,-1376
    3c1c:	00090613          	mv	a2,s2
    3c20:	00048593          	mv	a1,s1
    3c24:	00000097          	auipc	ra,0x0
    3c28:	d64080e7          	jalr	-668(ra) # 3988 <fatfs_list_directory_next>
    3c2c:	0409a783          	lw	a5,64(s3)
    3c30:	00050413          	mv	s0,a0
    3c34:	00078463          	beqz	a5,3c3c <fl_readdir+0x70>
    3c38:	000780e7          	jalr	a5
    3c3c:	01c12083          	lw	ra,28(sp)
    3c40:	00143513          	seqz	a0,s0
    3c44:	01812403          	lw	s0,24(sp)
    3c48:	01412483          	lw	s1,20(sp)
    3c4c:	01012903          	lw	s2,16(sp)
    3c50:	00c12983          	lw	s3,12(sp)
    3c54:	40a00533          	neg	a0,a0
    3c58:	02010113          	addi	sp,sp,32
    3c5c:	00008067          	ret

00003c60 <_read_sectors>:
    3c60:	fd010113          	addi	sp,sp,-48
    3c64:	01612823          	sw	s6,16(sp)
    3c68:	0000eb37          	lui	s6,0xe
    3c6c:	01512a23          	sw	s5,20(sp)
    3c70:	aa0b4a83          	lbu	s5,-1376(s6) # daa0 <_fs>
    3c74:	01412c23          	sw	s4,24(sp)
    3c78:	00058a13          	mv	s4,a1
    3c7c:	02912223          	sw	s1,36(sp)
    3c80:	000a8593          	mv	a1,s5
    3c84:	00050493          	mv	s1,a0
    3c88:	000a0513          	mv	a0,s4
    3c8c:	02112623          	sw	ra,44(sp)
    3c90:	02812423          	sw	s0,40(sp)
    3c94:	03212023          	sw	s2,32(sp)
    3c98:	00068413          	mv	s0,a3
    3c9c:	01712623          	sw	s7,12(sp)
    3ca0:	01812423          	sw	s8,8(sp)
    3ca4:	01312e23          	sw	s3,28(sp)
    3ca8:	00060c13          	mv	s8,a2
    3cac:	ffffd097          	auipc	ra,0xffffd
    3cb0:	680080e7          	jalr	1664(ra) # 132c <__udivsi3>
    3cb4:	00050913          	mv	s2,a0
    3cb8:	000a8593          	mv	a1,s5
    3cbc:	000a0513          	mv	a0,s4
    3cc0:	ffffd097          	auipc	ra,0xffffd
    3cc4:	6b4080e7          	jalr	1716(ra) # 1374 <__umodsi3>
    3cc8:	00a407b3          	add	a5,s0,a0
    3ccc:	00050b93          	mv	s7,a0
    3cd0:	00fafe63          	bgeu	s5,a5,3cec <_read_sectors+0x8c>
    3cd4:	00090593          	mv	a1,s2
    3cd8:	000a8513          	mv	a0,s5
    3cdc:	ffffe097          	auipc	ra,0xffffe
    3ce0:	ed0080e7          	jalr	-304(ra) # 1bac <__mulsi3>
    3ce4:	414a87b3          	sub	a5,s5,s4
    3ce8:	00f50433          	add	s0,a0,a5
    3cec:	2284a983          	lw	s3,552(s1)
    3cf0:	07299863          	bne	s3,s2,3d60 <_read_sectors+0x100>
    3cf4:	22c4a583          	lw	a1,556(s1)
    3cf8:	fff00793          	li	a5,-1
    3cfc:	02f58663          	beq	a1,a5,3d28 <_read_sectors+0xc8>
    3d00:	aa0b0513          	addi	a0,s6,-1376
    3d04:	ffffe097          	auipc	ra,0xffffe
    3d08:	204080e7          	jalr	516(ra) # 1f08 <fatfs_lba_of_cluster>
    3d0c:	017505b3          	add	a1,a0,s7
    3d10:	00040693          	mv	a3,s0
    3d14:	000c0613          	mv	a2,s8
    3d18:	aa0b0513          	addi	a0,s6,-1376
    3d1c:	ffffe097          	auipc	ra,0xffffe
    3d20:	23c080e7          	jalr	572(ra) # 1f58 <fatfs_sector_read>
    3d24:	00051463          	bnez	a0,3d2c <_read_sectors+0xcc>
    3d28:	00000413          	li	s0,0
    3d2c:	02c12083          	lw	ra,44(sp)
    3d30:	00040513          	mv	a0,s0
    3d34:	02812403          	lw	s0,40(sp)
    3d38:	02412483          	lw	s1,36(sp)
    3d3c:	02012903          	lw	s2,32(sp)
    3d40:	01c12983          	lw	s3,28(sp)
    3d44:	01812a03          	lw	s4,24(sp)
    3d48:	01412a83          	lw	s5,20(sp)
    3d4c:	01012b03          	lw	s6,16(sp)
    3d50:	00c12b83          	lw	s7,12(sp)
    3d54:	00812c03          	lw	s8,8(sp)
    3d58:	03010113          	addi	sp,sp,48
    3d5c:	00008067          	ret
    3d60:	035a6463          	bltu	s4,s5,3d88 <_read_sectors+0x128>
    3d64:	00198793          	addi	a5,s3,1
    3d68:	03279063          	bne	a5,s2,3d88 <_read_sectors+0x128>
    3d6c:	22c4a583          	lw	a1,556(s1)
    3d70:	0329e263          	bltu	s3,s2,3d94 <_read_sectors+0x134>
    3d74:	fff00793          	li	a5,-1
    3d78:	faf588e3          	beq	a1,a5,3d28 <_read_sectors+0xc8>
    3d7c:	22b4a623          	sw	a1,556(s1)
    3d80:	2324a423          	sw	s2,552(s1)
    3d84:	f7dff06f          	j	3d00 <_read_sectors+0xa0>
    3d88:	0044a583          	lw	a1,4(s1)
    3d8c:	00000993          	li	s3,0
    3d90:	fe1ff06f          	j	3d70 <_read_sectors+0x110>
    3d94:	aa0b0513          	addi	a0,s6,-1376
    3d98:	fffff097          	auipc	ra,0xfffff
    3d9c:	22c080e7          	jalr	556(ra) # 2fc4 <fatfs_find_next_cluster>
    3da0:	00050593          	mv	a1,a0
    3da4:	00198993          	addi	s3,s3,1
    3da8:	fc9ff06f          	j	3d70 <_read_sectors+0x110>

00003dac <fatfs_set_fs_info_next_free_cluster>:
    3dac:	03052783          	lw	a5,48(a0)
    3db0:	0a078863          	beqz	a5,3e60 <fatfs_set_fs_info_next_free_cluster+0xb4>
    3db4:	ff010113          	addi	sp,sp,-16
    3db8:	01c52783          	lw	a5,28(a0)
    3dbc:	01212023          	sw	s2,0(sp)
    3dc0:	00058913          	mv	s2,a1
    3dc4:	01855583          	lhu	a1,24(a0)
    3dc8:	00812423          	sw	s0,8(sp)
    3dcc:	00912223          	sw	s1,4(sp)
    3dd0:	00f585b3          	add	a1,a1,a5
    3dd4:	00112623          	sw	ra,12(sp)
    3dd8:	00050493          	mv	s1,a0
    3ddc:	ffffe097          	auipc	ra,0xffffe
    3de0:	f80080e7          	jalr	-128(ra) # 1d5c <fatfs_fat_read_sector>
    3de4:	00050413          	mv	s0,a0
    3de8:	06050063          	beqz	a0,3e48 <fatfs_set_fs_info_next_free_cluster+0x9c>
    3dec:	20852783          	lw	a5,520(a0)
    3df0:	00895713          	srli	a4,s2,0x8
    3df4:	1f278623          	sb	s2,492(a5)
    3df8:	20852783          	lw	a5,520(a0)
    3dfc:	1ee786a3          	sb	a4,493(a5)
    3e00:	20852783          	lw	a5,520(a0)
    3e04:	01095713          	srli	a4,s2,0x10
    3e08:	1ee78723          	sb	a4,494(a5)
    3e0c:	20852783          	lw	a5,520(a0)
    3e10:	01895713          	srli	a4,s2,0x18
    3e14:	1ee787a3          	sb	a4,495(a5)
    3e18:	00100793          	li	a5,1
    3e1c:	20f52223          	sw	a5,516(a0)
    3e20:	0384a783          	lw	a5,56(s1)
    3e24:	0324a223          	sw	s2,36(s1)
    3e28:	00078a63          	beqz	a5,3e3c <fatfs_set_fs_info_next_free_cluster+0x90>
    3e2c:	00050593          	mv	a1,a0
    3e30:	20052503          	lw	a0,512(a0)
    3e34:	00100613          	li	a2,1
    3e38:	000780e7          	jalr	a5
    3e3c:	fff00793          	li	a5,-1
    3e40:	20f42023          	sw	a5,512(s0)
    3e44:	20042223          	sw	zero,516(s0)
    3e48:	00c12083          	lw	ra,12(sp)
    3e4c:	00812403          	lw	s0,8(sp)
    3e50:	00412483          	lw	s1,4(sp)
    3e54:	00012903          	lw	s2,0(sp)
    3e58:	01010113          	addi	sp,sp,16
    3e5c:	00008067          	ret
    3e60:	00008067          	ret

00003e64 <fatfs_find_blank_cluster>:
    3e64:	fe010113          	addi	sp,sp,-32
    3e68:	01312623          	sw	s3,12(sp)
    3e6c:	01512223          	sw	s5,4(sp)
    3e70:	000109b7          	lui	s3,0x10
    3e74:	10000ab7          	lui	s5,0x10000
    3e78:	00912a23          	sw	s1,20(sp)
    3e7c:	01212823          	sw	s2,16(sp)
    3e80:	01412423          	sw	s4,8(sp)
    3e84:	00112e23          	sw	ra,28(sp)
    3e88:	00812c23          	sw	s0,24(sp)
    3e8c:	00050913          	mv	s2,a0
    3e90:	00058493          	mv	s1,a1
    3e94:	00060a13          	mv	s4,a2
    3e98:	fff98993          	addi	s3,s3,-1 # ffff <_files+0x20f7>
    3e9c:	fffa8a93          	addi	s5,s5,-1 # fffffff <__stacktop+0xffeffff>
    3ea0:	03092783          	lw	a5,48(s2)
    3ea4:	0074d413          	srli	s0,s1,0x7
    3ea8:	00079463          	bnez	a5,3eb0 <fatfs_find_blank_cluster+0x4c>
    3eac:	0084d413          	srli	s0,s1,0x8
    3eb0:	02092783          	lw	a5,32(s2)
    3eb4:	0cf47463          	bgeu	s0,a5,3f7c <fatfs_find_blank_cluster+0x118>
    3eb8:	01492583          	lw	a1,20(s2)
    3ebc:	00090513          	mv	a0,s2
    3ec0:	00b405b3          	add	a1,s0,a1
    3ec4:	ffffe097          	auipc	ra,0xffffe
    3ec8:	e98080e7          	jalr	-360(ra) # 1d5c <fatfs_fat_read_sector>
    3ecc:	0a050863          	beqz	a0,3f7c <fatfs_find_blank_cluster+0x118>
    3ed0:	03092783          	lw	a5,48(s2)
    3ed4:	20852703          	lw	a4,520(a0)
    3ed8:	04079c63          	bnez	a5,3f30 <fatfs_find_blank_cluster+0xcc>
    3edc:	00841413          	slli	s0,s0,0x8
    3ee0:	40848433          	sub	s0,s1,s0
    3ee4:	00141413          	slli	s0,s0,0x1
    3ee8:	01347433          	and	s0,s0,s3
    3eec:	00870733          	add	a4,a4,s0
    3ef0:	00174783          	lbu	a5,1(a4)
    3ef4:	00074703          	lbu	a4,0(a4)
    3ef8:	00879793          	slli	a5,a5,0x8
    3efc:	00e787b3          	add	a5,a5,a4
    3f00:	06079a63          	bnez	a5,3f74 <fatfs_find_blank_cluster+0x110>
    3f04:	009a2023          	sw	s1,0(s4)
    3f08:	00100513          	li	a0,1
    3f0c:	01c12083          	lw	ra,28(sp)
    3f10:	01812403          	lw	s0,24(sp)
    3f14:	01412483          	lw	s1,20(sp)
    3f18:	01012903          	lw	s2,16(sp)
    3f1c:	00c12983          	lw	s3,12(sp)
    3f20:	00812a03          	lw	s4,8(sp)
    3f24:	00412a83          	lw	s5,4(sp)
    3f28:	02010113          	addi	sp,sp,32
    3f2c:	00008067          	ret
    3f30:	00741413          	slli	s0,s0,0x7
    3f34:	40848433          	sub	s0,s1,s0
    3f38:	00241413          	slli	s0,s0,0x2
    3f3c:	01347433          	and	s0,s0,s3
    3f40:	00870733          	add	a4,a4,s0
    3f44:	00374783          	lbu	a5,3(a4)
    3f48:	00274683          	lbu	a3,2(a4)
    3f4c:	01879793          	slli	a5,a5,0x18
    3f50:	01069693          	slli	a3,a3,0x10
    3f54:	00d787b3          	add	a5,a5,a3
    3f58:	00074683          	lbu	a3,0(a4)
    3f5c:	00174703          	lbu	a4,1(a4)
    3f60:	00d787b3          	add	a5,a5,a3
    3f64:	00871713          	slli	a4,a4,0x8
    3f68:	00e787b3          	add	a5,a5,a4
    3f6c:	0157f7b3          	and	a5,a5,s5
    3f70:	f91ff06f          	j	3f00 <fatfs_find_blank_cluster+0x9c>
    3f74:	00148493          	addi	s1,s1,1
    3f78:	f29ff06f          	j	3ea0 <fatfs_find_blank_cluster+0x3c>
    3f7c:	00000513          	li	a0,0
    3f80:	f8dff06f          	j	3f0c <fatfs_find_blank_cluster+0xa8>

00003f84 <fatfs_fat_set_cluster>:
    3f84:	03052783          	lw	a5,48(a0)
    3f88:	fe010113          	addi	sp,sp,-32
    3f8c:	00812c23          	sw	s0,24(sp)
    3f90:	00912a23          	sw	s1,20(sp)
    3f94:	01212823          	sw	s2,16(sp)
    3f98:	01312623          	sw	s3,12(sp)
    3f9c:	00112e23          	sw	ra,28(sp)
    3fa0:	00050993          	mv	s3,a0
    3fa4:	00058413          	mv	s0,a1
    3fa8:	00060493          	mv	s1,a2
    3fac:	0085d913          	srli	s2,a1,0x8
    3fb0:	00078463          	beqz	a5,3fb8 <fatfs_fat_set_cluster+0x34>
    3fb4:	0075d913          	srli	s2,a1,0x7
    3fb8:	0149a583          	lw	a1,20(s3)
    3fbc:	00098513          	mv	a0,s3
    3fc0:	00b905b3          	add	a1,s2,a1
    3fc4:	ffffe097          	auipc	ra,0xffffe
    3fc8:	d98080e7          	jalr	-616(ra) # 1d5c <fatfs_fat_read_sector>
    3fcc:	00050693          	mv	a3,a0
    3fd0:	00000513          	li	a0,0
    3fd4:	04068c63          	beqz	a3,402c <fatfs_fat_set_cluster+0xa8>
    3fd8:	0309a703          	lw	a4,48(s3)
    3fdc:	2086a783          	lw	a5,520(a3)
    3fe0:	0ff4f613          	zext.b	a2,s1
    3fe4:	06071263          	bnez	a4,4048 <fatfs_fat_set_cluster+0xc4>
    3fe8:	00891913          	slli	s2,s2,0x8
    3fec:	41240433          	sub	s0,s0,s2
    3ff0:	00010737          	lui	a4,0x10
    3ff4:	00141413          	slli	s0,s0,0x1
    3ff8:	ffe70713          	addi	a4,a4,-2 # fffe <_files+0x20f6>
    3ffc:	00e47433          	and	s0,s0,a4
    4000:	008787b3          	add	a5,a5,s0
    4004:	00c78023          	sb	a2,0(a5)
    4008:	2086a783          	lw	a5,520(a3)
    400c:	01049493          	slli	s1,s1,0x10
    4010:	0104d493          	srli	s1,s1,0x10
    4014:	008787b3          	add	a5,a5,s0
    4018:	0084d493          	srli	s1,s1,0x8
    401c:	009780a3          	sb	s1,1(a5)
    4020:	00100793          	li	a5,1
    4024:	20f6a223          	sw	a5,516(a3)
    4028:	00100513          	li	a0,1
    402c:	01c12083          	lw	ra,28(sp)
    4030:	01812403          	lw	s0,24(sp)
    4034:	01412483          	lw	s1,20(sp)
    4038:	01012903          	lw	s2,16(sp)
    403c:	00c12983          	lw	s3,12(sp)
    4040:	02010113          	addi	sp,sp,32
    4044:	00008067          	ret
    4048:	00791913          	slli	s2,s2,0x7
    404c:	41240433          	sub	s0,s0,s2
    4050:	00010737          	lui	a4,0x10
    4054:	ffc70713          	addi	a4,a4,-4 # fffc <_files+0x20f4>
    4058:	00241413          	slli	s0,s0,0x2
    405c:	00e47433          	and	s0,s0,a4
    4060:	008787b3          	add	a5,a5,s0
    4064:	00c78023          	sb	a2,0(a5)
    4068:	2086a783          	lw	a5,520(a3)
    406c:	0084d713          	srli	a4,s1,0x8
    4070:	008787b3          	add	a5,a5,s0
    4074:	00e780a3          	sb	a4,1(a5)
    4078:	2086a783          	lw	a5,520(a3)
    407c:	0104d713          	srli	a4,s1,0x10
    4080:	0184d493          	srli	s1,s1,0x18
    4084:	008787b3          	add	a5,a5,s0
    4088:	00e78123          	sb	a4,2(a5)
    408c:	2086a783          	lw	a5,520(a3)
    4090:	008787b3          	add	a5,a5,s0
    4094:	009781a3          	sb	s1,3(a5)
    4098:	f89ff06f          	j	4020 <fatfs_fat_set_cluster+0x9c>

0000409c <fatfs_free_cluster_chain>:
    409c:	fe010113          	addi	sp,sp,-32
    40a0:	00812c23          	sw	s0,24(sp)
    40a4:	01212823          	sw	s2,16(sp)
    40a8:	00112e23          	sw	ra,28(sp)
    40ac:	00912a23          	sw	s1,20(sp)
    40b0:	00050413          	mv	s0,a0
    40b4:	ffd00913          	li	s2,-3
    40b8:	fff58793          	addi	a5,a1,-1
    40bc:	02f97063          	bgeu	s2,a5,40dc <fatfs_free_cluster_chain+0x40>
    40c0:	01c12083          	lw	ra,28(sp)
    40c4:	01812403          	lw	s0,24(sp)
    40c8:	01412483          	lw	s1,20(sp)
    40cc:	01012903          	lw	s2,16(sp)
    40d0:	00100513          	li	a0,1
    40d4:	02010113          	addi	sp,sp,32
    40d8:	00008067          	ret
    40dc:	00040513          	mv	a0,s0
    40e0:	00b12623          	sw	a1,12(sp)
    40e4:	fffff097          	auipc	ra,0xfffff
    40e8:	ee0080e7          	jalr	-288(ra) # 2fc4 <fatfs_find_next_cluster>
    40ec:	00c12583          	lw	a1,12(sp)
    40f0:	00050493          	mv	s1,a0
    40f4:	00000613          	li	a2,0
    40f8:	00040513          	mv	a0,s0
    40fc:	00000097          	auipc	ra,0x0
    4100:	e88080e7          	jalr	-376(ra) # 3f84 <fatfs_fat_set_cluster>
    4104:	00048593          	mv	a1,s1
    4108:	fb1ff06f          	j	40b8 <fatfs_free_cluster_chain+0x1c>

0000410c <fatfs_fat_add_cluster_to_chain>:
    410c:	fff00793          	li	a5,-1
    4110:	02f59463          	bne	a1,a5,4138 <fatfs_fat_add_cluster_to_chain+0x2c>
    4114:	00000513          	li	a0,0
    4118:	00008067          	ret
    411c:	00000513          	li	a0,0
    4120:	01c12083          	lw	ra,28(sp)
    4124:	01812403          	lw	s0,24(sp)
    4128:	01412483          	lw	s1,20(sp)
    412c:	01012903          	lw	s2,16(sp)
    4130:	02010113          	addi	sp,sp,32
    4134:	00008067          	ret
    4138:	fe010113          	addi	sp,sp,-32
    413c:	00812c23          	sw	s0,24(sp)
    4140:	00912a23          	sw	s1,20(sp)
    4144:	01212823          	sw	s2,16(sp)
    4148:	00050413          	mv	s0,a0
    414c:	00112e23          	sw	ra,28(sp)
    4150:	00058513          	mv	a0,a1
    4154:	00060493          	mv	s1,a2
    4158:	fff00913          	li	s2,-1
    415c:	00050593          	mv	a1,a0
    4160:	00a12623          	sw	a0,12(sp)
    4164:	00040513          	mv	a0,s0
    4168:	fffff097          	auipc	ra,0xfffff
    416c:	e5c080e7          	jalr	-420(ra) # 2fc4 <fatfs_find_next_cluster>
    4170:	fa0506e3          	beqz	a0,411c <fatfs_fat_add_cluster_to_chain+0x10>
    4174:	00c12583          	lw	a1,12(sp)
    4178:	ff2512e3          	bne	a0,s2,415c <fatfs_fat_add_cluster_to_chain+0x50>
    417c:	00048613          	mv	a2,s1
    4180:	00040513          	mv	a0,s0
    4184:	00000097          	auipc	ra,0x0
    4188:	e00080e7          	jalr	-512(ra) # 3f84 <fatfs_fat_set_cluster>
    418c:	fff00613          	li	a2,-1
    4190:	00048593          	mv	a1,s1
    4194:	00040513          	mv	a0,s0
    4198:	00000097          	auipc	ra,0x0
    419c:	dec080e7          	jalr	-532(ra) # 3f84 <fatfs_fat_set_cluster>
    41a0:	00100513          	li	a0,1
    41a4:	f7dff06f          	j	4120 <fatfs_fat_add_cluster_to_chain+0x14>

000041a8 <fatfs_add_free_space>:
    41a8:	02452703          	lw	a4,36(a0)
    41ac:	fd010113          	addi	sp,sp,-48
    41b0:	02812423          	sw	s0,40(sp)
    41b4:	03212023          	sw	s2,32(sp)
    41b8:	01412c23          	sw	s4,24(sp)
    41bc:	01512a23          	sw	s5,20(sp)
    41c0:	02112623          	sw	ra,44(sp)
    41c4:	02912223          	sw	s1,36(sp)
    41c8:	01312e23          	sw	s3,28(sp)
    41cc:	fff00793          	li	a5,-1
    41d0:	0005aa83          	lw	s5,0(a1)
    41d4:	00050413          	mv	s0,a0
    41d8:	00058913          	mv	s2,a1
    41dc:	00060a13          	mv	s4,a2
    41e0:	00f70863          	beq	a4,a5,41f0 <fatfs_add_free_space+0x48>
    41e4:	fff00593          	li	a1,-1
    41e8:	00000097          	auipc	ra,0x0
    41ec:	bc4080e7          	jalr	-1084(ra) # 3dac <fatfs_set_fs_info_next_free_cluster>
    41f0:	00000493          	li	s1,0
    41f4:	03449663          	bne	s1,s4,4220 <fatfs_add_free_space+0x78>
    41f8:	00100513          	li	a0,1
    41fc:	02c12083          	lw	ra,44(sp)
    4200:	02812403          	lw	s0,40(sp)
    4204:	02412483          	lw	s1,36(sp)
    4208:	02012903          	lw	s2,32(sp)
    420c:	01c12983          	lw	s3,28(sp)
    4210:	01812a03          	lw	s4,24(sp)
    4214:	01412a83          	lw	s5,20(sp)
    4218:	03010113          	addi	sp,sp,48
    421c:	00008067          	ret
    4220:	00842583          	lw	a1,8(s0)
    4224:	00c10613          	addi	a2,sp,12
    4228:	00040513          	mv	a0,s0
    422c:	00000097          	auipc	ra,0x0
    4230:	c38080e7          	jalr	-968(ra) # 3e64 <fatfs_find_blank_cluster>
    4234:	fc0504e3          	beqz	a0,41fc <fatfs_add_free_space+0x54>
    4238:	00c12983          	lw	s3,12(sp)
    423c:	000a8593          	mv	a1,s5
    4240:	00040513          	mv	a0,s0
    4244:	00098613          	mv	a2,s3
    4248:	00000097          	auipc	ra,0x0
    424c:	d3c080e7          	jalr	-708(ra) # 3f84 <fatfs_fat_set_cluster>
    4250:	fff00613          	li	a2,-1
    4254:	00098593          	mv	a1,s3
    4258:	00040513          	mv	a0,s0
    425c:	00000097          	auipc	ra,0x0
    4260:	d28080e7          	jalr	-728(ra) # 3f84 <fatfs_fat_set_cluster>
    4264:	00049463          	bnez	s1,426c <fatfs_add_free_space+0xc4>
    4268:	01392023          	sw	s3,0(s2)
    426c:	00148493          	addi	s1,s1,1
    4270:	00098a93          	mv	s5,s3
    4274:	f81ff06f          	j	41f4 <fatfs_add_free_space+0x4c>

00004278 <_write_sectors>:
    4278:	fb010113          	addi	sp,sp,-80
    427c:	03312e23          	sw	s3,60(sp)
    4280:	0000e9b7          	lui	s3,0xe
    4284:	03612823          	sw	s6,48(sp)
    4288:	aa09cb03          	lbu	s6,-1376(s3) # daa0 <_fs>
    428c:	03512a23          	sw	s5,52(sp)
    4290:	00058a93          	mv	s5,a1
    4294:	fff00793          	li	a5,-1
    4298:	04812423          	sw	s0,72(sp)
    429c:	000b0593          	mv	a1,s6
    42a0:	00050413          	mv	s0,a0
    42a4:	000a8513          	mv	a0,s5
    42a8:	00f12e23          	sw	a5,28(sp)
    42ac:	04112623          	sw	ra,76(sp)
    42b0:	04912223          	sw	s1,68(sp)
    42b4:	05212023          	sw	s2,64(sp)
    42b8:	03712623          	sw	s7,44(sp)
    42bc:	03812423          	sw	s8,40(sp)
    42c0:	00068b93          	mv	s7,a3
    42c4:	03912223          	sw	s9,36(sp)
    42c8:	03a12023          	sw	s10,32(sp)
    42cc:	00060c93          	mv	s9,a2
    42d0:	03412c23          	sw	s4,56(sp)
    42d4:	ffffd097          	auipc	ra,0xffffd
    42d8:	058080e7          	jalr	88(ra) # 132c <__udivsi3>
    42dc:	00050493          	mv	s1,a0
    42e0:	000b0593          	mv	a1,s6
    42e4:	000a8513          	mv	a0,s5
    42e8:	ffffd097          	auipc	ra,0xffffd
    42ec:	08c080e7          	jalr	140(ra) # 1374 <__umodsi3>
    42f0:	00ab87b3          	add	a5,s7,a0
    42f4:	00050c13          	mv	s8,a0
    42f8:	aa098d13          	addi	s10,s3,-1376
    42fc:	000b8913          	mv	s2,s7
    4300:	00fb7e63          	bgeu	s6,a5,431c <_write_sectors+0xa4>
    4304:	00048593          	mv	a1,s1
    4308:	000b0513          	mv	a0,s6
    430c:	ffffe097          	auipc	ra,0xffffe
    4310:	8a0080e7          	jalr	-1888(ra) # 1bac <__mulsi3>
    4314:	415b07b3          	sub	a5,s6,s5
    4318:	00f50933          	add	s2,a0,a5
    431c:	22842a03          	lw	s4,552(s0)
    4320:	029a1a63          	bne	s4,s1,4354 <_write_sectors+0xdc>
    4324:	22c42583          	lw	a1,556(s0)
    4328:	aa098513          	addi	a0,s3,-1376
    432c:	ffffe097          	auipc	ra,0xffffe
    4330:	bdc080e7          	jalr	-1060(ra) # 1f08 <fatfs_lba_of_cluster>
    4334:	018505b3          	add	a1,a0,s8
    4338:	00090693          	mv	a3,s2
    433c:	000c8613          	mv	a2,s9
    4340:	aa098513          	addi	a0,s3,-1376
    4344:	ffffe097          	auipc	ra,0xffffe
    4348:	c2c080e7          	jalr	-980(ra) # 1f70 <fatfs_sector_write>
    434c:	04050a63          	beqz	a0,43a0 <_write_sectors+0x128>
    4350:	0540006f          	j	43a4 <_write_sectors+0x12c>
    4354:	096ae663          	bltu	s5,s6,43e0 <_write_sectors+0x168>
    4358:	001a0793          	addi	a5,s4,1
    435c:	08979263          	bne	a5,s1,43e0 <_write_sectors+0x168>
    4360:	22c42583          	lw	a1,556(s0)
    4364:	fff00a93          	li	s5,-1
    4368:	089a6263          	bltu	s4,s1,43ec <_write_sectors+0x174>
    436c:	fff00793          	li	a5,-1
    4370:	0af59463          	bne	a1,a5,4418 <_write_sectors+0x1a0>
    4374:	000d4583          	lbu	a1,0(s10)
    4378:	fff58513          	addi	a0,a1,-1
    437c:	01750533          	add	a0,a0,s7
    4380:	ffffd097          	auipc	ra,0xffffd
    4384:	fac080e7          	jalr	-84(ra) # 132c <__udivsi3>
    4388:	00050613          	mv	a2,a0
    438c:	01c10593          	addi	a1,sp,28
    4390:	aa098513          	addi	a0,s3,-1376
    4394:	00000097          	auipc	ra,0x0
    4398:	e14080e7          	jalr	-492(ra) # 41a8 <fatfs_add_free_space>
    439c:	06051c63          	bnez	a0,4414 <_write_sectors+0x19c>
    43a0:	00000913          	li	s2,0
    43a4:	04c12083          	lw	ra,76(sp)
    43a8:	04812403          	lw	s0,72(sp)
    43ac:	04412483          	lw	s1,68(sp)
    43b0:	03c12983          	lw	s3,60(sp)
    43b4:	03812a03          	lw	s4,56(sp)
    43b8:	03412a83          	lw	s5,52(sp)
    43bc:	03012b03          	lw	s6,48(sp)
    43c0:	02c12b83          	lw	s7,44(sp)
    43c4:	02812c03          	lw	s8,40(sp)
    43c8:	02412c83          	lw	s9,36(sp)
    43cc:	02012d03          	lw	s10,32(sp)
    43d0:	00090513          	mv	a0,s2
    43d4:	04012903          	lw	s2,64(sp)
    43d8:	05010113          	addi	sp,sp,80
    43dc:	00008067          	ret
    43e0:	00442583          	lw	a1,4(s0)
    43e4:	00000a13          	li	s4,0
    43e8:	f7dff06f          	j	4364 <_write_sectors+0xec>
    43ec:	aa098513          	addi	a0,s3,-1376
    43f0:	00b12623          	sw	a1,12(sp)
    43f4:	fffff097          	auipc	ra,0xfffff
    43f8:	bd0080e7          	jalr	-1072(ra) # 2fc4 <fatfs_find_next_cluster>
    43fc:	00c12583          	lw	a1,12(sp)
    4400:	00b12e23          	sw	a1,28(sp)
    4404:	f75508e3          	beq	a0,s5,4374 <_write_sectors+0xfc>
    4408:	001a0a13          	addi	s4,s4,1
    440c:	00050593          	mv	a1,a0
    4410:	f59ff06f          	j	4368 <_write_sectors+0xf0>
    4414:	01c12583          	lw	a1,28(sp)
    4418:	22b42623          	sw	a1,556(s0)
    441c:	22942423          	sw	s1,552(s0)
    4420:	f09ff06f          	j	4328 <_write_sectors+0xb0>

00004424 <fl_fflush>:
    4424:	000057b7          	lui	a5,0x5
    4428:	29c7a783          	lw	a5,668(a5) # 529c <_filelib_init>
    442c:	ff010113          	addi	sp,sp,-16
    4430:	00812423          	sw	s0,8(sp)
    4434:	00112623          	sw	ra,12(sp)
    4438:	00912223          	sw	s1,4(sp)
    443c:	00050413          	mv	s0,a0
    4440:	00079663          	bnez	a5,444c <fl_fflush+0x28>
    4444:	ffffe097          	auipc	ra,0xffffe
    4448:	c00080e7          	jalr	-1024(ra) # 2044 <fl_init>
    444c:	04040863          	beqz	s0,449c <fl_fflush+0x78>
    4450:	0000e7b7          	lui	a5,0xe
    4454:	aa078713          	addi	a4,a5,-1376 # daa0 <_fs>
    4458:	03c72703          	lw	a4,60(a4)
    445c:	aa078493          	addi	s1,a5,-1376
    4460:	00070463          	beqz	a4,4468 <fl_fflush+0x44>
    4464:	000700e7          	jalr	a4
    4468:	43442783          	lw	a5,1076(s0)
    446c:	02078263          	beqz	a5,4490 <fl_fflush+0x6c>
    4470:	43042583          	lw	a1,1072(s0)
    4474:	00100693          	li	a3,1
    4478:	23040613          	addi	a2,s0,560
    447c:	00040513          	mv	a0,s0
    4480:	00000097          	auipc	ra,0x0
    4484:	df8080e7          	jalr	-520(ra) # 4278 <_write_sectors>
    4488:	00050463          	beqz	a0,4490 <fl_fflush+0x6c>
    448c:	42042a23          	sw	zero,1076(s0)
    4490:	0404a783          	lw	a5,64(s1)
    4494:	00078463          	beqz	a5,449c <fl_fflush+0x78>
    4498:	000780e7          	jalr	a5
    449c:	00c12083          	lw	ra,12(sp)
    44a0:	00812403          	lw	s0,8(sp)
    44a4:	00412483          	lw	s1,4(sp)
    44a8:	00000513          	li	a0,0
    44ac:	01010113          	addi	sp,sp,16
    44b0:	00008067          	ret

000044b4 <fl_fclose>:
    44b4:	000057b7          	lui	a5,0x5
    44b8:	29c7a783          	lw	a5,668(a5) # 529c <_filelib_init>
    44bc:	ff010113          	addi	sp,sp,-16
    44c0:	00812423          	sw	s0,8(sp)
    44c4:	00112623          	sw	ra,12(sp)
    44c8:	00912223          	sw	s1,4(sp)
    44cc:	01212023          	sw	s2,0(sp)
    44d0:	00050413          	mv	s0,a0
    44d4:	00079663          	bnez	a5,44e0 <fl_fclose+0x2c>
    44d8:	ffffe097          	auipc	ra,0xffffe
    44dc:	b6c080e7          	jalr	-1172(ra) # 2044 <fl_init>
    44e0:	08040e63          	beqz	s0,457c <fl_fclose+0xc8>
    44e4:	0000e4b7          	lui	s1,0xe
    44e8:	aa048793          	addi	a5,s1,-1376 # daa0 <_fs>
    44ec:	03c7a783          	lw	a5,60(a5)
    44f0:	aa048913          	addi	s2,s1,-1376
    44f4:	00078463          	beqz	a5,44fc <fl_fclose+0x48>
    44f8:	000780e7          	jalr	a5
    44fc:	00040513          	mv	a0,s0
    4500:	00000097          	auipc	ra,0x0
    4504:	f24080e7          	jalr	-220(ra) # 4424 <fl_fflush>
    4508:	01042783          	lw	a5,16(s0)
    450c:	00078e63          	beqz	a5,4528 <fl_fclose+0x74>
    4510:	00c42683          	lw	a3,12(s0)
    4514:	00042583          	lw	a1,0(s0)
    4518:	21c40613          	addi	a2,s0,540
    451c:	aa048513          	addi	a0,s1,-1376
    4520:	fffff097          	auipc	ra,0xfffff
    4524:	300080e7          	jalr	768(ra) # 3820 <fatfs_update_file_length>
    4528:	fff00793          	li	a5,-1
    452c:	42f42823          	sw	a5,1072(s0)
    4530:	00040513          	mv	a0,s0
    4534:	00042423          	sw	zero,8(s0)
    4538:	00042623          	sw	zero,12(s0)
    453c:	00042223          	sw	zero,4(s0)
    4540:	42042a23          	sw	zero,1076(s0)
    4544:	00042823          	sw	zero,16(s0)
    4548:	ffffe097          	auipc	ra,0xffffe
    454c:	978080e7          	jalr	-1672(ra) # 1ec0 <_free_file>
    4550:	aa048513          	addi	a0,s1,-1376
    4554:	fffff097          	auipc	ra,0xfffff
    4558:	a14080e7          	jalr	-1516(ra) # 2f68 <fatfs_fat_purge>
    455c:	04092783          	lw	a5,64(s2)
    4560:	00078e63          	beqz	a5,457c <fl_fclose+0xc8>
    4564:	00812403          	lw	s0,8(sp)
    4568:	00c12083          	lw	ra,12(sp)
    456c:	00412483          	lw	s1,4(sp)
    4570:	00012903          	lw	s2,0(sp)
    4574:	01010113          	addi	sp,sp,16
    4578:	00078067          	jr	a5
    457c:	00c12083          	lw	ra,12(sp)
    4580:	00812403          	lw	s0,8(sp)
    4584:	00412483          	lw	s1,4(sp)
    4588:	00012903          	lw	s2,0(sp)
    458c:	01010113          	addi	sp,sp,16
    4590:	00008067          	ret

00004594 <fl_fread>:
    4594:	fd010113          	addi	sp,sp,-48
    4598:	01612823          	sw	s6,16(sp)
    459c:	00050b13          	mv	s6,a0
    45a0:	00058513          	mv	a0,a1
    45a4:	00060593          	mv	a1,a2
    45a8:	02812423          	sw	s0,40(sp)
    45ac:	02912223          	sw	s1,36(sp)
    45b0:	02112623          	sw	ra,44(sp)
    45b4:	03212023          	sw	s2,32(sp)
    45b8:	01312e23          	sw	s3,28(sp)
    45bc:	01412c23          	sw	s4,24(sp)
    45c0:	01512a23          	sw	s5,20(sp)
    45c4:	01712623          	sw	s7,12(sp)
    45c8:	01812423          	sw	s8,8(sp)
    45cc:	01912223          	sw	s9,4(sp)
    45d0:	00068413          	mv	s0,a3
    45d4:	ffffd097          	auipc	ra,0xffffd
    45d8:	5d8080e7          	jalr	1496(ra) # 1bac <__mulsi3>
    45dc:	000057b7          	lui	a5,0x5
    45e0:	29c7a783          	lw	a5,668(a5) # 529c <_filelib_init>
    45e4:	00050493          	mv	s1,a0
    45e8:	00079663          	bnez	a5,45f4 <fl_fread+0x60>
    45ec:	ffffe097          	auipc	ra,0xffffe
    45f0:	a58080e7          	jalr	-1448(ra) # 2044 <fl_init>
    45f4:	120b0e63          	beqz	s6,4730 <fl_fread+0x19c>
    45f8:	12040c63          	beqz	s0,4730 <fl_fread+0x19c>
    45fc:	43844783          	lbu	a5,1080(s0)
    4600:	0017f793          	andi	a5,a5,1
    4604:	12078663          	beqz	a5,4730 <fl_fread+0x19c>
    4608:	0a048e63          	beqz	s1,46c4 <fl_fread+0x130>
    460c:	00842583          	lw	a1,8(s0)
    4610:	00c42783          	lw	a5,12(s0)
    4614:	10f5fe63          	bgeu	a1,a5,4730 <fl_fread+0x19c>
    4618:	00b48733          	add	a4,s1,a1
    461c:	00e7f463          	bgeu	a5,a4,4624 <fl_fread+0x90>
    4620:	40b784b3          	sub	s1,a5,a1
    4624:	0095da13          	srli	s4,a1,0x9
    4628:	1ff5f913          	andi	s2,a1,511
    462c:	00000993          	li	s3,0
    4630:	23040b93          	addi	s7,s0,560
    4634:	20000c13          	li	s8,512
    4638:	1ff00c93          	li	s9,511
    463c:	0899d263          	bge	s3,s1,46c0 <fl_fread+0x12c>
    4640:	04091463          	bnez	s2,4688 <fl_fread+0xf4>
    4644:	413486b3          	sub	a3,s1,s3
    4648:	04dcd063          	bge	s9,a3,4688 <fl_fread+0xf4>
    464c:	4096d693          	srai	a3,a3,0x9
    4650:	013b0633          	add	a2,s6,s3
    4654:	000a0593          	mv	a1,s4
    4658:	00040513          	mv	a0,s0
    465c:	fffff097          	auipc	ra,0xfffff
    4660:	604080e7          	jalr	1540(ra) # 3c60 <_read_sectors>
    4664:	04050e63          	beqz	a0,46c0 <fl_fread+0x12c>
    4668:	00951a93          	slli	s5,a0,0x9
    466c:	00aa0a33          	add	s4,s4,a0
    4670:	00842783          	lw	a5,8(s0)
    4674:	015989b3          	add	s3,s3,s5
    4678:	00000913          	li	s2,0
    467c:	015787b3          	add	a5,a5,s5
    4680:	00f42423          	sw	a5,8(s0)
    4684:	fb9ff06f          	j	463c <fl_fread+0xa8>
    4688:	43042783          	lw	a5,1072(s0)
    468c:	07478c63          	beq	a5,s4,4704 <fl_fread+0x170>
    4690:	43442783          	lw	a5,1076(s0)
    4694:	00078863          	beqz	a5,46a4 <fl_fread+0x110>
    4698:	00040513          	mv	a0,s0
    469c:	00000097          	auipc	ra,0x0
    46a0:	d88080e7          	jalr	-632(ra) # 4424 <fl_fflush>
    46a4:	00100693          	li	a3,1
    46a8:	000b8613          	mv	a2,s7
    46ac:	000a0593          	mv	a1,s4
    46b0:	00040513          	mv	a0,s0
    46b4:	fffff097          	auipc	ra,0xfffff
    46b8:	5ac080e7          	jalr	1452(ra) # 3c60 <_read_sectors>
    46bc:	04051063          	bnez	a0,46fc <fl_fread+0x168>
    46c0:	00098493          	mv	s1,s3
    46c4:	02c12083          	lw	ra,44(sp)
    46c8:	02812403          	lw	s0,40(sp)
    46cc:	02012903          	lw	s2,32(sp)
    46d0:	01c12983          	lw	s3,28(sp)
    46d4:	01812a03          	lw	s4,24(sp)
    46d8:	01412a83          	lw	s5,20(sp)
    46dc:	01012b03          	lw	s6,16(sp)
    46e0:	00c12b83          	lw	s7,12(sp)
    46e4:	00812c03          	lw	s8,8(sp)
    46e8:	00412c83          	lw	s9,4(sp)
    46ec:	00048513          	mv	a0,s1
    46f0:	02412483          	lw	s1,36(sp)
    46f4:	03010113          	addi	sp,sp,48
    46f8:	00008067          	ret
    46fc:	43442823          	sw	s4,1072(s0)
    4700:	42042a23          	sw	zero,1076(s0)
    4704:	412c07b3          	sub	a5,s8,s2
    4708:	41348ab3          	sub	s5,s1,s3
    470c:	0157d463          	bge	a5,s5,4714 <fl_fread+0x180>
    4710:	00078a93          	mv	s5,a5
    4714:	000a8613          	mv	a2,s5
    4718:	012b85b3          	add	a1,s7,s2
    471c:	013b0533          	add	a0,s6,s3
    4720:	ffffd097          	auipc	ra,0xffffd
    4724:	cd4080e7          	jalr	-812(ra) # 13f4 <memcpy>
    4728:	001a0a13          	addi	s4,s4,1
    472c:	f45ff06f          	j	4670 <fl_fread+0xdc>
    4730:	fff00493          	li	s1,-1
    4734:	f91ff06f          	j	46c4 <fl_fread+0x130>

00004738 <fatfs_allocate_free_space>:
    4738:	02069a63          	bnez	a3,476c <fatfs_allocate_free_space+0x34>
    473c:	00000513          	li	a0,0
    4740:	00008067          	ret
    4744:	00000513          	li	a0,0
    4748:	02c12083          	lw	ra,44(sp)
    474c:	02812403          	lw	s0,40(sp)
    4750:	02412483          	lw	s1,36(sp)
    4754:	02012903          	lw	s2,32(sp)
    4758:	01c12983          	lw	s3,28(sp)
    475c:	01812a03          	lw	s4,24(sp)
    4760:	01412a83          	lw	s5,20(sp)
    4764:	03010113          	addi	sp,sp,48
    4768:	00008067          	ret
    476c:	02452703          	lw	a4,36(a0)
    4770:	fd010113          	addi	sp,sp,-48
    4774:	02812423          	sw	s0,40(sp)
    4778:	03212023          	sw	s2,32(sp)
    477c:	01312e23          	sw	s3,28(sp)
    4780:	01512a23          	sw	s5,20(sp)
    4784:	02112623          	sw	ra,44(sp)
    4788:	02912223          	sw	s1,36(sp)
    478c:	01412c23          	sw	s4,24(sp)
    4790:	fff00793          	li	a5,-1
    4794:	00050413          	mv	s0,a0
    4798:	00058a93          	mv	s5,a1
    479c:	00060993          	mv	s3,a2
    47a0:	00068913          	mv	s2,a3
    47a4:	00f70863          	beq	a4,a5,47b4 <fatfs_allocate_free_space+0x7c>
    47a8:	fff00593          	li	a1,-1
    47ac:	fffff097          	auipc	ra,0xfffff
    47b0:	600080e7          	jalr	1536(ra) # 3dac <fatfs_set_fs_info_next_free_cluster>
    47b4:	00044a03          	lbu	s4,0(s0)
    47b8:	00090513          	mv	a0,s2
    47bc:	009a1a13          	slli	s4,s4,0x9
    47c0:	000a0593          	mv	a1,s4
    47c4:	ffffd097          	auipc	ra,0xffffd
    47c8:	b68080e7          	jalr	-1176(ra) # 132c <__udivsi3>
    47cc:	00050493          	mv	s1,a0
    47d0:	00050593          	mv	a1,a0
    47d4:	000a0513          	mv	a0,s4
    47d8:	ffffd097          	auipc	ra,0xffffd
    47dc:	3d4080e7          	jalr	980(ra) # 1bac <__mulsi3>
    47e0:	01250463          	beq	a0,s2,47e8 <fatfs_allocate_free_space+0xb0>
    47e4:	00148493          	addi	s1,s1,1
    47e8:	040a8463          	beqz	s5,4830 <fatfs_allocate_free_space+0xf8>
    47ec:	00842583          	lw	a1,8(s0)
    47f0:	00c10613          	addi	a2,sp,12
    47f4:	00040513          	mv	a0,s0
    47f8:	fffff097          	auipc	ra,0xfffff
    47fc:	66c080e7          	jalr	1644(ra) # 3e64 <fatfs_find_blank_cluster>
    4800:	f40502e3          	beqz	a0,4744 <fatfs_allocate_free_space+0xc>
    4804:	00100793          	li	a5,1
    4808:	02f49863          	bne	s1,a5,4838 <fatfs_allocate_free_space+0x100>
    480c:	00c12483          	lw	s1,12(sp)
    4810:	fff00613          	li	a2,-1
    4814:	00040513          	mv	a0,s0
    4818:	00048593          	mv	a1,s1
    481c:	fffff097          	auipc	ra,0xfffff
    4820:	768080e7          	jalr	1896(ra) # 3f84 <fatfs_fat_set_cluster>
    4824:	00100513          	li	a0,1
    4828:	0099a023          	sw	s1,0(s3)
    482c:	f1dff06f          	j	4748 <fatfs_allocate_free_space+0x10>
    4830:	0009a783          	lw	a5,0(s3)
    4834:	00f12623          	sw	a5,12(sp)
    4838:	00048613          	mv	a2,s1
    483c:	00c10593          	addi	a1,sp,12
    4840:	00040513          	mv	a0,s0
    4844:	00000097          	auipc	ra,0x0
    4848:	964080e7          	jalr	-1692(ra) # 41a8 <fatfs_add_free_space>
    484c:	00a03533          	snez	a0,a0
    4850:	ef9ff06f          	j	4748 <fatfs_allocate_free_space+0x10>

00004854 <fatfs_add_file_entry>:
    4854:	f8010113          	addi	sp,sp,-128
    4858:	00f12a23          	sw	a5,20(sp)
    485c:	03852783          	lw	a5,56(a0)
    4860:	06112e23          	sw	ra,124(sp)
    4864:	06812c23          	sw	s0,120(sp)
    4868:	06912a23          	sw	s1,116(sp)
    486c:	07212823          	sw	s2,112(sp)
    4870:	07312623          	sw	s3,108(sp)
    4874:	07412423          	sw	s4,104(sp)
    4878:	07512223          	sw	s5,100(sp)
    487c:	07612023          	sw	s6,96(sp)
    4880:	05712e23          	sw	s7,92(sp)
    4884:	05812c23          	sw	s8,88(sp)
    4888:	05912a23          	sw	s9,84(sp)
    488c:	05a12823          	sw	s10,80(sp)
    4890:	05b12623          	sw	s11,76(sp)
    4894:	00b12423          	sw	a1,8(sp)
    4898:	00c12623          	sw	a2,12(sp)
    489c:	00e12823          	sw	a4,16(sp)
    48a0:	01012c23          	sw	a6,24(sp)
    48a4:	04079263          	bnez	a5,48e8 <fatfs_add_file_entry+0x94>
    48a8:	00000513          	li	a0,0
    48ac:	07c12083          	lw	ra,124(sp)
    48b0:	07812403          	lw	s0,120(sp)
    48b4:	07412483          	lw	s1,116(sp)
    48b8:	07012903          	lw	s2,112(sp)
    48bc:	06c12983          	lw	s3,108(sp)
    48c0:	06812a03          	lw	s4,104(sp)
    48c4:	06412a83          	lw	s5,100(sp)
    48c8:	06012b03          	lw	s6,96(sp)
    48cc:	05c12b83          	lw	s7,92(sp)
    48d0:	05812c03          	lw	s8,88(sp)
    48d4:	05412c83          	lw	s9,84(sp)
    48d8:	05012d03          	lw	s10,80(sp)
    48dc:	04c12d83          	lw	s11,76(sp)
    48e0:	08010113          	addi	sp,sp,128
    48e4:	00008067          	ret
    48e8:	00050413          	mv	s0,a0
    48ec:	00c12503          	lw	a0,12(sp)
    48f0:	00068a93          	mv	s5,a3
    48f4:	ffffe097          	auipc	ra,0xffffe
    48f8:	9c0080e7          	jalr	-1600(ra) # 22b4 <fatfs_lfn_entries_required>
    48fc:	00150713          	addi	a4,a0,1
    4900:	00100793          	li	a5,1
    4904:	00050493          	mv	s1,a0
    4908:	fae7f0e3          	bgeu	a5,a4,48a8 <fatfs_add_file_entry+0x54>
    490c:	00000913          	li	s2,0
    4910:	00000a13          	li	s4,0
    4914:	00000993          	li	s3,0
    4918:	00000b13          	li	s6,0
    491c:	00000d93          	li	s11,0
    4920:	0e500b93          	li	s7,229
    4924:	01000c13          	li	s8,16
    4928:	00812583          	lw	a1,8(sp)
    492c:	00000693          	li	a3,0
    4930:	00090613          	mv	a2,s2
    4934:	00040513          	mv	a0,s0
    4938:	ffffe097          	auipc	ra,0xffffe
    493c:	79c080e7          	jalr	1948(ra) # 30d4 <fatfs_sector_reader>
    4940:	14050463          	beqz	a0,4a88 <fatfs_add_file_entry+0x234>
    4944:	04440d13          	addi	s10,s0,68
    4948:	000d8793          	mv	a5,s11
    494c:	00000c93          	li	s9,0
    4950:	000d0513          	mv	a0,s10
    4954:	00f12e23          	sw	a5,28(sp)
    4958:	ffffe097          	auipc	ra,0xffffe
    495c:	86c080e7          	jalr	-1940(ra) # 21c4 <fatfs_entry_lfn_text>
    4960:	01c12783          	lw	a5,28(sp)
    4964:	00050d93          	mv	s11,a0
    4968:	02050c63          	beqz	a0,49a0 <fatfs_add_file_entry+0x14c>
    496c:	00079863          	bnez	a5,497c <fatfs_add_file_entry+0x128>
    4970:	000c8a13          	mv	s4,s9
    4974:	00090993          	mv	s3,s2
    4978:	00100b13          	li	s6,1
    497c:	00178d93          	addi	s11,a5,1
    4980:	001c8713          	addi	a4,s9,1
    4984:	0ff77c93          	zext.b	s9,a4
    4988:	020d0d13          	addi	s10,s10,32
    498c:	018c9663          	bne	s9,s8,4998 <fatfs_add_file_entry+0x144>
    4990:	00190913          	addi	s2,s2,1
    4994:	f95ff06f          	j	4928 <fatfs_add_file_entry+0xd4>
    4998:	000d8793          	mv	a5,s11
    499c:	fb5ff06f          	j	4950 <fatfs_add_file_entry+0xfc>
    49a0:	000d4603          	lbu	a2,0(s10)
    49a4:	0d761c63          	bne	a2,s7,4a7c <fatfs_add_file_entry+0x228>
    49a8:	00079863          	bnez	a5,49b8 <fatfs_add_file_entry+0x164>
    49ac:	000c8a13          	mv	s4,s9
    49b0:	00090993          	mv	s3,s2
    49b4:	00100b13          	li	s6,1
    49b8:	00178d93          	addi	s11,a5,1
    49bc:	fc97c2e3          	blt	a5,s1,4980 <fatfs_add_file_entry+0x12c>
    49c0:	00ba8693          	addi	a3,s5,11
    49c4:	000a8713          	mv	a4,s5
    49c8:	00000913          	li	s2,0
    49cc:	00074603          	lbu	a2,0(a4)
    49d0:	00195793          	srli	a5,s2,0x1
    49d4:	00791913          	slli	s2,s2,0x7
    49d8:	0127e7b3          	or	a5,a5,s2
    49dc:	00170713          	addi	a4,a4,1
    49e0:	00c787b3          	add	a5,a5,a2
    49e4:	0ff7f913          	zext.b	s2,a5
    49e8:	fed712e3          	bne	a4,a3,49cc <fatfs_add_file_entry+0x178>
    49ec:	00098b13          	mv	s6,s3
    49f0:	00000d93          	li	s11,0
    49f4:	04440c13          	addi	s8,s0,68
    49f8:	01000c93          	li	s9,16
    49fc:	00812583          	lw	a1,8(sp)
    4a00:	00000693          	li	a3,0
    4a04:	000b0613          	mv	a2,s6
    4a08:	00040513          	mv	a0,s0
    4a0c:	ffffe097          	auipc	ra,0xffffe
    4a10:	6c8080e7          	jalr	1736(ra) # 30d4 <fatfs_sector_reader>
    4a14:	e8050ae3          	beqz	a0,48a8 <fatfs_add_file_entry+0x54>
    4a18:	000c0b93          	mv	s7,s8
    4a1c:	00000713          	li	a4,0
    4a20:	00000d13          	li	s10,0
    4a24:	000d9663          	bnez	s11,4a30 <fatfs_add_file_entry+0x1dc>
    4a28:	11699863          	bne	s3,s6,4b38 <fatfs_add_file_entry+0x2e4>
    4a2c:	114d1663          	bne	s10,s4,4b38 <fatfs_add_file_entry+0x2e4>
    4a30:	0e049263          	bnez	s1,4b14 <fatfs_add_file_entry+0x2c0>
    4a34:	01812703          	lw	a4,24(sp)
    4a38:	01012603          	lw	a2,16(sp)
    4a3c:	01412583          	lw	a1,20(sp)
    4a40:	02010693          	addi	a3,sp,32
    4a44:	000a8513          	mv	a0,s5
    4a48:	ffffe097          	auipc	ra,0xffffe
    4a4c:	9c4080e7          	jalr	-1596(ra) # 240c <fatfs_sfn_create_entry>
    4a50:	02010593          	addi	a1,sp,32
    4a54:	02000613          	li	a2,32
    4a58:	000b8513          	mv	a0,s7
    4a5c:	ffffd097          	auipc	ra,0xffffd
    4a60:	998080e7          	jalr	-1640(ra) # 13f4 <memcpy>
    4a64:	03842783          	lw	a5,56(s0)
    4a68:	24442503          	lw	a0,580(s0)
    4a6c:	00100613          	li	a2,1
    4a70:	000c0593          	mv	a1,s8
    4a74:	000780e7          	jalr	a5
    4a78:	e35ff06f          	j	48ac <fatfs_add_file_entry+0x58>
    4a7c:	f20606e3          	beqz	a2,49a8 <fatfs_add_file_entry+0x154>
    4a80:	00000b13          	li	s6,0
    4a84:	efdff06f          	j	4980 <fatfs_add_file_entry+0x12c>
    4a88:	00842583          	lw	a1,8(s0)
    4a8c:	02010613          	addi	a2,sp,32
    4a90:	00040513          	mv	a0,s0
    4a94:	fffff097          	auipc	ra,0xfffff
    4a98:	3d0080e7          	jalr	976(ra) # 3e64 <fatfs_find_blank_cluster>
    4a9c:	e00506e3          	beqz	a0,48a8 <fatfs_add_file_entry+0x54>
    4aa0:	02012b83          	lw	s7,32(sp)
    4aa4:	00812583          	lw	a1,8(sp)
    4aa8:	00040513          	mv	a0,s0
    4aac:	000b8613          	mv	a2,s7
    4ab0:	fffff097          	auipc	ra,0xfffff
    4ab4:	65c080e7          	jalr	1628(ra) # 410c <fatfs_fat_add_cluster_to_chain>
    4ab8:	de0508e3          	beqz	a0,48a8 <fatfs_add_file_entry+0x54>
    4abc:	20000613          	li	a2,512
    4ac0:	00000593          	li	a1,0
    4ac4:	04440513          	addi	a0,s0,68
    4ac8:	ffffd097          	auipc	ra,0xffffd
    4acc:	910080e7          	jalr	-1776(ra) # 13d8 <memset>
    4ad0:	00000c13          	li	s8,0
    4ad4:	00044783          	lbu	a5,0(s0)
    4ad8:	00fc6a63          	bltu	s8,a5,4aec <fatfs_add_file_entry+0x298>
    4adc:	ee0b12e3          	bnez	s6,49c0 <fatfs_add_file_entry+0x16c>
    4ae0:	00090993          	mv	s3,s2
    4ae4:	00000a13          	li	s4,0
    4ae8:	ed9ff06f          	j	49c0 <fatfs_add_file_entry+0x16c>
    4aec:	00000693          	li	a3,0
    4af0:	000c0613          	mv	a2,s8
    4af4:	000b8593          	mv	a1,s7
    4af8:	00040513          	mv	a0,s0
    4afc:	ffffd097          	auipc	ra,0xffffd
    4b00:	48c080e7          	jalr	1164(ra) # 1f88 <fatfs_write_sector>
    4b04:	da0502e3          	beqz	a0,48a8 <fatfs_add_file_entry+0x54>
    4b08:	001c0c13          	addi	s8,s8,1
    4b0c:	0ffc7c13          	zext.b	s8,s8
    4b10:	fc5ff06f          	j	4ad4 <fatfs_add_file_entry+0x280>
    4b14:	00c12503          	lw	a0,12(sp)
    4b18:	fff48493          	addi	s1,s1,-1
    4b1c:	00090693          	mv	a3,s2
    4b20:	00048613          	mv	a2,s1
    4b24:	000b8593          	mv	a1,s7
    4b28:	ffffd097          	auipc	ra,0xffffd
    4b2c:	7bc080e7          	jalr	1980(ra) # 22e4 <fatfs_filename_to_lfn>
    4b30:	00100d93          	li	s11,1
    4b34:	00100713          	li	a4,1
    4b38:	001d0793          	addi	a5,s10,1
    4b3c:	0ff7fd13          	zext.b	s10,a5
    4b40:	020b8b93          	addi	s7,s7,32
    4b44:	ef9d10e3          	bne	s10,s9,4a24 <fatfs_add_file_entry+0x1d0>
    4b48:	00070e63          	beqz	a4,4b64 <fatfs_add_file_entry+0x310>
    4b4c:	03842783          	lw	a5,56(s0)
    4b50:	24442503          	lw	a0,580(s0)
    4b54:	00100613          	li	a2,1
    4b58:	000c0593          	mv	a1,s8
    4b5c:	000780e7          	jalr	a5
    4b60:	d40504e3          	beqz	a0,48a8 <fatfs_add_file_entry+0x54>
    4b64:	001b0b13          	addi	s6,s6,1
    4b68:	e95ff06f          	j	49fc <fatfs_add_file_entry+0x1a8>

00004b6c <fl_fopen>:
    4b6c:	000057b7          	lui	a5,0x5
    4b70:	29c7a783          	lw	a5,668(a5) # 529c <_filelib_init>
    4b74:	fa010113          	addi	sp,sp,-96
    4b78:	04812c23          	sw	s0,88(sp)
    4b7c:	05412423          	sw	s4,72(sp)
    4b80:	04112e23          	sw	ra,92(sp)
    4b84:	04912a23          	sw	s1,84(sp)
    4b88:	05212823          	sw	s2,80(sp)
    4b8c:	05312623          	sw	s3,76(sp)
    4b90:	05512223          	sw	s5,68(sp)
    4b94:	05612023          	sw	s6,64(sp)
    4b98:	03712e23          	sw	s7,60(sp)
    4b9c:	03812c23          	sw	s8,56(sp)
    4ba0:	03912a23          	sw	s9,52(sp)
    4ba4:	00050a13          	mv	s4,a0
    4ba8:	00058413          	mv	s0,a1
    4bac:	00079663          	bnez	a5,4bb8 <fl_fopen+0x4c>
    4bb0:	ffffd097          	auipc	ra,0xffffd
    4bb4:	494080e7          	jalr	1172(ra) # 2044 <fl_init>
    4bb8:	000057b7          	lui	a5,0x5
    4bbc:	2987a783          	lw	a5,664(a5) # 5298 <_filelib_valid>
    4bc0:	36078c63          	beqz	a5,4f38 <fl_fopen+0x3cc>
    4bc4:	360a0a63          	beqz	s4,4f38 <fl_fopen+0x3cc>
    4bc8:	10040863          	beqz	s0,4cd8 <fl_fopen+0x16c>
    4bcc:	00040513          	mv	a0,s0
    4bd0:	ffffd097          	auipc	ra,0xffffd
    4bd4:	848080e7          	jalr	-1976(ra) # 1418 <strlen>
    4bd8:	00000493          	li	s1,0
    4bdc:	00000713          	li	a4,0
    4be0:	05700693          	li	a3,87
    4be4:	07200613          	li	a2,114
    4be8:	07700813          	li	a6,119
    4bec:	06100893          	li	a7,97
    4bf0:	06200313          	li	t1,98
    4bf4:	04100593          	li	a1,65
    4bf8:	04200e13          	li	t3,66
    4bfc:	05200e93          	li	t4,82
    4c00:	02b00f13          	li	t5,43
    4c04:	10a74663          	blt	a4,a0,4d10 <fl_fopen+0x1a4>
    4c08:	0000e937          	lui	s2,0xe
    4c0c:	aa090793          	addi	a5,s2,-1376 # daa0 <_fs>
    4c10:	0387a783          	lw	a5,56(a5)
    4c14:	aa090b13          	addi	s6,s2,-1376
    4c18:	00079463          	bnez	a5,4c20 <fl_fopen+0xb4>
    4c1c:	0d94f493          	andi	s1,s1,217
    4c20:	03cb2783          	lw	a5,60(s6)
    4c24:	00078463          	beqz	a5,4c2c <fl_fopen+0xc0>
    4c28:	000780e7          	jalr	a5
    4c2c:	0014fc93          	andi	s9,s1,1
    4c30:	160c9863          	bnez	s9,4da0 <fl_fopen+0x234>
    4c34:	0204f793          	andi	a5,s1,32
    4c38:	08078863          	beqz	a5,4cc8 <fl_fopen+0x15c>
    4c3c:	038b2783          	lw	a5,56(s6)
    4c40:	06078a63          	beqz	a5,4cb4 <fl_fopen+0x148>
    4c44:	ffffd097          	auipc	ra,0xffffd
    4c48:	208080e7          	jalr	520(ra) # 1e4c <_allocate_file>
    4c4c:	00050413          	mv	s0,a0
    4c50:	06050263          	beqz	a0,4cb4 <fl_fopen+0x148>
    4c54:	01450b93          	addi	s7,a0,20
    4c58:	10400613          	li	a2,260
    4c5c:	00000593          	li	a1,0
    4c60:	000b8513          	mv	a0,s7
    4c64:	ffffc097          	auipc	ra,0xffffc
    4c68:	774080e7          	jalr	1908(ra) # 13d8 <memset>
    4c6c:	11840a93          	addi	s5,s0,280
    4c70:	10400613          	li	a2,260
    4c74:	00000593          	li	a1,0
    4c78:	000a8513          	mv	a0,s5
    4c7c:	ffffc097          	auipc	ra,0xffffc
    4c80:	75c080e7          	jalr	1884(ra) # 13d8 <memset>
    4c84:	10400713          	li	a4,260
    4c88:	000a8693          	mv	a3,s5
    4c8c:	10400613          	li	a2,260
    4c90:	000b8593          	mv	a1,s7
    4c94:	000a0513          	mv	a0,s4
    4c98:	ffffe097          	auipc	ra,0xffffe
    4c9c:	c78080e7          	jalr	-904(ra) # 2910 <fatfs_split_path>
    4ca0:	fff00793          	li	a5,-1
    4ca4:	10f51c63          	bne	a0,a5,4dbc <fl_fopen+0x250>
    4ca8:	00040513          	mv	a0,s0
    4cac:	ffffd097          	auipc	ra,0xffffd
    4cb0:	214080e7          	jalr	532(ra) # 1ec0 <_free_file>
    4cb4:	00000413          	li	s0,0
    4cb8:	260c9c63          	bnez	s9,4f30 <fl_fopen+0x3c4>
    4cbc:	0e041c63          	bnez	s0,4db4 <fl_fopen+0x248>
    4cc0:	0064f793          	andi	a5,s1,6
    4cc4:	24079e63          	bnez	a5,4f20 <fl_fopen+0x3b4>
    4cc8:	00000413          	li	s0,0
    4ccc:	040b2783          	lw	a5,64(s6)
    4cd0:	00078463          	beqz	a5,4cd8 <fl_fopen+0x16c>
    4cd4:	000780e7          	jalr	a5
    4cd8:	05c12083          	lw	ra,92(sp)
    4cdc:	00040513          	mv	a0,s0
    4ce0:	05812403          	lw	s0,88(sp)
    4ce4:	05412483          	lw	s1,84(sp)
    4ce8:	05012903          	lw	s2,80(sp)
    4cec:	04c12983          	lw	s3,76(sp)
    4cf0:	04812a03          	lw	s4,72(sp)
    4cf4:	04412a83          	lw	s5,68(sp)
    4cf8:	04012b03          	lw	s6,64(sp)
    4cfc:	03c12b83          	lw	s7,60(sp)
    4d00:	03812c03          	lw	s8,56(sp)
    4d04:	03412c83          	lw	s9,52(sp)
    4d08:	06010113          	addi	sp,sp,96
    4d0c:	00008067          	ret
    4d10:	00e407b3          	add	a5,s0,a4
    4d14:	0007c783          	lbu	a5,0(a5)
    4d18:	04d78463          	beq	a5,a3,4d60 <fl_fopen+0x1f4>
    4d1c:	02f6e463          	bltu	a3,a5,4d44 <fl_fopen+0x1d8>
    4d20:	04b78463          	beq	a5,a1,4d68 <fl_fopen+0x1fc>
    4d24:	00f5e863          	bltu	a1,a5,4d34 <fl_fopen+0x1c8>
    4d28:	05e78463          	beq	a5,t5,4d70 <fl_fopen+0x204>
    4d2c:	00170713          	addi	a4,a4,1
    4d30:	ed5ff06f          	j	4c04 <fl_fopen+0x98>
    4d34:	03c78063          	beq	a5,t3,4d54 <fl_fopen+0x1e8>
    4d38:	ffd79ae3          	bne	a5,t4,4d2c <fl_fopen+0x1c0>
    4d3c:	0014e493          	ori	s1,s1,1
    4d40:	fedff06f          	j	4d2c <fl_fopen+0x1c0>
    4d44:	fec78ce3          	beq	a5,a2,4d3c <fl_fopen+0x1d0>
    4d48:	00f66a63          	bltu	a2,a5,4d5c <fl_fopen+0x1f0>
    4d4c:	01178e63          	beq	a5,a7,4d68 <fl_fopen+0x1fc>
    4d50:	fc679ee3          	bne	a5,t1,4d2c <fl_fopen+0x1c0>
    4d54:	0084e493          	ori	s1,s1,8
    4d58:	fd5ff06f          	j	4d2c <fl_fopen+0x1c0>
    4d5c:	fd0798e3          	bne	a5,a6,4d2c <fl_fopen+0x1c0>
    4d60:	0324e493          	ori	s1,s1,50
    4d64:	fc9ff06f          	j	4d2c <fl_fopen+0x1c0>
    4d68:	0264e493          	ori	s1,s1,38
    4d6c:	fc1ff06f          	j	4d2c <fl_fopen+0x1c0>
    4d70:	0014f793          	andi	a5,s1,1
    4d74:	00078663          	beqz	a5,4d80 <fl_fopen+0x214>
    4d78:	0024e493          	ori	s1,s1,2
    4d7c:	fb1ff06f          	j	4d2c <fl_fopen+0x1c0>
    4d80:	0024f793          	andi	a5,s1,2
    4d84:	00078663          	beqz	a5,4d90 <fl_fopen+0x224>
    4d88:	0314e493          	ori	s1,s1,49
    4d8c:	fa1ff06f          	j	4d2c <fl_fopen+0x1c0>
    4d90:	0044f793          	andi	a5,s1,4
    4d94:	f8078ce3          	beqz	a5,4d2c <fl_fopen+0x1c0>
    4d98:	0274e493          	ori	s1,s1,39
    4d9c:	f91ff06f          	j	4d2c <fl_fopen+0x1c0>
    4da0:	000a0513          	mv	a0,s4
    4da4:	fffff097          	auipc	ra,0xfffff
    4da8:	830080e7          	jalr	-2000(ra) # 35d4 <_open_file>
    4dac:	00050413          	mv	s0,a0
    4db0:	e80502e3          	beqz	a0,4c34 <fl_fopen+0xc8>
    4db4:	42940c23          	sb	s1,1080(s0)
    4db8:	f15ff06f          	j	4ccc <fl_fopen+0x160>
    4dbc:	00040513          	mv	a0,s0
    4dc0:	ffffe097          	auipc	ra,0xffffe
    4dc4:	da4080e7          	jalr	-604(ra) # 2b64 <_check_file_open>
    4dc8:	00050993          	mv	s3,a0
    4dcc:	ec051ee3          	bnez	a0,4ca8 <fl_fopen+0x13c>
    4dd0:	01444783          	lbu	a5,20(s0)
    4dd4:	0e079663          	bnez	a5,4ec0 <fl_fopen+0x354>
    4dd8:	008b2783          	lw	a5,8(s6)
    4ddc:	00f42023          	sw	a5,0(s0)
    4de0:	00042583          	lw	a1,0(s0)
    4de4:	01010693          	addi	a3,sp,16
    4de8:	000a8613          	mv	a2,s5
    4dec:	aa090513          	addi	a0,s2,-1376
    4df0:	ffffe097          	auipc	ra,0xffffe
    4df4:	424080e7          	jalr	1060(ra) # 3214 <fatfs_get_file_entry>
    4df8:	00100793          	li	a5,1
    4dfc:	eaf506e3          	beq	a0,a5,4ca8 <fl_fopen+0x13c>
    4e00:	00042223          	sw	zero,4(s0)
    4e04:	00100693          	li	a3,1
    4e08:	00440613          	addi	a2,s0,4
    4e0c:	00100593          	li	a1,1
    4e10:	aa090513          	addi	a0,s2,-1376
    4e14:	00000097          	auipc	ra,0x0
    4e18:	924080e7          	jalr	-1756(ra) # 4738 <fatfs_allocate_free_space>
    4e1c:	e80506e3          	beqz	a0,4ca8 <fl_fopen+0x13c>
    4e20:	00002c37          	lui	s8,0x2
    4e24:	21c40b93          	addi	s7,s0,540
    4e28:	70fc0c13          	addi	s8,s8,1807 # 270f <fatfs_lfn_generate_tail+0xdf>
    4e2c:	000a8593          	mv	a1,s5
    4e30:	00410513          	addi	a0,sp,4
    4e34:	ffffd097          	auipc	ra,0xffffd
    4e38:	680080e7          	jalr	1664(ra) # 24b4 <fatfs_lfn_create_sfn>
    4e3c:	08098e63          	beqz	s3,4ed8 <fl_fopen+0x36c>
    4e40:	00098613          	mv	a2,s3
    4e44:	00410593          	addi	a1,sp,4
    4e48:	000b8513          	mv	a0,s7
    4e4c:	ffffd097          	auipc	ra,0xffffd
    4e50:	7e4080e7          	jalr	2020(ra) # 2630 <fatfs_lfn_generate_tail>
    4e54:	00042583          	lw	a1,0(s0)
    4e58:	000b8613          	mv	a2,s7
    4e5c:	aa090513          	addi	a0,s2,-1376
    4e60:	fffff097          	auipc	ra,0xfffff
    4e64:	8ec080e7          	jalr	-1812(ra) # 374c <fatfs_sfn_exists>
    4e68:	00050663          	beqz	a0,4e74 <fl_fopen+0x308>
    4e6c:	00198993          	addi	s3,s3,1
    4e70:	fb899ee3          	bne	s3,s8,4e2c <fl_fopen+0x2c0>
    4e74:	00442703          	lw	a4,4(s0)
    4e78:	000027b7          	lui	a5,0x2
    4e7c:	70f78793          	addi	a5,a5,1807 # 270f <fatfs_lfn_generate_tail+0xdf>
    4e80:	00070593          	mv	a1,a4
    4e84:	02f98663          	beq	s3,a5,4eb0 <fl_fopen+0x344>
    4e88:	00042583          	lw	a1,0(s0)
    4e8c:	00000813          	li	a6,0
    4e90:	00000793          	li	a5,0
    4e94:	000b8693          	mv	a3,s7
    4e98:	000a8613          	mv	a2,s5
    4e9c:	aa090513          	addi	a0,s2,-1376
    4ea0:	00000097          	auipc	ra,0x0
    4ea4:	9b4080e7          	jalr	-1612(ra) # 4854 <fatfs_add_file_entry>
    4ea8:	04051463          	bnez	a0,4ef0 <fl_fopen+0x384>
    4eac:	00442583          	lw	a1,4(s0)
    4eb0:	aa090513          	addi	a0,s2,-1376
    4eb4:	fffff097          	auipc	ra,0xfffff
    4eb8:	1e8080e7          	jalr	488(ra) # 409c <fatfs_free_cluster_chain>
    4ebc:	dedff06f          	j	4ca8 <fl_fopen+0x13c>
    4ec0:	00040593          	mv	a1,s0
    4ec4:	000b8513          	mv	a0,s7
    4ec8:	ffffe097          	auipc	ra,0xffffe
    4ecc:	558080e7          	jalr	1368(ra) # 3420 <_open_directory>
    4ed0:	f00518e3          	bnez	a0,4de0 <fl_fopen+0x274>
    4ed4:	dd5ff06f          	j	4ca8 <fl_fopen+0x13c>
    4ed8:	00b00613          	li	a2,11
    4edc:	00410593          	addi	a1,sp,4
    4ee0:	000b8513          	mv	a0,s7
    4ee4:	ffffc097          	auipc	ra,0xffffc
    4ee8:	510080e7          	jalr	1296(ra) # 13f4 <memcpy>
    4eec:	f69ff06f          	j	4e54 <fl_fopen+0x2e8>
    4ef0:	fff00793          	li	a5,-1
    4ef4:	00042623          	sw	zero,12(s0)
    4ef8:	00042423          	sw	zero,8(s0)
    4efc:	42f42823          	sw	a5,1072(s0)
    4f00:	42042a23          	sw	zero,1076(s0)
    4f04:	00042823          	sw	zero,16(s0)
    4f08:	22f42423          	sw	a5,552(s0)
    4f0c:	22f42623          	sw	a5,556(s0)
    4f10:	aa090513          	addi	a0,s2,-1376
    4f14:	ffffe097          	auipc	ra,0xffffe
    4f18:	054080e7          	jalr	84(ra) # 2f68 <fatfs_fat_purge>
    4f1c:	d9dff06f          	j	4cb8 <fl_fopen+0x14c>
    4f20:	000a0513          	mv	a0,s4
    4f24:	ffffe097          	auipc	ra,0xffffe
    4f28:	6b0080e7          	jalr	1712(ra) # 35d4 <_open_file>
    4f2c:	00050413          	mv	s0,a0
    4f30:	e80412e3          	bnez	s0,4db4 <fl_fopen+0x248>
    4f34:	d95ff06f          	j	4cc8 <fl_fopen+0x15c>
    4f38:	00000413          	li	s0,0
    4f3c:	d9dff06f          	j	4cd8 <fl_fopen+0x16c>

00004f40 <cmd16>:
    4f40:	02000050 00001500                       P.......

00004f48 <acmd41>:
    4f48:	00004069 00000100                       i@......

00004f50 <cmd55>:
    4f50:	00000077 00000100                       w.......

00004f58 <cmd8>:
    4f58:	01000048 000087aa                       H.......

00004f60 <cmd0>:
    4f60:	00000040 00009500                       @.......

00004f68 <AUDIO>:
    4f68:	00018000                                ....

00004f6c <BUTTONS>:
    4f6c:	00010100                                ....

00004f70 <SDCARD>:
    4f70:	00010080                                ....

00004f74 <OLED_RST>:
    4f74:	00010010                                ....

00004f78 <OLED>:
    4f78:	00010008                                ....

00004f7c <LEDS>:
    4f7c:	00010004 73756d2f 00006369 74696e69     ..../music..init
    4f8c:	20647320 202e2e2e 00000000 000a6b6f      sd ... ....ok..
    4f9c:	20202020 3d3d3d3d 616c7020 20726579         ==== player 
    4fac:	3d3d3d3d 20202020 00000a0a 2e206f6e     ====    ....no .
    4fbc:	20776172 2f206e69 6973756d 00000a63     raw in /music...
    4fcc:	203e6425 000a7325 00006272 2073250a     %d> %s..rb...%s 
    4fdc:	20746f6e 6e756f66 00000a64 616c700a     not found....pla
    4fec:	676e6979 20732520 0a2e2e2e 00000000     ying %s ........
    4ffc:	676d692f 676d692f 7761722e 00000000     /img/img.raw....
    500c:	656e6f64 00000a2e 33323130 37363534     done....01234567
    501c:	42413938 46454443 00000000 5f544146     89ABCDEF....FAT_
    502c:	203a5346 6f727245 6f632072 20646c75     FS: Error could 
    503c:	20746f6e 64616f6c 54414620 74656420     not load FAT det
    504c:	736c6961 64252820 0a0d2129 00000000     ails (%d)!......

0000505c <font>:
    505c:	00000000 00002f00 00030000 14000003     ...../..........
    506c:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    507c:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    508c:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    509c:	00080800 00200000 20000000 02040810     ...... .... ....
    50ac:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    50bc:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    50cc:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    50dc:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    50ec:	00141400 0a110000 01000004 0007052d     ............-...
    50fc:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    510c:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    511c:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    512c:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    513c:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    514c:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    515c:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    516c:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    517c:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    518c:	003f2102 01020000 20000201 00000020     .!?........  ...
    519c:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    51ac:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    51bc:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    51cc:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    51dc:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    51ec:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    51fc:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    520c:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    521c:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    522c:	043f2100 02010000 00000102 00000000     .!?.............
    523c:	00000001 00000003 00000005 00000007     ................
    524c:	00000009 0000000e 00000010 00000012     ................
    525c:	00000014 00000016 00000018 0000001c     ................
    526c:	0000001e                                ....

00005270 <file_count>:
    5270:	00000000                                ....

00005274 <sdcard_while_loading_callback>:
    5274:	00000000                                ....

00005278 <back_color>:
	...

00005279 <front_color>:
    5279:	                                         ...

0000527c <cursor_y>:
    527c:	00000000                                ....

00005280 <cursor_x>:
    5280:	00000000                                ....

00005284 <f_putchar>:
    5284:	00000000                                ....

00005288 <_free_file_list>:
	...

00005290 <_open_file_list>:
	...

00005298 <_filelib_valid>:
    5298:	00000000                                ....

0000529c <_filelib_init>:
    529c:	00000000                                ....
