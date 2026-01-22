
code.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00000097          	auipc	ra,0x0
       8:	4f4080e7          	jalr	1268(ra) # 4f8 <main>
       c:	00000317          	auipc	t1,0x0
      10:	00830067          	jr	8(t1) # 14 <exit>

00000014 <exit>:
      14:	00000000          	.word	0x00000000
      18:	00008067          	ret

0000001c <set_volume_leds>:
      1c:	00800793          	li	a5,8
      20:	02a7d663          	bge	a5,a0,4c <set_volume_leds+0x30>
      24:	00800513          	li	a0,8
      28:	00000793          	li	a5,0
      2c:	00000713          	li	a4,0
      30:	00700613          	li	a2,7
      34:	00100593          	li	a1,1
      38:	02a79063          	bne	a5,a0,58 <set_volume_leds+0x3c>
      3c:	000057b7          	lui	a5,0x5
      40:	3cc7a783          	lw	a5,972(a5) # 53cc <LEDS>
      44:	00e7a023          	sw	a4,0(a5)
      48:	00008067          	ret
      4c:	fc055ee3          	bgez	a0,28 <set_volume_leds+0xc>
      50:	00000513          	li	a0,0
      54:	fd5ff06f          	j	28 <set_volume_leds+0xc>
      58:	40f606b3          	sub	a3,a2,a5
      5c:	00d596b3          	sll	a3,a1,a3
      60:	00d76733          	or	a4,a4,a3
      64:	00178793          	addi	a5,a5,1
      68:	fd1ff06f          	j	38 <set_volume_leds+0x1c>

0000006c <clear_audio>:
      6c:	ff010113          	addi	sp,sp,-16 # fff0 <_files+0x9c98>
      70:	000057b7          	lui	a5,0x5
      74:	00812423          	sw	s0,8(sp)
      78:	3ac7a403          	lw	s0,940(a5) # 53ac <AUDIO>
      7c:	00112623          	sw	ra,12(sp)
      80:	00912223          	sw	s1,4(sp)
      84:	00042703          	lw	a4,0(s0)
      88:	00042783          	lw	a5,0(s0)
      8c:	fef70ee3          	beq	a4,a5,88 <clear_audio+0x1c>
      90:	00042483          	lw	s1,0(s0)
      94:	20000613          	li	a2,512
      98:	00000593          	li	a1,0
      9c:	00048513          	mv	a0,s1
      a0:	00001097          	auipc	ra,0x1
      a4:	66c080e7          	jalr	1644(ra) # 170c <memset>
      a8:	00042783          	lw	a5,0(s0)
      ac:	fef48ee3          	beq	s1,a5,a8 <clear_audio+0x3c>
      b0:	00042483          	lw	s1,0(s0)
      b4:	20000613          	li	a2,512
      b8:	00000593          	li	a1,0
      bc:	00048513          	mv	a0,s1
      c0:	00001097          	auipc	ra,0x1
      c4:	64c080e7          	jalr	1612(ra) # 170c <memset>
      c8:	00042783          	lw	a5,0(s0)
      cc:	fef48ee3          	beq	s1,a5,c8 <clear_audio+0x5c>
      d0:	00c12083          	lw	ra,12(sp)
      d4:	00812403          	lw	s0,8(sp)
      d8:	00412483          	lw	s1,4(sp)
      dc:	01010113          	addi	sp,sp,16
      e0:	00008067          	ret

000000e4 <scan_files>:
      e4:	ec010113          	addi	sp,sp,-320
      e8:	00005537          	lui	a0,0x5
      ec:	13212823          	sw	s2,304(sp)
      f0:	00410593          	addi	a1,sp,4
      f4:	00005937          	lui	s2,0x5
      f8:	3d050513          	addi	a0,a0,976 # 53d0 <LEDS+0x4>
      fc:	12112e23          	sw	ra,316(sp)
     100:	12812c23          	sw	s0,312(sp)
     104:	12912a23          	sw	s1,308(sp)
     108:	13312623          	sw	s3,300(sp)
     10c:	13412423          	sw	s4,296(sp)
     110:	13512223          	sw	s5,292(sp)
     114:	6c092023          	sw	zero,1728(s2) # 56c0 <file_count>
     118:	00004097          	auipc	ra,0x4
     11c:	830080e7          	jalr	-2000(ra) # 3948 <fl_opendir>
     120:	02050863          	beqz	a0,150 <scan_files+0x6c>
     124:	01f00993          	li	s3,31
     128:	00300a13          	li	s4,3
     12c:	02e00a93          	li	s5,46
     130:	01010593          	addi	a1,sp,16
     134:	00410513          	addi	a0,sp,4
     138:	00004097          	auipc	ra,0x4
     13c:	ed4080e7          	jalr	-300(ra) # 400c <fl_readdir>
     140:	02050a63          	beqz	a0,174 <scan_files+0x90>
     144:	00410513          	addi	a0,sp,4
     148:	00002097          	auipc	ra,0x2
     14c:	3ac080e7          	jalr	940(ra) # 24f4 <fl_closedir>
     150:	13c12083          	lw	ra,316(sp)
     154:	13812403          	lw	s0,312(sp)
     158:	13412483          	lw	s1,308(sp)
     15c:	13012903          	lw	s2,304(sp)
     160:	12c12983          	lw	s3,300(sp)
     164:	12812a03          	lw	s4,296(sp)
     168:	12412a83          	lw	s5,292(sp)
     16c:	14010113          	addi	sp,sp,320
     170:	00008067          	ret
     174:	6c092403          	lw	s0,1728(s2)
     178:	fc89c6e3          	blt	s3,s0,144 <scan_files+0x60>
     17c:	11414783          	lbu	a5,276(sp)
     180:	fa0798e3          	bnez	a5,130 <scan_files+0x4c>
     184:	01010513          	addi	a0,sp,16
     188:	00001097          	auipc	ra,0x1
     18c:	5c4080e7          	jalr	1476(ra) # 174c <strlen>
     190:	faaa50e3          	bge	s4,a0,130 <scan_files+0x4c>
     194:	12050793          	addi	a5,a0,288
     198:	00278533          	add	a0,a5,sp
     19c:	eec54783          	lbu	a5,-276(a0)
     1a0:	f95798e3          	bne	a5,s5,130 <scan_files+0x4c>
     1a4:	eed54783          	lbu	a5,-275(a0)
     1a8:	05200713          	li	a4,82
     1ac:	0df7f793          	andi	a5,a5,223
     1b0:	f8e790e3          	bne	a5,a4,130 <scan_files+0x4c>
     1b4:	eee54783          	lbu	a5,-274(a0)
     1b8:	04100713          	li	a4,65
     1bc:	0df7f793          	andi	a5,a5,223
     1c0:	f6e798e3          	bne	a5,a4,130 <scan_files+0x4c>
     1c4:	eef54783          	lbu	a5,-273(a0)
     1c8:	05700713          	li	a4,87
     1cc:	0df7f793          	andi	a5,a5,223
     1d0:	f6e790e3          	bne	a5,a4,130 <scan_files+0x4c>
     1d4:	000057b7          	lui	a5,0x5
     1d8:	00641493          	slli	s1,s0,0x6
     1dc:	6f078793          	addi	a5,a5,1776 # 56f0 <files>
     1e0:	00f484b3          	add	s1,s1,a5
     1e4:	03f00613          	li	a2,63
     1e8:	01010593          	addi	a1,sp,16
     1ec:	00048513          	mv	a0,s1
     1f0:	00140413          	addi	s0,s0,1
     1f4:	00001097          	auipc	ra,0x1
     1f8:	5b8080e7          	jalr	1464(ra) # 17ac <strncpy>
     1fc:	02048fa3          	sb	zero,63(s1)
     200:	6c892023          	sw	s0,1728(s2)
     204:	f2dff06f          	j	130 <scan_files+0x4c>

00000208 <clear_screen>:
     208:	000057b7          	lui	a5,0x5
     20c:	3b47a783          	lw	a5,948(a5) # 53b4 <RGBSEL>
     210:	ff010113          	addi	sp,sp,-16
     214:	00812423          	sw	s0,8(sp)
     218:	00912223          	sw	s1,4(sp)
     21c:	01212023          	sw	s2,0(sp)
     220:	00112623          	sw	ra,12(sp)
     224:	00000413          	li	s0,0
     228:	00078913          	mv	s2,a5
     22c:	00300493          	li	s1,3
     230:	00892023          	sw	s0,0(s2)
     234:	00001097          	auipc	ra,0x1
     238:	7dc080e7          	jalr	2012(ra) # 1a10 <display_framebuffer>
     23c:	00004637          	lui	a2,0x4
     240:	00000593          	li	a1,0
     244:	00140413          	addi	s0,s0,1
     248:	00001097          	auipc	ra,0x1
     24c:	4c4080e7          	jalr	1220(ra) # 170c <memset>
     250:	fe9410e3          	bne	s0,s1,230 <clear_screen+0x28>
     254:	00812403          	lw	s0,8(sp)
     258:	00c12083          	lw	ra,12(sp)
     25c:	00412483          	lw	s1,4(sp)
     260:	00012903          	lw	s2,0(sp)
     264:	01010113          	addi	sp,sp,16
     268:	00002317          	auipc	t1,0x2
     26c:	94c30067          	jr	-1716(t1) # 1bb4 <display_refresh>

00000270 <render_image_rgb.constprop.0>:
     270:	e6010113          	addi	sp,sp,-416
     274:	18912a23          	sw	s1,404(sp)
     278:	18112e23          	sw	ra,412(sp)
     27c:	18812c23          	sw	s0,408(sp)
     280:	19212823          	sw	s2,400(sp)
     284:	19312623          	sw	s3,396(sp)
     288:	19412423          	sw	s4,392(sp)
     28c:	19512223          	sw	s5,388(sp)
     290:	00058493          	mv	s1,a1
     294:	00000793          	li	a5,0
     298:	08000713          	li	a4,128
     29c:	00054583          	lbu	a1,0(a0)
     2a0:	00f106b3          	add	a3,sp,a5
     2a4:	00b68023          	sb	a1,0(a3)
     2a8:	00154583          	lbu	a1,1(a0)
     2ac:	10010693          	addi	a3,sp,256
     2b0:	00f686b3          	add	a3,a3,a5
     2b4:	00b68023          	sb	a1,0(a3)
     2b8:	00254583          	lbu	a1,2(a0)
     2bc:	08010693          	addi	a3,sp,128
     2c0:	00f686b3          	add	a3,a3,a5
     2c4:	00b68023          	sb	a1,0(a3)
     2c8:	00178793          	addi	a5,a5,1
     2cc:	00c50533          	add	a0,a0,a2
     2d0:	fce796e3          	bne	a5,a4,29c <render_image_rgb.constprop.0+0x2c>
     2d4:	000057b7          	lui	a5,0x5
     2d8:	3b47a783          	lw	a5,948(a5) # 53b4 <RGBSEL>
     2dc:	00000413          	li	s0,0
     2e0:	00100a13          	li	s4,1
     2e4:	00078a93          	mv	s5,a5
     2e8:	08000993          	li	s3,128
     2ec:	00300913          	li	s2,3
     2f0:	008aa023          	sw	s0,0(s5)
     2f4:	00001097          	auipc	ra,0x1
     2f8:	71c080e7          	jalr	1820(ra) # 1a10 <display_framebuffer>
     2fc:	00950533          	add	a0,a0,s1
     300:	00000793          	li	a5,0
     304:	00f10733          	add	a4,sp,a5
     308:	00040a63          	beqz	s0,31c <render_image_rgb.constprop.0+0xac>
     30c:	08010713          	addi	a4,sp,128
     310:	01440463          	beq	s0,s4,318 <render_image_rgb.constprop.0+0xa8>
     314:	10010713          	addi	a4,sp,256
     318:	00f70733          	add	a4,a4,a5
     31c:	00074703          	lbu	a4,0(a4)
     320:	00178793          	addi	a5,a5,1
     324:	08050513          	addi	a0,a0,128
     328:	f8e50023          	sb	a4,-128(a0)
     32c:	fd379ce3          	bne	a5,s3,304 <render_image_rgb.constprop.0+0x94>
     330:	00140413          	addi	s0,s0,1
     334:	fb241ee3          	bne	s0,s2,2f0 <render_image_rgb.constprop.0+0x80>
     338:	19c12083          	lw	ra,412(sp)
     33c:	19812403          	lw	s0,408(sp)
     340:	19412483          	lw	s1,404(sp)
     344:	19012903          	lw	s2,400(sp)
     348:	18c12983          	lw	s3,396(sp)
     34c:	18812a03          	lw	s4,392(sp)
     350:	18412a83          	lw	s5,388(sp)
     354:	1a010113          	addi	sp,sp,416
     358:	00008067          	ret

0000035c <render_image_stream.constprop.0>:
     35c:	de010113          	addi	sp,sp,-544
     360:	00200613          	li	a2,2
     364:	00000593          	li	a1,0
     368:	20112e23          	sw	ra,540(sp)
     36c:	20812c23          	sw	s0,536(sp)
     370:	20912a23          	sw	s1,532(sp)
     374:	00050413          	mv	s0,a0
     378:	21212823          	sw	s2,528(sp)
     37c:	21312623          	sw	s3,524(sp)
     380:	21412423          	sw	s4,520(sp)
     384:	21512223          	sw	s5,516(sp)
     388:	00002097          	auipc	ra,0x2
     38c:	fd0080e7          	jalr	-48(ra) # 2358 <fl_fseek>
     390:	00040513          	mv	a0,s0
     394:	00002097          	auipc	ra,0x2
     398:	138080e7          	jalr	312(ra) # 24cc <fl_ftell>
     39c:	00050493          	mv	s1,a0
     3a0:	00000613          	li	a2,0
     3a4:	00000593          	li	a1,0
     3a8:	00040513          	mv	a0,s0
     3ac:	00002097          	auipc	ra,0x2
     3b0:	fac080e7          	jalr	-84(ra) # 2358 <fl_fseek>
     3b4:	000107b7          	lui	a5,0x10
     3b8:	06f4c663          	blt	s1,a5,424 <render_image_stream.constprop.0+0xc8>
     3bc:	00000493          	li	s1,0
     3c0:	08000913          	li	s2,128
     3c4:	00040693          	mv	a3,s0
     3c8:	20000613          	li	a2,512
     3cc:	00100593          	li	a1,1
     3d0:	00010513          	mv	a0,sp
     3d4:	00004097          	auipc	ra,0x4
     3d8:	600080e7          	jalr	1536(ra) # 49d4 <fl_fread>
     3dc:	20000793          	li	a5,512
     3e0:	02f51063          	bne	a0,a5,400 <render_image_stream.constprop.0+0xa4>
     3e4:	00048593          	mv	a1,s1
     3e8:	00400613          	li	a2,4
     3ec:	00010513          	mv	a0,sp
     3f0:	00148493          	addi	s1,s1,1
     3f4:	00000097          	auipc	ra,0x0
     3f8:	e7c080e7          	jalr	-388(ra) # 270 <render_image_rgb.constprop.0>
     3fc:	fd2494e3          	bne	s1,s2,3c4 <render_image_stream.constprop.0+0x68>
     400:	21c12083          	lw	ra,540(sp)
     404:	21812403          	lw	s0,536(sp)
     408:	21412483          	lw	s1,532(sp)
     40c:	21012903          	lw	s2,528(sp)
     410:	20c12983          	lw	s3,524(sp)
     414:	20812a03          	lw	s4,520(sp)
     418:	20412a83          	lw	s5,516(sp)
     41c:	22010113          	addi	sp,sp,544
     420:	00008067          	ret
     424:	0000c7b7          	lui	a5,0xc
     428:	04f4c663          	blt	s1,a5,474 <render_image_stream.constprop.0+0x118>
     42c:	00000493          	li	s1,0
     430:	08000913          	li	s2,128
     434:	00040693          	mv	a3,s0
     438:	18000613          	li	a2,384
     43c:	00100593          	li	a1,1
     440:	00010513          	mv	a0,sp
     444:	00004097          	auipc	ra,0x4
     448:	590080e7          	jalr	1424(ra) # 49d4 <fl_fread>
     44c:	18000793          	li	a5,384
     450:	faf518e3          	bne	a0,a5,400 <render_image_stream.constprop.0+0xa4>
     454:	00048593          	mv	a1,s1
     458:	00300613          	li	a2,3
     45c:	00010513          	mv	a0,sp
     460:	00148493          	addi	s1,s1,1
     464:	00000097          	auipc	ra,0x0
     468:	e0c080e7          	jalr	-500(ra) # 270 <render_image_rgb.constprop.0>
     46c:	fd2494e3          	bne	s1,s2,434 <render_image_stream.constprop.0+0xd8>
     470:	f91ff06f          	j	400 <render_image_stream.constprop.0+0xa4>
     474:	000047b7          	lui	a5,0x4
     478:	f8f4c4e3          	blt	s1,a5,400 <render_image_stream.constprop.0+0xa4>
     47c:	000057b7          	lui	a5,0x5
     480:	3b47a783          	lw	a5,948(a5) # 53b4 <RGBSEL>
     484:	00000493          	li	s1,0
     488:	00300993          	li	s3,3
     48c:	00078a93          	mv	s5,a5
     490:	00040693          	mv	a3,s0
     494:	08000613          	li	a2,128
     498:	00100593          	li	a1,1
     49c:	00010513          	mv	a0,sp
     4a0:	00004097          	auipc	ra,0x4
     4a4:	534080e7          	jalr	1332(ra) # 49d4 <fl_fread>
     4a8:	08000793          	li	a5,128
     4ac:	f4f51ae3          	bne	a0,a5,400 <render_image_stream.constprop.0+0xa4>
     4b0:	00000913          	li	s2,0
     4b4:	08000a13          	li	s4,128
     4b8:	012aa023          	sw	s2,0(s5)
     4bc:	00001097          	auipc	ra,0x1
     4c0:	554080e7          	jalr	1364(ra) # 1a10 <display_framebuffer>
     4c4:	00950533          	add	a0,a0,s1
     4c8:	00000793          	li	a5,0
     4cc:	00f10733          	add	a4,sp,a5
     4d0:	00074703          	lbu	a4,0(a4)
     4d4:	00178793          	addi	a5,a5,1
     4d8:	08050513          	addi	a0,a0,128
     4dc:	f8e50023          	sb	a4,-128(a0)
     4e0:	ff4796e3          	bne	a5,s4,4cc <render_image_stream.constprop.0+0x170>
     4e4:	00190913          	addi	s2,s2,1
     4e8:	fd3918e3          	bne	s2,s3,4b8 <render_image_stream.constprop.0+0x15c>
     4ec:	00148493          	addi	s1,s1,1
     4f0:	faf490e3          	bne	s1,a5,490 <render_image_stream.constprop.0+0x134>
     4f4:	f0dff06f          	j	400 <render_image_stream.constprop.0+0xa4>

000004f8 <main>:
     4f8:	000057b7          	lui	a5,0x5
     4fc:	3cc7a783          	lw	a5,972(a5) # 53cc <LEDS>
     500:	f1010113          	addi	sp,sp,-240
     504:	0e112623          	sw	ra,236(sp)
     508:	0e812423          	sw	s0,232(sp)
     50c:	0e912223          	sw	s1,228(sp)
     510:	0f212023          	sw	s2,224(sp)
     514:	0d312e23          	sw	s3,220(sp)
     518:	0d412c23          	sw	s4,216(sp)
     51c:	0d512a23          	sw	s5,212(sp)
     520:	0d612823          	sw	s6,208(sp)
     524:	0d712623          	sw	s7,204(sp)
     528:	0d812423          	sw	s8,200(sp)
     52c:	0d912223          	sw	s9,196(sp)
     530:	0da12023          	sw	s10,192(sp)
     534:	0bb12e23          	sw	s11,188(sp)
     538:	0007a023          	sw	zero,0(a5)
     53c:	000054b7          	lui	s1,0x5
     540:	000057b7          	lui	a5,0x5
     544:	3b87a983          	lw	s3,952(a5) # 53b8 <VOLUME>
     548:	3804a783          	lw	a5,896(s1) # 5380 <g_volume>
     54c:	00005737          	lui	a4,0x5
     550:	00001937          	lui	s2,0x1
     554:	00f9a023          	sw	a5,0(s3)
     558:	000027b7          	lui	a5,0x2
     55c:	a4478793          	addi	a5,a5,-1468 # 1a44 <display_putchar>
     560:	6cf72a23          	sw	a5,1748(a4) # 56d4 <f_putchar>
     564:	00001097          	auipc	ra,0x1
     568:	38c080e7          	jalr	908(ra) # 18f0 <oled_init>
     56c:	00001097          	auipc	ra,0x1
     570:	390080e7          	jalr	912(ra) # 18fc <oled_fullscreen>
     574:	00000513          	li	a0,0
     578:	00001097          	auipc	ra,0x1
     57c:	41c080e7          	jalr	1052(ra) # 1994 <oled_clear>
     580:	00000593          	li	a1,0
     584:	00000513          	li	a0,0
     588:	00001097          	auipc	ra,0x1
     58c:	494080e7          	jalr	1172(ra) # 1a1c <display_set_cursor>
     590:	00000593          	li	a1,0
     594:	0ff00513          	li	a0,255
     598:	00001097          	auipc	ra,0x1
     59c:	498080e7          	jalr	1176(ra) # 1a30 <display_set_front_back_color>
     5a0:	00005537          	lui	a0,0x5
     5a4:	3d850513          	addi	a0,a0,984 # 53d8 <LEDS+0xc>
     5a8:	00001097          	auipc	ra,0x1
     5ac:	778080e7          	jalr	1912(ra) # 1d20 <printf>
     5b0:	00001097          	auipc	ra,0x1
     5b4:	604080e7          	jalr	1540(ra) # 1bb4 <display_refresh>
     5b8:	00001437          	lui	s0,0x1
     5bc:	00001097          	auipc	ra,0x1
     5c0:	e78080e7          	jalr	-392(ra) # 1434 <sdcard_init>
     5c4:	00002097          	auipc	ra,0x2
     5c8:	d24080e7          	jalr	-732(ra) # 22e8 <fl_init>
     5cc:	65090593          	addi	a1,s2,1616 # 1650 <sdcard_writesector>
     5d0:	5fc40513          	addi	a0,s0,1532 # 15fc <sdcard_readsector>
     5d4:	00003097          	auipc	ra,0x3
     5d8:	d48080e7          	jalr	-696(ra) # 331c <fl_attach_media>
     5dc:	fe0518e3          	bnez	a0,5cc <main+0xd4>
     5e0:	00000097          	auipc	ra,0x0
     5e4:	a8c080e7          	jalr	-1396(ra) # 6c <clear_audio>
     5e8:	00005537          	lui	a0,0x5
     5ec:	3e850513          	addi	a0,a0,1000 # 53e8 <LEDS+0x1c>
     5f0:	00001097          	auipc	ra,0x1
     5f4:	730080e7          	jalr	1840(ra) # 1d20 <printf>
     5f8:	00001097          	auipc	ra,0x1
     5fc:	5bc080e7          	jalr	1468(ra) # 1bb4 <display_refresh>
     600:	00000097          	auipc	ra,0x0
     604:	ae4080e7          	jalr	-1308(ra) # e4 <scan_files>
     608:	000057b7          	lui	a5,0x5
     60c:	3bc7aa03          	lw	s4,956(a5) # 53bc <BUTTONS>
     610:	000057b7          	lui	a5,0x5
     614:	3ac7a783          	lw	a5,940(a5) # 53ac <AUDIO>
     618:	000a2903          	lw	s2,0(s4)
     61c:	00000413          	li	s0,0
     620:	00005cb7          	lui	s9,0x5
     624:	01a97913          	andi	s2,s2,26
     628:	00005bb7          	lui	s7,0x5
     62c:	00f12423          	sw	a5,8(sp)
     630:	00000097          	auipc	ra,0x0
     634:	bd8080e7          	jalr	-1064(ra) # 208 <clear_screen>
     638:	00000593          	li	a1,0
     63c:	00000513          	li	a0,0
     640:	00001097          	auipc	ra,0x1
     644:	3dc080e7          	jalr	988(ra) # 1a1c <display_set_cursor>
     648:	0ff00593          	li	a1,255
     64c:	00000513          	li	a0,0
     650:	00001097          	auipc	ra,0x1
     654:	3e0080e7          	jalr	992(ra) # 1a30 <display_set_front_back_color>
     658:	00005537          	lui	a0,0x5
     65c:	3ec50513          	addi	a0,a0,1004 # 53ec <LEDS+0x20>
     660:	00001097          	auipc	ra,0x1
     664:	6c0080e7          	jalr	1728(ra) # 1d20 <printf>
     668:	00000593          	li	a1,0
     66c:	0ff00513          	li	a0,255
     670:	00001097          	auipc	ra,0x1
     674:	3c0080e7          	jalr	960(ra) # 1a30 <display_set_front_back_color>
     678:	00005b37          	lui	s6,0x5
     67c:	6c0b2783          	lw	a5,1728(s6) # 56c0 <file_count>
     680:	04078663          	beqz	a5,6cc <main+0x1d4>
     684:	6f0c8c13          	addi	s8,s9,1776 # 56f0 <files>
     688:	00000a93          	li	s5,0
     68c:	6c0b2783          	lw	a5,1728(s6)
     690:	04fad663          	bge	s5,a5,6dc <main+0x1e4>
     694:	15541c63          	bne	s0,s5,7ec <main+0x2f4>
     698:	0ff00593          	li	a1,255
     69c:	00000513          	li	a0,0
     6a0:	00001097          	auipc	ra,0x1
     6a4:	390080e7          	jalr	912(ra) # 1a30 <display_set_front_back_color>
     6a8:	000057b7          	lui	a5,0x5
     6ac:	000c0613          	mv	a2,s8
     6b0:	000a8593          	mv	a1,s5
     6b4:	41c78513          	addi	a0,a5,1052 # 541c <LEDS+0x50>
     6b8:	00001097          	auipc	ra,0x1
     6bc:	668080e7          	jalr	1640(ra) # 1d20 <printf>
     6c0:	001a8a93          	addi	s5,s5,1
     6c4:	040c0c13          	addi	s8,s8,64
     6c8:	fc5ff06f          	j	68c <main+0x194>
     6cc:	00005537          	lui	a0,0x5
     6d0:	40850513          	addi	a0,a0,1032 # 5408 <LEDS+0x3c>
     6d4:	00001097          	auipc	ra,0x1
     6d8:	64c080e7          	jalr	1612(ra) # 1d20 <printf>
     6dc:	00001097          	auipc	ra,0x1
     6e0:	4d8080e7          	jalr	1240(ra) # 1bb4 <display_refresh>
     6e4:	000a2a83          	lw	s5,0(s4)
     6e8:	fff94913          	not	s2,s2
     6ec:	01aafa93          	andi	s5,s5,26
     6f0:	01597933          	and	s2,s2,s5
     6f4:	00897793          	andi	a5,s2,8
     6f8:	02078063          	beqz	a5,718 <main+0x220>
     6fc:	6c0b2583          	lw	a1,1728(s6)
     700:	00058c63          	beqz	a1,718 <main+0x220>
     704:	fff40513          	addi	a0,s0,-1
     708:	00b50533          	add	a0,a0,a1
     70c:	00001097          	auipc	ra,0x1
     710:	fd0080e7          	jalr	-48(ra) # 16dc <__modsi3>
     714:	00050413          	mv	s0,a0
     718:	01097793          	andi	a5,s2,16
     71c:	00078e63          	beqz	a5,738 <main+0x240>
     720:	6c0b2583          	lw	a1,1728(s6)
     724:	00058a63          	beqz	a1,738 <main+0x240>
     728:	00140513          	addi	a0,s0,1
     72c:	00001097          	auipc	ra,0x1
     730:	fb0080e7          	jalr	-80(ra) # 16dc <__modsi3>
     734:	00050413          	mv	s0,a0
     738:	00297913          	andi	s2,s2,2
     73c:	30090863          	beqz	s2,a4c <main+0x554>
     740:	6c0b2783          	lw	a5,1728(s6)
     744:	30f05463          	blez	a5,a4c <main+0x554>
     748:	000057b7          	lui	a5,0x5
     74c:	6f078793          	addi	a5,a5,1776 # 56f0 <files>
     750:	00641b13          	slli	s6,s0,0x6
     754:	00fb0b33          	add	s6,s6,a5
     758:	737577b7          	lui	a5,0x73757
     75c:	d2f78793          	addi	a5,a5,-721 # 73756d2f <__stacktop+0x73746d2f>
     760:	00f12c23          	sw	a5,24(sp)
     764:	000067b7          	lui	a5,0x6
     768:	36978793          	addi	a5,a5,873 # 6369 <_files+0x11>
     76c:	00f11e23          	sh	a5,28(sp)
     770:	02f00793          	li	a5,47
     774:	00f10f23          	sb	a5,30(sp)
     778:	04900693          	li	a3,73
     77c:	00700793          	li	a5,7
     780:	00fb0733          	add	a4,s6,a5
     784:	ff974703          	lbu	a4,-7(a4)
     788:	00070663          	beqz	a4,794 <main+0x29c>
     78c:	06d79663          	bne	a5,a3,7f8 <main+0x300>
     790:	04900793          	li	a5,73
     794:	01010713          	addi	a4,sp,16
     798:	0a078793          	addi	a5,a5,160
     79c:	00e787b3          	add	a5,a5,a4
     7a0:	424b8593          	addi	a1,s7,1060 # 5424 <LEDS+0x58>
     7a4:	01810513          	addi	a0,sp,24
     7a8:	f6078423          	sb	zero,-152(a5)
     7ac:	00005097          	auipc	ra,0x5
     7b0:	800080e7          	jalr	-2048(ra) # 4fac <fl_fopen>
     7b4:	00a12223          	sw	a0,4(sp)
     7b8:	04051a63          	bnez	a0,80c <main+0x314>
     7bc:	00000593          	li	a1,0
     7c0:	0ff00513          	li	a0,255
     7c4:	00001097          	auipc	ra,0x1
     7c8:	26c080e7          	jalr	620(ra) # 1a30 <display_set_front_back_color>
     7cc:	00005537          	lui	a0,0x5
     7d0:	000b0593          	mv	a1,s6
     7d4:	42850513          	addi	a0,a0,1064 # 5428 <LEDS+0x5c>
     7d8:	00001097          	auipc	ra,0x1
     7dc:	548080e7          	jalr	1352(ra) # 1d20 <printf>
     7e0:	00001097          	auipc	ra,0x1
     7e4:	3d4080e7          	jalr	980(ra) # 1bb4 <display_refresh>
     7e8:	2640006f          	j	a4c <main+0x554>
     7ec:	00000593          	li	a1,0
     7f0:	0ff00513          	li	a0,255
     7f4:	eadff06f          	j	6a0 <main+0x1a8>
     7f8:	01810613          	addi	a2,sp,24
     7fc:	00f60633          	add	a2,a2,a5
     800:	00e60023          	sb	a4,0(a2) # 4000 <fatfs_list_directory_next+0x238>
     804:	00178793          	addi	a5,a5,1
     808:	f79ff06f          	j	780 <main+0x288>
     80c:	0ff00593          	li	a1,255
     810:	00000513          	li	a0,0
     814:	00001097          	auipc	ra,0x1
     818:	21c080e7          	jalr	540(ra) # 1a30 <display_set_front_back_color>
     81c:	00005537          	lui	a0,0x5
     820:	000b0593          	mv	a1,s6
     824:	43850513          	addi	a0,a0,1080 # 5438 <LEDS+0x6c>
     828:	00001097          	auipc	ra,0x1
     82c:	4f8080e7          	jalr	1272(ra) # 1d20 <printf>
     830:	00001097          	auipc	ra,0x1
     834:	384080e7          	jalr	900(ra) # 1bb4 <display_refresh>
     838:	676d77b7          	lui	a5,0x676d7
     83c:	92f78793          	addi	a5,a5,-1745 # 676d692f <__stacktop+0x676c692f>
     840:	06f12223          	sw	a5,100(sp)
     844:	02f00793          	li	a5,47
     848:	06f10423          	sb	a5,104(sp)
     84c:	04400693          	li	a3,68
     850:	00500793          	li	a5,5
     854:	00fb0733          	add	a4,s6,a5
     858:	ffb74703          	lbu	a4,-5(a4)
     85c:	00070663          	beqz	a4,868 <main+0x370>
     860:	12d79863          	bne	a5,a3,990 <main+0x498>
     864:	04400793          	li	a5,68
     868:	01010713          	addi	a4,sp,16
     86c:	0a078793          	addi	a5,a5,160
     870:	00e787b3          	add	a5,a5,a4
     874:	05f00713          	li	a4,95
     878:	fae78823          	sb	a4,-80(a5)
     87c:	06900713          	li	a4,105
     880:	fae788a3          	sb	a4,-79(a5)
     884:	06d00713          	li	a4,109
     888:	fae78923          	sb	a4,-78(a5)
     88c:	06700713          	li	a4,103
     890:	fae789a3          	sb	a4,-77(a5)
     894:	02e00713          	li	a4,46
     898:	fae78a23          	sb	a4,-76(a5)
     89c:	07200713          	li	a4,114
     8a0:	fae78aa3          	sb	a4,-75(a5)
     8a4:	06100713          	li	a4,97
     8a8:	fae78b23          	sb	a4,-74(a5)
     8ac:	424b8593          	addi	a1,s7,1060
     8b0:	07700713          	li	a4,119
     8b4:	06410513          	addi	a0,sp,100
     8b8:	fae78ba3          	sb	a4,-73(a5)
     8bc:	fa078c23          	sb	zero,-72(a5)
     8c0:	00004097          	auipc	ra,0x4
     8c4:	6ec080e7          	jalr	1772(ra) # 4fac <fl_fopen>
     8c8:	00051e63          	bnez	a0,8e4 <main+0x3ec>
     8cc:	00005537          	lui	a0,0x5
     8d0:	424b8593          	addi	a1,s7,1060
     8d4:	44c50513          	addi	a0,a0,1100 # 544c <LEDS+0x80>
     8d8:	00004097          	auipc	ra,0x4
     8dc:	6d4080e7          	jalr	1748(ra) # 4fac <fl_fopen>
     8e0:	02050263          	beqz	a0,904 <main+0x40c>
     8e4:	00a12623          	sw	a0,12(sp)
     8e8:	00000097          	auipc	ra,0x0
     8ec:	a74080e7          	jalr	-1420(ra) # 35c <render_image_stream.constprop.0>
     8f0:	00c12503          	lw	a0,12(sp)
     8f4:	00004097          	auipc	ra,0x4
     8f8:	000080e7          	jalr	ra # 48f4 <fl_fclose>
     8fc:	00001097          	auipc	ra,0x1
     900:	2b8080e7          	jalr	696(ra) # 1bb4 <display_refresh>
     904:	fffff097          	auipc	ra,0xfffff
     908:	768080e7          	jalr	1896(ra) # 6c <clear_audio>
     90c:	3804a503          	lw	a0,896(s1)
     910:	f8000d13          	li	s10,-128
     914:	00700d93          	li	s11,7
     918:	00a9a023          	sw	a0,0(s3)
     91c:	fffff097          	auipc	ra,0xfffff
     920:	700080e7          	jalr	1792(ra) # 1c <set_volume_leds>
     924:	000a2783          	lw	a5,0(s4)
     928:	01a7f793          	andi	a5,a5,26
     92c:	00f12623          	sw	a5,12(sp)
     930:	00812783          	lw	a5,8(sp)
     934:	00412683          	lw	a3,4(sp)
     938:	20000613          	li	a2,512
     93c:	0007ac03          	lw	s8,0(a5)
     940:	00100593          	li	a1,1
     944:	000c0513          	mv	a0,s8
     948:	00004097          	auipc	ra,0x4
     94c:	08c080e7          	jalr	140(ra) # 49d4 <fl_fread>
     950:	00c12783          	lw	a5,12(sp)
     954:	04a04e63          	bgtz	a0,9b0 <main+0x4b8>
     958:	00412503          	lw	a0,4(sp)
     95c:	00004097          	auipc	ra,0x4
     960:	f98080e7          	jalr	-104(ra) # 48f4 <fl_fclose>
     964:	fffff097          	auipc	ra,0xfffff
     968:	708080e7          	jalr	1800(ra) # 6c <clear_audio>
     96c:	00000593          	li	a1,0
     970:	0ff00513          	li	a0,255
     974:	00001097          	auipc	ra,0x1
     978:	0bc080e7          	jalr	188(ra) # 1a30 <display_set_front_back_color>
     97c:	00005537          	lui	a0,0x5
     980:	45c50513          	addi	a0,a0,1116 # 545c <LEDS+0x90>
     984:	00001097          	auipc	ra,0x1
     988:	39c080e7          	jalr	924(ra) # 1d20 <printf>
     98c:	e55ff06f          	j	7e0 <main+0x2e8>
     990:	06410613          	addi	a2,sp,100
     994:	00f60633          	add	a2,a2,a5
     998:	00e60023          	sb	a4,0(a2)
     99c:	00178793          	addi	a5,a5,1
     9a0:	eb5ff06f          	j	854 <main+0x35c>
     9a4:	01850733          	add	a4,a0,s8
     9a8:	01a70023          	sb	s10,0(a4)
     9ac:	00150513          	addi	a0,a0,1
     9b0:	1ff00713          	li	a4,511
     9b4:	fea758e3          	bge	a4,a0,9a4 <main+0x4ac>
     9b8:	00812703          	lw	a4,8(sp)
     9bc:	00072703          	lw	a4,0(a4)
     9c0:	f6ec16e3          	bne	s8,a4,92c <main+0x434>
     9c4:	000a2b03          	lw	s6,0(s4)
     9c8:	fff7c793          	not	a5,a5
     9cc:	01ab7b13          	andi	s6,s6,26
     9d0:	0167f933          	and	s2,a5,s6
     9d4:	00897713          	andi	a4,s2,8
     9d8:	02070263          	beqz	a4,9fc <main+0x504>
     9dc:	3804a703          	lw	a4,896(s1)
     9e0:	00edc663          	blt	s11,a4,9ec <main+0x4f4>
     9e4:	00170713          	addi	a4,a4,1
     9e8:	38e4a023          	sw	a4,896(s1)
     9ec:	3804a503          	lw	a0,896(s1)
     9f0:	00a9a023          	sw	a0,0(s3)
     9f4:	fffff097          	auipc	ra,0xfffff
     9f8:	628080e7          	jalr	1576(ra) # 1c <set_volume_leds>
     9fc:	01097713          	andi	a4,s2,16
     a00:	02070463          	beqz	a4,a28 <main+0x530>
     a04:	3804a703          	lw	a4,896(s1)
     a08:	00100793          	li	a5,1
     a0c:	00e7d663          	bge	a5,a4,a18 <main+0x520>
     a10:	fff70713          	addi	a4,a4,-1
     a14:	38e4a023          	sw	a4,896(s1)
     a18:	3804a503          	lw	a0,896(s1)
     a1c:	00a9a023          	sw	a0,0(s3)
     a20:	fffff097          	auipc	ra,0xfffff
     a24:	5fc080e7          	jalr	1532(ra) # 1c <set_volume_leds>
     a28:	00297793          	andi	a5,s2,2
     a2c:	02078463          	beqz	a5,a54 <main+0x55c>
     a30:	00412503          	lw	a0,4(sp)
     a34:	00004097          	auipc	ra,0x4
     a38:	ec0080e7          	jalr	-320(ra) # 48f4 <fl_fclose>
     a3c:	fffff097          	auipc	ra,0xfffff
     a40:	630080e7          	jalr	1584(ra) # 6c <clear_audio>
     a44:	fffff097          	auipc	ra,0xfffff
     a48:	7c4080e7          	jalr	1988(ra) # 208 <clear_screen>
     a4c:	000a8913          	mv	s2,s5
     a50:	be9ff06f          	j	638 <main+0x140>
     a54:	000b0793          	mv	a5,s6
     a58:	f61ff06f          	j	9b8 <main+0x4c0>

00000a5c <sdcard_ponder>:
     a5c:	fe010113          	addi	sp,sp,-32
     a60:	00812e23          	sw	s0,28(sp)
     a64:	02010413          	addi	s0,sp,32
     a68:	fe042623          	sw	zero,-20(s0)
     a6c:	fe042423          	sw	zero,-24(s0)
     a70:	0380006f          	j	aa8 <sdcard_ponder+0x4c>
     a74:	000057b7          	lui	a5,0x5
     a78:	3c07a783          	lw	a5,960(a5) # 53c0 <SDCARD>
     a7c:	fec42703          	lw	a4,-20(s0)
     a80:	00676713          	ori	a4,a4,6
     a84:	00e7a023          	sw	a4,0(a5)
     a88:	00100713          	li	a4,1
     a8c:	fec42783          	lw	a5,-20(s0)
     a90:	40f707b3          	sub	a5,a4,a5
     a94:	fef42623          	sw	a5,-20(s0)
     a98:	00000013          	nop
     a9c:	fe842783          	lw	a5,-24(s0)
     aa0:	00178793          	addi	a5,a5,1
     aa4:	fef42423          	sw	a5,-24(s0)
     aa8:	fe842703          	lw	a4,-24(s0)
     aac:	00f00793          	li	a5,15
     ab0:	fce7d2e3          	bge	a5,a4,a74 <sdcard_ponder+0x18>
     ab4:	00000013          	nop
     ab8:	00000013          	nop
     abc:	01c12403          	lw	s0,28(sp)
     ac0:	02010113          	addi	sp,sp,32
     ac4:	00008067          	ret

00000ac8 <sdcard_send>:
     ac8:	fd010113          	addi	sp,sp,-48
     acc:	02112623          	sw	ra,44(sp)
     ad0:	02812423          	sw	s0,40(sp)
     ad4:	03010413          	addi	s0,sp,48
     ad8:	fca42e23          	sw	a0,-36(s0)
     adc:	fe042623          	sw	zero,-20(s0)
     ae0:	fe042423          	sw	zero,-24(s0)
     ae4:	fdc42783          	lw	a5,-36(s0)
     ae8:	fef42223          	sw	a5,-28(s0)
     aec:	fe442783          	lw	a5,-28(s0)
     af0:	4077d793          	srai	a5,a5,0x7
     af4:	0017f793          	andi	a5,a5,1
     af8:	fef42423          	sw	a5,-24(s0)
     afc:	fec42783          	lw	a5,-20(s0)
     b00:	fe442703          	lw	a4,-28(s0)
     b04:	00f717b3          	sll	a5,a4,a5
     b08:	fef42223          	sw	a5,-28(s0)
     b0c:	fe842783          	lw	a5,-24(s0)
     b10:	00179693          	slli	a3,a5,0x1
     b14:	000057b7          	lui	a5,0x5
     b18:	3c07a783          	lw	a5,960(a5) # 53c0 <SDCARD>
     b1c:	fec42703          	lw	a4,-20(s0)
     b20:	00e6e733          	or	a4,a3,a4
     b24:	00e7a023          	sw	a4,0(a5)
     b28:	00100713          	li	a4,1
     b2c:	fec42783          	lw	a5,-20(s0)
     b30:	40f707b3          	sub	a5,a4,a5
     b34:	fef42623          	sw	a5,-20(s0)
     b38:	fe442783          	lw	a5,-28(s0)
     b3c:	4077d793          	srai	a5,a5,0x7
     b40:	0017f793          	andi	a5,a5,1
     b44:	fef42423          	sw	a5,-24(s0)
     b48:	fec42783          	lw	a5,-20(s0)
     b4c:	fe442703          	lw	a4,-28(s0)
     b50:	00f717b3          	sll	a5,a4,a5
     b54:	fef42223          	sw	a5,-28(s0)
     b58:	fe842783          	lw	a5,-24(s0)
     b5c:	00179693          	slli	a3,a5,0x1
     b60:	000057b7          	lui	a5,0x5
     b64:	3c07a783          	lw	a5,960(a5) # 53c0 <SDCARD>
     b68:	fec42703          	lw	a4,-20(s0)
     b6c:	00e6e733          	or	a4,a3,a4
     b70:	00e7a023          	sw	a4,0(a5)
     b74:	00100713          	li	a4,1
     b78:	fec42783          	lw	a5,-20(s0)
     b7c:	40f707b3          	sub	a5,a4,a5
     b80:	fef42623          	sw	a5,-20(s0)
     b84:	fe442783          	lw	a5,-28(s0)
     b88:	4077d793          	srai	a5,a5,0x7
     b8c:	0017f793          	andi	a5,a5,1
     b90:	fef42423          	sw	a5,-24(s0)
     b94:	fec42783          	lw	a5,-20(s0)
     b98:	fe442703          	lw	a4,-28(s0)
     b9c:	00f717b3          	sll	a5,a4,a5
     ba0:	fef42223          	sw	a5,-28(s0)
     ba4:	fe842783          	lw	a5,-24(s0)
     ba8:	00179693          	slli	a3,a5,0x1
     bac:	000057b7          	lui	a5,0x5
     bb0:	3c07a783          	lw	a5,960(a5) # 53c0 <SDCARD>
     bb4:	fec42703          	lw	a4,-20(s0)
     bb8:	00e6e733          	or	a4,a3,a4
     bbc:	00e7a023          	sw	a4,0(a5)
     bc0:	00100713          	li	a4,1
     bc4:	fec42783          	lw	a5,-20(s0)
     bc8:	40f707b3          	sub	a5,a4,a5
     bcc:	fef42623          	sw	a5,-20(s0)
     bd0:	fe442783          	lw	a5,-28(s0)
     bd4:	4077d793          	srai	a5,a5,0x7
     bd8:	0017f793          	andi	a5,a5,1
     bdc:	fef42423          	sw	a5,-24(s0)
     be0:	fec42783          	lw	a5,-20(s0)
     be4:	fe442703          	lw	a4,-28(s0)
     be8:	00f717b3          	sll	a5,a4,a5
     bec:	fef42223          	sw	a5,-28(s0)
     bf0:	fe842783          	lw	a5,-24(s0)
     bf4:	00179693          	slli	a3,a5,0x1
     bf8:	000057b7          	lui	a5,0x5
     bfc:	3c07a783          	lw	a5,960(a5) # 53c0 <SDCARD>
     c00:	fec42703          	lw	a4,-20(s0)
     c04:	00e6e733          	or	a4,a3,a4
     c08:	00e7a023          	sw	a4,0(a5)
     c0c:	00100713          	li	a4,1
     c10:	fec42783          	lw	a5,-20(s0)
     c14:	40f707b3          	sub	a5,a4,a5
     c18:	fef42623          	sw	a5,-20(s0)
     c1c:	fe442783          	lw	a5,-28(s0)
     c20:	4077d793          	srai	a5,a5,0x7
     c24:	0017f793          	andi	a5,a5,1
     c28:	fef42423          	sw	a5,-24(s0)
     c2c:	fec42783          	lw	a5,-20(s0)
     c30:	fe442703          	lw	a4,-28(s0)
     c34:	00f717b3          	sll	a5,a4,a5
     c38:	fef42223          	sw	a5,-28(s0)
     c3c:	fe842783          	lw	a5,-24(s0)
     c40:	00179693          	slli	a3,a5,0x1
     c44:	000057b7          	lui	a5,0x5
     c48:	3c07a783          	lw	a5,960(a5) # 53c0 <SDCARD>
     c4c:	fec42703          	lw	a4,-20(s0)
     c50:	00e6e733          	or	a4,a3,a4
     c54:	00e7a023          	sw	a4,0(a5)
     c58:	00100713          	li	a4,1
     c5c:	fec42783          	lw	a5,-20(s0)
     c60:	40f707b3          	sub	a5,a4,a5
     c64:	fef42623          	sw	a5,-20(s0)
     c68:	fe442783          	lw	a5,-28(s0)
     c6c:	4077d793          	srai	a5,a5,0x7
     c70:	0017f793          	andi	a5,a5,1
     c74:	fef42423          	sw	a5,-24(s0)
     c78:	fec42783          	lw	a5,-20(s0)
     c7c:	fe442703          	lw	a4,-28(s0)
     c80:	00f717b3          	sll	a5,a4,a5
     c84:	fef42223          	sw	a5,-28(s0)
     c88:	fe842783          	lw	a5,-24(s0)
     c8c:	00179693          	slli	a3,a5,0x1
     c90:	000057b7          	lui	a5,0x5
     c94:	3c07a783          	lw	a5,960(a5) # 53c0 <SDCARD>
     c98:	fec42703          	lw	a4,-20(s0)
     c9c:	00e6e733          	or	a4,a3,a4
     ca0:	00e7a023          	sw	a4,0(a5)
     ca4:	00100713          	li	a4,1
     ca8:	fec42783          	lw	a5,-20(s0)
     cac:	40f707b3          	sub	a5,a4,a5
     cb0:	fef42623          	sw	a5,-20(s0)
     cb4:	fe442783          	lw	a5,-28(s0)
     cb8:	4077d793          	srai	a5,a5,0x7
     cbc:	0017f793          	andi	a5,a5,1
     cc0:	fef42423          	sw	a5,-24(s0)
     cc4:	fec42783          	lw	a5,-20(s0)
     cc8:	fe442703          	lw	a4,-28(s0)
     ccc:	00f717b3          	sll	a5,a4,a5
     cd0:	fef42223          	sw	a5,-28(s0)
     cd4:	fe842783          	lw	a5,-24(s0)
     cd8:	00179693          	slli	a3,a5,0x1
     cdc:	000057b7          	lui	a5,0x5
     ce0:	3c07a783          	lw	a5,960(a5) # 53c0 <SDCARD>
     ce4:	fec42703          	lw	a4,-20(s0)
     ce8:	00e6e733          	or	a4,a3,a4
     cec:	00e7a023          	sw	a4,0(a5)
     cf0:	00100713          	li	a4,1
     cf4:	fec42783          	lw	a5,-20(s0)
     cf8:	40f707b3          	sub	a5,a4,a5
     cfc:	fef42623          	sw	a5,-20(s0)
     d00:	fe442783          	lw	a5,-28(s0)
     d04:	4077d793          	srai	a5,a5,0x7
     d08:	0017f793          	andi	a5,a5,1
     d0c:	fef42423          	sw	a5,-24(s0)
     d10:	fec42783          	lw	a5,-20(s0)
     d14:	fe442703          	lw	a4,-28(s0)
     d18:	00f717b3          	sll	a5,a4,a5
     d1c:	fef42223          	sw	a5,-28(s0)
     d20:	fe842783          	lw	a5,-24(s0)
     d24:	00179693          	slli	a3,a5,0x1
     d28:	000057b7          	lui	a5,0x5
     d2c:	3c07a783          	lw	a5,960(a5) # 53c0 <SDCARD>
     d30:	fec42703          	lw	a4,-20(s0)
     d34:	00e6e733          	or	a4,a3,a4
     d38:	00e7a023          	sw	a4,0(a5)
     d3c:	00100713          	li	a4,1
     d40:	fec42783          	lw	a5,-20(s0)
     d44:	40f707b3          	sub	a5,a4,a5
     d48:	fef42623          	sw	a5,-20(s0)
     d4c:	fe442783          	lw	a5,-28(s0)
     d50:	4077d793          	srai	a5,a5,0x7
     d54:	0017f793          	andi	a5,a5,1
     d58:	fef42423          	sw	a5,-24(s0)
     d5c:	fec42783          	lw	a5,-20(s0)
     d60:	fe442703          	lw	a4,-28(s0)
     d64:	00f717b3          	sll	a5,a4,a5
     d68:	fef42223          	sw	a5,-28(s0)
     d6c:	fe842783          	lw	a5,-24(s0)
     d70:	00179693          	slli	a3,a5,0x1
     d74:	000057b7          	lui	a5,0x5
     d78:	3c07a783          	lw	a5,960(a5) # 53c0 <SDCARD>
     d7c:	fec42703          	lw	a4,-20(s0)
     d80:	00e6e733          	or	a4,a3,a4
     d84:	00e7a023          	sw	a4,0(a5)
     d88:	00100713          	li	a4,1
     d8c:	fec42783          	lw	a5,-20(s0)
     d90:	40f707b3          	sub	a5,a4,a5
     d94:	fef42623          	sw	a5,-20(s0)
     d98:	fe442783          	lw	a5,-28(s0)
     d9c:	4077d793          	srai	a5,a5,0x7
     da0:	0017f793          	andi	a5,a5,1
     da4:	fef42423          	sw	a5,-24(s0)
     da8:	fec42783          	lw	a5,-20(s0)
     dac:	fe442703          	lw	a4,-28(s0)
     db0:	00f717b3          	sll	a5,a4,a5
     db4:	fef42223          	sw	a5,-28(s0)
     db8:	fe842783          	lw	a5,-24(s0)
     dbc:	00179693          	slli	a3,a5,0x1
     dc0:	000057b7          	lui	a5,0x5
     dc4:	3c07a783          	lw	a5,960(a5) # 53c0 <SDCARD>
     dc8:	fec42703          	lw	a4,-20(s0)
     dcc:	00e6e733          	or	a4,a3,a4
     dd0:	00e7a023          	sw	a4,0(a5)
     dd4:	00100713          	li	a4,1
     dd8:	fec42783          	lw	a5,-20(s0)
     ddc:	40f707b3          	sub	a5,a4,a5
     de0:	fef42623          	sw	a5,-20(s0)
     de4:	fe442783          	lw	a5,-28(s0)
     de8:	4077d793          	srai	a5,a5,0x7
     dec:	0017f793          	andi	a5,a5,1
     df0:	fef42423          	sw	a5,-24(s0)
     df4:	fec42783          	lw	a5,-20(s0)
     df8:	fe442703          	lw	a4,-28(s0)
     dfc:	00f717b3          	sll	a5,a4,a5
     e00:	fef42223          	sw	a5,-28(s0)
     e04:	fe842783          	lw	a5,-24(s0)
     e08:	00179693          	slli	a3,a5,0x1
     e0c:	000057b7          	lui	a5,0x5
     e10:	3c07a783          	lw	a5,960(a5) # 53c0 <SDCARD>
     e14:	fec42703          	lw	a4,-20(s0)
     e18:	00e6e733          	or	a4,a3,a4
     e1c:	00e7a023          	sw	a4,0(a5)
     e20:	00100713          	li	a4,1
     e24:	fec42783          	lw	a5,-20(s0)
     e28:	40f707b3          	sub	a5,a4,a5
     e2c:	fef42623          	sw	a5,-20(s0)
     e30:	fe442783          	lw	a5,-28(s0)
     e34:	4077d793          	srai	a5,a5,0x7
     e38:	0017f793          	andi	a5,a5,1
     e3c:	fef42423          	sw	a5,-24(s0)
     e40:	fec42783          	lw	a5,-20(s0)
     e44:	fe442703          	lw	a4,-28(s0)
     e48:	00f717b3          	sll	a5,a4,a5
     e4c:	fef42223          	sw	a5,-28(s0)
     e50:	fe842783          	lw	a5,-24(s0)
     e54:	00179693          	slli	a3,a5,0x1
     e58:	000057b7          	lui	a5,0x5
     e5c:	3c07a783          	lw	a5,960(a5) # 53c0 <SDCARD>
     e60:	fec42703          	lw	a4,-20(s0)
     e64:	00e6e733          	or	a4,a3,a4
     e68:	00e7a023          	sw	a4,0(a5)
     e6c:	00100713          	li	a4,1
     e70:	fec42783          	lw	a5,-20(s0)
     e74:	40f707b3          	sub	a5,a4,a5
     e78:	fef42623          	sw	a5,-20(s0)
     e7c:	fe442783          	lw	a5,-28(s0)
     e80:	4077d793          	srai	a5,a5,0x7
     e84:	0017f793          	andi	a5,a5,1
     e88:	fef42423          	sw	a5,-24(s0)
     e8c:	fec42783          	lw	a5,-20(s0)
     e90:	fe442703          	lw	a4,-28(s0)
     e94:	00f717b3          	sll	a5,a4,a5
     e98:	fef42223          	sw	a5,-28(s0)
     e9c:	fe842783          	lw	a5,-24(s0)
     ea0:	00179693          	slli	a3,a5,0x1
     ea4:	000057b7          	lui	a5,0x5
     ea8:	3c07a783          	lw	a5,960(a5) # 53c0 <SDCARD>
     eac:	fec42703          	lw	a4,-20(s0)
     eb0:	00e6e733          	or	a4,a3,a4
     eb4:	00e7a023          	sw	a4,0(a5)
     eb8:	00100713          	li	a4,1
     ebc:	fec42783          	lw	a5,-20(s0)
     ec0:	40f707b3          	sub	a5,a4,a5
     ec4:	fef42623          	sw	a5,-20(s0)
     ec8:	fe442783          	lw	a5,-28(s0)
     ecc:	4077d793          	srai	a5,a5,0x7
     ed0:	0017f793          	andi	a5,a5,1
     ed4:	fef42423          	sw	a5,-24(s0)
     ed8:	fec42783          	lw	a5,-20(s0)
     edc:	fe442703          	lw	a4,-28(s0)
     ee0:	00f717b3          	sll	a5,a4,a5
     ee4:	fef42223          	sw	a5,-28(s0)
     ee8:	fe842783          	lw	a5,-24(s0)
     eec:	00179693          	slli	a3,a5,0x1
     ef0:	000057b7          	lui	a5,0x5
     ef4:	3c07a783          	lw	a5,960(a5) # 53c0 <SDCARD>
     ef8:	fec42703          	lw	a4,-20(s0)
     efc:	00e6e733          	or	a4,a3,a4
     f00:	00e7a023          	sw	a4,0(a5)
     f04:	00100713          	li	a4,1
     f08:	fec42783          	lw	a5,-20(s0)
     f0c:	40f707b3          	sub	a5,a4,a5
     f10:	fef42623          	sw	a5,-20(s0)
     f14:	fe442783          	lw	a5,-28(s0)
     f18:	4077d793          	srai	a5,a5,0x7
     f1c:	0017f793          	andi	a5,a5,1
     f20:	fef42423          	sw	a5,-24(s0)
     f24:	fec42783          	lw	a5,-20(s0)
     f28:	fe442703          	lw	a4,-28(s0)
     f2c:	00f717b3          	sll	a5,a4,a5
     f30:	fef42223          	sw	a5,-28(s0)
     f34:	fe842783          	lw	a5,-24(s0)
     f38:	00179693          	slli	a3,a5,0x1
     f3c:	000057b7          	lui	a5,0x5
     f40:	3c07a783          	lw	a5,960(a5) # 53c0 <SDCARD>
     f44:	fec42703          	lw	a4,-20(s0)
     f48:	00e6e733          	or	a4,a3,a4
     f4c:	00e7a023          	sw	a4,0(a5)
     f50:	00100713          	li	a4,1
     f54:	fec42783          	lw	a5,-20(s0)
     f58:	40f707b3          	sub	a5,a4,a5
     f5c:	fef42623          	sw	a5,-20(s0)
     f60:	fe442783          	lw	a5,-28(s0)
     f64:	4077d793          	srai	a5,a5,0x7
     f68:	0017f793          	andi	a5,a5,1
     f6c:	fef42423          	sw	a5,-24(s0)
     f70:	fec42783          	lw	a5,-20(s0)
     f74:	fe442703          	lw	a4,-28(s0)
     f78:	00f717b3          	sll	a5,a4,a5
     f7c:	fef42223          	sw	a5,-28(s0)
     f80:	fe842783          	lw	a5,-24(s0)
     f84:	00179693          	slli	a3,a5,0x1
     f88:	000057b7          	lui	a5,0x5
     f8c:	3c07a783          	lw	a5,960(a5) # 53c0 <SDCARD>
     f90:	fec42703          	lw	a4,-20(s0)
     f94:	00e6e733          	or	a4,a3,a4
     f98:	00e7a023          	sw	a4,0(a5)
     f9c:	00100713          	li	a4,1
     fa0:	fec42783          	lw	a5,-20(s0)
     fa4:	40f707b3          	sub	a5,a4,a5
     fa8:	fef42623          	sw	a5,-20(s0)
     fac:	000057b7          	lui	a5,0x5
     fb0:	3c07a783          	lw	a5,960(a5) # 53c0 <SDCARD>
     fb4:	00200713          	li	a4,2
     fb8:	00e7a023          	sw	a4,0(a5)
     fbc:	000057b7          	lui	a5,0x5
     fc0:	6c47a783          	lw	a5,1732(a5) # 56c4 <sdcard_while_loading_callback>
     fc4:	000780e7          	jalr	a5
     fc8:	00000013          	nop
     fcc:	02c12083          	lw	ra,44(sp)
     fd0:	02812403          	lw	s0,40(sp)
     fd4:	03010113          	addi	sp,sp,48
     fd8:	00008067          	ret

00000fdc <sdcard_read>:
     fdc:	fc010113          	addi	sp,sp,-64
     fe0:	02112e23          	sw	ra,60(sp)
     fe4:	02812c23          	sw	s0,56(sp)
     fe8:	04010413          	addi	s0,sp,64
     fec:	00050793          	mv	a5,a0
     ff0:	00058713          	mv	a4,a1
     ff4:	fcf407a3          	sb	a5,-49(s0)
     ff8:	00070793          	mv	a5,a4
     ffc:	fcf40723          	sb	a5,-50(s0)
    1000:	fce44783          	lbu	a5,-50(s0)
    1004:	fef42223          	sw	a5,-28(s0)
    1008:	fcf44783          	lbu	a5,-49(s0)
    100c:	fef42023          	sw	a5,-32(s0)
    1010:	fe042623          	sw	zero,-20(s0)
    1014:	0ff00793          	li	a5,255
    1018:	fef42423          	sw	a5,-24(s0)
    101c:	0600006f          	j	107c <sdcard_read+0xa0>
    1020:	000057b7          	lui	a5,0x5
    1024:	3c07a783          	lw	a5,960(a5) # 53c0 <SDCARD>
    1028:	00300713          	li	a4,3
    102c:	00e7a023          	sw	a4,0(a5)
    1030:	fec42783          	lw	a5,-20(s0)
    1034:	00178793          	addi	a5,a5,1
    1038:	fef42623          	sw	a5,-20(s0)
    103c:	000057b7          	lui	a5,0x5
    1040:	3c07a783          	lw	a5,960(a5) # 53c0 <SDCARD>
    1044:	00200713          	li	a4,2
    1048:	00e7a023          	sw	a4,0(a5)
    104c:	000057b7          	lui	a5,0x5
    1050:	3c07a783          	lw	a5,960(a5) # 53c0 <SDCARD>
    1054:	0007a783          	lw	a5,0(a5)
    1058:	fcf42e23          	sw	a5,-36(s0)
    105c:	fe842783          	lw	a5,-24(s0)
    1060:	00179793          	slli	a5,a5,0x1
    1064:	fdc42703          	lw	a4,-36(s0)
    1068:	00f767b3          	or	a5,a4,a5
    106c:	fef42423          	sw	a5,-24(s0)
    1070:	000057b7          	lui	a5,0x5
    1074:	6c47a783          	lw	a5,1732(a5) # 56c4 <sdcard_while_loading_callback>
    1078:	000780e7          	jalr	a5
    107c:	fe442783          	lw	a5,-28(s0)
    1080:	00078e63          	beqz	a5,109c <sdcard_read+0xc0>
    1084:	fe042783          	lw	a5,-32(s0)
    1088:	fff78793          	addi	a5,a5,-1
    108c:	fe842703          	lw	a4,-24(s0)
    1090:	40f757b3          	sra	a5,a4,a5
    1094:	0017f793          	andi	a5,a5,1
    1098:	f80794e3          	bnez	a5,1020 <sdcard_read+0x44>
    109c:	fe442783          	lw	a5,-28(s0)
    10a0:	00079863          	bnez	a5,10b0 <sdcard_read+0xd4>
    10a4:	fec42703          	lw	a4,-20(s0)
    10a8:	fe042783          	lw	a5,-32(s0)
    10ac:	f6f74ae3          	blt	a4,a5,1020 <sdcard_read+0x44>
    10b0:	fe842783          	lw	a5,-24(s0)
    10b4:	0ff7f793          	zext.b	a5,a5
    10b8:	00078513          	mv	a0,a5
    10bc:	03c12083          	lw	ra,60(sp)
    10c0:	03812403          	lw	s0,56(sp)
    10c4:	04010113          	addi	sp,sp,64
    10c8:	00008067          	ret

000010cc <sdcard_get>:
    10cc:	fd010113          	addi	sp,sp,-48
    10d0:	02112623          	sw	ra,44(sp)
    10d4:	02812423          	sw	s0,40(sp)
    10d8:	03010413          	addi	s0,sp,48
    10dc:	00050793          	mv	a5,a0
    10e0:	00058713          	mv	a4,a1
    10e4:	fcf40fa3          	sb	a5,-33(s0)
    10e8:	00070793          	mv	a5,a4
    10ec:	fcf40f23          	sb	a5,-34(s0)
    10f0:	00000097          	auipc	ra,0x0
    10f4:	4e4080e7          	jalr	1252(ra) # 15d4 <sdcard_select>
    10f8:	fde44703          	lbu	a4,-34(s0)
    10fc:	fdf44783          	lbu	a5,-33(s0)
    1100:	00070593          	mv	a1,a4
    1104:	00078513          	mv	a0,a5
    1108:	00000097          	auipc	ra,0x0
    110c:	ed4080e7          	jalr	-300(ra) # fdc <sdcard_read>
    1110:	00050793          	mv	a5,a0
    1114:	fef407a3          	sb	a5,-17(s0)
    1118:	00100793          	li	a5,1
    111c:	fef42423          	sw	a5,-24(s0)
    1120:	0280006f          	j	1148 <sdcard_get+0x7c>
    1124:	00000593          	li	a1,0
    1128:	00800513          	li	a0,8
    112c:	00000097          	auipc	ra,0x0
    1130:	eb0080e7          	jalr	-336(ra) # fdc <sdcard_read>
    1134:	00050793          	mv	a5,a0
    1138:	fef407a3          	sb	a5,-17(s0)
    113c:	fe842783          	lw	a5,-24(s0)
    1140:	00178793          	addi	a5,a5,1
    1144:	fef42423          	sw	a5,-24(s0)
    1148:	fdf44783          	lbu	a5,-33(s0)
    114c:	0037d793          	srli	a5,a5,0x3
    1150:	0ff7f793          	zext.b	a5,a5
    1154:	00078713          	mv	a4,a5
    1158:	fe842783          	lw	a5,-24(s0)
    115c:	fce7c4e3          	blt	a5,a4,1124 <sdcard_get+0x58>
    1160:	00000097          	auipc	ra,0x0
    1164:	488080e7          	jalr	1160(ra) # 15e8 <sdcard_unselect>
    1168:	fef44783          	lbu	a5,-17(s0)
    116c:	00078513          	mv	a0,a5
    1170:	02c12083          	lw	ra,44(sp)
    1174:	02812403          	lw	s0,40(sp)
    1178:	03010113          	addi	sp,sp,48
    117c:	00008067          	ret

00001180 <sdcard_cmd>:
    1180:	fd010113          	addi	sp,sp,-48
    1184:	02112623          	sw	ra,44(sp)
    1188:	02812423          	sw	s0,40(sp)
    118c:	03010413          	addi	s0,sp,48
    1190:	fca42e23          	sw	a0,-36(s0)
    1194:	00000097          	auipc	ra,0x0
    1198:	440080e7          	jalr	1088(ra) # 15d4 <sdcard_select>
    119c:	fe042623          	sw	zero,-20(s0)
    11a0:	02c0006f          	j	11cc <sdcard_cmd+0x4c>
    11a4:	fec42783          	lw	a5,-20(s0)
    11a8:	fdc42703          	lw	a4,-36(s0)
    11ac:	00f707b3          	add	a5,a4,a5
    11b0:	0007c783          	lbu	a5,0(a5)
    11b4:	00078513          	mv	a0,a5
    11b8:	00000097          	auipc	ra,0x0
    11bc:	910080e7          	jalr	-1776(ra) # ac8 <sdcard_send>
    11c0:	fec42783          	lw	a5,-20(s0)
    11c4:	00178793          	addi	a5,a5,1
    11c8:	fef42623          	sw	a5,-20(s0)
    11cc:	fec42703          	lw	a4,-20(s0)
    11d0:	00500793          	li	a5,5
    11d4:	fce7d8e3          	bge	a5,a4,11a4 <sdcard_cmd+0x24>
    11d8:	00000097          	auipc	ra,0x0
    11dc:	410080e7          	jalr	1040(ra) # 15e8 <sdcard_unselect>
    11e0:	00000013          	nop
    11e4:	02c12083          	lw	ra,44(sp)
    11e8:	02812403          	lw	s0,40(sp)
    11ec:	03010113          	addi	sp,sp,48
    11f0:	00008067          	ret

000011f4 <sdcard_start_sector>:
    11f4:	fe010113          	addi	sp,sp,-32
    11f8:	00112e23          	sw	ra,28(sp)
    11fc:	00812c23          	sw	s0,24(sp)
    1200:	02010413          	addi	s0,sp,32
    1204:	fea42623          	sw	a0,-20(s0)
    1208:	00000097          	auipc	ra,0x0
    120c:	3cc080e7          	jalr	972(ra) # 15d4 <sdcard_select>
    1210:	05100793          	li	a5,81
    1214:	00078513          	mv	a0,a5
    1218:	00000097          	auipc	ra,0x0
    121c:	8b0080e7          	jalr	-1872(ra) # ac8 <sdcard_send>
    1220:	fec42783          	lw	a5,-20(s0)
    1224:	0187d793          	srli	a5,a5,0x18
    1228:	00078513          	mv	a0,a5
    122c:	00000097          	auipc	ra,0x0
    1230:	89c080e7          	jalr	-1892(ra) # ac8 <sdcard_send>
    1234:	fec42783          	lw	a5,-20(s0)
    1238:	4107d793          	srai	a5,a5,0x10
    123c:	0ff7f793          	zext.b	a5,a5
    1240:	00078513          	mv	a0,a5
    1244:	00000097          	auipc	ra,0x0
    1248:	884080e7          	jalr	-1916(ra) # ac8 <sdcard_send>
    124c:	fec42783          	lw	a5,-20(s0)
    1250:	4087d793          	srai	a5,a5,0x8
    1254:	0ff7f793          	zext.b	a5,a5
    1258:	00078513          	mv	a0,a5
    125c:	00000097          	auipc	ra,0x0
    1260:	86c080e7          	jalr	-1940(ra) # ac8 <sdcard_send>
    1264:	fec42783          	lw	a5,-20(s0)
    1268:	0ff7f793          	zext.b	a5,a5
    126c:	00078513          	mv	a0,a5
    1270:	00000097          	auipc	ra,0x0
    1274:	858080e7          	jalr	-1960(ra) # ac8 <sdcard_send>
    1278:	05500793          	li	a5,85
    127c:	00078513          	mv	a0,a5
    1280:	00000097          	auipc	ra,0x0
    1284:	848080e7          	jalr	-1976(ra) # ac8 <sdcard_send>
    1288:	00000097          	auipc	ra,0x0
    128c:	360080e7          	jalr	864(ra) # 15e8 <sdcard_unselect>
    1290:	fffff097          	auipc	ra,0xfffff
    1294:	7cc080e7          	jalr	1996(ra) # a5c <sdcard_ponder>
    1298:	00100593          	li	a1,1
    129c:	00800513          	li	a0,8
    12a0:	00000097          	auipc	ra,0x0
    12a4:	e2c080e7          	jalr	-468(ra) # 10cc <sdcard_get>
    12a8:	00050793          	mv	a5,a0
    12ac:	00078513          	mv	a0,a5
    12b0:	01c12083          	lw	ra,28(sp)
    12b4:	01812403          	lw	s0,24(sp)
    12b8:	02010113          	addi	sp,sp,32
    12bc:	00008067          	ret

000012c0 <sdcard_read_sector>:
    12c0:	fd010113          	addi	sp,sp,-48
    12c4:	02112623          	sw	ra,44(sp)
    12c8:	02812423          	sw	s0,40(sp)
    12cc:	03010413          	addi	s0,sp,48
    12d0:	fca42e23          	sw	a0,-36(s0)
    12d4:	fcb42c23          	sw	a1,-40(s0)
    12d8:	fdc42503          	lw	a0,-36(s0)
    12dc:	00000097          	auipc	ra,0x0
    12e0:	f18080e7          	jalr	-232(ra) # 11f4 <sdcard_start_sector>
    12e4:	00050793          	mv	a5,a0
    12e8:	fef405a3          	sb	a5,-21(s0)
    12ec:	feb44783          	lbu	a5,-21(s0)
    12f0:	00078663          	beqz	a5,12fc <sdcard_read_sector+0x3c>
    12f4:	fd842783          	lw	a5,-40(s0)
    12f8:	08c0006f          	j	1384 <sdcard_read_sector+0xc4>
    12fc:	00100593          	li	a1,1
    1300:	00100513          	li	a0,1
    1304:	00000097          	auipc	ra,0x0
    1308:	dc8080e7          	jalr	-568(ra) # 10cc <sdcard_get>
    130c:	fe042623          	sw	zero,-20(s0)
    1310:	03c0006f          	j	134c <sdcard_read_sector+0x8c>
    1314:	00000593          	li	a1,0
    1318:	00800513          	li	a0,8
    131c:	00000097          	auipc	ra,0x0
    1320:	db0080e7          	jalr	-592(ra) # 10cc <sdcard_get>
    1324:	00050793          	mv	a5,a0
    1328:	fef401a3          	sb	a5,-29(s0)
    132c:	fd842783          	lw	a5,-40(s0)
    1330:	00178713          	addi	a4,a5,1
    1334:	fce42c23          	sw	a4,-40(s0)
    1338:	fe344703          	lbu	a4,-29(s0)
    133c:	00e78023          	sb	a4,0(a5)
    1340:	fec42783          	lw	a5,-20(s0)
    1344:	00178793          	addi	a5,a5,1
    1348:	fef42623          	sw	a5,-20(s0)
    134c:	fec42703          	lw	a4,-20(s0)
    1350:	1ff00793          	li	a5,511
    1354:	fce7d0e3          	bge	a5,a4,1314 <sdcard_read_sector+0x54>
    1358:	00000593          	li	a1,0
    135c:	01000513          	li	a0,16
    1360:	00000097          	auipc	ra,0x0
    1364:	d6c080e7          	jalr	-660(ra) # 10cc <sdcard_get>
    1368:	00050793          	mv	a5,a0
    136c:	fef42223          	sw	a5,-28(s0)
    1370:	00000097          	auipc	ra,0x0
    1374:	278080e7          	jalr	632(ra) # 15e8 <sdcard_unselect>
    1378:	fffff097          	auipc	ra,0xfffff
    137c:	6e4080e7          	jalr	1764(ra) # a5c <sdcard_ponder>
    1380:	fd842783          	lw	a5,-40(s0)
    1384:	00078513          	mv	a0,a5
    1388:	02c12083          	lw	ra,44(sp)
    138c:	02812403          	lw	s0,40(sp)
    1390:	03010113          	addi	sp,sp,48
    1394:	00008067          	ret

00001398 <sdcard_preinit>:
    1398:	fe010113          	addi	sp,sp,-32
    139c:	00112e23          	sw	ra,28(sp)
    13a0:	00812c23          	sw	s0,24(sp)
    13a4:	02010413          	addi	s0,sp,32
    13a8:	000057b7          	lui	a5,0x5
    13ac:	3c07a783          	lw	a5,960(a5) # 53c0 <SDCARD>
    13b0:	00600713          	li	a4,6
    13b4:	00e7a023          	sw	a4,0(a5)
    13b8:	013137b7          	lui	a5,0x1313
    13bc:	d0078513          	addi	a0,a5,-768 # 1312d00 <__stacktop+0x1302d00>
    13c0:	00000097          	auipc	ra,0x0
    13c4:	1fc080e7          	jalr	508(ra) # 15bc <pause>
    13c8:	fe042623          	sw	zero,-20(s0)
    13cc:	fe042423          	sw	zero,-24(s0)
    13d0:	0340006f          	j	1404 <sdcard_preinit+0x6c>
    13d4:	000057b7          	lui	a5,0x5
    13d8:	3c07a783          	lw	a5,960(a5) # 53c0 <SDCARD>
    13dc:	fec42703          	lw	a4,-20(s0)
    13e0:	00676713          	ori	a4,a4,6
    13e4:	00e7a023          	sw	a4,0(a5)
    13e8:	00100713          	li	a4,1
    13ec:	fec42783          	lw	a5,-20(s0)
    13f0:	40f707b3          	sub	a5,a4,a5
    13f4:	fef42623          	sw	a5,-20(s0)
    13f8:	fe842783          	lw	a5,-24(s0)
    13fc:	00178793          	addi	a5,a5,1
    1400:	fef42423          	sw	a5,-24(s0)
    1404:	fe842703          	lw	a4,-24(s0)
    1408:	09f00793          	li	a5,159
    140c:	fce7d4e3          	bge	a5,a4,13d4 <sdcard_preinit+0x3c>
    1410:	000057b7          	lui	a5,0x5
    1414:	3c07a783          	lw	a5,960(a5) # 53c0 <SDCARD>
    1418:	00600713          	li	a4,6
    141c:	00e7a023          	sw	a4,0(a5)
    1420:	00000013          	nop
    1424:	01c12083          	lw	ra,28(sp)
    1428:	01812403          	lw	s0,24(sp)
    142c:	02010113          	addi	sp,sp,32
    1430:	00008067          	ret

00001434 <sdcard_init>:
    1434:	fe010113          	addi	sp,sp,-32
    1438:	00112e23          	sw	ra,28(sp)
    143c:	00812c23          	sw	s0,24(sp)
    1440:	02010413          	addi	s0,sp,32
    1444:	000057b7          	lui	a5,0x5
    1448:	00001737          	lui	a4,0x1
    144c:	5d070713          	addi	a4,a4,1488 # 15d0 <sdcard_idle>
    1450:	6ce7a223          	sw	a4,1732(a5) # 56c4 <sdcard_while_loading_callback>
    1454:	00000097          	auipc	ra,0x0
    1458:	f44080e7          	jalr	-188(ra) # 1398 <sdcard_preinit>
    145c:	000057b7          	lui	a5,0x5
    1460:	3a478513          	addi	a0,a5,932 # 53a4 <cmd0>
    1464:	00000097          	auipc	ra,0x0
    1468:	d1c080e7          	jalr	-740(ra) # 1180 <sdcard_cmd>
    146c:	00100593          	li	a1,1
    1470:	00800513          	li	a0,8
    1474:	00000097          	auipc	ra,0x0
    1478:	c58080e7          	jalr	-936(ra) # 10cc <sdcard_get>
    147c:	00050793          	mv	a5,a0
    1480:	fef407a3          	sb	a5,-17(s0)
    1484:	fffff097          	auipc	ra,0xfffff
    1488:	5d8080e7          	jalr	1496(ra) # a5c <sdcard_ponder>
    148c:	fef44703          	lbu	a4,-17(s0)
    1490:	0ff00793          	li	a5,255
    1494:	00f71c63          	bne	a4,a5,14ac <sdcard_init+0x78>
    1498:	013137b7          	lui	a5,0x1313
    149c:	d0078513          	addi	a0,a5,-768 # 1312d00 <__stacktop+0x1302d00>
    14a0:	00000097          	auipc	ra,0x0
    14a4:	11c080e7          	jalr	284(ra) # 15bc <pause>
    14a8:	fadff06f          	j	1454 <sdcard_init+0x20>
    14ac:	00000013          	nop
    14b0:	000057b7          	lui	a5,0x5
    14b4:	39c78513          	addi	a0,a5,924 # 539c <cmd8>
    14b8:	00000097          	auipc	ra,0x0
    14bc:	cc8080e7          	jalr	-824(ra) # 1180 <sdcard_cmd>
    14c0:	00100593          	li	a1,1
    14c4:	02800513          	li	a0,40
    14c8:	00000097          	auipc	ra,0x0
    14cc:	c04080e7          	jalr	-1020(ra) # 10cc <sdcard_get>
    14d0:	00050793          	mv	a5,a0
    14d4:	fef407a3          	sb	a5,-17(s0)
    14d8:	fffff097          	auipc	ra,0xfffff
    14dc:	584080e7          	jalr	1412(ra) # a5c <sdcard_ponder>
    14e0:	000057b7          	lui	a5,0x5
    14e4:	39478513          	addi	a0,a5,916 # 5394 <cmd55>
    14e8:	00000097          	auipc	ra,0x0
    14ec:	c98080e7          	jalr	-872(ra) # 1180 <sdcard_cmd>
    14f0:	00100593          	li	a1,1
    14f4:	00800513          	li	a0,8
    14f8:	00000097          	auipc	ra,0x0
    14fc:	bd4080e7          	jalr	-1068(ra) # 10cc <sdcard_get>
    1500:	00050793          	mv	a5,a0
    1504:	fef407a3          	sb	a5,-17(s0)
    1508:	fffff097          	auipc	ra,0xfffff
    150c:	554080e7          	jalr	1364(ra) # a5c <sdcard_ponder>
    1510:	000057b7          	lui	a5,0x5
    1514:	38c78513          	addi	a0,a5,908 # 538c <acmd41>
    1518:	00000097          	auipc	ra,0x0
    151c:	c68080e7          	jalr	-920(ra) # 1180 <sdcard_cmd>
    1520:	00100593          	li	a1,1
    1524:	00800513          	li	a0,8
    1528:	00000097          	auipc	ra,0x0
    152c:	ba4080e7          	jalr	-1116(ra) # 10cc <sdcard_get>
    1530:	00050793          	mv	a5,a0
    1534:	fef407a3          	sb	a5,-17(s0)
    1538:	fffff097          	auipc	ra,0xfffff
    153c:	524080e7          	jalr	1316(ra) # a5c <sdcard_ponder>
    1540:	fef44783          	lbu	a5,-17(s0)
    1544:	02078863          	beqz	a5,1574 <sdcard_init+0x140>
    1548:	00000097          	auipc	ra,0x0
    154c:	0a0080e7          	jalr	160(ra) # 15e8 <sdcard_unselect>
    1550:	fffff097          	auipc	ra,0xfffff
    1554:	50c080e7          	jalr	1292(ra) # a5c <sdcard_ponder>
    1558:	001e87b7          	lui	a5,0x1e8
    155c:	48078513          	addi	a0,a5,1152 # 1e8480 <__stacktop+0x1d8480>
    1560:	00000097          	auipc	ra,0x0
    1564:	05c080e7          	jalr	92(ra) # 15bc <pause>
    1568:	00000097          	auipc	ra,0x0
    156c:	06c080e7          	jalr	108(ra) # 15d4 <sdcard_select>
    1570:	f71ff06f          	j	14e0 <sdcard_init+0xac>
    1574:	00000013          	nop
    1578:	000057b7          	lui	a5,0x5
    157c:	38478513          	addi	a0,a5,900 # 5384 <cmd16>
    1580:	00000097          	auipc	ra,0x0
    1584:	c00080e7          	jalr	-1024(ra) # 1180 <sdcard_cmd>
    1588:	00100593          	li	a1,1
    158c:	00800513          	li	a0,8
    1590:	00000097          	auipc	ra,0x0
    1594:	b3c080e7          	jalr	-1220(ra) # 10cc <sdcard_get>
    1598:	00050793          	mv	a5,a0
    159c:	fef407a3          	sb	a5,-17(s0)
    15a0:	fffff097          	auipc	ra,0xfffff
    15a4:	4bc080e7          	jalr	1212(ra) # a5c <sdcard_ponder>
    15a8:	00000013          	nop
    15ac:	01c12083          	lw	ra,28(sp)
    15b0:	01812403          	lw	s0,24(sp)
    15b4:	02010113          	addi	sp,sp,32
    15b8:	00008067          	ret

000015bc <pause>:
    15bc:	c0002773          	rdcycle	a4
    15c0:	c00027f3          	rdcycle	a5
    15c4:	40e787b3          	sub	a5,a5,a4
    15c8:	fea7ece3          	bltu	a5,a0,15c0 <pause+0x4>
    15cc:	00008067          	ret

000015d0 <sdcard_idle>:
    15d0:	00008067          	ret

000015d4 <sdcard_select>:
    15d4:	000057b7          	lui	a5,0x5
    15d8:	3c07a783          	lw	a5,960(a5) # 53c0 <SDCARD>
    15dc:	00200713          	li	a4,2
    15e0:	00e7a023          	sw	a4,0(a5)
    15e4:	00008067          	ret

000015e8 <sdcard_unselect>:
    15e8:	000057b7          	lui	a5,0x5
    15ec:	3c07a783          	lw	a5,960(a5) # 53c0 <SDCARD>
    15f0:	00600713          	li	a4,6
    15f4:	00e7a023          	sw	a4,0(a5)
    15f8:	00008067          	ret

000015fc <sdcard_readsector>:
    15fc:	04060663          	beqz	a2,1648 <sdcard_readsector+0x4c>
    1600:	ff010113          	addi	sp,sp,-16
    1604:	00912423          	sw	s1,8(sp)
    1608:	01212223          	sw	s2,4(sp)
    160c:	00112623          	sw	ra,12(sp)
    1610:	00050493          	mv	s1,a0
    1614:	00a60933          	add	s2,a2,a0
    1618:	00048513          	mv	a0,s1
    161c:	00000097          	auipc	ra,0x0
    1620:	ca4080e7          	jalr	-860(ra) # 12c0 <sdcard_read_sector>
    1624:	00148493          	addi	s1,s1,1
    1628:	00050593          	mv	a1,a0
    162c:	fe9916e3          	bne	s2,s1,1618 <sdcard_readsector+0x1c>
    1630:	00c12083          	lw	ra,12(sp)
    1634:	00812483          	lw	s1,8(sp)
    1638:	00412903          	lw	s2,4(sp)
    163c:	00100513          	li	a0,1
    1640:	01010113          	addi	sp,sp,16
    1644:	00008067          	ret
    1648:	00000513          	li	a0,0
    164c:	00008067          	ret

00001650 <sdcard_writesector>:
    1650:	00000513          	li	a0,0
    1654:	00008067          	ret

00001658 <__divsi3>:
    1658:	06054063          	bltz	a0,16b8 <__umodsi3+0x10>
    165c:	0605c663          	bltz	a1,16c8 <__umodsi3+0x20>

00001660 <__udivsi3>:
    1660:	00058613          	mv	a2,a1
    1664:	00050593          	mv	a1,a0
    1668:	fff00513          	li	a0,-1
    166c:	02060c63          	beqz	a2,16a4 <__udivsi3+0x44>
    1670:	00100693          	li	a3,1
    1674:	00b67a63          	bgeu	a2,a1,1688 <__udivsi3+0x28>
    1678:	00c05863          	blez	a2,1688 <__udivsi3+0x28>
    167c:	00161613          	slli	a2,a2,0x1
    1680:	00169693          	slli	a3,a3,0x1
    1684:	feb66ae3          	bltu	a2,a1,1678 <__udivsi3+0x18>
    1688:	00000513          	li	a0,0
    168c:	00c5e663          	bltu	a1,a2,1698 <__udivsi3+0x38>
    1690:	40c585b3          	sub	a1,a1,a2
    1694:	00d56533          	or	a0,a0,a3
    1698:	0016d693          	srli	a3,a3,0x1
    169c:	00165613          	srli	a2,a2,0x1
    16a0:	fe0696e3          	bnez	a3,168c <__udivsi3+0x2c>
    16a4:	00008067          	ret

000016a8 <__umodsi3>:
    16a8:	00008293          	mv	t0,ra
    16ac:	fb5ff0ef          	jal	1660 <__udivsi3>
    16b0:	00058513          	mv	a0,a1
    16b4:	00028067          	jr	t0
    16b8:	40a00533          	neg	a0,a0
    16bc:	0005d863          	bgez	a1,16cc <__umodsi3+0x24>
    16c0:	40b005b3          	neg	a1,a1
    16c4:	f95ff06f          	j	1658 <__divsi3>
    16c8:	40b005b3          	neg	a1,a1
    16cc:	00008293          	mv	t0,ra
    16d0:	f89ff0ef          	jal	1658 <__divsi3>
    16d4:	40a00533          	neg	a0,a0
    16d8:	00028067          	jr	t0

000016dc <__modsi3>:
    16dc:	00008293          	mv	t0,ra
    16e0:	0005ca63          	bltz	a1,16f4 <__modsi3+0x18>
    16e4:	00054c63          	bltz	a0,16fc <__modsi3+0x20>
    16e8:	f79ff0ef          	jal	1660 <__udivsi3>
    16ec:	00058513          	mv	a0,a1
    16f0:	00028067          	jr	t0
    16f4:	40b005b3          	neg	a1,a1
    16f8:	fe0558e3          	bgez	a0,16e8 <__modsi3+0xc>
    16fc:	40a00533          	neg	a0,a0
    1700:	f61ff0ef          	jal	1660 <__udivsi3>
    1704:	40b00533          	neg	a0,a1
    1708:	00028067          	jr	t0

0000170c <memset>:
    170c:	00c50633          	add	a2,a0,a2
    1710:	00050793          	mv	a5,a0
    1714:	00c79463          	bne	a5,a2,171c <memset+0x10>
    1718:	00008067          	ret
    171c:	00178793          	addi	a5,a5,1
    1720:	feb78fa3          	sb	a1,-1(a5)
    1724:	ff1ff06f          	j	1714 <memset+0x8>

00001728 <memcpy>:
    1728:	00000793          	li	a5,0
    172c:	00c79463          	bne	a5,a2,1734 <memcpy+0xc>
    1730:	00008067          	ret
    1734:	00f58733          	add	a4,a1,a5
    1738:	00074683          	lbu	a3,0(a4)
    173c:	00f50733          	add	a4,a0,a5
    1740:	00178793          	addi	a5,a5,1
    1744:	00d70023          	sb	a3,0(a4)
    1748:	fe5ff06f          	j	172c <memcpy+0x4>

0000174c <strlen>:
    174c:	00050793          	mv	a5,a0
    1750:	00000513          	li	a0,0
    1754:	00a78733          	add	a4,a5,a0
    1758:	00074703          	lbu	a4,0(a4)
    175c:	00071463          	bnez	a4,1764 <strlen+0x18>
    1760:	00008067          	ret
    1764:	00150513          	addi	a0,a0,1
    1768:	fedff06f          	j	1754 <strlen+0x8>

0000176c <strncmp>:
    176c:	00000793          	li	a5,0
    1770:	00c79663          	bne	a5,a2,177c <strncmp+0x10>
    1774:	00000513          	li	a0,0
    1778:	00008067          	ret
    177c:	00f50733          	add	a4,a0,a5
    1780:	00074683          	lbu	a3,0(a4)
    1784:	00f58733          	add	a4,a1,a5
    1788:	00074703          	lbu	a4,0(a4)
    178c:	00e6e863          	bltu	a3,a4,179c <strncmp+0x30>
    1790:	00d76a63          	bltu	a4,a3,17a4 <strncmp+0x38>
    1794:	00178793          	addi	a5,a5,1
    1798:	fd9ff06f          	j	1770 <strncmp+0x4>
    179c:	fff00513          	li	a0,-1
    17a0:	00008067          	ret
    17a4:	00100513          	li	a0,1
    17a8:	00008067          	ret

000017ac <strncpy>:
    17ac:	00000793          	li	a5,0
    17b0:	00c79463          	bne	a5,a2,17b8 <strncpy+0xc>
    17b4:	00008067          	ret
    17b8:	00f58733          	add	a4,a1,a5
    17bc:	00074683          	lbu	a3,0(a4)
    17c0:	00f50733          	add	a4,a0,a5
    17c4:	00178793          	addi	a5,a5,1
    17c8:	00d70023          	sb	a3,0(a4)
    17cc:	fe5ff06f          	j	17b0 <strncpy+0x4>

000017d0 <oled_wait>:
    17d0:	00000013          	nop
    17d4:	00000013          	nop
    17d8:	00000013          	nop
    17dc:	00000013          	nop
    17e0:	00000013          	nop
    17e4:	00000013          	nop
    17e8:	00000013          	nop
    17ec:	00008067          	ret

000017f0 <oled_init_mode>:
    17f0:	000057b7          	lui	a5,0x5
    17f4:	3c47a703          	lw	a4,964(a5) # 53c4 <OLED_RST>
    17f8:	ff010113          	addi	sp,sp,-16
    17fc:	00912223          	sw	s1,4(sp)
    1800:	00112623          	sw	ra,12(sp)
    1804:	00812423          	sw	s0,8(sp)
    1808:	00072023          	sw	zero,0(a4)
    180c:	00050493          	mv	s1,a0
    1810:	00040737          	lui	a4,0x40
    1814:	00000013          	nop
    1818:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    181c:	fe071ce3          	bnez	a4,1814 <oled_init_mode+0x24>
    1820:	3c47a703          	lw	a4,964(a5)
    1824:	00100693          	li	a3,1
    1828:	00d72023          	sw	a3,0(a4)
    182c:	00040737          	lui	a4,0x40
    1830:	00000013          	nop
    1834:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    1838:	fe071ce3          	bnez	a4,1830 <oled_init_mode+0x40>
    183c:	3c47a783          	lw	a5,964(a5)
    1840:	0007a023          	sw	zero,0(a5)
    1844:	000407b7          	lui	a5,0x40
    1848:	00000013          	nop
    184c:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    1850:	fe079ce3          	bnez	a5,1848 <oled_init_mode+0x58>
    1854:	00005737          	lui	a4,0x5
    1858:	3c872783          	lw	a5,968(a4) # 53c8 <OLED>
    185c:	2af00693          	li	a3,687
    1860:	00d7a023          	sw	a3,0(a5)
    1864:	000407b7          	lui	a5,0x40
    1868:	00000013          	nop
    186c:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    1870:	fe079ce3          	bnez	a5,1868 <oled_init_mode+0x78>
    1874:	3c872403          	lw	s0,968(a4)
    1878:	2a000793          	li	a5,672
    187c:	00f42023          	sw	a5,0(s0)
    1880:	00000097          	auipc	ra,0x0
    1884:	f50080e7          	jalr	-176(ra) # 17d0 <oled_wait>
    1888:	4a000793          	li	a5,1184
    188c:	00048463          	beqz	s1,1894 <oled_init_mode+0xa4>
    1890:	42000793          	li	a5,1056
    1894:	00f42023          	sw	a5,0(s0)
    1898:	00000097          	auipc	ra,0x0
    189c:	f38080e7          	jalr	-200(ra) # 17d0 <oled_wait>
    18a0:	2fd00793          	li	a5,765
    18a4:	00f42023          	sw	a5,0(s0)
    18a8:	00000097          	auipc	ra,0x0
    18ac:	f28080e7          	jalr	-216(ra) # 17d0 <oled_wait>
    18b0:	4b100793          	li	a5,1201
    18b4:	00f42023          	sw	a5,0(s0)
    18b8:	00000097          	auipc	ra,0x0
    18bc:	f18080e7          	jalr	-232(ra) # 17d0 <oled_wait>
    18c0:	2a200793          	li	a5,674
    18c4:	00f42023          	sw	a5,0(s0)
    18c8:	00000097          	auipc	ra,0x0
    18cc:	f08080e7          	jalr	-248(ra) # 17d0 <oled_wait>
    18d0:	40000793          	li	a5,1024
    18d4:	00f42023          	sw	a5,0(s0)
    18d8:	00812403          	lw	s0,8(sp)
    18dc:	00c12083          	lw	ra,12(sp)
    18e0:	00412483          	lw	s1,4(sp)
    18e4:	01010113          	addi	sp,sp,16
    18e8:	00000317          	auipc	t1,0x0
    18ec:	ee830067          	jr	-280(t1) # 17d0 <oled_wait>

000018f0 <oled_init>:
    18f0:	00000513          	li	a0,0
    18f4:	00000317          	auipc	t1,0x0
    18f8:	efc30067          	jr	-260(t1) # 17f0 <oled_init_mode>

000018fc <oled_fullscreen>:
    18fc:	ff010113          	addi	sp,sp,-16
    1900:	000057b7          	lui	a5,0x5
    1904:	00812423          	sw	s0,8(sp)
    1908:	3c87a403          	lw	s0,968(a5) # 53c8 <OLED>
    190c:	00112623          	sw	ra,12(sp)
    1910:	00912223          	sw	s1,4(sp)
    1914:	01212023          	sw	s2,0(sp)
    1918:	21500793          	li	a5,533
    191c:	00f42023          	sw	a5,0(s0)
    1920:	40000913          	li	s2,1024
    1924:	00000097          	auipc	ra,0x0
    1928:	eac080e7          	jalr	-340(ra) # 17d0 <oled_wait>
    192c:	47f00493          	li	s1,1151
    1930:	01242023          	sw	s2,0(s0)
    1934:	00000097          	auipc	ra,0x0
    1938:	e9c080e7          	jalr	-356(ra) # 17d0 <oled_wait>
    193c:	00942023          	sw	s1,0(s0)
    1940:	00000097          	auipc	ra,0x0
    1944:	e90080e7          	jalr	-368(ra) # 17d0 <oled_wait>
    1948:	27500793          	li	a5,629
    194c:	00f42023          	sw	a5,0(s0)
    1950:	00000097          	auipc	ra,0x0
    1954:	e80080e7          	jalr	-384(ra) # 17d0 <oled_wait>
    1958:	01242023          	sw	s2,0(s0)
    195c:	00000097          	auipc	ra,0x0
    1960:	e74080e7          	jalr	-396(ra) # 17d0 <oled_wait>
    1964:	00942023          	sw	s1,0(s0)
    1968:	00000097          	auipc	ra,0x0
    196c:	e68080e7          	jalr	-408(ra) # 17d0 <oled_wait>
    1970:	25c00793          	li	a5,604
    1974:	00f42023          	sw	a5,0(s0)
    1978:	00812403          	lw	s0,8(sp)
    197c:	00c12083          	lw	ra,12(sp)
    1980:	00412483          	lw	s1,4(sp)
    1984:	00012903          	lw	s2,0(sp)
    1988:	01010113          	addi	sp,sp,16
    198c:	00000317          	auipc	t1,0x0
    1990:	e4430067          	jr	-444(t1) # 17d0 <oled_wait>

00001994 <oled_clear>:
    1994:	fe010113          	addi	sp,sp,-32
    1998:	000057b7          	lui	a5,0x5
    199c:	01312623          	sw	s3,12(sp)
    19a0:	3c87a983          	lw	s3,968(a5) # 53c8 <OLED>
    19a4:	00812c23          	sw	s0,24(sp)
    19a8:	01212823          	sw	s2,16(sp)
    19ac:	00112e23          	sw	ra,28(sp)
    19b0:	00912a23          	sw	s1,20(sp)
    19b4:	08000913          	li	s2,128
    19b8:	40056413          	ori	s0,a0,1024
    19bc:	08000493          	li	s1,128
    19c0:	0089a023          	sw	s0,0(s3)
    19c4:	00000097          	auipc	ra,0x0
    19c8:	e0c080e7          	jalr	-500(ra) # 17d0 <oled_wait>
    19cc:	0089a023          	sw	s0,0(s3)
    19d0:	00000097          	auipc	ra,0x0
    19d4:	e00080e7          	jalr	-512(ra) # 17d0 <oled_wait>
    19d8:	fff48493          	addi	s1,s1,-1
    19dc:	0089a023          	sw	s0,0(s3)
    19e0:	00000097          	auipc	ra,0x0
    19e4:	df0080e7          	jalr	-528(ra) # 17d0 <oled_wait>
    19e8:	fc049ce3          	bnez	s1,19c0 <oled_clear+0x2c>
    19ec:	fff90913          	addi	s2,s2,-1
    19f0:	fc0916e3          	bnez	s2,19bc <oled_clear+0x28>
    19f4:	01c12083          	lw	ra,28(sp)
    19f8:	01812403          	lw	s0,24(sp)
    19fc:	01412483          	lw	s1,20(sp)
    1a00:	01012903          	lw	s2,16(sp)
    1a04:	00c12983          	lw	s3,12(sp)
    1a08:	02010113          	addi	sp,sp,32
    1a0c:	00008067          	ret

00001a10 <display_framebuffer>:
    1a10:	000057b7          	lui	a5,0x5
    1a14:	3b07a503          	lw	a0,944(a5) # 53b0 <DISPLAY>
    1a18:	00008067          	ret

00001a1c <display_set_cursor>:
    1a1c:	000057b7          	lui	a5,0x5
    1a20:	6ca7a823          	sw	a0,1744(a5) # 56d0 <cursor_x>
    1a24:	000057b7          	lui	a5,0x5
    1a28:	6cb7a623          	sw	a1,1740(a5) # 56cc <cursor_y>
    1a2c:	00008067          	ret

00001a30 <display_set_front_back_color>:
    1a30:	000057b7          	lui	a5,0x5
    1a34:	6ca784a3          	sb	a0,1737(a5) # 56c9 <front_color>
    1a38:	000057b7          	lui	a5,0x5
    1a3c:	6cb78423          	sb	a1,1736(a5) # 56c8 <back_color>
    1a40:	00008067          	ret

00001a44 <display_putchar>:
    1a44:	00a00793          	li	a5,10
    1a48:	00005737          	lui	a4,0x5
    1a4c:	02f51663          	bne	a0,a5,1a78 <display_putchar+0x34>
    1a50:	6c072823          	sw	zero,1744(a4) # 56d0 <cursor_x>
    1a54:	00005737          	lui	a4,0x5
    1a58:	6cc72783          	lw	a5,1740(a4) # 56cc <cursor_y>
    1a5c:	00878793          	addi	a5,a5,8
    1a60:	6cf72623          	sw	a5,1740(a4)
    1a64:	07f00713          	li	a4,127
    1a68:	00f75663          	bge	a4,a5,1a74 <display_putchar+0x30>
    1a6c:	000057b7          	lui	a5,0x5
    1a70:	6c07a623          	sw	zero,1740(a5) # 56cc <cursor_y>
    1a74:	00008067          	ret
    1a78:	ff010113          	addi	sp,sp,-16
    1a7c:	00812623          	sw	s0,12(sp)
    1a80:	00912423          	sw	s1,8(sp)
    1a84:	01f00793          	li	a5,31
    1a88:	0ea7d263          	bge	a5,a0,1b6c <display_putchar+0x128>
    1a8c:	00005f37          	lui	t5,0x5
    1a90:	6ccf2783          	lw	a5,1740(t5) # 56cc <cursor_y>
    1a94:	08000593          	li	a1,128
    1a98:	40f585b3          	sub	a1,a1,a5
    1a9c:	00800793          	li	a5,8
    1aa0:	00b7d463          	bge	a5,a1,1aa8 <display_putchar+0x64>
    1aa4:	00800593          	li	a1,8
    1aa8:	6d072783          	lw	a5,1744(a4)
    1aac:	08000813          	li	a6,128
    1ab0:	40f80833          	sub	a6,a6,a5
    1ab4:	00500793          	li	a5,5
    1ab8:	0107d463          	bge	a5,a6,1ac0 <display_putchar+0x7c>
    1abc:	00500813          	li	a6,5
    1ac0:	000057b7          	lui	a5,0x5
    1ac4:	3b47ae03          	lw	t3,948(a5) # 53b4 <RGBSEL>
    1ac8:	000057b7          	lui	a5,0x5
    1acc:	3b07a283          	lw	t0,944(a5) # 53b0 <DISPLAY>
    1ad0:	00251693          	slli	a3,a0,0x2
    1ad4:	000057b7          	lui	a5,0x5
    1ad8:	00a686b3          	add	a3,a3,a0
    1adc:	4ac78793          	addi	a5,a5,1196 # 54ac <font>
    1ae0:	00f686b3          	add	a3,a3,a5
    1ae4:	00000613          	li	a2,0
    1ae8:	00100e93          	li	t4,1
    1aec:	000053b7          	lui	t2,0x5
    1af0:	00005437          	lui	s0,0x5
    1af4:	00200493          	li	s1,2
    1af8:	06b65a63          	bge	a2,a1,1b6c <display_putchar+0x128>
    1afc:	00ce9fb3          	sll	t6,t4,a2
    1b00:	00068313          	mv	t1,a3
    1b04:	00000893          	li	a7,0
    1b08:	04c0006f          	j	1b54 <display_putchar+0x110>
    1b0c:	6ccf2783          	lw	a5,1740(t5)
    1b10:	00a88533          	add	a0,a7,a0
    1b14:	00751513          	slli	a0,a0,0x7
    1b18:	00f607b3          	add	a5,a2,a5
    1b1c:	00a787b3          	add	a5,a5,a0
    1b20:	f6034503          	lbu	a0,-160(t1)
    1b24:	01f57533          	and	a0,a0,t6
    1b28:	02050e63          	beqz	a0,1b64 <display_putchar+0x120>
    1b2c:	6c944503          	lbu	a0,1737(s0) # 56c9 <front_color>
    1b30:	000e2023          	sw	zero,0(t3)
    1b34:	00f287b3          	add	a5,t0,a5
    1b38:	00a78023          	sb	a0,0(a5)
    1b3c:	01de2023          	sw	t4,0(t3)
    1b40:	00a78023          	sb	a0,0(a5)
    1b44:	009e2023          	sw	s1,0(t3)
    1b48:	00a78023          	sb	a0,0(a5)
    1b4c:	00188893          	addi	a7,a7,1
    1b50:	00130313          	addi	t1,t1,1
    1b54:	6d072503          	lw	a0,1744(a4)
    1b58:	fb08cae3          	blt	a7,a6,1b0c <display_putchar+0xc8>
    1b5c:	00160613          	addi	a2,a2,1
    1b60:	f99ff06f          	j	1af8 <display_putchar+0xb4>
    1b64:	6c83c503          	lbu	a0,1736(t2) # 56c8 <back_color>
    1b68:	fc9ff06f          	j	1b30 <display_putchar+0xec>
    1b6c:	6d072783          	lw	a5,1744(a4)
    1b70:	07f00693          	li	a3,127
    1b74:	00578793          	addi	a5,a5,5
    1b78:	00f6c663          	blt	a3,a5,1b84 <display_putchar+0x140>
    1b7c:	6cf72823          	sw	a5,1744(a4)
    1b80:	0240006f          	j	1ba4 <display_putchar+0x160>
    1b84:	6c072823          	sw	zero,1744(a4)
    1b88:	00005737          	lui	a4,0x5
    1b8c:	6cc72783          	lw	a5,1740(a4) # 56cc <cursor_y>
    1b90:	00878793          	addi	a5,a5,8
    1b94:	6cf72623          	sw	a5,1740(a4)
    1b98:	00f6d663          	bge	a3,a5,1ba4 <display_putchar+0x160>
    1b9c:	000057b7          	lui	a5,0x5
    1ba0:	6c07a623          	sw	zero,1740(a5) # 56cc <cursor_y>
    1ba4:	00c12403          	lw	s0,12(sp)
    1ba8:	00812483          	lw	s1,8(sp)
    1bac:	01010113          	addi	sp,sp,16
    1bb0:	00008067          	ret

00001bb4 <display_refresh>:
    1bb4:	00008067          	ret

00001bb8 <print_string>:
    1bb8:	ff010113          	addi	sp,sp,-16
    1bbc:	00812423          	sw	s0,8(sp)
    1bc0:	00912223          	sw	s1,4(sp)
    1bc4:	00112623          	sw	ra,12(sp)
    1bc8:	00050413          	mv	s0,a0
    1bcc:	000054b7          	lui	s1,0x5
    1bd0:	00044503          	lbu	a0,0(s0)
    1bd4:	00051c63          	bnez	a0,1bec <print_string+0x34>
    1bd8:	00c12083          	lw	ra,12(sp)
    1bdc:	00812403          	lw	s0,8(sp)
    1be0:	00412483          	lw	s1,4(sp)
    1be4:	01010113          	addi	sp,sp,16
    1be8:	00008067          	ret
    1bec:	6d44a783          	lw	a5,1748(s1) # 56d4 <f_putchar>
    1bf0:	00140413          	addi	s0,s0,1
    1bf4:	000780e7          	jalr	a5
    1bf8:	fd9ff06f          	j	1bd0 <print_string+0x18>

00001bfc <print_dec>:
    1bfc:	ef010113          	addi	sp,sp,-272
    1c00:	10812423          	sw	s0,264(sp)
    1c04:	10912223          	sw	s1,260(sp)
    1c08:	10112623          	sw	ra,268(sp)
    1c0c:	11212023          	sw	s2,256(sp)
    1c10:	00050413          	mv	s0,a0
    1c14:	000054b7          	lui	s1,0x5
    1c18:	08045063          	bgez	s0,1c98 <print_dec+0x9c>
    1c1c:	6d44a783          	lw	a5,1748(s1) # 56d4 <f_putchar>
    1c20:	02d00513          	li	a0,45
    1c24:	40800433          	neg	s0,s0
    1c28:	000780e7          	jalr	a5
    1c2c:	fedff06f          	j	1c18 <print_dec+0x1c>
    1c30:	00040513          	mv	a0,s0
    1c34:	00a00593          	li	a1,10
    1c38:	00000097          	auipc	ra,0x0
    1c3c:	a20080e7          	jalr	-1504(ra) # 1658 <__divsi3>
    1c40:	00251793          	slli	a5,a0,0x2
    1c44:	00f507b3          	add	a5,a0,a5
    1c48:	00179793          	slli	a5,a5,0x1
    1c4c:	40f40433          	sub	s0,s0,a5
    1c50:	00148493          	addi	s1,s1,1
    1c54:	fe848fa3          	sb	s0,-1(s1)
    1c58:	00050413          	mv	s0,a0
    1c5c:	fc041ae3          	bnez	s0,1c30 <print_dec+0x34>
    1c60:	fd2488e3          	beq	s1,s2,1c30 <print_dec+0x34>
    1c64:	00005437          	lui	s0,0x5
    1c68:	fff4c503          	lbu	a0,-1(s1)
    1c6c:	6d442783          	lw	a5,1748(s0) # 56d4 <f_putchar>
    1c70:	fff48493          	addi	s1,s1,-1
    1c74:	03050513          	addi	a0,a0,48
    1c78:	000780e7          	jalr	a5
    1c7c:	ff2496e3          	bne	s1,s2,1c68 <print_dec+0x6c>
    1c80:	10c12083          	lw	ra,268(sp)
    1c84:	10812403          	lw	s0,264(sp)
    1c88:	10412483          	lw	s1,260(sp)
    1c8c:	10012903          	lw	s2,256(sp)
    1c90:	11010113          	addi	sp,sp,272
    1c94:	00008067          	ret
    1c98:	00010493          	mv	s1,sp
    1c9c:	00048913          	mv	s2,s1
    1ca0:	fbdff06f          	j	1c5c <print_dec+0x60>

00001ca4 <print_hex_digits>:
    1ca4:	fe010113          	addi	sp,sp,-32
    1ca8:	00812c23          	sw	s0,24(sp)
    1cac:	01212823          	sw	s2,16(sp)
    1cb0:	fff58413          	addi	s0,a1,-1
    1cb4:	00005937          	lui	s2,0x5
    1cb8:	00912a23          	sw	s1,20(sp)
    1cbc:	01312623          	sw	s3,12(sp)
    1cc0:	00112e23          	sw	ra,28(sp)
    1cc4:	00050493          	mv	s1,a0
    1cc8:	00241413          	slli	s0,s0,0x2
    1ccc:	46490913          	addi	s2,s2,1124 # 5464 <LEDS+0x98>
    1cd0:	000059b7          	lui	s3,0x5
    1cd4:	02045063          	bgez	s0,1cf4 <print_hex_digits+0x50>
    1cd8:	01c12083          	lw	ra,28(sp)
    1cdc:	01812403          	lw	s0,24(sp)
    1ce0:	01412483          	lw	s1,20(sp)
    1ce4:	01012903          	lw	s2,16(sp)
    1ce8:	00c12983          	lw	s3,12(sp)
    1cec:	02010113          	addi	sp,sp,32
    1cf0:	00008067          	ret
    1cf4:	0084d7b3          	srl	a5,s1,s0
    1cf8:	00f7f793          	andi	a5,a5,15
    1cfc:	00f907b3          	add	a5,s2,a5
    1d00:	6d49a703          	lw	a4,1748(s3) # 56d4 <f_putchar>
    1d04:	0007c503          	lbu	a0,0(a5)
    1d08:	ffc40413          	addi	s0,s0,-4
    1d0c:	000700e7          	jalr	a4
    1d10:	fc5ff06f          	j	1cd4 <print_hex_digits+0x30>

00001d14 <print_hex>:
    1d14:	00800593          	li	a1,8
    1d18:	00000317          	auipc	t1,0x0
    1d1c:	f8c30067          	jr	-116(t1) # 1ca4 <print_hex_digits>

00001d20 <printf>:
    1d20:	fb010113          	addi	sp,sp,-80
    1d24:	04f12223          	sw	a5,68(sp)
    1d28:	03410793          	addi	a5,sp,52
    1d2c:	02812423          	sw	s0,40(sp)
    1d30:	02912223          	sw	s1,36(sp)
    1d34:	03212023          	sw	s2,32(sp)
    1d38:	01312e23          	sw	s3,28(sp)
    1d3c:	01412c23          	sw	s4,24(sp)
    1d40:	01512a23          	sw	s5,20(sp)
    1d44:	01612823          	sw	s6,16(sp)
    1d48:	02112623          	sw	ra,44(sp)
    1d4c:	00050413          	mv	s0,a0
    1d50:	02b12a23          	sw	a1,52(sp)
    1d54:	02c12c23          	sw	a2,56(sp)
    1d58:	02d12e23          	sw	a3,60(sp)
    1d5c:	04e12023          	sw	a4,64(sp)
    1d60:	05012423          	sw	a6,72(sp)
    1d64:	05112623          	sw	a7,76(sp)
    1d68:	00f12623          	sw	a5,12(sp)
    1d6c:	02500913          	li	s2,37
    1d70:	000054b7          	lui	s1,0x5
    1d74:	07300993          	li	s3,115
    1d78:	07800a13          	li	s4,120
    1d7c:	06400a93          	li	s5,100
    1d80:	06300b13          	li	s6,99
    1d84:	00044503          	lbu	a0,0(s0)
    1d88:	02051663          	bnez	a0,1db4 <printf+0x94>
    1d8c:	02c12083          	lw	ra,44(sp)
    1d90:	02812403          	lw	s0,40(sp)
    1d94:	02412483          	lw	s1,36(sp)
    1d98:	02012903          	lw	s2,32(sp)
    1d9c:	01c12983          	lw	s3,28(sp)
    1da0:	01812a03          	lw	s4,24(sp)
    1da4:	01412a83          	lw	s5,20(sp)
    1da8:	01012b03          	lw	s6,16(sp)
    1dac:	05010113          	addi	sp,sp,80
    1db0:	00008067          	ret
    1db4:	09251863          	bne	a0,s2,1e44 <printf+0x124>
    1db8:	00144503          	lbu	a0,1(s0)
    1dbc:	03351463          	bne	a0,s3,1de4 <printf+0xc4>
    1dc0:	00c12783          	lw	a5,12(sp)
    1dc4:	0007a503          	lw	a0,0(a5)
    1dc8:	00478713          	addi	a4,a5,4
    1dcc:	00e12623          	sw	a4,12(sp)
    1dd0:	00000097          	auipc	ra,0x0
    1dd4:	de8080e7          	jalr	-536(ra) # 1bb8 <print_string>
    1dd8:	00140413          	addi	s0,s0,1
    1ddc:	00140413          	addi	s0,s0,1
    1de0:	fa5ff06f          	j	1d84 <printf+0x64>
    1de4:	03451063          	bne	a0,s4,1e04 <printf+0xe4>
    1de8:	00c12783          	lw	a5,12(sp)
    1dec:	0007a503          	lw	a0,0(a5)
    1df0:	00478713          	addi	a4,a5,4
    1df4:	00e12623          	sw	a4,12(sp)
    1df8:	00000097          	auipc	ra,0x0
    1dfc:	f1c080e7          	jalr	-228(ra) # 1d14 <print_hex>
    1e00:	fd9ff06f          	j	1dd8 <printf+0xb8>
    1e04:	03551063          	bne	a0,s5,1e24 <printf+0x104>
    1e08:	00c12783          	lw	a5,12(sp)
    1e0c:	0007a503          	lw	a0,0(a5)
    1e10:	00478713          	addi	a4,a5,4
    1e14:	00e12623          	sw	a4,12(sp)
    1e18:	00000097          	auipc	ra,0x0
    1e1c:	de4080e7          	jalr	-540(ra) # 1bfc <print_dec>
    1e20:	fb9ff06f          	j	1dd8 <printf+0xb8>
    1e24:	6d44a783          	lw	a5,1748(s1) # 56d4 <f_putchar>
    1e28:	01651a63          	bne	a0,s6,1e3c <printf+0x11c>
    1e2c:	00c12703          	lw	a4,12(sp)
    1e30:	00072503          	lw	a0,0(a4)
    1e34:	00470693          	addi	a3,a4,4
    1e38:	00d12623          	sw	a3,12(sp)
    1e3c:	000780e7          	jalr	a5
    1e40:	f99ff06f          	j	1dd8 <printf+0xb8>
    1e44:	6d44a783          	lw	a5,1748(s1)
    1e48:	000780e7          	jalr	a5
    1e4c:	f91ff06f          	j	1ddc <printf+0xbc>

00001e50 <__mulsi3>:
    1e50:	00050793          	mv	a5,a0
    1e54:	00000513          	li	a0,0
    1e58:	00079463          	bnez	a5,1e60 <__mulsi3+0x10>
    1e5c:	00008067          	ret
    1e60:	0017f713          	andi	a4,a5,1
    1e64:	00070463          	beqz	a4,1e6c <__mulsi3+0x1c>
    1e68:	00b50533          	add	a0,a0,a1
    1e6c:	0017d793          	srli	a5,a5,0x1
    1e70:	00159593          	slli	a1,a1,0x1
    1e74:	fe5ff06f          	j	1e58 <__mulsi3+0x8>

00001e78 <fat_list_insert_last>:
    1e78:	00452783          	lw	a5,4(a0)
    1e7c:	04079263          	bnez	a5,1ec0 <fat_list_insert_last+0x48>
    1e80:	00052783          	lw	a5,0(a0)
    1e84:	00079c63          	bnez	a5,1e9c <fat_list_insert_last+0x24>
    1e88:	00b52023          	sw	a1,0(a0)
    1e8c:	00b52223          	sw	a1,4(a0)
    1e90:	0005a023          	sw	zero,0(a1)
    1e94:	0005a223          	sw	zero,4(a1)
    1e98:	00008067          	ret
    1e9c:	0007a703          	lw	a4,0(a5)
    1ea0:	00f5a223          	sw	a5,4(a1)
    1ea4:	00e5a023          	sw	a4,0(a1)
    1ea8:	00071863          	bnez	a4,1eb8 <fat_list_insert_last+0x40>
    1eac:	00b52023          	sw	a1,0(a0)
    1eb0:	00b7a023          	sw	a1,0(a5)
    1eb4:	00008067          	ret
    1eb8:	00b72223          	sw	a1,4(a4)
    1ebc:	ff5ff06f          	j	1eb0 <fat_list_insert_last+0x38>
    1ec0:	0047a703          	lw	a4,4(a5)
    1ec4:	00f5a023          	sw	a5,0(a1)
    1ec8:	00e5a223          	sw	a4,4(a1)
    1ecc:	00071863          	bnez	a4,1edc <fat_list_insert_last+0x64>
    1ed0:	00b52223          	sw	a1,4(a0)
    1ed4:	00b7a223          	sw	a1,4(a5)
    1ed8:	00008067          	ret
    1edc:	00b72023          	sw	a1,0(a4)
    1ee0:	ff5ff06f          	j	1ed4 <fat_list_insert_last+0x5c>

00001ee4 <FileString_StrCmpNoCase>:
    1ee4:	00050313          	mv	t1,a0
    1ee8:	00000793          	li	a5,0
    1eec:	01900e13          	li	t3,25
    1ef0:	00c79663          	bne	a5,a2,1efc <FileString_StrCmpNoCase+0x18>
    1ef4:	00000513          	li	a0,0
    1ef8:	00008067          	ret
    1efc:	00f30733          	add	a4,t1,a5
    1f00:	00074883          	lbu	a7,0(a4)
    1f04:	00f58733          	add	a4,a1,a5
    1f08:	00074803          	lbu	a6,0(a4)
    1f0c:	fbf88713          	addi	a4,a7,-65
    1f10:	0ff77713          	zext.b	a4,a4
    1f14:	00088693          	mv	a3,a7
    1f18:	00ee6663          	bltu	t3,a4,1f24 <FileString_StrCmpNoCase+0x40>
    1f1c:	02088693          	addi	a3,a7,32
    1f20:	0ff6f693          	zext.b	a3,a3
    1f24:	fbf80513          	addi	a0,a6,-65
    1f28:	0ff57513          	zext.b	a0,a0
    1f2c:	00080713          	mv	a4,a6
    1f30:	00ae6663          	bltu	t3,a0,1f3c <FileString_StrCmpNoCase+0x58>
    1f34:	02080713          	addi	a4,a6,32
    1f38:	0ff77713          	zext.b	a4,a4
    1f3c:	40e68533          	sub	a0,a3,a4
    1f40:	00e69863          	bne	a3,a4,1f50 <FileString_StrCmpNoCase+0x6c>
    1f44:	00088663          	beqz	a7,1f50 <FileString_StrCmpNoCase+0x6c>
    1f48:	00178793          	addi	a5,a5,1
    1f4c:	fa0812e3          	bnez	a6,1ef0 <FileString_StrCmpNoCase+0xc>
    1f50:	00008067          	ret

00001f54 <FileString_GetExtension>:
    1f54:	00050713          	mv	a4,a0
    1f58:	00050793          	mv	a5,a0
    1f5c:	02e00613          	li	a2,46
    1f60:	fff00513          	li	a0,-1
    1f64:	0007c683          	lbu	a3,0(a5)
    1f68:	00069463          	bnez	a3,1f70 <FileString_GetExtension+0x1c>
    1f6c:	00008067          	ret
    1f70:	00c69463          	bne	a3,a2,1f78 <FileString_GetExtension+0x24>
    1f74:	40e78533          	sub	a0,a5,a4
    1f78:	00178793          	addi	a5,a5,1
    1f7c:	fe9ff06f          	j	1f64 <FileString_GetExtension+0x10>

00001f80 <fatfs_fat_writeback>:
    1f80:	00059663          	bnez	a1,1f8c <fatfs_fat_writeback+0xc>
    1f84:	00000513          	li	a0,0
    1f88:	00008067          	ret
    1f8c:	2045a703          	lw	a4,516(a1)
    1f90:	ff010113          	addi	sp,sp,-16
    1f94:	00812423          	sw	s0,8(sp)
    1f98:	00112623          	sw	ra,12(sp)
    1f9c:	00058413          	mv	s0,a1
    1fa0:	00070a63          	beqz	a4,1fb4 <fatfs_fat_writeback+0x34>
    1fa4:	03852683          	lw	a3,56(a0)
    1fa8:	00050793          	mv	a5,a0
    1fac:	00069863          	bnez	a3,1fbc <fatfs_fat_writeback+0x3c>
    1fb0:	20042223          	sw	zero,516(s0)
    1fb4:	00100513          	li	a0,1
    1fb8:	0380006f          	j	1ff0 <fatfs_fat_writeback+0x70>
    1fbc:	2005a503          	lw	a0,512(a1)
    1fc0:	0147a703          	lw	a4,20(a5)
    1fc4:	0207a583          	lw	a1,32(a5)
    1fc8:	00100613          	li	a2,1
    1fcc:	40e507b3          	sub	a5,a0,a4
    1fd0:	00178793          	addi	a5,a5,1
    1fd4:	00f5f663          	bgeu	a1,a5,1fe0 <fatfs_fat_writeback+0x60>
    1fd8:	00b70733          	add	a4,a4,a1
    1fdc:	40a70633          	sub	a2,a4,a0
    1fe0:	00040593          	mv	a1,s0
    1fe4:	000680e7          	jalr	a3
    1fe8:	fc0514e3          	bnez	a0,1fb0 <fatfs_fat_writeback+0x30>
    1fec:	00000513          	li	a0,0
    1ff0:	00c12083          	lw	ra,12(sp)
    1ff4:	00812403          	lw	s0,8(sp)
    1ff8:	01010113          	addi	sp,sp,16
    1ffc:	00008067          	ret

00002000 <fatfs_fat_read_sector>:
    2000:	fe010113          	addi	sp,sp,-32
    2004:	01212823          	sw	s2,16(sp)
    2008:	25452903          	lw	s2,596(a0)
    200c:	00812c23          	sw	s0,24(sp)
    2010:	00912a23          	sw	s1,20(sp)
    2014:	01312623          	sw	s3,12(sp)
    2018:	00112e23          	sw	ra,28(sp)
    201c:	00050993          	mv	s3,a0
    2020:	00058493          	mv	s1,a1
    2024:	00000413          	li	s0,0
    2028:	04091063          	bnez	s2,2068 <fatfs_fat_read_sector+0x68>
    202c:	2549a783          	lw	a5,596(s3)
    2030:	20f42623          	sw	a5,524(s0)
    2034:	20442783          	lw	a5,516(s0)
    2038:	2489aa23          	sw	s0,596(s3)
    203c:	08079863          	bnez	a5,20cc <fatfs_fat_read_sector+0xcc>
    2040:	0349a783          	lw	a5,52(s3)
    2044:	20942023          	sw	s1,512(s0)
    2048:	00100613          	li	a2,1
    204c:	00040593          	mv	a1,s0
    2050:	00048513          	mv	a0,s1
    2054:	000780e7          	jalr	a5
    2058:	08051663          	bnez	a0,20e4 <fatfs_fat_read_sector+0xe4>
    205c:	fff00793          	li	a5,-1
    2060:	20f42023          	sw	a5,512(s0)
    2064:	0480006f          	j	20ac <fatfs_fat_read_sector+0xac>
    2068:	20092783          	lw	a5,512(s2)
    206c:	00f4e663          	bltu	s1,a5,2078 <fatfs_fat_read_sector+0x78>
    2070:	00178713          	addi	a4,a5,1
    2074:	02e4e463          	bltu	s1,a4,209c <fatfs_fat_read_sector+0x9c>
    2078:	20c92783          	lw	a5,524(s2)
    207c:	00079663          	bnez	a5,2088 <fatfs_fat_read_sector+0x88>
    2080:	00040a63          	beqz	s0,2094 <fatfs_fat_read_sector+0x94>
    2084:	20042623          	sw	zero,524(s0)
    2088:	00090413          	mv	s0,s2
    208c:	20c92903          	lw	s2,524(s2)
    2090:	f99ff06f          	j	2028 <fatfs_fat_read_sector+0x28>
    2094:	2409aa23          	sw	zero,596(s3)
    2098:	ff1ff06f          	j	2088 <fatfs_fat_read_sector+0x88>
    209c:	40f484b3          	sub	s1,s1,a5
    20a0:	00949493          	slli	s1,s1,0x9
    20a4:	009904b3          	add	s1,s2,s1
    20a8:	20992423          	sw	s1,520(s2)
    20ac:	01c12083          	lw	ra,28(sp)
    20b0:	01812403          	lw	s0,24(sp)
    20b4:	01412483          	lw	s1,20(sp)
    20b8:	00c12983          	lw	s3,12(sp)
    20bc:	00090513          	mv	a0,s2
    20c0:	01012903          	lw	s2,16(sp)
    20c4:	02010113          	addi	sp,sp,32
    20c8:	00008067          	ret
    20cc:	00040593          	mv	a1,s0
    20d0:	00098513          	mv	a0,s3
    20d4:	00000097          	auipc	ra,0x0
    20d8:	eac080e7          	jalr	-340(ra) # 1f80 <fatfs_fat_writeback>
    20dc:	f60512e3          	bnez	a0,2040 <fatfs_fat_read_sector+0x40>
    20e0:	fcdff06f          	j	20ac <fatfs_fat_read_sector+0xac>
    20e4:	20842423          	sw	s0,520(s0)
    20e8:	00040913          	mv	s2,s0
    20ec:	fc1ff06f          	j	20ac <fatfs_fat_read_sector+0xac>

000020f0 <_allocate_file>:
    20f0:	ff010113          	addi	sp,sp,-16
    20f4:	000057b7          	lui	a5,0x5
    20f8:	00812423          	sw	s0,8(sp)
    20fc:	6d87a403          	lw	s0,1752(a5) # 56d8 <_free_file_list>
    2100:	00112623          	sw	ra,12(sp)
    2104:	02040e63          	beqz	s0,2140 <_allocate_file+0x50>
    2108:	00042703          	lw	a4,0(s0)
    210c:	00442683          	lw	a3,4(s0)
    2110:	6d878793          	addi	a5,a5,1752
    2114:	04071063          	bnez	a4,2154 <_allocate_file+0x64>
    2118:	00d7a023          	sw	a3,0(a5)
    211c:	00442683          	lw	a3,4(s0)
    2120:	02069e63          	bnez	a3,215c <_allocate_file+0x6c>
    2124:	00e7a223          	sw	a4,4(a5)
    2128:	00005537          	lui	a0,0x5
    212c:	00040593          	mv	a1,s0
    2130:	6e050513          	addi	a0,a0,1760 # 56e0 <_open_file_list>
    2134:	00000097          	auipc	ra,0x0
    2138:	d44080e7          	jalr	-700(ra) # 1e78 <fat_list_insert_last>
    213c:	bc440413          	addi	s0,s0,-1084
    2140:	00c12083          	lw	ra,12(sp)
    2144:	00040513          	mv	a0,s0
    2148:	00812403          	lw	s0,8(sp)
    214c:	01010113          	addi	sp,sp,16
    2150:	00008067          	ret
    2154:	00d72223          	sw	a3,4(a4)
    2158:	fc5ff06f          	j	211c <_allocate_file+0x2c>
    215c:	00e6a023          	sw	a4,0(a3)
    2160:	fc9ff06f          	j	2128 <_allocate_file+0x38>

00002164 <_free_file>:
    2164:	43c52783          	lw	a5,1084(a0)
    2168:	44052703          	lw	a4,1088(a0)
    216c:	43c50593          	addi	a1,a0,1084
    2170:	02079663          	bnez	a5,219c <_free_file+0x38>
    2174:	000056b7          	lui	a3,0x5
    2178:	6ee6a023          	sw	a4,1760(a3) # 56e0 <_open_file_list>
    217c:	44052703          	lw	a4,1088(a0)
    2180:	02071263          	bnez	a4,21a4 <_free_file+0x40>
    2184:	00005737          	lui	a4,0x5
    2188:	6ef72223          	sw	a5,1764(a4) # 56e4 <_open_file_list+0x4>
    218c:	00005537          	lui	a0,0x5
    2190:	6d850513          	addi	a0,a0,1752 # 56d8 <_free_file_list>
    2194:	00000317          	auipc	t1,0x0
    2198:	ce430067          	jr	-796(t1) # 1e78 <fat_list_insert_last>
    219c:	00e7a223          	sw	a4,4(a5)
    21a0:	fddff06f          	j	217c <_free_file+0x18>
    21a4:	00f72023          	sw	a5,0(a4)
    21a8:	fe5ff06f          	j	218c <_free_file+0x28>

000021ac <fatfs_lba_of_cluster>:
    21ac:	ff010113          	addi	sp,sp,-16
    21b0:	00812423          	sw	s0,8(sp)
    21b4:	00112623          	sw	ra,12(sp)
    21b8:	00050413          	mv	s0,a0
    21bc:	00058513          	mv	a0,a1
    21c0:	00044583          	lbu	a1,0(s0)
    21c4:	ffe50513          	addi	a0,a0,-2
    21c8:	00000097          	auipc	ra,0x0
    21cc:	c88080e7          	jalr	-888(ra) # 1e50 <__mulsi3>
    21d0:	00442783          	lw	a5,4(s0)
    21d4:	00f50533          	add	a0,a0,a5
    21d8:	03042783          	lw	a5,48(s0)
    21dc:	00079863          	bnez	a5,21ec <fatfs_lba_of_cluster+0x40>
    21e0:	02845783          	lhu	a5,40(s0)
    21e4:	4047d793          	srai	a5,a5,0x4
    21e8:	00f50533          	add	a0,a0,a5
    21ec:	00c12083          	lw	ra,12(sp)
    21f0:	00812403          	lw	s0,8(sp)
    21f4:	01010113          	addi	sp,sp,16
    21f8:	00008067          	ret

000021fc <fatfs_sector_read>:
    21fc:	03452783          	lw	a5,52(a0)
    2200:	00058713          	mv	a4,a1
    2204:	00070513          	mv	a0,a4
    2208:	00060593          	mv	a1,a2
    220c:	00068613          	mv	a2,a3
    2210:	00078067          	jr	a5

00002214 <fatfs_sector_write>:
    2214:	03852783          	lw	a5,56(a0)
    2218:	00058713          	mv	a4,a1
    221c:	00070513          	mv	a0,a4
    2220:	00060593          	mv	a1,a2
    2224:	00068613          	mv	a2,a3
    2228:	00078067          	jr	a5

0000222c <fatfs_write_sector>:
    222c:	03852783          	lw	a5,56(a0)
    2230:	0a078863          	beqz	a5,22e0 <fatfs_write_sector+0xb4>
    2234:	fe010113          	addi	sp,sp,-32
    2238:	01212823          	sw	s2,16(sp)
    223c:	00068913          	mv	s2,a3
    2240:	03052683          	lw	a3,48(a0)
    2244:	00812c23          	sw	s0,24(sp)
    2248:	00912a23          	sw	s1,20(sp)
    224c:	00112e23          	sw	ra,28(sp)
    2250:	00d5e733          	or	a4,a1,a3
    2254:	00050413          	mv	s0,a0
    2258:	00060493          	mv	s1,a2
    225c:	04071063          	bnez	a4,229c <fatfs_write_sector+0x70>
    2260:	01052703          	lw	a4,16(a0)
    2264:	06e67063          	bgeu	a2,a4,22c4 <fatfs_write_sector+0x98>
    2268:	01c52503          	lw	a0,28(a0)
    226c:	00c42703          	lw	a4,12(s0)
    2270:	00e50533          	add	a0,a0,a4
    2274:	00c50533          	add	a0,a0,a2
    2278:	02090e63          	beqz	s2,22b4 <fatfs_write_sector+0x88>
    227c:	00100613          	li	a2,1
    2280:	00090593          	mv	a1,s2
    2284:	01812403          	lw	s0,24(sp)
    2288:	01c12083          	lw	ra,28(sp)
    228c:	01412483          	lw	s1,20(sp)
    2290:	01012903          	lw	s2,16(sp)
    2294:	02010113          	addi	sp,sp,32
    2298:	00078067          	jr	a5
    229c:	00f12623          	sw	a5,12(sp)
    22a0:	00000097          	auipc	ra,0x0
    22a4:	f0c080e7          	jalr	-244(ra) # 21ac <fatfs_lba_of_cluster>
    22a8:	00c12783          	lw	a5,12(sp)
    22ac:	00a48533          	add	a0,s1,a0
    22b0:	fc9ff06f          	j	2278 <fatfs_write_sector+0x4c>
    22b4:	24a42223          	sw	a0,580(s0)
    22b8:	00100613          	li	a2,1
    22bc:	04440593          	addi	a1,s0,68
    22c0:	fc5ff06f          	j	2284 <fatfs_write_sector+0x58>
    22c4:	01c12083          	lw	ra,28(sp)
    22c8:	01812403          	lw	s0,24(sp)
    22cc:	01412483          	lw	s1,20(sp)
    22d0:	01012903          	lw	s2,16(sp)
    22d4:	00000513          	li	a0,0
    22d8:	02010113          	addi	sp,sp,32
    22dc:	00008067          	ret
    22e0:	00000513          	li	a0,0
    22e4:	00008067          	ret

000022e8 <fl_init>:
    22e8:	ff010113          	addi	sp,sp,-16
    22ec:	00812423          	sw	s0,8(sp)
    22f0:	00005437          	lui	s0,0x5
    22f4:	00112623          	sw	ra,12(sp)
    22f8:	6d840793          	addi	a5,s0,1752 # 56d8 <_free_file_list>
    22fc:	0007a223          	sw	zero,4(a5)
    2300:	0007a023          	sw	zero,0(a5)
    2304:	000065b7          	lui	a1,0x6
    2308:	000057b7          	lui	a5,0x5
    230c:	6e078793          	addi	a5,a5,1760 # 56e0 <_open_file_list>
    2310:	6d840513          	addi	a0,s0,1752
    2314:	79458593          	addi	a1,a1,1940 # 6794 <_files+0x43c>
    2318:	0007a223          	sw	zero,4(a5)
    231c:	0007a023          	sw	zero,0(a5)
    2320:	00000097          	auipc	ra,0x0
    2324:	b58080e7          	jalr	-1192(ra) # 1e78 <fat_list_insert_last>
    2328:	000075b7          	lui	a1,0x7
    232c:	6d840513          	addi	a0,s0,1752
    2330:	bd858593          	addi	a1,a1,-1064 # 6bd8 <_files+0x880>
    2334:	00000097          	auipc	ra,0x0
    2338:	b44080e7          	jalr	-1212(ra) # 1e78 <fat_list_insert_last>
    233c:	00c12083          	lw	ra,12(sp)
    2340:	00812403          	lw	s0,8(sp)
    2344:	000057b7          	lui	a5,0x5
    2348:	00100713          	li	a4,1
    234c:	6ee7a623          	sw	a4,1772(a5) # 56ec <_filelib_init>
    2350:	01010113          	addi	sp,sp,16
    2354:	00008067          	ret

00002358 <fl_fseek>:
    2358:	000057b7          	lui	a5,0x5
    235c:	6ec7a783          	lw	a5,1772(a5) # 56ec <_filelib_init>
    2360:	fd010113          	addi	sp,sp,-48
    2364:	02812423          	sw	s0,40(sp)
    2368:	02912223          	sw	s1,36(sp)
    236c:	03212023          	sw	s2,32(sp)
    2370:	02112623          	sw	ra,44(sp)
    2374:	01312e23          	sw	s3,28(sp)
    2378:	00050413          	mv	s0,a0
    237c:	00058493          	mv	s1,a1
    2380:	00060913          	mv	s2,a2
    2384:	00079663          	bnez	a5,2390 <fl_fseek+0x38>
    2388:	00000097          	auipc	ra,0x0
    238c:	f60080e7          	jalr	-160(ra) # 22e8 <fl_init>
    2390:	fff00513          	li	a0,-1
    2394:	08040463          	beqz	s0,241c <fl_fseek+0xc4>
    2398:	00200793          	li	a5,2
    239c:	00f91463          	bne	s2,a5,23a4 <fl_fseek+0x4c>
    23a0:	06049e63          	bnez	s1,241c <fl_fseek+0xc4>
    23a4:	000067b7          	lui	a5,0x6
    23a8:	ef078713          	addi	a4,a5,-272 # 5ef0 <_fs>
    23ac:	03c72703          	lw	a4,60(a4)
    23b0:	ef078993          	addi	s3,a5,-272
    23b4:	00070463          	beqz	a4,23bc <fl_fseek+0x64>
    23b8:	000700e7          	jalr	a4
    23bc:	fff00793          	li	a5,-1
    23c0:	42f42823          	sw	a5,1072(s0)
    23c4:	42042a23          	sw	zero,1076(s0)
    23c8:	00091c63          	bnez	s2,23e0 <fl_fseek+0x88>
    23cc:	00c42783          	lw	a5,12(s0)
    23d0:	00942423          	sw	s1,8(s0)
    23d4:	0297f863          	bgeu	a5,s1,2404 <fl_fseek+0xac>
    23d8:	00f42423          	sw	a5,8(s0)
    23dc:	0280006f          	j	2404 <fl_fseek+0xac>
    23e0:	00100793          	li	a5,1
    23e4:	06f91063          	bne	s2,a5,2444 <fl_fseek+0xec>
    23e8:	00842783          	lw	a5,8(s0)
    23ec:	0004c663          	bltz	s1,23f8 <fl_fseek+0xa0>
    23f0:	00f484b3          	add	s1,s1,a5
    23f4:	fd9ff06f          	j	23cc <fl_fseek+0x74>
    23f8:	40900733          	neg	a4,s1
    23fc:	02e7fe63          	bgeu	a5,a4,2438 <fl_fseek+0xe0>
    2400:	00042423          	sw	zero,8(s0)
    2404:	00000513          	li	a0,0
    2408:	0409a783          	lw	a5,64(s3)
    240c:	00078863          	beqz	a5,241c <fl_fseek+0xc4>
    2410:	00a12623          	sw	a0,12(sp)
    2414:	000780e7          	jalr	a5
    2418:	00c12503          	lw	a0,12(sp)
    241c:	02c12083          	lw	ra,44(sp)
    2420:	02812403          	lw	s0,40(sp)
    2424:	02412483          	lw	s1,36(sp)
    2428:	02012903          	lw	s2,32(sp)
    242c:	01c12983          	lw	s3,28(sp)
    2430:	03010113          	addi	sp,sp,48
    2434:	00008067          	ret
    2438:	00f484b3          	add	s1,s1,a5
    243c:	00942423          	sw	s1,8(s0)
    2440:	fc5ff06f          	j	2404 <fl_fseek+0xac>
    2444:	00200793          	li	a5,2
    2448:	fff00513          	li	a0,-1
    244c:	faf91ee3          	bne	s2,a5,2408 <fl_fseek+0xb0>
    2450:	00c42783          	lw	a5,12(s0)
    2454:	f85ff06f          	j	23d8 <fl_fseek+0x80>

00002458 <fl_fgetpos>:
    2458:	06050663          	beqz	a0,24c4 <fl_fgetpos+0x6c>
    245c:	000067b7          	lui	a5,0x6
    2460:	ef078713          	addi	a4,a5,-272 # 5ef0 <_fs>
    2464:	03c72703          	lw	a4,60(a4)
    2468:	ff010113          	addi	sp,sp,-16
    246c:	00812423          	sw	s0,8(sp)
    2470:	00912223          	sw	s1,4(sp)
    2474:	01212023          	sw	s2,0(sp)
    2478:	00112623          	sw	ra,12(sp)
    247c:	00050493          	mv	s1,a0
    2480:	00058913          	mv	s2,a1
    2484:	ef078413          	addi	s0,a5,-272
    2488:	00070463          	beqz	a4,2490 <fl_fgetpos+0x38>
    248c:	000700e7          	jalr	a4
    2490:	0084a783          	lw	a5,8(s1)
    2494:	00f92023          	sw	a5,0(s2)
    2498:	04042783          	lw	a5,64(s0)
    249c:	02079063          	bnez	a5,24bc <fl_fgetpos+0x64>
    24a0:	00c12083          	lw	ra,12(sp)
    24a4:	00812403          	lw	s0,8(sp)
    24a8:	00412483          	lw	s1,4(sp)
    24ac:	00012903          	lw	s2,0(sp)
    24b0:	00000513          	li	a0,0
    24b4:	01010113          	addi	sp,sp,16
    24b8:	00008067          	ret
    24bc:	000780e7          	jalr	a5
    24c0:	fe1ff06f          	j	24a0 <fl_fgetpos+0x48>
    24c4:	fff00513          	li	a0,-1
    24c8:	00008067          	ret

000024cc <fl_ftell>:
    24cc:	fe010113          	addi	sp,sp,-32
    24d0:	00c10593          	addi	a1,sp,12
    24d4:	00112e23          	sw	ra,28(sp)
    24d8:	00012623          	sw	zero,12(sp)
    24dc:	00000097          	auipc	ra,0x0
    24e0:	f7c080e7          	jalr	-132(ra) # 2458 <fl_fgetpos>
    24e4:	01c12083          	lw	ra,28(sp)
    24e8:	00c12503          	lw	a0,12(sp)
    24ec:	02010113          	addi	sp,sp,32
    24f0:	00008067          	ret

000024f4 <fl_closedir>:
    24f4:	00000513          	li	a0,0
    24f8:	00008067          	ret

000024fc <fatfs_lfn_cache_entry>:
    24fc:	0005c783          	lbu	a5,0(a1)
    2500:	01300693          	li	a3,19
    2504:	01f7f793          	andi	a5,a5,31
    2508:	fff78713          	addi	a4,a5,-1
    250c:	0ff77613          	zext.b	a2,a4
    2510:	0ac6ea63          	bltu	a3,a2,25c4 <fatfs_lfn_cache_entry+0xc8>
    2514:	10554683          	lbu	a3,261(a0)
    2518:	00069463          	bnez	a3,2520 <fatfs_lfn_cache_entry+0x24>
    251c:	10f502a3          	sb	a5,261(a0)
    2520:	00171793          	slli	a5,a4,0x1
    2524:	00e787b3          	add	a5,a5,a4
    2528:	0015c683          	lbu	a3,1(a1)
    252c:	00279793          	slli	a5,a5,0x2
    2530:	00e787b3          	add	a5,a5,a4
    2534:	00f50533          	add	a0,a0,a5
    2538:	00d50023          	sb	a3,0(a0)
    253c:	0035c783          	lbu	a5,3(a1)
    2540:	0ff00713          	li	a4,255
    2544:	02000693          	li	a3,32
    2548:	00f500a3          	sb	a5,1(a0)
    254c:	0055c783          	lbu	a5,5(a1)
    2550:	00f50123          	sb	a5,2(a0)
    2554:	0075c783          	lbu	a5,7(a1)
    2558:	00f501a3          	sb	a5,3(a0)
    255c:	0095c783          	lbu	a5,9(a1)
    2560:	00f50223          	sb	a5,4(a0)
    2564:	00e5c783          	lbu	a5,14(a1)
    2568:	00f502a3          	sb	a5,5(a0)
    256c:	0105c783          	lbu	a5,16(a1)
    2570:	00f50323          	sb	a5,6(a0)
    2574:	0125c783          	lbu	a5,18(a1)
    2578:	00f503a3          	sb	a5,7(a0)
    257c:	0145c783          	lbu	a5,20(a1)
    2580:	00f50423          	sb	a5,8(a0)
    2584:	0165c783          	lbu	a5,22(a1)
    2588:	00f504a3          	sb	a5,9(a0)
    258c:	0185c783          	lbu	a5,24(a1)
    2590:	00f50523          	sb	a5,10(a0)
    2594:	01c5c783          	lbu	a5,28(a1)
    2598:	00f505a3          	sb	a5,11(a0)
    259c:	01e5c783          	lbu	a5,30(a1)
    25a0:	00f50623          	sb	a5,12(a0)
    25a4:	00d00793          	li	a5,13
    25a8:	00054603          	lbu	a2,0(a0)
    25ac:	00e61463          	bne	a2,a4,25b4 <fatfs_lfn_cache_entry+0xb8>
    25b0:	00d50023          	sb	a3,0(a0)
    25b4:	fff78793          	addi	a5,a5,-1
    25b8:	0ff7f793          	zext.b	a5,a5
    25bc:	00150513          	addi	a0,a0,1
    25c0:	fe0794e3          	bnez	a5,25a8 <fatfs_lfn_cache_entry+0xac>
    25c4:	00008067          	ret

000025c8 <fatfs_lfn_cache_get>:
    25c8:	10554703          	lbu	a4,261(a0)
    25cc:	01400793          	li	a5,20
    25d0:	00f71663          	bne	a4,a5,25dc <fatfs_lfn_cache_get+0x14>
    25d4:	10050223          	sb	zero,260(a0)
    25d8:	00008067          	ret
    25dc:	02070063          	beqz	a4,25fc <fatfs_lfn_cache_get+0x34>
    25e0:	00171793          	slli	a5,a4,0x1
    25e4:	00e787b3          	add	a5,a5,a4
    25e8:	00279793          	slli	a5,a5,0x2
    25ec:	00e787b3          	add	a5,a5,a4
    25f0:	00f507b3          	add	a5,a0,a5
    25f4:	00078023          	sb	zero,0(a5)
    25f8:	00008067          	ret
    25fc:	00050023          	sb	zero,0(a0)
    2600:	00008067          	ret

00002604 <fatfs_entry_lfn_text>:
    2604:	00b54503          	lbu	a0,11(a0)
    2608:	00f57513          	andi	a0,a0,15
    260c:	ff150513          	addi	a0,a0,-15
    2610:	00153513          	seqz	a0,a0
    2614:	00008067          	ret

00002618 <fatfs_entry_lfn_invalid>:
    2618:	00054703          	lbu	a4,0(a0)
    261c:	00050793          	mv	a5,a0
    2620:	02070463          	beqz	a4,2648 <fatfs_entry_lfn_invalid+0x30>
    2624:	0e500693          	li	a3,229
    2628:	00100513          	li	a0,1
    262c:	02d70063          	beq	a4,a3,264c <fatfs_entry_lfn_invalid+0x34>
    2630:	00b7c783          	lbu	a5,11(a5)
    2634:	00800713          	li	a4,8
    2638:	00e78a63          	beq	a5,a4,264c <fatfs_entry_lfn_invalid+0x34>
    263c:	0067f793          	andi	a5,a5,6
    2640:	00f03533          	snez	a0,a5
    2644:	00008067          	ret
    2648:	00100513          	li	a0,1
    264c:	00008067          	ret

00002650 <fatfs_entry_lfn_exists>:
    2650:	00b5c783          	lbu	a5,11(a1)
    2654:	00f00693          	li	a3,15
    2658:	00050713          	mv	a4,a0
    265c:	02d78a63          	beq	a5,a3,2690 <fatfs_entry_lfn_exists+0x40>
    2660:	0005c683          	lbu	a3,0(a1)
    2664:	00000513          	li	a0,0
    2668:	02068663          	beqz	a3,2694 <fatfs_entry_lfn_exists+0x44>
    266c:	0e500613          	li	a2,229
    2670:	02c68263          	beq	a3,a2,2694 <fatfs_entry_lfn_exists+0x44>
    2674:	00800693          	li	a3,8
    2678:	00d78e63          	beq	a5,a3,2694 <fatfs_entry_lfn_exists+0x44>
    267c:	0067f793          	andi	a5,a5,6
    2680:	00079a63          	bnez	a5,2694 <fatfs_entry_lfn_exists+0x44>
    2684:	10574503          	lbu	a0,261(a4)
    2688:	00a03533          	snez	a0,a0
    268c:	00008067          	ret
    2690:	00000513          	li	a0,0
    2694:	00008067          	ret

00002698 <fatfs_entry_sfn_only>:
    2698:	00b54783          	lbu	a5,11(a0)
    269c:	00f00713          	li	a4,15
    26a0:	02e78663          	beq	a5,a4,26cc <fatfs_entry_sfn_only+0x34>
    26a4:	00054703          	lbu	a4,0(a0)
    26a8:	00000513          	li	a0,0
    26ac:	02070263          	beqz	a4,26d0 <fatfs_entry_sfn_only+0x38>
    26b0:	0e500693          	li	a3,229
    26b4:	00d70e63          	beq	a4,a3,26d0 <fatfs_entry_sfn_only+0x38>
    26b8:	00800713          	li	a4,8
    26bc:	00e78a63          	beq	a5,a4,26d0 <fatfs_entry_sfn_only+0x38>
    26c0:	0067f793          	andi	a5,a5,6
    26c4:	0017b513          	seqz	a0,a5
    26c8:	00008067          	ret
    26cc:	00000513          	li	a0,0
    26d0:	00008067          	ret

000026d4 <fatfs_entry_is_dir>:
    26d4:	00b54503          	lbu	a0,11(a0)
    26d8:	00455513          	srli	a0,a0,0x4
    26dc:	00157513          	andi	a0,a0,1
    26e0:	00008067          	ret

000026e4 <fatfs_entry_is_file>:
    26e4:	00b54503          	lbu	a0,11(a0)
    26e8:	00555513          	srli	a0,a0,0x5
    26ec:	00157513          	andi	a0,a0,1
    26f0:	00008067          	ret

000026f4 <fatfs_lfn_entries_required>:
    26f4:	ff010113          	addi	sp,sp,-16
    26f8:	00112623          	sw	ra,12(sp)
    26fc:	fffff097          	auipc	ra,0xfffff
    2700:	050080e7          	jalr	80(ra) # 174c <strlen>
    2704:	00050a63          	beqz	a0,2718 <fatfs_lfn_entries_required+0x24>
    2708:	00d00593          	li	a1,13
    270c:	00c50513          	addi	a0,a0,12
    2710:	fffff097          	auipc	ra,0xfffff
    2714:	f48080e7          	jalr	-184(ra) # 1658 <__divsi3>
    2718:	00c12083          	lw	ra,12(sp)
    271c:	01010113          	addi	sp,sp,16
    2720:	00008067          	ret

00002724 <fatfs_filename_to_lfn>:
    2724:	fa010113          	addi	sp,sp,-96
    2728:	04912a23          	sw	s1,84(sp)
    272c:	00058493          	mv	s1,a1
    2730:	000055b7          	lui	a1,0x5
    2734:	68c58593          	addi	a1,a1,1676 # 568c <font+0x1e0>
    2738:	05212823          	sw	s2,80(sp)
    273c:	05312623          	sw	s3,76(sp)
    2740:	00060913          	mv	s2,a2
    2744:	00050993          	mv	s3,a0
    2748:	03400613          	li	a2,52
    274c:	00c10513          	addi	a0,sp,12
    2750:	04112e23          	sw	ra,92(sp)
    2754:	04812c23          	sw	s0,88(sp)
    2758:	05412423          	sw	s4,72(sp)
    275c:	05512223          	sw	s5,68(sp)
    2760:	05612023          	sw	s6,64(sp)
    2764:	00068b13          	mv	s6,a3
    2768:	fffff097          	auipc	ra,0xfffff
    276c:	fc0080e7          	jalr	-64(ra) # 1728 <memcpy>
    2770:	00098513          	mv	a0,s3
    2774:	fffff097          	auipc	ra,0xfffff
    2778:	fd8080e7          	jalr	-40(ra) # 174c <strlen>
    277c:	00050a93          	mv	s5,a0
    2780:	00098513          	mv	a0,s3
    2784:	00000097          	auipc	ra,0x0
    2788:	f70080e7          	jalr	-144(ra) # 26f4 <fatfs_lfn_entries_required>
    278c:	00191793          	slli	a5,s2,0x1
    2790:	012787b3          	add	a5,a5,s2
    2794:	00279793          	slli	a5,a5,0x2
    2798:	00050a13          	mv	s4,a0
    279c:	02000613          	li	a2,32
    27a0:	00000593          	li	a1,0
    27a4:	00048513          	mv	a0,s1
    27a8:	01278433          	add	s0,a5,s2
    27ac:	fffff097          	auipc	ra,0xfffff
    27b0:	f60080e7          	jalr	-160(ra) # 170c <memset>
    27b4:	00190793          	addi	a5,s2,1
    27b8:	fffa0a13          	addi	s4,s4,-1
    27bc:	0ff7f793          	zext.b	a5,a5
    27c0:	012a1463          	bne	s4,s2,27c8 <fatfs_filename_to_lfn+0xa4>
    27c4:	0407e793          	ori	a5,a5,64
    27c8:	00f48023          	sb	a5,0(s1)
    27cc:	00f00793          	li	a5,15
    27d0:	00f485a3          	sb	a5,11(s1)
    27d4:	016486a3          	sb	s6,13(s1)
    27d8:	00c10713          	addi	a4,sp,12
    27dc:	00040793          	mv	a5,s0
    27e0:	fff00613          	li	a2,-1
    27e4:	00072683          	lw	a3,0(a4)
    27e8:	00d486b3          	add	a3,s1,a3
    27ec:	0557d463          	bge	a5,s5,2834 <fatfs_filename_to_lfn+0x110>
    27f0:	00f985b3          	add	a1,s3,a5
    27f4:	0005c583          	lbu	a1,0(a1)
    27f8:	00b68023          	sb	a1,0(a3)
    27fc:	00470713          	addi	a4,a4,4
    2800:	04010693          	addi	a3,sp,64
    2804:	00178793          	addi	a5,a5,1
    2808:	fcd71ee3          	bne	a4,a3,27e4 <fatfs_filename_to_lfn+0xc0>
    280c:	05c12083          	lw	ra,92(sp)
    2810:	05812403          	lw	s0,88(sp)
    2814:	05412483          	lw	s1,84(sp)
    2818:	05012903          	lw	s2,80(sp)
    281c:	04c12983          	lw	s3,76(sp)
    2820:	04812a03          	lw	s4,72(sp)
    2824:	04412a83          	lw	s5,68(sp)
    2828:	04012b03          	lw	s6,64(sp)
    282c:	06010113          	addi	sp,sp,96
    2830:	00008067          	ret
    2834:	01579663          	bne	a5,s5,2840 <fatfs_filename_to_lfn+0x11c>
    2838:	00068023          	sb	zero,0(a3)
    283c:	fc1ff06f          	j	27fc <fatfs_filename_to_lfn+0xd8>
    2840:	00c68023          	sb	a2,0(a3)
    2844:	00c680a3          	sb	a2,1(a3)
    2848:	fb5ff06f          	j	27fc <fatfs_filename_to_lfn+0xd8>

0000284c <fatfs_sfn_create_entry>:
    284c:	00000793          	li	a5,0
    2850:	00b00813          	li	a6,11
    2854:	00f508b3          	add	a7,a0,a5
    2858:	0008c303          	lbu	t1,0(a7)
    285c:	00f688b3          	add	a7,a3,a5
    2860:	00178793          	addi	a5,a5,1
    2864:	00688023          	sb	t1,0(a7)
    2868:	ff0796e3          	bne	a5,a6,2854 <fatfs_sfn_create_entry+0x8>
    286c:	02000793          	li	a5,32
    2870:	00f68823          	sb	a5,16(a3)
    2874:	00f68923          	sb	a5,18(a3)
    2878:	00f68c23          	sb	a5,24(a3)
    287c:	000686a3          	sb	zero,13(a3)
    2880:	00068723          	sb	zero,14(a3)
    2884:	000687a3          	sb	zero,15(a3)
    2888:	000688a3          	sb	zero,17(a3)
    288c:	000689a3          	sb	zero,19(a3)
    2890:	00068b23          	sb	zero,22(a3)
    2894:	00068ba3          	sb	zero,23(a3)
    2898:	00068ca3          	sb	zero,25(a3)
    289c:	01000793          	li	a5,16
    28a0:	00071463          	bnez	a4,28a8 <fatfs_sfn_create_entry+0x5c>
    28a4:	02000793          	li	a5,32
    28a8:	00f685a3          	sb	a5,11(a3)
    28ac:	01065793          	srli	a5,a2,0x10
    28b0:	00f68a23          	sb	a5,20(a3)
    28b4:	0087d793          	srli	a5,a5,0x8
    28b8:	00f68aa3          	sb	a5,21(a3)
    28bc:	01061793          	slli	a5,a2,0x10
    28c0:	0107d793          	srli	a5,a5,0x10
    28c4:	0087d793          	srli	a5,a5,0x8
    28c8:	00f68da3          	sb	a5,27(a3)
    28cc:	0085d793          	srli	a5,a1,0x8
    28d0:	00b68e23          	sb	a1,28(a3)
    28d4:	00f68ea3          	sb	a5,29(a3)
    28d8:	0105d793          	srli	a5,a1,0x10
    28dc:	0185d593          	srli	a1,a1,0x18
    28e0:	00068623          	sb	zero,12(a3)
    28e4:	00c68d23          	sb	a2,26(a3)
    28e8:	00f68f23          	sb	a5,30(a3)
    28ec:	00b68fa3          	sb	a1,31(a3)
    28f0:	00008067          	ret

000028f4 <fatfs_lfn_create_sfn>:
    28f4:	0005c703          	lbu	a4,0(a1)
    28f8:	02e00793          	li	a5,46
    28fc:	16f70663          	beq	a4,a5,2a68 <fatfs_lfn_create_sfn+0x174>
    2900:	fe010113          	addi	sp,sp,-32
    2904:	00912a23          	sw	s1,20(sp)
    2908:	00050493          	mv	s1,a0
    290c:	00058513          	mv	a0,a1
    2910:	00112e23          	sw	ra,28(sp)
    2914:	00812c23          	sw	s0,24(sp)
    2918:	01212823          	sw	s2,16(sp)
    291c:	00058413          	mv	s0,a1
    2920:	fffff097          	auipc	ra,0xfffff
    2924:	e2c080e7          	jalr	-468(ra) # 174c <strlen>
    2928:	00b00613          	li	a2,11
    292c:	02000593          	li	a1,32
    2930:	00050913          	mv	s2,a0
    2934:	00048513          	mv	a0,s1
    2938:	fffff097          	auipc	ra,0xfffff
    293c:	dd4080e7          	jalr	-556(ra) # 170c <memset>
    2940:	00300613          	li	a2,3
    2944:	02000593          	li	a1,32
    2948:	00c10513          	addi	a0,sp,12
    294c:	fffff097          	auipc	ra,0xfffff
    2950:	dc0080e7          	jalr	-576(ra) # 170c <memset>
    2954:	fff00713          	li	a4,-1
    2958:	00000793          	li	a5,0
    295c:	02e00693          	li	a3,46
    2960:	0d27c263          	blt	a5,s2,2a24 <fatfs_lfn_create_sfn+0x130>
    2964:	fff00793          	li	a5,-1
    2968:	0ef70863          	beq	a4,a5,2a58 <fatfs_lfn_create_sfn+0x164>
    296c:	00170793          	addi	a5,a4,1
    2970:	00c10693          	addi	a3,sp,12
    2974:	00470613          	addi	a2,a4,4
    2978:	0cf61263          	bne	a2,a5,2a3c <fatfs_lfn_create_sfn+0x148>
    297c:	00000613          	li	a2,0
    2980:	00000693          	li	a3,0
    2984:	02000513          	li	a0,32
    2988:	02e00813          	li	a6,46
    298c:	01900893          	li	a7,25
    2990:	00800313          	li	t1,8
    2994:	02e6dc63          	bge	a3,a4,29cc <fatfs_lfn_create_sfn+0xd8>
    2998:	00d407b3          	add	a5,s0,a3
    299c:	0007c783          	lbu	a5,0(a5)
    29a0:	0ca78063          	beq	a5,a0,2a60 <fatfs_lfn_create_sfn+0x16c>
    29a4:	0b078e63          	beq	a5,a6,2a60 <fatfs_lfn_create_sfn+0x16c>
    29a8:	f9f78593          	addi	a1,a5,-97
    29ac:	0ff5f593          	zext.b	a1,a1
    29b0:	00c48e33          	add	t3,s1,a2
    29b4:	00160613          	addi	a2,a2,1
    29b8:	00b8e663          	bltu	a7,a1,29c4 <fatfs_lfn_create_sfn+0xd0>
    29bc:	fe078793          	addi	a5,a5,-32
    29c0:	0ff7f793          	zext.b	a5,a5
    29c4:	00fe0023          	sb	a5,0(t3)
    29c8:	08661c63          	bne	a2,t1,2a60 <fatfs_lfn_create_sfn+0x16c>
    29cc:	00c10793          	addi	a5,sp,12
    29d0:	00800693          	li	a3,8
    29d4:	01900513          	li	a0,25
    29d8:	00b00593          	li	a1,11
    29dc:	0007c703          	lbu	a4,0(a5)
    29e0:	f9f70613          	addi	a2,a4,-97
    29e4:	0ff67613          	zext.b	a2,a2
    29e8:	00c56663          	bltu	a0,a2,29f4 <fatfs_lfn_create_sfn+0x100>
    29ec:	fe070713          	addi	a4,a4,-32
    29f0:	0ff77713          	zext.b	a4,a4
    29f4:	00d48633          	add	a2,s1,a3
    29f8:	00e60023          	sb	a4,0(a2)
    29fc:	00168693          	addi	a3,a3,1
    2a00:	00178793          	addi	a5,a5,1
    2a04:	fcb69ce3          	bne	a3,a1,29dc <fatfs_lfn_create_sfn+0xe8>
    2a08:	01c12083          	lw	ra,28(sp)
    2a0c:	01812403          	lw	s0,24(sp)
    2a10:	01412483          	lw	s1,20(sp)
    2a14:	01012903          	lw	s2,16(sp)
    2a18:	00100513          	li	a0,1
    2a1c:	02010113          	addi	sp,sp,32
    2a20:	00008067          	ret
    2a24:	00f40633          	add	a2,s0,a5
    2a28:	00064603          	lbu	a2,0(a2)
    2a2c:	00d61463          	bne	a2,a3,2a34 <fatfs_lfn_create_sfn+0x140>
    2a30:	00078713          	mv	a4,a5
    2a34:	00178793          	addi	a5,a5,1
    2a38:	f29ff06f          	j	2960 <fatfs_lfn_create_sfn+0x6c>
    2a3c:	0127d863          	bge	a5,s2,2a4c <fatfs_lfn_create_sfn+0x158>
    2a40:	00f405b3          	add	a1,s0,a5
    2a44:	0005c583          	lbu	a1,0(a1)
    2a48:	00b68023          	sb	a1,0(a3)
    2a4c:	00178793          	addi	a5,a5,1
    2a50:	00168693          	addi	a3,a3,1
    2a54:	f25ff06f          	j	2978 <fatfs_lfn_create_sfn+0x84>
    2a58:	00090713          	mv	a4,s2
    2a5c:	f21ff06f          	j	297c <fatfs_lfn_create_sfn+0x88>
    2a60:	00168693          	addi	a3,a3,1
    2a64:	f31ff06f          	j	2994 <fatfs_lfn_create_sfn+0xa0>
    2a68:	00000513          	li	a0,0
    2a6c:	00008067          	ret

00002a70 <fatfs_lfn_generate_tail>:
    2a70:	000187b7          	lui	a5,0x18
    2a74:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    2a78:	16c7e463          	bltu	a5,a2,2be0 <fatfs_lfn_generate_tail+0x170>
    2a7c:	fa010113          	addi	sp,sp,-96
    2a80:	04812c23          	sw	s0,88(sp)
    2a84:	04912a23          	sw	s1,84(sp)
    2a88:	05412423          	sw	s4,72(sp)
    2a8c:	00050493          	mv	s1,a0
    2a90:	00058a13          	mv	s4,a1
    2a94:	00060413          	mv	s0,a2
    2a98:	00000593          	li	a1,0
    2a9c:	00c00613          	li	a2,12
    2aa0:	00410513          	addi	a0,sp,4
    2aa4:	04112e23          	sw	ra,92(sp)
    2aa8:	05312623          	sw	s3,76(sp)
    2aac:	05512223          	sw	s5,68(sp)
    2ab0:	03712e23          	sw	s7,60(sp)
    2ab4:	05212823          	sw	s2,80(sp)
    2ab8:	05612023          	sw	s6,64(sp)
    2abc:	fffff097          	auipc	ra,0xfffff
    2ac0:	c50080e7          	jalr	-944(ra) # 170c <memset>
    2ac4:	000055b7          	lui	a1,0x5
    2ac8:	07e00793          	li	a5,126
    2acc:	01100613          	li	a2,17
    2ad0:	46458593          	addi	a1,a1,1124 # 5464 <LEDS+0x98>
    2ad4:	01c10513          	addi	a0,sp,28
    2ad8:	01010993          	addi	s3,sp,16
    2adc:	00f10223          	sb	a5,4(sp)
    2ae0:	00098a93          	mv	s5,s3
    2ae4:	fffff097          	auipc	ra,0xfffff
    2ae8:	c44080e7          	jalr	-956(ra) # 1728 <memcpy>
    2aec:	00900b93          	li	s7,9
    2af0:	00a00593          	li	a1,10
    2af4:	00040513          	mv	a0,s0
    2af8:	fffff097          	auipc	ra,0xfffff
    2afc:	bb0080e7          	jalr	-1104(ra) # 16a8 <__umodsi3>
    2b00:	03050793          	addi	a5,a0,48
    2b04:	00278533          	add	a0,a5,sp
    2b08:	fec54783          	lbu	a5,-20(a0)
    2b0c:	00098913          	mv	s2,s3
    2b10:	00040513          	mv	a0,s0
    2b14:	00a00593          	li	a1,10
    2b18:	00f98023          	sb	a5,0(s3)
    2b1c:	00040b13          	mv	s6,s0
    2b20:	fffff097          	auipc	ra,0xfffff
    2b24:	b40080e7          	jalr	-1216(ra) # 1660 <__udivsi3>
    2b28:	00198993          	addi	s3,s3,1
    2b2c:	00050413          	mv	s0,a0
    2b30:	fd6be0e3          	bltu	s7,s6,2af0 <fatfs_lfn_generate_tail+0x80>
    2b34:	00098023          	sb	zero,0(s3)
    2b38:	00410713          	addi	a4,sp,4
    2b3c:	00090793          	mv	a5,s2
    2b40:	00170713          	addi	a4,a4,1
    2b44:	0957f663          	bgeu	a5,s5,2bd0 <fatfs_lfn_generate_tail+0x160>
    2b48:	00f10713          	addi	a4,sp,15
    2b4c:	00000793          	li	a5,0
    2b50:	00e96663          	bltu	s2,a4,2b5c <fatfs_lfn_generate_tail+0xec>
    2b54:	41590933          	sub	s2,s2,s5
    2b58:	00190793          	addi	a5,s2,1
    2b5c:	03078793          	addi	a5,a5,48
    2b60:	002787b3          	add	a5,a5,sp
    2b64:	000a0593          	mv	a1,s4
    2b68:	fc078aa3          	sb	zero,-43(a5)
    2b6c:	00b00613          	li	a2,11
    2b70:	00048513          	mv	a0,s1
    2b74:	fffff097          	auipc	ra,0xfffff
    2b78:	bb4080e7          	jalr	-1100(ra) # 1728 <memcpy>
    2b7c:	00410513          	addi	a0,sp,4
    2b80:	fffff097          	auipc	ra,0xfffff
    2b84:	bcc080e7          	jalr	-1076(ra) # 174c <strlen>
    2b88:	40a484b3          	sub	s1,s1,a0
    2b8c:	00050613          	mv	a2,a0
    2b90:	00410593          	addi	a1,sp,4
    2b94:	00848513          	addi	a0,s1,8
    2b98:	fffff097          	auipc	ra,0xfffff
    2b9c:	b90080e7          	jalr	-1136(ra) # 1728 <memcpy>
    2ba0:	05c12083          	lw	ra,92(sp)
    2ba4:	05812403          	lw	s0,88(sp)
    2ba8:	05412483          	lw	s1,84(sp)
    2bac:	05012903          	lw	s2,80(sp)
    2bb0:	04c12983          	lw	s3,76(sp)
    2bb4:	04812a03          	lw	s4,72(sp)
    2bb8:	04412a83          	lw	s5,68(sp)
    2bbc:	04012b03          	lw	s6,64(sp)
    2bc0:	03c12b83          	lw	s7,60(sp)
    2bc4:	00100513          	li	a0,1
    2bc8:	06010113          	addi	sp,sp,96
    2bcc:	00008067          	ret
    2bd0:	0007c683          	lbu	a3,0(a5)
    2bd4:	fff78793          	addi	a5,a5,-1
    2bd8:	00d70023          	sb	a3,0(a4)
    2bdc:	f65ff06f          	j	2b40 <fatfs_lfn_generate_tail+0xd0>
    2be0:	00000513          	li	a0,0
    2be4:	00008067          	ret

00002be8 <fatfs_total_path_levels>:
    2be8:	00050793          	mv	a5,a0
    2bec:	06050463          	beqz	a0,2c54 <fatfs_total_path_levels+0x6c>
    2bf0:	00054703          	lbu	a4,0(a0)
    2bf4:	02f00693          	li	a3,47
    2bf8:	00d71863          	bne	a4,a3,2c08 <fatfs_total_path_levels+0x20>
    2bfc:	00150793          	addi	a5,a0,1
    2c00:	00000513          	li	a0,0
    2c04:	0400006f          	j	2c44 <fatfs_total_path_levels+0x5c>
    2c08:	00154683          	lbu	a3,1(a0)
    2c0c:	03a00713          	li	a4,58
    2c10:	00e68a63          	beq	a3,a4,2c24 <fatfs_total_path_levels+0x3c>
    2c14:	00254683          	lbu	a3,2(a0)
    2c18:	05c00713          	li	a4,92
    2c1c:	fff00513          	li	a0,-1
    2c20:	02e69c63          	bne	a3,a4,2c58 <fatfs_total_path_levels+0x70>
    2c24:	00378793          	addi	a5,a5,3
    2c28:	05c00713          	li	a4,92
    2c2c:	fd5ff06f          	j	2c00 <fatfs_total_path_levels+0x18>
    2c30:	00178793          	addi	a5,a5,1
    2c34:	00e68663          	beq	a3,a4,2c40 <fatfs_total_path_levels+0x58>
    2c38:	0007c683          	lbu	a3,0(a5)
    2c3c:	fe069ae3          	bnez	a3,2c30 <fatfs_total_path_levels+0x48>
    2c40:	00150513          	addi	a0,a0,1
    2c44:	0007c683          	lbu	a3,0(a5)
    2c48:	fe0698e3          	bnez	a3,2c38 <fatfs_total_path_levels+0x50>
    2c4c:	fff50513          	addi	a0,a0,-1
    2c50:	00008067          	ret
    2c54:	fff00513          	li	a0,-1
    2c58:	00008067          	ret

00002c5c <fatfs_get_substring>:
    2c5c:	0c050c63          	beqz	a0,2d34 <fatfs_get_substring+0xd8>
    2c60:	fe010113          	addi	sp,sp,-32
    2c64:	00912a23          	sw	s1,20(sp)
    2c68:	00112e23          	sw	ra,28(sp)
    2c6c:	00812c23          	sw	s0,24(sp)
    2c70:	01212823          	sw	s2,16(sp)
    2c74:	01312623          	sw	s3,12(sp)
    2c78:	01412423          	sw	s4,8(sp)
    2c7c:	00050793          	mv	a5,a0
    2c80:	00068493          	mv	s1,a3
    2c84:	fff00513          	li	a0,-1
    2c88:	06d05a63          	blez	a3,2cfc <fatfs_get_substring+0xa0>
    2c8c:	0007c983          	lbu	s3,0(a5)
    2c90:	02f00713          	li	a4,47
    2c94:	00058a13          	mv	s4,a1
    2c98:	00060913          	mv	s2,a2
    2c9c:	00178413          	addi	s0,a5,1
    2ca0:	02e98463          	beq	s3,a4,2cc8 <fatfs_get_substring+0x6c>
    2ca4:	0017c683          	lbu	a3,1(a5)
    2ca8:	03a00713          	li	a4,58
    2cac:	00e68a63          	beq	a3,a4,2cc0 <fatfs_get_substring+0x64>
    2cb0:	0027c683          	lbu	a3,2(a5)
    2cb4:	05c00713          	li	a4,92
    2cb8:	fff00513          	li	a0,-1
    2cbc:	04e69063          	bne	a3,a4,2cfc <fatfs_get_substring+0xa0>
    2cc0:	00378413          	addi	s0,a5,3
    2cc4:	05c00993          	li	s3,92
    2cc8:	00040513          	mv	a0,s0
    2ccc:	fffff097          	auipc	ra,0xfffff
    2cd0:	a80080e7          	jalr	-1408(ra) # 174c <strlen>
    2cd4:	00000713          	li	a4,0
    2cd8:	00000693          	li	a3,0
    2cdc:	00000793          	li	a5,0
    2ce0:	fff48493          	addi	s1,s1,-1
    2ce4:	00e905b3          	add	a1,s2,a4
    2ce8:	02a7ca63          	blt	a5,a0,2d1c <fatfs_get_substring+0xc0>
    2cec:	00058023          	sb	zero,0(a1)
    2cf0:	00094503          	lbu	a0,0(s2)
    2cf4:	00153513          	seqz	a0,a0
    2cf8:	40a00533          	neg	a0,a0
    2cfc:	01c12083          	lw	ra,28(sp)
    2d00:	01812403          	lw	s0,24(sp)
    2d04:	01412483          	lw	s1,20(sp)
    2d08:	01012903          	lw	s2,16(sp)
    2d0c:	00c12983          	lw	s3,12(sp)
    2d10:	00812a03          	lw	s4,8(sp)
    2d14:	02010113          	addi	sp,sp,32
    2d18:	00008067          	ret
    2d1c:	00f40633          	add	a2,s0,a5
    2d20:	00064603          	lbu	a2,0(a2)
    2d24:	01361c63          	bne	a2,s3,2d3c <fatfs_get_substring+0xe0>
    2d28:	00168693          	addi	a3,a3,1
    2d2c:	00178793          	addi	a5,a5,1
    2d30:	fb5ff06f          	j	2ce4 <fatfs_get_substring+0x88>
    2d34:	fff00513          	li	a0,-1
    2d38:	00008067          	ret
    2d3c:	ff4698e3          	bne	a3,s4,2d2c <fatfs_get_substring+0xd0>
    2d40:	fe9756e3          	bge	a4,s1,2d2c <fatfs_get_substring+0xd0>
    2d44:	00170713          	addi	a4,a4,1
    2d48:	00c58023          	sb	a2,0(a1)
    2d4c:	fe1ff06f          	j	2d2c <fatfs_get_substring+0xd0>

00002d50 <fatfs_split_path>:
    2d50:	fd010113          	addi	sp,sp,-48
    2d54:	02912223          	sw	s1,36(sp)
    2d58:	01312e23          	sw	s3,28(sp)
    2d5c:	01412c23          	sw	s4,24(sp)
    2d60:	01512a23          	sw	s5,20(sp)
    2d64:	02112623          	sw	ra,44(sp)
    2d68:	00068a93          	mv	s5,a3
    2d6c:	02812423          	sw	s0,40(sp)
    2d70:	03212023          	sw	s2,32(sp)
    2d74:	00050993          	mv	s3,a0
    2d78:	00058493          	mv	s1,a1
    2d7c:	00060a13          	mv	s4,a2
    2d80:	00e12623          	sw	a4,12(sp)
    2d84:	00000097          	auipc	ra,0x0
    2d88:	e64080e7          	jalr	-412(ra) # 2be8 <fatfs_total_path_levels>
    2d8c:	fff00793          	li	a5,-1
    2d90:	00c12683          	lw	a3,12(sp)
    2d94:	02f51863          	bne	a0,a5,2dc4 <fatfs_split_path+0x74>
    2d98:	fff00913          	li	s2,-1
    2d9c:	02c12083          	lw	ra,44(sp)
    2da0:	02812403          	lw	s0,40(sp)
    2da4:	02412483          	lw	s1,36(sp)
    2da8:	01c12983          	lw	s3,28(sp)
    2dac:	01812a03          	lw	s4,24(sp)
    2db0:	01412a83          	lw	s5,20(sp)
    2db4:	00090513          	mv	a0,s2
    2db8:	02012903          	lw	s2,32(sp)
    2dbc:	03010113          	addi	sp,sp,48
    2dc0:	00008067          	ret
    2dc4:	00050593          	mv	a1,a0
    2dc8:	00050413          	mv	s0,a0
    2dcc:	000a8613          	mv	a2,s5
    2dd0:	00098513          	mv	a0,s3
    2dd4:	00000097          	auipc	ra,0x0
    2dd8:	e88080e7          	jalr	-376(ra) # 2c5c <fatfs_get_substring>
    2ddc:	00050913          	mv	s2,a0
    2de0:	fa051ce3          	bnez	a0,2d98 <fatfs_split_path+0x48>
    2de4:	00041663          	bnez	s0,2df0 <fatfs_split_path+0xa0>
    2de8:	00048023          	sb	zero,0(s1)
    2dec:	fb1ff06f          	j	2d9c <fatfs_split_path+0x4c>
    2df0:	00098513          	mv	a0,s3
    2df4:	fffff097          	auipc	ra,0xfffff
    2df8:	958080e7          	jalr	-1704(ra) # 174c <strlen>
    2dfc:	00050413          	mv	s0,a0
    2e00:	000a8513          	mv	a0,s5
    2e04:	fffff097          	auipc	ra,0xfffff
    2e08:	948080e7          	jalr	-1720(ra) # 174c <strlen>
    2e0c:	40a40433          	sub	s0,s0,a0
    2e10:	008a5463          	bge	s4,s0,2e18 <fatfs_split_path+0xc8>
    2e14:	000a0413          	mv	s0,s4
    2e18:	00048513          	mv	a0,s1
    2e1c:	00040613          	mv	a2,s0
    2e20:	00098593          	mv	a1,s3
    2e24:	008484b3          	add	s1,s1,s0
    2e28:	fffff097          	auipc	ra,0xfffff
    2e2c:	900080e7          	jalr	-1792(ra) # 1728 <memcpy>
    2e30:	fe048fa3          	sb	zero,-1(s1)
    2e34:	f69ff06f          	j	2d9c <fatfs_split_path+0x4c>

00002e38 <fatfs_compare_names>:
    2e38:	fd010113          	addi	sp,sp,-48
    2e3c:	02112623          	sw	ra,44(sp)
    2e40:	02812423          	sw	s0,40(sp)
    2e44:	02912223          	sw	s1,36(sp)
    2e48:	03212023          	sw	s2,32(sp)
    2e4c:	01312e23          	sw	s3,28(sp)
    2e50:	00058913          	mv	s2,a1
    2e54:	01412c23          	sw	s4,24(sp)
    2e58:	01512a23          	sw	s5,20(sp)
    2e5c:	01612823          	sw	s6,16(sp)
    2e60:	00050a13          	mv	s4,a0
    2e64:	fffff097          	auipc	ra,0xfffff
    2e68:	0f0080e7          	jalr	240(ra) # 1f54 <FileString_GetExtension>
    2e6c:	00050493          	mv	s1,a0
    2e70:	00090513          	mv	a0,s2
    2e74:	fffff097          	auipc	ra,0xfffff
    2e78:	0e0080e7          	jalr	224(ra) # 1f54 <FileString_GetExtension>
    2e7c:	fff00793          	li	a5,-1
    2e80:	00050413          	mv	s0,a0
    2e84:	00000993          	li	s3,0
    2e88:	08f49a63          	bne	s1,a5,2f1c <fatfs_compare_names+0xe4>
    2e8c:	0c951e63          	bne	a0,s1,2f68 <fatfs_compare_names+0x130>
    2e90:	000a0513          	mv	a0,s4
    2e94:	fffff097          	auipc	ra,0xfffff
    2e98:	8b8080e7          	jalr	-1864(ra) # 174c <strlen>
    2e9c:	00050493          	mv	s1,a0
    2ea0:	00090513          	mv	a0,s2
    2ea4:	fffff097          	auipc	ra,0xfffff
    2ea8:	8a8080e7          	jalr	-1880(ra) # 174c <strlen>
    2eac:	00050413          	mv	s0,a0
    2eb0:	fff48793          	addi	a5,s1,-1
    2eb4:	00fa07b3          	add	a5,s4,a5
    2eb8:	40978733          	sub	a4,a5,s1
    2ebc:	02000613          	li	a2,32
    2ec0:	00078693          	mv	a3,a5
    2ec4:	00e78863          	beq	a5,a4,2ed4 <fatfs_compare_names+0x9c>
    2ec8:	0007c583          	lbu	a1,0(a5)
    2ecc:	fff78793          	addi	a5,a5,-1
    2ed0:	0cc58263          	beq	a1,a2,2f94 <fatfs_compare_names+0x15c>
    2ed4:	fff40793          	addi	a5,s0,-1
    2ed8:	00f907b3          	add	a5,s2,a5
    2edc:	40878733          	sub	a4,a5,s0
    2ee0:	02000613          	li	a2,32
    2ee4:	00078693          	mv	a3,a5
    2ee8:	00e78863          	beq	a5,a4,2ef8 <fatfs_compare_names+0xc0>
    2eec:	0007c583          	lbu	a1,0(a5)
    2ef0:	fff78793          	addi	a5,a5,-1
    2ef4:	0ac58463          	beq	a1,a2,2f9c <fatfs_compare_names+0x164>
    2ef8:	00000993          	li	s3,0
    2efc:	06941663          	bne	s0,s1,2f68 <fatfs_compare_names+0x130>
    2f00:	00040613          	mv	a2,s0
    2f04:	00090593          	mv	a1,s2
    2f08:	000a0513          	mv	a0,s4
    2f0c:	fffff097          	auipc	ra,0xfffff
    2f10:	fd8080e7          	jalr	-40(ra) # 1ee4 <FileString_StrCmpNoCase>
    2f14:	00153993          	seqz	s3,a0
    2f18:	0500006f          	j	2f68 <fatfs_compare_names+0x130>
    2f1c:	04f50663          	beq	a0,a5,2f68 <fatfs_compare_names+0x130>
    2f20:	00148a93          	addi	s5,s1,1
    2f24:	015a0ab3          	add	s5,s4,s5
    2f28:	00150b13          	addi	s6,a0,1
    2f2c:	000a8513          	mv	a0,s5
    2f30:	fffff097          	auipc	ra,0xfffff
    2f34:	81c080e7          	jalr	-2020(ra) # 174c <strlen>
    2f38:	01690b33          	add	s6,s2,s6
    2f3c:	00a12623          	sw	a0,12(sp)
    2f40:	000b0513          	mv	a0,s6
    2f44:	fffff097          	auipc	ra,0xfffff
    2f48:	808080e7          	jalr	-2040(ra) # 174c <strlen>
    2f4c:	00c12603          	lw	a2,12(sp)
    2f50:	00a61c63          	bne	a2,a0,2f68 <fatfs_compare_names+0x130>
    2f54:	000b0593          	mv	a1,s6
    2f58:	000a8513          	mv	a0,s5
    2f5c:	fffff097          	auipc	ra,0xfffff
    2f60:	f88080e7          	jalr	-120(ra) # 1ee4 <FileString_StrCmpNoCase>
    2f64:	f40506e3          	beqz	a0,2eb0 <fatfs_compare_names+0x78>
    2f68:	02c12083          	lw	ra,44(sp)
    2f6c:	02812403          	lw	s0,40(sp)
    2f70:	02412483          	lw	s1,36(sp)
    2f74:	02012903          	lw	s2,32(sp)
    2f78:	01812a03          	lw	s4,24(sp)
    2f7c:	01412a83          	lw	s5,20(sp)
    2f80:	01012b03          	lw	s6,16(sp)
    2f84:	00098513          	mv	a0,s3
    2f88:	01c12983          	lw	s3,28(sp)
    2f8c:	03010113          	addi	sp,sp,48
    2f90:	00008067          	ret
    2f94:	414684b3          	sub	s1,a3,s4
    2f98:	f29ff06f          	j	2ec0 <fatfs_compare_names+0x88>
    2f9c:	41268433          	sub	s0,a3,s2
    2fa0:	f45ff06f          	j	2ee4 <fatfs_compare_names+0xac>

00002fa4 <_check_file_open>:
    2fa4:	fe010113          	addi	sp,sp,-32
    2fa8:	000057b7          	lui	a5,0x5
    2fac:	00812c23          	sw	s0,24(sp)
    2fb0:	6e07a403          	lw	s0,1760(a5) # 56e0 <_open_file_list>
    2fb4:	00912a23          	sw	s1,20(sp)
    2fb8:	01212823          	sw	s2,16(sp)
    2fbc:	01312623          	sw	s3,12(sp)
    2fc0:	00112e23          	sw	ra,28(sp)
    2fc4:	00050493          	mv	s1,a0
    2fc8:	01450913          	addi	s2,a0,20
    2fcc:	11850993          	addi	s3,a0,280
    2fd0:	02041263          	bnez	s0,2ff4 <_check_file_open+0x50>
    2fd4:	00000513          	li	a0,0
    2fd8:	01c12083          	lw	ra,28(sp)
    2fdc:	01812403          	lw	s0,24(sp)
    2fe0:	01412483          	lw	s1,20(sp)
    2fe4:	01012903          	lw	s2,16(sp)
    2fe8:	00c12983          	lw	s3,12(sp)
    2fec:	02010113          	addi	sp,sp,32
    2ff0:	00008067          	ret
    2ff4:	bc440793          	addi	a5,s0,-1084
    2ff8:	02f48663          	beq	s1,a5,3024 <_check_file_open+0x80>
    2ffc:	00090593          	mv	a1,s2
    3000:	bd840513          	addi	a0,s0,-1064
    3004:	00000097          	auipc	ra,0x0
    3008:	e34080e7          	jalr	-460(ra) # 2e38 <fatfs_compare_names>
    300c:	00050c63          	beqz	a0,3024 <_check_file_open+0x80>
    3010:	00098593          	mv	a1,s3
    3014:	cdc40513          	addi	a0,s0,-804
    3018:	00000097          	auipc	ra,0x0
    301c:	e20080e7          	jalr	-480(ra) # 2e38 <fatfs_compare_names>
    3020:	00051663          	bnez	a0,302c <_check_file_open+0x88>
    3024:	00442403          	lw	s0,4(s0)
    3028:	fa9ff06f          	j	2fd0 <_check_file_open+0x2c>
    302c:	00100513          	li	a0,1
    3030:	fa9ff06f          	j	2fd8 <_check_file_open+0x34>

00003034 <fatfs_get_sfn_display_name>:
    3034:	00000713          	li	a4,0
    3038:	00c00613          	li	a2,12
    303c:	02000813          	li	a6,32
    3040:	01900893          	li	a7,25
    3044:	0005c783          	lbu	a5,0(a1)
    3048:	00078463          	beqz	a5,3050 <fatfs_get_sfn_display_name+0x1c>
    304c:	00c71863          	bne	a4,a2,305c <fatfs_get_sfn_display_name+0x28>
    3050:	00050023          	sb	zero,0(a0)
    3054:	00100513          	li	a0,1
    3058:	00008067          	ret
    305c:	00158593          	addi	a1,a1,1
    3060:	ff0782e3          	beq	a5,a6,3044 <fatfs_get_sfn_display_name+0x10>
    3064:	fbf78693          	addi	a3,a5,-65
    3068:	0ff6f693          	zext.b	a3,a3
    306c:	00d8e663          	bltu	a7,a3,3078 <fatfs_get_sfn_display_name+0x44>
    3070:	02078793          	addi	a5,a5,32
    3074:	0ff7f793          	zext.b	a5,a5
    3078:	00f50023          	sb	a5,0(a0)
    307c:	00170713          	addi	a4,a4,1
    3080:	00150513          	addi	a0,a0,1
    3084:	fc1ff06f          	j	3044 <fatfs_get_sfn_display_name+0x10>

00003088 <fatfs_fat_init>:
    3088:	ff010113          	addi	sp,sp,-16
    308c:	00812423          	sw	s0,8(sp)
    3090:	00912223          	sw	s1,4(sp)
    3094:	00112623          	sw	ra,12(sp)
    3098:	fff00793          	li	a5,-1
    309c:	25850493          	addi	s1,a0,600
    30a0:	00050413          	mv	s0,a0
    30a4:	44f52c23          	sw	a5,1112(a0)
    30a8:	24052a23          	sw	zero,596(a0)
    30ac:	44052e23          	sw	zero,1116(a0)
    30b0:	20000613          	li	a2,512
    30b4:	00048513          	mv	a0,s1
    30b8:	00000593          	li	a1,0
    30bc:	ffffe097          	auipc	ra,0xffffe
    30c0:	650080e7          	jalr	1616(ra) # 170c <memset>
    30c4:	25442783          	lw	a5,596(s0)
    30c8:	00c12083          	lw	ra,12(sp)
    30cc:	24942a23          	sw	s1,596(s0)
    30d0:	46042023          	sw	zero,1120(s0)
    30d4:	46f42223          	sw	a5,1124(s0)
    30d8:	00812403          	lw	s0,8(sp)
    30dc:	00412483          	lw	s1,4(sp)
    30e0:	01010113          	addi	sp,sp,16
    30e4:	00008067          	ret

000030e8 <fatfs_init>:
    30e8:	fd010113          	addi	sp,sp,-48
    30ec:	02812423          	sw	s0,40(sp)
    30f0:	02112623          	sw	ra,44(sp)
    30f4:	02912223          	sw	s1,36(sp)
    30f8:	03212023          	sw	s2,32(sp)
    30fc:	01312e23          	sw	s3,28(sp)
    3100:	fff00793          	li	a5,-1
    3104:	24f52223          	sw	a5,580(a0)
    3108:	24052423          	sw	zero,584(a0)
    310c:	02052223          	sw	zero,36(a0)
    3110:	00050413          	mv	s0,a0
    3114:	00000097          	auipc	ra,0x0
    3118:	f74080e7          	jalr	-140(ra) # 3088 <fatfs_fat_init>
    311c:	03442783          	lw	a5,52(s0)
    3120:	02079263          	bnez	a5,3144 <fatfs_init+0x5c>
    3124:	fff00513          	li	a0,-1
    3128:	02c12083          	lw	ra,44(sp)
    312c:	02812403          	lw	s0,40(sp)
    3130:	02412483          	lw	s1,36(sp)
    3134:	02012903          	lw	s2,32(sp)
    3138:	01c12983          	lw	s3,28(sp)
    313c:	03010113          	addi	sp,sp,48
    3140:	00008067          	ret
    3144:	04440593          	addi	a1,s0,68
    3148:	00100613          	li	a2,1
    314c:	00000513          	li	a0,0
    3150:	00b12623          	sw	a1,12(sp)
    3154:	000780e7          	jalr	a5
    3158:	fc0506e3          	beqz	a0,3124 <fatfs_init+0x3c>
    315c:	24042703          	lw	a4,576(s0)
    3160:	ffff07b7          	lui	a5,0xffff0
    3164:	00c12583          	lw	a1,12(sp)
    3168:	00e7f7b3          	and	a5,a5,a4
    316c:	aa550737          	lui	a4,0xaa550
    3170:	00e78663          	beq	a5,a4,317c <fatfs_init+0x94>
    3174:	ffd00513          	li	a0,-3
    3178:	fb1ff06f          	j	3128 <fatfs_init+0x40>
    317c:	24245703          	lhu	a4,578(s0)
    3180:	0000b7b7          	lui	a5,0xb
    3184:	a5578793          	addi	a5,a5,-1451 # aa55 <_files+0x46fd>
    3188:	ffc00513          	li	a0,-4
    318c:	f8f71ee3          	bne	a4,a5,3128 <fatfs_init+0x40>
    3190:	20644783          	lbu	a5,518(s0)
    3194:	00600713          	li	a4,6
    3198:	02f76463          	bltu	a4,a5,31c0 <fatfs_init+0xd8>
    319c:	00400713          	li	a4,4
    31a0:	00f76663          	bltu	a4,a5,31ac <fatfs_init+0xc4>
    31a4:	00000513          	li	a0,0
    31a8:	02078663          	beqz	a5,31d4 <fatfs_init+0xec>
    31ac:	20c45503          	lhu	a0,524(s0)
    31b0:	20a45783          	lhu	a5,522(s0)
    31b4:	01051513          	slli	a0,a0,0x10
    31b8:	00f56533          	or	a0,a0,a5
    31bc:	0180006f          	j	31d4 <fatfs_init+0xec>
    31c0:	00c00713          	li	a4,12
    31c4:	12f76a63          	bltu	a4,a5,32f8 <fatfs_init+0x210>
    31c8:	00a00713          	li	a4,10
    31cc:	00000513          	li	a0,0
    31d0:	fcf76ee3          	bltu	a4,a5,31ac <fatfs_init+0xc4>
    31d4:	03442783          	lw	a5,52(s0)
    31d8:	00a42e23          	sw	a0,28(s0)
    31dc:	00100613          	li	a2,1
    31e0:	000780e7          	jalr	a5
    31e4:	f40500e3          	beqz	a0,3124 <fatfs_init+0x3c>
    31e8:	05044783          	lbu	a5,80(s0)
    31ec:	04f44703          	lbu	a4,79(s0)
    31f0:	ffe00513          	li	a0,-2
    31f4:	00879793          	slli	a5,a5,0x8
    31f8:	00e7e7b3          	or	a5,a5,a4
    31fc:	20000713          	li	a4,512
    3200:	f2e794e3          	bne	a5,a4,3128 <fatfs_init+0x40>
    3204:	05644483          	lbu	s1,86(s0)
    3208:	05544783          	lbu	a5,85(s0)
    320c:	05144983          	lbu	s3,81(s0)
    3210:	00849493          	slli	s1,s1,0x8
    3214:	05a45583          	lhu	a1,90(s0)
    3218:	00f4e4b3          	or	s1,s1,a5
    321c:	01340023          	sb	s3,0(s0)
    3220:	02941423          	sh	s1,40(s0)
    3224:	05245903          	lhu	s2,82(s0)
    3228:	05444503          	lbu	a0,84(s0)
    322c:	00059463          	bnez	a1,3234 <fatfs_init+0x14c>
    3230:	06842583          	lw	a1,104(s0)
    3234:	07042783          	lw	a5,112(s0)
    3238:	02b42023          	sw	a1,32(s0)
    323c:	00549493          	slli	s1,s1,0x5
    3240:	00f42423          	sw	a5,8(s0)
    3244:	07445783          	lhu	a5,116(s0)
    3248:	1ff48493          	addi	s1,s1,511
    324c:	4094d493          	srai	s1,s1,0x9
    3250:	00f41c23          	sh	a5,24(s0)
    3254:	fffff097          	auipc	ra,0xfffff
    3258:	bfc080e7          	jalr	-1028(ra) # 1e50 <__mulsi3>
    325c:	00a907b3          	add	a5,s2,a0
    3260:	00f42623          	sw	a5,12(s0)
    3264:	01c42783          	lw	a5,28(s0)
    3268:	24245703          	lhu	a4,578(s0)
    326c:	00942823          	sw	s1,16(s0)
    3270:	00f907b3          	add	a5,s2,a5
    3274:	00f42a23          	sw	a5,20(s0)
    3278:	00f507b3          	add	a5,a0,a5
    327c:	00f42223          	sw	a5,4(s0)
    3280:	0000b7b7          	lui	a5,0xb
    3284:	a5578793          	addi	a5,a5,-1451 # aa55 <_files+0x46fd>
    3288:	eef716e3          	bne	a4,a5,3174 <fatfs_init+0x8c>
    328c:	05844783          	lbu	a5,88(s0)
    3290:	05744703          	lbu	a4,87(s0)
    3294:	00879793          	slli	a5,a5,0x8
    3298:	00e7e7b3          	or	a5,a5,a4
    329c:	00079463          	bnez	a5,32a4 <fatfs_init+0x1bc>
    32a0:	06442783          	lw	a5,100(s0)
    32a4:	00990933          	add	s2,s2,s1
    32a8:	00a90533          	add	a0,s2,a0
    32ac:	40a787b3          	sub	a5,a5,a0
    32b0:	ffb00513          	li	a0,-5
    32b4:	e6098ae3          	beqz	s3,3128 <fatfs_init+0x40>
    32b8:	00078513          	mv	a0,a5
    32bc:	00098593          	mv	a1,s3
    32c0:	ffffe097          	auipc	ra,0xffffe
    32c4:	3a0080e7          	jalr	928(ra) # 1660 <__udivsi3>
    32c8:	00001737          	lui	a4,0x1
    32cc:	00050793          	mv	a5,a0
    32d0:	ff470713          	addi	a4,a4,-12 # ff4 <sdcard_read+0x18>
    32d4:	ffb00513          	li	a0,-5
    32d8:	e4f778e3          	bgeu	a4,a5,3128 <fatfs_init+0x40>
    32dc:	00010737          	lui	a4,0x10
    32e0:	ff470713          	addi	a4,a4,-12 # fff4 <_files+0x9c9c>
    32e4:	02f76663          	bltu	a4,a5,3310 <fatfs_init+0x228>
    32e8:	00042423          	sw	zero,8(s0)
    32ec:	02042823          	sw	zero,48(s0)
    32f0:	00000513          	li	a0,0
    32f4:	e35ff06f          	j	3128 <fatfs_init+0x40>
    32f8:	ff278793          	addi	a5,a5,-14
    32fc:	0ff7f793          	zext.b	a5,a5
    3300:	00100713          	li	a4,1
    3304:	00000513          	li	a0,0
    3308:	eaf772e3          	bgeu	a4,a5,31ac <fatfs_init+0xc4>
    330c:	ec9ff06f          	j	31d4 <fatfs_init+0xec>
    3310:	00100793          	li	a5,1
    3314:	02f42823          	sw	a5,48(s0)
    3318:	fd9ff06f          	j	32f0 <fatfs_init+0x208>

0000331c <fl_attach_media>:
    331c:	000057b7          	lui	a5,0x5
    3320:	6ec7a783          	lw	a5,1772(a5) # 56ec <_filelib_init>
    3324:	ff010113          	addi	sp,sp,-16
    3328:	00812423          	sw	s0,8(sp)
    332c:	00912223          	sw	s1,4(sp)
    3330:	00112623          	sw	ra,12(sp)
    3334:	00050493          	mv	s1,a0
    3338:	00058413          	mv	s0,a1
    333c:	00079663          	bnez	a5,3348 <fl_attach_media+0x2c>
    3340:	fffff097          	auipc	ra,0xfffff
    3344:	fa8080e7          	jalr	-88(ra) # 22e8 <fl_init>
    3348:	00006537          	lui	a0,0x6
    334c:	ef050793          	addi	a5,a0,-272 # 5ef0 <_fs>
    3350:	ef050513          	addi	a0,a0,-272
    3354:	0287ac23          	sw	s0,56(a5)
    3358:	0297aa23          	sw	s1,52(a5)
    335c:	00000097          	auipc	ra,0x0
    3360:	d8c080e7          	jalr	-628(ra) # 30e8 <fatfs_init>
    3364:	00050413          	mv	s0,a0
    3368:	02050863          	beqz	a0,3398 <fl_attach_media+0x7c>
    336c:	00050593          	mv	a1,a0
    3370:	00005537          	lui	a0,0x5
    3374:	47850513          	addi	a0,a0,1144 # 5478 <LEDS+0xac>
    3378:	fffff097          	auipc	ra,0xfffff
    337c:	9a8080e7          	jalr	-1624(ra) # 1d20 <printf>
    3380:	00c12083          	lw	ra,12(sp)
    3384:	00040513          	mv	a0,s0
    3388:	00812403          	lw	s0,8(sp)
    338c:	00412483          	lw	s1,4(sp)
    3390:	01010113          	addi	sp,sp,16
    3394:	00008067          	ret
    3398:	000057b7          	lui	a5,0x5
    339c:	00100713          	li	a4,1
    33a0:	6ee7a423          	sw	a4,1768(a5) # 56e8 <_filelib_valid>
    33a4:	fddff06f          	j	3380 <fl_attach_media+0x64>

000033a8 <fatfs_fat_purge>:
    33a8:	ff010113          	addi	sp,sp,-16
    33ac:	00812423          	sw	s0,8(sp)
    33b0:	25452403          	lw	s0,596(a0)
    33b4:	00912223          	sw	s1,4(sp)
    33b8:	00112623          	sw	ra,12(sp)
    33bc:	00050493          	mv	s1,a0
    33c0:	00041663          	bnez	s0,33cc <fatfs_fat_purge+0x24>
    33c4:	00100513          	li	a0,1
    33c8:	0280006f          	j	33f0 <fatfs_fat_purge+0x48>
    33cc:	20442783          	lw	a5,516(s0)
    33d0:	00079663          	bnez	a5,33dc <fatfs_fat_purge+0x34>
    33d4:	20c42403          	lw	s0,524(s0)
    33d8:	fe9ff06f          	j	33c0 <fatfs_fat_purge+0x18>
    33dc:	00040593          	mv	a1,s0
    33e0:	00048513          	mv	a0,s1
    33e4:	fffff097          	auipc	ra,0xfffff
    33e8:	b9c080e7          	jalr	-1124(ra) # 1f80 <fatfs_fat_writeback>
    33ec:	fe0514e3          	bnez	a0,33d4 <fatfs_fat_purge+0x2c>
    33f0:	00c12083          	lw	ra,12(sp)
    33f4:	00812403          	lw	s0,8(sp)
    33f8:	00412483          	lw	s1,4(sp)
    33fc:	01010113          	addi	sp,sp,16
    3400:	00008067          	ret

00003404 <fatfs_find_next_cluster>:
    3404:	ff010113          	addi	sp,sp,-16
    3408:	00812423          	sw	s0,8(sp)
    340c:	01212023          	sw	s2,0(sp)
    3410:	00112623          	sw	ra,12(sp)
    3414:	00912223          	sw	s1,4(sp)
    3418:	00050913          	mv	s2,a0
    341c:	00200413          	li	s0,2
    3420:	00058463          	beqz	a1,3428 <fatfs_find_next_cluster+0x24>
    3424:	00058413          	mv	s0,a1
    3428:	03092783          	lw	a5,48(s2)
    342c:	00745493          	srli	s1,s0,0x7
    3430:	00079463          	bnez	a5,3438 <fatfs_find_next_cluster+0x34>
    3434:	00845493          	srli	s1,s0,0x8
    3438:	01492583          	lw	a1,20(s2)
    343c:	00090513          	mv	a0,s2
    3440:	00b485b3          	add	a1,s1,a1
    3444:	fffff097          	auipc	ra,0xfffff
    3448:	bbc080e7          	jalr	-1092(ra) # 2000 <fatfs_fat_read_sector>
    344c:	00050793          	mv	a5,a0
    3450:	fff00513          	li	a0,-1
    3454:	04078a63          	beqz	a5,34a8 <fatfs_find_next_cluster+0xa4>
    3458:	03092703          	lw	a4,48(s2)
    345c:	2087a783          	lw	a5,520(a5)
    3460:	06071063          	bnez	a4,34c0 <fatfs_find_next_cluster+0xbc>
    3464:	00849493          	slli	s1,s1,0x8
    3468:	40940433          	sub	s0,s0,s1
    346c:	00010737          	lui	a4,0x10
    3470:	00141413          	slli	s0,s0,0x1
    3474:	ffe70713          	addi	a4,a4,-2 # fffe <_files+0x9ca6>
    3478:	00e47433          	and	s0,s0,a4
    347c:	008787b3          	add	a5,a5,s0
    3480:	0017c503          	lbu	a0,1(a5)
    3484:	0007c783          	lbu	a5,0(a5)
    3488:	00851513          	slli	a0,a0,0x8
    348c:	00f50533          	add	a0,a0,a5
    3490:	ffff07b7          	lui	a5,0xffff0
    3494:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    3498:	00f507b3          	add	a5,a0,a5
    349c:	00700713          	li	a4,7
    34a0:	00f76463          	bltu	a4,a5,34a8 <fatfs_find_next_cluster+0xa4>
    34a4:	fff00513          	li	a0,-1
    34a8:	00c12083          	lw	ra,12(sp)
    34ac:	00812403          	lw	s0,8(sp)
    34b0:	00412483          	lw	s1,4(sp)
    34b4:	00012903          	lw	s2,0(sp)
    34b8:	01010113          	addi	sp,sp,16
    34bc:	00008067          	ret
    34c0:	00749493          	slli	s1,s1,0x7
    34c4:	40940433          	sub	s0,s0,s1
    34c8:	00010737          	lui	a4,0x10
    34cc:	ffc70713          	addi	a4,a4,-4 # fffc <_files+0x9ca4>
    34d0:	00241413          	slli	s0,s0,0x2
    34d4:	00e47433          	and	s0,s0,a4
    34d8:	008787b3          	add	a5,a5,s0
    34dc:	0037c503          	lbu	a0,3(a5)
    34e0:	0027c703          	lbu	a4,2(a5)
    34e4:	01851513          	slli	a0,a0,0x18
    34e8:	01071713          	slli	a4,a4,0x10
    34ec:	00e50533          	add	a0,a0,a4
    34f0:	0007c703          	lbu	a4,0(a5)
    34f4:	0017c783          	lbu	a5,1(a5)
    34f8:	00e50533          	add	a0,a0,a4
    34fc:	00879793          	slli	a5,a5,0x8
    3500:	00f50533          	add	a0,a0,a5
    3504:	00451513          	slli	a0,a0,0x4
    3508:	00455513          	srli	a0,a0,0x4
    350c:	f00007b7          	lui	a5,0xf0000
    3510:	f85ff06f          	j	3494 <fatfs_find_next_cluster+0x90>

00003514 <fatfs_sector_reader>:
    3514:	03052783          	lw	a5,48(a0)
    3518:	fd010113          	addi	sp,sp,-48
    351c:	02812423          	sw	s0,40(sp)
    3520:	03212023          	sw	s2,32(sp)
    3524:	01312e23          	sw	s3,28(sp)
    3528:	02112623          	sw	ra,44(sp)
    352c:	02912223          	sw	s1,36(sp)
    3530:	01412c23          	sw	s4,24(sp)
    3534:	01512a23          	sw	s5,20(sp)
    3538:	00f5e7b3          	or	a5,a1,a5
    353c:	00050413          	mv	s0,a0
    3540:	00060913          	mv	s2,a2
    3544:	00068993          	mv	s3,a3
    3548:	06079c63          	bnez	a5,35c0 <fatfs_sector_reader+0xac>
    354c:	01052783          	lw	a5,16(a0)
    3550:	02f66663          	bltu	a2,a5,357c <fatfs_sector_reader+0x68>
    3554:	00000513          	li	a0,0
    3558:	02c12083          	lw	ra,44(sp)
    355c:	02812403          	lw	s0,40(sp)
    3560:	02412483          	lw	s1,36(sp)
    3564:	02012903          	lw	s2,32(sp)
    3568:	01c12983          	lw	s3,28(sp)
    356c:	01812a03          	lw	s4,24(sp)
    3570:	01412a83          	lw	s5,20(sp)
    3574:	03010113          	addi	sp,sp,48
    3578:	00008067          	ret
    357c:	01c52503          	lw	a0,28(a0)
    3580:	00c42783          	lw	a5,12(s0)
    3584:	00f50533          	add	a0,a0,a5
    3588:	01250533          	add	a0,a0,s2
    358c:	0a098263          	beqz	s3,3630 <fatfs_sector_reader+0x11c>
    3590:	03442783          	lw	a5,52(s0)
    3594:	00100613          	li	a2,1
    3598:	00098593          	mv	a1,s3
    359c:	02812403          	lw	s0,40(sp)
    35a0:	02c12083          	lw	ra,44(sp)
    35a4:	02412483          	lw	s1,36(sp)
    35a8:	02012903          	lw	s2,32(sp)
    35ac:	01c12983          	lw	s3,28(sp)
    35b0:	01812a03          	lw	s4,24(sp)
    35b4:	01412a83          	lw	s5,20(sp)
    35b8:	03010113          	addi	sp,sp,48
    35bc:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    35c0:	00058493          	mv	s1,a1
    35c4:	00054583          	lbu	a1,0(a0)
    35c8:	00060513          	mv	a0,a2
    35cc:	00000a93          	li	s5,0
    35d0:	00b12623          	sw	a1,12(sp)
    35d4:	ffffe097          	auipc	ra,0xffffe
    35d8:	08c080e7          	jalr	140(ra) # 1660 <__udivsi3>
    35dc:	00c12583          	lw	a1,12(sp)
    35e0:	00050a13          	mv	s4,a0
    35e4:	00090513          	mv	a0,s2
    35e8:	ffffe097          	auipc	ra,0xffffe
    35ec:	0c0080e7          	jalr	192(ra) # 16a8 <__umodsi3>
    35f0:	00050913          	mv	s2,a0
    35f4:	034a9063          	bne	s5,s4,3614 <fatfs_sector_reader+0x100>
    35f8:	fff00793          	li	a5,-1
    35fc:	f4f48ce3          	beq	s1,a5,3554 <fatfs_sector_reader+0x40>
    3600:	00048593          	mv	a1,s1
    3604:	00040513          	mv	a0,s0
    3608:	fffff097          	auipc	ra,0xfffff
    360c:	ba4080e7          	jalr	-1116(ra) # 21ac <fatfs_lba_of_cluster>
    3610:	f79ff06f          	j	3588 <fatfs_sector_reader+0x74>
    3614:	00048593          	mv	a1,s1
    3618:	00040513          	mv	a0,s0
    361c:	00000097          	auipc	ra,0x0
    3620:	de8080e7          	jalr	-536(ra) # 3404 <fatfs_find_next_cluster>
    3624:	00050493          	mv	s1,a0
    3628:	001a8a93          	addi	s5,s5,1
    362c:	fc9ff06f          	j	35f4 <fatfs_sector_reader+0xe0>
    3630:	24442783          	lw	a5,580(s0)
    3634:	00a78c63          	beq	a5,a0,364c <fatfs_sector_reader+0x138>
    3638:	03442783          	lw	a5,52(s0)
    363c:	24a42223          	sw	a0,580(s0)
    3640:	00100613          	li	a2,1
    3644:	04440593          	addi	a1,s0,68
    3648:	f55ff06f          	j	359c <fatfs_sector_reader+0x88>
    364c:	00100513          	li	a0,1
    3650:	f09ff06f          	j	3558 <fatfs_sector_reader+0x44>

00003654 <fatfs_get_file_entry>:
    3654:	eb010113          	addi	sp,sp,-336
    3658:	14812423          	sw	s0,328(sp)
    365c:	01810413          	addi	s0,sp,24
    3660:	14912223          	sw	s1,324(sp)
    3664:	15212023          	sw	s2,320(sp)
    3668:	13312e23          	sw	s3,316(sp)
    366c:	13412c23          	sw	s4,312(sp)
    3670:	13512a23          	sw	s5,308(sp)
    3674:	13612823          	sw	s6,304(sp)
    3678:	14112623          	sw	ra,332(sp)
    367c:	13712623          	sw	s7,300(sp)
    3680:	13812423          	sw	s8,296(sp)
    3684:	13912223          	sw	s9,292(sp)
    3688:	13a12023          	sw	s10,288(sp)
    368c:	00050493          	mv	s1,a0
    3690:	00058a93          	mv	s5,a1
    3694:	00060913          	mv	s2,a2
    3698:	00068993          	mv	s3,a3
    369c:	10010ea3          	sb	zero,285(sp)
    36a0:	11c10a13          	addi	s4,sp,284
    36a4:	00040b13          	mv	s6,s0
    36a8:	00040513          	mv	a0,s0
    36ac:	00d00613          	li	a2,13
    36b0:	00000593          	li	a1,0
    36b4:	00d40413          	addi	s0,s0,13
    36b8:	ffffe097          	auipc	ra,0xffffe
    36bc:	054080e7          	jalr	84(ra) # 170c <memset>
    36c0:	ff4414e3          	bne	s0,s4,36a8 <fatfs_get_file_entry+0x54>
    36c4:	00000a13          	li	s4,0
    36c8:	24448c13          	addi	s8,s1,580
    36cc:	00800c93          	li	s9,8
    36d0:	02000b93          	li	s7,32
    36d4:	02e00d13          	li	s10,46
    36d8:	00000693          	li	a3,0
    36dc:	000a0613          	mv	a2,s4
    36e0:	000a8593          	mv	a1,s5
    36e4:	00048513          	mv	a0,s1
    36e8:	00000097          	auipc	ra,0x0
    36ec:	e2c080e7          	jalr	-468(ra) # 3514 <fatfs_sector_reader>
    36f0:	16050463          	beqz	a0,3858 <fatfs_get_file_entry+0x204>
    36f4:	04448413          	addi	s0,s1,68
    36f8:	00040513          	mv	a0,s0
    36fc:	fffff097          	auipc	ra,0xfffff
    3700:	f08080e7          	jalr	-248(ra) # 2604 <fatfs_entry_lfn_text>
    3704:	02050263          	beqz	a0,3728 <fatfs_get_file_entry+0xd4>
    3708:	00040593          	mv	a1,s0
    370c:	000b0513          	mv	a0,s6
    3710:	fffff097          	auipc	ra,0xfffff
    3714:	dec080e7          	jalr	-532(ra) # 24fc <fatfs_lfn_cache_entry>
    3718:	02040413          	addi	s0,s0,32
    371c:	fd841ee3          	bne	s0,s8,36f8 <fatfs_get_file_entry+0xa4>
    3720:	001a0a13          	addi	s4,s4,1
    3724:	fb5ff06f          	j	36d8 <fatfs_get_file_entry+0x84>
    3728:	00040513          	mv	a0,s0
    372c:	fffff097          	auipc	ra,0xfffff
    3730:	eec080e7          	jalr	-276(ra) # 2618 <fatfs_entry_lfn_invalid>
    3734:	00050663          	beqz	a0,3740 <fatfs_get_file_entry+0xec>
    3738:	10010ea3          	sb	zero,285(sp)
    373c:	fddff06f          	j	3718 <fatfs_get_file_entry+0xc4>
    3740:	00040593          	mv	a1,s0
    3744:	000b0513          	mv	a0,s6
    3748:	fffff097          	auipc	ra,0xfffff
    374c:	f08080e7          	jalr	-248(ra) # 2650 <fatfs_entry_lfn_exists>
    3750:	06050863          	beqz	a0,37c0 <fatfs_get_file_entry+0x16c>
    3754:	000b0513          	mv	a0,s6
    3758:	fffff097          	auipc	ra,0xfffff
    375c:	e70080e7          	jalr	-400(ra) # 25c8 <fatfs_lfn_cache_get>
    3760:	00090593          	mv	a1,s2
    3764:	fffff097          	auipc	ra,0xfffff
    3768:	6d4080e7          	jalr	1748(ra) # 2e38 <fatfs_compare_names>
    376c:	fc0506e3          	beqz	a0,3738 <fatfs_get_file_entry+0xe4>
    3770:	02000613          	li	a2,32
    3774:	00040593          	mv	a1,s0
    3778:	00098513          	mv	a0,s3
    377c:	ffffe097          	auipc	ra,0xffffe
    3780:	fac080e7          	jalr	-84(ra) # 1728 <memcpy>
    3784:	00100513          	li	a0,1
    3788:	14c12083          	lw	ra,332(sp)
    378c:	14812403          	lw	s0,328(sp)
    3790:	14412483          	lw	s1,324(sp)
    3794:	14012903          	lw	s2,320(sp)
    3798:	13c12983          	lw	s3,316(sp)
    379c:	13812a03          	lw	s4,312(sp)
    37a0:	13412a83          	lw	s5,308(sp)
    37a4:	13012b03          	lw	s6,304(sp)
    37a8:	12c12b83          	lw	s7,300(sp)
    37ac:	12812c03          	lw	s8,296(sp)
    37b0:	12412c83          	lw	s9,292(sp)
    37b4:	12012d03          	lw	s10,288(sp)
    37b8:	15010113          	addi	sp,sp,336
    37bc:	00008067          	ret
    37c0:	00040513          	mv	a0,s0
    37c4:	fffff097          	auipc	ra,0xfffff
    37c8:	ed4080e7          	jalr	-300(ra) # 2698 <fatfs_entry_sfn_only>
    37cc:	f40506e3          	beqz	a0,3718 <fatfs_get_file_entry+0xc4>
    37d0:	00d00613          	li	a2,13
    37d4:	00000593          	li	a1,0
    37d8:	00810513          	addi	a0,sp,8
    37dc:	ffffe097          	auipc	ra,0xffffe
    37e0:	f30080e7          	jalr	-208(ra) # 170c <memset>
    37e4:	00000793          	li	a5,0
    37e8:	00f406b3          	add	a3,s0,a5
    37ec:	0006c683          	lbu	a3,0(a3)
    37f0:	00810713          	addi	a4,sp,8
    37f4:	00f70733          	add	a4,a4,a5
    37f8:	00d70023          	sb	a3,0(a4)
    37fc:	00178793          	addi	a5,a5,1
    3800:	ff9794e3          	bne	a5,s9,37e8 <fatfs_get_file_entry+0x194>
    3804:	00844783          	lbu	a5,8(s0)
    3808:	00944683          	lbu	a3,9(s0)
    380c:	00100713          	li	a4,1
    3810:	00f108a3          	sb	a5,17(sp)
    3814:	00d10923          	sb	a3,18(sp)
    3818:	01769663          	bne	a3,s7,3824 <fatfs_get_file_entry+0x1d0>
    381c:	fe078793          	addi	a5,a5,-32
    3820:	00f03733          	snez	a4,a5
    3824:	00a44783          	lbu	a5,10(s0)
    3828:	00f109a3          	sb	a5,19(sp)
    382c:	01779663          	bne	a5,s7,3838 <fatfs_get_file_entry+0x1e4>
    3830:	02000793          	li	a5,32
    3834:	00070a63          	beqz	a4,3848 <fatfs_get_file_entry+0x1f4>
    3838:	00814703          	lbu	a4,8(sp)
    383c:	02e00793          	li	a5,46
    3840:	01a71463          	bne	a4,s10,3848 <fatfs_get_file_entry+0x1f4>
    3844:	02000793          	li	a5,32
    3848:	00f10823          	sb	a5,16(sp)
    384c:	00090593          	mv	a1,s2
    3850:	00810513          	addi	a0,sp,8
    3854:	f11ff06f          	j	3764 <fatfs_get_file_entry+0x110>
    3858:	00000513          	li	a0,0
    385c:	f2dff06f          	j	3788 <fatfs_get_file_entry+0x134>

00003860 <_open_directory>:
    3860:	eb010113          	addi	sp,sp,-336
    3864:	13512a23          	sw	s5,308(sp)
    3868:	00006ab7          	lui	s5,0x6
    386c:	ef0a8793          	addi	a5,s5,-272 # 5ef0 <_fs>
    3870:	14812423          	sw	s0,328(sp)
    3874:	14912223          	sw	s1,324(sp)
    3878:	15212023          	sw	s2,320(sp)
    387c:	13312e23          	sw	s3,316(sp)
    3880:	13412c23          	sw	s4,312(sp)
    3884:	13612823          	sw	s6,304(sp)
    3888:	0087a403          	lw	s0,8(a5)
    388c:	14112623          	sw	ra,332(sp)
    3890:	00050a13          	mv	s4,a0
    3894:	00058913          	mv	s2,a1
    3898:	fffff097          	auipc	ra,0xfffff
    389c:	350080e7          	jalr	848(ra) # 2be8 <fatfs_total_path_levels>
    38a0:	00050993          	mv	s3,a0
    38a4:	00000493          	li	s1,0
    38a8:	fff00b13          	li	s6,-1
    38ac:	0099d863          	bge	s3,s1,38bc <_open_directory+0x5c>
    38b0:	00892023          	sw	s0,0(s2)
    38b4:	00100513          	li	a0,1
    38b8:	0240006f          	j	38dc <_open_directory+0x7c>
    38bc:	10400693          	li	a3,260
    38c0:	02c10613          	addi	a2,sp,44
    38c4:	00048593          	mv	a1,s1
    38c8:	000a0513          	mv	a0,s4
    38cc:	fffff097          	auipc	ra,0xfffff
    38d0:	390080e7          	jalr	912(ra) # 2c5c <fatfs_get_substring>
    38d4:	03651863          	bne	a0,s6,3904 <_open_directory+0xa4>
    38d8:	00000513          	li	a0,0
    38dc:	14c12083          	lw	ra,332(sp)
    38e0:	14812403          	lw	s0,328(sp)
    38e4:	14412483          	lw	s1,324(sp)
    38e8:	14012903          	lw	s2,320(sp)
    38ec:	13c12983          	lw	s3,316(sp)
    38f0:	13812a03          	lw	s4,312(sp)
    38f4:	13412a83          	lw	s5,308(sp)
    38f8:	13012b03          	lw	s6,304(sp)
    38fc:	15010113          	addi	sp,sp,336
    3900:	00008067          	ret
    3904:	00c10693          	addi	a3,sp,12
    3908:	02c10613          	addi	a2,sp,44
    390c:	00040593          	mv	a1,s0
    3910:	ef0a8513          	addi	a0,s5,-272
    3914:	00000097          	auipc	ra,0x0
    3918:	d40080e7          	jalr	-704(ra) # 3654 <fatfs_get_file_entry>
    391c:	fa050ee3          	beqz	a0,38d8 <_open_directory+0x78>
    3920:	00c10513          	addi	a0,sp,12
    3924:	fffff097          	auipc	ra,0xfffff
    3928:	db0080e7          	jalr	-592(ra) # 26d4 <fatfs_entry_is_dir>
    392c:	fa0506e3          	beqz	a0,38d8 <_open_directory+0x78>
    3930:	02015403          	lhu	s0,32(sp)
    3934:	02615783          	lhu	a5,38(sp)
    3938:	00148493          	addi	s1,s1,1
    393c:	01041413          	slli	s0,s0,0x10
    3940:	00f40433          	add	s0,s0,a5
    3944:	f69ff06f          	j	38ac <_open_directory+0x4c>

00003948 <fl_opendir>:
    3948:	fe010113          	addi	sp,sp,-32
    394c:	fff00793          	li	a5,-1
    3950:	00f12623          	sw	a5,12(sp)
    3954:	000057b7          	lui	a5,0x5
    3958:	6ec7a783          	lw	a5,1772(a5) # 56ec <_filelib_init>
    395c:	00812c23          	sw	s0,24(sp)
    3960:	01212823          	sw	s2,16(sp)
    3964:	00112e23          	sw	ra,28(sp)
    3968:	00912a23          	sw	s1,20(sp)
    396c:	00050913          	mv	s2,a0
    3970:	00058413          	mv	s0,a1
    3974:	00079663          	bnez	a5,3980 <fl_opendir+0x38>
    3978:	fffff097          	auipc	ra,0xfffff
    397c:	970080e7          	jalr	-1680(ra) # 22e8 <fl_init>
    3980:	000064b7          	lui	s1,0x6
    3984:	ef048793          	addi	a5,s1,-272 # 5ef0 <_fs>
    3988:	03c7a783          	lw	a5,60(a5)
    398c:	ef048493          	addi	s1,s1,-272
    3990:	00078463          	beqz	a5,3998 <fl_opendir+0x50>
    3994:	000780e7          	jalr	a5
    3998:	00090513          	mv	a0,s2
    399c:	fffff097          	auipc	ra,0xfffff
    39a0:	24c080e7          	jalr	588(ra) # 2be8 <fatfs_total_path_levels>
    39a4:	fff00793          	li	a5,-1
    39a8:	02f51063          	bne	a0,a5,39c8 <fl_opendir+0x80>
    39ac:	0084a783          	lw	a5,8(s1)
    39b0:	00f12623          	sw	a5,12(sp)
    39b4:	00c12783          	lw	a5,12(sp)
    39b8:	00042023          	sw	zero,0(s0)
    39bc:	00040423          	sb	zero,8(s0)
    39c0:	00f42223          	sw	a5,4(s0)
    39c4:	0180006f          	j	39dc <fl_opendir+0x94>
    39c8:	00c10593          	addi	a1,sp,12
    39cc:	00090513          	mv	a0,s2
    39d0:	00000097          	auipc	ra,0x0
    39d4:	e90080e7          	jalr	-368(ra) # 3860 <_open_directory>
    39d8:	fc051ee3          	bnez	a0,39b4 <fl_opendir+0x6c>
    39dc:	0404a783          	lw	a5,64(s1)
    39e0:	00078463          	beqz	a5,39e8 <fl_opendir+0xa0>
    39e4:	000780e7          	jalr	a5
    39e8:	00c12703          	lw	a4,12(sp)
    39ec:	fff00793          	li	a5,-1
    39f0:	00f71463          	bne	a4,a5,39f8 <fl_opendir+0xb0>
    39f4:	00000413          	li	s0,0
    39f8:	01c12083          	lw	ra,28(sp)
    39fc:	00040513          	mv	a0,s0
    3a00:	01812403          	lw	s0,24(sp)
    3a04:	01412483          	lw	s1,20(sp)
    3a08:	01012903          	lw	s2,16(sp)
    3a0c:	02010113          	addi	sp,sp,32
    3a10:	00008067          	ret

00003a14 <_open_file>:
    3a14:	fc010113          	addi	sp,sp,-64
    3a18:	03312623          	sw	s3,44(sp)
    3a1c:	02112e23          	sw	ra,60(sp)
    3a20:	02812c23          	sw	s0,56(sp)
    3a24:	02912a23          	sw	s1,52(sp)
    3a28:	03212823          	sw	s2,48(sp)
    3a2c:	00050993          	mv	s3,a0
    3a30:	ffffe097          	auipc	ra,0xffffe
    3a34:	6c0080e7          	jalr	1728(ra) # 20f0 <_allocate_file>
    3a38:	06050463          	beqz	a0,3aa0 <_open_file+0x8c>
    3a3c:	01450913          	addi	s2,a0,20
    3a40:	00050413          	mv	s0,a0
    3a44:	10400613          	li	a2,260
    3a48:	00000593          	li	a1,0
    3a4c:	00090513          	mv	a0,s2
    3a50:	ffffe097          	auipc	ra,0xffffe
    3a54:	cbc080e7          	jalr	-836(ra) # 170c <memset>
    3a58:	11840493          	addi	s1,s0,280
    3a5c:	10400613          	li	a2,260
    3a60:	00000593          	li	a1,0
    3a64:	00048513          	mv	a0,s1
    3a68:	ffffe097          	auipc	ra,0xffffe
    3a6c:	ca4080e7          	jalr	-860(ra) # 170c <memset>
    3a70:	10400713          	li	a4,260
    3a74:	00048693          	mv	a3,s1
    3a78:	10400613          	li	a2,260
    3a7c:	00090593          	mv	a1,s2
    3a80:	00098513          	mv	a0,s3
    3a84:	fffff097          	auipc	ra,0xfffff
    3a88:	2cc080e7          	jalr	716(ra) # 2d50 <fatfs_split_path>
    3a8c:	fff00793          	li	a5,-1
    3a90:	02f51a63          	bne	a0,a5,3ac4 <_open_file+0xb0>
    3a94:	00040513          	mv	a0,s0
    3a98:	ffffe097          	auipc	ra,0xffffe
    3a9c:	6cc080e7          	jalr	1740(ra) # 2164 <_free_file>
    3aa0:	00000413          	li	s0,0
    3aa4:	03c12083          	lw	ra,60(sp)
    3aa8:	00040513          	mv	a0,s0
    3aac:	03812403          	lw	s0,56(sp)
    3ab0:	03412483          	lw	s1,52(sp)
    3ab4:	03012903          	lw	s2,48(sp)
    3ab8:	02c12983          	lw	s3,44(sp)
    3abc:	04010113          	addi	sp,sp,64
    3ac0:	00008067          	ret
    3ac4:	00040513          	mv	a0,s0
    3ac8:	fffff097          	auipc	ra,0xfffff
    3acc:	4dc080e7          	jalr	1244(ra) # 2fa4 <_check_file_open>
    3ad0:	fc0512e3          	bnez	a0,3a94 <_open_file+0x80>
    3ad4:	01444783          	lbu	a5,20(s0)
    3ad8:	08079e63          	bnez	a5,3b74 <_open_file+0x160>
    3adc:	000067b7          	lui	a5,0x6
    3ae0:	ef87a783          	lw	a5,-264(a5) # 5ef8 <_fs+0x8>
    3ae4:	00f42023          	sw	a5,0(s0)
    3ae8:	00042583          	lw	a1,0(s0)
    3aec:	00048613          	mv	a2,s1
    3af0:	000064b7          	lui	s1,0x6
    3af4:	00010693          	mv	a3,sp
    3af8:	ef048513          	addi	a0,s1,-272 # 5ef0 <_fs>
    3afc:	00000097          	auipc	ra,0x0
    3b00:	b58080e7          	jalr	-1192(ra) # 3654 <fatfs_get_file_entry>
    3b04:	f80508e3          	beqz	a0,3a94 <_open_file+0x80>
    3b08:	00010513          	mv	a0,sp
    3b0c:	fffff097          	auipc	ra,0xfffff
    3b10:	bd8080e7          	jalr	-1064(ra) # 26e4 <fatfs_entry_is_file>
    3b14:	f80500e3          	beqz	a0,3a94 <_open_file+0x80>
    3b18:	00b00613          	li	a2,11
    3b1c:	00010593          	mv	a1,sp
    3b20:	21c40513          	addi	a0,s0,540
    3b24:	ffffe097          	auipc	ra,0xffffe
    3b28:	c04080e7          	jalr	-1020(ra) # 1728 <memcpy>
    3b2c:	01c12783          	lw	a5,28(sp)
    3b30:	01a15703          	lhu	a4,26(sp)
    3b34:	00042423          	sw	zero,8(s0)
    3b38:	00f42623          	sw	a5,12(s0)
    3b3c:	01415783          	lhu	a5,20(sp)
    3b40:	42042a23          	sw	zero,1076(s0)
    3b44:	00042823          	sw	zero,16(s0)
    3b48:	01079793          	slli	a5,a5,0x10
    3b4c:	00e787b3          	add	a5,a5,a4
    3b50:	00f42223          	sw	a5,4(s0)
    3b54:	fff00793          	li	a5,-1
    3b58:	42f42823          	sw	a5,1072(s0)
    3b5c:	22f42423          	sw	a5,552(s0)
    3b60:	22f42623          	sw	a5,556(s0)
    3b64:	ef048513          	addi	a0,s1,-272
    3b68:	00000097          	auipc	ra,0x0
    3b6c:	840080e7          	jalr	-1984(ra) # 33a8 <fatfs_fat_purge>
    3b70:	f35ff06f          	j	3aa4 <_open_file+0x90>
    3b74:	00040593          	mv	a1,s0
    3b78:	00090513          	mv	a0,s2
    3b7c:	00000097          	auipc	ra,0x0
    3b80:	ce4080e7          	jalr	-796(ra) # 3860 <_open_directory>
    3b84:	f60512e3          	bnez	a0,3ae8 <_open_file+0xd4>
    3b88:	f0dff06f          	j	3a94 <_open_file+0x80>

00003b8c <fatfs_sfn_exists>:
    3b8c:	fe010113          	addi	sp,sp,-32
    3b90:	00912a23          	sw	s1,20(sp)
    3b94:	01212823          	sw	s2,16(sp)
    3b98:	01312623          	sw	s3,12(sp)
    3b9c:	01412423          	sw	s4,8(sp)
    3ba0:	01512223          	sw	s5,4(sp)
    3ba4:	00112e23          	sw	ra,28(sp)
    3ba8:	00812c23          	sw	s0,24(sp)
    3bac:	00050493          	mv	s1,a0
    3bb0:	00058993          	mv	s3,a1
    3bb4:	00060a13          	mv	s4,a2
    3bb8:	00000913          	li	s2,0
    3bbc:	24450a93          	addi	s5,a0,580
    3bc0:	00000693          	li	a3,0
    3bc4:	00090613          	mv	a2,s2
    3bc8:	00098593          	mv	a1,s3
    3bcc:	00048513          	mv	a0,s1
    3bd0:	00000097          	auipc	ra,0x0
    3bd4:	944080e7          	jalr	-1724(ra) # 3514 <fatfs_sector_reader>
    3bd8:	06050263          	beqz	a0,3c3c <fatfs_sfn_exists+0xb0>
    3bdc:	04448413          	addi	s0,s1,68
    3be0:	00040513          	mv	a0,s0
    3be4:	fffff097          	auipc	ra,0xfffff
    3be8:	a20080e7          	jalr	-1504(ra) # 2604 <fatfs_entry_lfn_text>
    3bec:	02051e63          	bnez	a0,3c28 <fatfs_sfn_exists+0x9c>
    3bf0:	00040513          	mv	a0,s0
    3bf4:	fffff097          	auipc	ra,0xfffff
    3bf8:	a24080e7          	jalr	-1500(ra) # 2618 <fatfs_entry_lfn_invalid>
    3bfc:	02051663          	bnez	a0,3c28 <fatfs_sfn_exists+0x9c>
    3c00:	00040513          	mv	a0,s0
    3c04:	fffff097          	auipc	ra,0xfffff
    3c08:	a94080e7          	jalr	-1388(ra) # 2698 <fatfs_entry_sfn_only>
    3c0c:	00050e63          	beqz	a0,3c28 <fatfs_sfn_exists+0x9c>
    3c10:	00b00613          	li	a2,11
    3c14:	000a0593          	mv	a1,s4
    3c18:	00040513          	mv	a0,s0
    3c1c:	ffffe097          	auipc	ra,0xffffe
    3c20:	b50080e7          	jalr	-1200(ra) # 176c <strncmp>
    3c24:	00050a63          	beqz	a0,3c38 <fatfs_sfn_exists+0xac>
    3c28:	02040413          	addi	s0,s0,32
    3c2c:	fb541ae3          	bne	s0,s5,3be0 <fatfs_sfn_exists+0x54>
    3c30:	00190913          	addi	s2,s2,1
    3c34:	f8dff06f          	j	3bc0 <fatfs_sfn_exists+0x34>
    3c38:	00100513          	li	a0,1
    3c3c:	01c12083          	lw	ra,28(sp)
    3c40:	01812403          	lw	s0,24(sp)
    3c44:	01412483          	lw	s1,20(sp)
    3c48:	01012903          	lw	s2,16(sp)
    3c4c:	00c12983          	lw	s3,12(sp)
    3c50:	00812a03          	lw	s4,8(sp)
    3c54:	00412a83          	lw	s5,4(sp)
    3c58:	02010113          	addi	sp,sp,32
    3c5c:	00008067          	ret

00003c60 <fatfs_update_file_length>:
    3c60:	03852783          	lw	a5,56(a0)
    3c64:	14078e63          	beqz	a5,3dc0 <fatfs_update_file_length+0x160>
    3c68:	fd010113          	addi	sp,sp,-48
    3c6c:	02912223          	sw	s1,36(sp)
    3c70:	03212023          	sw	s2,32(sp)
    3c74:	01312e23          	sw	s3,28(sp)
    3c78:	01412c23          	sw	s4,24(sp)
    3c7c:	01512a23          	sw	s5,20(sp)
    3c80:	01612823          	sw	s6,16(sp)
    3c84:	01712623          	sw	s7,12(sp)
    3c88:	02112623          	sw	ra,44(sp)
    3c8c:	02812423          	sw	s0,40(sp)
    3c90:	00050493          	mv	s1,a0
    3c94:	00058a13          	mv	s4,a1
    3c98:	00060a93          	mv	s5,a2
    3c9c:	00068913          	mv	s2,a3
    3ca0:	00000993          	li	s3,0
    3ca4:	04450b93          	addi	s7,a0,68
    3ca8:	24450b13          	addi	s6,a0,580
    3cac:	00000693          	li	a3,0
    3cb0:	00098613          	mv	a2,s3
    3cb4:	000a0593          	mv	a1,s4
    3cb8:	00048513          	mv	a0,s1
    3cbc:	00000097          	auipc	ra,0x0
    3cc0:	858080e7          	jalr	-1960(ra) # 3514 <fatfs_sector_reader>
    3cc4:	0c050663          	beqz	a0,3d90 <fatfs_update_file_length+0x130>
    3cc8:	000b8413          	mv	s0,s7
    3ccc:	00040513          	mv	a0,s0
    3cd0:	fffff097          	auipc	ra,0xfffff
    3cd4:	934080e7          	jalr	-1740(ra) # 2604 <fatfs_entry_lfn_text>
    3cd8:	0a051463          	bnez	a0,3d80 <fatfs_update_file_length+0x120>
    3cdc:	00040513          	mv	a0,s0
    3ce0:	fffff097          	auipc	ra,0xfffff
    3ce4:	938080e7          	jalr	-1736(ra) # 2618 <fatfs_entry_lfn_invalid>
    3ce8:	08051c63          	bnez	a0,3d80 <fatfs_update_file_length+0x120>
    3cec:	00040513          	mv	a0,s0
    3cf0:	fffff097          	auipc	ra,0xfffff
    3cf4:	9a8080e7          	jalr	-1624(ra) # 2698 <fatfs_entry_sfn_only>
    3cf8:	08050463          	beqz	a0,3d80 <fatfs_update_file_length+0x120>
    3cfc:	00b00613          	li	a2,11
    3d00:	000a8593          	mv	a1,s5
    3d04:	00040513          	mv	a0,s0
    3d08:	ffffe097          	auipc	ra,0xffffe
    3d0c:	a64080e7          	jalr	-1436(ra) # 176c <strncmp>
    3d10:	06051863          	bnez	a0,3d80 <fatfs_update_file_length+0x120>
    3d14:	00895793          	srli	a5,s2,0x8
    3d18:	01240e23          	sb	s2,28(s0)
    3d1c:	00f40ea3          	sb	a5,29(s0)
    3d20:	01095793          	srli	a5,s2,0x10
    3d24:	01895913          	srli	s2,s2,0x18
    3d28:	00f40f23          	sb	a5,30(s0)
    3d2c:	01240fa3          	sb	s2,31(s0)
    3d30:	00040593          	mv	a1,s0
    3d34:	02000613          	li	a2,32
    3d38:	00040513          	mv	a0,s0
    3d3c:	ffffe097          	auipc	ra,0xffffe
    3d40:	9ec080e7          	jalr	-1556(ra) # 1728 <memcpy>
    3d44:	02812403          	lw	s0,40(sp)
    3d48:	0384a783          	lw	a5,56(s1)
    3d4c:	2444a503          	lw	a0,580(s1)
    3d50:	02c12083          	lw	ra,44(sp)
    3d54:	02412483          	lw	s1,36(sp)
    3d58:	02012903          	lw	s2,32(sp)
    3d5c:	01c12983          	lw	s3,28(sp)
    3d60:	01812a03          	lw	s4,24(sp)
    3d64:	01412a83          	lw	s5,20(sp)
    3d68:	01012b03          	lw	s6,16(sp)
    3d6c:	000b8593          	mv	a1,s7
    3d70:	00c12b83          	lw	s7,12(sp)
    3d74:	00100613          	li	a2,1
    3d78:	03010113          	addi	sp,sp,48
    3d7c:	00078067          	jr	a5
    3d80:	02040413          	addi	s0,s0,32
    3d84:	f56414e3          	bne	s0,s6,3ccc <fatfs_update_file_length+0x6c>
    3d88:	00198993          	addi	s3,s3,1
    3d8c:	f21ff06f          	j	3cac <fatfs_update_file_length+0x4c>
    3d90:	02c12083          	lw	ra,44(sp)
    3d94:	02812403          	lw	s0,40(sp)
    3d98:	02412483          	lw	s1,36(sp)
    3d9c:	02012903          	lw	s2,32(sp)
    3da0:	01c12983          	lw	s3,28(sp)
    3da4:	01812a03          	lw	s4,24(sp)
    3da8:	01412a83          	lw	s5,20(sp)
    3dac:	01012b03          	lw	s6,16(sp)
    3db0:	00c12b83          	lw	s7,12(sp)
    3db4:	00000513          	li	a0,0
    3db8:	03010113          	addi	sp,sp,48
    3dbc:	00008067          	ret
    3dc0:	00000513          	li	a0,0
    3dc4:	00008067          	ret

00003dc8 <fatfs_list_directory_next>:
    3dc8:	ec010113          	addi	sp,sp,-320
    3dcc:	13212823          	sw	s2,304(sp)
    3dd0:	13312623          	sw	s3,300(sp)
    3dd4:	13412423          	sw	s4,296(sp)
    3dd8:	13512223          	sw	s5,292(sp)
    3ddc:	12112e23          	sw	ra,316(sp)
    3de0:	12812c23          	sw	s0,312(sp)
    3de4:	12912a23          	sw	s1,308(sp)
    3de8:	00050a13          	mv	s4,a0
    3dec:	00058913          	mv	s2,a1
    3df0:	00060993          	mv	s3,a2
    3df4:	10010ea3          	sb	zero,285(sp)
    3df8:	00f00a93          	li	s5,15
    3dfc:	00092603          	lw	a2,0(s2)
    3e00:	00492583          	lw	a1,4(s2)
    3e04:	00000693          	li	a3,0
    3e08:	000a0513          	mv	a0,s4
    3e0c:	fffff097          	auipc	ra,0xfffff
    3e10:	708080e7          	jalr	1800(ra) # 3514 <fatfs_sector_reader>
    3e14:	12050263          	beqz	a0,3f38 <fatfs_list_directory_next+0x170>
    3e18:	00894483          	lbu	s1,8(s2)
    3e1c:	00549413          	slli	s0,s1,0x5
    3e20:	04440413          	addi	s0,s0,68
    3e24:	008a0433          	add	s0,s4,s0
    3e28:	009afc63          	bgeu	s5,s1,3e40 <fatfs_list_directory_next+0x78>
    3e2c:	00092783          	lw	a5,0(s2)
    3e30:	00090423          	sb	zero,8(s2)
    3e34:	00178793          	addi	a5,a5,1
    3e38:	00f92023          	sw	a5,0(s2)
    3e3c:	fc1ff06f          	j	3dfc <fatfs_list_directory_next+0x34>
    3e40:	00040513          	mv	a0,s0
    3e44:	ffffe097          	auipc	ra,0xffffe
    3e48:	7c0080e7          	jalr	1984(ra) # 2604 <fatfs_entry_lfn_text>
    3e4c:	02050263          	beqz	a0,3e70 <fatfs_list_directory_next+0xa8>
    3e50:	00040593          	mv	a1,s0
    3e54:	01810513          	addi	a0,sp,24
    3e58:	ffffe097          	auipc	ra,0xffffe
    3e5c:	6a4080e7          	jalr	1700(ra) # 24fc <fatfs_lfn_cache_entry>
    3e60:	00148493          	addi	s1,s1,1
    3e64:	0ff4f493          	zext.b	s1,s1
    3e68:	02040413          	addi	s0,s0,32
    3e6c:	fbdff06f          	j	3e28 <fatfs_list_directory_next+0x60>
    3e70:	00040513          	mv	a0,s0
    3e74:	ffffe097          	auipc	ra,0xffffe
    3e78:	7a4080e7          	jalr	1956(ra) # 2618 <fatfs_entry_lfn_invalid>
    3e7c:	00050663          	beqz	a0,3e88 <fatfs_list_directory_next+0xc0>
    3e80:	10010ea3          	sb	zero,285(sp)
    3e84:	fddff06f          	j	3e60 <fatfs_list_directory_next+0x98>
    3e88:	00040593          	mv	a1,s0
    3e8c:	01810513          	addi	a0,sp,24
    3e90:	ffffe097          	auipc	ra,0xffffe
    3e94:	7c0080e7          	jalr	1984(ra) # 2650 <fatfs_entry_lfn_exists>
    3e98:	0c050263          	beqz	a0,3f5c <fatfs_list_directory_next+0x194>
    3e9c:	01810513          	addi	a0,sp,24
    3ea0:	ffffe097          	auipc	ra,0xffffe
    3ea4:	728080e7          	jalr	1832(ra) # 25c8 <fatfs_lfn_cache_get>
    3ea8:	00050593          	mv	a1,a0
    3eac:	10300613          	li	a2,259
    3eb0:	00098513          	mv	a0,s3
    3eb4:	ffffe097          	auipc	ra,0xffffe
    3eb8:	8f8080e7          	jalr	-1800(ra) # 17ac <strncpy>
    3ebc:	00040513          	mv	a0,s0
    3ec0:	fffff097          	auipc	ra,0xfffff
    3ec4:	814080e7          	jalr	-2028(ra) # 26d4 <fatfs_entry_is_dir>
    3ec8:	00a03533          	snez	a0,a0
    3ecc:	10a98223          	sb	a0,260(s3)
    3ed0:	01d44783          	lbu	a5,29(s0)
    3ed4:	01c44703          	lbu	a4,28(s0)
    3ed8:	00148493          	addi	s1,s1,1
    3edc:	00879793          	slli	a5,a5,0x8
    3ee0:	00e7e7b3          	or	a5,a5,a4
    3ee4:	01e44703          	lbu	a4,30(s0)
    3ee8:	0ff4f493          	zext.b	s1,s1
    3eec:	00100513          	li	a0,1
    3ef0:	01071713          	slli	a4,a4,0x10
    3ef4:	00f76733          	or	a4,a4,a5
    3ef8:	01f44783          	lbu	a5,31(s0)
    3efc:	01879793          	slli	a5,a5,0x18
    3f00:	00e7e7b3          	or	a5,a5,a4
    3f04:	10f9a623          	sw	a5,268(s3)
    3f08:	01544783          	lbu	a5,21(s0)
    3f0c:	01444703          	lbu	a4,20(s0)
    3f10:	01a44683          	lbu	a3,26(s0)
    3f14:	00879793          	slli	a5,a5,0x8
    3f18:	00e7e7b3          	or	a5,a5,a4
    3f1c:	01b44703          	lbu	a4,27(s0)
    3f20:	01079793          	slli	a5,a5,0x10
    3f24:	00871713          	slli	a4,a4,0x8
    3f28:	00d76733          	or	a4,a4,a3
    3f2c:	00e7e7b3          	or	a5,a5,a4
    3f30:	10f9a423          	sw	a5,264(s3)
    3f34:	00990423          	sb	s1,8(s2)
    3f38:	13c12083          	lw	ra,316(sp)
    3f3c:	13812403          	lw	s0,312(sp)
    3f40:	13412483          	lw	s1,308(sp)
    3f44:	13012903          	lw	s2,304(sp)
    3f48:	12c12983          	lw	s3,300(sp)
    3f4c:	12812a03          	lw	s4,296(sp)
    3f50:	12412a83          	lw	s5,292(sp)
    3f54:	14010113          	addi	sp,sp,320
    3f58:	00008067          	ret
    3f5c:	00040513          	mv	a0,s0
    3f60:	ffffe097          	auipc	ra,0xffffe
    3f64:	738080e7          	jalr	1848(ra) # 2698 <fatfs_entry_sfn_only>
    3f68:	ee050ce3          	beqz	a0,3e60 <fatfs_list_directory_next+0x98>
    3f6c:	00d00613          	li	a2,13
    3f70:	00000593          	li	a1,0
    3f74:	00810513          	addi	a0,sp,8
    3f78:	10010ea3          	sb	zero,285(sp)
    3f7c:	ffffd097          	auipc	ra,0xffffd
    3f80:	790080e7          	jalr	1936(ra) # 170c <memset>
    3f84:	00000793          	li	a5,0
    3f88:	00800713          	li	a4,8
    3f8c:	00f40633          	add	a2,s0,a5
    3f90:	00064603          	lbu	a2,0(a2)
    3f94:	00810693          	addi	a3,sp,8
    3f98:	00f686b3          	add	a3,a3,a5
    3f9c:	00c68023          	sb	a2,0(a3)
    3fa0:	00178793          	addi	a5,a5,1
    3fa4:	fee794e3          	bne	a5,a4,3f8c <fatfs_list_directory_next+0x1c4>
    3fa8:	00844783          	lbu	a5,8(s0)
    3fac:	00944683          	lbu	a3,9(s0)
    3fb0:	02000613          	li	a2,32
    3fb4:	00f108a3          	sb	a5,17(sp)
    3fb8:	00d10923          	sb	a3,18(sp)
    3fbc:	00100713          	li	a4,1
    3fc0:	00c69663          	bne	a3,a2,3fcc <fatfs_list_directory_next+0x204>
    3fc4:	fe078793          	addi	a5,a5,-32
    3fc8:	00f03733          	snez	a4,a5
    3fcc:	00a44783          	lbu	a5,10(s0)
    3fd0:	02000693          	li	a3,32
    3fd4:	00f109a3          	sb	a5,19(sp)
    3fd8:	00d79663          	bne	a5,a3,3fe4 <fatfs_list_directory_next+0x21c>
    3fdc:	02000793          	li	a5,32
    3fe0:	00070a63          	beqz	a4,3ff4 <fatfs_list_directory_next+0x22c>
    3fe4:	00814703          	lbu	a4,8(sp)
    3fe8:	02e00793          	li	a5,46
    3fec:	00f71463          	bne	a4,a5,3ff4 <fatfs_list_directory_next+0x22c>
    3ff0:	02000793          	li	a5,32
    3ff4:	00810593          	addi	a1,sp,8
    3ff8:	00098513          	mv	a0,s3
    3ffc:	00f10823          	sb	a5,16(sp)
    4000:	fffff097          	auipc	ra,0xfffff
    4004:	034080e7          	jalr	52(ra) # 3034 <fatfs_get_sfn_display_name>
    4008:	eb5ff06f          	j	3ebc <fatfs_list_directory_next+0xf4>

0000400c <fl_readdir>:
    400c:	000057b7          	lui	a5,0x5
    4010:	6ec7a783          	lw	a5,1772(a5) # 56ec <_filelib_init>
    4014:	fe010113          	addi	sp,sp,-32
    4018:	00912a23          	sw	s1,20(sp)
    401c:	01212823          	sw	s2,16(sp)
    4020:	00112e23          	sw	ra,28(sp)
    4024:	00812c23          	sw	s0,24(sp)
    4028:	01312623          	sw	s3,12(sp)
    402c:	00050493          	mv	s1,a0
    4030:	00058913          	mv	s2,a1
    4034:	00079663          	bnez	a5,4040 <fl_readdir+0x34>
    4038:	ffffe097          	auipc	ra,0xffffe
    403c:	2b0080e7          	jalr	688(ra) # 22e8 <fl_init>
    4040:	00006437          	lui	s0,0x6
    4044:	ef040793          	addi	a5,s0,-272 # 5ef0 <_fs>
    4048:	03c7a783          	lw	a5,60(a5)
    404c:	ef040993          	addi	s3,s0,-272
    4050:	00078463          	beqz	a5,4058 <fl_readdir+0x4c>
    4054:	000780e7          	jalr	a5
    4058:	ef040513          	addi	a0,s0,-272
    405c:	00090613          	mv	a2,s2
    4060:	00048593          	mv	a1,s1
    4064:	00000097          	auipc	ra,0x0
    4068:	d64080e7          	jalr	-668(ra) # 3dc8 <fatfs_list_directory_next>
    406c:	0409a783          	lw	a5,64(s3)
    4070:	00050413          	mv	s0,a0
    4074:	00078463          	beqz	a5,407c <fl_readdir+0x70>
    4078:	000780e7          	jalr	a5
    407c:	01c12083          	lw	ra,28(sp)
    4080:	00143513          	seqz	a0,s0
    4084:	01812403          	lw	s0,24(sp)
    4088:	01412483          	lw	s1,20(sp)
    408c:	01012903          	lw	s2,16(sp)
    4090:	00c12983          	lw	s3,12(sp)
    4094:	40a00533          	neg	a0,a0
    4098:	02010113          	addi	sp,sp,32
    409c:	00008067          	ret

000040a0 <_read_sectors>:
    40a0:	fd010113          	addi	sp,sp,-48
    40a4:	01612823          	sw	s6,16(sp)
    40a8:	00006b37          	lui	s6,0x6
    40ac:	01512a23          	sw	s5,20(sp)
    40b0:	ef0b4a83          	lbu	s5,-272(s6) # 5ef0 <_fs>
    40b4:	01412c23          	sw	s4,24(sp)
    40b8:	00058a13          	mv	s4,a1
    40bc:	02912223          	sw	s1,36(sp)
    40c0:	000a8593          	mv	a1,s5
    40c4:	00050493          	mv	s1,a0
    40c8:	000a0513          	mv	a0,s4
    40cc:	02112623          	sw	ra,44(sp)
    40d0:	02812423          	sw	s0,40(sp)
    40d4:	03212023          	sw	s2,32(sp)
    40d8:	00068413          	mv	s0,a3
    40dc:	01712623          	sw	s7,12(sp)
    40e0:	01812423          	sw	s8,8(sp)
    40e4:	01312e23          	sw	s3,28(sp)
    40e8:	00060c13          	mv	s8,a2
    40ec:	ffffd097          	auipc	ra,0xffffd
    40f0:	574080e7          	jalr	1396(ra) # 1660 <__udivsi3>
    40f4:	00050913          	mv	s2,a0
    40f8:	000a8593          	mv	a1,s5
    40fc:	000a0513          	mv	a0,s4
    4100:	ffffd097          	auipc	ra,0xffffd
    4104:	5a8080e7          	jalr	1448(ra) # 16a8 <__umodsi3>
    4108:	00a407b3          	add	a5,s0,a0
    410c:	00050b93          	mv	s7,a0
    4110:	00fafe63          	bgeu	s5,a5,412c <_read_sectors+0x8c>
    4114:	00090593          	mv	a1,s2
    4118:	000a8513          	mv	a0,s5
    411c:	ffffe097          	auipc	ra,0xffffe
    4120:	d34080e7          	jalr	-716(ra) # 1e50 <__mulsi3>
    4124:	414a87b3          	sub	a5,s5,s4
    4128:	00f50433          	add	s0,a0,a5
    412c:	2284a983          	lw	s3,552(s1)
    4130:	07299863          	bne	s3,s2,41a0 <_read_sectors+0x100>
    4134:	22c4a583          	lw	a1,556(s1)
    4138:	fff00793          	li	a5,-1
    413c:	02f58663          	beq	a1,a5,4168 <_read_sectors+0xc8>
    4140:	ef0b0513          	addi	a0,s6,-272
    4144:	ffffe097          	auipc	ra,0xffffe
    4148:	068080e7          	jalr	104(ra) # 21ac <fatfs_lba_of_cluster>
    414c:	017505b3          	add	a1,a0,s7
    4150:	00040693          	mv	a3,s0
    4154:	000c0613          	mv	a2,s8
    4158:	ef0b0513          	addi	a0,s6,-272
    415c:	ffffe097          	auipc	ra,0xffffe
    4160:	0a0080e7          	jalr	160(ra) # 21fc <fatfs_sector_read>
    4164:	00051463          	bnez	a0,416c <_read_sectors+0xcc>
    4168:	00000413          	li	s0,0
    416c:	02c12083          	lw	ra,44(sp)
    4170:	00040513          	mv	a0,s0
    4174:	02812403          	lw	s0,40(sp)
    4178:	02412483          	lw	s1,36(sp)
    417c:	02012903          	lw	s2,32(sp)
    4180:	01c12983          	lw	s3,28(sp)
    4184:	01812a03          	lw	s4,24(sp)
    4188:	01412a83          	lw	s5,20(sp)
    418c:	01012b03          	lw	s6,16(sp)
    4190:	00c12b83          	lw	s7,12(sp)
    4194:	00812c03          	lw	s8,8(sp)
    4198:	03010113          	addi	sp,sp,48
    419c:	00008067          	ret
    41a0:	035a6463          	bltu	s4,s5,41c8 <_read_sectors+0x128>
    41a4:	00198793          	addi	a5,s3,1
    41a8:	03279063          	bne	a5,s2,41c8 <_read_sectors+0x128>
    41ac:	22c4a583          	lw	a1,556(s1)
    41b0:	0329e263          	bltu	s3,s2,41d4 <_read_sectors+0x134>
    41b4:	fff00793          	li	a5,-1
    41b8:	faf588e3          	beq	a1,a5,4168 <_read_sectors+0xc8>
    41bc:	22b4a623          	sw	a1,556(s1)
    41c0:	2324a423          	sw	s2,552(s1)
    41c4:	f7dff06f          	j	4140 <_read_sectors+0xa0>
    41c8:	0044a583          	lw	a1,4(s1)
    41cc:	00000993          	li	s3,0
    41d0:	fe1ff06f          	j	41b0 <_read_sectors+0x110>
    41d4:	ef0b0513          	addi	a0,s6,-272
    41d8:	fffff097          	auipc	ra,0xfffff
    41dc:	22c080e7          	jalr	556(ra) # 3404 <fatfs_find_next_cluster>
    41e0:	00050593          	mv	a1,a0
    41e4:	00198993          	addi	s3,s3,1
    41e8:	fc9ff06f          	j	41b0 <_read_sectors+0x110>

000041ec <fatfs_set_fs_info_next_free_cluster>:
    41ec:	03052783          	lw	a5,48(a0)
    41f0:	0a078863          	beqz	a5,42a0 <fatfs_set_fs_info_next_free_cluster+0xb4>
    41f4:	ff010113          	addi	sp,sp,-16
    41f8:	01c52783          	lw	a5,28(a0)
    41fc:	01212023          	sw	s2,0(sp)
    4200:	00058913          	mv	s2,a1
    4204:	01855583          	lhu	a1,24(a0)
    4208:	00812423          	sw	s0,8(sp)
    420c:	00912223          	sw	s1,4(sp)
    4210:	00f585b3          	add	a1,a1,a5
    4214:	00112623          	sw	ra,12(sp)
    4218:	00050493          	mv	s1,a0
    421c:	ffffe097          	auipc	ra,0xffffe
    4220:	de4080e7          	jalr	-540(ra) # 2000 <fatfs_fat_read_sector>
    4224:	00050413          	mv	s0,a0
    4228:	06050063          	beqz	a0,4288 <fatfs_set_fs_info_next_free_cluster+0x9c>
    422c:	20852783          	lw	a5,520(a0)
    4230:	00895713          	srli	a4,s2,0x8
    4234:	1f278623          	sb	s2,492(a5)
    4238:	20852783          	lw	a5,520(a0)
    423c:	1ee786a3          	sb	a4,493(a5)
    4240:	20852783          	lw	a5,520(a0)
    4244:	01095713          	srli	a4,s2,0x10
    4248:	1ee78723          	sb	a4,494(a5)
    424c:	20852783          	lw	a5,520(a0)
    4250:	01895713          	srli	a4,s2,0x18
    4254:	1ee787a3          	sb	a4,495(a5)
    4258:	00100793          	li	a5,1
    425c:	20f52223          	sw	a5,516(a0)
    4260:	0384a783          	lw	a5,56(s1)
    4264:	0324a223          	sw	s2,36(s1)
    4268:	00078a63          	beqz	a5,427c <fatfs_set_fs_info_next_free_cluster+0x90>
    426c:	00050593          	mv	a1,a0
    4270:	20052503          	lw	a0,512(a0)
    4274:	00100613          	li	a2,1
    4278:	000780e7          	jalr	a5
    427c:	fff00793          	li	a5,-1
    4280:	20f42023          	sw	a5,512(s0)
    4284:	20042223          	sw	zero,516(s0)
    4288:	00c12083          	lw	ra,12(sp)
    428c:	00812403          	lw	s0,8(sp)
    4290:	00412483          	lw	s1,4(sp)
    4294:	00012903          	lw	s2,0(sp)
    4298:	01010113          	addi	sp,sp,16
    429c:	00008067          	ret
    42a0:	00008067          	ret

000042a4 <fatfs_find_blank_cluster>:
    42a4:	fe010113          	addi	sp,sp,-32
    42a8:	01312623          	sw	s3,12(sp)
    42ac:	01512223          	sw	s5,4(sp)
    42b0:	000109b7          	lui	s3,0x10
    42b4:	10000ab7          	lui	s5,0x10000
    42b8:	00912a23          	sw	s1,20(sp)
    42bc:	01212823          	sw	s2,16(sp)
    42c0:	01412423          	sw	s4,8(sp)
    42c4:	00112e23          	sw	ra,28(sp)
    42c8:	00812c23          	sw	s0,24(sp)
    42cc:	00050913          	mv	s2,a0
    42d0:	00058493          	mv	s1,a1
    42d4:	00060a13          	mv	s4,a2
    42d8:	fff98993          	addi	s3,s3,-1 # ffff <_files+0x9ca7>
    42dc:	fffa8a93          	addi	s5,s5,-1 # fffffff <__stacktop+0xffeffff>
    42e0:	03092783          	lw	a5,48(s2)
    42e4:	0074d413          	srli	s0,s1,0x7
    42e8:	00079463          	bnez	a5,42f0 <fatfs_find_blank_cluster+0x4c>
    42ec:	0084d413          	srli	s0,s1,0x8
    42f0:	02092783          	lw	a5,32(s2)
    42f4:	0cf47463          	bgeu	s0,a5,43bc <fatfs_find_blank_cluster+0x118>
    42f8:	01492583          	lw	a1,20(s2)
    42fc:	00090513          	mv	a0,s2
    4300:	00b405b3          	add	a1,s0,a1
    4304:	ffffe097          	auipc	ra,0xffffe
    4308:	cfc080e7          	jalr	-772(ra) # 2000 <fatfs_fat_read_sector>
    430c:	0a050863          	beqz	a0,43bc <fatfs_find_blank_cluster+0x118>
    4310:	03092783          	lw	a5,48(s2)
    4314:	20852703          	lw	a4,520(a0)
    4318:	04079c63          	bnez	a5,4370 <fatfs_find_blank_cluster+0xcc>
    431c:	00841413          	slli	s0,s0,0x8
    4320:	40848433          	sub	s0,s1,s0
    4324:	00141413          	slli	s0,s0,0x1
    4328:	01347433          	and	s0,s0,s3
    432c:	00870733          	add	a4,a4,s0
    4330:	00174783          	lbu	a5,1(a4)
    4334:	00074703          	lbu	a4,0(a4)
    4338:	00879793          	slli	a5,a5,0x8
    433c:	00e787b3          	add	a5,a5,a4
    4340:	06079a63          	bnez	a5,43b4 <fatfs_find_blank_cluster+0x110>
    4344:	009a2023          	sw	s1,0(s4)
    4348:	00100513          	li	a0,1
    434c:	01c12083          	lw	ra,28(sp)
    4350:	01812403          	lw	s0,24(sp)
    4354:	01412483          	lw	s1,20(sp)
    4358:	01012903          	lw	s2,16(sp)
    435c:	00c12983          	lw	s3,12(sp)
    4360:	00812a03          	lw	s4,8(sp)
    4364:	00412a83          	lw	s5,4(sp)
    4368:	02010113          	addi	sp,sp,32
    436c:	00008067          	ret
    4370:	00741413          	slli	s0,s0,0x7
    4374:	40848433          	sub	s0,s1,s0
    4378:	00241413          	slli	s0,s0,0x2
    437c:	01347433          	and	s0,s0,s3
    4380:	00870733          	add	a4,a4,s0
    4384:	00374783          	lbu	a5,3(a4)
    4388:	00274683          	lbu	a3,2(a4)
    438c:	01879793          	slli	a5,a5,0x18
    4390:	01069693          	slli	a3,a3,0x10
    4394:	00d787b3          	add	a5,a5,a3
    4398:	00074683          	lbu	a3,0(a4)
    439c:	00174703          	lbu	a4,1(a4)
    43a0:	00d787b3          	add	a5,a5,a3
    43a4:	00871713          	slli	a4,a4,0x8
    43a8:	00e787b3          	add	a5,a5,a4
    43ac:	0157f7b3          	and	a5,a5,s5
    43b0:	f91ff06f          	j	4340 <fatfs_find_blank_cluster+0x9c>
    43b4:	00148493          	addi	s1,s1,1
    43b8:	f29ff06f          	j	42e0 <fatfs_find_blank_cluster+0x3c>
    43bc:	00000513          	li	a0,0
    43c0:	f8dff06f          	j	434c <fatfs_find_blank_cluster+0xa8>

000043c4 <fatfs_fat_set_cluster>:
    43c4:	03052783          	lw	a5,48(a0)
    43c8:	fe010113          	addi	sp,sp,-32
    43cc:	00812c23          	sw	s0,24(sp)
    43d0:	00912a23          	sw	s1,20(sp)
    43d4:	01212823          	sw	s2,16(sp)
    43d8:	01312623          	sw	s3,12(sp)
    43dc:	00112e23          	sw	ra,28(sp)
    43e0:	00050993          	mv	s3,a0
    43e4:	00058413          	mv	s0,a1
    43e8:	00060493          	mv	s1,a2
    43ec:	0085d913          	srli	s2,a1,0x8
    43f0:	00078463          	beqz	a5,43f8 <fatfs_fat_set_cluster+0x34>
    43f4:	0075d913          	srli	s2,a1,0x7
    43f8:	0149a583          	lw	a1,20(s3)
    43fc:	00098513          	mv	a0,s3
    4400:	00b905b3          	add	a1,s2,a1
    4404:	ffffe097          	auipc	ra,0xffffe
    4408:	bfc080e7          	jalr	-1028(ra) # 2000 <fatfs_fat_read_sector>
    440c:	00050693          	mv	a3,a0
    4410:	00000513          	li	a0,0
    4414:	04068c63          	beqz	a3,446c <fatfs_fat_set_cluster+0xa8>
    4418:	0309a703          	lw	a4,48(s3)
    441c:	2086a783          	lw	a5,520(a3)
    4420:	0ff4f613          	zext.b	a2,s1
    4424:	06071263          	bnez	a4,4488 <fatfs_fat_set_cluster+0xc4>
    4428:	00891913          	slli	s2,s2,0x8
    442c:	41240433          	sub	s0,s0,s2
    4430:	00010737          	lui	a4,0x10
    4434:	00141413          	slli	s0,s0,0x1
    4438:	ffe70713          	addi	a4,a4,-2 # fffe <_files+0x9ca6>
    443c:	00e47433          	and	s0,s0,a4
    4440:	008787b3          	add	a5,a5,s0
    4444:	00c78023          	sb	a2,0(a5)
    4448:	2086a783          	lw	a5,520(a3)
    444c:	01049493          	slli	s1,s1,0x10
    4450:	0104d493          	srli	s1,s1,0x10
    4454:	008787b3          	add	a5,a5,s0
    4458:	0084d493          	srli	s1,s1,0x8
    445c:	009780a3          	sb	s1,1(a5)
    4460:	00100793          	li	a5,1
    4464:	20f6a223          	sw	a5,516(a3)
    4468:	00100513          	li	a0,1
    446c:	01c12083          	lw	ra,28(sp)
    4470:	01812403          	lw	s0,24(sp)
    4474:	01412483          	lw	s1,20(sp)
    4478:	01012903          	lw	s2,16(sp)
    447c:	00c12983          	lw	s3,12(sp)
    4480:	02010113          	addi	sp,sp,32
    4484:	00008067          	ret
    4488:	00791913          	slli	s2,s2,0x7
    448c:	41240433          	sub	s0,s0,s2
    4490:	00010737          	lui	a4,0x10
    4494:	ffc70713          	addi	a4,a4,-4 # fffc <_files+0x9ca4>
    4498:	00241413          	slli	s0,s0,0x2
    449c:	00e47433          	and	s0,s0,a4
    44a0:	008787b3          	add	a5,a5,s0
    44a4:	00c78023          	sb	a2,0(a5)
    44a8:	2086a783          	lw	a5,520(a3)
    44ac:	0084d713          	srli	a4,s1,0x8
    44b0:	008787b3          	add	a5,a5,s0
    44b4:	00e780a3          	sb	a4,1(a5)
    44b8:	2086a783          	lw	a5,520(a3)
    44bc:	0104d713          	srli	a4,s1,0x10
    44c0:	0184d493          	srli	s1,s1,0x18
    44c4:	008787b3          	add	a5,a5,s0
    44c8:	00e78123          	sb	a4,2(a5)
    44cc:	2086a783          	lw	a5,520(a3)
    44d0:	008787b3          	add	a5,a5,s0
    44d4:	009781a3          	sb	s1,3(a5)
    44d8:	f89ff06f          	j	4460 <fatfs_fat_set_cluster+0x9c>

000044dc <fatfs_free_cluster_chain>:
    44dc:	fe010113          	addi	sp,sp,-32
    44e0:	00812c23          	sw	s0,24(sp)
    44e4:	01212823          	sw	s2,16(sp)
    44e8:	00112e23          	sw	ra,28(sp)
    44ec:	00912a23          	sw	s1,20(sp)
    44f0:	00050413          	mv	s0,a0
    44f4:	ffd00913          	li	s2,-3
    44f8:	fff58793          	addi	a5,a1,-1
    44fc:	02f97063          	bgeu	s2,a5,451c <fatfs_free_cluster_chain+0x40>
    4500:	01c12083          	lw	ra,28(sp)
    4504:	01812403          	lw	s0,24(sp)
    4508:	01412483          	lw	s1,20(sp)
    450c:	01012903          	lw	s2,16(sp)
    4510:	00100513          	li	a0,1
    4514:	02010113          	addi	sp,sp,32
    4518:	00008067          	ret
    451c:	00040513          	mv	a0,s0
    4520:	00b12623          	sw	a1,12(sp)
    4524:	fffff097          	auipc	ra,0xfffff
    4528:	ee0080e7          	jalr	-288(ra) # 3404 <fatfs_find_next_cluster>
    452c:	00c12583          	lw	a1,12(sp)
    4530:	00050493          	mv	s1,a0
    4534:	00000613          	li	a2,0
    4538:	00040513          	mv	a0,s0
    453c:	00000097          	auipc	ra,0x0
    4540:	e88080e7          	jalr	-376(ra) # 43c4 <fatfs_fat_set_cluster>
    4544:	00048593          	mv	a1,s1
    4548:	fb1ff06f          	j	44f8 <fatfs_free_cluster_chain+0x1c>

0000454c <fatfs_fat_add_cluster_to_chain>:
    454c:	fff00793          	li	a5,-1
    4550:	02f59463          	bne	a1,a5,4578 <fatfs_fat_add_cluster_to_chain+0x2c>
    4554:	00000513          	li	a0,0
    4558:	00008067          	ret
    455c:	00000513          	li	a0,0
    4560:	01c12083          	lw	ra,28(sp)
    4564:	01812403          	lw	s0,24(sp)
    4568:	01412483          	lw	s1,20(sp)
    456c:	01012903          	lw	s2,16(sp)
    4570:	02010113          	addi	sp,sp,32
    4574:	00008067          	ret
    4578:	fe010113          	addi	sp,sp,-32
    457c:	00812c23          	sw	s0,24(sp)
    4580:	00912a23          	sw	s1,20(sp)
    4584:	01212823          	sw	s2,16(sp)
    4588:	00050413          	mv	s0,a0
    458c:	00112e23          	sw	ra,28(sp)
    4590:	00058513          	mv	a0,a1
    4594:	00060493          	mv	s1,a2
    4598:	fff00913          	li	s2,-1
    459c:	00050593          	mv	a1,a0
    45a0:	00a12623          	sw	a0,12(sp)
    45a4:	00040513          	mv	a0,s0
    45a8:	fffff097          	auipc	ra,0xfffff
    45ac:	e5c080e7          	jalr	-420(ra) # 3404 <fatfs_find_next_cluster>
    45b0:	fa0506e3          	beqz	a0,455c <fatfs_fat_add_cluster_to_chain+0x10>
    45b4:	00c12583          	lw	a1,12(sp)
    45b8:	ff2512e3          	bne	a0,s2,459c <fatfs_fat_add_cluster_to_chain+0x50>
    45bc:	00048613          	mv	a2,s1
    45c0:	00040513          	mv	a0,s0
    45c4:	00000097          	auipc	ra,0x0
    45c8:	e00080e7          	jalr	-512(ra) # 43c4 <fatfs_fat_set_cluster>
    45cc:	fff00613          	li	a2,-1
    45d0:	00048593          	mv	a1,s1
    45d4:	00040513          	mv	a0,s0
    45d8:	00000097          	auipc	ra,0x0
    45dc:	dec080e7          	jalr	-532(ra) # 43c4 <fatfs_fat_set_cluster>
    45e0:	00100513          	li	a0,1
    45e4:	f7dff06f          	j	4560 <fatfs_fat_add_cluster_to_chain+0x14>

000045e8 <fatfs_add_free_space>:
    45e8:	02452703          	lw	a4,36(a0)
    45ec:	fd010113          	addi	sp,sp,-48
    45f0:	02812423          	sw	s0,40(sp)
    45f4:	03212023          	sw	s2,32(sp)
    45f8:	01412c23          	sw	s4,24(sp)
    45fc:	01512a23          	sw	s5,20(sp)
    4600:	02112623          	sw	ra,44(sp)
    4604:	02912223          	sw	s1,36(sp)
    4608:	01312e23          	sw	s3,28(sp)
    460c:	fff00793          	li	a5,-1
    4610:	0005aa83          	lw	s5,0(a1)
    4614:	00050413          	mv	s0,a0
    4618:	00058913          	mv	s2,a1
    461c:	00060a13          	mv	s4,a2
    4620:	00f70863          	beq	a4,a5,4630 <fatfs_add_free_space+0x48>
    4624:	fff00593          	li	a1,-1
    4628:	00000097          	auipc	ra,0x0
    462c:	bc4080e7          	jalr	-1084(ra) # 41ec <fatfs_set_fs_info_next_free_cluster>
    4630:	00000493          	li	s1,0
    4634:	03449663          	bne	s1,s4,4660 <fatfs_add_free_space+0x78>
    4638:	00100513          	li	a0,1
    463c:	02c12083          	lw	ra,44(sp)
    4640:	02812403          	lw	s0,40(sp)
    4644:	02412483          	lw	s1,36(sp)
    4648:	02012903          	lw	s2,32(sp)
    464c:	01c12983          	lw	s3,28(sp)
    4650:	01812a03          	lw	s4,24(sp)
    4654:	01412a83          	lw	s5,20(sp)
    4658:	03010113          	addi	sp,sp,48
    465c:	00008067          	ret
    4660:	00842583          	lw	a1,8(s0)
    4664:	00c10613          	addi	a2,sp,12
    4668:	00040513          	mv	a0,s0
    466c:	00000097          	auipc	ra,0x0
    4670:	c38080e7          	jalr	-968(ra) # 42a4 <fatfs_find_blank_cluster>
    4674:	fc0504e3          	beqz	a0,463c <fatfs_add_free_space+0x54>
    4678:	00c12983          	lw	s3,12(sp)
    467c:	000a8593          	mv	a1,s5
    4680:	00040513          	mv	a0,s0
    4684:	00098613          	mv	a2,s3
    4688:	00000097          	auipc	ra,0x0
    468c:	d3c080e7          	jalr	-708(ra) # 43c4 <fatfs_fat_set_cluster>
    4690:	fff00613          	li	a2,-1
    4694:	00098593          	mv	a1,s3
    4698:	00040513          	mv	a0,s0
    469c:	00000097          	auipc	ra,0x0
    46a0:	d28080e7          	jalr	-728(ra) # 43c4 <fatfs_fat_set_cluster>
    46a4:	00049463          	bnez	s1,46ac <fatfs_add_free_space+0xc4>
    46a8:	01392023          	sw	s3,0(s2)
    46ac:	00148493          	addi	s1,s1,1
    46b0:	00098a93          	mv	s5,s3
    46b4:	f81ff06f          	j	4634 <fatfs_add_free_space+0x4c>

000046b8 <_write_sectors>:
    46b8:	fb010113          	addi	sp,sp,-80
    46bc:	03312e23          	sw	s3,60(sp)
    46c0:	000069b7          	lui	s3,0x6
    46c4:	03612823          	sw	s6,48(sp)
    46c8:	ef09cb03          	lbu	s6,-272(s3) # 5ef0 <_fs>
    46cc:	03512a23          	sw	s5,52(sp)
    46d0:	00058a93          	mv	s5,a1
    46d4:	fff00793          	li	a5,-1
    46d8:	04812423          	sw	s0,72(sp)
    46dc:	000b0593          	mv	a1,s6
    46e0:	00050413          	mv	s0,a0
    46e4:	000a8513          	mv	a0,s5
    46e8:	00f12e23          	sw	a5,28(sp)
    46ec:	04112623          	sw	ra,76(sp)
    46f0:	04912223          	sw	s1,68(sp)
    46f4:	05212023          	sw	s2,64(sp)
    46f8:	03712623          	sw	s7,44(sp)
    46fc:	03812423          	sw	s8,40(sp)
    4700:	00068b93          	mv	s7,a3
    4704:	03912223          	sw	s9,36(sp)
    4708:	03a12023          	sw	s10,32(sp)
    470c:	00060c93          	mv	s9,a2
    4710:	03412c23          	sw	s4,56(sp)
    4714:	ffffd097          	auipc	ra,0xffffd
    4718:	f4c080e7          	jalr	-180(ra) # 1660 <__udivsi3>
    471c:	00050493          	mv	s1,a0
    4720:	000b0593          	mv	a1,s6
    4724:	000a8513          	mv	a0,s5
    4728:	ffffd097          	auipc	ra,0xffffd
    472c:	f80080e7          	jalr	-128(ra) # 16a8 <__umodsi3>
    4730:	00ab87b3          	add	a5,s7,a0
    4734:	00050c13          	mv	s8,a0
    4738:	ef098d13          	addi	s10,s3,-272
    473c:	000b8913          	mv	s2,s7
    4740:	00fb7e63          	bgeu	s6,a5,475c <_write_sectors+0xa4>
    4744:	00048593          	mv	a1,s1
    4748:	000b0513          	mv	a0,s6
    474c:	ffffd097          	auipc	ra,0xffffd
    4750:	704080e7          	jalr	1796(ra) # 1e50 <__mulsi3>
    4754:	415b07b3          	sub	a5,s6,s5
    4758:	00f50933          	add	s2,a0,a5
    475c:	22842a03          	lw	s4,552(s0)
    4760:	029a1a63          	bne	s4,s1,4794 <_write_sectors+0xdc>
    4764:	22c42583          	lw	a1,556(s0)
    4768:	ef098513          	addi	a0,s3,-272
    476c:	ffffe097          	auipc	ra,0xffffe
    4770:	a40080e7          	jalr	-1472(ra) # 21ac <fatfs_lba_of_cluster>
    4774:	018505b3          	add	a1,a0,s8
    4778:	00090693          	mv	a3,s2
    477c:	000c8613          	mv	a2,s9
    4780:	ef098513          	addi	a0,s3,-272
    4784:	ffffe097          	auipc	ra,0xffffe
    4788:	a90080e7          	jalr	-1392(ra) # 2214 <fatfs_sector_write>
    478c:	04050a63          	beqz	a0,47e0 <_write_sectors+0x128>
    4790:	0540006f          	j	47e4 <_write_sectors+0x12c>
    4794:	096ae663          	bltu	s5,s6,4820 <_write_sectors+0x168>
    4798:	001a0793          	addi	a5,s4,1
    479c:	08979263          	bne	a5,s1,4820 <_write_sectors+0x168>
    47a0:	22c42583          	lw	a1,556(s0)
    47a4:	fff00a93          	li	s5,-1
    47a8:	089a6263          	bltu	s4,s1,482c <_write_sectors+0x174>
    47ac:	fff00793          	li	a5,-1
    47b0:	0af59463          	bne	a1,a5,4858 <_write_sectors+0x1a0>
    47b4:	000d4583          	lbu	a1,0(s10)
    47b8:	fff58513          	addi	a0,a1,-1
    47bc:	01750533          	add	a0,a0,s7
    47c0:	ffffd097          	auipc	ra,0xffffd
    47c4:	ea0080e7          	jalr	-352(ra) # 1660 <__udivsi3>
    47c8:	00050613          	mv	a2,a0
    47cc:	01c10593          	addi	a1,sp,28
    47d0:	ef098513          	addi	a0,s3,-272
    47d4:	00000097          	auipc	ra,0x0
    47d8:	e14080e7          	jalr	-492(ra) # 45e8 <fatfs_add_free_space>
    47dc:	06051c63          	bnez	a0,4854 <_write_sectors+0x19c>
    47e0:	00000913          	li	s2,0
    47e4:	04c12083          	lw	ra,76(sp)
    47e8:	04812403          	lw	s0,72(sp)
    47ec:	04412483          	lw	s1,68(sp)
    47f0:	03c12983          	lw	s3,60(sp)
    47f4:	03812a03          	lw	s4,56(sp)
    47f8:	03412a83          	lw	s5,52(sp)
    47fc:	03012b03          	lw	s6,48(sp)
    4800:	02c12b83          	lw	s7,44(sp)
    4804:	02812c03          	lw	s8,40(sp)
    4808:	02412c83          	lw	s9,36(sp)
    480c:	02012d03          	lw	s10,32(sp)
    4810:	00090513          	mv	a0,s2
    4814:	04012903          	lw	s2,64(sp)
    4818:	05010113          	addi	sp,sp,80
    481c:	00008067          	ret
    4820:	00442583          	lw	a1,4(s0)
    4824:	00000a13          	li	s4,0
    4828:	f7dff06f          	j	47a4 <_write_sectors+0xec>
    482c:	ef098513          	addi	a0,s3,-272
    4830:	00b12623          	sw	a1,12(sp)
    4834:	fffff097          	auipc	ra,0xfffff
    4838:	bd0080e7          	jalr	-1072(ra) # 3404 <fatfs_find_next_cluster>
    483c:	00c12583          	lw	a1,12(sp)
    4840:	00b12e23          	sw	a1,28(sp)
    4844:	f75508e3          	beq	a0,s5,47b4 <_write_sectors+0xfc>
    4848:	001a0a13          	addi	s4,s4,1
    484c:	00050593          	mv	a1,a0
    4850:	f59ff06f          	j	47a8 <_write_sectors+0xf0>
    4854:	01c12583          	lw	a1,28(sp)
    4858:	22b42623          	sw	a1,556(s0)
    485c:	22942423          	sw	s1,552(s0)
    4860:	f09ff06f          	j	4768 <_write_sectors+0xb0>

00004864 <fl_fflush>:
    4864:	000057b7          	lui	a5,0x5
    4868:	6ec7a783          	lw	a5,1772(a5) # 56ec <_filelib_init>
    486c:	ff010113          	addi	sp,sp,-16
    4870:	00812423          	sw	s0,8(sp)
    4874:	00112623          	sw	ra,12(sp)
    4878:	00912223          	sw	s1,4(sp)
    487c:	00050413          	mv	s0,a0
    4880:	00079663          	bnez	a5,488c <fl_fflush+0x28>
    4884:	ffffe097          	auipc	ra,0xffffe
    4888:	a64080e7          	jalr	-1436(ra) # 22e8 <fl_init>
    488c:	04040863          	beqz	s0,48dc <fl_fflush+0x78>
    4890:	000067b7          	lui	a5,0x6
    4894:	ef078713          	addi	a4,a5,-272 # 5ef0 <_fs>
    4898:	03c72703          	lw	a4,60(a4)
    489c:	ef078493          	addi	s1,a5,-272
    48a0:	00070463          	beqz	a4,48a8 <fl_fflush+0x44>
    48a4:	000700e7          	jalr	a4
    48a8:	43442783          	lw	a5,1076(s0)
    48ac:	02078263          	beqz	a5,48d0 <fl_fflush+0x6c>
    48b0:	43042583          	lw	a1,1072(s0)
    48b4:	00100693          	li	a3,1
    48b8:	23040613          	addi	a2,s0,560
    48bc:	00040513          	mv	a0,s0
    48c0:	00000097          	auipc	ra,0x0
    48c4:	df8080e7          	jalr	-520(ra) # 46b8 <_write_sectors>
    48c8:	00050463          	beqz	a0,48d0 <fl_fflush+0x6c>
    48cc:	42042a23          	sw	zero,1076(s0)
    48d0:	0404a783          	lw	a5,64(s1)
    48d4:	00078463          	beqz	a5,48dc <fl_fflush+0x78>
    48d8:	000780e7          	jalr	a5
    48dc:	00c12083          	lw	ra,12(sp)
    48e0:	00812403          	lw	s0,8(sp)
    48e4:	00412483          	lw	s1,4(sp)
    48e8:	00000513          	li	a0,0
    48ec:	01010113          	addi	sp,sp,16
    48f0:	00008067          	ret

000048f4 <fl_fclose>:
    48f4:	000057b7          	lui	a5,0x5
    48f8:	6ec7a783          	lw	a5,1772(a5) # 56ec <_filelib_init>
    48fc:	ff010113          	addi	sp,sp,-16
    4900:	00812423          	sw	s0,8(sp)
    4904:	00112623          	sw	ra,12(sp)
    4908:	00912223          	sw	s1,4(sp)
    490c:	01212023          	sw	s2,0(sp)
    4910:	00050413          	mv	s0,a0
    4914:	00079663          	bnez	a5,4920 <fl_fclose+0x2c>
    4918:	ffffe097          	auipc	ra,0xffffe
    491c:	9d0080e7          	jalr	-1584(ra) # 22e8 <fl_init>
    4920:	08040e63          	beqz	s0,49bc <fl_fclose+0xc8>
    4924:	000064b7          	lui	s1,0x6
    4928:	ef048793          	addi	a5,s1,-272 # 5ef0 <_fs>
    492c:	03c7a783          	lw	a5,60(a5)
    4930:	ef048913          	addi	s2,s1,-272
    4934:	00078463          	beqz	a5,493c <fl_fclose+0x48>
    4938:	000780e7          	jalr	a5
    493c:	00040513          	mv	a0,s0
    4940:	00000097          	auipc	ra,0x0
    4944:	f24080e7          	jalr	-220(ra) # 4864 <fl_fflush>
    4948:	01042783          	lw	a5,16(s0)
    494c:	00078e63          	beqz	a5,4968 <fl_fclose+0x74>
    4950:	00c42683          	lw	a3,12(s0)
    4954:	00042583          	lw	a1,0(s0)
    4958:	21c40613          	addi	a2,s0,540
    495c:	ef048513          	addi	a0,s1,-272
    4960:	fffff097          	auipc	ra,0xfffff
    4964:	300080e7          	jalr	768(ra) # 3c60 <fatfs_update_file_length>
    4968:	fff00793          	li	a5,-1
    496c:	42f42823          	sw	a5,1072(s0)
    4970:	00040513          	mv	a0,s0
    4974:	00042423          	sw	zero,8(s0)
    4978:	00042623          	sw	zero,12(s0)
    497c:	00042223          	sw	zero,4(s0)
    4980:	42042a23          	sw	zero,1076(s0)
    4984:	00042823          	sw	zero,16(s0)
    4988:	ffffd097          	auipc	ra,0xffffd
    498c:	7dc080e7          	jalr	2012(ra) # 2164 <_free_file>
    4990:	ef048513          	addi	a0,s1,-272
    4994:	fffff097          	auipc	ra,0xfffff
    4998:	a14080e7          	jalr	-1516(ra) # 33a8 <fatfs_fat_purge>
    499c:	04092783          	lw	a5,64(s2)
    49a0:	00078e63          	beqz	a5,49bc <fl_fclose+0xc8>
    49a4:	00812403          	lw	s0,8(sp)
    49a8:	00c12083          	lw	ra,12(sp)
    49ac:	00412483          	lw	s1,4(sp)
    49b0:	00012903          	lw	s2,0(sp)
    49b4:	01010113          	addi	sp,sp,16
    49b8:	00078067          	jr	a5
    49bc:	00c12083          	lw	ra,12(sp)
    49c0:	00812403          	lw	s0,8(sp)
    49c4:	00412483          	lw	s1,4(sp)
    49c8:	00012903          	lw	s2,0(sp)
    49cc:	01010113          	addi	sp,sp,16
    49d0:	00008067          	ret

000049d4 <fl_fread>:
    49d4:	fd010113          	addi	sp,sp,-48
    49d8:	01612823          	sw	s6,16(sp)
    49dc:	00050b13          	mv	s6,a0
    49e0:	00058513          	mv	a0,a1
    49e4:	00060593          	mv	a1,a2
    49e8:	02812423          	sw	s0,40(sp)
    49ec:	02912223          	sw	s1,36(sp)
    49f0:	02112623          	sw	ra,44(sp)
    49f4:	03212023          	sw	s2,32(sp)
    49f8:	01312e23          	sw	s3,28(sp)
    49fc:	01412c23          	sw	s4,24(sp)
    4a00:	01512a23          	sw	s5,20(sp)
    4a04:	01712623          	sw	s7,12(sp)
    4a08:	01812423          	sw	s8,8(sp)
    4a0c:	01912223          	sw	s9,4(sp)
    4a10:	00068413          	mv	s0,a3
    4a14:	ffffd097          	auipc	ra,0xffffd
    4a18:	43c080e7          	jalr	1084(ra) # 1e50 <__mulsi3>
    4a1c:	000057b7          	lui	a5,0x5
    4a20:	6ec7a783          	lw	a5,1772(a5) # 56ec <_filelib_init>
    4a24:	00050493          	mv	s1,a0
    4a28:	00079663          	bnez	a5,4a34 <fl_fread+0x60>
    4a2c:	ffffe097          	auipc	ra,0xffffe
    4a30:	8bc080e7          	jalr	-1860(ra) # 22e8 <fl_init>
    4a34:	120b0e63          	beqz	s6,4b70 <fl_fread+0x19c>
    4a38:	12040c63          	beqz	s0,4b70 <fl_fread+0x19c>
    4a3c:	43844783          	lbu	a5,1080(s0)
    4a40:	0017f793          	andi	a5,a5,1
    4a44:	12078663          	beqz	a5,4b70 <fl_fread+0x19c>
    4a48:	0a048e63          	beqz	s1,4b04 <fl_fread+0x130>
    4a4c:	00842583          	lw	a1,8(s0)
    4a50:	00c42783          	lw	a5,12(s0)
    4a54:	10f5fe63          	bgeu	a1,a5,4b70 <fl_fread+0x19c>
    4a58:	00b48733          	add	a4,s1,a1
    4a5c:	00e7f463          	bgeu	a5,a4,4a64 <fl_fread+0x90>
    4a60:	40b784b3          	sub	s1,a5,a1
    4a64:	0095da13          	srli	s4,a1,0x9
    4a68:	1ff5f913          	andi	s2,a1,511
    4a6c:	00000993          	li	s3,0
    4a70:	23040b93          	addi	s7,s0,560
    4a74:	20000c13          	li	s8,512
    4a78:	1ff00c93          	li	s9,511
    4a7c:	0899d263          	bge	s3,s1,4b00 <fl_fread+0x12c>
    4a80:	04091463          	bnez	s2,4ac8 <fl_fread+0xf4>
    4a84:	413486b3          	sub	a3,s1,s3
    4a88:	04dcd063          	bge	s9,a3,4ac8 <fl_fread+0xf4>
    4a8c:	4096d693          	srai	a3,a3,0x9
    4a90:	013b0633          	add	a2,s6,s3
    4a94:	000a0593          	mv	a1,s4
    4a98:	00040513          	mv	a0,s0
    4a9c:	fffff097          	auipc	ra,0xfffff
    4aa0:	604080e7          	jalr	1540(ra) # 40a0 <_read_sectors>
    4aa4:	04050e63          	beqz	a0,4b00 <fl_fread+0x12c>
    4aa8:	00951a93          	slli	s5,a0,0x9
    4aac:	00aa0a33          	add	s4,s4,a0
    4ab0:	00842783          	lw	a5,8(s0)
    4ab4:	015989b3          	add	s3,s3,s5
    4ab8:	00000913          	li	s2,0
    4abc:	015787b3          	add	a5,a5,s5
    4ac0:	00f42423          	sw	a5,8(s0)
    4ac4:	fb9ff06f          	j	4a7c <fl_fread+0xa8>
    4ac8:	43042783          	lw	a5,1072(s0)
    4acc:	07478c63          	beq	a5,s4,4b44 <fl_fread+0x170>
    4ad0:	43442783          	lw	a5,1076(s0)
    4ad4:	00078863          	beqz	a5,4ae4 <fl_fread+0x110>
    4ad8:	00040513          	mv	a0,s0
    4adc:	00000097          	auipc	ra,0x0
    4ae0:	d88080e7          	jalr	-632(ra) # 4864 <fl_fflush>
    4ae4:	00100693          	li	a3,1
    4ae8:	000b8613          	mv	a2,s7
    4aec:	000a0593          	mv	a1,s4
    4af0:	00040513          	mv	a0,s0
    4af4:	fffff097          	auipc	ra,0xfffff
    4af8:	5ac080e7          	jalr	1452(ra) # 40a0 <_read_sectors>
    4afc:	04051063          	bnez	a0,4b3c <fl_fread+0x168>
    4b00:	00098493          	mv	s1,s3
    4b04:	02c12083          	lw	ra,44(sp)
    4b08:	02812403          	lw	s0,40(sp)
    4b0c:	02012903          	lw	s2,32(sp)
    4b10:	01c12983          	lw	s3,28(sp)
    4b14:	01812a03          	lw	s4,24(sp)
    4b18:	01412a83          	lw	s5,20(sp)
    4b1c:	01012b03          	lw	s6,16(sp)
    4b20:	00c12b83          	lw	s7,12(sp)
    4b24:	00812c03          	lw	s8,8(sp)
    4b28:	00412c83          	lw	s9,4(sp)
    4b2c:	00048513          	mv	a0,s1
    4b30:	02412483          	lw	s1,36(sp)
    4b34:	03010113          	addi	sp,sp,48
    4b38:	00008067          	ret
    4b3c:	43442823          	sw	s4,1072(s0)
    4b40:	42042a23          	sw	zero,1076(s0)
    4b44:	412c07b3          	sub	a5,s8,s2
    4b48:	41348ab3          	sub	s5,s1,s3
    4b4c:	0157d463          	bge	a5,s5,4b54 <fl_fread+0x180>
    4b50:	00078a93          	mv	s5,a5
    4b54:	000a8613          	mv	a2,s5
    4b58:	012b85b3          	add	a1,s7,s2
    4b5c:	013b0533          	add	a0,s6,s3
    4b60:	ffffd097          	auipc	ra,0xffffd
    4b64:	bc8080e7          	jalr	-1080(ra) # 1728 <memcpy>
    4b68:	001a0a13          	addi	s4,s4,1
    4b6c:	f45ff06f          	j	4ab0 <fl_fread+0xdc>
    4b70:	fff00493          	li	s1,-1
    4b74:	f91ff06f          	j	4b04 <fl_fread+0x130>

00004b78 <fatfs_allocate_free_space>:
    4b78:	02069a63          	bnez	a3,4bac <fatfs_allocate_free_space+0x34>
    4b7c:	00000513          	li	a0,0
    4b80:	00008067          	ret
    4b84:	00000513          	li	a0,0
    4b88:	02c12083          	lw	ra,44(sp)
    4b8c:	02812403          	lw	s0,40(sp)
    4b90:	02412483          	lw	s1,36(sp)
    4b94:	02012903          	lw	s2,32(sp)
    4b98:	01c12983          	lw	s3,28(sp)
    4b9c:	01812a03          	lw	s4,24(sp)
    4ba0:	01412a83          	lw	s5,20(sp)
    4ba4:	03010113          	addi	sp,sp,48
    4ba8:	00008067          	ret
    4bac:	02452703          	lw	a4,36(a0)
    4bb0:	fd010113          	addi	sp,sp,-48
    4bb4:	02812423          	sw	s0,40(sp)
    4bb8:	03212023          	sw	s2,32(sp)
    4bbc:	01312e23          	sw	s3,28(sp)
    4bc0:	01512a23          	sw	s5,20(sp)
    4bc4:	02112623          	sw	ra,44(sp)
    4bc8:	02912223          	sw	s1,36(sp)
    4bcc:	01412c23          	sw	s4,24(sp)
    4bd0:	fff00793          	li	a5,-1
    4bd4:	00050413          	mv	s0,a0
    4bd8:	00058a93          	mv	s5,a1
    4bdc:	00060993          	mv	s3,a2
    4be0:	00068913          	mv	s2,a3
    4be4:	00f70863          	beq	a4,a5,4bf4 <fatfs_allocate_free_space+0x7c>
    4be8:	fff00593          	li	a1,-1
    4bec:	fffff097          	auipc	ra,0xfffff
    4bf0:	600080e7          	jalr	1536(ra) # 41ec <fatfs_set_fs_info_next_free_cluster>
    4bf4:	00044a03          	lbu	s4,0(s0)
    4bf8:	00090513          	mv	a0,s2
    4bfc:	009a1a13          	slli	s4,s4,0x9
    4c00:	000a0593          	mv	a1,s4
    4c04:	ffffd097          	auipc	ra,0xffffd
    4c08:	a5c080e7          	jalr	-1444(ra) # 1660 <__udivsi3>
    4c0c:	00050493          	mv	s1,a0
    4c10:	00050593          	mv	a1,a0
    4c14:	000a0513          	mv	a0,s4
    4c18:	ffffd097          	auipc	ra,0xffffd
    4c1c:	238080e7          	jalr	568(ra) # 1e50 <__mulsi3>
    4c20:	01250463          	beq	a0,s2,4c28 <fatfs_allocate_free_space+0xb0>
    4c24:	00148493          	addi	s1,s1,1
    4c28:	040a8463          	beqz	s5,4c70 <fatfs_allocate_free_space+0xf8>
    4c2c:	00842583          	lw	a1,8(s0)
    4c30:	00c10613          	addi	a2,sp,12
    4c34:	00040513          	mv	a0,s0
    4c38:	fffff097          	auipc	ra,0xfffff
    4c3c:	66c080e7          	jalr	1644(ra) # 42a4 <fatfs_find_blank_cluster>
    4c40:	f40502e3          	beqz	a0,4b84 <fatfs_allocate_free_space+0xc>
    4c44:	00100793          	li	a5,1
    4c48:	02f49863          	bne	s1,a5,4c78 <fatfs_allocate_free_space+0x100>
    4c4c:	00c12483          	lw	s1,12(sp)
    4c50:	fff00613          	li	a2,-1
    4c54:	00040513          	mv	a0,s0
    4c58:	00048593          	mv	a1,s1
    4c5c:	fffff097          	auipc	ra,0xfffff
    4c60:	768080e7          	jalr	1896(ra) # 43c4 <fatfs_fat_set_cluster>
    4c64:	00100513          	li	a0,1
    4c68:	0099a023          	sw	s1,0(s3)
    4c6c:	f1dff06f          	j	4b88 <fatfs_allocate_free_space+0x10>
    4c70:	0009a783          	lw	a5,0(s3)
    4c74:	00f12623          	sw	a5,12(sp)
    4c78:	00048613          	mv	a2,s1
    4c7c:	00c10593          	addi	a1,sp,12
    4c80:	00040513          	mv	a0,s0
    4c84:	00000097          	auipc	ra,0x0
    4c88:	964080e7          	jalr	-1692(ra) # 45e8 <fatfs_add_free_space>
    4c8c:	00a03533          	snez	a0,a0
    4c90:	ef9ff06f          	j	4b88 <fatfs_allocate_free_space+0x10>

00004c94 <fatfs_add_file_entry>:
    4c94:	f8010113          	addi	sp,sp,-128
    4c98:	00f12a23          	sw	a5,20(sp)
    4c9c:	03852783          	lw	a5,56(a0)
    4ca0:	06112e23          	sw	ra,124(sp)
    4ca4:	06812c23          	sw	s0,120(sp)
    4ca8:	06912a23          	sw	s1,116(sp)
    4cac:	07212823          	sw	s2,112(sp)
    4cb0:	07312623          	sw	s3,108(sp)
    4cb4:	07412423          	sw	s4,104(sp)
    4cb8:	07512223          	sw	s5,100(sp)
    4cbc:	07612023          	sw	s6,96(sp)
    4cc0:	05712e23          	sw	s7,92(sp)
    4cc4:	05812c23          	sw	s8,88(sp)
    4cc8:	05912a23          	sw	s9,84(sp)
    4ccc:	05a12823          	sw	s10,80(sp)
    4cd0:	05b12623          	sw	s11,76(sp)
    4cd4:	00b12423          	sw	a1,8(sp)
    4cd8:	00c12623          	sw	a2,12(sp)
    4cdc:	00e12823          	sw	a4,16(sp)
    4ce0:	01012c23          	sw	a6,24(sp)
    4ce4:	04079263          	bnez	a5,4d28 <fatfs_add_file_entry+0x94>
    4ce8:	00000513          	li	a0,0
    4cec:	07c12083          	lw	ra,124(sp)
    4cf0:	07812403          	lw	s0,120(sp)
    4cf4:	07412483          	lw	s1,116(sp)
    4cf8:	07012903          	lw	s2,112(sp)
    4cfc:	06c12983          	lw	s3,108(sp)
    4d00:	06812a03          	lw	s4,104(sp)
    4d04:	06412a83          	lw	s5,100(sp)
    4d08:	06012b03          	lw	s6,96(sp)
    4d0c:	05c12b83          	lw	s7,92(sp)
    4d10:	05812c03          	lw	s8,88(sp)
    4d14:	05412c83          	lw	s9,84(sp)
    4d18:	05012d03          	lw	s10,80(sp)
    4d1c:	04c12d83          	lw	s11,76(sp)
    4d20:	08010113          	addi	sp,sp,128
    4d24:	00008067          	ret
    4d28:	00050413          	mv	s0,a0
    4d2c:	00c12503          	lw	a0,12(sp)
    4d30:	00068a93          	mv	s5,a3
    4d34:	ffffe097          	auipc	ra,0xffffe
    4d38:	9c0080e7          	jalr	-1600(ra) # 26f4 <fatfs_lfn_entries_required>
    4d3c:	00150713          	addi	a4,a0,1
    4d40:	00100793          	li	a5,1
    4d44:	00050493          	mv	s1,a0
    4d48:	fae7f0e3          	bgeu	a5,a4,4ce8 <fatfs_add_file_entry+0x54>
    4d4c:	00000913          	li	s2,0
    4d50:	00000a13          	li	s4,0
    4d54:	00000993          	li	s3,0
    4d58:	00000b13          	li	s6,0
    4d5c:	00000d93          	li	s11,0
    4d60:	0e500b93          	li	s7,229
    4d64:	01000c13          	li	s8,16
    4d68:	00812583          	lw	a1,8(sp)
    4d6c:	00000693          	li	a3,0
    4d70:	00090613          	mv	a2,s2
    4d74:	00040513          	mv	a0,s0
    4d78:	ffffe097          	auipc	ra,0xffffe
    4d7c:	79c080e7          	jalr	1948(ra) # 3514 <fatfs_sector_reader>
    4d80:	14050463          	beqz	a0,4ec8 <fatfs_add_file_entry+0x234>
    4d84:	04440d13          	addi	s10,s0,68
    4d88:	000d8793          	mv	a5,s11
    4d8c:	00000c93          	li	s9,0
    4d90:	000d0513          	mv	a0,s10
    4d94:	00f12e23          	sw	a5,28(sp)
    4d98:	ffffe097          	auipc	ra,0xffffe
    4d9c:	86c080e7          	jalr	-1940(ra) # 2604 <fatfs_entry_lfn_text>
    4da0:	01c12783          	lw	a5,28(sp)
    4da4:	00050d93          	mv	s11,a0
    4da8:	02050c63          	beqz	a0,4de0 <fatfs_add_file_entry+0x14c>
    4dac:	00079863          	bnez	a5,4dbc <fatfs_add_file_entry+0x128>
    4db0:	000c8a13          	mv	s4,s9
    4db4:	00090993          	mv	s3,s2
    4db8:	00100b13          	li	s6,1
    4dbc:	00178d93          	addi	s11,a5,1
    4dc0:	001c8713          	addi	a4,s9,1
    4dc4:	0ff77c93          	zext.b	s9,a4
    4dc8:	020d0d13          	addi	s10,s10,32
    4dcc:	018c9663          	bne	s9,s8,4dd8 <fatfs_add_file_entry+0x144>
    4dd0:	00190913          	addi	s2,s2,1
    4dd4:	f95ff06f          	j	4d68 <fatfs_add_file_entry+0xd4>
    4dd8:	000d8793          	mv	a5,s11
    4ddc:	fb5ff06f          	j	4d90 <fatfs_add_file_entry+0xfc>
    4de0:	000d4603          	lbu	a2,0(s10)
    4de4:	0d761c63          	bne	a2,s7,4ebc <fatfs_add_file_entry+0x228>
    4de8:	00079863          	bnez	a5,4df8 <fatfs_add_file_entry+0x164>
    4dec:	000c8a13          	mv	s4,s9
    4df0:	00090993          	mv	s3,s2
    4df4:	00100b13          	li	s6,1
    4df8:	00178d93          	addi	s11,a5,1
    4dfc:	fc97c2e3          	blt	a5,s1,4dc0 <fatfs_add_file_entry+0x12c>
    4e00:	00ba8693          	addi	a3,s5,11
    4e04:	000a8713          	mv	a4,s5
    4e08:	00000913          	li	s2,0
    4e0c:	00074603          	lbu	a2,0(a4)
    4e10:	00195793          	srli	a5,s2,0x1
    4e14:	00791913          	slli	s2,s2,0x7
    4e18:	0127e7b3          	or	a5,a5,s2
    4e1c:	00170713          	addi	a4,a4,1
    4e20:	00c787b3          	add	a5,a5,a2
    4e24:	0ff7f913          	zext.b	s2,a5
    4e28:	fed712e3          	bne	a4,a3,4e0c <fatfs_add_file_entry+0x178>
    4e2c:	00098b13          	mv	s6,s3
    4e30:	00000d93          	li	s11,0
    4e34:	04440c13          	addi	s8,s0,68
    4e38:	01000c93          	li	s9,16
    4e3c:	00812583          	lw	a1,8(sp)
    4e40:	00000693          	li	a3,0
    4e44:	000b0613          	mv	a2,s6
    4e48:	00040513          	mv	a0,s0
    4e4c:	ffffe097          	auipc	ra,0xffffe
    4e50:	6c8080e7          	jalr	1736(ra) # 3514 <fatfs_sector_reader>
    4e54:	e8050ae3          	beqz	a0,4ce8 <fatfs_add_file_entry+0x54>
    4e58:	000c0b93          	mv	s7,s8
    4e5c:	00000713          	li	a4,0
    4e60:	00000d13          	li	s10,0
    4e64:	000d9663          	bnez	s11,4e70 <fatfs_add_file_entry+0x1dc>
    4e68:	11699863          	bne	s3,s6,4f78 <fatfs_add_file_entry+0x2e4>
    4e6c:	114d1663          	bne	s10,s4,4f78 <fatfs_add_file_entry+0x2e4>
    4e70:	0e049263          	bnez	s1,4f54 <fatfs_add_file_entry+0x2c0>
    4e74:	01812703          	lw	a4,24(sp)
    4e78:	01012603          	lw	a2,16(sp)
    4e7c:	01412583          	lw	a1,20(sp)
    4e80:	02010693          	addi	a3,sp,32
    4e84:	000a8513          	mv	a0,s5
    4e88:	ffffe097          	auipc	ra,0xffffe
    4e8c:	9c4080e7          	jalr	-1596(ra) # 284c <fatfs_sfn_create_entry>
    4e90:	02010593          	addi	a1,sp,32
    4e94:	02000613          	li	a2,32
    4e98:	000b8513          	mv	a0,s7
    4e9c:	ffffd097          	auipc	ra,0xffffd
    4ea0:	88c080e7          	jalr	-1908(ra) # 1728 <memcpy>
    4ea4:	03842783          	lw	a5,56(s0)
    4ea8:	24442503          	lw	a0,580(s0)
    4eac:	00100613          	li	a2,1
    4eb0:	000c0593          	mv	a1,s8
    4eb4:	000780e7          	jalr	a5
    4eb8:	e35ff06f          	j	4cec <fatfs_add_file_entry+0x58>
    4ebc:	f20606e3          	beqz	a2,4de8 <fatfs_add_file_entry+0x154>
    4ec0:	00000b13          	li	s6,0
    4ec4:	efdff06f          	j	4dc0 <fatfs_add_file_entry+0x12c>
    4ec8:	00842583          	lw	a1,8(s0)
    4ecc:	02010613          	addi	a2,sp,32
    4ed0:	00040513          	mv	a0,s0
    4ed4:	fffff097          	auipc	ra,0xfffff
    4ed8:	3d0080e7          	jalr	976(ra) # 42a4 <fatfs_find_blank_cluster>
    4edc:	e00506e3          	beqz	a0,4ce8 <fatfs_add_file_entry+0x54>
    4ee0:	02012b83          	lw	s7,32(sp)
    4ee4:	00812583          	lw	a1,8(sp)
    4ee8:	00040513          	mv	a0,s0
    4eec:	000b8613          	mv	a2,s7
    4ef0:	fffff097          	auipc	ra,0xfffff
    4ef4:	65c080e7          	jalr	1628(ra) # 454c <fatfs_fat_add_cluster_to_chain>
    4ef8:	de0508e3          	beqz	a0,4ce8 <fatfs_add_file_entry+0x54>
    4efc:	20000613          	li	a2,512
    4f00:	00000593          	li	a1,0
    4f04:	04440513          	addi	a0,s0,68
    4f08:	ffffd097          	auipc	ra,0xffffd
    4f0c:	804080e7          	jalr	-2044(ra) # 170c <memset>
    4f10:	00000c13          	li	s8,0
    4f14:	00044783          	lbu	a5,0(s0)
    4f18:	00fc6a63          	bltu	s8,a5,4f2c <fatfs_add_file_entry+0x298>
    4f1c:	ee0b12e3          	bnez	s6,4e00 <fatfs_add_file_entry+0x16c>
    4f20:	00090993          	mv	s3,s2
    4f24:	00000a13          	li	s4,0
    4f28:	ed9ff06f          	j	4e00 <fatfs_add_file_entry+0x16c>
    4f2c:	00000693          	li	a3,0
    4f30:	000c0613          	mv	a2,s8
    4f34:	000b8593          	mv	a1,s7
    4f38:	00040513          	mv	a0,s0
    4f3c:	ffffd097          	auipc	ra,0xffffd
    4f40:	2f0080e7          	jalr	752(ra) # 222c <fatfs_write_sector>
    4f44:	da0502e3          	beqz	a0,4ce8 <fatfs_add_file_entry+0x54>
    4f48:	001c0c13          	addi	s8,s8,1
    4f4c:	0ffc7c13          	zext.b	s8,s8
    4f50:	fc5ff06f          	j	4f14 <fatfs_add_file_entry+0x280>
    4f54:	00c12503          	lw	a0,12(sp)
    4f58:	fff48493          	addi	s1,s1,-1
    4f5c:	00090693          	mv	a3,s2
    4f60:	00048613          	mv	a2,s1
    4f64:	000b8593          	mv	a1,s7
    4f68:	ffffd097          	auipc	ra,0xffffd
    4f6c:	7bc080e7          	jalr	1980(ra) # 2724 <fatfs_filename_to_lfn>
    4f70:	00100d93          	li	s11,1
    4f74:	00100713          	li	a4,1
    4f78:	001d0793          	addi	a5,s10,1
    4f7c:	0ff7fd13          	zext.b	s10,a5
    4f80:	020b8b93          	addi	s7,s7,32
    4f84:	ef9d10e3          	bne	s10,s9,4e64 <fatfs_add_file_entry+0x1d0>
    4f88:	00070e63          	beqz	a4,4fa4 <fatfs_add_file_entry+0x310>
    4f8c:	03842783          	lw	a5,56(s0)
    4f90:	24442503          	lw	a0,580(s0)
    4f94:	00100613          	li	a2,1
    4f98:	000c0593          	mv	a1,s8
    4f9c:	000780e7          	jalr	a5
    4fa0:	d40504e3          	beqz	a0,4ce8 <fatfs_add_file_entry+0x54>
    4fa4:	001b0b13          	addi	s6,s6,1
    4fa8:	e95ff06f          	j	4e3c <fatfs_add_file_entry+0x1a8>

00004fac <fl_fopen>:
    4fac:	000057b7          	lui	a5,0x5
    4fb0:	6ec7a783          	lw	a5,1772(a5) # 56ec <_filelib_init>
    4fb4:	fa010113          	addi	sp,sp,-96
    4fb8:	04812c23          	sw	s0,88(sp)
    4fbc:	05412423          	sw	s4,72(sp)
    4fc0:	04112e23          	sw	ra,92(sp)
    4fc4:	04912a23          	sw	s1,84(sp)
    4fc8:	05212823          	sw	s2,80(sp)
    4fcc:	05312623          	sw	s3,76(sp)
    4fd0:	05512223          	sw	s5,68(sp)
    4fd4:	05612023          	sw	s6,64(sp)
    4fd8:	03712e23          	sw	s7,60(sp)
    4fdc:	03812c23          	sw	s8,56(sp)
    4fe0:	03912a23          	sw	s9,52(sp)
    4fe4:	00050a13          	mv	s4,a0
    4fe8:	00058413          	mv	s0,a1
    4fec:	00079663          	bnez	a5,4ff8 <fl_fopen+0x4c>
    4ff0:	ffffd097          	auipc	ra,0xffffd
    4ff4:	2f8080e7          	jalr	760(ra) # 22e8 <fl_init>
    4ff8:	000057b7          	lui	a5,0x5
    4ffc:	6e87a783          	lw	a5,1768(a5) # 56e8 <_filelib_valid>
    5000:	36078c63          	beqz	a5,5378 <fl_fopen+0x3cc>
    5004:	360a0a63          	beqz	s4,5378 <fl_fopen+0x3cc>
    5008:	10040863          	beqz	s0,5118 <fl_fopen+0x16c>
    500c:	00040513          	mv	a0,s0
    5010:	ffffc097          	auipc	ra,0xffffc
    5014:	73c080e7          	jalr	1852(ra) # 174c <strlen>
    5018:	00000493          	li	s1,0
    501c:	00000713          	li	a4,0
    5020:	05700693          	li	a3,87
    5024:	07200613          	li	a2,114
    5028:	07700813          	li	a6,119
    502c:	06100893          	li	a7,97
    5030:	06200313          	li	t1,98
    5034:	04100593          	li	a1,65
    5038:	04200e13          	li	t3,66
    503c:	05200e93          	li	t4,82
    5040:	02b00f13          	li	t5,43
    5044:	10a74663          	blt	a4,a0,5150 <fl_fopen+0x1a4>
    5048:	00006937          	lui	s2,0x6
    504c:	ef090793          	addi	a5,s2,-272 # 5ef0 <_fs>
    5050:	0387a783          	lw	a5,56(a5)
    5054:	ef090b13          	addi	s6,s2,-272
    5058:	00079463          	bnez	a5,5060 <fl_fopen+0xb4>
    505c:	0d94f493          	andi	s1,s1,217
    5060:	03cb2783          	lw	a5,60(s6)
    5064:	00078463          	beqz	a5,506c <fl_fopen+0xc0>
    5068:	000780e7          	jalr	a5
    506c:	0014fc93          	andi	s9,s1,1
    5070:	160c9863          	bnez	s9,51e0 <fl_fopen+0x234>
    5074:	0204f793          	andi	a5,s1,32
    5078:	08078863          	beqz	a5,5108 <fl_fopen+0x15c>
    507c:	038b2783          	lw	a5,56(s6)
    5080:	06078a63          	beqz	a5,50f4 <fl_fopen+0x148>
    5084:	ffffd097          	auipc	ra,0xffffd
    5088:	06c080e7          	jalr	108(ra) # 20f0 <_allocate_file>
    508c:	00050413          	mv	s0,a0
    5090:	06050263          	beqz	a0,50f4 <fl_fopen+0x148>
    5094:	01450b93          	addi	s7,a0,20
    5098:	10400613          	li	a2,260
    509c:	00000593          	li	a1,0
    50a0:	000b8513          	mv	a0,s7
    50a4:	ffffc097          	auipc	ra,0xffffc
    50a8:	668080e7          	jalr	1640(ra) # 170c <memset>
    50ac:	11840a93          	addi	s5,s0,280
    50b0:	10400613          	li	a2,260
    50b4:	00000593          	li	a1,0
    50b8:	000a8513          	mv	a0,s5
    50bc:	ffffc097          	auipc	ra,0xffffc
    50c0:	650080e7          	jalr	1616(ra) # 170c <memset>
    50c4:	10400713          	li	a4,260
    50c8:	000a8693          	mv	a3,s5
    50cc:	10400613          	li	a2,260
    50d0:	000b8593          	mv	a1,s7
    50d4:	000a0513          	mv	a0,s4
    50d8:	ffffe097          	auipc	ra,0xffffe
    50dc:	c78080e7          	jalr	-904(ra) # 2d50 <fatfs_split_path>
    50e0:	fff00793          	li	a5,-1
    50e4:	10f51c63          	bne	a0,a5,51fc <fl_fopen+0x250>
    50e8:	00040513          	mv	a0,s0
    50ec:	ffffd097          	auipc	ra,0xffffd
    50f0:	078080e7          	jalr	120(ra) # 2164 <_free_file>
    50f4:	00000413          	li	s0,0
    50f8:	260c9c63          	bnez	s9,5370 <fl_fopen+0x3c4>
    50fc:	0e041c63          	bnez	s0,51f4 <fl_fopen+0x248>
    5100:	0064f793          	andi	a5,s1,6
    5104:	24079e63          	bnez	a5,5360 <fl_fopen+0x3b4>
    5108:	00000413          	li	s0,0
    510c:	040b2783          	lw	a5,64(s6)
    5110:	00078463          	beqz	a5,5118 <fl_fopen+0x16c>
    5114:	000780e7          	jalr	a5
    5118:	05c12083          	lw	ra,92(sp)
    511c:	00040513          	mv	a0,s0
    5120:	05812403          	lw	s0,88(sp)
    5124:	05412483          	lw	s1,84(sp)
    5128:	05012903          	lw	s2,80(sp)
    512c:	04c12983          	lw	s3,76(sp)
    5130:	04812a03          	lw	s4,72(sp)
    5134:	04412a83          	lw	s5,68(sp)
    5138:	04012b03          	lw	s6,64(sp)
    513c:	03c12b83          	lw	s7,60(sp)
    5140:	03812c03          	lw	s8,56(sp)
    5144:	03412c83          	lw	s9,52(sp)
    5148:	06010113          	addi	sp,sp,96
    514c:	00008067          	ret
    5150:	00e407b3          	add	a5,s0,a4
    5154:	0007c783          	lbu	a5,0(a5)
    5158:	04d78463          	beq	a5,a3,51a0 <fl_fopen+0x1f4>
    515c:	02f6e463          	bltu	a3,a5,5184 <fl_fopen+0x1d8>
    5160:	04b78463          	beq	a5,a1,51a8 <fl_fopen+0x1fc>
    5164:	00f5e863          	bltu	a1,a5,5174 <fl_fopen+0x1c8>
    5168:	05e78463          	beq	a5,t5,51b0 <fl_fopen+0x204>
    516c:	00170713          	addi	a4,a4,1
    5170:	ed5ff06f          	j	5044 <fl_fopen+0x98>
    5174:	03c78063          	beq	a5,t3,5194 <fl_fopen+0x1e8>
    5178:	ffd79ae3          	bne	a5,t4,516c <fl_fopen+0x1c0>
    517c:	0014e493          	ori	s1,s1,1
    5180:	fedff06f          	j	516c <fl_fopen+0x1c0>
    5184:	fec78ce3          	beq	a5,a2,517c <fl_fopen+0x1d0>
    5188:	00f66a63          	bltu	a2,a5,519c <fl_fopen+0x1f0>
    518c:	01178e63          	beq	a5,a7,51a8 <fl_fopen+0x1fc>
    5190:	fc679ee3          	bne	a5,t1,516c <fl_fopen+0x1c0>
    5194:	0084e493          	ori	s1,s1,8
    5198:	fd5ff06f          	j	516c <fl_fopen+0x1c0>
    519c:	fd0798e3          	bne	a5,a6,516c <fl_fopen+0x1c0>
    51a0:	0324e493          	ori	s1,s1,50
    51a4:	fc9ff06f          	j	516c <fl_fopen+0x1c0>
    51a8:	0264e493          	ori	s1,s1,38
    51ac:	fc1ff06f          	j	516c <fl_fopen+0x1c0>
    51b0:	0014f793          	andi	a5,s1,1
    51b4:	00078663          	beqz	a5,51c0 <fl_fopen+0x214>
    51b8:	0024e493          	ori	s1,s1,2
    51bc:	fb1ff06f          	j	516c <fl_fopen+0x1c0>
    51c0:	0024f793          	andi	a5,s1,2
    51c4:	00078663          	beqz	a5,51d0 <fl_fopen+0x224>
    51c8:	0314e493          	ori	s1,s1,49
    51cc:	fa1ff06f          	j	516c <fl_fopen+0x1c0>
    51d0:	0044f793          	andi	a5,s1,4
    51d4:	f8078ce3          	beqz	a5,516c <fl_fopen+0x1c0>
    51d8:	0274e493          	ori	s1,s1,39
    51dc:	f91ff06f          	j	516c <fl_fopen+0x1c0>
    51e0:	000a0513          	mv	a0,s4
    51e4:	fffff097          	auipc	ra,0xfffff
    51e8:	830080e7          	jalr	-2000(ra) # 3a14 <_open_file>
    51ec:	00050413          	mv	s0,a0
    51f0:	e80502e3          	beqz	a0,5074 <fl_fopen+0xc8>
    51f4:	42940c23          	sb	s1,1080(s0)
    51f8:	f15ff06f          	j	510c <fl_fopen+0x160>
    51fc:	00040513          	mv	a0,s0
    5200:	ffffe097          	auipc	ra,0xffffe
    5204:	da4080e7          	jalr	-604(ra) # 2fa4 <_check_file_open>
    5208:	00050993          	mv	s3,a0
    520c:	ec051ee3          	bnez	a0,50e8 <fl_fopen+0x13c>
    5210:	01444783          	lbu	a5,20(s0)
    5214:	0e079663          	bnez	a5,5300 <fl_fopen+0x354>
    5218:	008b2783          	lw	a5,8(s6)
    521c:	00f42023          	sw	a5,0(s0)
    5220:	00042583          	lw	a1,0(s0)
    5224:	01010693          	addi	a3,sp,16
    5228:	000a8613          	mv	a2,s5
    522c:	ef090513          	addi	a0,s2,-272
    5230:	ffffe097          	auipc	ra,0xffffe
    5234:	424080e7          	jalr	1060(ra) # 3654 <fatfs_get_file_entry>
    5238:	00100793          	li	a5,1
    523c:	eaf506e3          	beq	a0,a5,50e8 <fl_fopen+0x13c>
    5240:	00042223          	sw	zero,4(s0)
    5244:	00100693          	li	a3,1
    5248:	00440613          	addi	a2,s0,4
    524c:	00100593          	li	a1,1
    5250:	ef090513          	addi	a0,s2,-272
    5254:	00000097          	auipc	ra,0x0
    5258:	924080e7          	jalr	-1756(ra) # 4b78 <fatfs_allocate_free_space>
    525c:	e80506e3          	beqz	a0,50e8 <fl_fopen+0x13c>
    5260:	00002c37          	lui	s8,0x2
    5264:	21c40b93          	addi	s7,s0,540
    5268:	70fc0c13          	addi	s8,s8,1807 # 270f <fatfs_lfn_entries_required+0x1b>
    526c:	000a8593          	mv	a1,s5
    5270:	00410513          	addi	a0,sp,4
    5274:	ffffd097          	auipc	ra,0xffffd
    5278:	680080e7          	jalr	1664(ra) # 28f4 <fatfs_lfn_create_sfn>
    527c:	08098e63          	beqz	s3,5318 <fl_fopen+0x36c>
    5280:	00098613          	mv	a2,s3
    5284:	00410593          	addi	a1,sp,4
    5288:	000b8513          	mv	a0,s7
    528c:	ffffd097          	auipc	ra,0xffffd
    5290:	7e4080e7          	jalr	2020(ra) # 2a70 <fatfs_lfn_generate_tail>
    5294:	00042583          	lw	a1,0(s0)
    5298:	000b8613          	mv	a2,s7
    529c:	ef090513          	addi	a0,s2,-272
    52a0:	fffff097          	auipc	ra,0xfffff
    52a4:	8ec080e7          	jalr	-1812(ra) # 3b8c <fatfs_sfn_exists>
    52a8:	00050663          	beqz	a0,52b4 <fl_fopen+0x308>
    52ac:	00198993          	addi	s3,s3,1
    52b0:	fb899ee3          	bne	s3,s8,526c <fl_fopen+0x2c0>
    52b4:	00442703          	lw	a4,4(s0)
    52b8:	000027b7          	lui	a5,0x2
    52bc:	70f78793          	addi	a5,a5,1807 # 270f <fatfs_lfn_entries_required+0x1b>
    52c0:	00070593          	mv	a1,a4
    52c4:	02f98663          	beq	s3,a5,52f0 <fl_fopen+0x344>
    52c8:	00042583          	lw	a1,0(s0)
    52cc:	00000813          	li	a6,0
    52d0:	00000793          	li	a5,0
    52d4:	000b8693          	mv	a3,s7
    52d8:	000a8613          	mv	a2,s5
    52dc:	ef090513          	addi	a0,s2,-272
    52e0:	00000097          	auipc	ra,0x0
    52e4:	9b4080e7          	jalr	-1612(ra) # 4c94 <fatfs_add_file_entry>
    52e8:	04051463          	bnez	a0,5330 <fl_fopen+0x384>
    52ec:	00442583          	lw	a1,4(s0)
    52f0:	ef090513          	addi	a0,s2,-272
    52f4:	fffff097          	auipc	ra,0xfffff
    52f8:	1e8080e7          	jalr	488(ra) # 44dc <fatfs_free_cluster_chain>
    52fc:	dedff06f          	j	50e8 <fl_fopen+0x13c>
    5300:	00040593          	mv	a1,s0
    5304:	000b8513          	mv	a0,s7
    5308:	ffffe097          	auipc	ra,0xffffe
    530c:	558080e7          	jalr	1368(ra) # 3860 <_open_directory>
    5310:	f00518e3          	bnez	a0,5220 <fl_fopen+0x274>
    5314:	dd5ff06f          	j	50e8 <fl_fopen+0x13c>
    5318:	00b00613          	li	a2,11
    531c:	00410593          	addi	a1,sp,4
    5320:	000b8513          	mv	a0,s7
    5324:	ffffc097          	auipc	ra,0xffffc
    5328:	404080e7          	jalr	1028(ra) # 1728 <memcpy>
    532c:	f69ff06f          	j	5294 <fl_fopen+0x2e8>
    5330:	fff00793          	li	a5,-1
    5334:	00042623          	sw	zero,12(s0)
    5338:	00042423          	sw	zero,8(s0)
    533c:	42f42823          	sw	a5,1072(s0)
    5340:	42042a23          	sw	zero,1076(s0)
    5344:	00042823          	sw	zero,16(s0)
    5348:	22f42423          	sw	a5,552(s0)
    534c:	22f42623          	sw	a5,556(s0)
    5350:	ef090513          	addi	a0,s2,-272
    5354:	ffffe097          	auipc	ra,0xffffe
    5358:	054080e7          	jalr	84(ra) # 33a8 <fatfs_fat_purge>
    535c:	d9dff06f          	j	50f8 <fl_fopen+0x14c>
    5360:	000a0513          	mv	a0,s4
    5364:	ffffe097          	auipc	ra,0xffffe
    5368:	6b0080e7          	jalr	1712(ra) # 3a14 <_open_file>
    536c:	00050413          	mv	s0,a0
    5370:	e80412e3          	bnez	s0,51f4 <fl_fopen+0x248>
    5374:	d95ff06f          	j	5108 <fl_fopen+0x15c>
    5378:	00000413          	li	s0,0
    537c:	d9dff06f          	j	5118 <fl_fopen+0x16c>

00005380 <g_volume>:
    5380:	00000008                                ....

00005384 <cmd16>:
    5384:	02000050 00001500                       P.......

0000538c <acmd41>:
    538c:	00004069 00000100                       i@......

00005394 <cmd55>:
    5394:	00000077 00000100                       w.......

0000539c <cmd8>:
    539c:	01000048 000087aa                       H.......

000053a4 <cmd0>:
    53a4:	00000040 00009500                       @.......

000053ac <AUDIO>:
    53ac:	00018000                                ....

000053b0 <DISPLAY>:
    53b0:	00014000                                .@..

000053b4 <RGBSEL>:
    53b4:	00012000                                . ..

000053b8 <VOLUME>:
    53b8:	00011000                                ....

000053bc <BUTTONS>:
    53bc:	00010100                                ....

000053c0 <SDCARD>:
    53c0:	00010080                                ....

000053c4 <OLED_RST>:
    53c4:	00010010                                ....

000053c8 <OLED>:
    53c8:	00010008                                ....

000053cc <LEDS>:
    53cc:	00010004 73756d2f 00006369 74696e69     ..../music..init
    53dc:	20647320 202e2e2e 00000000 000a6b6f      sd ... ....ok..
    53ec:	20202020 3d3d3d3d 616c7020 20726579         ==== player 
    53fc:	3d3d3d3d 20202020 00000a0a 2e206f6e     ====    ....no .
    540c:	20776172 2f206e69 6973756d 00000a63     raw in /music...
    541c:	203e6425 000a7325 00006272 2073250a     %d> %s..rb...%s 
    542c:	20746f6e 6e756f66 00000a64 616c700a     not found....pla
    543c:	676e6979 20732520 0a2e2e2e 00000000     ying %s ........
    544c:	676d692f 676d692f 7761722e 00000000     /img/img.raw....
    545c:	656e6f64 00000a2e 33323130 37363534     done....01234567
    546c:	42413938 46454443 00000000 5f544146     89ABCDEF....FAT_
    547c:	203a5346 6f727245 6f632072 20646c75     FS: Error could 
    548c:	20746f6e 64616f6c 54414620 74656420     not load FAT det
    549c:	736c6961 64252820 0a0d2129 00000000     ails (%d)!......

000054ac <font>:
    54ac:	00000000 00002f00 00030000 14000003     ...../..........
    54bc:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    54cc:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    54dc:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    54ec:	00080800 00200000 20000000 02040810     ...... .... ....
    54fc:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    550c:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    551c:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    552c:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    553c:	00141400 0a110000 01000004 0007052d     ............-...
    554c:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    555c:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    556c:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    557c:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    558c:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    559c:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    55ac:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    55bc:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    55cc:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    55dc:	003f2102 01020000 20000201 00000020     .!?........  ...
    55ec:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    55fc:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    560c:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    561c:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    562c:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    563c:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    564c:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    565c:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    566c:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    567c:	043f2100 02010000 00000102 00000000     .!?.............
    568c:	00000001 00000003 00000005 00000007     ................
    569c:	00000009 0000000e 00000010 00000012     ................
    56ac:	00000014 00000016 00000018 0000001c     ................
    56bc:	0000001e                                ....

000056c0 <file_count>:
    56c0:	00000000                                ....

000056c4 <sdcard_while_loading_callback>:
    56c4:	00000000                                ....

000056c8 <back_color>:
	...

000056c9 <front_color>:
    56c9:	                                         ...

000056cc <cursor_y>:
    56cc:	00000000                                ....

000056d0 <cursor_x>:
    56d0:	00000000                                ....

000056d4 <f_putchar>:
    56d4:	00000000                                ....

000056d8 <_free_file_list>:
	...

000056e0 <_open_file_list>:
	...

000056e8 <_filelib_valid>:
    56e8:	00000000                                ....

000056ec <_filelib_init>:
    56ec:	00000000                                ....
