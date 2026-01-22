
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
      40:	4987a783          	lw	a5,1176(a5) # 5498 <LEDS>
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
      6c:	ff010113          	addi	sp,sp,-16 # fff0 <_files+0x9bcc>
      70:	000057b7          	lui	a5,0x5
      74:	00812423          	sw	s0,8(sp)
      78:	4787a403          	lw	s0,1144(a5) # 5478 <AUDIO>
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
      a4:	738080e7          	jalr	1848(ra) # 17d8 <memset>
      a8:	00042783          	lw	a5,0(s0)
      ac:	fef48ee3          	beq	s1,a5,a8 <clear_audio+0x3c>
      b0:	00042483          	lw	s1,0(s0)
      b4:	20000613          	li	a2,512
      b8:	00000593          	li	a1,0
      bc:	00048513          	mv	a0,s1
      c0:	00001097          	auipc	ra,0x1
      c4:	718080e7          	jalr	1816(ra) # 17d8 <memset>
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
      f8:	49c50513          	addi	a0,a0,1180 # 549c <LEDS+0x4>
      fc:	12112e23          	sw	ra,316(sp)
     100:	12812c23          	sw	s0,312(sp)
     104:	12912a23          	sw	s1,308(sp)
     108:	13312623          	sw	s3,300(sp)
     10c:	13412423          	sw	s4,296(sp)
     110:	13512223          	sw	s5,292(sp)
     114:	78092623          	sw	zero,1932(s2) # 578c <file_count>
     118:	00004097          	auipc	ra,0x4
     11c:	8fc080e7          	jalr	-1796(ra) # 3a14 <fl_opendir>
     120:	02050863          	beqz	a0,150 <scan_files+0x6c>
     124:	01f00993          	li	s3,31
     128:	00300a13          	li	s4,3
     12c:	02e00a93          	li	s5,46
     130:	01010593          	addi	a1,sp,16
     134:	00410513          	addi	a0,sp,4
     138:	00004097          	auipc	ra,0x4
     13c:	fa0080e7          	jalr	-96(ra) # 40d8 <fl_readdir>
     140:	02050a63          	beqz	a0,174 <scan_files+0x90>
     144:	00410513          	addi	a0,sp,4
     148:	00002097          	auipc	ra,0x2
     14c:	478080e7          	jalr	1144(ra) # 25c0 <fl_closedir>
     150:	13c12083          	lw	ra,316(sp)
     154:	13812403          	lw	s0,312(sp)
     158:	13412483          	lw	s1,308(sp)
     15c:	13012903          	lw	s2,304(sp)
     160:	12c12983          	lw	s3,300(sp)
     164:	12812a03          	lw	s4,296(sp)
     168:	12412a83          	lw	s5,292(sp)
     16c:	14010113          	addi	sp,sp,320
     170:	00008067          	ret
     174:	78c92403          	lw	s0,1932(s2)
     178:	fc89c6e3          	blt	s3,s0,144 <scan_files+0x60>
     17c:	11414783          	lbu	a5,276(sp)
     180:	fa0798e3          	bnez	a5,130 <scan_files+0x4c>
     184:	01010513          	addi	a0,sp,16
     188:	00001097          	auipc	ra,0x1
     18c:	690080e7          	jalr	1680(ra) # 1818 <strlen>
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
     1dc:	7bc78793          	addi	a5,a5,1980 # 57bc <files>
     1e0:	00f484b3          	add	s1,s1,a5
     1e4:	03f00613          	li	a2,63
     1e8:	01010593          	addi	a1,sp,16
     1ec:	00048513          	mv	a0,s1
     1f0:	00140413          	addi	s0,s0,1
     1f4:	00001097          	auipc	ra,0x1
     1f8:	684080e7          	jalr	1668(ra) # 1878 <strncpy>
     1fc:	02048fa3          	sb	zero,63(s1)
     200:	78892623          	sw	s0,1932(s2)
     204:	f2dff06f          	j	130 <scan_files+0x4c>

00000208 <clear_screen>:
     208:	000057b7          	lui	a5,0x5
     20c:	4807a783          	lw	a5,1152(a5) # 5480 <RGBSEL>
     210:	ff010113          	addi	sp,sp,-16
     214:	00812423          	sw	s0,8(sp)
     218:	00912223          	sw	s1,4(sp)
     21c:	01212023          	sw	s2,0(sp)
     220:	00112623          	sw	ra,12(sp)
     224:	00000413          	li	s0,0
     228:	00078913          	mv	s2,a5
     22c:	00300493          	li	s1,3
     230:	00892023          	sw	s0,0(s2)
     234:	00002097          	auipc	ra,0x2
     238:	8a8080e7          	jalr	-1880(ra) # 1adc <display_framebuffer>
     23c:	00004637          	lui	a2,0x4
     240:	00000593          	li	a1,0
     244:	00140413          	addi	s0,s0,1
     248:	00001097          	auipc	ra,0x1
     24c:	590080e7          	jalr	1424(ra) # 17d8 <memset>
     250:	fe9410e3          	bne	s0,s1,230 <clear_screen+0x28>
     254:	00812403          	lw	s0,8(sp)
     258:	00c12083          	lw	ra,12(sp)
     25c:	00412483          	lw	s1,4(sp)
     260:	00012903          	lw	s2,0(sp)
     264:	01010113          	addi	sp,sp,16
     268:	00002317          	auipc	t1,0x2
     26c:	a1830067          	jr	-1512(t1) # 1c80 <display_refresh>

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
     2d8:	4807a783          	lw	a5,1152(a5) # 5480 <RGBSEL>
     2dc:	00000413          	li	s0,0
     2e0:	00100a13          	li	s4,1
     2e4:	00078a93          	mv	s5,a5
     2e8:	08000993          	li	s3,128
     2ec:	00300913          	li	s2,3
     2f0:	008aa023          	sw	s0,0(s5)
     2f4:	00001097          	auipc	ra,0x1
     2f8:	7e8080e7          	jalr	2024(ra) # 1adc <display_framebuffer>
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
     38c:	09c080e7          	jalr	156(ra) # 2424 <fl_fseek>
     390:	00040513          	mv	a0,s0
     394:	00002097          	auipc	ra,0x2
     398:	204080e7          	jalr	516(ra) # 2598 <fl_ftell>
     39c:	00050493          	mv	s1,a0
     3a0:	00000613          	li	a2,0
     3a4:	00000593          	li	a1,0
     3a8:	00040513          	mv	a0,s0
     3ac:	00002097          	auipc	ra,0x2
     3b0:	078080e7          	jalr	120(ra) # 2424 <fl_fseek>
     3b4:	000107b7          	lui	a5,0x10
     3b8:	06f4c663          	blt	s1,a5,424 <render_image_stream.constprop.0+0xc8>
     3bc:	00000493          	li	s1,0
     3c0:	08000913          	li	s2,128
     3c4:	00040693          	mv	a3,s0
     3c8:	20000613          	li	a2,512
     3cc:	00100593          	li	a1,1
     3d0:	00010513          	mv	a0,sp
     3d4:	00004097          	auipc	ra,0x4
     3d8:	6cc080e7          	jalr	1740(ra) # 4aa0 <fl_fread>
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
     448:	65c080e7          	jalr	1628(ra) # 4aa0 <fl_fread>
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
     480:	4807a783          	lw	a5,1152(a5) # 5480 <RGBSEL>
     484:	00000493          	li	s1,0
     488:	00300993          	li	s3,3
     48c:	00078a93          	mv	s5,a5
     490:	00040693          	mv	a3,s0
     494:	08000613          	li	a2,128
     498:	00100593          	li	a1,1
     49c:	00010513          	mv	a0,sp
     4a0:	00004097          	auipc	ra,0x4
     4a4:	600080e7          	jalr	1536(ra) # 4aa0 <fl_fread>
     4a8:	08000793          	li	a5,128
     4ac:	f4f51ae3          	bne	a0,a5,400 <render_image_stream.constprop.0+0xa4>
     4b0:	00000913          	li	s2,0
     4b4:	08000a13          	li	s4,128
     4b8:	012aa023          	sw	s2,0(s5)
     4bc:	00001097          	auipc	ra,0x1
     4c0:	620080e7          	jalr	1568(ra) # 1adc <display_framebuffer>
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
     4fc:	4987a783          	lw	a5,1176(a5) # 5498 <LEDS>
     500:	f1010113          	addi	sp,sp,-240
     504:	0e112623          	sw	ra,236(sp)
     508:	0e812423          	sw	s0,232(sp)
     50c:	0e912223          	sw	s1,228(sp)
     510:	0f212023          	sw	s2,224(sp)
     514:	0d412c23          	sw	s4,216(sp)
     518:	0d312e23          	sw	s3,220(sp)
     51c:	0d512a23          	sw	s5,212(sp)
     520:	0d612823          	sw	s6,208(sp)
     524:	0d712623          	sw	s7,204(sp)
     528:	0d812423          	sw	s8,200(sp)
     52c:	0d912223          	sw	s9,196(sp)
     530:	0da12023          	sw	s10,192(sp)
     534:	0bb12e23          	sw	s11,188(sp)
     538:	0007a023          	sw	zero,0(a5)
     53c:	00005437          	lui	s0,0x5
     540:	000057b7          	lui	a5,0x5
     544:	4847aa03          	lw	s4,1156(a5) # 5484 <VOLUME>
     548:	44c42783          	lw	a5,1100(s0) # 544c <g_volume>
     54c:	00005737          	lui	a4,0x5
     550:	00001937          	lui	s2,0x1
     554:	00fa2023          	sw	a5,0(s4)
     558:	000027b7          	lui	a5,0x2
     55c:	b1078793          	addi	a5,a5,-1264 # 1b10 <display_putchar>
     560:	7af72023          	sw	a5,1952(a4) # 57a0 <f_putchar>
     564:	00001097          	auipc	ra,0x1
     568:	458080e7          	jalr	1112(ra) # 19bc <oled_init>
     56c:	00001097          	auipc	ra,0x1
     570:	45c080e7          	jalr	1116(ra) # 19c8 <oled_fullscreen>
     574:	00000513          	li	a0,0
     578:	00001097          	auipc	ra,0x1
     57c:	4e8080e7          	jalr	1256(ra) # 1a60 <oled_clear>
     580:	00000593          	li	a1,0
     584:	00000513          	li	a0,0
     588:	00001097          	auipc	ra,0x1
     58c:	560080e7          	jalr	1376(ra) # 1ae8 <display_set_cursor>
     590:	00000593          	li	a1,0
     594:	0ff00513          	li	a0,255
     598:	00001097          	auipc	ra,0x1
     59c:	564080e7          	jalr	1380(ra) # 1afc <display_set_front_back_color>
     5a0:	00005537          	lui	a0,0x5
     5a4:	4a450513          	addi	a0,a0,1188 # 54a4 <LEDS+0xc>
     5a8:	00002097          	auipc	ra,0x2
     5ac:	844080e7          	jalr	-1980(ra) # 1dec <printf>
     5b0:	00001097          	auipc	ra,0x1
     5b4:	6d0080e7          	jalr	1744(ra) # 1c80 <display_refresh>
     5b8:	000014b7          	lui	s1,0x1
     5bc:	00001097          	auipc	ra,0x1
     5c0:	f44080e7          	jalr	-188(ra) # 1500 <sdcard_init>
     5c4:	00002097          	auipc	ra,0x2
     5c8:	df0080e7          	jalr	-528(ra) # 23b4 <fl_init>
     5cc:	71c90593          	addi	a1,s2,1820 # 171c <sdcard_writesector>
     5d0:	6c848513          	addi	a0,s1,1736 # 16c8 <sdcard_readsector>
     5d4:	00003097          	auipc	ra,0x3
     5d8:	e14080e7          	jalr	-492(ra) # 33e8 <fl_attach_media>
     5dc:	fe0518e3          	bnez	a0,5cc <main+0xd4>
     5e0:	00000097          	auipc	ra,0x0
     5e4:	a8c080e7          	jalr	-1396(ra) # 6c <clear_audio>
     5e8:	00005537          	lui	a0,0x5
     5ec:	4b450513          	addi	a0,a0,1204 # 54b4 <LEDS+0x1c>
     5f0:	00001097          	auipc	ra,0x1
     5f4:	7fc080e7          	jalr	2044(ra) # 1dec <printf>
     5f8:	00001097          	auipc	ra,0x1
     5fc:	688080e7          	jalr	1672(ra) # 1c80 <display_refresh>
     600:	00000097          	auipc	ra,0x0
     604:	ae4080e7          	jalr	-1308(ra) # e4 <scan_files>
     608:	000057b7          	lui	a5,0x5
     60c:	4887a783          	lw	a5,1160(a5) # 5488 <BUTTONS>
     610:	00000913          	li	s2,0
     614:	00005c37          	lui	s8,0x5
     618:	0007a483          	lw	s1,0(a5)
     61c:	00f12023          	sw	a5,0(sp)
     620:	000057b7          	lui	a5,0x5
     624:	4787a783          	lw	a5,1144(a5) # 5478 <AUDIO>
     628:	01a4f493          	andi	s1,s1,26
     62c:	00f12423          	sw	a5,8(sp)
     630:	00000097          	auipc	ra,0x0
     634:	bd8080e7          	jalr	-1064(ra) # 208 <clear_screen>
     638:	00000593          	li	a1,0
     63c:	00000513          	li	a0,0
     640:	00001097          	auipc	ra,0x1
     644:	4a8080e7          	jalr	1192(ra) # 1ae8 <display_set_cursor>
     648:	0ff00593          	li	a1,255
     64c:	00000513          	li	a0,0
     650:	00001097          	auipc	ra,0x1
     654:	4ac080e7          	jalr	1196(ra) # 1afc <display_set_front_back_color>
     658:	00005537          	lui	a0,0x5
     65c:	4b850513          	addi	a0,a0,1208 # 54b8 <LEDS+0x20>
     660:	00001097          	auipc	ra,0x1
     664:	78c080e7          	jalr	1932(ra) # 1dec <printf>
     668:	00000593          	li	a1,0
     66c:	0ff00513          	li	a0,255
     670:	00001097          	auipc	ra,0x1
     674:	48c080e7          	jalr	1164(ra) # 1afc <display_set_front_back_color>
     678:	000059b7          	lui	s3,0x5
     67c:	78c9a783          	lw	a5,1932(s3) # 578c <file_count>
     680:	04078863          	beqz	a5,6d0 <main+0x1d8>
     684:	000057b7          	lui	a5,0x5
     688:	7bc78b13          	addi	s6,a5,1980 # 57bc <files>
     68c:	00000a93          	li	s5,0
     690:	78c9a783          	lw	a5,1932(s3)
     694:	04fad663          	bge	s5,a5,6e0 <main+0x1e8>
     698:	17591063          	bne	s2,s5,7f8 <main+0x300>
     69c:	0ff00593          	li	a1,255
     6a0:	00000513          	li	a0,0
     6a4:	00001097          	auipc	ra,0x1
     6a8:	458080e7          	jalr	1112(ra) # 1afc <display_set_front_back_color>
     6ac:	000057b7          	lui	a5,0x5
     6b0:	000b0613          	mv	a2,s6
     6b4:	000a8593          	mv	a1,s5
     6b8:	4e878513          	addi	a0,a5,1256 # 54e8 <LEDS+0x50>
     6bc:	00001097          	auipc	ra,0x1
     6c0:	730080e7          	jalr	1840(ra) # 1dec <printf>
     6c4:	001a8a93          	addi	s5,s5,1
     6c8:	040b0b13          	addi	s6,s6,64
     6cc:	fc5ff06f          	j	690 <main+0x198>
     6d0:	00005537          	lui	a0,0x5
     6d4:	4d450513          	addi	a0,a0,1236 # 54d4 <LEDS+0x3c>
     6d8:	00001097          	auipc	ra,0x1
     6dc:	714080e7          	jalr	1812(ra) # 1dec <printf>
     6e0:	00001097          	auipc	ra,0x1
     6e4:	5a0080e7          	jalr	1440(ra) # 1c80 <display_refresh>
     6e8:	00012783          	lw	a5,0(sp)
     6ec:	fff4c493          	not	s1,s1
     6f0:	0007a783          	lw	a5,0(a5)
     6f4:	01a7f793          	andi	a5,a5,26
     6f8:	00f4f4b3          	and	s1,s1,a5
     6fc:	00f12223          	sw	a5,4(sp)
     700:	0084f793          	andi	a5,s1,8
     704:	02078063          	beqz	a5,724 <main+0x22c>
     708:	78c9a583          	lw	a1,1932(s3)
     70c:	00058c63          	beqz	a1,724 <main+0x22c>
     710:	fff90513          	addi	a0,s2,-1
     714:	00b50533          	add	a0,a0,a1
     718:	00001097          	auipc	ra,0x1
     71c:	090080e7          	jalr	144(ra) # 17a8 <__modsi3>
     720:	00050913          	mv	s2,a0
     724:	0104f793          	andi	a5,s1,16
     728:	00078e63          	beqz	a5,744 <main+0x24c>
     72c:	78c9a583          	lw	a1,1932(s3)
     730:	00058a63          	beqz	a1,744 <main+0x24c>
     734:	00190513          	addi	a0,s2,1
     738:	00001097          	auipc	ra,0x1
     73c:	070080e7          	jalr	112(ra) # 17a8 <__modsi3>
     740:	00050913          	mv	s2,a0
     744:	0024f493          	andi	s1,s1,2
     748:	3a048063          	beqz	s1,ae8 <main+0x5f0>
     74c:	78c9a783          	lw	a5,1932(s3)
     750:	38f05c63          	blez	a5,ae8 <main+0x5f0>
     754:	000057b7          	lui	a5,0x5
     758:	7bc78793          	addi	a5,a5,1980 # 57bc <files>
     75c:	00691493          	slli	s1,s2,0x6
     760:	00f484b3          	add	s1,s1,a5
     764:	737577b7          	lui	a5,0x73757
     768:	d2f78793          	addi	a5,a5,-721 # 73756d2f <__stacktop+0x73746d2f>
     76c:	00f12c23          	sw	a5,24(sp)
     770:	000067b7          	lui	a5,0x6
     774:	36978793          	addi	a5,a5,873 # 6369 <_fs+0x3ad>
     778:	00f11e23          	sh	a5,28(sp)
     77c:	02f00793          	li	a5,47
     780:	00f10f23          	sb	a5,30(sp)
     784:	04900693          	li	a3,73
     788:	00700793          	li	a5,7
     78c:	00f48733          	add	a4,s1,a5
     790:	ff974703          	lbu	a4,-7(a4)
     794:	00070663          	beqz	a4,7a0 <main+0x2a8>
     798:	06d79663          	bne	a5,a3,804 <main+0x30c>
     79c:	04900793          	li	a5,73
     7a0:	01010713          	addi	a4,sp,16
     7a4:	0a078793          	addi	a5,a5,160
     7a8:	00e787b3          	add	a5,a5,a4
     7ac:	4f0c0593          	addi	a1,s8,1264 # 54f0 <LEDS+0x58>
     7b0:	01810513          	addi	a0,sp,24
     7b4:	f6078423          	sb	zero,-152(a5)
     7b8:	00005097          	auipc	ra,0x5
     7bc:	8c0080e7          	jalr	-1856(ra) # 5078 <fl_fopen>
     7c0:	00050993          	mv	s3,a0
     7c4:	04051a63          	bnez	a0,818 <main+0x320>
     7c8:	00000593          	li	a1,0
     7cc:	0ff00513          	li	a0,255
     7d0:	00001097          	auipc	ra,0x1
     7d4:	32c080e7          	jalr	812(ra) # 1afc <display_set_front_back_color>
     7d8:	00005537          	lui	a0,0x5
     7dc:	00048593          	mv	a1,s1
     7e0:	4f450513          	addi	a0,a0,1268 # 54f4 <LEDS+0x5c>
     7e4:	00001097          	auipc	ra,0x1
     7e8:	608080e7          	jalr	1544(ra) # 1dec <printf>
     7ec:	00001097          	auipc	ra,0x1
     7f0:	494080e7          	jalr	1172(ra) # 1c80 <display_refresh>
     7f4:	2f40006f          	j	ae8 <main+0x5f0>
     7f8:	00000593          	li	a1,0
     7fc:	0ff00513          	li	a0,255
     800:	ea5ff06f          	j	6a4 <main+0x1ac>
     804:	01810613          	addi	a2,sp,24
     808:	00f60633          	add	a2,a2,a5
     80c:	00e60023          	sb	a4,0(a2) # 4000 <fatfs_list_directory_next+0x16c>
     810:	00178793          	addi	a5,a5,1
     814:	f79ff06f          	j	78c <main+0x294>
     818:	0ff00593          	li	a1,255
     81c:	00000513          	li	a0,0
     820:	00001097          	auipc	ra,0x1
     824:	2dc080e7          	jalr	732(ra) # 1afc <display_set_front_back_color>
     828:	00005537          	lui	a0,0x5
     82c:	00048593          	mv	a1,s1
     830:	50450513          	addi	a0,a0,1284 # 5504 <LEDS+0x6c>
     834:	00001097          	auipc	ra,0x1
     838:	5b8080e7          	jalr	1464(ra) # 1dec <printf>
     83c:	00001097          	auipc	ra,0x1
     840:	444080e7          	jalr	1092(ra) # 1c80 <display_refresh>
     844:	676d77b7          	lui	a5,0x676d7
     848:	92f78793          	addi	a5,a5,-1745 # 676d692f <__stacktop+0x676c692f>
     84c:	06f12223          	sw	a5,100(sp)
     850:	02f00793          	li	a5,47
     854:	06f10423          	sb	a5,104(sp)
     858:	04400693          	li	a3,68
     85c:	00500793          	li	a5,5
     860:	00f48733          	add	a4,s1,a5
     864:	ffb74703          	lbu	a4,-5(a4)
     868:	00070663          	beqz	a4,874 <main+0x37c>
     86c:	12d79a63          	bne	a5,a3,9a0 <main+0x4a8>
     870:	04400793          	li	a5,68
     874:	01010713          	addi	a4,sp,16
     878:	0a078793          	addi	a5,a5,160
     87c:	00e787b3          	add	a5,a5,a4
     880:	05f00713          	li	a4,95
     884:	fae78823          	sb	a4,-80(a5)
     888:	06900713          	li	a4,105
     88c:	fae788a3          	sb	a4,-79(a5)
     890:	06d00713          	li	a4,109
     894:	fae78923          	sb	a4,-78(a5)
     898:	06700713          	li	a4,103
     89c:	fae789a3          	sb	a4,-77(a5)
     8a0:	02e00713          	li	a4,46
     8a4:	fae78a23          	sb	a4,-76(a5)
     8a8:	07200713          	li	a4,114
     8ac:	fae78aa3          	sb	a4,-75(a5)
     8b0:	06100713          	li	a4,97
     8b4:	fae78b23          	sb	a4,-74(a5)
     8b8:	4f0c0593          	addi	a1,s8,1264
     8bc:	07700713          	li	a4,119
     8c0:	06410513          	addi	a0,sp,100
     8c4:	fae78ba3          	sb	a4,-73(a5)
     8c8:	fa078c23          	sb	zero,-72(a5)
     8cc:	00004097          	auipc	ra,0x4
     8d0:	7ac080e7          	jalr	1964(ra) # 5078 <fl_fopen>
     8d4:	00051e63          	bnez	a0,8f0 <main+0x3f8>
     8d8:	00005537          	lui	a0,0x5
     8dc:	4f0c0593          	addi	a1,s8,1264
     8e0:	51850513          	addi	a0,a0,1304 # 5518 <LEDS+0x80>
     8e4:	00004097          	auipc	ra,0x4
     8e8:	794080e7          	jalr	1940(ra) # 5078 <fl_fopen>
     8ec:	02050263          	beqz	a0,910 <main+0x418>
     8f0:	00a12623          	sw	a0,12(sp)
     8f4:	00000097          	auipc	ra,0x0
     8f8:	a68080e7          	jalr	-1432(ra) # 35c <render_image_stream.constprop.0>
     8fc:	00c12503          	lw	a0,12(sp)
     900:	00004097          	auipc	ra,0x4
     904:	0c0080e7          	jalr	192(ra) # 49c0 <fl_fclose>
     908:	00001097          	auipc	ra,0x1
     90c:	378080e7          	jalr	888(ra) # 1c80 <display_refresh>
     910:	fffff097          	auipc	ra,0xfffff
     914:	75c080e7          	jalr	1884(ra) # 6c <clear_audio>
     918:	44c42503          	lw	a0,1100(s0)
     91c:	00000a93          	li	s5,0
     920:	00000b13          	li	s6,0
     924:	00aa2023          	sw	a0,0(s4)
     928:	fffff097          	auipc	ra,0xfffff
     92c:	6f4080e7          	jalr	1780(ra) # 1c <set_volume_leds>
     930:	00012783          	lw	a5,0(sp)
     934:	00000d13          	li	s10,0
     938:	00000d93          	li	s11,0
     93c:	0007a483          	lw	s1,0(a5)
     940:	01a4f493          	andi	s1,s1,26
     944:	00812783          	lw	a5,8(sp)
     948:	00098693          	mv	a3,s3
     94c:	20000613          	li	a2,512
     950:	0007ac83          	lw	s9,0(a5)
     954:	00100593          	li	a1,1
     958:	000c8513          	mv	a0,s9
     95c:	00004097          	auipc	ra,0x4
     960:	144080e7          	jalr	324(ra) # 4aa0 <fl_fread>
     964:	06a04863          	bgtz	a0,9d4 <main+0x4dc>
     968:	00098513          	mv	a0,s3
     96c:	00004097          	auipc	ra,0x4
     970:	054080e7          	jalr	84(ra) # 49c0 <fl_fclose>
     974:	fffff097          	auipc	ra,0xfffff
     978:	6f8080e7          	jalr	1784(ra) # 6c <clear_audio>
     97c:	00000593          	li	a1,0
     980:	0ff00513          	li	a0,255
     984:	00001097          	auipc	ra,0x1
     988:	178080e7          	jalr	376(ra) # 1afc <display_set_front_back_color>
     98c:	00005537          	lui	a0,0x5
     990:	52850513          	addi	a0,a0,1320 # 5528 <LEDS+0x90>
     994:	00001097          	auipc	ra,0x1
     998:	458080e7          	jalr	1112(ra) # 1dec <printf>
     99c:	e51ff06f          	j	7ec <main+0x2f4>
     9a0:	06410613          	addi	a2,sp,100
     9a4:	00f60633          	add	a2,a2,a5
     9a8:	00e60023          	sb	a4,0(a2)
     9ac:	00178793          	addi	a5,a5,1
     9b0:	eb1ff06f          	j	860 <main+0x368>
     9b4:	00000a93          	li	s5,0
     9b8:	000b8d13          	mv	s10,s7
     9bc:	000c8d93          	mv	s11,s9
     9c0:	f85ff06f          	j	944 <main+0x44c>
     9c4:	019507b3          	add	a5,a0,s9
     9c8:	f8000713          	li	a4,-128
     9cc:	00e78023          	sb	a4,0(a5)
     9d0:	00150513          	addi	a0,a0,1
     9d4:	1ff00793          	li	a5,511
     9d8:	fea7d6e3          	bge	a5,a0,9c4 <main+0x4cc>
     9dc:	00812783          	lw	a5,8(sp)
     9e0:	0007a783          	lw	a5,0(a5)
     9e4:	06fc8c63          	beq	s9,a5,a5c <main+0x564>
     9e8:	0084fc93          	andi	s9,s1,8
     9ec:	120c8a63          	beqz	s9,b20 <main+0x628>
     9f0:	000017b7          	lui	a5,0x1
     9f4:	200d8c93          	addi	s9,s11,512
     9f8:	f9f78793          	addi	a5,a5,-97 # f9f <sdcard_send+0x40b>
     9fc:	0197da63          	bge	a5,s9,a10 <main+0x518>
     a00:	200b0b13          	addi	s6,s6,512
     a04:	31f00b93          	li	s7,799
     a08:	00700d93          	li	s11,7
     a0c:	0f6bc663          	blt	s7,s6,af8 <main+0x600>
     a10:	0104fb93          	andi	s7,s1,16
     a14:	fa0b80e3          	beqz	s7,9b4 <main+0x4bc>
     a18:	000017b7          	lui	a5,0x1
     a1c:	200d0b93          	addi	s7,s10,512
     a20:	f9f78793          	addi	a5,a5,-97 # f9f <sdcard_send+0x40b>
     a24:	f977dae3          	bge	a5,s7,9b8 <main+0x4c0>
     a28:	200a8a93          	addi	s5,s5,512
     a2c:	31f00d13          	li	s10,799
     a30:	f95d54e3          	bge	s10,s5,9b8 <main+0x4c0>
     a34:	44c42783          	lw	a5,1100(s0)
     a38:	00f05663          	blez	a5,a44 <main+0x54c>
     a3c:	fff78793          	addi	a5,a5,-1
     a40:	44f42623          	sw	a5,1100(s0)
     a44:	44c42503          	lw	a0,1100(s0)
     a48:	ce0a8a93          	addi	s5,s5,-800
     a4c:	00aa2023          	sw	a0,0(s4)
     a50:	fffff097          	auipc	ra,0xfffff
     a54:	5cc080e7          	jalr	1484(ra) # 1c <set_volume_leds>
     a58:	fd9ff06f          	j	a30 <main+0x538>
     a5c:	00012783          	lw	a5,0(sp)
     a60:	fff4c493          	not	s1,s1
     a64:	0007ab83          	lw	s7,0(a5)
     a68:	01abfb93          	andi	s7,s7,26
     a6c:	0174f4b3          	and	s1,s1,s7
     a70:	0084f793          	andi	a5,s1,8
     a74:	02078463          	beqz	a5,a9c <main+0x5a4>
     a78:	44c42783          	lw	a5,1100(s0)
     a7c:	00700713          	li	a4,7
     a80:	00f74663          	blt	a4,a5,a8c <main+0x594>
     a84:	00178793          	addi	a5,a5,1
     a88:	44f42623          	sw	a5,1100(s0)
     a8c:	44c42503          	lw	a0,1100(s0)
     a90:	00aa2023          	sw	a0,0(s4)
     a94:	fffff097          	auipc	ra,0xfffff
     a98:	588080e7          	jalr	1416(ra) # 1c <set_volume_leds>
     a9c:	0104f793          	andi	a5,s1,16
     aa0:	02078263          	beqz	a5,ac4 <main+0x5cc>
     aa4:	44c42783          	lw	a5,1100(s0)
     aa8:	00f05663          	blez	a5,ab4 <main+0x5bc>
     aac:	fff78793          	addi	a5,a5,-1
     ab0:	44f42623          	sw	a5,1100(s0)
     ab4:	44c42503          	lw	a0,1100(s0)
     ab8:	00aa2023          	sw	a0,0(s4)
     abc:	fffff097          	auipc	ra,0xfffff
     ac0:	560080e7          	jalr	1376(ra) # 1c <set_volume_leds>
     ac4:	0024f493          	andi	s1,s1,2
     ac8:	02048463          	beqz	s1,af0 <main+0x5f8>
     acc:	00098513          	mv	a0,s3
     ad0:	00004097          	auipc	ra,0x4
     ad4:	ef0080e7          	jalr	-272(ra) # 49c0 <fl_fclose>
     ad8:	fffff097          	auipc	ra,0xfffff
     adc:	594080e7          	jalr	1428(ra) # 6c <clear_audio>
     ae0:	fffff097          	auipc	ra,0xfffff
     ae4:	728080e7          	jalr	1832(ra) # 208 <clear_screen>
     ae8:	00412483          	lw	s1,4(sp)
     aec:	b4dff06f          	j	638 <main+0x140>
     af0:	000b8493          	mv	s1,s7
     af4:	ee9ff06f          	j	9dc <main+0x4e4>
     af8:	44c42783          	lw	a5,1100(s0)
     afc:	00fdc663          	blt	s11,a5,b08 <main+0x610>
     b00:	00178793          	addi	a5,a5,1
     b04:	44f42623          	sw	a5,1100(s0)
     b08:	44c42503          	lw	a0,1100(s0)
     b0c:	ce0b0b13          	addi	s6,s6,-800
     b10:	00aa2023          	sw	a0,0(s4)
     b14:	fffff097          	auipc	ra,0xfffff
     b18:	508080e7          	jalr	1288(ra) # 1c <set_volume_leds>
     b1c:	ef1ff06f          	j	a0c <main+0x514>
     b20:	00000b13          	li	s6,0
     b24:	eedff06f          	j	a10 <main+0x518>

00000b28 <sdcard_ponder>:
     b28:	fe010113          	addi	sp,sp,-32
     b2c:	00812e23          	sw	s0,28(sp)
     b30:	02010413          	addi	s0,sp,32
     b34:	fe042623          	sw	zero,-20(s0)
     b38:	fe042423          	sw	zero,-24(s0)
     b3c:	0380006f          	j	b74 <sdcard_ponder+0x4c>
     b40:	000057b7          	lui	a5,0x5
     b44:	48c7a783          	lw	a5,1164(a5) # 548c <SDCARD>
     b48:	fec42703          	lw	a4,-20(s0)
     b4c:	00676713          	ori	a4,a4,6
     b50:	00e7a023          	sw	a4,0(a5)
     b54:	00100713          	li	a4,1
     b58:	fec42783          	lw	a5,-20(s0)
     b5c:	40f707b3          	sub	a5,a4,a5
     b60:	fef42623          	sw	a5,-20(s0)
     b64:	00000013          	nop
     b68:	fe842783          	lw	a5,-24(s0)
     b6c:	00178793          	addi	a5,a5,1
     b70:	fef42423          	sw	a5,-24(s0)
     b74:	fe842703          	lw	a4,-24(s0)
     b78:	00f00793          	li	a5,15
     b7c:	fce7d2e3          	bge	a5,a4,b40 <sdcard_ponder+0x18>
     b80:	00000013          	nop
     b84:	00000013          	nop
     b88:	01c12403          	lw	s0,28(sp)
     b8c:	02010113          	addi	sp,sp,32
     b90:	00008067          	ret

00000b94 <sdcard_send>:
     b94:	fd010113          	addi	sp,sp,-48
     b98:	02112623          	sw	ra,44(sp)
     b9c:	02812423          	sw	s0,40(sp)
     ba0:	03010413          	addi	s0,sp,48
     ba4:	fca42e23          	sw	a0,-36(s0)
     ba8:	fe042623          	sw	zero,-20(s0)
     bac:	fe042423          	sw	zero,-24(s0)
     bb0:	fdc42783          	lw	a5,-36(s0)
     bb4:	fef42223          	sw	a5,-28(s0)
     bb8:	fe442783          	lw	a5,-28(s0)
     bbc:	4077d793          	srai	a5,a5,0x7
     bc0:	0017f793          	andi	a5,a5,1
     bc4:	fef42423          	sw	a5,-24(s0)
     bc8:	fec42783          	lw	a5,-20(s0)
     bcc:	fe442703          	lw	a4,-28(s0)
     bd0:	00f717b3          	sll	a5,a4,a5
     bd4:	fef42223          	sw	a5,-28(s0)
     bd8:	fe842783          	lw	a5,-24(s0)
     bdc:	00179693          	slli	a3,a5,0x1
     be0:	000057b7          	lui	a5,0x5
     be4:	48c7a783          	lw	a5,1164(a5) # 548c <SDCARD>
     be8:	fec42703          	lw	a4,-20(s0)
     bec:	00e6e733          	or	a4,a3,a4
     bf0:	00e7a023          	sw	a4,0(a5)
     bf4:	00100713          	li	a4,1
     bf8:	fec42783          	lw	a5,-20(s0)
     bfc:	40f707b3          	sub	a5,a4,a5
     c00:	fef42623          	sw	a5,-20(s0)
     c04:	fe442783          	lw	a5,-28(s0)
     c08:	4077d793          	srai	a5,a5,0x7
     c0c:	0017f793          	andi	a5,a5,1
     c10:	fef42423          	sw	a5,-24(s0)
     c14:	fec42783          	lw	a5,-20(s0)
     c18:	fe442703          	lw	a4,-28(s0)
     c1c:	00f717b3          	sll	a5,a4,a5
     c20:	fef42223          	sw	a5,-28(s0)
     c24:	fe842783          	lw	a5,-24(s0)
     c28:	00179693          	slli	a3,a5,0x1
     c2c:	000057b7          	lui	a5,0x5
     c30:	48c7a783          	lw	a5,1164(a5) # 548c <SDCARD>
     c34:	fec42703          	lw	a4,-20(s0)
     c38:	00e6e733          	or	a4,a3,a4
     c3c:	00e7a023          	sw	a4,0(a5)
     c40:	00100713          	li	a4,1
     c44:	fec42783          	lw	a5,-20(s0)
     c48:	40f707b3          	sub	a5,a4,a5
     c4c:	fef42623          	sw	a5,-20(s0)
     c50:	fe442783          	lw	a5,-28(s0)
     c54:	4077d793          	srai	a5,a5,0x7
     c58:	0017f793          	andi	a5,a5,1
     c5c:	fef42423          	sw	a5,-24(s0)
     c60:	fec42783          	lw	a5,-20(s0)
     c64:	fe442703          	lw	a4,-28(s0)
     c68:	00f717b3          	sll	a5,a4,a5
     c6c:	fef42223          	sw	a5,-28(s0)
     c70:	fe842783          	lw	a5,-24(s0)
     c74:	00179693          	slli	a3,a5,0x1
     c78:	000057b7          	lui	a5,0x5
     c7c:	48c7a783          	lw	a5,1164(a5) # 548c <SDCARD>
     c80:	fec42703          	lw	a4,-20(s0)
     c84:	00e6e733          	or	a4,a3,a4
     c88:	00e7a023          	sw	a4,0(a5)
     c8c:	00100713          	li	a4,1
     c90:	fec42783          	lw	a5,-20(s0)
     c94:	40f707b3          	sub	a5,a4,a5
     c98:	fef42623          	sw	a5,-20(s0)
     c9c:	fe442783          	lw	a5,-28(s0)
     ca0:	4077d793          	srai	a5,a5,0x7
     ca4:	0017f793          	andi	a5,a5,1
     ca8:	fef42423          	sw	a5,-24(s0)
     cac:	fec42783          	lw	a5,-20(s0)
     cb0:	fe442703          	lw	a4,-28(s0)
     cb4:	00f717b3          	sll	a5,a4,a5
     cb8:	fef42223          	sw	a5,-28(s0)
     cbc:	fe842783          	lw	a5,-24(s0)
     cc0:	00179693          	slli	a3,a5,0x1
     cc4:	000057b7          	lui	a5,0x5
     cc8:	48c7a783          	lw	a5,1164(a5) # 548c <SDCARD>
     ccc:	fec42703          	lw	a4,-20(s0)
     cd0:	00e6e733          	or	a4,a3,a4
     cd4:	00e7a023          	sw	a4,0(a5)
     cd8:	00100713          	li	a4,1
     cdc:	fec42783          	lw	a5,-20(s0)
     ce0:	40f707b3          	sub	a5,a4,a5
     ce4:	fef42623          	sw	a5,-20(s0)
     ce8:	fe442783          	lw	a5,-28(s0)
     cec:	4077d793          	srai	a5,a5,0x7
     cf0:	0017f793          	andi	a5,a5,1
     cf4:	fef42423          	sw	a5,-24(s0)
     cf8:	fec42783          	lw	a5,-20(s0)
     cfc:	fe442703          	lw	a4,-28(s0)
     d00:	00f717b3          	sll	a5,a4,a5
     d04:	fef42223          	sw	a5,-28(s0)
     d08:	fe842783          	lw	a5,-24(s0)
     d0c:	00179693          	slli	a3,a5,0x1
     d10:	000057b7          	lui	a5,0x5
     d14:	48c7a783          	lw	a5,1164(a5) # 548c <SDCARD>
     d18:	fec42703          	lw	a4,-20(s0)
     d1c:	00e6e733          	or	a4,a3,a4
     d20:	00e7a023          	sw	a4,0(a5)
     d24:	00100713          	li	a4,1
     d28:	fec42783          	lw	a5,-20(s0)
     d2c:	40f707b3          	sub	a5,a4,a5
     d30:	fef42623          	sw	a5,-20(s0)
     d34:	fe442783          	lw	a5,-28(s0)
     d38:	4077d793          	srai	a5,a5,0x7
     d3c:	0017f793          	andi	a5,a5,1
     d40:	fef42423          	sw	a5,-24(s0)
     d44:	fec42783          	lw	a5,-20(s0)
     d48:	fe442703          	lw	a4,-28(s0)
     d4c:	00f717b3          	sll	a5,a4,a5
     d50:	fef42223          	sw	a5,-28(s0)
     d54:	fe842783          	lw	a5,-24(s0)
     d58:	00179693          	slli	a3,a5,0x1
     d5c:	000057b7          	lui	a5,0x5
     d60:	48c7a783          	lw	a5,1164(a5) # 548c <SDCARD>
     d64:	fec42703          	lw	a4,-20(s0)
     d68:	00e6e733          	or	a4,a3,a4
     d6c:	00e7a023          	sw	a4,0(a5)
     d70:	00100713          	li	a4,1
     d74:	fec42783          	lw	a5,-20(s0)
     d78:	40f707b3          	sub	a5,a4,a5
     d7c:	fef42623          	sw	a5,-20(s0)
     d80:	fe442783          	lw	a5,-28(s0)
     d84:	4077d793          	srai	a5,a5,0x7
     d88:	0017f793          	andi	a5,a5,1
     d8c:	fef42423          	sw	a5,-24(s0)
     d90:	fec42783          	lw	a5,-20(s0)
     d94:	fe442703          	lw	a4,-28(s0)
     d98:	00f717b3          	sll	a5,a4,a5
     d9c:	fef42223          	sw	a5,-28(s0)
     da0:	fe842783          	lw	a5,-24(s0)
     da4:	00179693          	slli	a3,a5,0x1
     da8:	000057b7          	lui	a5,0x5
     dac:	48c7a783          	lw	a5,1164(a5) # 548c <SDCARD>
     db0:	fec42703          	lw	a4,-20(s0)
     db4:	00e6e733          	or	a4,a3,a4
     db8:	00e7a023          	sw	a4,0(a5)
     dbc:	00100713          	li	a4,1
     dc0:	fec42783          	lw	a5,-20(s0)
     dc4:	40f707b3          	sub	a5,a4,a5
     dc8:	fef42623          	sw	a5,-20(s0)
     dcc:	fe442783          	lw	a5,-28(s0)
     dd0:	4077d793          	srai	a5,a5,0x7
     dd4:	0017f793          	andi	a5,a5,1
     dd8:	fef42423          	sw	a5,-24(s0)
     ddc:	fec42783          	lw	a5,-20(s0)
     de0:	fe442703          	lw	a4,-28(s0)
     de4:	00f717b3          	sll	a5,a4,a5
     de8:	fef42223          	sw	a5,-28(s0)
     dec:	fe842783          	lw	a5,-24(s0)
     df0:	00179693          	slli	a3,a5,0x1
     df4:	000057b7          	lui	a5,0x5
     df8:	48c7a783          	lw	a5,1164(a5) # 548c <SDCARD>
     dfc:	fec42703          	lw	a4,-20(s0)
     e00:	00e6e733          	or	a4,a3,a4
     e04:	00e7a023          	sw	a4,0(a5)
     e08:	00100713          	li	a4,1
     e0c:	fec42783          	lw	a5,-20(s0)
     e10:	40f707b3          	sub	a5,a4,a5
     e14:	fef42623          	sw	a5,-20(s0)
     e18:	fe442783          	lw	a5,-28(s0)
     e1c:	4077d793          	srai	a5,a5,0x7
     e20:	0017f793          	andi	a5,a5,1
     e24:	fef42423          	sw	a5,-24(s0)
     e28:	fec42783          	lw	a5,-20(s0)
     e2c:	fe442703          	lw	a4,-28(s0)
     e30:	00f717b3          	sll	a5,a4,a5
     e34:	fef42223          	sw	a5,-28(s0)
     e38:	fe842783          	lw	a5,-24(s0)
     e3c:	00179693          	slli	a3,a5,0x1
     e40:	000057b7          	lui	a5,0x5
     e44:	48c7a783          	lw	a5,1164(a5) # 548c <SDCARD>
     e48:	fec42703          	lw	a4,-20(s0)
     e4c:	00e6e733          	or	a4,a3,a4
     e50:	00e7a023          	sw	a4,0(a5)
     e54:	00100713          	li	a4,1
     e58:	fec42783          	lw	a5,-20(s0)
     e5c:	40f707b3          	sub	a5,a4,a5
     e60:	fef42623          	sw	a5,-20(s0)
     e64:	fe442783          	lw	a5,-28(s0)
     e68:	4077d793          	srai	a5,a5,0x7
     e6c:	0017f793          	andi	a5,a5,1
     e70:	fef42423          	sw	a5,-24(s0)
     e74:	fec42783          	lw	a5,-20(s0)
     e78:	fe442703          	lw	a4,-28(s0)
     e7c:	00f717b3          	sll	a5,a4,a5
     e80:	fef42223          	sw	a5,-28(s0)
     e84:	fe842783          	lw	a5,-24(s0)
     e88:	00179693          	slli	a3,a5,0x1
     e8c:	000057b7          	lui	a5,0x5
     e90:	48c7a783          	lw	a5,1164(a5) # 548c <SDCARD>
     e94:	fec42703          	lw	a4,-20(s0)
     e98:	00e6e733          	or	a4,a3,a4
     e9c:	00e7a023          	sw	a4,0(a5)
     ea0:	00100713          	li	a4,1
     ea4:	fec42783          	lw	a5,-20(s0)
     ea8:	40f707b3          	sub	a5,a4,a5
     eac:	fef42623          	sw	a5,-20(s0)
     eb0:	fe442783          	lw	a5,-28(s0)
     eb4:	4077d793          	srai	a5,a5,0x7
     eb8:	0017f793          	andi	a5,a5,1
     ebc:	fef42423          	sw	a5,-24(s0)
     ec0:	fec42783          	lw	a5,-20(s0)
     ec4:	fe442703          	lw	a4,-28(s0)
     ec8:	00f717b3          	sll	a5,a4,a5
     ecc:	fef42223          	sw	a5,-28(s0)
     ed0:	fe842783          	lw	a5,-24(s0)
     ed4:	00179693          	slli	a3,a5,0x1
     ed8:	000057b7          	lui	a5,0x5
     edc:	48c7a783          	lw	a5,1164(a5) # 548c <SDCARD>
     ee0:	fec42703          	lw	a4,-20(s0)
     ee4:	00e6e733          	or	a4,a3,a4
     ee8:	00e7a023          	sw	a4,0(a5)
     eec:	00100713          	li	a4,1
     ef0:	fec42783          	lw	a5,-20(s0)
     ef4:	40f707b3          	sub	a5,a4,a5
     ef8:	fef42623          	sw	a5,-20(s0)
     efc:	fe442783          	lw	a5,-28(s0)
     f00:	4077d793          	srai	a5,a5,0x7
     f04:	0017f793          	andi	a5,a5,1
     f08:	fef42423          	sw	a5,-24(s0)
     f0c:	fec42783          	lw	a5,-20(s0)
     f10:	fe442703          	lw	a4,-28(s0)
     f14:	00f717b3          	sll	a5,a4,a5
     f18:	fef42223          	sw	a5,-28(s0)
     f1c:	fe842783          	lw	a5,-24(s0)
     f20:	00179693          	slli	a3,a5,0x1
     f24:	000057b7          	lui	a5,0x5
     f28:	48c7a783          	lw	a5,1164(a5) # 548c <SDCARD>
     f2c:	fec42703          	lw	a4,-20(s0)
     f30:	00e6e733          	or	a4,a3,a4
     f34:	00e7a023          	sw	a4,0(a5)
     f38:	00100713          	li	a4,1
     f3c:	fec42783          	lw	a5,-20(s0)
     f40:	40f707b3          	sub	a5,a4,a5
     f44:	fef42623          	sw	a5,-20(s0)
     f48:	fe442783          	lw	a5,-28(s0)
     f4c:	4077d793          	srai	a5,a5,0x7
     f50:	0017f793          	andi	a5,a5,1
     f54:	fef42423          	sw	a5,-24(s0)
     f58:	fec42783          	lw	a5,-20(s0)
     f5c:	fe442703          	lw	a4,-28(s0)
     f60:	00f717b3          	sll	a5,a4,a5
     f64:	fef42223          	sw	a5,-28(s0)
     f68:	fe842783          	lw	a5,-24(s0)
     f6c:	00179693          	slli	a3,a5,0x1
     f70:	000057b7          	lui	a5,0x5
     f74:	48c7a783          	lw	a5,1164(a5) # 548c <SDCARD>
     f78:	fec42703          	lw	a4,-20(s0)
     f7c:	00e6e733          	or	a4,a3,a4
     f80:	00e7a023          	sw	a4,0(a5)
     f84:	00100713          	li	a4,1
     f88:	fec42783          	lw	a5,-20(s0)
     f8c:	40f707b3          	sub	a5,a4,a5
     f90:	fef42623          	sw	a5,-20(s0)
     f94:	fe442783          	lw	a5,-28(s0)
     f98:	4077d793          	srai	a5,a5,0x7
     f9c:	0017f793          	andi	a5,a5,1
     fa0:	fef42423          	sw	a5,-24(s0)
     fa4:	fec42783          	lw	a5,-20(s0)
     fa8:	fe442703          	lw	a4,-28(s0)
     fac:	00f717b3          	sll	a5,a4,a5
     fb0:	fef42223          	sw	a5,-28(s0)
     fb4:	fe842783          	lw	a5,-24(s0)
     fb8:	00179693          	slli	a3,a5,0x1
     fbc:	000057b7          	lui	a5,0x5
     fc0:	48c7a783          	lw	a5,1164(a5) # 548c <SDCARD>
     fc4:	fec42703          	lw	a4,-20(s0)
     fc8:	00e6e733          	or	a4,a3,a4
     fcc:	00e7a023          	sw	a4,0(a5)
     fd0:	00100713          	li	a4,1
     fd4:	fec42783          	lw	a5,-20(s0)
     fd8:	40f707b3          	sub	a5,a4,a5
     fdc:	fef42623          	sw	a5,-20(s0)
     fe0:	fe442783          	lw	a5,-28(s0)
     fe4:	4077d793          	srai	a5,a5,0x7
     fe8:	0017f793          	andi	a5,a5,1
     fec:	fef42423          	sw	a5,-24(s0)
     ff0:	fec42783          	lw	a5,-20(s0)
     ff4:	fe442703          	lw	a4,-28(s0)
     ff8:	00f717b3          	sll	a5,a4,a5
     ffc:	fef42223          	sw	a5,-28(s0)
    1000:	fe842783          	lw	a5,-24(s0)
    1004:	00179693          	slli	a3,a5,0x1
    1008:	000057b7          	lui	a5,0x5
    100c:	48c7a783          	lw	a5,1164(a5) # 548c <SDCARD>
    1010:	fec42703          	lw	a4,-20(s0)
    1014:	00e6e733          	or	a4,a3,a4
    1018:	00e7a023          	sw	a4,0(a5)
    101c:	00100713          	li	a4,1
    1020:	fec42783          	lw	a5,-20(s0)
    1024:	40f707b3          	sub	a5,a4,a5
    1028:	fef42623          	sw	a5,-20(s0)
    102c:	fe442783          	lw	a5,-28(s0)
    1030:	4077d793          	srai	a5,a5,0x7
    1034:	0017f793          	andi	a5,a5,1
    1038:	fef42423          	sw	a5,-24(s0)
    103c:	fec42783          	lw	a5,-20(s0)
    1040:	fe442703          	lw	a4,-28(s0)
    1044:	00f717b3          	sll	a5,a4,a5
    1048:	fef42223          	sw	a5,-28(s0)
    104c:	fe842783          	lw	a5,-24(s0)
    1050:	00179693          	slli	a3,a5,0x1
    1054:	000057b7          	lui	a5,0x5
    1058:	48c7a783          	lw	a5,1164(a5) # 548c <SDCARD>
    105c:	fec42703          	lw	a4,-20(s0)
    1060:	00e6e733          	or	a4,a3,a4
    1064:	00e7a023          	sw	a4,0(a5)
    1068:	00100713          	li	a4,1
    106c:	fec42783          	lw	a5,-20(s0)
    1070:	40f707b3          	sub	a5,a4,a5
    1074:	fef42623          	sw	a5,-20(s0)
    1078:	000057b7          	lui	a5,0x5
    107c:	48c7a783          	lw	a5,1164(a5) # 548c <SDCARD>
    1080:	00200713          	li	a4,2
    1084:	00e7a023          	sw	a4,0(a5)
    1088:	000057b7          	lui	a5,0x5
    108c:	7907a783          	lw	a5,1936(a5) # 5790 <sdcard_while_loading_callback>
    1090:	000780e7          	jalr	a5
    1094:	00000013          	nop
    1098:	02c12083          	lw	ra,44(sp)
    109c:	02812403          	lw	s0,40(sp)
    10a0:	03010113          	addi	sp,sp,48
    10a4:	00008067          	ret

000010a8 <sdcard_read>:
    10a8:	fc010113          	addi	sp,sp,-64
    10ac:	02112e23          	sw	ra,60(sp)
    10b0:	02812c23          	sw	s0,56(sp)
    10b4:	04010413          	addi	s0,sp,64
    10b8:	00050793          	mv	a5,a0
    10bc:	00058713          	mv	a4,a1
    10c0:	fcf407a3          	sb	a5,-49(s0)
    10c4:	00070793          	mv	a5,a4
    10c8:	fcf40723          	sb	a5,-50(s0)
    10cc:	fce44783          	lbu	a5,-50(s0)
    10d0:	fef42223          	sw	a5,-28(s0)
    10d4:	fcf44783          	lbu	a5,-49(s0)
    10d8:	fef42023          	sw	a5,-32(s0)
    10dc:	fe042623          	sw	zero,-20(s0)
    10e0:	0ff00793          	li	a5,255
    10e4:	fef42423          	sw	a5,-24(s0)
    10e8:	0600006f          	j	1148 <sdcard_read+0xa0>
    10ec:	000057b7          	lui	a5,0x5
    10f0:	48c7a783          	lw	a5,1164(a5) # 548c <SDCARD>
    10f4:	00300713          	li	a4,3
    10f8:	00e7a023          	sw	a4,0(a5)
    10fc:	fec42783          	lw	a5,-20(s0)
    1100:	00178793          	addi	a5,a5,1
    1104:	fef42623          	sw	a5,-20(s0)
    1108:	000057b7          	lui	a5,0x5
    110c:	48c7a783          	lw	a5,1164(a5) # 548c <SDCARD>
    1110:	00200713          	li	a4,2
    1114:	00e7a023          	sw	a4,0(a5)
    1118:	000057b7          	lui	a5,0x5
    111c:	48c7a783          	lw	a5,1164(a5) # 548c <SDCARD>
    1120:	0007a783          	lw	a5,0(a5)
    1124:	fcf42e23          	sw	a5,-36(s0)
    1128:	fe842783          	lw	a5,-24(s0)
    112c:	00179793          	slli	a5,a5,0x1
    1130:	fdc42703          	lw	a4,-36(s0)
    1134:	00f767b3          	or	a5,a4,a5
    1138:	fef42423          	sw	a5,-24(s0)
    113c:	000057b7          	lui	a5,0x5
    1140:	7907a783          	lw	a5,1936(a5) # 5790 <sdcard_while_loading_callback>
    1144:	000780e7          	jalr	a5
    1148:	fe442783          	lw	a5,-28(s0)
    114c:	00078e63          	beqz	a5,1168 <sdcard_read+0xc0>
    1150:	fe042783          	lw	a5,-32(s0)
    1154:	fff78793          	addi	a5,a5,-1
    1158:	fe842703          	lw	a4,-24(s0)
    115c:	40f757b3          	sra	a5,a4,a5
    1160:	0017f793          	andi	a5,a5,1
    1164:	f80794e3          	bnez	a5,10ec <sdcard_read+0x44>
    1168:	fe442783          	lw	a5,-28(s0)
    116c:	00079863          	bnez	a5,117c <sdcard_read+0xd4>
    1170:	fec42703          	lw	a4,-20(s0)
    1174:	fe042783          	lw	a5,-32(s0)
    1178:	f6f74ae3          	blt	a4,a5,10ec <sdcard_read+0x44>
    117c:	fe842783          	lw	a5,-24(s0)
    1180:	0ff7f793          	zext.b	a5,a5
    1184:	00078513          	mv	a0,a5
    1188:	03c12083          	lw	ra,60(sp)
    118c:	03812403          	lw	s0,56(sp)
    1190:	04010113          	addi	sp,sp,64
    1194:	00008067          	ret

00001198 <sdcard_get>:
    1198:	fd010113          	addi	sp,sp,-48
    119c:	02112623          	sw	ra,44(sp)
    11a0:	02812423          	sw	s0,40(sp)
    11a4:	03010413          	addi	s0,sp,48
    11a8:	00050793          	mv	a5,a0
    11ac:	00058713          	mv	a4,a1
    11b0:	fcf40fa3          	sb	a5,-33(s0)
    11b4:	00070793          	mv	a5,a4
    11b8:	fcf40f23          	sb	a5,-34(s0)
    11bc:	00000097          	auipc	ra,0x0
    11c0:	4e4080e7          	jalr	1252(ra) # 16a0 <sdcard_select>
    11c4:	fde44703          	lbu	a4,-34(s0)
    11c8:	fdf44783          	lbu	a5,-33(s0)
    11cc:	00070593          	mv	a1,a4
    11d0:	00078513          	mv	a0,a5
    11d4:	00000097          	auipc	ra,0x0
    11d8:	ed4080e7          	jalr	-300(ra) # 10a8 <sdcard_read>
    11dc:	00050793          	mv	a5,a0
    11e0:	fef407a3          	sb	a5,-17(s0)
    11e4:	00100793          	li	a5,1
    11e8:	fef42423          	sw	a5,-24(s0)
    11ec:	0280006f          	j	1214 <sdcard_get+0x7c>
    11f0:	00000593          	li	a1,0
    11f4:	00800513          	li	a0,8
    11f8:	00000097          	auipc	ra,0x0
    11fc:	eb0080e7          	jalr	-336(ra) # 10a8 <sdcard_read>
    1200:	00050793          	mv	a5,a0
    1204:	fef407a3          	sb	a5,-17(s0)
    1208:	fe842783          	lw	a5,-24(s0)
    120c:	00178793          	addi	a5,a5,1
    1210:	fef42423          	sw	a5,-24(s0)
    1214:	fdf44783          	lbu	a5,-33(s0)
    1218:	0037d793          	srli	a5,a5,0x3
    121c:	0ff7f793          	zext.b	a5,a5
    1220:	00078713          	mv	a4,a5
    1224:	fe842783          	lw	a5,-24(s0)
    1228:	fce7c4e3          	blt	a5,a4,11f0 <sdcard_get+0x58>
    122c:	00000097          	auipc	ra,0x0
    1230:	488080e7          	jalr	1160(ra) # 16b4 <sdcard_unselect>
    1234:	fef44783          	lbu	a5,-17(s0)
    1238:	00078513          	mv	a0,a5
    123c:	02c12083          	lw	ra,44(sp)
    1240:	02812403          	lw	s0,40(sp)
    1244:	03010113          	addi	sp,sp,48
    1248:	00008067          	ret

0000124c <sdcard_cmd>:
    124c:	fd010113          	addi	sp,sp,-48
    1250:	02112623          	sw	ra,44(sp)
    1254:	02812423          	sw	s0,40(sp)
    1258:	03010413          	addi	s0,sp,48
    125c:	fca42e23          	sw	a0,-36(s0)
    1260:	00000097          	auipc	ra,0x0
    1264:	440080e7          	jalr	1088(ra) # 16a0 <sdcard_select>
    1268:	fe042623          	sw	zero,-20(s0)
    126c:	02c0006f          	j	1298 <sdcard_cmd+0x4c>
    1270:	fec42783          	lw	a5,-20(s0)
    1274:	fdc42703          	lw	a4,-36(s0)
    1278:	00f707b3          	add	a5,a4,a5
    127c:	0007c783          	lbu	a5,0(a5)
    1280:	00078513          	mv	a0,a5
    1284:	00000097          	auipc	ra,0x0
    1288:	910080e7          	jalr	-1776(ra) # b94 <sdcard_send>
    128c:	fec42783          	lw	a5,-20(s0)
    1290:	00178793          	addi	a5,a5,1
    1294:	fef42623          	sw	a5,-20(s0)
    1298:	fec42703          	lw	a4,-20(s0)
    129c:	00500793          	li	a5,5
    12a0:	fce7d8e3          	bge	a5,a4,1270 <sdcard_cmd+0x24>
    12a4:	00000097          	auipc	ra,0x0
    12a8:	410080e7          	jalr	1040(ra) # 16b4 <sdcard_unselect>
    12ac:	00000013          	nop
    12b0:	02c12083          	lw	ra,44(sp)
    12b4:	02812403          	lw	s0,40(sp)
    12b8:	03010113          	addi	sp,sp,48
    12bc:	00008067          	ret

000012c0 <sdcard_start_sector>:
    12c0:	fe010113          	addi	sp,sp,-32
    12c4:	00112e23          	sw	ra,28(sp)
    12c8:	00812c23          	sw	s0,24(sp)
    12cc:	02010413          	addi	s0,sp,32
    12d0:	fea42623          	sw	a0,-20(s0)
    12d4:	00000097          	auipc	ra,0x0
    12d8:	3cc080e7          	jalr	972(ra) # 16a0 <sdcard_select>
    12dc:	05100793          	li	a5,81
    12e0:	00078513          	mv	a0,a5
    12e4:	00000097          	auipc	ra,0x0
    12e8:	8b0080e7          	jalr	-1872(ra) # b94 <sdcard_send>
    12ec:	fec42783          	lw	a5,-20(s0)
    12f0:	0187d793          	srli	a5,a5,0x18
    12f4:	00078513          	mv	a0,a5
    12f8:	00000097          	auipc	ra,0x0
    12fc:	89c080e7          	jalr	-1892(ra) # b94 <sdcard_send>
    1300:	fec42783          	lw	a5,-20(s0)
    1304:	4107d793          	srai	a5,a5,0x10
    1308:	0ff7f793          	zext.b	a5,a5
    130c:	00078513          	mv	a0,a5
    1310:	00000097          	auipc	ra,0x0
    1314:	884080e7          	jalr	-1916(ra) # b94 <sdcard_send>
    1318:	fec42783          	lw	a5,-20(s0)
    131c:	4087d793          	srai	a5,a5,0x8
    1320:	0ff7f793          	zext.b	a5,a5
    1324:	00078513          	mv	a0,a5
    1328:	00000097          	auipc	ra,0x0
    132c:	86c080e7          	jalr	-1940(ra) # b94 <sdcard_send>
    1330:	fec42783          	lw	a5,-20(s0)
    1334:	0ff7f793          	zext.b	a5,a5
    1338:	00078513          	mv	a0,a5
    133c:	00000097          	auipc	ra,0x0
    1340:	858080e7          	jalr	-1960(ra) # b94 <sdcard_send>
    1344:	05500793          	li	a5,85
    1348:	00078513          	mv	a0,a5
    134c:	00000097          	auipc	ra,0x0
    1350:	848080e7          	jalr	-1976(ra) # b94 <sdcard_send>
    1354:	00000097          	auipc	ra,0x0
    1358:	360080e7          	jalr	864(ra) # 16b4 <sdcard_unselect>
    135c:	fffff097          	auipc	ra,0xfffff
    1360:	7cc080e7          	jalr	1996(ra) # b28 <sdcard_ponder>
    1364:	00100593          	li	a1,1
    1368:	00800513          	li	a0,8
    136c:	00000097          	auipc	ra,0x0
    1370:	e2c080e7          	jalr	-468(ra) # 1198 <sdcard_get>
    1374:	00050793          	mv	a5,a0
    1378:	00078513          	mv	a0,a5
    137c:	01c12083          	lw	ra,28(sp)
    1380:	01812403          	lw	s0,24(sp)
    1384:	02010113          	addi	sp,sp,32
    1388:	00008067          	ret

0000138c <sdcard_read_sector>:
    138c:	fd010113          	addi	sp,sp,-48
    1390:	02112623          	sw	ra,44(sp)
    1394:	02812423          	sw	s0,40(sp)
    1398:	03010413          	addi	s0,sp,48
    139c:	fca42e23          	sw	a0,-36(s0)
    13a0:	fcb42c23          	sw	a1,-40(s0)
    13a4:	fdc42503          	lw	a0,-36(s0)
    13a8:	00000097          	auipc	ra,0x0
    13ac:	f18080e7          	jalr	-232(ra) # 12c0 <sdcard_start_sector>
    13b0:	00050793          	mv	a5,a0
    13b4:	fef405a3          	sb	a5,-21(s0)
    13b8:	feb44783          	lbu	a5,-21(s0)
    13bc:	00078663          	beqz	a5,13c8 <sdcard_read_sector+0x3c>
    13c0:	fd842783          	lw	a5,-40(s0)
    13c4:	08c0006f          	j	1450 <sdcard_read_sector+0xc4>
    13c8:	00100593          	li	a1,1
    13cc:	00100513          	li	a0,1
    13d0:	00000097          	auipc	ra,0x0
    13d4:	dc8080e7          	jalr	-568(ra) # 1198 <sdcard_get>
    13d8:	fe042623          	sw	zero,-20(s0)
    13dc:	03c0006f          	j	1418 <sdcard_read_sector+0x8c>
    13e0:	00000593          	li	a1,0
    13e4:	00800513          	li	a0,8
    13e8:	00000097          	auipc	ra,0x0
    13ec:	db0080e7          	jalr	-592(ra) # 1198 <sdcard_get>
    13f0:	00050793          	mv	a5,a0
    13f4:	fef401a3          	sb	a5,-29(s0)
    13f8:	fd842783          	lw	a5,-40(s0)
    13fc:	00178713          	addi	a4,a5,1
    1400:	fce42c23          	sw	a4,-40(s0)
    1404:	fe344703          	lbu	a4,-29(s0)
    1408:	00e78023          	sb	a4,0(a5)
    140c:	fec42783          	lw	a5,-20(s0)
    1410:	00178793          	addi	a5,a5,1
    1414:	fef42623          	sw	a5,-20(s0)
    1418:	fec42703          	lw	a4,-20(s0)
    141c:	1ff00793          	li	a5,511
    1420:	fce7d0e3          	bge	a5,a4,13e0 <sdcard_read_sector+0x54>
    1424:	00000593          	li	a1,0
    1428:	01000513          	li	a0,16
    142c:	00000097          	auipc	ra,0x0
    1430:	d6c080e7          	jalr	-660(ra) # 1198 <sdcard_get>
    1434:	00050793          	mv	a5,a0
    1438:	fef42223          	sw	a5,-28(s0)
    143c:	00000097          	auipc	ra,0x0
    1440:	278080e7          	jalr	632(ra) # 16b4 <sdcard_unselect>
    1444:	fffff097          	auipc	ra,0xfffff
    1448:	6e4080e7          	jalr	1764(ra) # b28 <sdcard_ponder>
    144c:	fd842783          	lw	a5,-40(s0)
    1450:	00078513          	mv	a0,a5
    1454:	02c12083          	lw	ra,44(sp)
    1458:	02812403          	lw	s0,40(sp)
    145c:	03010113          	addi	sp,sp,48
    1460:	00008067          	ret

00001464 <sdcard_preinit>:
    1464:	fe010113          	addi	sp,sp,-32
    1468:	00112e23          	sw	ra,28(sp)
    146c:	00812c23          	sw	s0,24(sp)
    1470:	02010413          	addi	s0,sp,32
    1474:	000057b7          	lui	a5,0x5
    1478:	48c7a783          	lw	a5,1164(a5) # 548c <SDCARD>
    147c:	00600713          	li	a4,6
    1480:	00e7a023          	sw	a4,0(a5)
    1484:	013137b7          	lui	a5,0x1313
    1488:	d0078513          	addi	a0,a5,-768 # 1312d00 <__stacktop+0x1302d00>
    148c:	00000097          	auipc	ra,0x0
    1490:	1fc080e7          	jalr	508(ra) # 1688 <pause>
    1494:	fe042623          	sw	zero,-20(s0)
    1498:	fe042423          	sw	zero,-24(s0)
    149c:	0340006f          	j	14d0 <sdcard_preinit+0x6c>
    14a0:	000057b7          	lui	a5,0x5
    14a4:	48c7a783          	lw	a5,1164(a5) # 548c <SDCARD>
    14a8:	fec42703          	lw	a4,-20(s0)
    14ac:	00676713          	ori	a4,a4,6
    14b0:	00e7a023          	sw	a4,0(a5)
    14b4:	00100713          	li	a4,1
    14b8:	fec42783          	lw	a5,-20(s0)
    14bc:	40f707b3          	sub	a5,a4,a5
    14c0:	fef42623          	sw	a5,-20(s0)
    14c4:	fe842783          	lw	a5,-24(s0)
    14c8:	00178793          	addi	a5,a5,1
    14cc:	fef42423          	sw	a5,-24(s0)
    14d0:	fe842703          	lw	a4,-24(s0)
    14d4:	09f00793          	li	a5,159
    14d8:	fce7d4e3          	bge	a5,a4,14a0 <sdcard_preinit+0x3c>
    14dc:	000057b7          	lui	a5,0x5
    14e0:	48c7a783          	lw	a5,1164(a5) # 548c <SDCARD>
    14e4:	00600713          	li	a4,6
    14e8:	00e7a023          	sw	a4,0(a5)
    14ec:	00000013          	nop
    14f0:	01c12083          	lw	ra,28(sp)
    14f4:	01812403          	lw	s0,24(sp)
    14f8:	02010113          	addi	sp,sp,32
    14fc:	00008067          	ret

00001500 <sdcard_init>:
    1500:	fe010113          	addi	sp,sp,-32
    1504:	00112e23          	sw	ra,28(sp)
    1508:	00812c23          	sw	s0,24(sp)
    150c:	02010413          	addi	s0,sp,32
    1510:	000057b7          	lui	a5,0x5
    1514:	00001737          	lui	a4,0x1
    1518:	69c70713          	addi	a4,a4,1692 # 169c <sdcard_idle>
    151c:	78e7a823          	sw	a4,1936(a5) # 5790 <sdcard_while_loading_callback>
    1520:	00000097          	auipc	ra,0x0
    1524:	f44080e7          	jalr	-188(ra) # 1464 <sdcard_preinit>
    1528:	000057b7          	lui	a5,0x5
    152c:	47078513          	addi	a0,a5,1136 # 5470 <cmd0>
    1530:	00000097          	auipc	ra,0x0
    1534:	d1c080e7          	jalr	-740(ra) # 124c <sdcard_cmd>
    1538:	00100593          	li	a1,1
    153c:	00800513          	li	a0,8
    1540:	00000097          	auipc	ra,0x0
    1544:	c58080e7          	jalr	-936(ra) # 1198 <sdcard_get>
    1548:	00050793          	mv	a5,a0
    154c:	fef407a3          	sb	a5,-17(s0)
    1550:	fffff097          	auipc	ra,0xfffff
    1554:	5d8080e7          	jalr	1496(ra) # b28 <sdcard_ponder>
    1558:	fef44703          	lbu	a4,-17(s0)
    155c:	0ff00793          	li	a5,255
    1560:	00f71c63          	bne	a4,a5,1578 <sdcard_init+0x78>
    1564:	013137b7          	lui	a5,0x1313
    1568:	d0078513          	addi	a0,a5,-768 # 1312d00 <__stacktop+0x1302d00>
    156c:	00000097          	auipc	ra,0x0
    1570:	11c080e7          	jalr	284(ra) # 1688 <pause>
    1574:	fadff06f          	j	1520 <sdcard_init+0x20>
    1578:	00000013          	nop
    157c:	000057b7          	lui	a5,0x5
    1580:	46878513          	addi	a0,a5,1128 # 5468 <cmd8>
    1584:	00000097          	auipc	ra,0x0
    1588:	cc8080e7          	jalr	-824(ra) # 124c <sdcard_cmd>
    158c:	00100593          	li	a1,1
    1590:	02800513          	li	a0,40
    1594:	00000097          	auipc	ra,0x0
    1598:	c04080e7          	jalr	-1020(ra) # 1198 <sdcard_get>
    159c:	00050793          	mv	a5,a0
    15a0:	fef407a3          	sb	a5,-17(s0)
    15a4:	fffff097          	auipc	ra,0xfffff
    15a8:	584080e7          	jalr	1412(ra) # b28 <sdcard_ponder>
    15ac:	000057b7          	lui	a5,0x5
    15b0:	46078513          	addi	a0,a5,1120 # 5460 <cmd55>
    15b4:	00000097          	auipc	ra,0x0
    15b8:	c98080e7          	jalr	-872(ra) # 124c <sdcard_cmd>
    15bc:	00100593          	li	a1,1
    15c0:	00800513          	li	a0,8
    15c4:	00000097          	auipc	ra,0x0
    15c8:	bd4080e7          	jalr	-1068(ra) # 1198 <sdcard_get>
    15cc:	00050793          	mv	a5,a0
    15d0:	fef407a3          	sb	a5,-17(s0)
    15d4:	fffff097          	auipc	ra,0xfffff
    15d8:	554080e7          	jalr	1364(ra) # b28 <sdcard_ponder>
    15dc:	000057b7          	lui	a5,0x5
    15e0:	45878513          	addi	a0,a5,1112 # 5458 <acmd41>
    15e4:	00000097          	auipc	ra,0x0
    15e8:	c68080e7          	jalr	-920(ra) # 124c <sdcard_cmd>
    15ec:	00100593          	li	a1,1
    15f0:	00800513          	li	a0,8
    15f4:	00000097          	auipc	ra,0x0
    15f8:	ba4080e7          	jalr	-1116(ra) # 1198 <sdcard_get>
    15fc:	00050793          	mv	a5,a0
    1600:	fef407a3          	sb	a5,-17(s0)
    1604:	fffff097          	auipc	ra,0xfffff
    1608:	524080e7          	jalr	1316(ra) # b28 <sdcard_ponder>
    160c:	fef44783          	lbu	a5,-17(s0)
    1610:	02078863          	beqz	a5,1640 <sdcard_init+0x140>
    1614:	00000097          	auipc	ra,0x0
    1618:	0a0080e7          	jalr	160(ra) # 16b4 <sdcard_unselect>
    161c:	fffff097          	auipc	ra,0xfffff
    1620:	50c080e7          	jalr	1292(ra) # b28 <sdcard_ponder>
    1624:	001e87b7          	lui	a5,0x1e8
    1628:	48078513          	addi	a0,a5,1152 # 1e8480 <__stacktop+0x1d8480>
    162c:	00000097          	auipc	ra,0x0
    1630:	05c080e7          	jalr	92(ra) # 1688 <pause>
    1634:	00000097          	auipc	ra,0x0
    1638:	06c080e7          	jalr	108(ra) # 16a0 <sdcard_select>
    163c:	f71ff06f          	j	15ac <sdcard_init+0xac>
    1640:	00000013          	nop
    1644:	000057b7          	lui	a5,0x5
    1648:	45078513          	addi	a0,a5,1104 # 5450 <cmd16>
    164c:	00000097          	auipc	ra,0x0
    1650:	c00080e7          	jalr	-1024(ra) # 124c <sdcard_cmd>
    1654:	00100593          	li	a1,1
    1658:	00800513          	li	a0,8
    165c:	00000097          	auipc	ra,0x0
    1660:	b3c080e7          	jalr	-1220(ra) # 1198 <sdcard_get>
    1664:	00050793          	mv	a5,a0
    1668:	fef407a3          	sb	a5,-17(s0)
    166c:	fffff097          	auipc	ra,0xfffff
    1670:	4bc080e7          	jalr	1212(ra) # b28 <sdcard_ponder>
    1674:	00000013          	nop
    1678:	01c12083          	lw	ra,28(sp)
    167c:	01812403          	lw	s0,24(sp)
    1680:	02010113          	addi	sp,sp,32
    1684:	00008067          	ret

00001688 <pause>:
    1688:	c0002773          	rdcycle	a4
    168c:	c00027f3          	rdcycle	a5
    1690:	40e787b3          	sub	a5,a5,a4
    1694:	fea7ece3          	bltu	a5,a0,168c <pause+0x4>
    1698:	00008067          	ret

0000169c <sdcard_idle>:
    169c:	00008067          	ret

000016a0 <sdcard_select>:
    16a0:	000057b7          	lui	a5,0x5
    16a4:	48c7a783          	lw	a5,1164(a5) # 548c <SDCARD>
    16a8:	00200713          	li	a4,2
    16ac:	00e7a023          	sw	a4,0(a5)
    16b0:	00008067          	ret

000016b4 <sdcard_unselect>:
    16b4:	000057b7          	lui	a5,0x5
    16b8:	48c7a783          	lw	a5,1164(a5) # 548c <SDCARD>
    16bc:	00600713          	li	a4,6
    16c0:	00e7a023          	sw	a4,0(a5)
    16c4:	00008067          	ret

000016c8 <sdcard_readsector>:
    16c8:	04060663          	beqz	a2,1714 <sdcard_readsector+0x4c>
    16cc:	ff010113          	addi	sp,sp,-16
    16d0:	00912423          	sw	s1,8(sp)
    16d4:	01212223          	sw	s2,4(sp)
    16d8:	00112623          	sw	ra,12(sp)
    16dc:	00050493          	mv	s1,a0
    16e0:	00a60933          	add	s2,a2,a0
    16e4:	00048513          	mv	a0,s1
    16e8:	00000097          	auipc	ra,0x0
    16ec:	ca4080e7          	jalr	-860(ra) # 138c <sdcard_read_sector>
    16f0:	00148493          	addi	s1,s1,1
    16f4:	00050593          	mv	a1,a0
    16f8:	fe9916e3          	bne	s2,s1,16e4 <sdcard_readsector+0x1c>
    16fc:	00c12083          	lw	ra,12(sp)
    1700:	00812483          	lw	s1,8(sp)
    1704:	00412903          	lw	s2,4(sp)
    1708:	00100513          	li	a0,1
    170c:	01010113          	addi	sp,sp,16
    1710:	00008067          	ret
    1714:	00000513          	li	a0,0
    1718:	00008067          	ret

0000171c <sdcard_writesector>:
    171c:	00000513          	li	a0,0
    1720:	00008067          	ret

00001724 <__divsi3>:
    1724:	06054063          	bltz	a0,1784 <__umodsi3+0x10>
    1728:	0605c663          	bltz	a1,1794 <__umodsi3+0x20>

0000172c <__udivsi3>:
    172c:	00058613          	mv	a2,a1
    1730:	00050593          	mv	a1,a0
    1734:	fff00513          	li	a0,-1
    1738:	02060c63          	beqz	a2,1770 <__udivsi3+0x44>
    173c:	00100693          	li	a3,1
    1740:	00b67a63          	bgeu	a2,a1,1754 <__udivsi3+0x28>
    1744:	00c05863          	blez	a2,1754 <__udivsi3+0x28>
    1748:	00161613          	slli	a2,a2,0x1
    174c:	00169693          	slli	a3,a3,0x1
    1750:	feb66ae3          	bltu	a2,a1,1744 <__udivsi3+0x18>
    1754:	00000513          	li	a0,0
    1758:	00c5e663          	bltu	a1,a2,1764 <__udivsi3+0x38>
    175c:	40c585b3          	sub	a1,a1,a2
    1760:	00d56533          	or	a0,a0,a3
    1764:	0016d693          	srli	a3,a3,0x1
    1768:	00165613          	srli	a2,a2,0x1
    176c:	fe0696e3          	bnez	a3,1758 <__udivsi3+0x2c>
    1770:	00008067          	ret

00001774 <__umodsi3>:
    1774:	00008293          	mv	t0,ra
    1778:	fb5ff0ef          	jal	172c <__udivsi3>
    177c:	00058513          	mv	a0,a1
    1780:	00028067          	jr	t0
    1784:	40a00533          	neg	a0,a0
    1788:	0005d863          	bgez	a1,1798 <__umodsi3+0x24>
    178c:	40b005b3          	neg	a1,a1
    1790:	f95ff06f          	j	1724 <__divsi3>
    1794:	40b005b3          	neg	a1,a1
    1798:	00008293          	mv	t0,ra
    179c:	f89ff0ef          	jal	1724 <__divsi3>
    17a0:	40a00533          	neg	a0,a0
    17a4:	00028067          	jr	t0

000017a8 <__modsi3>:
    17a8:	00008293          	mv	t0,ra
    17ac:	0005ca63          	bltz	a1,17c0 <__modsi3+0x18>
    17b0:	00054c63          	bltz	a0,17c8 <__modsi3+0x20>
    17b4:	f79ff0ef          	jal	172c <__udivsi3>
    17b8:	00058513          	mv	a0,a1
    17bc:	00028067          	jr	t0
    17c0:	40b005b3          	neg	a1,a1
    17c4:	fe0558e3          	bgez	a0,17b4 <__modsi3+0xc>
    17c8:	40a00533          	neg	a0,a0
    17cc:	f61ff0ef          	jal	172c <__udivsi3>
    17d0:	40b00533          	neg	a0,a1
    17d4:	00028067          	jr	t0

000017d8 <memset>:
    17d8:	00c50633          	add	a2,a0,a2
    17dc:	00050793          	mv	a5,a0
    17e0:	00c79463          	bne	a5,a2,17e8 <memset+0x10>
    17e4:	00008067          	ret
    17e8:	00178793          	addi	a5,a5,1
    17ec:	feb78fa3          	sb	a1,-1(a5)
    17f0:	ff1ff06f          	j	17e0 <memset+0x8>

000017f4 <memcpy>:
    17f4:	00000793          	li	a5,0
    17f8:	00c79463          	bne	a5,a2,1800 <memcpy+0xc>
    17fc:	00008067          	ret
    1800:	00f58733          	add	a4,a1,a5
    1804:	00074683          	lbu	a3,0(a4)
    1808:	00f50733          	add	a4,a0,a5
    180c:	00178793          	addi	a5,a5,1
    1810:	00d70023          	sb	a3,0(a4)
    1814:	fe5ff06f          	j	17f8 <memcpy+0x4>

00001818 <strlen>:
    1818:	00050793          	mv	a5,a0
    181c:	00000513          	li	a0,0
    1820:	00a78733          	add	a4,a5,a0
    1824:	00074703          	lbu	a4,0(a4)
    1828:	00071463          	bnez	a4,1830 <strlen+0x18>
    182c:	00008067          	ret
    1830:	00150513          	addi	a0,a0,1
    1834:	fedff06f          	j	1820 <strlen+0x8>

00001838 <strncmp>:
    1838:	00000793          	li	a5,0
    183c:	00c79663          	bne	a5,a2,1848 <strncmp+0x10>
    1840:	00000513          	li	a0,0
    1844:	00008067          	ret
    1848:	00f50733          	add	a4,a0,a5
    184c:	00074683          	lbu	a3,0(a4)
    1850:	00f58733          	add	a4,a1,a5
    1854:	00074703          	lbu	a4,0(a4)
    1858:	00e6e863          	bltu	a3,a4,1868 <strncmp+0x30>
    185c:	00d76a63          	bltu	a4,a3,1870 <strncmp+0x38>
    1860:	00178793          	addi	a5,a5,1
    1864:	fd9ff06f          	j	183c <strncmp+0x4>
    1868:	fff00513          	li	a0,-1
    186c:	00008067          	ret
    1870:	00100513          	li	a0,1
    1874:	00008067          	ret

00001878 <strncpy>:
    1878:	00000793          	li	a5,0
    187c:	00c79463          	bne	a5,a2,1884 <strncpy+0xc>
    1880:	00008067          	ret
    1884:	00f58733          	add	a4,a1,a5
    1888:	00074683          	lbu	a3,0(a4)
    188c:	00f50733          	add	a4,a0,a5
    1890:	00178793          	addi	a5,a5,1
    1894:	00d70023          	sb	a3,0(a4)
    1898:	fe5ff06f          	j	187c <strncpy+0x4>

0000189c <oled_wait>:
    189c:	00000013          	nop
    18a0:	00000013          	nop
    18a4:	00000013          	nop
    18a8:	00000013          	nop
    18ac:	00000013          	nop
    18b0:	00000013          	nop
    18b4:	00000013          	nop
    18b8:	00008067          	ret

000018bc <oled_init_mode>:
    18bc:	000057b7          	lui	a5,0x5
    18c0:	4907a703          	lw	a4,1168(a5) # 5490 <OLED_RST>
    18c4:	ff010113          	addi	sp,sp,-16
    18c8:	00912223          	sw	s1,4(sp)
    18cc:	00112623          	sw	ra,12(sp)
    18d0:	00812423          	sw	s0,8(sp)
    18d4:	00072023          	sw	zero,0(a4)
    18d8:	00050493          	mv	s1,a0
    18dc:	00040737          	lui	a4,0x40
    18e0:	00000013          	nop
    18e4:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    18e8:	fe071ce3          	bnez	a4,18e0 <oled_init_mode+0x24>
    18ec:	4907a703          	lw	a4,1168(a5)
    18f0:	00100693          	li	a3,1
    18f4:	00d72023          	sw	a3,0(a4)
    18f8:	00040737          	lui	a4,0x40
    18fc:	00000013          	nop
    1900:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    1904:	fe071ce3          	bnez	a4,18fc <oled_init_mode+0x40>
    1908:	4907a783          	lw	a5,1168(a5)
    190c:	0007a023          	sw	zero,0(a5)
    1910:	000407b7          	lui	a5,0x40
    1914:	00000013          	nop
    1918:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    191c:	fe079ce3          	bnez	a5,1914 <oled_init_mode+0x58>
    1920:	00005737          	lui	a4,0x5
    1924:	49472783          	lw	a5,1172(a4) # 5494 <OLED>
    1928:	2af00693          	li	a3,687
    192c:	00d7a023          	sw	a3,0(a5)
    1930:	000407b7          	lui	a5,0x40
    1934:	00000013          	nop
    1938:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    193c:	fe079ce3          	bnez	a5,1934 <oled_init_mode+0x78>
    1940:	49472403          	lw	s0,1172(a4)
    1944:	2a000793          	li	a5,672
    1948:	00f42023          	sw	a5,0(s0)
    194c:	00000097          	auipc	ra,0x0
    1950:	f50080e7          	jalr	-176(ra) # 189c <oled_wait>
    1954:	4a000793          	li	a5,1184
    1958:	00048463          	beqz	s1,1960 <oled_init_mode+0xa4>
    195c:	42000793          	li	a5,1056
    1960:	00f42023          	sw	a5,0(s0)
    1964:	00000097          	auipc	ra,0x0
    1968:	f38080e7          	jalr	-200(ra) # 189c <oled_wait>
    196c:	2fd00793          	li	a5,765
    1970:	00f42023          	sw	a5,0(s0)
    1974:	00000097          	auipc	ra,0x0
    1978:	f28080e7          	jalr	-216(ra) # 189c <oled_wait>
    197c:	4b100793          	li	a5,1201
    1980:	00f42023          	sw	a5,0(s0)
    1984:	00000097          	auipc	ra,0x0
    1988:	f18080e7          	jalr	-232(ra) # 189c <oled_wait>
    198c:	2a200793          	li	a5,674
    1990:	00f42023          	sw	a5,0(s0)
    1994:	00000097          	auipc	ra,0x0
    1998:	f08080e7          	jalr	-248(ra) # 189c <oled_wait>
    199c:	40000793          	li	a5,1024
    19a0:	00f42023          	sw	a5,0(s0)
    19a4:	00812403          	lw	s0,8(sp)
    19a8:	00c12083          	lw	ra,12(sp)
    19ac:	00412483          	lw	s1,4(sp)
    19b0:	01010113          	addi	sp,sp,16
    19b4:	00000317          	auipc	t1,0x0
    19b8:	ee830067          	jr	-280(t1) # 189c <oled_wait>

000019bc <oled_init>:
    19bc:	00000513          	li	a0,0
    19c0:	00000317          	auipc	t1,0x0
    19c4:	efc30067          	jr	-260(t1) # 18bc <oled_init_mode>

000019c8 <oled_fullscreen>:
    19c8:	ff010113          	addi	sp,sp,-16
    19cc:	000057b7          	lui	a5,0x5
    19d0:	00812423          	sw	s0,8(sp)
    19d4:	4947a403          	lw	s0,1172(a5) # 5494 <OLED>
    19d8:	00112623          	sw	ra,12(sp)
    19dc:	00912223          	sw	s1,4(sp)
    19e0:	01212023          	sw	s2,0(sp)
    19e4:	21500793          	li	a5,533
    19e8:	00f42023          	sw	a5,0(s0)
    19ec:	40000913          	li	s2,1024
    19f0:	00000097          	auipc	ra,0x0
    19f4:	eac080e7          	jalr	-340(ra) # 189c <oled_wait>
    19f8:	47f00493          	li	s1,1151
    19fc:	01242023          	sw	s2,0(s0)
    1a00:	00000097          	auipc	ra,0x0
    1a04:	e9c080e7          	jalr	-356(ra) # 189c <oled_wait>
    1a08:	00942023          	sw	s1,0(s0)
    1a0c:	00000097          	auipc	ra,0x0
    1a10:	e90080e7          	jalr	-368(ra) # 189c <oled_wait>
    1a14:	27500793          	li	a5,629
    1a18:	00f42023          	sw	a5,0(s0)
    1a1c:	00000097          	auipc	ra,0x0
    1a20:	e80080e7          	jalr	-384(ra) # 189c <oled_wait>
    1a24:	01242023          	sw	s2,0(s0)
    1a28:	00000097          	auipc	ra,0x0
    1a2c:	e74080e7          	jalr	-396(ra) # 189c <oled_wait>
    1a30:	00942023          	sw	s1,0(s0)
    1a34:	00000097          	auipc	ra,0x0
    1a38:	e68080e7          	jalr	-408(ra) # 189c <oled_wait>
    1a3c:	25c00793          	li	a5,604
    1a40:	00f42023          	sw	a5,0(s0)
    1a44:	00812403          	lw	s0,8(sp)
    1a48:	00c12083          	lw	ra,12(sp)
    1a4c:	00412483          	lw	s1,4(sp)
    1a50:	00012903          	lw	s2,0(sp)
    1a54:	01010113          	addi	sp,sp,16
    1a58:	00000317          	auipc	t1,0x0
    1a5c:	e4430067          	jr	-444(t1) # 189c <oled_wait>

00001a60 <oled_clear>:
    1a60:	fe010113          	addi	sp,sp,-32
    1a64:	000057b7          	lui	a5,0x5
    1a68:	01312623          	sw	s3,12(sp)
    1a6c:	4947a983          	lw	s3,1172(a5) # 5494 <OLED>
    1a70:	00812c23          	sw	s0,24(sp)
    1a74:	01212823          	sw	s2,16(sp)
    1a78:	00112e23          	sw	ra,28(sp)
    1a7c:	00912a23          	sw	s1,20(sp)
    1a80:	08000913          	li	s2,128
    1a84:	40056413          	ori	s0,a0,1024
    1a88:	08000493          	li	s1,128
    1a8c:	0089a023          	sw	s0,0(s3)
    1a90:	00000097          	auipc	ra,0x0
    1a94:	e0c080e7          	jalr	-500(ra) # 189c <oled_wait>
    1a98:	0089a023          	sw	s0,0(s3)
    1a9c:	00000097          	auipc	ra,0x0
    1aa0:	e00080e7          	jalr	-512(ra) # 189c <oled_wait>
    1aa4:	fff48493          	addi	s1,s1,-1
    1aa8:	0089a023          	sw	s0,0(s3)
    1aac:	00000097          	auipc	ra,0x0
    1ab0:	df0080e7          	jalr	-528(ra) # 189c <oled_wait>
    1ab4:	fc049ce3          	bnez	s1,1a8c <oled_clear+0x2c>
    1ab8:	fff90913          	addi	s2,s2,-1
    1abc:	fc0916e3          	bnez	s2,1a88 <oled_clear+0x28>
    1ac0:	01c12083          	lw	ra,28(sp)
    1ac4:	01812403          	lw	s0,24(sp)
    1ac8:	01412483          	lw	s1,20(sp)
    1acc:	01012903          	lw	s2,16(sp)
    1ad0:	00c12983          	lw	s3,12(sp)
    1ad4:	02010113          	addi	sp,sp,32
    1ad8:	00008067          	ret

00001adc <display_framebuffer>:
    1adc:	000057b7          	lui	a5,0x5
    1ae0:	47c7a503          	lw	a0,1148(a5) # 547c <DISPLAY>
    1ae4:	00008067          	ret

00001ae8 <display_set_cursor>:
    1ae8:	000057b7          	lui	a5,0x5
    1aec:	78a7ae23          	sw	a0,1948(a5) # 579c <cursor_x>
    1af0:	000057b7          	lui	a5,0x5
    1af4:	78b7ac23          	sw	a1,1944(a5) # 5798 <cursor_y>
    1af8:	00008067          	ret

00001afc <display_set_front_back_color>:
    1afc:	000057b7          	lui	a5,0x5
    1b00:	78a78aa3          	sb	a0,1941(a5) # 5795 <front_color>
    1b04:	000057b7          	lui	a5,0x5
    1b08:	78b78a23          	sb	a1,1940(a5) # 5794 <back_color>
    1b0c:	00008067          	ret

00001b10 <display_putchar>:
    1b10:	00a00793          	li	a5,10
    1b14:	00005737          	lui	a4,0x5
    1b18:	02f51663          	bne	a0,a5,1b44 <display_putchar+0x34>
    1b1c:	78072e23          	sw	zero,1948(a4) # 579c <cursor_x>
    1b20:	00005737          	lui	a4,0x5
    1b24:	79872783          	lw	a5,1944(a4) # 5798 <cursor_y>
    1b28:	00878793          	addi	a5,a5,8
    1b2c:	78f72c23          	sw	a5,1944(a4)
    1b30:	07f00713          	li	a4,127
    1b34:	00f75663          	bge	a4,a5,1b40 <display_putchar+0x30>
    1b38:	000057b7          	lui	a5,0x5
    1b3c:	7807ac23          	sw	zero,1944(a5) # 5798 <cursor_y>
    1b40:	00008067          	ret
    1b44:	ff010113          	addi	sp,sp,-16
    1b48:	00812623          	sw	s0,12(sp)
    1b4c:	00912423          	sw	s1,8(sp)
    1b50:	01f00793          	li	a5,31
    1b54:	0ea7d263          	bge	a5,a0,1c38 <display_putchar+0x128>
    1b58:	00005f37          	lui	t5,0x5
    1b5c:	798f2783          	lw	a5,1944(t5) # 5798 <cursor_y>
    1b60:	08000593          	li	a1,128
    1b64:	40f585b3          	sub	a1,a1,a5
    1b68:	00800793          	li	a5,8
    1b6c:	00b7d463          	bge	a5,a1,1b74 <display_putchar+0x64>
    1b70:	00800593          	li	a1,8
    1b74:	79c72783          	lw	a5,1948(a4)
    1b78:	08000813          	li	a6,128
    1b7c:	40f80833          	sub	a6,a6,a5
    1b80:	00500793          	li	a5,5
    1b84:	0107d463          	bge	a5,a6,1b8c <display_putchar+0x7c>
    1b88:	00500813          	li	a6,5
    1b8c:	000057b7          	lui	a5,0x5
    1b90:	4807ae03          	lw	t3,1152(a5) # 5480 <RGBSEL>
    1b94:	000057b7          	lui	a5,0x5
    1b98:	47c7a283          	lw	t0,1148(a5) # 547c <DISPLAY>
    1b9c:	00251693          	slli	a3,a0,0x2
    1ba0:	000057b7          	lui	a5,0x5
    1ba4:	00a686b3          	add	a3,a3,a0
    1ba8:	57878793          	addi	a5,a5,1400 # 5578 <font>
    1bac:	00f686b3          	add	a3,a3,a5
    1bb0:	00000613          	li	a2,0
    1bb4:	00100e93          	li	t4,1
    1bb8:	000053b7          	lui	t2,0x5
    1bbc:	00005437          	lui	s0,0x5
    1bc0:	00200493          	li	s1,2
    1bc4:	06b65a63          	bge	a2,a1,1c38 <display_putchar+0x128>
    1bc8:	00ce9fb3          	sll	t6,t4,a2
    1bcc:	00068313          	mv	t1,a3
    1bd0:	00000893          	li	a7,0
    1bd4:	04c0006f          	j	1c20 <display_putchar+0x110>
    1bd8:	798f2783          	lw	a5,1944(t5)
    1bdc:	00a88533          	add	a0,a7,a0
    1be0:	00751513          	slli	a0,a0,0x7
    1be4:	00f607b3          	add	a5,a2,a5
    1be8:	00a787b3          	add	a5,a5,a0
    1bec:	f6034503          	lbu	a0,-160(t1)
    1bf0:	01f57533          	and	a0,a0,t6
    1bf4:	02050e63          	beqz	a0,1c30 <display_putchar+0x120>
    1bf8:	79544503          	lbu	a0,1941(s0) # 5795 <front_color>
    1bfc:	000e2023          	sw	zero,0(t3)
    1c00:	00f287b3          	add	a5,t0,a5
    1c04:	00a78023          	sb	a0,0(a5)
    1c08:	01de2023          	sw	t4,0(t3)
    1c0c:	00a78023          	sb	a0,0(a5)
    1c10:	009e2023          	sw	s1,0(t3)
    1c14:	00a78023          	sb	a0,0(a5)
    1c18:	00188893          	addi	a7,a7,1
    1c1c:	00130313          	addi	t1,t1,1
    1c20:	79c72503          	lw	a0,1948(a4)
    1c24:	fb08cae3          	blt	a7,a6,1bd8 <display_putchar+0xc8>
    1c28:	00160613          	addi	a2,a2,1
    1c2c:	f99ff06f          	j	1bc4 <display_putchar+0xb4>
    1c30:	7943c503          	lbu	a0,1940(t2) # 5794 <back_color>
    1c34:	fc9ff06f          	j	1bfc <display_putchar+0xec>
    1c38:	79c72783          	lw	a5,1948(a4)
    1c3c:	07f00693          	li	a3,127
    1c40:	00578793          	addi	a5,a5,5
    1c44:	00f6c663          	blt	a3,a5,1c50 <display_putchar+0x140>
    1c48:	78f72e23          	sw	a5,1948(a4)
    1c4c:	0240006f          	j	1c70 <display_putchar+0x160>
    1c50:	78072e23          	sw	zero,1948(a4)
    1c54:	00005737          	lui	a4,0x5
    1c58:	79872783          	lw	a5,1944(a4) # 5798 <cursor_y>
    1c5c:	00878793          	addi	a5,a5,8
    1c60:	78f72c23          	sw	a5,1944(a4)
    1c64:	00f6d663          	bge	a3,a5,1c70 <display_putchar+0x160>
    1c68:	000057b7          	lui	a5,0x5
    1c6c:	7807ac23          	sw	zero,1944(a5) # 5798 <cursor_y>
    1c70:	00c12403          	lw	s0,12(sp)
    1c74:	00812483          	lw	s1,8(sp)
    1c78:	01010113          	addi	sp,sp,16
    1c7c:	00008067          	ret

00001c80 <display_refresh>:
    1c80:	00008067          	ret

00001c84 <print_string>:
    1c84:	ff010113          	addi	sp,sp,-16
    1c88:	00812423          	sw	s0,8(sp)
    1c8c:	00912223          	sw	s1,4(sp)
    1c90:	00112623          	sw	ra,12(sp)
    1c94:	00050413          	mv	s0,a0
    1c98:	000054b7          	lui	s1,0x5
    1c9c:	00044503          	lbu	a0,0(s0)
    1ca0:	00051c63          	bnez	a0,1cb8 <print_string+0x34>
    1ca4:	00c12083          	lw	ra,12(sp)
    1ca8:	00812403          	lw	s0,8(sp)
    1cac:	00412483          	lw	s1,4(sp)
    1cb0:	01010113          	addi	sp,sp,16
    1cb4:	00008067          	ret
    1cb8:	7a04a783          	lw	a5,1952(s1) # 57a0 <f_putchar>
    1cbc:	00140413          	addi	s0,s0,1
    1cc0:	000780e7          	jalr	a5
    1cc4:	fd9ff06f          	j	1c9c <print_string+0x18>

00001cc8 <print_dec>:
    1cc8:	ef010113          	addi	sp,sp,-272
    1ccc:	10812423          	sw	s0,264(sp)
    1cd0:	10912223          	sw	s1,260(sp)
    1cd4:	10112623          	sw	ra,268(sp)
    1cd8:	11212023          	sw	s2,256(sp)
    1cdc:	00050413          	mv	s0,a0
    1ce0:	000054b7          	lui	s1,0x5
    1ce4:	08045063          	bgez	s0,1d64 <print_dec+0x9c>
    1ce8:	7a04a783          	lw	a5,1952(s1) # 57a0 <f_putchar>
    1cec:	02d00513          	li	a0,45
    1cf0:	40800433          	neg	s0,s0
    1cf4:	000780e7          	jalr	a5
    1cf8:	fedff06f          	j	1ce4 <print_dec+0x1c>
    1cfc:	00040513          	mv	a0,s0
    1d00:	00a00593          	li	a1,10
    1d04:	00000097          	auipc	ra,0x0
    1d08:	a20080e7          	jalr	-1504(ra) # 1724 <__divsi3>
    1d0c:	00251793          	slli	a5,a0,0x2
    1d10:	00f507b3          	add	a5,a0,a5
    1d14:	00179793          	slli	a5,a5,0x1
    1d18:	40f40433          	sub	s0,s0,a5
    1d1c:	00148493          	addi	s1,s1,1
    1d20:	fe848fa3          	sb	s0,-1(s1)
    1d24:	00050413          	mv	s0,a0
    1d28:	fc041ae3          	bnez	s0,1cfc <print_dec+0x34>
    1d2c:	fd2488e3          	beq	s1,s2,1cfc <print_dec+0x34>
    1d30:	00005437          	lui	s0,0x5
    1d34:	fff4c503          	lbu	a0,-1(s1)
    1d38:	7a042783          	lw	a5,1952(s0) # 57a0 <f_putchar>
    1d3c:	fff48493          	addi	s1,s1,-1
    1d40:	03050513          	addi	a0,a0,48
    1d44:	000780e7          	jalr	a5
    1d48:	ff2496e3          	bne	s1,s2,1d34 <print_dec+0x6c>
    1d4c:	10c12083          	lw	ra,268(sp)
    1d50:	10812403          	lw	s0,264(sp)
    1d54:	10412483          	lw	s1,260(sp)
    1d58:	10012903          	lw	s2,256(sp)
    1d5c:	11010113          	addi	sp,sp,272
    1d60:	00008067          	ret
    1d64:	00010493          	mv	s1,sp
    1d68:	00048913          	mv	s2,s1
    1d6c:	fbdff06f          	j	1d28 <print_dec+0x60>

00001d70 <print_hex_digits>:
    1d70:	fe010113          	addi	sp,sp,-32
    1d74:	00812c23          	sw	s0,24(sp)
    1d78:	01212823          	sw	s2,16(sp)
    1d7c:	fff58413          	addi	s0,a1,-1
    1d80:	00005937          	lui	s2,0x5
    1d84:	00912a23          	sw	s1,20(sp)
    1d88:	01312623          	sw	s3,12(sp)
    1d8c:	00112e23          	sw	ra,28(sp)
    1d90:	00050493          	mv	s1,a0
    1d94:	00241413          	slli	s0,s0,0x2
    1d98:	53090913          	addi	s2,s2,1328 # 5530 <LEDS+0x98>
    1d9c:	000059b7          	lui	s3,0x5
    1da0:	02045063          	bgez	s0,1dc0 <print_hex_digits+0x50>
    1da4:	01c12083          	lw	ra,28(sp)
    1da8:	01812403          	lw	s0,24(sp)
    1dac:	01412483          	lw	s1,20(sp)
    1db0:	01012903          	lw	s2,16(sp)
    1db4:	00c12983          	lw	s3,12(sp)
    1db8:	02010113          	addi	sp,sp,32
    1dbc:	00008067          	ret
    1dc0:	0084d7b3          	srl	a5,s1,s0
    1dc4:	00f7f793          	andi	a5,a5,15
    1dc8:	00f907b3          	add	a5,s2,a5
    1dcc:	7a09a703          	lw	a4,1952(s3) # 57a0 <f_putchar>
    1dd0:	0007c503          	lbu	a0,0(a5)
    1dd4:	ffc40413          	addi	s0,s0,-4
    1dd8:	000700e7          	jalr	a4
    1ddc:	fc5ff06f          	j	1da0 <print_hex_digits+0x30>

00001de0 <print_hex>:
    1de0:	00800593          	li	a1,8
    1de4:	00000317          	auipc	t1,0x0
    1de8:	f8c30067          	jr	-116(t1) # 1d70 <print_hex_digits>

00001dec <printf>:
    1dec:	fb010113          	addi	sp,sp,-80
    1df0:	04f12223          	sw	a5,68(sp)
    1df4:	03410793          	addi	a5,sp,52
    1df8:	02812423          	sw	s0,40(sp)
    1dfc:	02912223          	sw	s1,36(sp)
    1e00:	03212023          	sw	s2,32(sp)
    1e04:	01312e23          	sw	s3,28(sp)
    1e08:	01412c23          	sw	s4,24(sp)
    1e0c:	01512a23          	sw	s5,20(sp)
    1e10:	01612823          	sw	s6,16(sp)
    1e14:	02112623          	sw	ra,44(sp)
    1e18:	00050413          	mv	s0,a0
    1e1c:	02b12a23          	sw	a1,52(sp)
    1e20:	02c12c23          	sw	a2,56(sp)
    1e24:	02d12e23          	sw	a3,60(sp)
    1e28:	04e12023          	sw	a4,64(sp)
    1e2c:	05012423          	sw	a6,72(sp)
    1e30:	05112623          	sw	a7,76(sp)
    1e34:	00f12623          	sw	a5,12(sp)
    1e38:	02500913          	li	s2,37
    1e3c:	000054b7          	lui	s1,0x5
    1e40:	07300993          	li	s3,115
    1e44:	07800a13          	li	s4,120
    1e48:	06400a93          	li	s5,100
    1e4c:	06300b13          	li	s6,99
    1e50:	00044503          	lbu	a0,0(s0)
    1e54:	02051663          	bnez	a0,1e80 <printf+0x94>
    1e58:	02c12083          	lw	ra,44(sp)
    1e5c:	02812403          	lw	s0,40(sp)
    1e60:	02412483          	lw	s1,36(sp)
    1e64:	02012903          	lw	s2,32(sp)
    1e68:	01c12983          	lw	s3,28(sp)
    1e6c:	01812a03          	lw	s4,24(sp)
    1e70:	01412a83          	lw	s5,20(sp)
    1e74:	01012b03          	lw	s6,16(sp)
    1e78:	05010113          	addi	sp,sp,80
    1e7c:	00008067          	ret
    1e80:	09251863          	bne	a0,s2,1f10 <printf+0x124>
    1e84:	00144503          	lbu	a0,1(s0)
    1e88:	03351463          	bne	a0,s3,1eb0 <printf+0xc4>
    1e8c:	00c12783          	lw	a5,12(sp)
    1e90:	0007a503          	lw	a0,0(a5)
    1e94:	00478713          	addi	a4,a5,4
    1e98:	00e12623          	sw	a4,12(sp)
    1e9c:	00000097          	auipc	ra,0x0
    1ea0:	de8080e7          	jalr	-536(ra) # 1c84 <print_string>
    1ea4:	00140413          	addi	s0,s0,1
    1ea8:	00140413          	addi	s0,s0,1
    1eac:	fa5ff06f          	j	1e50 <printf+0x64>
    1eb0:	03451063          	bne	a0,s4,1ed0 <printf+0xe4>
    1eb4:	00c12783          	lw	a5,12(sp)
    1eb8:	0007a503          	lw	a0,0(a5)
    1ebc:	00478713          	addi	a4,a5,4
    1ec0:	00e12623          	sw	a4,12(sp)
    1ec4:	00000097          	auipc	ra,0x0
    1ec8:	f1c080e7          	jalr	-228(ra) # 1de0 <print_hex>
    1ecc:	fd9ff06f          	j	1ea4 <printf+0xb8>
    1ed0:	03551063          	bne	a0,s5,1ef0 <printf+0x104>
    1ed4:	00c12783          	lw	a5,12(sp)
    1ed8:	0007a503          	lw	a0,0(a5)
    1edc:	00478713          	addi	a4,a5,4
    1ee0:	00e12623          	sw	a4,12(sp)
    1ee4:	00000097          	auipc	ra,0x0
    1ee8:	de4080e7          	jalr	-540(ra) # 1cc8 <print_dec>
    1eec:	fb9ff06f          	j	1ea4 <printf+0xb8>
    1ef0:	7a04a783          	lw	a5,1952(s1) # 57a0 <f_putchar>
    1ef4:	01651a63          	bne	a0,s6,1f08 <printf+0x11c>
    1ef8:	00c12703          	lw	a4,12(sp)
    1efc:	00072503          	lw	a0,0(a4)
    1f00:	00470693          	addi	a3,a4,4
    1f04:	00d12623          	sw	a3,12(sp)
    1f08:	000780e7          	jalr	a5
    1f0c:	f99ff06f          	j	1ea4 <printf+0xb8>
    1f10:	7a04a783          	lw	a5,1952(s1)
    1f14:	000780e7          	jalr	a5
    1f18:	f91ff06f          	j	1ea8 <printf+0xbc>

00001f1c <__mulsi3>:
    1f1c:	00050793          	mv	a5,a0
    1f20:	00000513          	li	a0,0
    1f24:	00079463          	bnez	a5,1f2c <__mulsi3+0x10>
    1f28:	00008067          	ret
    1f2c:	0017f713          	andi	a4,a5,1
    1f30:	00070463          	beqz	a4,1f38 <__mulsi3+0x1c>
    1f34:	00b50533          	add	a0,a0,a1
    1f38:	0017d793          	srli	a5,a5,0x1
    1f3c:	00159593          	slli	a1,a1,0x1
    1f40:	fe5ff06f          	j	1f24 <__mulsi3+0x8>

00001f44 <fat_list_insert_last>:
    1f44:	00452783          	lw	a5,4(a0)
    1f48:	04079263          	bnez	a5,1f8c <fat_list_insert_last+0x48>
    1f4c:	00052783          	lw	a5,0(a0)
    1f50:	00079c63          	bnez	a5,1f68 <fat_list_insert_last+0x24>
    1f54:	00b52023          	sw	a1,0(a0)
    1f58:	00b52223          	sw	a1,4(a0)
    1f5c:	0005a023          	sw	zero,0(a1)
    1f60:	0005a223          	sw	zero,4(a1)
    1f64:	00008067          	ret
    1f68:	0007a703          	lw	a4,0(a5)
    1f6c:	00f5a223          	sw	a5,4(a1)
    1f70:	00e5a023          	sw	a4,0(a1)
    1f74:	00071863          	bnez	a4,1f84 <fat_list_insert_last+0x40>
    1f78:	00b52023          	sw	a1,0(a0)
    1f7c:	00b7a023          	sw	a1,0(a5)
    1f80:	00008067          	ret
    1f84:	00b72223          	sw	a1,4(a4)
    1f88:	ff5ff06f          	j	1f7c <fat_list_insert_last+0x38>
    1f8c:	0047a703          	lw	a4,4(a5)
    1f90:	00f5a023          	sw	a5,0(a1)
    1f94:	00e5a223          	sw	a4,4(a1)
    1f98:	00071863          	bnez	a4,1fa8 <fat_list_insert_last+0x64>
    1f9c:	00b52223          	sw	a1,4(a0)
    1fa0:	00b7a223          	sw	a1,4(a5)
    1fa4:	00008067          	ret
    1fa8:	00b72023          	sw	a1,0(a4)
    1fac:	ff5ff06f          	j	1fa0 <fat_list_insert_last+0x5c>

00001fb0 <FileString_StrCmpNoCase>:
    1fb0:	00050313          	mv	t1,a0
    1fb4:	00000793          	li	a5,0
    1fb8:	01900e13          	li	t3,25
    1fbc:	00c79663          	bne	a5,a2,1fc8 <FileString_StrCmpNoCase+0x18>
    1fc0:	00000513          	li	a0,0
    1fc4:	00008067          	ret
    1fc8:	00f30733          	add	a4,t1,a5
    1fcc:	00074883          	lbu	a7,0(a4)
    1fd0:	00f58733          	add	a4,a1,a5
    1fd4:	00074803          	lbu	a6,0(a4)
    1fd8:	fbf88713          	addi	a4,a7,-65
    1fdc:	0ff77713          	zext.b	a4,a4
    1fe0:	00088693          	mv	a3,a7
    1fe4:	00ee6663          	bltu	t3,a4,1ff0 <FileString_StrCmpNoCase+0x40>
    1fe8:	02088693          	addi	a3,a7,32
    1fec:	0ff6f693          	zext.b	a3,a3
    1ff0:	fbf80513          	addi	a0,a6,-65
    1ff4:	0ff57513          	zext.b	a0,a0
    1ff8:	00080713          	mv	a4,a6
    1ffc:	00ae6663          	bltu	t3,a0,2008 <FileString_StrCmpNoCase+0x58>
    2000:	02080713          	addi	a4,a6,32
    2004:	0ff77713          	zext.b	a4,a4
    2008:	40e68533          	sub	a0,a3,a4
    200c:	00e69863          	bne	a3,a4,201c <FileString_StrCmpNoCase+0x6c>
    2010:	00088663          	beqz	a7,201c <FileString_StrCmpNoCase+0x6c>
    2014:	00178793          	addi	a5,a5,1
    2018:	fa0812e3          	bnez	a6,1fbc <FileString_StrCmpNoCase+0xc>
    201c:	00008067          	ret

00002020 <FileString_GetExtension>:
    2020:	00050713          	mv	a4,a0
    2024:	00050793          	mv	a5,a0
    2028:	02e00613          	li	a2,46
    202c:	fff00513          	li	a0,-1
    2030:	0007c683          	lbu	a3,0(a5)
    2034:	00069463          	bnez	a3,203c <FileString_GetExtension+0x1c>
    2038:	00008067          	ret
    203c:	00c69463          	bne	a3,a2,2044 <FileString_GetExtension+0x24>
    2040:	40e78533          	sub	a0,a5,a4
    2044:	00178793          	addi	a5,a5,1
    2048:	fe9ff06f          	j	2030 <FileString_GetExtension+0x10>

0000204c <fatfs_fat_writeback>:
    204c:	00059663          	bnez	a1,2058 <fatfs_fat_writeback+0xc>
    2050:	00000513          	li	a0,0
    2054:	00008067          	ret
    2058:	2045a703          	lw	a4,516(a1)
    205c:	ff010113          	addi	sp,sp,-16
    2060:	00812423          	sw	s0,8(sp)
    2064:	00112623          	sw	ra,12(sp)
    2068:	00058413          	mv	s0,a1
    206c:	00070a63          	beqz	a4,2080 <fatfs_fat_writeback+0x34>
    2070:	03852683          	lw	a3,56(a0)
    2074:	00050793          	mv	a5,a0
    2078:	00069863          	bnez	a3,2088 <fatfs_fat_writeback+0x3c>
    207c:	20042223          	sw	zero,516(s0)
    2080:	00100513          	li	a0,1
    2084:	0380006f          	j	20bc <fatfs_fat_writeback+0x70>
    2088:	2005a503          	lw	a0,512(a1)
    208c:	0147a703          	lw	a4,20(a5)
    2090:	0207a583          	lw	a1,32(a5)
    2094:	00100613          	li	a2,1
    2098:	40e507b3          	sub	a5,a0,a4
    209c:	00178793          	addi	a5,a5,1
    20a0:	00f5f663          	bgeu	a1,a5,20ac <fatfs_fat_writeback+0x60>
    20a4:	00b70733          	add	a4,a4,a1
    20a8:	40a70633          	sub	a2,a4,a0
    20ac:	00040593          	mv	a1,s0
    20b0:	000680e7          	jalr	a3
    20b4:	fc0514e3          	bnez	a0,207c <fatfs_fat_writeback+0x30>
    20b8:	00000513          	li	a0,0
    20bc:	00c12083          	lw	ra,12(sp)
    20c0:	00812403          	lw	s0,8(sp)
    20c4:	01010113          	addi	sp,sp,16
    20c8:	00008067          	ret

000020cc <fatfs_fat_read_sector>:
    20cc:	fe010113          	addi	sp,sp,-32
    20d0:	01212823          	sw	s2,16(sp)
    20d4:	25452903          	lw	s2,596(a0)
    20d8:	00812c23          	sw	s0,24(sp)
    20dc:	00912a23          	sw	s1,20(sp)
    20e0:	01312623          	sw	s3,12(sp)
    20e4:	00112e23          	sw	ra,28(sp)
    20e8:	00050993          	mv	s3,a0
    20ec:	00058493          	mv	s1,a1
    20f0:	00000413          	li	s0,0
    20f4:	04091063          	bnez	s2,2134 <fatfs_fat_read_sector+0x68>
    20f8:	2549a783          	lw	a5,596(s3)
    20fc:	20f42623          	sw	a5,524(s0)
    2100:	20442783          	lw	a5,516(s0)
    2104:	2489aa23          	sw	s0,596(s3)
    2108:	08079863          	bnez	a5,2198 <fatfs_fat_read_sector+0xcc>
    210c:	0349a783          	lw	a5,52(s3)
    2110:	20942023          	sw	s1,512(s0)
    2114:	00100613          	li	a2,1
    2118:	00040593          	mv	a1,s0
    211c:	00048513          	mv	a0,s1
    2120:	000780e7          	jalr	a5
    2124:	08051663          	bnez	a0,21b0 <fatfs_fat_read_sector+0xe4>
    2128:	fff00793          	li	a5,-1
    212c:	20f42023          	sw	a5,512(s0)
    2130:	0480006f          	j	2178 <fatfs_fat_read_sector+0xac>
    2134:	20092783          	lw	a5,512(s2)
    2138:	00f4e663          	bltu	s1,a5,2144 <fatfs_fat_read_sector+0x78>
    213c:	00178713          	addi	a4,a5,1
    2140:	02e4e463          	bltu	s1,a4,2168 <fatfs_fat_read_sector+0x9c>
    2144:	20c92783          	lw	a5,524(s2)
    2148:	00079663          	bnez	a5,2154 <fatfs_fat_read_sector+0x88>
    214c:	00040a63          	beqz	s0,2160 <fatfs_fat_read_sector+0x94>
    2150:	20042623          	sw	zero,524(s0)
    2154:	00090413          	mv	s0,s2
    2158:	20c92903          	lw	s2,524(s2)
    215c:	f99ff06f          	j	20f4 <fatfs_fat_read_sector+0x28>
    2160:	2409aa23          	sw	zero,596(s3)
    2164:	ff1ff06f          	j	2154 <fatfs_fat_read_sector+0x88>
    2168:	40f484b3          	sub	s1,s1,a5
    216c:	00949493          	slli	s1,s1,0x9
    2170:	009904b3          	add	s1,s2,s1
    2174:	20992423          	sw	s1,520(s2)
    2178:	01c12083          	lw	ra,28(sp)
    217c:	01812403          	lw	s0,24(sp)
    2180:	01412483          	lw	s1,20(sp)
    2184:	00c12983          	lw	s3,12(sp)
    2188:	00090513          	mv	a0,s2
    218c:	01012903          	lw	s2,16(sp)
    2190:	02010113          	addi	sp,sp,32
    2194:	00008067          	ret
    2198:	00040593          	mv	a1,s0
    219c:	00098513          	mv	a0,s3
    21a0:	00000097          	auipc	ra,0x0
    21a4:	eac080e7          	jalr	-340(ra) # 204c <fatfs_fat_writeback>
    21a8:	f60512e3          	bnez	a0,210c <fatfs_fat_read_sector+0x40>
    21ac:	fcdff06f          	j	2178 <fatfs_fat_read_sector+0xac>
    21b0:	20842423          	sw	s0,520(s0)
    21b4:	00040913          	mv	s2,s0
    21b8:	fc1ff06f          	j	2178 <fatfs_fat_read_sector+0xac>

000021bc <_allocate_file>:
    21bc:	ff010113          	addi	sp,sp,-16
    21c0:	000057b7          	lui	a5,0x5
    21c4:	00812423          	sw	s0,8(sp)
    21c8:	7a47a403          	lw	s0,1956(a5) # 57a4 <_free_file_list>
    21cc:	00112623          	sw	ra,12(sp)
    21d0:	02040e63          	beqz	s0,220c <_allocate_file+0x50>
    21d4:	00042703          	lw	a4,0(s0)
    21d8:	00442683          	lw	a3,4(s0)
    21dc:	7a478793          	addi	a5,a5,1956
    21e0:	04071063          	bnez	a4,2220 <_allocate_file+0x64>
    21e4:	00d7a023          	sw	a3,0(a5)
    21e8:	00442683          	lw	a3,4(s0)
    21ec:	02069e63          	bnez	a3,2228 <_allocate_file+0x6c>
    21f0:	00e7a223          	sw	a4,4(a5)
    21f4:	00005537          	lui	a0,0x5
    21f8:	00040593          	mv	a1,s0
    21fc:	7ac50513          	addi	a0,a0,1964 # 57ac <_open_file_list>
    2200:	00000097          	auipc	ra,0x0
    2204:	d44080e7          	jalr	-700(ra) # 1f44 <fat_list_insert_last>
    2208:	bc440413          	addi	s0,s0,-1084
    220c:	00c12083          	lw	ra,12(sp)
    2210:	00040513          	mv	a0,s0
    2214:	00812403          	lw	s0,8(sp)
    2218:	01010113          	addi	sp,sp,16
    221c:	00008067          	ret
    2220:	00d72223          	sw	a3,4(a4)
    2224:	fc5ff06f          	j	21e8 <_allocate_file+0x2c>
    2228:	00e6a023          	sw	a4,0(a3)
    222c:	fc9ff06f          	j	21f4 <_allocate_file+0x38>

00002230 <_free_file>:
    2230:	43c52783          	lw	a5,1084(a0)
    2234:	44052703          	lw	a4,1088(a0)
    2238:	43c50593          	addi	a1,a0,1084
    223c:	02079663          	bnez	a5,2268 <_free_file+0x38>
    2240:	000056b7          	lui	a3,0x5
    2244:	7ae6a623          	sw	a4,1964(a3) # 57ac <_open_file_list>
    2248:	44052703          	lw	a4,1088(a0)
    224c:	02071263          	bnez	a4,2270 <_free_file+0x40>
    2250:	00005737          	lui	a4,0x5
    2254:	7af72823          	sw	a5,1968(a4) # 57b0 <_open_file_list+0x4>
    2258:	00005537          	lui	a0,0x5
    225c:	7a450513          	addi	a0,a0,1956 # 57a4 <_free_file_list>
    2260:	00000317          	auipc	t1,0x0
    2264:	ce430067          	jr	-796(t1) # 1f44 <fat_list_insert_last>
    2268:	00e7a223          	sw	a4,4(a5)
    226c:	fddff06f          	j	2248 <_free_file+0x18>
    2270:	00f72023          	sw	a5,0(a4)
    2274:	fe5ff06f          	j	2258 <_free_file+0x28>

00002278 <fatfs_lba_of_cluster>:
    2278:	ff010113          	addi	sp,sp,-16
    227c:	00812423          	sw	s0,8(sp)
    2280:	00112623          	sw	ra,12(sp)
    2284:	00050413          	mv	s0,a0
    2288:	00058513          	mv	a0,a1
    228c:	00044583          	lbu	a1,0(s0)
    2290:	ffe50513          	addi	a0,a0,-2
    2294:	00000097          	auipc	ra,0x0
    2298:	c88080e7          	jalr	-888(ra) # 1f1c <__mulsi3>
    229c:	00442783          	lw	a5,4(s0)
    22a0:	00f50533          	add	a0,a0,a5
    22a4:	03042783          	lw	a5,48(s0)
    22a8:	00079863          	bnez	a5,22b8 <fatfs_lba_of_cluster+0x40>
    22ac:	02845783          	lhu	a5,40(s0)
    22b0:	4047d793          	srai	a5,a5,0x4
    22b4:	00f50533          	add	a0,a0,a5
    22b8:	00c12083          	lw	ra,12(sp)
    22bc:	00812403          	lw	s0,8(sp)
    22c0:	01010113          	addi	sp,sp,16
    22c4:	00008067          	ret

000022c8 <fatfs_sector_read>:
    22c8:	03452783          	lw	a5,52(a0)
    22cc:	00058713          	mv	a4,a1
    22d0:	00070513          	mv	a0,a4
    22d4:	00060593          	mv	a1,a2
    22d8:	00068613          	mv	a2,a3
    22dc:	00078067          	jr	a5

000022e0 <fatfs_sector_write>:
    22e0:	03852783          	lw	a5,56(a0)
    22e4:	00058713          	mv	a4,a1
    22e8:	00070513          	mv	a0,a4
    22ec:	00060593          	mv	a1,a2
    22f0:	00068613          	mv	a2,a3
    22f4:	00078067          	jr	a5

000022f8 <fatfs_write_sector>:
    22f8:	03852783          	lw	a5,56(a0)
    22fc:	0a078863          	beqz	a5,23ac <fatfs_write_sector+0xb4>
    2300:	fe010113          	addi	sp,sp,-32
    2304:	01212823          	sw	s2,16(sp)
    2308:	00068913          	mv	s2,a3
    230c:	03052683          	lw	a3,48(a0)
    2310:	00812c23          	sw	s0,24(sp)
    2314:	00912a23          	sw	s1,20(sp)
    2318:	00112e23          	sw	ra,28(sp)
    231c:	00d5e733          	or	a4,a1,a3
    2320:	00050413          	mv	s0,a0
    2324:	00060493          	mv	s1,a2
    2328:	04071063          	bnez	a4,2368 <fatfs_write_sector+0x70>
    232c:	01052703          	lw	a4,16(a0)
    2330:	06e67063          	bgeu	a2,a4,2390 <fatfs_write_sector+0x98>
    2334:	01c52503          	lw	a0,28(a0)
    2338:	00c42703          	lw	a4,12(s0)
    233c:	00e50533          	add	a0,a0,a4
    2340:	00c50533          	add	a0,a0,a2
    2344:	02090e63          	beqz	s2,2380 <fatfs_write_sector+0x88>
    2348:	00100613          	li	a2,1
    234c:	00090593          	mv	a1,s2
    2350:	01812403          	lw	s0,24(sp)
    2354:	01c12083          	lw	ra,28(sp)
    2358:	01412483          	lw	s1,20(sp)
    235c:	01012903          	lw	s2,16(sp)
    2360:	02010113          	addi	sp,sp,32
    2364:	00078067          	jr	a5
    2368:	00f12623          	sw	a5,12(sp)
    236c:	00000097          	auipc	ra,0x0
    2370:	f0c080e7          	jalr	-244(ra) # 2278 <fatfs_lba_of_cluster>
    2374:	00c12783          	lw	a5,12(sp)
    2378:	00a48533          	add	a0,s1,a0
    237c:	fc9ff06f          	j	2344 <fatfs_write_sector+0x4c>
    2380:	24a42223          	sw	a0,580(s0)
    2384:	00100613          	li	a2,1
    2388:	04440593          	addi	a1,s0,68
    238c:	fc5ff06f          	j	2350 <fatfs_write_sector+0x58>
    2390:	01c12083          	lw	ra,28(sp)
    2394:	01812403          	lw	s0,24(sp)
    2398:	01412483          	lw	s1,20(sp)
    239c:	01012903          	lw	s2,16(sp)
    23a0:	00000513          	li	a0,0
    23a4:	02010113          	addi	sp,sp,32
    23a8:	00008067          	ret
    23ac:	00000513          	li	a0,0
    23b0:	00008067          	ret

000023b4 <fl_init>:
    23b4:	ff010113          	addi	sp,sp,-16
    23b8:	00812423          	sw	s0,8(sp)
    23bc:	00005437          	lui	s0,0x5
    23c0:	00112623          	sw	ra,12(sp)
    23c4:	7a440793          	addi	a5,s0,1956 # 57a4 <_free_file_list>
    23c8:	0007a223          	sw	zero,4(a5)
    23cc:	0007a023          	sw	zero,0(a5)
    23d0:	000075b7          	lui	a1,0x7
    23d4:	000057b7          	lui	a5,0x5
    23d8:	7ac78793          	addi	a5,a5,1964 # 57ac <_open_file_list>
    23dc:	7a440513          	addi	a0,s0,1956
    23e0:	86058593          	addi	a1,a1,-1952 # 6860 <_files+0x43c>
    23e4:	0007a223          	sw	zero,4(a5)
    23e8:	0007a023          	sw	zero,0(a5)
    23ec:	00000097          	auipc	ra,0x0
    23f0:	b58080e7          	jalr	-1192(ra) # 1f44 <fat_list_insert_last>
    23f4:	000075b7          	lui	a1,0x7
    23f8:	7a440513          	addi	a0,s0,1956
    23fc:	ca458593          	addi	a1,a1,-860 # 6ca4 <_files+0x880>
    2400:	00000097          	auipc	ra,0x0
    2404:	b44080e7          	jalr	-1212(ra) # 1f44 <fat_list_insert_last>
    2408:	00c12083          	lw	ra,12(sp)
    240c:	00812403          	lw	s0,8(sp)
    2410:	000057b7          	lui	a5,0x5
    2414:	00100713          	li	a4,1
    2418:	7ae7ac23          	sw	a4,1976(a5) # 57b8 <_filelib_init>
    241c:	01010113          	addi	sp,sp,16
    2420:	00008067          	ret

00002424 <fl_fseek>:
    2424:	000057b7          	lui	a5,0x5
    2428:	7b87a783          	lw	a5,1976(a5) # 57b8 <_filelib_init>
    242c:	fd010113          	addi	sp,sp,-48
    2430:	02812423          	sw	s0,40(sp)
    2434:	02912223          	sw	s1,36(sp)
    2438:	03212023          	sw	s2,32(sp)
    243c:	02112623          	sw	ra,44(sp)
    2440:	01312e23          	sw	s3,28(sp)
    2444:	00050413          	mv	s0,a0
    2448:	00058493          	mv	s1,a1
    244c:	00060913          	mv	s2,a2
    2450:	00079663          	bnez	a5,245c <fl_fseek+0x38>
    2454:	00000097          	auipc	ra,0x0
    2458:	f60080e7          	jalr	-160(ra) # 23b4 <fl_init>
    245c:	fff00513          	li	a0,-1
    2460:	08040463          	beqz	s0,24e8 <fl_fseek+0xc4>
    2464:	00200793          	li	a5,2
    2468:	00f91463          	bne	s2,a5,2470 <fl_fseek+0x4c>
    246c:	06049e63          	bnez	s1,24e8 <fl_fseek+0xc4>
    2470:	000067b7          	lui	a5,0x6
    2474:	fbc78713          	addi	a4,a5,-68 # 5fbc <_fs>
    2478:	03c72703          	lw	a4,60(a4)
    247c:	fbc78993          	addi	s3,a5,-68
    2480:	00070463          	beqz	a4,2488 <fl_fseek+0x64>
    2484:	000700e7          	jalr	a4
    2488:	fff00793          	li	a5,-1
    248c:	42f42823          	sw	a5,1072(s0)
    2490:	42042a23          	sw	zero,1076(s0)
    2494:	00091c63          	bnez	s2,24ac <fl_fseek+0x88>
    2498:	00c42783          	lw	a5,12(s0)
    249c:	00942423          	sw	s1,8(s0)
    24a0:	0297f863          	bgeu	a5,s1,24d0 <fl_fseek+0xac>
    24a4:	00f42423          	sw	a5,8(s0)
    24a8:	0280006f          	j	24d0 <fl_fseek+0xac>
    24ac:	00100793          	li	a5,1
    24b0:	06f91063          	bne	s2,a5,2510 <fl_fseek+0xec>
    24b4:	00842783          	lw	a5,8(s0)
    24b8:	0004c663          	bltz	s1,24c4 <fl_fseek+0xa0>
    24bc:	00f484b3          	add	s1,s1,a5
    24c0:	fd9ff06f          	j	2498 <fl_fseek+0x74>
    24c4:	40900733          	neg	a4,s1
    24c8:	02e7fe63          	bgeu	a5,a4,2504 <fl_fseek+0xe0>
    24cc:	00042423          	sw	zero,8(s0)
    24d0:	00000513          	li	a0,0
    24d4:	0409a783          	lw	a5,64(s3)
    24d8:	00078863          	beqz	a5,24e8 <fl_fseek+0xc4>
    24dc:	00a12623          	sw	a0,12(sp)
    24e0:	000780e7          	jalr	a5
    24e4:	00c12503          	lw	a0,12(sp)
    24e8:	02c12083          	lw	ra,44(sp)
    24ec:	02812403          	lw	s0,40(sp)
    24f0:	02412483          	lw	s1,36(sp)
    24f4:	02012903          	lw	s2,32(sp)
    24f8:	01c12983          	lw	s3,28(sp)
    24fc:	03010113          	addi	sp,sp,48
    2500:	00008067          	ret
    2504:	00f484b3          	add	s1,s1,a5
    2508:	00942423          	sw	s1,8(s0)
    250c:	fc5ff06f          	j	24d0 <fl_fseek+0xac>
    2510:	00200793          	li	a5,2
    2514:	fff00513          	li	a0,-1
    2518:	faf91ee3          	bne	s2,a5,24d4 <fl_fseek+0xb0>
    251c:	00c42783          	lw	a5,12(s0)
    2520:	f85ff06f          	j	24a4 <fl_fseek+0x80>

00002524 <fl_fgetpos>:
    2524:	06050663          	beqz	a0,2590 <fl_fgetpos+0x6c>
    2528:	000067b7          	lui	a5,0x6
    252c:	fbc78713          	addi	a4,a5,-68 # 5fbc <_fs>
    2530:	03c72703          	lw	a4,60(a4)
    2534:	ff010113          	addi	sp,sp,-16
    2538:	00812423          	sw	s0,8(sp)
    253c:	00912223          	sw	s1,4(sp)
    2540:	01212023          	sw	s2,0(sp)
    2544:	00112623          	sw	ra,12(sp)
    2548:	00050493          	mv	s1,a0
    254c:	00058913          	mv	s2,a1
    2550:	fbc78413          	addi	s0,a5,-68
    2554:	00070463          	beqz	a4,255c <fl_fgetpos+0x38>
    2558:	000700e7          	jalr	a4
    255c:	0084a783          	lw	a5,8(s1)
    2560:	00f92023          	sw	a5,0(s2)
    2564:	04042783          	lw	a5,64(s0)
    2568:	02079063          	bnez	a5,2588 <fl_fgetpos+0x64>
    256c:	00c12083          	lw	ra,12(sp)
    2570:	00812403          	lw	s0,8(sp)
    2574:	00412483          	lw	s1,4(sp)
    2578:	00012903          	lw	s2,0(sp)
    257c:	00000513          	li	a0,0
    2580:	01010113          	addi	sp,sp,16
    2584:	00008067          	ret
    2588:	000780e7          	jalr	a5
    258c:	fe1ff06f          	j	256c <fl_fgetpos+0x48>
    2590:	fff00513          	li	a0,-1
    2594:	00008067          	ret

00002598 <fl_ftell>:
    2598:	fe010113          	addi	sp,sp,-32
    259c:	00c10593          	addi	a1,sp,12
    25a0:	00112e23          	sw	ra,28(sp)
    25a4:	00012623          	sw	zero,12(sp)
    25a8:	00000097          	auipc	ra,0x0
    25ac:	f7c080e7          	jalr	-132(ra) # 2524 <fl_fgetpos>
    25b0:	01c12083          	lw	ra,28(sp)
    25b4:	00c12503          	lw	a0,12(sp)
    25b8:	02010113          	addi	sp,sp,32
    25bc:	00008067          	ret

000025c0 <fl_closedir>:
    25c0:	00000513          	li	a0,0
    25c4:	00008067          	ret

000025c8 <fatfs_lfn_cache_entry>:
    25c8:	0005c783          	lbu	a5,0(a1)
    25cc:	01300693          	li	a3,19
    25d0:	01f7f793          	andi	a5,a5,31
    25d4:	fff78713          	addi	a4,a5,-1
    25d8:	0ff77613          	zext.b	a2,a4
    25dc:	0ac6ea63          	bltu	a3,a2,2690 <fatfs_lfn_cache_entry+0xc8>
    25e0:	10554683          	lbu	a3,261(a0)
    25e4:	00069463          	bnez	a3,25ec <fatfs_lfn_cache_entry+0x24>
    25e8:	10f502a3          	sb	a5,261(a0)
    25ec:	00171793          	slli	a5,a4,0x1
    25f0:	00e787b3          	add	a5,a5,a4
    25f4:	0015c683          	lbu	a3,1(a1)
    25f8:	00279793          	slli	a5,a5,0x2
    25fc:	00e787b3          	add	a5,a5,a4
    2600:	00f50533          	add	a0,a0,a5
    2604:	00d50023          	sb	a3,0(a0)
    2608:	0035c783          	lbu	a5,3(a1)
    260c:	0ff00713          	li	a4,255
    2610:	02000693          	li	a3,32
    2614:	00f500a3          	sb	a5,1(a0)
    2618:	0055c783          	lbu	a5,5(a1)
    261c:	00f50123          	sb	a5,2(a0)
    2620:	0075c783          	lbu	a5,7(a1)
    2624:	00f501a3          	sb	a5,3(a0)
    2628:	0095c783          	lbu	a5,9(a1)
    262c:	00f50223          	sb	a5,4(a0)
    2630:	00e5c783          	lbu	a5,14(a1)
    2634:	00f502a3          	sb	a5,5(a0)
    2638:	0105c783          	lbu	a5,16(a1)
    263c:	00f50323          	sb	a5,6(a0)
    2640:	0125c783          	lbu	a5,18(a1)
    2644:	00f503a3          	sb	a5,7(a0)
    2648:	0145c783          	lbu	a5,20(a1)
    264c:	00f50423          	sb	a5,8(a0)
    2650:	0165c783          	lbu	a5,22(a1)
    2654:	00f504a3          	sb	a5,9(a0)
    2658:	0185c783          	lbu	a5,24(a1)
    265c:	00f50523          	sb	a5,10(a0)
    2660:	01c5c783          	lbu	a5,28(a1)
    2664:	00f505a3          	sb	a5,11(a0)
    2668:	01e5c783          	lbu	a5,30(a1)
    266c:	00f50623          	sb	a5,12(a0)
    2670:	00d00793          	li	a5,13
    2674:	00054603          	lbu	a2,0(a0)
    2678:	00e61463          	bne	a2,a4,2680 <fatfs_lfn_cache_entry+0xb8>
    267c:	00d50023          	sb	a3,0(a0)
    2680:	fff78793          	addi	a5,a5,-1
    2684:	0ff7f793          	zext.b	a5,a5
    2688:	00150513          	addi	a0,a0,1
    268c:	fe0794e3          	bnez	a5,2674 <fatfs_lfn_cache_entry+0xac>
    2690:	00008067          	ret

00002694 <fatfs_lfn_cache_get>:
    2694:	10554703          	lbu	a4,261(a0)
    2698:	01400793          	li	a5,20
    269c:	00f71663          	bne	a4,a5,26a8 <fatfs_lfn_cache_get+0x14>
    26a0:	10050223          	sb	zero,260(a0)
    26a4:	00008067          	ret
    26a8:	02070063          	beqz	a4,26c8 <fatfs_lfn_cache_get+0x34>
    26ac:	00171793          	slli	a5,a4,0x1
    26b0:	00e787b3          	add	a5,a5,a4
    26b4:	00279793          	slli	a5,a5,0x2
    26b8:	00e787b3          	add	a5,a5,a4
    26bc:	00f507b3          	add	a5,a0,a5
    26c0:	00078023          	sb	zero,0(a5)
    26c4:	00008067          	ret
    26c8:	00050023          	sb	zero,0(a0)
    26cc:	00008067          	ret

000026d0 <fatfs_entry_lfn_text>:
    26d0:	00b54503          	lbu	a0,11(a0)
    26d4:	00f57513          	andi	a0,a0,15
    26d8:	ff150513          	addi	a0,a0,-15
    26dc:	00153513          	seqz	a0,a0
    26e0:	00008067          	ret

000026e4 <fatfs_entry_lfn_invalid>:
    26e4:	00054703          	lbu	a4,0(a0)
    26e8:	00050793          	mv	a5,a0
    26ec:	02070463          	beqz	a4,2714 <fatfs_entry_lfn_invalid+0x30>
    26f0:	0e500693          	li	a3,229
    26f4:	00100513          	li	a0,1
    26f8:	02d70063          	beq	a4,a3,2718 <fatfs_entry_lfn_invalid+0x34>
    26fc:	00b7c783          	lbu	a5,11(a5)
    2700:	00800713          	li	a4,8
    2704:	00e78a63          	beq	a5,a4,2718 <fatfs_entry_lfn_invalid+0x34>
    2708:	0067f793          	andi	a5,a5,6
    270c:	00f03533          	snez	a0,a5
    2710:	00008067          	ret
    2714:	00100513          	li	a0,1
    2718:	00008067          	ret

0000271c <fatfs_entry_lfn_exists>:
    271c:	00b5c783          	lbu	a5,11(a1)
    2720:	00f00693          	li	a3,15
    2724:	00050713          	mv	a4,a0
    2728:	02d78a63          	beq	a5,a3,275c <fatfs_entry_lfn_exists+0x40>
    272c:	0005c683          	lbu	a3,0(a1)
    2730:	00000513          	li	a0,0
    2734:	02068663          	beqz	a3,2760 <fatfs_entry_lfn_exists+0x44>
    2738:	0e500613          	li	a2,229
    273c:	02c68263          	beq	a3,a2,2760 <fatfs_entry_lfn_exists+0x44>
    2740:	00800693          	li	a3,8
    2744:	00d78e63          	beq	a5,a3,2760 <fatfs_entry_lfn_exists+0x44>
    2748:	0067f793          	andi	a5,a5,6
    274c:	00079a63          	bnez	a5,2760 <fatfs_entry_lfn_exists+0x44>
    2750:	10574503          	lbu	a0,261(a4)
    2754:	00a03533          	snez	a0,a0
    2758:	00008067          	ret
    275c:	00000513          	li	a0,0
    2760:	00008067          	ret

00002764 <fatfs_entry_sfn_only>:
    2764:	00b54783          	lbu	a5,11(a0)
    2768:	00f00713          	li	a4,15
    276c:	02e78663          	beq	a5,a4,2798 <fatfs_entry_sfn_only+0x34>
    2770:	00054703          	lbu	a4,0(a0)
    2774:	00000513          	li	a0,0
    2778:	02070263          	beqz	a4,279c <fatfs_entry_sfn_only+0x38>
    277c:	0e500693          	li	a3,229
    2780:	00d70e63          	beq	a4,a3,279c <fatfs_entry_sfn_only+0x38>
    2784:	00800713          	li	a4,8
    2788:	00e78a63          	beq	a5,a4,279c <fatfs_entry_sfn_only+0x38>
    278c:	0067f793          	andi	a5,a5,6
    2790:	0017b513          	seqz	a0,a5
    2794:	00008067          	ret
    2798:	00000513          	li	a0,0
    279c:	00008067          	ret

000027a0 <fatfs_entry_is_dir>:
    27a0:	00b54503          	lbu	a0,11(a0)
    27a4:	00455513          	srli	a0,a0,0x4
    27a8:	00157513          	andi	a0,a0,1
    27ac:	00008067          	ret

000027b0 <fatfs_entry_is_file>:
    27b0:	00b54503          	lbu	a0,11(a0)
    27b4:	00555513          	srli	a0,a0,0x5
    27b8:	00157513          	andi	a0,a0,1
    27bc:	00008067          	ret

000027c0 <fatfs_lfn_entries_required>:
    27c0:	ff010113          	addi	sp,sp,-16
    27c4:	00112623          	sw	ra,12(sp)
    27c8:	fffff097          	auipc	ra,0xfffff
    27cc:	050080e7          	jalr	80(ra) # 1818 <strlen>
    27d0:	00050a63          	beqz	a0,27e4 <fatfs_lfn_entries_required+0x24>
    27d4:	00d00593          	li	a1,13
    27d8:	00c50513          	addi	a0,a0,12
    27dc:	fffff097          	auipc	ra,0xfffff
    27e0:	f48080e7          	jalr	-184(ra) # 1724 <__divsi3>
    27e4:	00c12083          	lw	ra,12(sp)
    27e8:	01010113          	addi	sp,sp,16
    27ec:	00008067          	ret

000027f0 <fatfs_filename_to_lfn>:
    27f0:	fa010113          	addi	sp,sp,-96
    27f4:	04912a23          	sw	s1,84(sp)
    27f8:	00058493          	mv	s1,a1
    27fc:	000055b7          	lui	a1,0x5
    2800:	75858593          	addi	a1,a1,1880 # 5758 <font+0x1e0>
    2804:	05212823          	sw	s2,80(sp)
    2808:	05312623          	sw	s3,76(sp)
    280c:	00060913          	mv	s2,a2
    2810:	00050993          	mv	s3,a0
    2814:	03400613          	li	a2,52
    2818:	00c10513          	addi	a0,sp,12
    281c:	04112e23          	sw	ra,92(sp)
    2820:	04812c23          	sw	s0,88(sp)
    2824:	05412423          	sw	s4,72(sp)
    2828:	05512223          	sw	s5,68(sp)
    282c:	05612023          	sw	s6,64(sp)
    2830:	00068b13          	mv	s6,a3
    2834:	fffff097          	auipc	ra,0xfffff
    2838:	fc0080e7          	jalr	-64(ra) # 17f4 <memcpy>
    283c:	00098513          	mv	a0,s3
    2840:	fffff097          	auipc	ra,0xfffff
    2844:	fd8080e7          	jalr	-40(ra) # 1818 <strlen>
    2848:	00050a93          	mv	s5,a0
    284c:	00098513          	mv	a0,s3
    2850:	00000097          	auipc	ra,0x0
    2854:	f70080e7          	jalr	-144(ra) # 27c0 <fatfs_lfn_entries_required>
    2858:	00191793          	slli	a5,s2,0x1
    285c:	012787b3          	add	a5,a5,s2
    2860:	00279793          	slli	a5,a5,0x2
    2864:	00050a13          	mv	s4,a0
    2868:	02000613          	li	a2,32
    286c:	00000593          	li	a1,0
    2870:	00048513          	mv	a0,s1
    2874:	01278433          	add	s0,a5,s2
    2878:	fffff097          	auipc	ra,0xfffff
    287c:	f60080e7          	jalr	-160(ra) # 17d8 <memset>
    2880:	00190793          	addi	a5,s2,1
    2884:	fffa0a13          	addi	s4,s4,-1
    2888:	0ff7f793          	zext.b	a5,a5
    288c:	012a1463          	bne	s4,s2,2894 <fatfs_filename_to_lfn+0xa4>
    2890:	0407e793          	ori	a5,a5,64
    2894:	00f48023          	sb	a5,0(s1)
    2898:	00f00793          	li	a5,15
    289c:	00f485a3          	sb	a5,11(s1)
    28a0:	016486a3          	sb	s6,13(s1)
    28a4:	00c10713          	addi	a4,sp,12
    28a8:	00040793          	mv	a5,s0
    28ac:	fff00613          	li	a2,-1
    28b0:	00072683          	lw	a3,0(a4)
    28b4:	00d486b3          	add	a3,s1,a3
    28b8:	0557d463          	bge	a5,s5,2900 <fatfs_filename_to_lfn+0x110>
    28bc:	00f985b3          	add	a1,s3,a5
    28c0:	0005c583          	lbu	a1,0(a1)
    28c4:	00b68023          	sb	a1,0(a3)
    28c8:	00470713          	addi	a4,a4,4
    28cc:	04010693          	addi	a3,sp,64
    28d0:	00178793          	addi	a5,a5,1
    28d4:	fcd71ee3          	bne	a4,a3,28b0 <fatfs_filename_to_lfn+0xc0>
    28d8:	05c12083          	lw	ra,92(sp)
    28dc:	05812403          	lw	s0,88(sp)
    28e0:	05412483          	lw	s1,84(sp)
    28e4:	05012903          	lw	s2,80(sp)
    28e8:	04c12983          	lw	s3,76(sp)
    28ec:	04812a03          	lw	s4,72(sp)
    28f0:	04412a83          	lw	s5,68(sp)
    28f4:	04012b03          	lw	s6,64(sp)
    28f8:	06010113          	addi	sp,sp,96
    28fc:	00008067          	ret
    2900:	01579663          	bne	a5,s5,290c <fatfs_filename_to_lfn+0x11c>
    2904:	00068023          	sb	zero,0(a3)
    2908:	fc1ff06f          	j	28c8 <fatfs_filename_to_lfn+0xd8>
    290c:	00c68023          	sb	a2,0(a3)
    2910:	00c680a3          	sb	a2,1(a3)
    2914:	fb5ff06f          	j	28c8 <fatfs_filename_to_lfn+0xd8>

00002918 <fatfs_sfn_create_entry>:
    2918:	00000793          	li	a5,0
    291c:	00b00813          	li	a6,11
    2920:	00f508b3          	add	a7,a0,a5
    2924:	0008c303          	lbu	t1,0(a7)
    2928:	00f688b3          	add	a7,a3,a5
    292c:	00178793          	addi	a5,a5,1
    2930:	00688023          	sb	t1,0(a7)
    2934:	ff0796e3          	bne	a5,a6,2920 <fatfs_sfn_create_entry+0x8>
    2938:	02000793          	li	a5,32
    293c:	00f68823          	sb	a5,16(a3)
    2940:	00f68923          	sb	a5,18(a3)
    2944:	00f68c23          	sb	a5,24(a3)
    2948:	000686a3          	sb	zero,13(a3)
    294c:	00068723          	sb	zero,14(a3)
    2950:	000687a3          	sb	zero,15(a3)
    2954:	000688a3          	sb	zero,17(a3)
    2958:	000689a3          	sb	zero,19(a3)
    295c:	00068b23          	sb	zero,22(a3)
    2960:	00068ba3          	sb	zero,23(a3)
    2964:	00068ca3          	sb	zero,25(a3)
    2968:	01000793          	li	a5,16
    296c:	00071463          	bnez	a4,2974 <fatfs_sfn_create_entry+0x5c>
    2970:	02000793          	li	a5,32
    2974:	00f685a3          	sb	a5,11(a3)
    2978:	01065793          	srli	a5,a2,0x10
    297c:	00f68a23          	sb	a5,20(a3)
    2980:	0087d793          	srli	a5,a5,0x8
    2984:	00f68aa3          	sb	a5,21(a3)
    2988:	01061793          	slli	a5,a2,0x10
    298c:	0107d793          	srli	a5,a5,0x10
    2990:	0087d793          	srli	a5,a5,0x8
    2994:	00f68da3          	sb	a5,27(a3)
    2998:	0085d793          	srli	a5,a1,0x8
    299c:	00b68e23          	sb	a1,28(a3)
    29a0:	00f68ea3          	sb	a5,29(a3)
    29a4:	0105d793          	srli	a5,a1,0x10
    29a8:	0185d593          	srli	a1,a1,0x18
    29ac:	00068623          	sb	zero,12(a3)
    29b0:	00c68d23          	sb	a2,26(a3)
    29b4:	00f68f23          	sb	a5,30(a3)
    29b8:	00b68fa3          	sb	a1,31(a3)
    29bc:	00008067          	ret

000029c0 <fatfs_lfn_create_sfn>:
    29c0:	0005c703          	lbu	a4,0(a1)
    29c4:	02e00793          	li	a5,46
    29c8:	16f70663          	beq	a4,a5,2b34 <fatfs_lfn_create_sfn+0x174>
    29cc:	fe010113          	addi	sp,sp,-32
    29d0:	00912a23          	sw	s1,20(sp)
    29d4:	00050493          	mv	s1,a0
    29d8:	00058513          	mv	a0,a1
    29dc:	00112e23          	sw	ra,28(sp)
    29e0:	00812c23          	sw	s0,24(sp)
    29e4:	01212823          	sw	s2,16(sp)
    29e8:	00058413          	mv	s0,a1
    29ec:	fffff097          	auipc	ra,0xfffff
    29f0:	e2c080e7          	jalr	-468(ra) # 1818 <strlen>
    29f4:	00b00613          	li	a2,11
    29f8:	02000593          	li	a1,32
    29fc:	00050913          	mv	s2,a0
    2a00:	00048513          	mv	a0,s1
    2a04:	fffff097          	auipc	ra,0xfffff
    2a08:	dd4080e7          	jalr	-556(ra) # 17d8 <memset>
    2a0c:	00300613          	li	a2,3
    2a10:	02000593          	li	a1,32
    2a14:	00c10513          	addi	a0,sp,12
    2a18:	fffff097          	auipc	ra,0xfffff
    2a1c:	dc0080e7          	jalr	-576(ra) # 17d8 <memset>
    2a20:	fff00713          	li	a4,-1
    2a24:	00000793          	li	a5,0
    2a28:	02e00693          	li	a3,46
    2a2c:	0d27c263          	blt	a5,s2,2af0 <fatfs_lfn_create_sfn+0x130>
    2a30:	fff00793          	li	a5,-1
    2a34:	0ef70863          	beq	a4,a5,2b24 <fatfs_lfn_create_sfn+0x164>
    2a38:	00170793          	addi	a5,a4,1
    2a3c:	00c10693          	addi	a3,sp,12
    2a40:	00470613          	addi	a2,a4,4
    2a44:	0cf61263          	bne	a2,a5,2b08 <fatfs_lfn_create_sfn+0x148>
    2a48:	00000613          	li	a2,0
    2a4c:	00000693          	li	a3,0
    2a50:	02000513          	li	a0,32
    2a54:	02e00813          	li	a6,46
    2a58:	01900893          	li	a7,25
    2a5c:	00800313          	li	t1,8
    2a60:	02e6dc63          	bge	a3,a4,2a98 <fatfs_lfn_create_sfn+0xd8>
    2a64:	00d407b3          	add	a5,s0,a3
    2a68:	0007c783          	lbu	a5,0(a5)
    2a6c:	0ca78063          	beq	a5,a0,2b2c <fatfs_lfn_create_sfn+0x16c>
    2a70:	0b078e63          	beq	a5,a6,2b2c <fatfs_lfn_create_sfn+0x16c>
    2a74:	f9f78593          	addi	a1,a5,-97
    2a78:	0ff5f593          	zext.b	a1,a1
    2a7c:	00c48e33          	add	t3,s1,a2
    2a80:	00160613          	addi	a2,a2,1
    2a84:	00b8e663          	bltu	a7,a1,2a90 <fatfs_lfn_create_sfn+0xd0>
    2a88:	fe078793          	addi	a5,a5,-32
    2a8c:	0ff7f793          	zext.b	a5,a5
    2a90:	00fe0023          	sb	a5,0(t3)
    2a94:	08661c63          	bne	a2,t1,2b2c <fatfs_lfn_create_sfn+0x16c>
    2a98:	00c10793          	addi	a5,sp,12
    2a9c:	00800693          	li	a3,8
    2aa0:	01900513          	li	a0,25
    2aa4:	00b00593          	li	a1,11
    2aa8:	0007c703          	lbu	a4,0(a5)
    2aac:	f9f70613          	addi	a2,a4,-97
    2ab0:	0ff67613          	zext.b	a2,a2
    2ab4:	00c56663          	bltu	a0,a2,2ac0 <fatfs_lfn_create_sfn+0x100>
    2ab8:	fe070713          	addi	a4,a4,-32
    2abc:	0ff77713          	zext.b	a4,a4
    2ac0:	00d48633          	add	a2,s1,a3
    2ac4:	00e60023          	sb	a4,0(a2)
    2ac8:	00168693          	addi	a3,a3,1
    2acc:	00178793          	addi	a5,a5,1
    2ad0:	fcb69ce3          	bne	a3,a1,2aa8 <fatfs_lfn_create_sfn+0xe8>
    2ad4:	01c12083          	lw	ra,28(sp)
    2ad8:	01812403          	lw	s0,24(sp)
    2adc:	01412483          	lw	s1,20(sp)
    2ae0:	01012903          	lw	s2,16(sp)
    2ae4:	00100513          	li	a0,1
    2ae8:	02010113          	addi	sp,sp,32
    2aec:	00008067          	ret
    2af0:	00f40633          	add	a2,s0,a5
    2af4:	00064603          	lbu	a2,0(a2)
    2af8:	00d61463          	bne	a2,a3,2b00 <fatfs_lfn_create_sfn+0x140>
    2afc:	00078713          	mv	a4,a5
    2b00:	00178793          	addi	a5,a5,1
    2b04:	f29ff06f          	j	2a2c <fatfs_lfn_create_sfn+0x6c>
    2b08:	0127d863          	bge	a5,s2,2b18 <fatfs_lfn_create_sfn+0x158>
    2b0c:	00f405b3          	add	a1,s0,a5
    2b10:	0005c583          	lbu	a1,0(a1)
    2b14:	00b68023          	sb	a1,0(a3)
    2b18:	00178793          	addi	a5,a5,1
    2b1c:	00168693          	addi	a3,a3,1
    2b20:	f25ff06f          	j	2a44 <fatfs_lfn_create_sfn+0x84>
    2b24:	00090713          	mv	a4,s2
    2b28:	f21ff06f          	j	2a48 <fatfs_lfn_create_sfn+0x88>
    2b2c:	00168693          	addi	a3,a3,1
    2b30:	f31ff06f          	j	2a60 <fatfs_lfn_create_sfn+0xa0>
    2b34:	00000513          	li	a0,0
    2b38:	00008067          	ret

00002b3c <fatfs_lfn_generate_tail>:
    2b3c:	000187b7          	lui	a5,0x18
    2b40:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    2b44:	16c7e463          	bltu	a5,a2,2cac <fatfs_lfn_generate_tail+0x170>
    2b48:	fa010113          	addi	sp,sp,-96
    2b4c:	04812c23          	sw	s0,88(sp)
    2b50:	04912a23          	sw	s1,84(sp)
    2b54:	05412423          	sw	s4,72(sp)
    2b58:	00050493          	mv	s1,a0
    2b5c:	00058a13          	mv	s4,a1
    2b60:	00060413          	mv	s0,a2
    2b64:	00000593          	li	a1,0
    2b68:	00c00613          	li	a2,12
    2b6c:	00410513          	addi	a0,sp,4
    2b70:	04112e23          	sw	ra,92(sp)
    2b74:	05312623          	sw	s3,76(sp)
    2b78:	05512223          	sw	s5,68(sp)
    2b7c:	03712e23          	sw	s7,60(sp)
    2b80:	05212823          	sw	s2,80(sp)
    2b84:	05612023          	sw	s6,64(sp)
    2b88:	fffff097          	auipc	ra,0xfffff
    2b8c:	c50080e7          	jalr	-944(ra) # 17d8 <memset>
    2b90:	000055b7          	lui	a1,0x5
    2b94:	07e00793          	li	a5,126
    2b98:	01100613          	li	a2,17
    2b9c:	53058593          	addi	a1,a1,1328 # 5530 <LEDS+0x98>
    2ba0:	01c10513          	addi	a0,sp,28
    2ba4:	01010993          	addi	s3,sp,16
    2ba8:	00f10223          	sb	a5,4(sp)
    2bac:	00098a93          	mv	s5,s3
    2bb0:	fffff097          	auipc	ra,0xfffff
    2bb4:	c44080e7          	jalr	-956(ra) # 17f4 <memcpy>
    2bb8:	00900b93          	li	s7,9
    2bbc:	00a00593          	li	a1,10
    2bc0:	00040513          	mv	a0,s0
    2bc4:	fffff097          	auipc	ra,0xfffff
    2bc8:	bb0080e7          	jalr	-1104(ra) # 1774 <__umodsi3>
    2bcc:	03050793          	addi	a5,a0,48
    2bd0:	00278533          	add	a0,a5,sp
    2bd4:	fec54783          	lbu	a5,-20(a0)
    2bd8:	00098913          	mv	s2,s3
    2bdc:	00040513          	mv	a0,s0
    2be0:	00a00593          	li	a1,10
    2be4:	00f98023          	sb	a5,0(s3)
    2be8:	00040b13          	mv	s6,s0
    2bec:	fffff097          	auipc	ra,0xfffff
    2bf0:	b40080e7          	jalr	-1216(ra) # 172c <__udivsi3>
    2bf4:	00198993          	addi	s3,s3,1
    2bf8:	00050413          	mv	s0,a0
    2bfc:	fd6be0e3          	bltu	s7,s6,2bbc <fatfs_lfn_generate_tail+0x80>
    2c00:	00098023          	sb	zero,0(s3)
    2c04:	00410713          	addi	a4,sp,4
    2c08:	00090793          	mv	a5,s2
    2c0c:	00170713          	addi	a4,a4,1
    2c10:	0957f663          	bgeu	a5,s5,2c9c <fatfs_lfn_generate_tail+0x160>
    2c14:	00f10713          	addi	a4,sp,15
    2c18:	00000793          	li	a5,0
    2c1c:	00e96663          	bltu	s2,a4,2c28 <fatfs_lfn_generate_tail+0xec>
    2c20:	41590933          	sub	s2,s2,s5
    2c24:	00190793          	addi	a5,s2,1
    2c28:	03078793          	addi	a5,a5,48
    2c2c:	002787b3          	add	a5,a5,sp
    2c30:	000a0593          	mv	a1,s4
    2c34:	fc078aa3          	sb	zero,-43(a5)
    2c38:	00b00613          	li	a2,11
    2c3c:	00048513          	mv	a0,s1
    2c40:	fffff097          	auipc	ra,0xfffff
    2c44:	bb4080e7          	jalr	-1100(ra) # 17f4 <memcpy>
    2c48:	00410513          	addi	a0,sp,4
    2c4c:	fffff097          	auipc	ra,0xfffff
    2c50:	bcc080e7          	jalr	-1076(ra) # 1818 <strlen>
    2c54:	40a484b3          	sub	s1,s1,a0
    2c58:	00050613          	mv	a2,a0
    2c5c:	00410593          	addi	a1,sp,4
    2c60:	00848513          	addi	a0,s1,8
    2c64:	fffff097          	auipc	ra,0xfffff
    2c68:	b90080e7          	jalr	-1136(ra) # 17f4 <memcpy>
    2c6c:	05c12083          	lw	ra,92(sp)
    2c70:	05812403          	lw	s0,88(sp)
    2c74:	05412483          	lw	s1,84(sp)
    2c78:	05012903          	lw	s2,80(sp)
    2c7c:	04c12983          	lw	s3,76(sp)
    2c80:	04812a03          	lw	s4,72(sp)
    2c84:	04412a83          	lw	s5,68(sp)
    2c88:	04012b03          	lw	s6,64(sp)
    2c8c:	03c12b83          	lw	s7,60(sp)
    2c90:	00100513          	li	a0,1
    2c94:	06010113          	addi	sp,sp,96
    2c98:	00008067          	ret
    2c9c:	0007c683          	lbu	a3,0(a5)
    2ca0:	fff78793          	addi	a5,a5,-1
    2ca4:	00d70023          	sb	a3,0(a4)
    2ca8:	f65ff06f          	j	2c0c <fatfs_lfn_generate_tail+0xd0>
    2cac:	00000513          	li	a0,0
    2cb0:	00008067          	ret

00002cb4 <fatfs_total_path_levels>:
    2cb4:	00050793          	mv	a5,a0
    2cb8:	06050463          	beqz	a0,2d20 <fatfs_total_path_levels+0x6c>
    2cbc:	00054703          	lbu	a4,0(a0)
    2cc0:	02f00693          	li	a3,47
    2cc4:	00d71863          	bne	a4,a3,2cd4 <fatfs_total_path_levels+0x20>
    2cc8:	00150793          	addi	a5,a0,1
    2ccc:	00000513          	li	a0,0
    2cd0:	0400006f          	j	2d10 <fatfs_total_path_levels+0x5c>
    2cd4:	00154683          	lbu	a3,1(a0)
    2cd8:	03a00713          	li	a4,58
    2cdc:	00e68a63          	beq	a3,a4,2cf0 <fatfs_total_path_levels+0x3c>
    2ce0:	00254683          	lbu	a3,2(a0)
    2ce4:	05c00713          	li	a4,92
    2ce8:	fff00513          	li	a0,-1
    2cec:	02e69c63          	bne	a3,a4,2d24 <fatfs_total_path_levels+0x70>
    2cf0:	00378793          	addi	a5,a5,3
    2cf4:	05c00713          	li	a4,92
    2cf8:	fd5ff06f          	j	2ccc <fatfs_total_path_levels+0x18>
    2cfc:	00178793          	addi	a5,a5,1
    2d00:	00e68663          	beq	a3,a4,2d0c <fatfs_total_path_levels+0x58>
    2d04:	0007c683          	lbu	a3,0(a5)
    2d08:	fe069ae3          	bnez	a3,2cfc <fatfs_total_path_levels+0x48>
    2d0c:	00150513          	addi	a0,a0,1
    2d10:	0007c683          	lbu	a3,0(a5)
    2d14:	fe0698e3          	bnez	a3,2d04 <fatfs_total_path_levels+0x50>
    2d18:	fff50513          	addi	a0,a0,-1
    2d1c:	00008067          	ret
    2d20:	fff00513          	li	a0,-1
    2d24:	00008067          	ret

00002d28 <fatfs_get_substring>:
    2d28:	0c050c63          	beqz	a0,2e00 <fatfs_get_substring+0xd8>
    2d2c:	fe010113          	addi	sp,sp,-32
    2d30:	00912a23          	sw	s1,20(sp)
    2d34:	00112e23          	sw	ra,28(sp)
    2d38:	00812c23          	sw	s0,24(sp)
    2d3c:	01212823          	sw	s2,16(sp)
    2d40:	01312623          	sw	s3,12(sp)
    2d44:	01412423          	sw	s4,8(sp)
    2d48:	00050793          	mv	a5,a0
    2d4c:	00068493          	mv	s1,a3
    2d50:	fff00513          	li	a0,-1
    2d54:	06d05a63          	blez	a3,2dc8 <fatfs_get_substring+0xa0>
    2d58:	0007c983          	lbu	s3,0(a5)
    2d5c:	02f00713          	li	a4,47
    2d60:	00058a13          	mv	s4,a1
    2d64:	00060913          	mv	s2,a2
    2d68:	00178413          	addi	s0,a5,1
    2d6c:	02e98463          	beq	s3,a4,2d94 <fatfs_get_substring+0x6c>
    2d70:	0017c683          	lbu	a3,1(a5)
    2d74:	03a00713          	li	a4,58
    2d78:	00e68a63          	beq	a3,a4,2d8c <fatfs_get_substring+0x64>
    2d7c:	0027c683          	lbu	a3,2(a5)
    2d80:	05c00713          	li	a4,92
    2d84:	fff00513          	li	a0,-1
    2d88:	04e69063          	bne	a3,a4,2dc8 <fatfs_get_substring+0xa0>
    2d8c:	00378413          	addi	s0,a5,3
    2d90:	05c00993          	li	s3,92
    2d94:	00040513          	mv	a0,s0
    2d98:	fffff097          	auipc	ra,0xfffff
    2d9c:	a80080e7          	jalr	-1408(ra) # 1818 <strlen>
    2da0:	00000713          	li	a4,0
    2da4:	00000693          	li	a3,0
    2da8:	00000793          	li	a5,0
    2dac:	fff48493          	addi	s1,s1,-1
    2db0:	00e905b3          	add	a1,s2,a4
    2db4:	02a7ca63          	blt	a5,a0,2de8 <fatfs_get_substring+0xc0>
    2db8:	00058023          	sb	zero,0(a1)
    2dbc:	00094503          	lbu	a0,0(s2)
    2dc0:	00153513          	seqz	a0,a0
    2dc4:	40a00533          	neg	a0,a0
    2dc8:	01c12083          	lw	ra,28(sp)
    2dcc:	01812403          	lw	s0,24(sp)
    2dd0:	01412483          	lw	s1,20(sp)
    2dd4:	01012903          	lw	s2,16(sp)
    2dd8:	00c12983          	lw	s3,12(sp)
    2ddc:	00812a03          	lw	s4,8(sp)
    2de0:	02010113          	addi	sp,sp,32
    2de4:	00008067          	ret
    2de8:	00f40633          	add	a2,s0,a5
    2dec:	00064603          	lbu	a2,0(a2)
    2df0:	01361c63          	bne	a2,s3,2e08 <fatfs_get_substring+0xe0>
    2df4:	00168693          	addi	a3,a3,1
    2df8:	00178793          	addi	a5,a5,1
    2dfc:	fb5ff06f          	j	2db0 <fatfs_get_substring+0x88>
    2e00:	fff00513          	li	a0,-1
    2e04:	00008067          	ret
    2e08:	ff4698e3          	bne	a3,s4,2df8 <fatfs_get_substring+0xd0>
    2e0c:	fe9756e3          	bge	a4,s1,2df8 <fatfs_get_substring+0xd0>
    2e10:	00170713          	addi	a4,a4,1
    2e14:	00c58023          	sb	a2,0(a1)
    2e18:	fe1ff06f          	j	2df8 <fatfs_get_substring+0xd0>

00002e1c <fatfs_split_path>:
    2e1c:	fd010113          	addi	sp,sp,-48
    2e20:	02912223          	sw	s1,36(sp)
    2e24:	01312e23          	sw	s3,28(sp)
    2e28:	01412c23          	sw	s4,24(sp)
    2e2c:	01512a23          	sw	s5,20(sp)
    2e30:	02112623          	sw	ra,44(sp)
    2e34:	00068a93          	mv	s5,a3
    2e38:	02812423          	sw	s0,40(sp)
    2e3c:	03212023          	sw	s2,32(sp)
    2e40:	00050993          	mv	s3,a0
    2e44:	00058493          	mv	s1,a1
    2e48:	00060a13          	mv	s4,a2
    2e4c:	00e12623          	sw	a4,12(sp)
    2e50:	00000097          	auipc	ra,0x0
    2e54:	e64080e7          	jalr	-412(ra) # 2cb4 <fatfs_total_path_levels>
    2e58:	fff00793          	li	a5,-1
    2e5c:	00c12683          	lw	a3,12(sp)
    2e60:	02f51863          	bne	a0,a5,2e90 <fatfs_split_path+0x74>
    2e64:	fff00913          	li	s2,-1
    2e68:	02c12083          	lw	ra,44(sp)
    2e6c:	02812403          	lw	s0,40(sp)
    2e70:	02412483          	lw	s1,36(sp)
    2e74:	01c12983          	lw	s3,28(sp)
    2e78:	01812a03          	lw	s4,24(sp)
    2e7c:	01412a83          	lw	s5,20(sp)
    2e80:	00090513          	mv	a0,s2
    2e84:	02012903          	lw	s2,32(sp)
    2e88:	03010113          	addi	sp,sp,48
    2e8c:	00008067          	ret
    2e90:	00050593          	mv	a1,a0
    2e94:	00050413          	mv	s0,a0
    2e98:	000a8613          	mv	a2,s5
    2e9c:	00098513          	mv	a0,s3
    2ea0:	00000097          	auipc	ra,0x0
    2ea4:	e88080e7          	jalr	-376(ra) # 2d28 <fatfs_get_substring>
    2ea8:	00050913          	mv	s2,a0
    2eac:	fa051ce3          	bnez	a0,2e64 <fatfs_split_path+0x48>
    2eb0:	00041663          	bnez	s0,2ebc <fatfs_split_path+0xa0>
    2eb4:	00048023          	sb	zero,0(s1)
    2eb8:	fb1ff06f          	j	2e68 <fatfs_split_path+0x4c>
    2ebc:	00098513          	mv	a0,s3
    2ec0:	fffff097          	auipc	ra,0xfffff
    2ec4:	958080e7          	jalr	-1704(ra) # 1818 <strlen>
    2ec8:	00050413          	mv	s0,a0
    2ecc:	000a8513          	mv	a0,s5
    2ed0:	fffff097          	auipc	ra,0xfffff
    2ed4:	948080e7          	jalr	-1720(ra) # 1818 <strlen>
    2ed8:	40a40433          	sub	s0,s0,a0
    2edc:	008a5463          	bge	s4,s0,2ee4 <fatfs_split_path+0xc8>
    2ee0:	000a0413          	mv	s0,s4
    2ee4:	00048513          	mv	a0,s1
    2ee8:	00040613          	mv	a2,s0
    2eec:	00098593          	mv	a1,s3
    2ef0:	008484b3          	add	s1,s1,s0
    2ef4:	fffff097          	auipc	ra,0xfffff
    2ef8:	900080e7          	jalr	-1792(ra) # 17f4 <memcpy>
    2efc:	fe048fa3          	sb	zero,-1(s1)
    2f00:	f69ff06f          	j	2e68 <fatfs_split_path+0x4c>

00002f04 <fatfs_compare_names>:
    2f04:	fd010113          	addi	sp,sp,-48
    2f08:	02112623          	sw	ra,44(sp)
    2f0c:	02812423          	sw	s0,40(sp)
    2f10:	02912223          	sw	s1,36(sp)
    2f14:	03212023          	sw	s2,32(sp)
    2f18:	01312e23          	sw	s3,28(sp)
    2f1c:	00058913          	mv	s2,a1
    2f20:	01412c23          	sw	s4,24(sp)
    2f24:	01512a23          	sw	s5,20(sp)
    2f28:	01612823          	sw	s6,16(sp)
    2f2c:	00050a13          	mv	s4,a0
    2f30:	fffff097          	auipc	ra,0xfffff
    2f34:	0f0080e7          	jalr	240(ra) # 2020 <FileString_GetExtension>
    2f38:	00050493          	mv	s1,a0
    2f3c:	00090513          	mv	a0,s2
    2f40:	fffff097          	auipc	ra,0xfffff
    2f44:	0e0080e7          	jalr	224(ra) # 2020 <FileString_GetExtension>
    2f48:	fff00793          	li	a5,-1
    2f4c:	00050413          	mv	s0,a0
    2f50:	00000993          	li	s3,0
    2f54:	08f49a63          	bne	s1,a5,2fe8 <fatfs_compare_names+0xe4>
    2f58:	0c951e63          	bne	a0,s1,3034 <fatfs_compare_names+0x130>
    2f5c:	000a0513          	mv	a0,s4
    2f60:	fffff097          	auipc	ra,0xfffff
    2f64:	8b8080e7          	jalr	-1864(ra) # 1818 <strlen>
    2f68:	00050493          	mv	s1,a0
    2f6c:	00090513          	mv	a0,s2
    2f70:	fffff097          	auipc	ra,0xfffff
    2f74:	8a8080e7          	jalr	-1880(ra) # 1818 <strlen>
    2f78:	00050413          	mv	s0,a0
    2f7c:	fff48793          	addi	a5,s1,-1
    2f80:	00fa07b3          	add	a5,s4,a5
    2f84:	40978733          	sub	a4,a5,s1
    2f88:	02000613          	li	a2,32
    2f8c:	00078693          	mv	a3,a5
    2f90:	00e78863          	beq	a5,a4,2fa0 <fatfs_compare_names+0x9c>
    2f94:	0007c583          	lbu	a1,0(a5)
    2f98:	fff78793          	addi	a5,a5,-1
    2f9c:	0cc58263          	beq	a1,a2,3060 <fatfs_compare_names+0x15c>
    2fa0:	fff40793          	addi	a5,s0,-1
    2fa4:	00f907b3          	add	a5,s2,a5
    2fa8:	40878733          	sub	a4,a5,s0
    2fac:	02000613          	li	a2,32
    2fb0:	00078693          	mv	a3,a5
    2fb4:	00e78863          	beq	a5,a4,2fc4 <fatfs_compare_names+0xc0>
    2fb8:	0007c583          	lbu	a1,0(a5)
    2fbc:	fff78793          	addi	a5,a5,-1
    2fc0:	0ac58463          	beq	a1,a2,3068 <fatfs_compare_names+0x164>
    2fc4:	00000993          	li	s3,0
    2fc8:	06941663          	bne	s0,s1,3034 <fatfs_compare_names+0x130>
    2fcc:	00040613          	mv	a2,s0
    2fd0:	00090593          	mv	a1,s2
    2fd4:	000a0513          	mv	a0,s4
    2fd8:	fffff097          	auipc	ra,0xfffff
    2fdc:	fd8080e7          	jalr	-40(ra) # 1fb0 <FileString_StrCmpNoCase>
    2fe0:	00153993          	seqz	s3,a0
    2fe4:	0500006f          	j	3034 <fatfs_compare_names+0x130>
    2fe8:	04f50663          	beq	a0,a5,3034 <fatfs_compare_names+0x130>
    2fec:	00148a93          	addi	s5,s1,1
    2ff0:	015a0ab3          	add	s5,s4,s5
    2ff4:	00150b13          	addi	s6,a0,1
    2ff8:	000a8513          	mv	a0,s5
    2ffc:	fffff097          	auipc	ra,0xfffff
    3000:	81c080e7          	jalr	-2020(ra) # 1818 <strlen>
    3004:	01690b33          	add	s6,s2,s6
    3008:	00a12623          	sw	a0,12(sp)
    300c:	000b0513          	mv	a0,s6
    3010:	fffff097          	auipc	ra,0xfffff
    3014:	808080e7          	jalr	-2040(ra) # 1818 <strlen>
    3018:	00c12603          	lw	a2,12(sp)
    301c:	00a61c63          	bne	a2,a0,3034 <fatfs_compare_names+0x130>
    3020:	000b0593          	mv	a1,s6
    3024:	000a8513          	mv	a0,s5
    3028:	fffff097          	auipc	ra,0xfffff
    302c:	f88080e7          	jalr	-120(ra) # 1fb0 <FileString_StrCmpNoCase>
    3030:	f40506e3          	beqz	a0,2f7c <fatfs_compare_names+0x78>
    3034:	02c12083          	lw	ra,44(sp)
    3038:	02812403          	lw	s0,40(sp)
    303c:	02412483          	lw	s1,36(sp)
    3040:	02012903          	lw	s2,32(sp)
    3044:	01812a03          	lw	s4,24(sp)
    3048:	01412a83          	lw	s5,20(sp)
    304c:	01012b03          	lw	s6,16(sp)
    3050:	00098513          	mv	a0,s3
    3054:	01c12983          	lw	s3,28(sp)
    3058:	03010113          	addi	sp,sp,48
    305c:	00008067          	ret
    3060:	414684b3          	sub	s1,a3,s4
    3064:	f29ff06f          	j	2f8c <fatfs_compare_names+0x88>
    3068:	41268433          	sub	s0,a3,s2
    306c:	f45ff06f          	j	2fb0 <fatfs_compare_names+0xac>

00003070 <_check_file_open>:
    3070:	fe010113          	addi	sp,sp,-32
    3074:	000057b7          	lui	a5,0x5
    3078:	00812c23          	sw	s0,24(sp)
    307c:	7ac7a403          	lw	s0,1964(a5) # 57ac <_open_file_list>
    3080:	00912a23          	sw	s1,20(sp)
    3084:	01212823          	sw	s2,16(sp)
    3088:	01312623          	sw	s3,12(sp)
    308c:	00112e23          	sw	ra,28(sp)
    3090:	00050493          	mv	s1,a0
    3094:	01450913          	addi	s2,a0,20
    3098:	11850993          	addi	s3,a0,280
    309c:	02041263          	bnez	s0,30c0 <_check_file_open+0x50>
    30a0:	00000513          	li	a0,0
    30a4:	01c12083          	lw	ra,28(sp)
    30a8:	01812403          	lw	s0,24(sp)
    30ac:	01412483          	lw	s1,20(sp)
    30b0:	01012903          	lw	s2,16(sp)
    30b4:	00c12983          	lw	s3,12(sp)
    30b8:	02010113          	addi	sp,sp,32
    30bc:	00008067          	ret
    30c0:	bc440793          	addi	a5,s0,-1084
    30c4:	02f48663          	beq	s1,a5,30f0 <_check_file_open+0x80>
    30c8:	00090593          	mv	a1,s2
    30cc:	bd840513          	addi	a0,s0,-1064
    30d0:	00000097          	auipc	ra,0x0
    30d4:	e34080e7          	jalr	-460(ra) # 2f04 <fatfs_compare_names>
    30d8:	00050c63          	beqz	a0,30f0 <_check_file_open+0x80>
    30dc:	00098593          	mv	a1,s3
    30e0:	cdc40513          	addi	a0,s0,-804
    30e4:	00000097          	auipc	ra,0x0
    30e8:	e20080e7          	jalr	-480(ra) # 2f04 <fatfs_compare_names>
    30ec:	00051663          	bnez	a0,30f8 <_check_file_open+0x88>
    30f0:	00442403          	lw	s0,4(s0)
    30f4:	fa9ff06f          	j	309c <_check_file_open+0x2c>
    30f8:	00100513          	li	a0,1
    30fc:	fa9ff06f          	j	30a4 <_check_file_open+0x34>

00003100 <fatfs_get_sfn_display_name>:
    3100:	00000713          	li	a4,0
    3104:	00c00613          	li	a2,12
    3108:	02000813          	li	a6,32
    310c:	01900893          	li	a7,25
    3110:	0005c783          	lbu	a5,0(a1)
    3114:	00078463          	beqz	a5,311c <fatfs_get_sfn_display_name+0x1c>
    3118:	00c71863          	bne	a4,a2,3128 <fatfs_get_sfn_display_name+0x28>
    311c:	00050023          	sb	zero,0(a0)
    3120:	00100513          	li	a0,1
    3124:	00008067          	ret
    3128:	00158593          	addi	a1,a1,1
    312c:	ff0782e3          	beq	a5,a6,3110 <fatfs_get_sfn_display_name+0x10>
    3130:	fbf78693          	addi	a3,a5,-65
    3134:	0ff6f693          	zext.b	a3,a3
    3138:	00d8e663          	bltu	a7,a3,3144 <fatfs_get_sfn_display_name+0x44>
    313c:	02078793          	addi	a5,a5,32
    3140:	0ff7f793          	zext.b	a5,a5
    3144:	00f50023          	sb	a5,0(a0)
    3148:	00170713          	addi	a4,a4,1
    314c:	00150513          	addi	a0,a0,1
    3150:	fc1ff06f          	j	3110 <fatfs_get_sfn_display_name+0x10>

00003154 <fatfs_fat_init>:
    3154:	ff010113          	addi	sp,sp,-16
    3158:	00812423          	sw	s0,8(sp)
    315c:	00912223          	sw	s1,4(sp)
    3160:	00112623          	sw	ra,12(sp)
    3164:	fff00793          	li	a5,-1
    3168:	25850493          	addi	s1,a0,600
    316c:	00050413          	mv	s0,a0
    3170:	44f52c23          	sw	a5,1112(a0)
    3174:	24052a23          	sw	zero,596(a0)
    3178:	44052e23          	sw	zero,1116(a0)
    317c:	20000613          	li	a2,512
    3180:	00048513          	mv	a0,s1
    3184:	00000593          	li	a1,0
    3188:	ffffe097          	auipc	ra,0xffffe
    318c:	650080e7          	jalr	1616(ra) # 17d8 <memset>
    3190:	25442783          	lw	a5,596(s0)
    3194:	00c12083          	lw	ra,12(sp)
    3198:	24942a23          	sw	s1,596(s0)
    319c:	46042023          	sw	zero,1120(s0)
    31a0:	46f42223          	sw	a5,1124(s0)
    31a4:	00812403          	lw	s0,8(sp)
    31a8:	00412483          	lw	s1,4(sp)
    31ac:	01010113          	addi	sp,sp,16
    31b0:	00008067          	ret

000031b4 <fatfs_init>:
    31b4:	fd010113          	addi	sp,sp,-48
    31b8:	02812423          	sw	s0,40(sp)
    31bc:	02112623          	sw	ra,44(sp)
    31c0:	02912223          	sw	s1,36(sp)
    31c4:	03212023          	sw	s2,32(sp)
    31c8:	01312e23          	sw	s3,28(sp)
    31cc:	fff00793          	li	a5,-1
    31d0:	24f52223          	sw	a5,580(a0)
    31d4:	24052423          	sw	zero,584(a0)
    31d8:	02052223          	sw	zero,36(a0)
    31dc:	00050413          	mv	s0,a0
    31e0:	00000097          	auipc	ra,0x0
    31e4:	f74080e7          	jalr	-140(ra) # 3154 <fatfs_fat_init>
    31e8:	03442783          	lw	a5,52(s0)
    31ec:	02079263          	bnez	a5,3210 <fatfs_init+0x5c>
    31f0:	fff00513          	li	a0,-1
    31f4:	02c12083          	lw	ra,44(sp)
    31f8:	02812403          	lw	s0,40(sp)
    31fc:	02412483          	lw	s1,36(sp)
    3200:	02012903          	lw	s2,32(sp)
    3204:	01c12983          	lw	s3,28(sp)
    3208:	03010113          	addi	sp,sp,48
    320c:	00008067          	ret
    3210:	04440593          	addi	a1,s0,68
    3214:	00100613          	li	a2,1
    3218:	00000513          	li	a0,0
    321c:	00b12623          	sw	a1,12(sp)
    3220:	000780e7          	jalr	a5
    3224:	fc0506e3          	beqz	a0,31f0 <fatfs_init+0x3c>
    3228:	24042703          	lw	a4,576(s0)
    322c:	ffff07b7          	lui	a5,0xffff0
    3230:	00c12583          	lw	a1,12(sp)
    3234:	00e7f7b3          	and	a5,a5,a4
    3238:	aa550737          	lui	a4,0xaa550
    323c:	00e78663          	beq	a5,a4,3248 <fatfs_init+0x94>
    3240:	ffd00513          	li	a0,-3
    3244:	fb1ff06f          	j	31f4 <fatfs_init+0x40>
    3248:	24245703          	lhu	a4,578(s0)
    324c:	0000b7b7          	lui	a5,0xb
    3250:	a5578793          	addi	a5,a5,-1451 # aa55 <_files+0x4631>
    3254:	ffc00513          	li	a0,-4
    3258:	f8f71ee3          	bne	a4,a5,31f4 <fatfs_init+0x40>
    325c:	20644783          	lbu	a5,518(s0)
    3260:	00600713          	li	a4,6
    3264:	02f76463          	bltu	a4,a5,328c <fatfs_init+0xd8>
    3268:	00400713          	li	a4,4
    326c:	00f76663          	bltu	a4,a5,3278 <fatfs_init+0xc4>
    3270:	00000513          	li	a0,0
    3274:	02078663          	beqz	a5,32a0 <fatfs_init+0xec>
    3278:	20c45503          	lhu	a0,524(s0)
    327c:	20a45783          	lhu	a5,522(s0)
    3280:	01051513          	slli	a0,a0,0x10
    3284:	00f56533          	or	a0,a0,a5
    3288:	0180006f          	j	32a0 <fatfs_init+0xec>
    328c:	00c00713          	li	a4,12
    3290:	12f76a63          	bltu	a4,a5,33c4 <fatfs_init+0x210>
    3294:	00a00713          	li	a4,10
    3298:	00000513          	li	a0,0
    329c:	fcf76ee3          	bltu	a4,a5,3278 <fatfs_init+0xc4>
    32a0:	03442783          	lw	a5,52(s0)
    32a4:	00a42e23          	sw	a0,28(s0)
    32a8:	00100613          	li	a2,1
    32ac:	000780e7          	jalr	a5
    32b0:	f40500e3          	beqz	a0,31f0 <fatfs_init+0x3c>
    32b4:	05044783          	lbu	a5,80(s0)
    32b8:	04f44703          	lbu	a4,79(s0)
    32bc:	ffe00513          	li	a0,-2
    32c0:	00879793          	slli	a5,a5,0x8
    32c4:	00e7e7b3          	or	a5,a5,a4
    32c8:	20000713          	li	a4,512
    32cc:	f2e794e3          	bne	a5,a4,31f4 <fatfs_init+0x40>
    32d0:	05644483          	lbu	s1,86(s0)
    32d4:	05544783          	lbu	a5,85(s0)
    32d8:	05144983          	lbu	s3,81(s0)
    32dc:	00849493          	slli	s1,s1,0x8
    32e0:	05a45583          	lhu	a1,90(s0)
    32e4:	00f4e4b3          	or	s1,s1,a5
    32e8:	01340023          	sb	s3,0(s0)
    32ec:	02941423          	sh	s1,40(s0)
    32f0:	05245903          	lhu	s2,82(s0)
    32f4:	05444503          	lbu	a0,84(s0)
    32f8:	00059463          	bnez	a1,3300 <fatfs_init+0x14c>
    32fc:	06842583          	lw	a1,104(s0)
    3300:	07042783          	lw	a5,112(s0)
    3304:	02b42023          	sw	a1,32(s0)
    3308:	00549493          	slli	s1,s1,0x5
    330c:	00f42423          	sw	a5,8(s0)
    3310:	07445783          	lhu	a5,116(s0)
    3314:	1ff48493          	addi	s1,s1,511
    3318:	4094d493          	srai	s1,s1,0x9
    331c:	00f41c23          	sh	a5,24(s0)
    3320:	fffff097          	auipc	ra,0xfffff
    3324:	bfc080e7          	jalr	-1028(ra) # 1f1c <__mulsi3>
    3328:	00a907b3          	add	a5,s2,a0
    332c:	00f42623          	sw	a5,12(s0)
    3330:	01c42783          	lw	a5,28(s0)
    3334:	24245703          	lhu	a4,578(s0)
    3338:	00942823          	sw	s1,16(s0)
    333c:	00f907b3          	add	a5,s2,a5
    3340:	00f42a23          	sw	a5,20(s0)
    3344:	00f507b3          	add	a5,a0,a5
    3348:	00f42223          	sw	a5,4(s0)
    334c:	0000b7b7          	lui	a5,0xb
    3350:	a5578793          	addi	a5,a5,-1451 # aa55 <_files+0x4631>
    3354:	eef716e3          	bne	a4,a5,3240 <fatfs_init+0x8c>
    3358:	05844783          	lbu	a5,88(s0)
    335c:	05744703          	lbu	a4,87(s0)
    3360:	00879793          	slli	a5,a5,0x8
    3364:	00e7e7b3          	or	a5,a5,a4
    3368:	00079463          	bnez	a5,3370 <fatfs_init+0x1bc>
    336c:	06442783          	lw	a5,100(s0)
    3370:	00990933          	add	s2,s2,s1
    3374:	00a90533          	add	a0,s2,a0
    3378:	40a787b3          	sub	a5,a5,a0
    337c:	ffb00513          	li	a0,-5
    3380:	e6098ae3          	beqz	s3,31f4 <fatfs_init+0x40>
    3384:	00078513          	mv	a0,a5
    3388:	00098593          	mv	a1,s3
    338c:	ffffe097          	auipc	ra,0xffffe
    3390:	3a0080e7          	jalr	928(ra) # 172c <__udivsi3>
    3394:	00001737          	lui	a4,0x1
    3398:	00050793          	mv	a5,a0
    339c:	ff470713          	addi	a4,a4,-12 # ff4 <sdcard_send+0x460>
    33a0:	ffb00513          	li	a0,-5
    33a4:	e4f778e3          	bgeu	a4,a5,31f4 <fatfs_init+0x40>
    33a8:	00010737          	lui	a4,0x10
    33ac:	ff470713          	addi	a4,a4,-12 # fff4 <_files+0x9bd0>
    33b0:	02f76663          	bltu	a4,a5,33dc <fatfs_init+0x228>
    33b4:	00042423          	sw	zero,8(s0)
    33b8:	02042823          	sw	zero,48(s0)
    33bc:	00000513          	li	a0,0
    33c0:	e35ff06f          	j	31f4 <fatfs_init+0x40>
    33c4:	ff278793          	addi	a5,a5,-14
    33c8:	0ff7f793          	zext.b	a5,a5
    33cc:	00100713          	li	a4,1
    33d0:	00000513          	li	a0,0
    33d4:	eaf772e3          	bgeu	a4,a5,3278 <fatfs_init+0xc4>
    33d8:	ec9ff06f          	j	32a0 <fatfs_init+0xec>
    33dc:	00100793          	li	a5,1
    33e0:	02f42823          	sw	a5,48(s0)
    33e4:	fd9ff06f          	j	33bc <fatfs_init+0x208>

000033e8 <fl_attach_media>:
    33e8:	000057b7          	lui	a5,0x5
    33ec:	7b87a783          	lw	a5,1976(a5) # 57b8 <_filelib_init>
    33f0:	ff010113          	addi	sp,sp,-16
    33f4:	00812423          	sw	s0,8(sp)
    33f8:	00912223          	sw	s1,4(sp)
    33fc:	00112623          	sw	ra,12(sp)
    3400:	00050493          	mv	s1,a0
    3404:	00058413          	mv	s0,a1
    3408:	00079663          	bnez	a5,3414 <fl_attach_media+0x2c>
    340c:	fffff097          	auipc	ra,0xfffff
    3410:	fa8080e7          	jalr	-88(ra) # 23b4 <fl_init>
    3414:	00006537          	lui	a0,0x6
    3418:	fbc50793          	addi	a5,a0,-68 # 5fbc <_fs>
    341c:	fbc50513          	addi	a0,a0,-68
    3420:	0287ac23          	sw	s0,56(a5)
    3424:	0297aa23          	sw	s1,52(a5)
    3428:	00000097          	auipc	ra,0x0
    342c:	d8c080e7          	jalr	-628(ra) # 31b4 <fatfs_init>
    3430:	00050413          	mv	s0,a0
    3434:	02050863          	beqz	a0,3464 <fl_attach_media+0x7c>
    3438:	00050593          	mv	a1,a0
    343c:	00005537          	lui	a0,0x5
    3440:	54450513          	addi	a0,a0,1348 # 5544 <LEDS+0xac>
    3444:	fffff097          	auipc	ra,0xfffff
    3448:	9a8080e7          	jalr	-1624(ra) # 1dec <printf>
    344c:	00c12083          	lw	ra,12(sp)
    3450:	00040513          	mv	a0,s0
    3454:	00812403          	lw	s0,8(sp)
    3458:	00412483          	lw	s1,4(sp)
    345c:	01010113          	addi	sp,sp,16
    3460:	00008067          	ret
    3464:	000057b7          	lui	a5,0x5
    3468:	00100713          	li	a4,1
    346c:	7ae7aa23          	sw	a4,1972(a5) # 57b4 <_filelib_valid>
    3470:	fddff06f          	j	344c <fl_attach_media+0x64>

00003474 <fatfs_fat_purge>:
    3474:	ff010113          	addi	sp,sp,-16
    3478:	00812423          	sw	s0,8(sp)
    347c:	25452403          	lw	s0,596(a0)
    3480:	00912223          	sw	s1,4(sp)
    3484:	00112623          	sw	ra,12(sp)
    3488:	00050493          	mv	s1,a0
    348c:	00041663          	bnez	s0,3498 <fatfs_fat_purge+0x24>
    3490:	00100513          	li	a0,1
    3494:	0280006f          	j	34bc <fatfs_fat_purge+0x48>
    3498:	20442783          	lw	a5,516(s0)
    349c:	00079663          	bnez	a5,34a8 <fatfs_fat_purge+0x34>
    34a0:	20c42403          	lw	s0,524(s0)
    34a4:	fe9ff06f          	j	348c <fatfs_fat_purge+0x18>
    34a8:	00040593          	mv	a1,s0
    34ac:	00048513          	mv	a0,s1
    34b0:	fffff097          	auipc	ra,0xfffff
    34b4:	b9c080e7          	jalr	-1124(ra) # 204c <fatfs_fat_writeback>
    34b8:	fe0514e3          	bnez	a0,34a0 <fatfs_fat_purge+0x2c>
    34bc:	00c12083          	lw	ra,12(sp)
    34c0:	00812403          	lw	s0,8(sp)
    34c4:	00412483          	lw	s1,4(sp)
    34c8:	01010113          	addi	sp,sp,16
    34cc:	00008067          	ret

000034d0 <fatfs_find_next_cluster>:
    34d0:	ff010113          	addi	sp,sp,-16
    34d4:	00812423          	sw	s0,8(sp)
    34d8:	01212023          	sw	s2,0(sp)
    34dc:	00112623          	sw	ra,12(sp)
    34e0:	00912223          	sw	s1,4(sp)
    34e4:	00050913          	mv	s2,a0
    34e8:	00200413          	li	s0,2
    34ec:	00058463          	beqz	a1,34f4 <fatfs_find_next_cluster+0x24>
    34f0:	00058413          	mv	s0,a1
    34f4:	03092783          	lw	a5,48(s2)
    34f8:	00745493          	srli	s1,s0,0x7
    34fc:	00079463          	bnez	a5,3504 <fatfs_find_next_cluster+0x34>
    3500:	00845493          	srli	s1,s0,0x8
    3504:	01492583          	lw	a1,20(s2)
    3508:	00090513          	mv	a0,s2
    350c:	00b485b3          	add	a1,s1,a1
    3510:	fffff097          	auipc	ra,0xfffff
    3514:	bbc080e7          	jalr	-1092(ra) # 20cc <fatfs_fat_read_sector>
    3518:	00050793          	mv	a5,a0
    351c:	fff00513          	li	a0,-1
    3520:	04078a63          	beqz	a5,3574 <fatfs_find_next_cluster+0xa4>
    3524:	03092703          	lw	a4,48(s2)
    3528:	2087a783          	lw	a5,520(a5)
    352c:	06071063          	bnez	a4,358c <fatfs_find_next_cluster+0xbc>
    3530:	00849493          	slli	s1,s1,0x8
    3534:	40940433          	sub	s0,s0,s1
    3538:	00010737          	lui	a4,0x10
    353c:	00141413          	slli	s0,s0,0x1
    3540:	ffe70713          	addi	a4,a4,-2 # fffe <_files+0x9bda>
    3544:	00e47433          	and	s0,s0,a4
    3548:	008787b3          	add	a5,a5,s0
    354c:	0017c503          	lbu	a0,1(a5)
    3550:	0007c783          	lbu	a5,0(a5)
    3554:	00851513          	slli	a0,a0,0x8
    3558:	00f50533          	add	a0,a0,a5
    355c:	ffff07b7          	lui	a5,0xffff0
    3560:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    3564:	00f507b3          	add	a5,a0,a5
    3568:	00700713          	li	a4,7
    356c:	00f76463          	bltu	a4,a5,3574 <fatfs_find_next_cluster+0xa4>
    3570:	fff00513          	li	a0,-1
    3574:	00c12083          	lw	ra,12(sp)
    3578:	00812403          	lw	s0,8(sp)
    357c:	00412483          	lw	s1,4(sp)
    3580:	00012903          	lw	s2,0(sp)
    3584:	01010113          	addi	sp,sp,16
    3588:	00008067          	ret
    358c:	00749493          	slli	s1,s1,0x7
    3590:	40940433          	sub	s0,s0,s1
    3594:	00010737          	lui	a4,0x10
    3598:	ffc70713          	addi	a4,a4,-4 # fffc <_files+0x9bd8>
    359c:	00241413          	slli	s0,s0,0x2
    35a0:	00e47433          	and	s0,s0,a4
    35a4:	008787b3          	add	a5,a5,s0
    35a8:	0037c503          	lbu	a0,3(a5)
    35ac:	0027c703          	lbu	a4,2(a5)
    35b0:	01851513          	slli	a0,a0,0x18
    35b4:	01071713          	slli	a4,a4,0x10
    35b8:	00e50533          	add	a0,a0,a4
    35bc:	0007c703          	lbu	a4,0(a5)
    35c0:	0017c783          	lbu	a5,1(a5)
    35c4:	00e50533          	add	a0,a0,a4
    35c8:	00879793          	slli	a5,a5,0x8
    35cc:	00f50533          	add	a0,a0,a5
    35d0:	00451513          	slli	a0,a0,0x4
    35d4:	00455513          	srli	a0,a0,0x4
    35d8:	f00007b7          	lui	a5,0xf0000
    35dc:	f85ff06f          	j	3560 <fatfs_find_next_cluster+0x90>

000035e0 <fatfs_sector_reader>:
    35e0:	03052783          	lw	a5,48(a0)
    35e4:	fd010113          	addi	sp,sp,-48
    35e8:	02812423          	sw	s0,40(sp)
    35ec:	03212023          	sw	s2,32(sp)
    35f0:	01312e23          	sw	s3,28(sp)
    35f4:	02112623          	sw	ra,44(sp)
    35f8:	02912223          	sw	s1,36(sp)
    35fc:	01412c23          	sw	s4,24(sp)
    3600:	01512a23          	sw	s5,20(sp)
    3604:	00f5e7b3          	or	a5,a1,a5
    3608:	00050413          	mv	s0,a0
    360c:	00060913          	mv	s2,a2
    3610:	00068993          	mv	s3,a3
    3614:	06079c63          	bnez	a5,368c <fatfs_sector_reader+0xac>
    3618:	01052783          	lw	a5,16(a0)
    361c:	02f66663          	bltu	a2,a5,3648 <fatfs_sector_reader+0x68>
    3620:	00000513          	li	a0,0
    3624:	02c12083          	lw	ra,44(sp)
    3628:	02812403          	lw	s0,40(sp)
    362c:	02412483          	lw	s1,36(sp)
    3630:	02012903          	lw	s2,32(sp)
    3634:	01c12983          	lw	s3,28(sp)
    3638:	01812a03          	lw	s4,24(sp)
    363c:	01412a83          	lw	s5,20(sp)
    3640:	03010113          	addi	sp,sp,48
    3644:	00008067          	ret
    3648:	01c52503          	lw	a0,28(a0)
    364c:	00c42783          	lw	a5,12(s0)
    3650:	00f50533          	add	a0,a0,a5
    3654:	01250533          	add	a0,a0,s2
    3658:	0a098263          	beqz	s3,36fc <fatfs_sector_reader+0x11c>
    365c:	03442783          	lw	a5,52(s0)
    3660:	00100613          	li	a2,1
    3664:	00098593          	mv	a1,s3
    3668:	02812403          	lw	s0,40(sp)
    366c:	02c12083          	lw	ra,44(sp)
    3670:	02412483          	lw	s1,36(sp)
    3674:	02012903          	lw	s2,32(sp)
    3678:	01c12983          	lw	s3,28(sp)
    367c:	01812a03          	lw	s4,24(sp)
    3680:	01412a83          	lw	s5,20(sp)
    3684:	03010113          	addi	sp,sp,48
    3688:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    368c:	00058493          	mv	s1,a1
    3690:	00054583          	lbu	a1,0(a0)
    3694:	00060513          	mv	a0,a2
    3698:	00000a93          	li	s5,0
    369c:	00b12623          	sw	a1,12(sp)
    36a0:	ffffe097          	auipc	ra,0xffffe
    36a4:	08c080e7          	jalr	140(ra) # 172c <__udivsi3>
    36a8:	00c12583          	lw	a1,12(sp)
    36ac:	00050a13          	mv	s4,a0
    36b0:	00090513          	mv	a0,s2
    36b4:	ffffe097          	auipc	ra,0xffffe
    36b8:	0c0080e7          	jalr	192(ra) # 1774 <__umodsi3>
    36bc:	00050913          	mv	s2,a0
    36c0:	034a9063          	bne	s5,s4,36e0 <fatfs_sector_reader+0x100>
    36c4:	fff00793          	li	a5,-1
    36c8:	f4f48ce3          	beq	s1,a5,3620 <fatfs_sector_reader+0x40>
    36cc:	00048593          	mv	a1,s1
    36d0:	00040513          	mv	a0,s0
    36d4:	fffff097          	auipc	ra,0xfffff
    36d8:	ba4080e7          	jalr	-1116(ra) # 2278 <fatfs_lba_of_cluster>
    36dc:	f79ff06f          	j	3654 <fatfs_sector_reader+0x74>
    36e0:	00048593          	mv	a1,s1
    36e4:	00040513          	mv	a0,s0
    36e8:	00000097          	auipc	ra,0x0
    36ec:	de8080e7          	jalr	-536(ra) # 34d0 <fatfs_find_next_cluster>
    36f0:	00050493          	mv	s1,a0
    36f4:	001a8a93          	addi	s5,s5,1
    36f8:	fc9ff06f          	j	36c0 <fatfs_sector_reader+0xe0>
    36fc:	24442783          	lw	a5,580(s0)
    3700:	00a78c63          	beq	a5,a0,3718 <fatfs_sector_reader+0x138>
    3704:	03442783          	lw	a5,52(s0)
    3708:	24a42223          	sw	a0,580(s0)
    370c:	00100613          	li	a2,1
    3710:	04440593          	addi	a1,s0,68
    3714:	f55ff06f          	j	3668 <fatfs_sector_reader+0x88>
    3718:	00100513          	li	a0,1
    371c:	f09ff06f          	j	3624 <fatfs_sector_reader+0x44>

00003720 <fatfs_get_file_entry>:
    3720:	eb010113          	addi	sp,sp,-336
    3724:	14812423          	sw	s0,328(sp)
    3728:	01810413          	addi	s0,sp,24
    372c:	14912223          	sw	s1,324(sp)
    3730:	15212023          	sw	s2,320(sp)
    3734:	13312e23          	sw	s3,316(sp)
    3738:	13412c23          	sw	s4,312(sp)
    373c:	13512a23          	sw	s5,308(sp)
    3740:	13612823          	sw	s6,304(sp)
    3744:	14112623          	sw	ra,332(sp)
    3748:	13712623          	sw	s7,300(sp)
    374c:	13812423          	sw	s8,296(sp)
    3750:	13912223          	sw	s9,292(sp)
    3754:	13a12023          	sw	s10,288(sp)
    3758:	00050493          	mv	s1,a0
    375c:	00058a93          	mv	s5,a1
    3760:	00060913          	mv	s2,a2
    3764:	00068993          	mv	s3,a3
    3768:	10010ea3          	sb	zero,285(sp)
    376c:	11c10a13          	addi	s4,sp,284
    3770:	00040b13          	mv	s6,s0
    3774:	00040513          	mv	a0,s0
    3778:	00d00613          	li	a2,13
    377c:	00000593          	li	a1,0
    3780:	00d40413          	addi	s0,s0,13
    3784:	ffffe097          	auipc	ra,0xffffe
    3788:	054080e7          	jalr	84(ra) # 17d8 <memset>
    378c:	ff4414e3          	bne	s0,s4,3774 <fatfs_get_file_entry+0x54>
    3790:	00000a13          	li	s4,0
    3794:	24448c13          	addi	s8,s1,580
    3798:	00800c93          	li	s9,8
    379c:	02000b93          	li	s7,32
    37a0:	02e00d13          	li	s10,46
    37a4:	00000693          	li	a3,0
    37a8:	000a0613          	mv	a2,s4
    37ac:	000a8593          	mv	a1,s5
    37b0:	00048513          	mv	a0,s1
    37b4:	00000097          	auipc	ra,0x0
    37b8:	e2c080e7          	jalr	-468(ra) # 35e0 <fatfs_sector_reader>
    37bc:	16050463          	beqz	a0,3924 <fatfs_get_file_entry+0x204>
    37c0:	04448413          	addi	s0,s1,68
    37c4:	00040513          	mv	a0,s0
    37c8:	fffff097          	auipc	ra,0xfffff
    37cc:	f08080e7          	jalr	-248(ra) # 26d0 <fatfs_entry_lfn_text>
    37d0:	02050263          	beqz	a0,37f4 <fatfs_get_file_entry+0xd4>
    37d4:	00040593          	mv	a1,s0
    37d8:	000b0513          	mv	a0,s6
    37dc:	fffff097          	auipc	ra,0xfffff
    37e0:	dec080e7          	jalr	-532(ra) # 25c8 <fatfs_lfn_cache_entry>
    37e4:	02040413          	addi	s0,s0,32
    37e8:	fd841ee3          	bne	s0,s8,37c4 <fatfs_get_file_entry+0xa4>
    37ec:	001a0a13          	addi	s4,s4,1
    37f0:	fb5ff06f          	j	37a4 <fatfs_get_file_entry+0x84>
    37f4:	00040513          	mv	a0,s0
    37f8:	fffff097          	auipc	ra,0xfffff
    37fc:	eec080e7          	jalr	-276(ra) # 26e4 <fatfs_entry_lfn_invalid>
    3800:	00050663          	beqz	a0,380c <fatfs_get_file_entry+0xec>
    3804:	10010ea3          	sb	zero,285(sp)
    3808:	fddff06f          	j	37e4 <fatfs_get_file_entry+0xc4>
    380c:	00040593          	mv	a1,s0
    3810:	000b0513          	mv	a0,s6
    3814:	fffff097          	auipc	ra,0xfffff
    3818:	f08080e7          	jalr	-248(ra) # 271c <fatfs_entry_lfn_exists>
    381c:	06050863          	beqz	a0,388c <fatfs_get_file_entry+0x16c>
    3820:	000b0513          	mv	a0,s6
    3824:	fffff097          	auipc	ra,0xfffff
    3828:	e70080e7          	jalr	-400(ra) # 2694 <fatfs_lfn_cache_get>
    382c:	00090593          	mv	a1,s2
    3830:	fffff097          	auipc	ra,0xfffff
    3834:	6d4080e7          	jalr	1748(ra) # 2f04 <fatfs_compare_names>
    3838:	fc0506e3          	beqz	a0,3804 <fatfs_get_file_entry+0xe4>
    383c:	02000613          	li	a2,32
    3840:	00040593          	mv	a1,s0
    3844:	00098513          	mv	a0,s3
    3848:	ffffe097          	auipc	ra,0xffffe
    384c:	fac080e7          	jalr	-84(ra) # 17f4 <memcpy>
    3850:	00100513          	li	a0,1
    3854:	14c12083          	lw	ra,332(sp)
    3858:	14812403          	lw	s0,328(sp)
    385c:	14412483          	lw	s1,324(sp)
    3860:	14012903          	lw	s2,320(sp)
    3864:	13c12983          	lw	s3,316(sp)
    3868:	13812a03          	lw	s4,312(sp)
    386c:	13412a83          	lw	s5,308(sp)
    3870:	13012b03          	lw	s6,304(sp)
    3874:	12c12b83          	lw	s7,300(sp)
    3878:	12812c03          	lw	s8,296(sp)
    387c:	12412c83          	lw	s9,292(sp)
    3880:	12012d03          	lw	s10,288(sp)
    3884:	15010113          	addi	sp,sp,336
    3888:	00008067          	ret
    388c:	00040513          	mv	a0,s0
    3890:	fffff097          	auipc	ra,0xfffff
    3894:	ed4080e7          	jalr	-300(ra) # 2764 <fatfs_entry_sfn_only>
    3898:	f40506e3          	beqz	a0,37e4 <fatfs_get_file_entry+0xc4>
    389c:	00d00613          	li	a2,13
    38a0:	00000593          	li	a1,0
    38a4:	00810513          	addi	a0,sp,8
    38a8:	ffffe097          	auipc	ra,0xffffe
    38ac:	f30080e7          	jalr	-208(ra) # 17d8 <memset>
    38b0:	00000793          	li	a5,0
    38b4:	00f406b3          	add	a3,s0,a5
    38b8:	0006c683          	lbu	a3,0(a3)
    38bc:	00810713          	addi	a4,sp,8
    38c0:	00f70733          	add	a4,a4,a5
    38c4:	00d70023          	sb	a3,0(a4)
    38c8:	00178793          	addi	a5,a5,1
    38cc:	ff9794e3          	bne	a5,s9,38b4 <fatfs_get_file_entry+0x194>
    38d0:	00844783          	lbu	a5,8(s0)
    38d4:	00944683          	lbu	a3,9(s0)
    38d8:	00100713          	li	a4,1
    38dc:	00f108a3          	sb	a5,17(sp)
    38e0:	00d10923          	sb	a3,18(sp)
    38e4:	01769663          	bne	a3,s7,38f0 <fatfs_get_file_entry+0x1d0>
    38e8:	fe078793          	addi	a5,a5,-32
    38ec:	00f03733          	snez	a4,a5
    38f0:	00a44783          	lbu	a5,10(s0)
    38f4:	00f109a3          	sb	a5,19(sp)
    38f8:	01779663          	bne	a5,s7,3904 <fatfs_get_file_entry+0x1e4>
    38fc:	02000793          	li	a5,32
    3900:	00070a63          	beqz	a4,3914 <fatfs_get_file_entry+0x1f4>
    3904:	00814703          	lbu	a4,8(sp)
    3908:	02e00793          	li	a5,46
    390c:	01a71463          	bne	a4,s10,3914 <fatfs_get_file_entry+0x1f4>
    3910:	02000793          	li	a5,32
    3914:	00f10823          	sb	a5,16(sp)
    3918:	00090593          	mv	a1,s2
    391c:	00810513          	addi	a0,sp,8
    3920:	f11ff06f          	j	3830 <fatfs_get_file_entry+0x110>
    3924:	00000513          	li	a0,0
    3928:	f2dff06f          	j	3854 <fatfs_get_file_entry+0x134>

0000392c <_open_directory>:
    392c:	eb010113          	addi	sp,sp,-336
    3930:	13512a23          	sw	s5,308(sp)
    3934:	00006ab7          	lui	s5,0x6
    3938:	fbca8793          	addi	a5,s5,-68 # 5fbc <_fs>
    393c:	14812423          	sw	s0,328(sp)
    3940:	14912223          	sw	s1,324(sp)
    3944:	15212023          	sw	s2,320(sp)
    3948:	13312e23          	sw	s3,316(sp)
    394c:	13412c23          	sw	s4,312(sp)
    3950:	13612823          	sw	s6,304(sp)
    3954:	0087a403          	lw	s0,8(a5)
    3958:	14112623          	sw	ra,332(sp)
    395c:	00050a13          	mv	s4,a0
    3960:	00058913          	mv	s2,a1
    3964:	fffff097          	auipc	ra,0xfffff
    3968:	350080e7          	jalr	848(ra) # 2cb4 <fatfs_total_path_levels>
    396c:	00050993          	mv	s3,a0
    3970:	00000493          	li	s1,0
    3974:	fff00b13          	li	s6,-1
    3978:	0099d863          	bge	s3,s1,3988 <_open_directory+0x5c>
    397c:	00892023          	sw	s0,0(s2)
    3980:	00100513          	li	a0,1
    3984:	0240006f          	j	39a8 <_open_directory+0x7c>
    3988:	10400693          	li	a3,260
    398c:	02c10613          	addi	a2,sp,44
    3990:	00048593          	mv	a1,s1
    3994:	000a0513          	mv	a0,s4
    3998:	fffff097          	auipc	ra,0xfffff
    399c:	390080e7          	jalr	912(ra) # 2d28 <fatfs_get_substring>
    39a0:	03651863          	bne	a0,s6,39d0 <_open_directory+0xa4>
    39a4:	00000513          	li	a0,0
    39a8:	14c12083          	lw	ra,332(sp)
    39ac:	14812403          	lw	s0,328(sp)
    39b0:	14412483          	lw	s1,324(sp)
    39b4:	14012903          	lw	s2,320(sp)
    39b8:	13c12983          	lw	s3,316(sp)
    39bc:	13812a03          	lw	s4,312(sp)
    39c0:	13412a83          	lw	s5,308(sp)
    39c4:	13012b03          	lw	s6,304(sp)
    39c8:	15010113          	addi	sp,sp,336
    39cc:	00008067          	ret
    39d0:	00c10693          	addi	a3,sp,12
    39d4:	02c10613          	addi	a2,sp,44
    39d8:	00040593          	mv	a1,s0
    39dc:	fbca8513          	addi	a0,s5,-68
    39e0:	00000097          	auipc	ra,0x0
    39e4:	d40080e7          	jalr	-704(ra) # 3720 <fatfs_get_file_entry>
    39e8:	fa050ee3          	beqz	a0,39a4 <_open_directory+0x78>
    39ec:	00c10513          	addi	a0,sp,12
    39f0:	fffff097          	auipc	ra,0xfffff
    39f4:	db0080e7          	jalr	-592(ra) # 27a0 <fatfs_entry_is_dir>
    39f8:	fa0506e3          	beqz	a0,39a4 <_open_directory+0x78>
    39fc:	02015403          	lhu	s0,32(sp)
    3a00:	02615783          	lhu	a5,38(sp)
    3a04:	00148493          	addi	s1,s1,1
    3a08:	01041413          	slli	s0,s0,0x10
    3a0c:	00f40433          	add	s0,s0,a5
    3a10:	f69ff06f          	j	3978 <_open_directory+0x4c>

00003a14 <fl_opendir>:
    3a14:	fe010113          	addi	sp,sp,-32
    3a18:	fff00793          	li	a5,-1
    3a1c:	00f12623          	sw	a5,12(sp)
    3a20:	000057b7          	lui	a5,0x5
    3a24:	7b87a783          	lw	a5,1976(a5) # 57b8 <_filelib_init>
    3a28:	00812c23          	sw	s0,24(sp)
    3a2c:	01212823          	sw	s2,16(sp)
    3a30:	00112e23          	sw	ra,28(sp)
    3a34:	00912a23          	sw	s1,20(sp)
    3a38:	00050913          	mv	s2,a0
    3a3c:	00058413          	mv	s0,a1
    3a40:	00079663          	bnez	a5,3a4c <fl_opendir+0x38>
    3a44:	fffff097          	auipc	ra,0xfffff
    3a48:	970080e7          	jalr	-1680(ra) # 23b4 <fl_init>
    3a4c:	000064b7          	lui	s1,0x6
    3a50:	fbc48793          	addi	a5,s1,-68 # 5fbc <_fs>
    3a54:	03c7a783          	lw	a5,60(a5)
    3a58:	fbc48493          	addi	s1,s1,-68
    3a5c:	00078463          	beqz	a5,3a64 <fl_opendir+0x50>
    3a60:	000780e7          	jalr	a5
    3a64:	00090513          	mv	a0,s2
    3a68:	fffff097          	auipc	ra,0xfffff
    3a6c:	24c080e7          	jalr	588(ra) # 2cb4 <fatfs_total_path_levels>
    3a70:	fff00793          	li	a5,-1
    3a74:	02f51063          	bne	a0,a5,3a94 <fl_opendir+0x80>
    3a78:	0084a783          	lw	a5,8(s1)
    3a7c:	00f12623          	sw	a5,12(sp)
    3a80:	00c12783          	lw	a5,12(sp)
    3a84:	00042023          	sw	zero,0(s0)
    3a88:	00040423          	sb	zero,8(s0)
    3a8c:	00f42223          	sw	a5,4(s0)
    3a90:	0180006f          	j	3aa8 <fl_opendir+0x94>
    3a94:	00c10593          	addi	a1,sp,12
    3a98:	00090513          	mv	a0,s2
    3a9c:	00000097          	auipc	ra,0x0
    3aa0:	e90080e7          	jalr	-368(ra) # 392c <_open_directory>
    3aa4:	fc051ee3          	bnez	a0,3a80 <fl_opendir+0x6c>
    3aa8:	0404a783          	lw	a5,64(s1)
    3aac:	00078463          	beqz	a5,3ab4 <fl_opendir+0xa0>
    3ab0:	000780e7          	jalr	a5
    3ab4:	00c12703          	lw	a4,12(sp)
    3ab8:	fff00793          	li	a5,-1
    3abc:	00f71463          	bne	a4,a5,3ac4 <fl_opendir+0xb0>
    3ac0:	00000413          	li	s0,0
    3ac4:	01c12083          	lw	ra,28(sp)
    3ac8:	00040513          	mv	a0,s0
    3acc:	01812403          	lw	s0,24(sp)
    3ad0:	01412483          	lw	s1,20(sp)
    3ad4:	01012903          	lw	s2,16(sp)
    3ad8:	02010113          	addi	sp,sp,32
    3adc:	00008067          	ret

00003ae0 <_open_file>:
    3ae0:	fc010113          	addi	sp,sp,-64
    3ae4:	03312623          	sw	s3,44(sp)
    3ae8:	02112e23          	sw	ra,60(sp)
    3aec:	02812c23          	sw	s0,56(sp)
    3af0:	02912a23          	sw	s1,52(sp)
    3af4:	03212823          	sw	s2,48(sp)
    3af8:	00050993          	mv	s3,a0
    3afc:	ffffe097          	auipc	ra,0xffffe
    3b00:	6c0080e7          	jalr	1728(ra) # 21bc <_allocate_file>
    3b04:	06050463          	beqz	a0,3b6c <_open_file+0x8c>
    3b08:	01450913          	addi	s2,a0,20
    3b0c:	00050413          	mv	s0,a0
    3b10:	10400613          	li	a2,260
    3b14:	00000593          	li	a1,0
    3b18:	00090513          	mv	a0,s2
    3b1c:	ffffe097          	auipc	ra,0xffffe
    3b20:	cbc080e7          	jalr	-836(ra) # 17d8 <memset>
    3b24:	11840493          	addi	s1,s0,280
    3b28:	10400613          	li	a2,260
    3b2c:	00000593          	li	a1,0
    3b30:	00048513          	mv	a0,s1
    3b34:	ffffe097          	auipc	ra,0xffffe
    3b38:	ca4080e7          	jalr	-860(ra) # 17d8 <memset>
    3b3c:	10400713          	li	a4,260
    3b40:	00048693          	mv	a3,s1
    3b44:	10400613          	li	a2,260
    3b48:	00090593          	mv	a1,s2
    3b4c:	00098513          	mv	a0,s3
    3b50:	fffff097          	auipc	ra,0xfffff
    3b54:	2cc080e7          	jalr	716(ra) # 2e1c <fatfs_split_path>
    3b58:	fff00793          	li	a5,-1
    3b5c:	02f51a63          	bne	a0,a5,3b90 <_open_file+0xb0>
    3b60:	00040513          	mv	a0,s0
    3b64:	ffffe097          	auipc	ra,0xffffe
    3b68:	6cc080e7          	jalr	1740(ra) # 2230 <_free_file>
    3b6c:	00000413          	li	s0,0
    3b70:	03c12083          	lw	ra,60(sp)
    3b74:	00040513          	mv	a0,s0
    3b78:	03812403          	lw	s0,56(sp)
    3b7c:	03412483          	lw	s1,52(sp)
    3b80:	03012903          	lw	s2,48(sp)
    3b84:	02c12983          	lw	s3,44(sp)
    3b88:	04010113          	addi	sp,sp,64
    3b8c:	00008067          	ret
    3b90:	00040513          	mv	a0,s0
    3b94:	fffff097          	auipc	ra,0xfffff
    3b98:	4dc080e7          	jalr	1244(ra) # 3070 <_check_file_open>
    3b9c:	fc0512e3          	bnez	a0,3b60 <_open_file+0x80>
    3ba0:	01444783          	lbu	a5,20(s0)
    3ba4:	08079e63          	bnez	a5,3c40 <_open_file+0x160>
    3ba8:	000067b7          	lui	a5,0x6
    3bac:	fc47a783          	lw	a5,-60(a5) # 5fc4 <_fs+0x8>
    3bb0:	00f42023          	sw	a5,0(s0)
    3bb4:	00042583          	lw	a1,0(s0)
    3bb8:	00048613          	mv	a2,s1
    3bbc:	000064b7          	lui	s1,0x6
    3bc0:	00010693          	mv	a3,sp
    3bc4:	fbc48513          	addi	a0,s1,-68 # 5fbc <_fs>
    3bc8:	00000097          	auipc	ra,0x0
    3bcc:	b58080e7          	jalr	-1192(ra) # 3720 <fatfs_get_file_entry>
    3bd0:	f80508e3          	beqz	a0,3b60 <_open_file+0x80>
    3bd4:	00010513          	mv	a0,sp
    3bd8:	fffff097          	auipc	ra,0xfffff
    3bdc:	bd8080e7          	jalr	-1064(ra) # 27b0 <fatfs_entry_is_file>
    3be0:	f80500e3          	beqz	a0,3b60 <_open_file+0x80>
    3be4:	00b00613          	li	a2,11
    3be8:	00010593          	mv	a1,sp
    3bec:	21c40513          	addi	a0,s0,540
    3bf0:	ffffe097          	auipc	ra,0xffffe
    3bf4:	c04080e7          	jalr	-1020(ra) # 17f4 <memcpy>
    3bf8:	01c12783          	lw	a5,28(sp)
    3bfc:	01a15703          	lhu	a4,26(sp)
    3c00:	00042423          	sw	zero,8(s0)
    3c04:	00f42623          	sw	a5,12(s0)
    3c08:	01415783          	lhu	a5,20(sp)
    3c0c:	42042a23          	sw	zero,1076(s0)
    3c10:	00042823          	sw	zero,16(s0)
    3c14:	01079793          	slli	a5,a5,0x10
    3c18:	00e787b3          	add	a5,a5,a4
    3c1c:	00f42223          	sw	a5,4(s0)
    3c20:	fff00793          	li	a5,-1
    3c24:	42f42823          	sw	a5,1072(s0)
    3c28:	22f42423          	sw	a5,552(s0)
    3c2c:	22f42623          	sw	a5,556(s0)
    3c30:	fbc48513          	addi	a0,s1,-68
    3c34:	00000097          	auipc	ra,0x0
    3c38:	840080e7          	jalr	-1984(ra) # 3474 <fatfs_fat_purge>
    3c3c:	f35ff06f          	j	3b70 <_open_file+0x90>
    3c40:	00040593          	mv	a1,s0
    3c44:	00090513          	mv	a0,s2
    3c48:	00000097          	auipc	ra,0x0
    3c4c:	ce4080e7          	jalr	-796(ra) # 392c <_open_directory>
    3c50:	f60512e3          	bnez	a0,3bb4 <_open_file+0xd4>
    3c54:	f0dff06f          	j	3b60 <_open_file+0x80>

00003c58 <fatfs_sfn_exists>:
    3c58:	fe010113          	addi	sp,sp,-32
    3c5c:	00912a23          	sw	s1,20(sp)
    3c60:	01212823          	sw	s2,16(sp)
    3c64:	01312623          	sw	s3,12(sp)
    3c68:	01412423          	sw	s4,8(sp)
    3c6c:	01512223          	sw	s5,4(sp)
    3c70:	00112e23          	sw	ra,28(sp)
    3c74:	00812c23          	sw	s0,24(sp)
    3c78:	00050493          	mv	s1,a0
    3c7c:	00058993          	mv	s3,a1
    3c80:	00060a13          	mv	s4,a2
    3c84:	00000913          	li	s2,0
    3c88:	24450a93          	addi	s5,a0,580
    3c8c:	00000693          	li	a3,0
    3c90:	00090613          	mv	a2,s2
    3c94:	00098593          	mv	a1,s3
    3c98:	00048513          	mv	a0,s1
    3c9c:	00000097          	auipc	ra,0x0
    3ca0:	944080e7          	jalr	-1724(ra) # 35e0 <fatfs_sector_reader>
    3ca4:	06050263          	beqz	a0,3d08 <fatfs_sfn_exists+0xb0>
    3ca8:	04448413          	addi	s0,s1,68
    3cac:	00040513          	mv	a0,s0
    3cb0:	fffff097          	auipc	ra,0xfffff
    3cb4:	a20080e7          	jalr	-1504(ra) # 26d0 <fatfs_entry_lfn_text>
    3cb8:	02051e63          	bnez	a0,3cf4 <fatfs_sfn_exists+0x9c>
    3cbc:	00040513          	mv	a0,s0
    3cc0:	fffff097          	auipc	ra,0xfffff
    3cc4:	a24080e7          	jalr	-1500(ra) # 26e4 <fatfs_entry_lfn_invalid>
    3cc8:	02051663          	bnez	a0,3cf4 <fatfs_sfn_exists+0x9c>
    3ccc:	00040513          	mv	a0,s0
    3cd0:	fffff097          	auipc	ra,0xfffff
    3cd4:	a94080e7          	jalr	-1388(ra) # 2764 <fatfs_entry_sfn_only>
    3cd8:	00050e63          	beqz	a0,3cf4 <fatfs_sfn_exists+0x9c>
    3cdc:	00b00613          	li	a2,11
    3ce0:	000a0593          	mv	a1,s4
    3ce4:	00040513          	mv	a0,s0
    3ce8:	ffffe097          	auipc	ra,0xffffe
    3cec:	b50080e7          	jalr	-1200(ra) # 1838 <strncmp>
    3cf0:	00050a63          	beqz	a0,3d04 <fatfs_sfn_exists+0xac>
    3cf4:	02040413          	addi	s0,s0,32
    3cf8:	fb541ae3          	bne	s0,s5,3cac <fatfs_sfn_exists+0x54>
    3cfc:	00190913          	addi	s2,s2,1
    3d00:	f8dff06f          	j	3c8c <fatfs_sfn_exists+0x34>
    3d04:	00100513          	li	a0,1
    3d08:	01c12083          	lw	ra,28(sp)
    3d0c:	01812403          	lw	s0,24(sp)
    3d10:	01412483          	lw	s1,20(sp)
    3d14:	01012903          	lw	s2,16(sp)
    3d18:	00c12983          	lw	s3,12(sp)
    3d1c:	00812a03          	lw	s4,8(sp)
    3d20:	00412a83          	lw	s5,4(sp)
    3d24:	02010113          	addi	sp,sp,32
    3d28:	00008067          	ret

00003d2c <fatfs_update_file_length>:
    3d2c:	03852783          	lw	a5,56(a0)
    3d30:	14078e63          	beqz	a5,3e8c <fatfs_update_file_length+0x160>
    3d34:	fd010113          	addi	sp,sp,-48
    3d38:	02912223          	sw	s1,36(sp)
    3d3c:	03212023          	sw	s2,32(sp)
    3d40:	01312e23          	sw	s3,28(sp)
    3d44:	01412c23          	sw	s4,24(sp)
    3d48:	01512a23          	sw	s5,20(sp)
    3d4c:	01612823          	sw	s6,16(sp)
    3d50:	01712623          	sw	s7,12(sp)
    3d54:	02112623          	sw	ra,44(sp)
    3d58:	02812423          	sw	s0,40(sp)
    3d5c:	00050493          	mv	s1,a0
    3d60:	00058a13          	mv	s4,a1
    3d64:	00060a93          	mv	s5,a2
    3d68:	00068913          	mv	s2,a3
    3d6c:	00000993          	li	s3,0
    3d70:	04450b93          	addi	s7,a0,68
    3d74:	24450b13          	addi	s6,a0,580
    3d78:	00000693          	li	a3,0
    3d7c:	00098613          	mv	a2,s3
    3d80:	000a0593          	mv	a1,s4
    3d84:	00048513          	mv	a0,s1
    3d88:	00000097          	auipc	ra,0x0
    3d8c:	858080e7          	jalr	-1960(ra) # 35e0 <fatfs_sector_reader>
    3d90:	0c050663          	beqz	a0,3e5c <fatfs_update_file_length+0x130>
    3d94:	000b8413          	mv	s0,s7
    3d98:	00040513          	mv	a0,s0
    3d9c:	fffff097          	auipc	ra,0xfffff
    3da0:	934080e7          	jalr	-1740(ra) # 26d0 <fatfs_entry_lfn_text>
    3da4:	0a051463          	bnez	a0,3e4c <fatfs_update_file_length+0x120>
    3da8:	00040513          	mv	a0,s0
    3dac:	fffff097          	auipc	ra,0xfffff
    3db0:	938080e7          	jalr	-1736(ra) # 26e4 <fatfs_entry_lfn_invalid>
    3db4:	08051c63          	bnez	a0,3e4c <fatfs_update_file_length+0x120>
    3db8:	00040513          	mv	a0,s0
    3dbc:	fffff097          	auipc	ra,0xfffff
    3dc0:	9a8080e7          	jalr	-1624(ra) # 2764 <fatfs_entry_sfn_only>
    3dc4:	08050463          	beqz	a0,3e4c <fatfs_update_file_length+0x120>
    3dc8:	00b00613          	li	a2,11
    3dcc:	000a8593          	mv	a1,s5
    3dd0:	00040513          	mv	a0,s0
    3dd4:	ffffe097          	auipc	ra,0xffffe
    3dd8:	a64080e7          	jalr	-1436(ra) # 1838 <strncmp>
    3ddc:	06051863          	bnez	a0,3e4c <fatfs_update_file_length+0x120>
    3de0:	00895793          	srli	a5,s2,0x8
    3de4:	01240e23          	sb	s2,28(s0)
    3de8:	00f40ea3          	sb	a5,29(s0)
    3dec:	01095793          	srli	a5,s2,0x10
    3df0:	01895913          	srli	s2,s2,0x18
    3df4:	00f40f23          	sb	a5,30(s0)
    3df8:	01240fa3          	sb	s2,31(s0)
    3dfc:	00040593          	mv	a1,s0
    3e00:	02000613          	li	a2,32
    3e04:	00040513          	mv	a0,s0
    3e08:	ffffe097          	auipc	ra,0xffffe
    3e0c:	9ec080e7          	jalr	-1556(ra) # 17f4 <memcpy>
    3e10:	02812403          	lw	s0,40(sp)
    3e14:	0384a783          	lw	a5,56(s1)
    3e18:	2444a503          	lw	a0,580(s1)
    3e1c:	02c12083          	lw	ra,44(sp)
    3e20:	02412483          	lw	s1,36(sp)
    3e24:	02012903          	lw	s2,32(sp)
    3e28:	01c12983          	lw	s3,28(sp)
    3e2c:	01812a03          	lw	s4,24(sp)
    3e30:	01412a83          	lw	s5,20(sp)
    3e34:	01012b03          	lw	s6,16(sp)
    3e38:	000b8593          	mv	a1,s7
    3e3c:	00c12b83          	lw	s7,12(sp)
    3e40:	00100613          	li	a2,1
    3e44:	03010113          	addi	sp,sp,48
    3e48:	00078067          	jr	a5
    3e4c:	02040413          	addi	s0,s0,32
    3e50:	f56414e3          	bne	s0,s6,3d98 <fatfs_update_file_length+0x6c>
    3e54:	00198993          	addi	s3,s3,1
    3e58:	f21ff06f          	j	3d78 <fatfs_update_file_length+0x4c>
    3e5c:	02c12083          	lw	ra,44(sp)
    3e60:	02812403          	lw	s0,40(sp)
    3e64:	02412483          	lw	s1,36(sp)
    3e68:	02012903          	lw	s2,32(sp)
    3e6c:	01c12983          	lw	s3,28(sp)
    3e70:	01812a03          	lw	s4,24(sp)
    3e74:	01412a83          	lw	s5,20(sp)
    3e78:	01012b03          	lw	s6,16(sp)
    3e7c:	00c12b83          	lw	s7,12(sp)
    3e80:	00000513          	li	a0,0
    3e84:	03010113          	addi	sp,sp,48
    3e88:	00008067          	ret
    3e8c:	00000513          	li	a0,0
    3e90:	00008067          	ret

00003e94 <fatfs_list_directory_next>:
    3e94:	ec010113          	addi	sp,sp,-320
    3e98:	13212823          	sw	s2,304(sp)
    3e9c:	13312623          	sw	s3,300(sp)
    3ea0:	13412423          	sw	s4,296(sp)
    3ea4:	13512223          	sw	s5,292(sp)
    3ea8:	12112e23          	sw	ra,316(sp)
    3eac:	12812c23          	sw	s0,312(sp)
    3eb0:	12912a23          	sw	s1,308(sp)
    3eb4:	00050a13          	mv	s4,a0
    3eb8:	00058913          	mv	s2,a1
    3ebc:	00060993          	mv	s3,a2
    3ec0:	10010ea3          	sb	zero,285(sp)
    3ec4:	00f00a93          	li	s5,15
    3ec8:	00092603          	lw	a2,0(s2)
    3ecc:	00492583          	lw	a1,4(s2)
    3ed0:	00000693          	li	a3,0
    3ed4:	000a0513          	mv	a0,s4
    3ed8:	fffff097          	auipc	ra,0xfffff
    3edc:	708080e7          	jalr	1800(ra) # 35e0 <fatfs_sector_reader>
    3ee0:	12050263          	beqz	a0,4004 <fatfs_list_directory_next+0x170>
    3ee4:	00894483          	lbu	s1,8(s2)
    3ee8:	00549413          	slli	s0,s1,0x5
    3eec:	04440413          	addi	s0,s0,68
    3ef0:	008a0433          	add	s0,s4,s0
    3ef4:	009afc63          	bgeu	s5,s1,3f0c <fatfs_list_directory_next+0x78>
    3ef8:	00092783          	lw	a5,0(s2)
    3efc:	00090423          	sb	zero,8(s2)
    3f00:	00178793          	addi	a5,a5,1
    3f04:	00f92023          	sw	a5,0(s2)
    3f08:	fc1ff06f          	j	3ec8 <fatfs_list_directory_next+0x34>
    3f0c:	00040513          	mv	a0,s0
    3f10:	ffffe097          	auipc	ra,0xffffe
    3f14:	7c0080e7          	jalr	1984(ra) # 26d0 <fatfs_entry_lfn_text>
    3f18:	02050263          	beqz	a0,3f3c <fatfs_list_directory_next+0xa8>
    3f1c:	00040593          	mv	a1,s0
    3f20:	01810513          	addi	a0,sp,24
    3f24:	ffffe097          	auipc	ra,0xffffe
    3f28:	6a4080e7          	jalr	1700(ra) # 25c8 <fatfs_lfn_cache_entry>
    3f2c:	00148493          	addi	s1,s1,1
    3f30:	0ff4f493          	zext.b	s1,s1
    3f34:	02040413          	addi	s0,s0,32
    3f38:	fbdff06f          	j	3ef4 <fatfs_list_directory_next+0x60>
    3f3c:	00040513          	mv	a0,s0
    3f40:	ffffe097          	auipc	ra,0xffffe
    3f44:	7a4080e7          	jalr	1956(ra) # 26e4 <fatfs_entry_lfn_invalid>
    3f48:	00050663          	beqz	a0,3f54 <fatfs_list_directory_next+0xc0>
    3f4c:	10010ea3          	sb	zero,285(sp)
    3f50:	fddff06f          	j	3f2c <fatfs_list_directory_next+0x98>
    3f54:	00040593          	mv	a1,s0
    3f58:	01810513          	addi	a0,sp,24
    3f5c:	ffffe097          	auipc	ra,0xffffe
    3f60:	7c0080e7          	jalr	1984(ra) # 271c <fatfs_entry_lfn_exists>
    3f64:	0c050263          	beqz	a0,4028 <fatfs_list_directory_next+0x194>
    3f68:	01810513          	addi	a0,sp,24
    3f6c:	ffffe097          	auipc	ra,0xffffe
    3f70:	728080e7          	jalr	1832(ra) # 2694 <fatfs_lfn_cache_get>
    3f74:	00050593          	mv	a1,a0
    3f78:	10300613          	li	a2,259
    3f7c:	00098513          	mv	a0,s3
    3f80:	ffffe097          	auipc	ra,0xffffe
    3f84:	8f8080e7          	jalr	-1800(ra) # 1878 <strncpy>
    3f88:	00040513          	mv	a0,s0
    3f8c:	fffff097          	auipc	ra,0xfffff
    3f90:	814080e7          	jalr	-2028(ra) # 27a0 <fatfs_entry_is_dir>
    3f94:	00a03533          	snez	a0,a0
    3f98:	10a98223          	sb	a0,260(s3)
    3f9c:	01d44783          	lbu	a5,29(s0)
    3fa0:	01c44703          	lbu	a4,28(s0)
    3fa4:	00148493          	addi	s1,s1,1
    3fa8:	00879793          	slli	a5,a5,0x8
    3fac:	00e7e7b3          	or	a5,a5,a4
    3fb0:	01e44703          	lbu	a4,30(s0)
    3fb4:	0ff4f493          	zext.b	s1,s1
    3fb8:	00100513          	li	a0,1
    3fbc:	01071713          	slli	a4,a4,0x10
    3fc0:	00f76733          	or	a4,a4,a5
    3fc4:	01f44783          	lbu	a5,31(s0)
    3fc8:	01879793          	slli	a5,a5,0x18
    3fcc:	00e7e7b3          	or	a5,a5,a4
    3fd0:	10f9a623          	sw	a5,268(s3)
    3fd4:	01544783          	lbu	a5,21(s0)
    3fd8:	01444703          	lbu	a4,20(s0)
    3fdc:	01a44683          	lbu	a3,26(s0)
    3fe0:	00879793          	slli	a5,a5,0x8
    3fe4:	00e7e7b3          	or	a5,a5,a4
    3fe8:	01b44703          	lbu	a4,27(s0)
    3fec:	01079793          	slli	a5,a5,0x10
    3ff0:	00871713          	slli	a4,a4,0x8
    3ff4:	00d76733          	or	a4,a4,a3
    3ff8:	00e7e7b3          	or	a5,a5,a4
    3ffc:	10f9a423          	sw	a5,264(s3)
    4000:	00990423          	sb	s1,8(s2)
    4004:	13c12083          	lw	ra,316(sp)
    4008:	13812403          	lw	s0,312(sp)
    400c:	13412483          	lw	s1,308(sp)
    4010:	13012903          	lw	s2,304(sp)
    4014:	12c12983          	lw	s3,300(sp)
    4018:	12812a03          	lw	s4,296(sp)
    401c:	12412a83          	lw	s5,292(sp)
    4020:	14010113          	addi	sp,sp,320
    4024:	00008067          	ret
    4028:	00040513          	mv	a0,s0
    402c:	ffffe097          	auipc	ra,0xffffe
    4030:	738080e7          	jalr	1848(ra) # 2764 <fatfs_entry_sfn_only>
    4034:	ee050ce3          	beqz	a0,3f2c <fatfs_list_directory_next+0x98>
    4038:	00d00613          	li	a2,13
    403c:	00000593          	li	a1,0
    4040:	00810513          	addi	a0,sp,8
    4044:	10010ea3          	sb	zero,285(sp)
    4048:	ffffd097          	auipc	ra,0xffffd
    404c:	790080e7          	jalr	1936(ra) # 17d8 <memset>
    4050:	00000793          	li	a5,0
    4054:	00800713          	li	a4,8
    4058:	00f40633          	add	a2,s0,a5
    405c:	00064603          	lbu	a2,0(a2)
    4060:	00810693          	addi	a3,sp,8
    4064:	00f686b3          	add	a3,a3,a5
    4068:	00c68023          	sb	a2,0(a3)
    406c:	00178793          	addi	a5,a5,1
    4070:	fee794e3          	bne	a5,a4,4058 <fatfs_list_directory_next+0x1c4>
    4074:	00844783          	lbu	a5,8(s0)
    4078:	00944683          	lbu	a3,9(s0)
    407c:	02000613          	li	a2,32
    4080:	00f108a3          	sb	a5,17(sp)
    4084:	00d10923          	sb	a3,18(sp)
    4088:	00100713          	li	a4,1
    408c:	00c69663          	bne	a3,a2,4098 <fatfs_list_directory_next+0x204>
    4090:	fe078793          	addi	a5,a5,-32
    4094:	00f03733          	snez	a4,a5
    4098:	00a44783          	lbu	a5,10(s0)
    409c:	02000693          	li	a3,32
    40a0:	00f109a3          	sb	a5,19(sp)
    40a4:	00d79663          	bne	a5,a3,40b0 <fatfs_list_directory_next+0x21c>
    40a8:	02000793          	li	a5,32
    40ac:	00070a63          	beqz	a4,40c0 <fatfs_list_directory_next+0x22c>
    40b0:	00814703          	lbu	a4,8(sp)
    40b4:	02e00793          	li	a5,46
    40b8:	00f71463          	bne	a4,a5,40c0 <fatfs_list_directory_next+0x22c>
    40bc:	02000793          	li	a5,32
    40c0:	00810593          	addi	a1,sp,8
    40c4:	00098513          	mv	a0,s3
    40c8:	00f10823          	sb	a5,16(sp)
    40cc:	fffff097          	auipc	ra,0xfffff
    40d0:	034080e7          	jalr	52(ra) # 3100 <fatfs_get_sfn_display_name>
    40d4:	eb5ff06f          	j	3f88 <fatfs_list_directory_next+0xf4>

000040d8 <fl_readdir>:
    40d8:	000057b7          	lui	a5,0x5
    40dc:	7b87a783          	lw	a5,1976(a5) # 57b8 <_filelib_init>
    40e0:	fe010113          	addi	sp,sp,-32
    40e4:	00912a23          	sw	s1,20(sp)
    40e8:	01212823          	sw	s2,16(sp)
    40ec:	00112e23          	sw	ra,28(sp)
    40f0:	00812c23          	sw	s0,24(sp)
    40f4:	01312623          	sw	s3,12(sp)
    40f8:	00050493          	mv	s1,a0
    40fc:	00058913          	mv	s2,a1
    4100:	00079663          	bnez	a5,410c <fl_readdir+0x34>
    4104:	ffffe097          	auipc	ra,0xffffe
    4108:	2b0080e7          	jalr	688(ra) # 23b4 <fl_init>
    410c:	00006437          	lui	s0,0x6
    4110:	fbc40793          	addi	a5,s0,-68 # 5fbc <_fs>
    4114:	03c7a783          	lw	a5,60(a5)
    4118:	fbc40993          	addi	s3,s0,-68
    411c:	00078463          	beqz	a5,4124 <fl_readdir+0x4c>
    4120:	000780e7          	jalr	a5
    4124:	fbc40513          	addi	a0,s0,-68
    4128:	00090613          	mv	a2,s2
    412c:	00048593          	mv	a1,s1
    4130:	00000097          	auipc	ra,0x0
    4134:	d64080e7          	jalr	-668(ra) # 3e94 <fatfs_list_directory_next>
    4138:	0409a783          	lw	a5,64(s3)
    413c:	00050413          	mv	s0,a0
    4140:	00078463          	beqz	a5,4148 <fl_readdir+0x70>
    4144:	000780e7          	jalr	a5
    4148:	01c12083          	lw	ra,28(sp)
    414c:	00143513          	seqz	a0,s0
    4150:	01812403          	lw	s0,24(sp)
    4154:	01412483          	lw	s1,20(sp)
    4158:	01012903          	lw	s2,16(sp)
    415c:	00c12983          	lw	s3,12(sp)
    4160:	40a00533          	neg	a0,a0
    4164:	02010113          	addi	sp,sp,32
    4168:	00008067          	ret

0000416c <_read_sectors>:
    416c:	fd010113          	addi	sp,sp,-48
    4170:	01612823          	sw	s6,16(sp)
    4174:	00006b37          	lui	s6,0x6
    4178:	01512a23          	sw	s5,20(sp)
    417c:	fbcb4a83          	lbu	s5,-68(s6) # 5fbc <_fs>
    4180:	01412c23          	sw	s4,24(sp)
    4184:	00058a13          	mv	s4,a1
    4188:	02912223          	sw	s1,36(sp)
    418c:	000a8593          	mv	a1,s5
    4190:	00050493          	mv	s1,a0
    4194:	000a0513          	mv	a0,s4
    4198:	02112623          	sw	ra,44(sp)
    419c:	02812423          	sw	s0,40(sp)
    41a0:	03212023          	sw	s2,32(sp)
    41a4:	00068413          	mv	s0,a3
    41a8:	01712623          	sw	s7,12(sp)
    41ac:	01812423          	sw	s8,8(sp)
    41b0:	01312e23          	sw	s3,28(sp)
    41b4:	00060c13          	mv	s8,a2
    41b8:	ffffd097          	auipc	ra,0xffffd
    41bc:	574080e7          	jalr	1396(ra) # 172c <__udivsi3>
    41c0:	00050913          	mv	s2,a0
    41c4:	000a8593          	mv	a1,s5
    41c8:	000a0513          	mv	a0,s4
    41cc:	ffffd097          	auipc	ra,0xffffd
    41d0:	5a8080e7          	jalr	1448(ra) # 1774 <__umodsi3>
    41d4:	00a407b3          	add	a5,s0,a0
    41d8:	00050b93          	mv	s7,a0
    41dc:	00fafe63          	bgeu	s5,a5,41f8 <_read_sectors+0x8c>
    41e0:	00090593          	mv	a1,s2
    41e4:	000a8513          	mv	a0,s5
    41e8:	ffffe097          	auipc	ra,0xffffe
    41ec:	d34080e7          	jalr	-716(ra) # 1f1c <__mulsi3>
    41f0:	414a87b3          	sub	a5,s5,s4
    41f4:	00f50433          	add	s0,a0,a5
    41f8:	2284a983          	lw	s3,552(s1)
    41fc:	07299863          	bne	s3,s2,426c <_read_sectors+0x100>
    4200:	22c4a583          	lw	a1,556(s1)
    4204:	fff00793          	li	a5,-1
    4208:	02f58663          	beq	a1,a5,4234 <_read_sectors+0xc8>
    420c:	fbcb0513          	addi	a0,s6,-68
    4210:	ffffe097          	auipc	ra,0xffffe
    4214:	068080e7          	jalr	104(ra) # 2278 <fatfs_lba_of_cluster>
    4218:	017505b3          	add	a1,a0,s7
    421c:	00040693          	mv	a3,s0
    4220:	000c0613          	mv	a2,s8
    4224:	fbcb0513          	addi	a0,s6,-68
    4228:	ffffe097          	auipc	ra,0xffffe
    422c:	0a0080e7          	jalr	160(ra) # 22c8 <fatfs_sector_read>
    4230:	00051463          	bnez	a0,4238 <_read_sectors+0xcc>
    4234:	00000413          	li	s0,0
    4238:	02c12083          	lw	ra,44(sp)
    423c:	00040513          	mv	a0,s0
    4240:	02812403          	lw	s0,40(sp)
    4244:	02412483          	lw	s1,36(sp)
    4248:	02012903          	lw	s2,32(sp)
    424c:	01c12983          	lw	s3,28(sp)
    4250:	01812a03          	lw	s4,24(sp)
    4254:	01412a83          	lw	s5,20(sp)
    4258:	01012b03          	lw	s6,16(sp)
    425c:	00c12b83          	lw	s7,12(sp)
    4260:	00812c03          	lw	s8,8(sp)
    4264:	03010113          	addi	sp,sp,48
    4268:	00008067          	ret
    426c:	035a6463          	bltu	s4,s5,4294 <_read_sectors+0x128>
    4270:	00198793          	addi	a5,s3,1
    4274:	03279063          	bne	a5,s2,4294 <_read_sectors+0x128>
    4278:	22c4a583          	lw	a1,556(s1)
    427c:	0329e263          	bltu	s3,s2,42a0 <_read_sectors+0x134>
    4280:	fff00793          	li	a5,-1
    4284:	faf588e3          	beq	a1,a5,4234 <_read_sectors+0xc8>
    4288:	22b4a623          	sw	a1,556(s1)
    428c:	2324a423          	sw	s2,552(s1)
    4290:	f7dff06f          	j	420c <_read_sectors+0xa0>
    4294:	0044a583          	lw	a1,4(s1)
    4298:	00000993          	li	s3,0
    429c:	fe1ff06f          	j	427c <_read_sectors+0x110>
    42a0:	fbcb0513          	addi	a0,s6,-68
    42a4:	fffff097          	auipc	ra,0xfffff
    42a8:	22c080e7          	jalr	556(ra) # 34d0 <fatfs_find_next_cluster>
    42ac:	00050593          	mv	a1,a0
    42b0:	00198993          	addi	s3,s3,1
    42b4:	fc9ff06f          	j	427c <_read_sectors+0x110>

000042b8 <fatfs_set_fs_info_next_free_cluster>:
    42b8:	03052783          	lw	a5,48(a0)
    42bc:	0a078863          	beqz	a5,436c <fatfs_set_fs_info_next_free_cluster+0xb4>
    42c0:	ff010113          	addi	sp,sp,-16
    42c4:	01c52783          	lw	a5,28(a0)
    42c8:	01212023          	sw	s2,0(sp)
    42cc:	00058913          	mv	s2,a1
    42d0:	01855583          	lhu	a1,24(a0)
    42d4:	00812423          	sw	s0,8(sp)
    42d8:	00912223          	sw	s1,4(sp)
    42dc:	00f585b3          	add	a1,a1,a5
    42e0:	00112623          	sw	ra,12(sp)
    42e4:	00050493          	mv	s1,a0
    42e8:	ffffe097          	auipc	ra,0xffffe
    42ec:	de4080e7          	jalr	-540(ra) # 20cc <fatfs_fat_read_sector>
    42f0:	00050413          	mv	s0,a0
    42f4:	06050063          	beqz	a0,4354 <fatfs_set_fs_info_next_free_cluster+0x9c>
    42f8:	20852783          	lw	a5,520(a0)
    42fc:	00895713          	srli	a4,s2,0x8
    4300:	1f278623          	sb	s2,492(a5)
    4304:	20852783          	lw	a5,520(a0)
    4308:	1ee786a3          	sb	a4,493(a5)
    430c:	20852783          	lw	a5,520(a0)
    4310:	01095713          	srli	a4,s2,0x10
    4314:	1ee78723          	sb	a4,494(a5)
    4318:	20852783          	lw	a5,520(a0)
    431c:	01895713          	srli	a4,s2,0x18
    4320:	1ee787a3          	sb	a4,495(a5)
    4324:	00100793          	li	a5,1
    4328:	20f52223          	sw	a5,516(a0)
    432c:	0384a783          	lw	a5,56(s1)
    4330:	0324a223          	sw	s2,36(s1)
    4334:	00078a63          	beqz	a5,4348 <fatfs_set_fs_info_next_free_cluster+0x90>
    4338:	00050593          	mv	a1,a0
    433c:	20052503          	lw	a0,512(a0)
    4340:	00100613          	li	a2,1
    4344:	000780e7          	jalr	a5
    4348:	fff00793          	li	a5,-1
    434c:	20f42023          	sw	a5,512(s0)
    4350:	20042223          	sw	zero,516(s0)
    4354:	00c12083          	lw	ra,12(sp)
    4358:	00812403          	lw	s0,8(sp)
    435c:	00412483          	lw	s1,4(sp)
    4360:	00012903          	lw	s2,0(sp)
    4364:	01010113          	addi	sp,sp,16
    4368:	00008067          	ret
    436c:	00008067          	ret

00004370 <fatfs_find_blank_cluster>:
    4370:	fe010113          	addi	sp,sp,-32
    4374:	01312623          	sw	s3,12(sp)
    4378:	01512223          	sw	s5,4(sp)
    437c:	000109b7          	lui	s3,0x10
    4380:	10000ab7          	lui	s5,0x10000
    4384:	00912a23          	sw	s1,20(sp)
    4388:	01212823          	sw	s2,16(sp)
    438c:	01412423          	sw	s4,8(sp)
    4390:	00112e23          	sw	ra,28(sp)
    4394:	00812c23          	sw	s0,24(sp)
    4398:	00050913          	mv	s2,a0
    439c:	00058493          	mv	s1,a1
    43a0:	00060a13          	mv	s4,a2
    43a4:	fff98993          	addi	s3,s3,-1 # ffff <_files+0x9bdb>
    43a8:	fffa8a93          	addi	s5,s5,-1 # fffffff <__stacktop+0xffeffff>
    43ac:	03092783          	lw	a5,48(s2)
    43b0:	0074d413          	srli	s0,s1,0x7
    43b4:	00079463          	bnez	a5,43bc <fatfs_find_blank_cluster+0x4c>
    43b8:	0084d413          	srli	s0,s1,0x8
    43bc:	02092783          	lw	a5,32(s2)
    43c0:	0cf47463          	bgeu	s0,a5,4488 <fatfs_find_blank_cluster+0x118>
    43c4:	01492583          	lw	a1,20(s2)
    43c8:	00090513          	mv	a0,s2
    43cc:	00b405b3          	add	a1,s0,a1
    43d0:	ffffe097          	auipc	ra,0xffffe
    43d4:	cfc080e7          	jalr	-772(ra) # 20cc <fatfs_fat_read_sector>
    43d8:	0a050863          	beqz	a0,4488 <fatfs_find_blank_cluster+0x118>
    43dc:	03092783          	lw	a5,48(s2)
    43e0:	20852703          	lw	a4,520(a0)
    43e4:	04079c63          	bnez	a5,443c <fatfs_find_blank_cluster+0xcc>
    43e8:	00841413          	slli	s0,s0,0x8
    43ec:	40848433          	sub	s0,s1,s0
    43f0:	00141413          	slli	s0,s0,0x1
    43f4:	01347433          	and	s0,s0,s3
    43f8:	00870733          	add	a4,a4,s0
    43fc:	00174783          	lbu	a5,1(a4)
    4400:	00074703          	lbu	a4,0(a4)
    4404:	00879793          	slli	a5,a5,0x8
    4408:	00e787b3          	add	a5,a5,a4
    440c:	06079a63          	bnez	a5,4480 <fatfs_find_blank_cluster+0x110>
    4410:	009a2023          	sw	s1,0(s4)
    4414:	00100513          	li	a0,1
    4418:	01c12083          	lw	ra,28(sp)
    441c:	01812403          	lw	s0,24(sp)
    4420:	01412483          	lw	s1,20(sp)
    4424:	01012903          	lw	s2,16(sp)
    4428:	00c12983          	lw	s3,12(sp)
    442c:	00812a03          	lw	s4,8(sp)
    4430:	00412a83          	lw	s5,4(sp)
    4434:	02010113          	addi	sp,sp,32
    4438:	00008067          	ret
    443c:	00741413          	slli	s0,s0,0x7
    4440:	40848433          	sub	s0,s1,s0
    4444:	00241413          	slli	s0,s0,0x2
    4448:	01347433          	and	s0,s0,s3
    444c:	00870733          	add	a4,a4,s0
    4450:	00374783          	lbu	a5,3(a4)
    4454:	00274683          	lbu	a3,2(a4)
    4458:	01879793          	slli	a5,a5,0x18
    445c:	01069693          	slli	a3,a3,0x10
    4460:	00d787b3          	add	a5,a5,a3
    4464:	00074683          	lbu	a3,0(a4)
    4468:	00174703          	lbu	a4,1(a4)
    446c:	00d787b3          	add	a5,a5,a3
    4470:	00871713          	slli	a4,a4,0x8
    4474:	00e787b3          	add	a5,a5,a4
    4478:	0157f7b3          	and	a5,a5,s5
    447c:	f91ff06f          	j	440c <fatfs_find_blank_cluster+0x9c>
    4480:	00148493          	addi	s1,s1,1
    4484:	f29ff06f          	j	43ac <fatfs_find_blank_cluster+0x3c>
    4488:	00000513          	li	a0,0
    448c:	f8dff06f          	j	4418 <fatfs_find_blank_cluster+0xa8>

00004490 <fatfs_fat_set_cluster>:
    4490:	03052783          	lw	a5,48(a0)
    4494:	fe010113          	addi	sp,sp,-32
    4498:	00812c23          	sw	s0,24(sp)
    449c:	00912a23          	sw	s1,20(sp)
    44a0:	01212823          	sw	s2,16(sp)
    44a4:	01312623          	sw	s3,12(sp)
    44a8:	00112e23          	sw	ra,28(sp)
    44ac:	00050993          	mv	s3,a0
    44b0:	00058413          	mv	s0,a1
    44b4:	00060493          	mv	s1,a2
    44b8:	0085d913          	srli	s2,a1,0x8
    44bc:	00078463          	beqz	a5,44c4 <fatfs_fat_set_cluster+0x34>
    44c0:	0075d913          	srli	s2,a1,0x7
    44c4:	0149a583          	lw	a1,20(s3)
    44c8:	00098513          	mv	a0,s3
    44cc:	00b905b3          	add	a1,s2,a1
    44d0:	ffffe097          	auipc	ra,0xffffe
    44d4:	bfc080e7          	jalr	-1028(ra) # 20cc <fatfs_fat_read_sector>
    44d8:	00050693          	mv	a3,a0
    44dc:	00000513          	li	a0,0
    44e0:	04068c63          	beqz	a3,4538 <fatfs_fat_set_cluster+0xa8>
    44e4:	0309a703          	lw	a4,48(s3)
    44e8:	2086a783          	lw	a5,520(a3)
    44ec:	0ff4f613          	zext.b	a2,s1
    44f0:	06071263          	bnez	a4,4554 <fatfs_fat_set_cluster+0xc4>
    44f4:	00891913          	slli	s2,s2,0x8
    44f8:	41240433          	sub	s0,s0,s2
    44fc:	00010737          	lui	a4,0x10
    4500:	00141413          	slli	s0,s0,0x1
    4504:	ffe70713          	addi	a4,a4,-2 # fffe <_files+0x9bda>
    4508:	00e47433          	and	s0,s0,a4
    450c:	008787b3          	add	a5,a5,s0
    4510:	00c78023          	sb	a2,0(a5)
    4514:	2086a783          	lw	a5,520(a3)
    4518:	01049493          	slli	s1,s1,0x10
    451c:	0104d493          	srli	s1,s1,0x10
    4520:	008787b3          	add	a5,a5,s0
    4524:	0084d493          	srli	s1,s1,0x8
    4528:	009780a3          	sb	s1,1(a5)
    452c:	00100793          	li	a5,1
    4530:	20f6a223          	sw	a5,516(a3)
    4534:	00100513          	li	a0,1
    4538:	01c12083          	lw	ra,28(sp)
    453c:	01812403          	lw	s0,24(sp)
    4540:	01412483          	lw	s1,20(sp)
    4544:	01012903          	lw	s2,16(sp)
    4548:	00c12983          	lw	s3,12(sp)
    454c:	02010113          	addi	sp,sp,32
    4550:	00008067          	ret
    4554:	00791913          	slli	s2,s2,0x7
    4558:	41240433          	sub	s0,s0,s2
    455c:	00010737          	lui	a4,0x10
    4560:	ffc70713          	addi	a4,a4,-4 # fffc <_files+0x9bd8>
    4564:	00241413          	slli	s0,s0,0x2
    4568:	00e47433          	and	s0,s0,a4
    456c:	008787b3          	add	a5,a5,s0
    4570:	00c78023          	sb	a2,0(a5)
    4574:	2086a783          	lw	a5,520(a3)
    4578:	0084d713          	srli	a4,s1,0x8
    457c:	008787b3          	add	a5,a5,s0
    4580:	00e780a3          	sb	a4,1(a5)
    4584:	2086a783          	lw	a5,520(a3)
    4588:	0104d713          	srli	a4,s1,0x10
    458c:	0184d493          	srli	s1,s1,0x18
    4590:	008787b3          	add	a5,a5,s0
    4594:	00e78123          	sb	a4,2(a5)
    4598:	2086a783          	lw	a5,520(a3)
    459c:	008787b3          	add	a5,a5,s0
    45a0:	009781a3          	sb	s1,3(a5)
    45a4:	f89ff06f          	j	452c <fatfs_fat_set_cluster+0x9c>

000045a8 <fatfs_free_cluster_chain>:
    45a8:	fe010113          	addi	sp,sp,-32
    45ac:	00812c23          	sw	s0,24(sp)
    45b0:	01212823          	sw	s2,16(sp)
    45b4:	00112e23          	sw	ra,28(sp)
    45b8:	00912a23          	sw	s1,20(sp)
    45bc:	00050413          	mv	s0,a0
    45c0:	ffd00913          	li	s2,-3
    45c4:	fff58793          	addi	a5,a1,-1
    45c8:	02f97063          	bgeu	s2,a5,45e8 <fatfs_free_cluster_chain+0x40>
    45cc:	01c12083          	lw	ra,28(sp)
    45d0:	01812403          	lw	s0,24(sp)
    45d4:	01412483          	lw	s1,20(sp)
    45d8:	01012903          	lw	s2,16(sp)
    45dc:	00100513          	li	a0,1
    45e0:	02010113          	addi	sp,sp,32
    45e4:	00008067          	ret
    45e8:	00040513          	mv	a0,s0
    45ec:	00b12623          	sw	a1,12(sp)
    45f0:	fffff097          	auipc	ra,0xfffff
    45f4:	ee0080e7          	jalr	-288(ra) # 34d0 <fatfs_find_next_cluster>
    45f8:	00c12583          	lw	a1,12(sp)
    45fc:	00050493          	mv	s1,a0
    4600:	00000613          	li	a2,0
    4604:	00040513          	mv	a0,s0
    4608:	00000097          	auipc	ra,0x0
    460c:	e88080e7          	jalr	-376(ra) # 4490 <fatfs_fat_set_cluster>
    4610:	00048593          	mv	a1,s1
    4614:	fb1ff06f          	j	45c4 <fatfs_free_cluster_chain+0x1c>

00004618 <fatfs_fat_add_cluster_to_chain>:
    4618:	fff00793          	li	a5,-1
    461c:	02f59463          	bne	a1,a5,4644 <fatfs_fat_add_cluster_to_chain+0x2c>
    4620:	00000513          	li	a0,0
    4624:	00008067          	ret
    4628:	00000513          	li	a0,0
    462c:	01c12083          	lw	ra,28(sp)
    4630:	01812403          	lw	s0,24(sp)
    4634:	01412483          	lw	s1,20(sp)
    4638:	01012903          	lw	s2,16(sp)
    463c:	02010113          	addi	sp,sp,32
    4640:	00008067          	ret
    4644:	fe010113          	addi	sp,sp,-32
    4648:	00812c23          	sw	s0,24(sp)
    464c:	00912a23          	sw	s1,20(sp)
    4650:	01212823          	sw	s2,16(sp)
    4654:	00050413          	mv	s0,a0
    4658:	00112e23          	sw	ra,28(sp)
    465c:	00058513          	mv	a0,a1
    4660:	00060493          	mv	s1,a2
    4664:	fff00913          	li	s2,-1
    4668:	00050593          	mv	a1,a0
    466c:	00a12623          	sw	a0,12(sp)
    4670:	00040513          	mv	a0,s0
    4674:	fffff097          	auipc	ra,0xfffff
    4678:	e5c080e7          	jalr	-420(ra) # 34d0 <fatfs_find_next_cluster>
    467c:	fa0506e3          	beqz	a0,4628 <fatfs_fat_add_cluster_to_chain+0x10>
    4680:	00c12583          	lw	a1,12(sp)
    4684:	ff2512e3          	bne	a0,s2,4668 <fatfs_fat_add_cluster_to_chain+0x50>
    4688:	00048613          	mv	a2,s1
    468c:	00040513          	mv	a0,s0
    4690:	00000097          	auipc	ra,0x0
    4694:	e00080e7          	jalr	-512(ra) # 4490 <fatfs_fat_set_cluster>
    4698:	fff00613          	li	a2,-1
    469c:	00048593          	mv	a1,s1
    46a0:	00040513          	mv	a0,s0
    46a4:	00000097          	auipc	ra,0x0
    46a8:	dec080e7          	jalr	-532(ra) # 4490 <fatfs_fat_set_cluster>
    46ac:	00100513          	li	a0,1
    46b0:	f7dff06f          	j	462c <fatfs_fat_add_cluster_to_chain+0x14>

000046b4 <fatfs_add_free_space>:
    46b4:	02452703          	lw	a4,36(a0)
    46b8:	fd010113          	addi	sp,sp,-48
    46bc:	02812423          	sw	s0,40(sp)
    46c0:	03212023          	sw	s2,32(sp)
    46c4:	01412c23          	sw	s4,24(sp)
    46c8:	01512a23          	sw	s5,20(sp)
    46cc:	02112623          	sw	ra,44(sp)
    46d0:	02912223          	sw	s1,36(sp)
    46d4:	01312e23          	sw	s3,28(sp)
    46d8:	fff00793          	li	a5,-1
    46dc:	0005aa83          	lw	s5,0(a1)
    46e0:	00050413          	mv	s0,a0
    46e4:	00058913          	mv	s2,a1
    46e8:	00060a13          	mv	s4,a2
    46ec:	00f70863          	beq	a4,a5,46fc <fatfs_add_free_space+0x48>
    46f0:	fff00593          	li	a1,-1
    46f4:	00000097          	auipc	ra,0x0
    46f8:	bc4080e7          	jalr	-1084(ra) # 42b8 <fatfs_set_fs_info_next_free_cluster>
    46fc:	00000493          	li	s1,0
    4700:	03449663          	bne	s1,s4,472c <fatfs_add_free_space+0x78>
    4704:	00100513          	li	a0,1
    4708:	02c12083          	lw	ra,44(sp)
    470c:	02812403          	lw	s0,40(sp)
    4710:	02412483          	lw	s1,36(sp)
    4714:	02012903          	lw	s2,32(sp)
    4718:	01c12983          	lw	s3,28(sp)
    471c:	01812a03          	lw	s4,24(sp)
    4720:	01412a83          	lw	s5,20(sp)
    4724:	03010113          	addi	sp,sp,48
    4728:	00008067          	ret
    472c:	00842583          	lw	a1,8(s0)
    4730:	00c10613          	addi	a2,sp,12
    4734:	00040513          	mv	a0,s0
    4738:	00000097          	auipc	ra,0x0
    473c:	c38080e7          	jalr	-968(ra) # 4370 <fatfs_find_blank_cluster>
    4740:	fc0504e3          	beqz	a0,4708 <fatfs_add_free_space+0x54>
    4744:	00c12983          	lw	s3,12(sp)
    4748:	000a8593          	mv	a1,s5
    474c:	00040513          	mv	a0,s0
    4750:	00098613          	mv	a2,s3
    4754:	00000097          	auipc	ra,0x0
    4758:	d3c080e7          	jalr	-708(ra) # 4490 <fatfs_fat_set_cluster>
    475c:	fff00613          	li	a2,-1
    4760:	00098593          	mv	a1,s3
    4764:	00040513          	mv	a0,s0
    4768:	00000097          	auipc	ra,0x0
    476c:	d28080e7          	jalr	-728(ra) # 4490 <fatfs_fat_set_cluster>
    4770:	00049463          	bnez	s1,4778 <fatfs_add_free_space+0xc4>
    4774:	01392023          	sw	s3,0(s2)
    4778:	00148493          	addi	s1,s1,1
    477c:	00098a93          	mv	s5,s3
    4780:	f81ff06f          	j	4700 <fatfs_add_free_space+0x4c>

00004784 <_write_sectors>:
    4784:	fb010113          	addi	sp,sp,-80
    4788:	03312e23          	sw	s3,60(sp)
    478c:	000069b7          	lui	s3,0x6
    4790:	03612823          	sw	s6,48(sp)
    4794:	fbc9cb03          	lbu	s6,-68(s3) # 5fbc <_fs>
    4798:	03512a23          	sw	s5,52(sp)
    479c:	00058a93          	mv	s5,a1
    47a0:	fff00793          	li	a5,-1
    47a4:	04812423          	sw	s0,72(sp)
    47a8:	000b0593          	mv	a1,s6
    47ac:	00050413          	mv	s0,a0
    47b0:	000a8513          	mv	a0,s5
    47b4:	00f12e23          	sw	a5,28(sp)
    47b8:	04112623          	sw	ra,76(sp)
    47bc:	04912223          	sw	s1,68(sp)
    47c0:	05212023          	sw	s2,64(sp)
    47c4:	03712623          	sw	s7,44(sp)
    47c8:	03812423          	sw	s8,40(sp)
    47cc:	00068b93          	mv	s7,a3
    47d0:	03912223          	sw	s9,36(sp)
    47d4:	03a12023          	sw	s10,32(sp)
    47d8:	00060c93          	mv	s9,a2
    47dc:	03412c23          	sw	s4,56(sp)
    47e0:	ffffd097          	auipc	ra,0xffffd
    47e4:	f4c080e7          	jalr	-180(ra) # 172c <__udivsi3>
    47e8:	00050493          	mv	s1,a0
    47ec:	000b0593          	mv	a1,s6
    47f0:	000a8513          	mv	a0,s5
    47f4:	ffffd097          	auipc	ra,0xffffd
    47f8:	f80080e7          	jalr	-128(ra) # 1774 <__umodsi3>
    47fc:	00ab87b3          	add	a5,s7,a0
    4800:	00050c13          	mv	s8,a0
    4804:	fbc98d13          	addi	s10,s3,-68
    4808:	000b8913          	mv	s2,s7
    480c:	00fb7e63          	bgeu	s6,a5,4828 <_write_sectors+0xa4>
    4810:	00048593          	mv	a1,s1
    4814:	000b0513          	mv	a0,s6
    4818:	ffffd097          	auipc	ra,0xffffd
    481c:	704080e7          	jalr	1796(ra) # 1f1c <__mulsi3>
    4820:	415b07b3          	sub	a5,s6,s5
    4824:	00f50933          	add	s2,a0,a5
    4828:	22842a03          	lw	s4,552(s0)
    482c:	029a1a63          	bne	s4,s1,4860 <_write_sectors+0xdc>
    4830:	22c42583          	lw	a1,556(s0)
    4834:	fbc98513          	addi	a0,s3,-68
    4838:	ffffe097          	auipc	ra,0xffffe
    483c:	a40080e7          	jalr	-1472(ra) # 2278 <fatfs_lba_of_cluster>
    4840:	018505b3          	add	a1,a0,s8
    4844:	00090693          	mv	a3,s2
    4848:	000c8613          	mv	a2,s9
    484c:	fbc98513          	addi	a0,s3,-68
    4850:	ffffe097          	auipc	ra,0xffffe
    4854:	a90080e7          	jalr	-1392(ra) # 22e0 <fatfs_sector_write>
    4858:	04050a63          	beqz	a0,48ac <_write_sectors+0x128>
    485c:	0540006f          	j	48b0 <_write_sectors+0x12c>
    4860:	096ae663          	bltu	s5,s6,48ec <_write_sectors+0x168>
    4864:	001a0793          	addi	a5,s4,1
    4868:	08979263          	bne	a5,s1,48ec <_write_sectors+0x168>
    486c:	22c42583          	lw	a1,556(s0)
    4870:	fff00a93          	li	s5,-1
    4874:	089a6263          	bltu	s4,s1,48f8 <_write_sectors+0x174>
    4878:	fff00793          	li	a5,-1
    487c:	0af59463          	bne	a1,a5,4924 <_write_sectors+0x1a0>
    4880:	000d4583          	lbu	a1,0(s10)
    4884:	fff58513          	addi	a0,a1,-1
    4888:	01750533          	add	a0,a0,s7
    488c:	ffffd097          	auipc	ra,0xffffd
    4890:	ea0080e7          	jalr	-352(ra) # 172c <__udivsi3>
    4894:	00050613          	mv	a2,a0
    4898:	01c10593          	addi	a1,sp,28
    489c:	fbc98513          	addi	a0,s3,-68
    48a0:	00000097          	auipc	ra,0x0
    48a4:	e14080e7          	jalr	-492(ra) # 46b4 <fatfs_add_free_space>
    48a8:	06051c63          	bnez	a0,4920 <_write_sectors+0x19c>
    48ac:	00000913          	li	s2,0
    48b0:	04c12083          	lw	ra,76(sp)
    48b4:	04812403          	lw	s0,72(sp)
    48b8:	04412483          	lw	s1,68(sp)
    48bc:	03c12983          	lw	s3,60(sp)
    48c0:	03812a03          	lw	s4,56(sp)
    48c4:	03412a83          	lw	s5,52(sp)
    48c8:	03012b03          	lw	s6,48(sp)
    48cc:	02c12b83          	lw	s7,44(sp)
    48d0:	02812c03          	lw	s8,40(sp)
    48d4:	02412c83          	lw	s9,36(sp)
    48d8:	02012d03          	lw	s10,32(sp)
    48dc:	00090513          	mv	a0,s2
    48e0:	04012903          	lw	s2,64(sp)
    48e4:	05010113          	addi	sp,sp,80
    48e8:	00008067          	ret
    48ec:	00442583          	lw	a1,4(s0)
    48f0:	00000a13          	li	s4,0
    48f4:	f7dff06f          	j	4870 <_write_sectors+0xec>
    48f8:	fbc98513          	addi	a0,s3,-68
    48fc:	00b12623          	sw	a1,12(sp)
    4900:	fffff097          	auipc	ra,0xfffff
    4904:	bd0080e7          	jalr	-1072(ra) # 34d0 <fatfs_find_next_cluster>
    4908:	00c12583          	lw	a1,12(sp)
    490c:	00b12e23          	sw	a1,28(sp)
    4910:	f75508e3          	beq	a0,s5,4880 <_write_sectors+0xfc>
    4914:	001a0a13          	addi	s4,s4,1
    4918:	00050593          	mv	a1,a0
    491c:	f59ff06f          	j	4874 <_write_sectors+0xf0>
    4920:	01c12583          	lw	a1,28(sp)
    4924:	22b42623          	sw	a1,556(s0)
    4928:	22942423          	sw	s1,552(s0)
    492c:	f09ff06f          	j	4834 <_write_sectors+0xb0>

00004930 <fl_fflush>:
    4930:	000057b7          	lui	a5,0x5
    4934:	7b87a783          	lw	a5,1976(a5) # 57b8 <_filelib_init>
    4938:	ff010113          	addi	sp,sp,-16
    493c:	00812423          	sw	s0,8(sp)
    4940:	00112623          	sw	ra,12(sp)
    4944:	00912223          	sw	s1,4(sp)
    4948:	00050413          	mv	s0,a0
    494c:	00079663          	bnez	a5,4958 <fl_fflush+0x28>
    4950:	ffffe097          	auipc	ra,0xffffe
    4954:	a64080e7          	jalr	-1436(ra) # 23b4 <fl_init>
    4958:	04040863          	beqz	s0,49a8 <fl_fflush+0x78>
    495c:	000067b7          	lui	a5,0x6
    4960:	fbc78713          	addi	a4,a5,-68 # 5fbc <_fs>
    4964:	03c72703          	lw	a4,60(a4)
    4968:	fbc78493          	addi	s1,a5,-68
    496c:	00070463          	beqz	a4,4974 <fl_fflush+0x44>
    4970:	000700e7          	jalr	a4
    4974:	43442783          	lw	a5,1076(s0)
    4978:	02078263          	beqz	a5,499c <fl_fflush+0x6c>
    497c:	43042583          	lw	a1,1072(s0)
    4980:	00100693          	li	a3,1
    4984:	23040613          	addi	a2,s0,560
    4988:	00040513          	mv	a0,s0
    498c:	00000097          	auipc	ra,0x0
    4990:	df8080e7          	jalr	-520(ra) # 4784 <_write_sectors>
    4994:	00050463          	beqz	a0,499c <fl_fflush+0x6c>
    4998:	42042a23          	sw	zero,1076(s0)
    499c:	0404a783          	lw	a5,64(s1)
    49a0:	00078463          	beqz	a5,49a8 <fl_fflush+0x78>
    49a4:	000780e7          	jalr	a5
    49a8:	00c12083          	lw	ra,12(sp)
    49ac:	00812403          	lw	s0,8(sp)
    49b0:	00412483          	lw	s1,4(sp)
    49b4:	00000513          	li	a0,0
    49b8:	01010113          	addi	sp,sp,16
    49bc:	00008067          	ret

000049c0 <fl_fclose>:
    49c0:	000057b7          	lui	a5,0x5
    49c4:	7b87a783          	lw	a5,1976(a5) # 57b8 <_filelib_init>
    49c8:	ff010113          	addi	sp,sp,-16
    49cc:	00812423          	sw	s0,8(sp)
    49d0:	00112623          	sw	ra,12(sp)
    49d4:	00912223          	sw	s1,4(sp)
    49d8:	01212023          	sw	s2,0(sp)
    49dc:	00050413          	mv	s0,a0
    49e0:	00079663          	bnez	a5,49ec <fl_fclose+0x2c>
    49e4:	ffffe097          	auipc	ra,0xffffe
    49e8:	9d0080e7          	jalr	-1584(ra) # 23b4 <fl_init>
    49ec:	08040e63          	beqz	s0,4a88 <fl_fclose+0xc8>
    49f0:	000064b7          	lui	s1,0x6
    49f4:	fbc48793          	addi	a5,s1,-68 # 5fbc <_fs>
    49f8:	03c7a783          	lw	a5,60(a5)
    49fc:	fbc48913          	addi	s2,s1,-68
    4a00:	00078463          	beqz	a5,4a08 <fl_fclose+0x48>
    4a04:	000780e7          	jalr	a5
    4a08:	00040513          	mv	a0,s0
    4a0c:	00000097          	auipc	ra,0x0
    4a10:	f24080e7          	jalr	-220(ra) # 4930 <fl_fflush>
    4a14:	01042783          	lw	a5,16(s0)
    4a18:	00078e63          	beqz	a5,4a34 <fl_fclose+0x74>
    4a1c:	00c42683          	lw	a3,12(s0)
    4a20:	00042583          	lw	a1,0(s0)
    4a24:	21c40613          	addi	a2,s0,540
    4a28:	fbc48513          	addi	a0,s1,-68
    4a2c:	fffff097          	auipc	ra,0xfffff
    4a30:	300080e7          	jalr	768(ra) # 3d2c <fatfs_update_file_length>
    4a34:	fff00793          	li	a5,-1
    4a38:	42f42823          	sw	a5,1072(s0)
    4a3c:	00040513          	mv	a0,s0
    4a40:	00042423          	sw	zero,8(s0)
    4a44:	00042623          	sw	zero,12(s0)
    4a48:	00042223          	sw	zero,4(s0)
    4a4c:	42042a23          	sw	zero,1076(s0)
    4a50:	00042823          	sw	zero,16(s0)
    4a54:	ffffd097          	auipc	ra,0xffffd
    4a58:	7dc080e7          	jalr	2012(ra) # 2230 <_free_file>
    4a5c:	fbc48513          	addi	a0,s1,-68
    4a60:	fffff097          	auipc	ra,0xfffff
    4a64:	a14080e7          	jalr	-1516(ra) # 3474 <fatfs_fat_purge>
    4a68:	04092783          	lw	a5,64(s2)
    4a6c:	00078e63          	beqz	a5,4a88 <fl_fclose+0xc8>
    4a70:	00812403          	lw	s0,8(sp)
    4a74:	00c12083          	lw	ra,12(sp)
    4a78:	00412483          	lw	s1,4(sp)
    4a7c:	00012903          	lw	s2,0(sp)
    4a80:	01010113          	addi	sp,sp,16
    4a84:	00078067          	jr	a5
    4a88:	00c12083          	lw	ra,12(sp)
    4a8c:	00812403          	lw	s0,8(sp)
    4a90:	00412483          	lw	s1,4(sp)
    4a94:	00012903          	lw	s2,0(sp)
    4a98:	01010113          	addi	sp,sp,16
    4a9c:	00008067          	ret

00004aa0 <fl_fread>:
    4aa0:	fd010113          	addi	sp,sp,-48
    4aa4:	01612823          	sw	s6,16(sp)
    4aa8:	00050b13          	mv	s6,a0
    4aac:	00058513          	mv	a0,a1
    4ab0:	00060593          	mv	a1,a2
    4ab4:	02812423          	sw	s0,40(sp)
    4ab8:	02912223          	sw	s1,36(sp)
    4abc:	02112623          	sw	ra,44(sp)
    4ac0:	03212023          	sw	s2,32(sp)
    4ac4:	01312e23          	sw	s3,28(sp)
    4ac8:	01412c23          	sw	s4,24(sp)
    4acc:	01512a23          	sw	s5,20(sp)
    4ad0:	01712623          	sw	s7,12(sp)
    4ad4:	01812423          	sw	s8,8(sp)
    4ad8:	01912223          	sw	s9,4(sp)
    4adc:	00068413          	mv	s0,a3
    4ae0:	ffffd097          	auipc	ra,0xffffd
    4ae4:	43c080e7          	jalr	1084(ra) # 1f1c <__mulsi3>
    4ae8:	000057b7          	lui	a5,0x5
    4aec:	7b87a783          	lw	a5,1976(a5) # 57b8 <_filelib_init>
    4af0:	00050493          	mv	s1,a0
    4af4:	00079663          	bnez	a5,4b00 <fl_fread+0x60>
    4af8:	ffffe097          	auipc	ra,0xffffe
    4afc:	8bc080e7          	jalr	-1860(ra) # 23b4 <fl_init>
    4b00:	120b0e63          	beqz	s6,4c3c <fl_fread+0x19c>
    4b04:	12040c63          	beqz	s0,4c3c <fl_fread+0x19c>
    4b08:	43844783          	lbu	a5,1080(s0)
    4b0c:	0017f793          	andi	a5,a5,1
    4b10:	12078663          	beqz	a5,4c3c <fl_fread+0x19c>
    4b14:	0a048e63          	beqz	s1,4bd0 <fl_fread+0x130>
    4b18:	00842583          	lw	a1,8(s0)
    4b1c:	00c42783          	lw	a5,12(s0)
    4b20:	10f5fe63          	bgeu	a1,a5,4c3c <fl_fread+0x19c>
    4b24:	00b48733          	add	a4,s1,a1
    4b28:	00e7f463          	bgeu	a5,a4,4b30 <fl_fread+0x90>
    4b2c:	40b784b3          	sub	s1,a5,a1
    4b30:	0095da13          	srli	s4,a1,0x9
    4b34:	1ff5f913          	andi	s2,a1,511
    4b38:	00000993          	li	s3,0
    4b3c:	23040b93          	addi	s7,s0,560
    4b40:	20000c13          	li	s8,512
    4b44:	1ff00c93          	li	s9,511
    4b48:	0899d263          	bge	s3,s1,4bcc <fl_fread+0x12c>
    4b4c:	04091463          	bnez	s2,4b94 <fl_fread+0xf4>
    4b50:	413486b3          	sub	a3,s1,s3
    4b54:	04dcd063          	bge	s9,a3,4b94 <fl_fread+0xf4>
    4b58:	4096d693          	srai	a3,a3,0x9
    4b5c:	013b0633          	add	a2,s6,s3
    4b60:	000a0593          	mv	a1,s4
    4b64:	00040513          	mv	a0,s0
    4b68:	fffff097          	auipc	ra,0xfffff
    4b6c:	604080e7          	jalr	1540(ra) # 416c <_read_sectors>
    4b70:	04050e63          	beqz	a0,4bcc <fl_fread+0x12c>
    4b74:	00951a93          	slli	s5,a0,0x9
    4b78:	00aa0a33          	add	s4,s4,a0
    4b7c:	00842783          	lw	a5,8(s0)
    4b80:	015989b3          	add	s3,s3,s5
    4b84:	00000913          	li	s2,0
    4b88:	015787b3          	add	a5,a5,s5
    4b8c:	00f42423          	sw	a5,8(s0)
    4b90:	fb9ff06f          	j	4b48 <fl_fread+0xa8>
    4b94:	43042783          	lw	a5,1072(s0)
    4b98:	07478c63          	beq	a5,s4,4c10 <fl_fread+0x170>
    4b9c:	43442783          	lw	a5,1076(s0)
    4ba0:	00078863          	beqz	a5,4bb0 <fl_fread+0x110>
    4ba4:	00040513          	mv	a0,s0
    4ba8:	00000097          	auipc	ra,0x0
    4bac:	d88080e7          	jalr	-632(ra) # 4930 <fl_fflush>
    4bb0:	00100693          	li	a3,1
    4bb4:	000b8613          	mv	a2,s7
    4bb8:	000a0593          	mv	a1,s4
    4bbc:	00040513          	mv	a0,s0
    4bc0:	fffff097          	auipc	ra,0xfffff
    4bc4:	5ac080e7          	jalr	1452(ra) # 416c <_read_sectors>
    4bc8:	04051063          	bnez	a0,4c08 <fl_fread+0x168>
    4bcc:	00098493          	mv	s1,s3
    4bd0:	02c12083          	lw	ra,44(sp)
    4bd4:	02812403          	lw	s0,40(sp)
    4bd8:	02012903          	lw	s2,32(sp)
    4bdc:	01c12983          	lw	s3,28(sp)
    4be0:	01812a03          	lw	s4,24(sp)
    4be4:	01412a83          	lw	s5,20(sp)
    4be8:	01012b03          	lw	s6,16(sp)
    4bec:	00c12b83          	lw	s7,12(sp)
    4bf0:	00812c03          	lw	s8,8(sp)
    4bf4:	00412c83          	lw	s9,4(sp)
    4bf8:	00048513          	mv	a0,s1
    4bfc:	02412483          	lw	s1,36(sp)
    4c00:	03010113          	addi	sp,sp,48
    4c04:	00008067          	ret
    4c08:	43442823          	sw	s4,1072(s0)
    4c0c:	42042a23          	sw	zero,1076(s0)
    4c10:	412c07b3          	sub	a5,s8,s2
    4c14:	41348ab3          	sub	s5,s1,s3
    4c18:	0157d463          	bge	a5,s5,4c20 <fl_fread+0x180>
    4c1c:	00078a93          	mv	s5,a5
    4c20:	000a8613          	mv	a2,s5
    4c24:	012b85b3          	add	a1,s7,s2
    4c28:	013b0533          	add	a0,s6,s3
    4c2c:	ffffd097          	auipc	ra,0xffffd
    4c30:	bc8080e7          	jalr	-1080(ra) # 17f4 <memcpy>
    4c34:	001a0a13          	addi	s4,s4,1
    4c38:	f45ff06f          	j	4b7c <fl_fread+0xdc>
    4c3c:	fff00493          	li	s1,-1
    4c40:	f91ff06f          	j	4bd0 <fl_fread+0x130>

00004c44 <fatfs_allocate_free_space>:
    4c44:	02069a63          	bnez	a3,4c78 <fatfs_allocate_free_space+0x34>
    4c48:	00000513          	li	a0,0
    4c4c:	00008067          	ret
    4c50:	00000513          	li	a0,0
    4c54:	02c12083          	lw	ra,44(sp)
    4c58:	02812403          	lw	s0,40(sp)
    4c5c:	02412483          	lw	s1,36(sp)
    4c60:	02012903          	lw	s2,32(sp)
    4c64:	01c12983          	lw	s3,28(sp)
    4c68:	01812a03          	lw	s4,24(sp)
    4c6c:	01412a83          	lw	s5,20(sp)
    4c70:	03010113          	addi	sp,sp,48
    4c74:	00008067          	ret
    4c78:	02452703          	lw	a4,36(a0)
    4c7c:	fd010113          	addi	sp,sp,-48
    4c80:	02812423          	sw	s0,40(sp)
    4c84:	03212023          	sw	s2,32(sp)
    4c88:	01312e23          	sw	s3,28(sp)
    4c8c:	01512a23          	sw	s5,20(sp)
    4c90:	02112623          	sw	ra,44(sp)
    4c94:	02912223          	sw	s1,36(sp)
    4c98:	01412c23          	sw	s4,24(sp)
    4c9c:	fff00793          	li	a5,-1
    4ca0:	00050413          	mv	s0,a0
    4ca4:	00058a93          	mv	s5,a1
    4ca8:	00060993          	mv	s3,a2
    4cac:	00068913          	mv	s2,a3
    4cb0:	00f70863          	beq	a4,a5,4cc0 <fatfs_allocate_free_space+0x7c>
    4cb4:	fff00593          	li	a1,-1
    4cb8:	fffff097          	auipc	ra,0xfffff
    4cbc:	600080e7          	jalr	1536(ra) # 42b8 <fatfs_set_fs_info_next_free_cluster>
    4cc0:	00044a03          	lbu	s4,0(s0)
    4cc4:	00090513          	mv	a0,s2
    4cc8:	009a1a13          	slli	s4,s4,0x9
    4ccc:	000a0593          	mv	a1,s4
    4cd0:	ffffd097          	auipc	ra,0xffffd
    4cd4:	a5c080e7          	jalr	-1444(ra) # 172c <__udivsi3>
    4cd8:	00050493          	mv	s1,a0
    4cdc:	00050593          	mv	a1,a0
    4ce0:	000a0513          	mv	a0,s4
    4ce4:	ffffd097          	auipc	ra,0xffffd
    4ce8:	238080e7          	jalr	568(ra) # 1f1c <__mulsi3>
    4cec:	01250463          	beq	a0,s2,4cf4 <fatfs_allocate_free_space+0xb0>
    4cf0:	00148493          	addi	s1,s1,1
    4cf4:	040a8463          	beqz	s5,4d3c <fatfs_allocate_free_space+0xf8>
    4cf8:	00842583          	lw	a1,8(s0)
    4cfc:	00c10613          	addi	a2,sp,12
    4d00:	00040513          	mv	a0,s0
    4d04:	fffff097          	auipc	ra,0xfffff
    4d08:	66c080e7          	jalr	1644(ra) # 4370 <fatfs_find_blank_cluster>
    4d0c:	f40502e3          	beqz	a0,4c50 <fatfs_allocate_free_space+0xc>
    4d10:	00100793          	li	a5,1
    4d14:	02f49863          	bne	s1,a5,4d44 <fatfs_allocate_free_space+0x100>
    4d18:	00c12483          	lw	s1,12(sp)
    4d1c:	fff00613          	li	a2,-1
    4d20:	00040513          	mv	a0,s0
    4d24:	00048593          	mv	a1,s1
    4d28:	fffff097          	auipc	ra,0xfffff
    4d2c:	768080e7          	jalr	1896(ra) # 4490 <fatfs_fat_set_cluster>
    4d30:	00100513          	li	a0,1
    4d34:	0099a023          	sw	s1,0(s3)
    4d38:	f1dff06f          	j	4c54 <fatfs_allocate_free_space+0x10>
    4d3c:	0009a783          	lw	a5,0(s3)
    4d40:	00f12623          	sw	a5,12(sp)
    4d44:	00048613          	mv	a2,s1
    4d48:	00c10593          	addi	a1,sp,12
    4d4c:	00040513          	mv	a0,s0
    4d50:	00000097          	auipc	ra,0x0
    4d54:	964080e7          	jalr	-1692(ra) # 46b4 <fatfs_add_free_space>
    4d58:	00a03533          	snez	a0,a0
    4d5c:	ef9ff06f          	j	4c54 <fatfs_allocate_free_space+0x10>

00004d60 <fatfs_add_file_entry>:
    4d60:	f8010113          	addi	sp,sp,-128
    4d64:	00f12a23          	sw	a5,20(sp)
    4d68:	03852783          	lw	a5,56(a0)
    4d6c:	06112e23          	sw	ra,124(sp)
    4d70:	06812c23          	sw	s0,120(sp)
    4d74:	06912a23          	sw	s1,116(sp)
    4d78:	07212823          	sw	s2,112(sp)
    4d7c:	07312623          	sw	s3,108(sp)
    4d80:	07412423          	sw	s4,104(sp)
    4d84:	07512223          	sw	s5,100(sp)
    4d88:	07612023          	sw	s6,96(sp)
    4d8c:	05712e23          	sw	s7,92(sp)
    4d90:	05812c23          	sw	s8,88(sp)
    4d94:	05912a23          	sw	s9,84(sp)
    4d98:	05a12823          	sw	s10,80(sp)
    4d9c:	05b12623          	sw	s11,76(sp)
    4da0:	00b12423          	sw	a1,8(sp)
    4da4:	00c12623          	sw	a2,12(sp)
    4da8:	00e12823          	sw	a4,16(sp)
    4dac:	01012c23          	sw	a6,24(sp)
    4db0:	04079263          	bnez	a5,4df4 <fatfs_add_file_entry+0x94>
    4db4:	00000513          	li	a0,0
    4db8:	07c12083          	lw	ra,124(sp)
    4dbc:	07812403          	lw	s0,120(sp)
    4dc0:	07412483          	lw	s1,116(sp)
    4dc4:	07012903          	lw	s2,112(sp)
    4dc8:	06c12983          	lw	s3,108(sp)
    4dcc:	06812a03          	lw	s4,104(sp)
    4dd0:	06412a83          	lw	s5,100(sp)
    4dd4:	06012b03          	lw	s6,96(sp)
    4dd8:	05c12b83          	lw	s7,92(sp)
    4ddc:	05812c03          	lw	s8,88(sp)
    4de0:	05412c83          	lw	s9,84(sp)
    4de4:	05012d03          	lw	s10,80(sp)
    4de8:	04c12d83          	lw	s11,76(sp)
    4dec:	08010113          	addi	sp,sp,128
    4df0:	00008067          	ret
    4df4:	00050413          	mv	s0,a0
    4df8:	00c12503          	lw	a0,12(sp)
    4dfc:	00068a93          	mv	s5,a3
    4e00:	ffffe097          	auipc	ra,0xffffe
    4e04:	9c0080e7          	jalr	-1600(ra) # 27c0 <fatfs_lfn_entries_required>
    4e08:	00150713          	addi	a4,a0,1
    4e0c:	00100793          	li	a5,1
    4e10:	00050493          	mv	s1,a0
    4e14:	fae7f0e3          	bgeu	a5,a4,4db4 <fatfs_add_file_entry+0x54>
    4e18:	00000913          	li	s2,0
    4e1c:	00000a13          	li	s4,0
    4e20:	00000993          	li	s3,0
    4e24:	00000b13          	li	s6,0
    4e28:	00000d93          	li	s11,0
    4e2c:	0e500b93          	li	s7,229
    4e30:	01000c13          	li	s8,16
    4e34:	00812583          	lw	a1,8(sp)
    4e38:	00000693          	li	a3,0
    4e3c:	00090613          	mv	a2,s2
    4e40:	00040513          	mv	a0,s0
    4e44:	ffffe097          	auipc	ra,0xffffe
    4e48:	79c080e7          	jalr	1948(ra) # 35e0 <fatfs_sector_reader>
    4e4c:	14050463          	beqz	a0,4f94 <fatfs_add_file_entry+0x234>
    4e50:	04440d13          	addi	s10,s0,68
    4e54:	000d8793          	mv	a5,s11
    4e58:	00000c93          	li	s9,0
    4e5c:	000d0513          	mv	a0,s10
    4e60:	00f12e23          	sw	a5,28(sp)
    4e64:	ffffe097          	auipc	ra,0xffffe
    4e68:	86c080e7          	jalr	-1940(ra) # 26d0 <fatfs_entry_lfn_text>
    4e6c:	01c12783          	lw	a5,28(sp)
    4e70:	00050d93          	mv	s11,a0
    4e74:	02050c63          	beqz	a0,4eac <fatfs_add_file_entry+0x14c>
    4e78:	00079863          	bnez	a5,4e88 <fatfs_add_file_entry+0x128>
    4e7c:	000c8a13          	mv	s4,s9
    4e80:	00090993          	mv	s3,s2
    4e84:	00100b13          	li	s6,1
    4e88:	00178d93          	addi	s11,a5,1
    4e8c:	001c8713          	addi	a4,s9,1
    4e90:	0ff77c93          	zext.b	s9,a4
    4e94:	020d0d13          	addi	s10,s10,32
    4e98:	018c9663          	bne	s9,s8,4ea4 <fatfs_add_file_entry+0x144>
    4e9c:	00190913          	addi	s2,s2,1
    4ea0:	f95ff06f          	j	4e34 <fatfs_add_file_entry+0xd4>
    4ea4:	000d8793          	mv	a5,s11
    4ea8:	fb5ff06f          	j	4e5c <fatfs_add_file_entry+0xfc>
    4eac:	000d4603          	lbu	a2,0(s10)
    4eb0:	0d761c63          	bne	a2,s7,4f88 <fatfs_add_file_entry+0x228>
    4eb4:	00079863          	bnez	a5,4ec4 <fatfs_add_file_entry+0x164>
    4eb8:	000c8a13          	mv	s4,s9
    4ebc:	00090993          	mv	s3,s2
    4ec0:	00100b13          	li	s6,1
    4ec4:	00178d93          	addi	s11,a5,1
    4ec8:	fc97c2e3          	blt	a5,s1,4e8c <fatfs_add_file_entry+0x12c>
    4ecc:	00ba8693          	addi	a3,s5,11
    4ed0:	000a8713          	mv	a4,s5
    4ed4:	00000913          	li	s2,0
    4ed8:	00074603          	lbu	a2,0(a4)
    4edc:	00195793          	srli	a5,s2,0x1
    4ee0:	00791913          	slli	s2,s2,0x7
    4ee4:	0127e7b3          	or	a5,a5,s2
    4ee8:	00170713          	addi	a4,a4,1
    4eec:	00c787b3          	add	a5,a5,a2
    4ef0:	0ff7f913          	zext.b	s2,a5
    4ef4:	fed712e3          	bne	a4,a3,4ed8 <fatfs_add_file_entry+0x178>
    4ef8:	00098b13          	mv	s6,s3
    4efc:	00000d93          	li	s11,0
    4f00:	04440c13          	addi	s8,s0,68
    4f04:	01000c93          	li	s9,16
    4f08:	00812583          	lw	a1,8(sp)
    4f0c:	00000693          	li	a3,0
    4f10:	000b0613          	mv	a2,s6
    4f14:	00040513          	mv	a0,s0
    4f18:	ffffe097          	auipc	ra,0xffffe
    4f1c:	6c8080e7          	jalr	1736(ra) # 35e0 <fatfs_sector_reader>
    4f20:	e8050ae3          	beqz	a0,4db4 <fatfs_add_file_entry+0x54>
    4f24:	000c0b93          	mv	s7,s8
    4f28:	00000713          	li	a4,0
    4f2c:	00000d13          	li	s10,0
    4f30:	000d9663          	bnez	s11,4f3c <fatfs_add_file_entry+0x1dc>
    4f34:	11699863          	bne	s3,s6,5044 <fatfs_add_file_entry+0x2e4>
    4f38:	114d1663          	bne	s10,s4,5044 <fatfs_add_file_entry+0x2e4>
    4f3c:	0e049263          	bnez	s1,5020 <fatfs_add_file_entry+0x2c0>
    4f40:	01812703          	lw	a4,24(sp)
    4f44:	01012603          	lw	a2,16(sp)
    4f48:	01412583          	lw	a1,20(sp)
    4f4c:	02010693          	addi	a3,sp,32
    4f50:	000a8513          	mv	a0,s5
    4f54:	ffffe097          	auipc	ra,0xffffe
    4f58:	9c4080e7          	jalr	-1596(ra) # 2918 <fatfs_sfn_create_entry>
    4f5c:	02010593          	addi	a1,sp,32
    4f60:	02000613          	li	a2,32
    4f64:	000b8513          	mv	a0,s7
    4f68:	ffffd097          	auipc	ra,0xffffd
    4f6c:	88c080e7          	jalr	-1908(ra) # 17f4 <memcpy>
    4f70:	03842783          	lw	a5,56(s0)
    4f74:	24442503          	lw	a0,580(s0)
    4f78:	00100613          	li	a2,1
    4f7c:	000c0593          	mv	a1,s8
    4f80:	000780e7          	jalr	a5
    4f84:	e35ff06f          	j	4db8 <fatfs_add_file_entry+0x58>
    4f88:	f20606e3          	beqz	a2,4eb4 <fatfs_add_file_entry+0x154>
    4f8c:	00000b13          	li	s6,0
    4f90:	efdff06f          	j	4e8c <fatfs_add_file_entry+0x12c>
    4f94:	00842583          	lw	a1,8(s0)
    4f98:	02010613          	addi	a2,sp,32
    4f9c:	00040513          	mv	a0,s0
    4fa0:	fffff097          	auipc	ra,0xfffff
    4fa4:	3d0080e7          	jalr	976(ra) # 4370 <fatfs_find_blank_cluster>
    4fa8:	e00506e3          	beqz	a0,4db4 <fatfs_add_file_entry+0x54>
    4fac:	02012b83          	lw	s7,32(sp)
    4fb0:	00812583          	lw	a1,8(sp)
    4fb4:	00040513          	mv	a0,s0
    4fb8:	000b8613          	mv	a2,s7
    4fbc:	fffff097          	auipc	ra,0xfffff
    4fc0:	65c080e7          	jalr	1628(ra) # 4618 <fatfs_fat_add_cluster_to_chain>
    4fc4:	de0508e3          	beqz	a0,4db4 <fatfs_add_file_entry+0x54>
    4fc8:	20000613          	li	a2,512
    4fcc:	00000593          	li	a1,0
    4fd0:	04440513          	addi	a0,s0,68
    4fd4:	ffffd097          	auipc	ra,0xffffd
    4fd8:	804080e7          	jalr	-2044(ra) # 17d8 <memset>
    4fdc:	00000c13          	li	s8,0
    4fe0:	00044783          	lbu	a5,0(s0)
    4fe4:	00fc6a63          	bltu	s8,a5,4ff8 <fatfs_add_file_entry+0x298>
    4fe8:	ee0b12e3          	bnez	s6,4ecc <fatfs_add_file_entry+0x16c>
    4fec:	00090993          	mv	s3,s2
    4ff0:	00000a13          	li	s4,0
    4ff4:	ed9ff06f          	j	4ecc <fatfs_add_file_entry+0x16c>
    4ff8:	00000693          	li	a3,0
    4ffc:	000c0613          	mv	a2,s8
    5000:	000b8593          	mv	a1,s7
    5004:	00040513          	mv	a0,s0
    5008:	ffffd097          	auipc	ra,0xffffd
    500c:	2f0080e7          	jalr	752(ra) # 22f8 <fatfs_write_sector>
    5010:	da0502e3          	beqz	a0,4db4 <fatfs_add_file_entry+0x54>
    5014:	001c0c13          	addi	s8,s8,1
    5018:	0ffc7c13          	zext.b	s8,s8
    501c:	fc5ff06f          	j	4fe0 <fatfs_add_file_entry+0x280>
    5020:	00c12503          	lw	a0,12(sp)
    5024:	fff48493          	addi	s1,s1,-1
    5028:	00090693          	mv	a3,s2
    502c:	00048613          	mv	a2,s1
    5030:	000b8593          	mv	a1,s7
    5034:	ffffd097          	auipc	ra,0xffffd
    5038:	7bc080e7          	jalr	1980(ra) # 27f0 <fatfs_filename_to_lfn>
    503c:	00100d93          	li	s11,1
    5040:	00100713          	li	a4,1
    5044:	001d0793          	addi	a5,s10,1
    5048:	0ff7fd13          	zext.b	s10,a5
    504c:	020b8b93          	addi	s7,s7,32
    5050:	ef9d10e3          	bne	s10,s9,4f30 <fatfs_add_file_entry+0x1d0>
    5054:	00070e63          	beqz	a4,5070 <fatfs_add_file_entry+0x310>
    5058:	03842783          	lw	a5,56(s0)
    505c:	24442503          	lw	a0,580(s0)
    5060:	00100613          	li	a2,1
    5064:	000c0593          	mv	a1,s8
    5068:	000780e7          	jalr	a5
    506c:	d40504e3          	beqz	a0,4db4 <fatfs_add_file_entry+0x54>
    5070:	001b0b13          	addi	s6,s6,1
    5074:	e95ff06f          	j	4f08 <fatfs_add_file_entry+0x1a8>

00005078 <fl_fopen>:
    5078:	000057b7          	lui	a5,0x5
    507c:	7b87a783          	lw	a5,1976(a5) # 57b8 <_filelib_init>
    5080:	fa010113          	addi	sp,sp,-96
    5084:	04812c23          	sw	s0,88(sp)
    5088:	05412423          	sw	s4,72(sp)
    508c:	04112e23          	sw	ra,92(sp)
    5090:	04912a23          	sw	s1,84(sp)
    5094:	05212823          	sw	s2,80(sp)
    5098:	05312623          	sw	s3,76(sp)
    509c:	05512223          	sw	s5,68(sp)
    50a0:	05612023          	sw	s6,64(sp)
    50a4:	03712e23          	sw	s7,60(sp)
    50a8:	03812c23          	sw	s8,56(sp)
    50ac:	03912a23          	sw	s9,52(sp)
    50b0:	00050a13          	mv	s4,a0
    50b4:	00058413          	mv	s0,a1
    50b8:	00079663          	bnez	a5,50c4 <fl_fopen+0x4c>
    50bc:	ffffd097          	auipc	ra,0xffffd
    50c0:	2f8080e7          	jalr	760(ra) # 23b4 <fl_init>
    50c4:	000057b7          	lui	a5,0x5
    50c8:	7b47a783          	lw	a5,1972(a5) # 57b4 <_filelib_valid>
    50cc:	36078c63          	beqz	a5,5444 <fl_fopen+0x3cc>
    50d0:	360a0a63          	beqz	s4,5444 <fl_fopen+0x3cc>
    50d4:	10040863          	beqz	s0,51e4 <fl_fopen+0x16c>
    50d8:	00040513          	mv	a0,s0
    50dc:	ffffc097          	auipc	ra,0xffffc
    50e0:	73c080e7          	jalr	1852(ra) # 1818 <strlen>
    50e4:	00000493          	li	s1,0
    50e8:	00000713          	li	a4,0
    50ec:	05700693          	li	a3,87
    50f0:	07200613          	li	a2,114
    50f4:	07700813          	li	a6,119
    50f8:	06100893          	li	a7,97
    50fc:	06200313          	li	t1,98
    5100:	04100593          	li	a1,65
    5104:	04200e13          	li	t3,66
    5108:	05200e93          	li	t4,82
    510c:	02b00f13          	li	t5,43
    5110:	10a74663          	blt	a4,a0,521c <fl_fopen+0x1a4>
    5114:	00006937          	lui	s2,0x6
    5118:	fbc90793          	addi	a5,s2,-68 # 5fbc <_fs>
    511c:	0387a783          	lw	a5,56(a5)
    5120:	fbc90b13          	addi	s6,s2,-68
    5124:	00079463          	bnez	a5,512c <fl_fopen+0xb4>
    5128:	0d94f493          	andi	s1,s1,217
    512c:	03cb2783          	lw	a5,60(s6)
    5130:	00078463          	beqz	a5,5138 <fl_fopen+0xc0>
    5134:	000780e7          	jalr	a5
    5138:	0014fc93          	andi	s9,s1,1
    513c:	160c9863          	bnez	s9,52ac <fl_fopen+0x234>
    5140:	0204f793          	andi	a5,s1,32
    5144:	08078863          	beqz	a5,51d4 <fl_fopen+0x15c>
    5148:	038b2783          	lw	a5,56(s6)
    514c:	06078a63          	beqz	a5,51c0 <fl_fopen+0x148>
    5150:	ffffd097          	auipc	ra,0xffffd
    5154:	06c080e7          	jalr	108(ra) # 21bc <_allocate_file>
    5158:	00050413          	mv	s0,a0
    515c:	06050263          	beqz	a0,51c0 <fl_fopen+0x148>
    5160:	01450b93          	addi	s7,a0,20
    5164:	10400613          	li	a2,260
    5168:	00000593          	li	a1,0
    516c:	000b8513          	mv	a0,s7
    5170:	ffffc097          	auipc	ra,0xffffc
    5174:	668080e7          	jalr	1640(ra) # 17d8 <memset>
    5178:	11840a93          	addi	s5,s0,280
    517c:	10400613          	li	a2,260
    5180:	00000593          	li	a1,0
    5184:	000a8513          	mv	a0,s5
    5188:	ffffc097          	auipc	ra,0xffffc
    518c:	650080e7          	jalr	1616(ra) # 17d8 <memset>
    5190:	10400713          	li	a4,260
    5194:	000a8693          	mv	a3,s5
    5198:	10400613          	li	a2,260
    519c:	000b8593          	mv	a1,s7
    51a0:	000a0513          	mv	a0,s4
    51a4:	ffffe097          	auipc	ra,0xffffe
    51a8:	c78080e7          	jalr	-904(ra) # 2e1c <fatfs_split_path>
    51ac:	fff00793          	li	a5,-1
    51b0:	10f51c63          	bne	a0,a5,52c8 <fl_fopen+0x250>
    51b4:	00040513          	mv	a0,s0
    51b8:	ffffd097          	auipc	ra,0xffffd
    51bc:	078080e7          	jalr	120(ra) # 2230 <_free_file>
    51c0:	00000413          	li	s0,0
    51c4:	260c9c63          	bnez	s9,543c <fl_fopen+0x3c4>
    51c8:	0e041c63          	bnez	s0,52c0 <fl_fopen+0x248>
    51cc:	0064f793          	andi	a5,s1,6
    51d0:	24079e63          	bnez	a5,542c <fl_fopen+0x3b4>
    51d4:	00000413          	li	s0,0
    51d8:	040b2783          	lw	a5,64(s6)
    51dc:	00078463          	beqz	a5,51e4 <fl_fopen+0x16c>
    51e0:	000780e7          	jalr	a5
    51e4:	05c12083          	lw	ra,92(sp)
    51e8:	00040513          	mv	a0,s0
    51ec:	05812403          	lw	s0,88(sp)
    51f0:	05412483          	lw	s1,84(sp)
    51f4:	05012903          	lw	s2,80(sp)
    51f8:	04c12983          	lw	s3,76(sp)
    51fc:	04812a03          	lw	s4,72(sp)
    5200:	04412a83          	lw	s5,68(sp)
    5204:	04012b03          	lw	s6,64(sp)
    5208:	03c12b83          	lw	s7,60(sp)
    520c:	03812c03          	lw	s8,56(sp)
    5210:	03412c83          	lw	s9,52(sp)
    5214:	06010113          	addi	sp,sp,96
    5218:	00008067          	ret
    521c:	00e407b3          	add	a5,s0,a4
    5220:	0007c783          	lbu	a5,0(a5)
    5224:	04d78463          	beq	a5,a3,526c <fl_fopen+0x1f4>
    5228:	02f6e463          	bltu	a3,a5,5250 <fl_fopen+0x1d8>
    522c:	04b78463          	beq	a5,a1,5274 <fl_fopen+0x1fc>
    5230:	00f5e863          	bltu	a1,a5,5240 <fl_fopen+0x1c8>
    5234:	05e78463          	beq	a5,t5,527c <fl_fopen+0x204>
    5238:	00170713          	addi	a4,a4,1
    523c:	ed5ff06f          	j	5110 <fl_fopen+0x98>
    5240:	03c78063          	beq	a5,t3,5260 <fl_fopen+0x1e8>
    5244:	ffd79ae3          	bne	a5,t4,5238 <fl_fopen+0x1c0>
    5248:	0014e493          	ori	s1,s1,1
    524c:	fedff06f          	j	5238 <fl_fopen+0x1c0>
    5250:	fec78ce3          	beq	a5,a2,5248 <fl_fopen+0x1d0>
    5254:	00f66a63          	bltu	a2,a5,5268 <fl_fopen+0x1f0>
    5258:	01178e63          	beq	a5,a7,5274 <fl_fopen+0x1fc>
    525c:	fc679ee3          	bne	a5,t1,5238 <fl_fopen+0x1c0>
    5260:	0084e493          	ori	s1,s1,8
    5264:	fd5ff06f          	j	5238 <fl_fopen+0x1c0>
    5268:	fd0798e3          	bne	a5,a6,5238 <fl_fopen+0x1c0>
    526c:	0324e493          	ori	s1,s1,50
    5270:	fc9ff06f          	j	5238 <fl_fopen+0x1c0>
    5274:	0264e493          	ori	s1,s1,38
    5278:	fc1ff06f          	j	5238 <fl_fopen+0x1c0>
    527c:	0014f793          	andi	a5,s1,1
    5280:	00078663          	beqz	a5,528c <fl_fopen+0x214>
    5284:	0024e493          	ori	s1,s1,2
    5288:	fb1ff06f          	j	5238 <fl_fopen+0x1c0>
    528c:	0024f793          	andi	a5,s1,2
    5290:	00078663          	beqz	a5,529c <fl_fopen+0x224>
    5294:	0314e493          	ori	s1,s1,49
    5298:	fa1ff06f          	j	5238 <fl_fopen+0x1c0>
    529c:	0044f793          	andi	a5,s1,4
    52a0:	f8078ce3          	beqz	a5,5238 <fl_fopen+0x1c0>
    52a4:	0274e493          	ori	s1,s1,39
    52a8:	f91ff06f          	j	5238 <fl_fopen+0x1c0>
    52ac:	000a0513          	mv	a0,s4
    52b0:	fffff097          	auipc	ra,0xfffff
    52b4:	830080e7          	jalr	-2000(ra) # 3ae0 <_open_file>
    52b8:	00050413          	mv	s0,a0
    52bc:	e80502e3          	beqz	a0,5140 <fl_fopen+0xc8>
    52c0:	42940c23          	sb	s1,1080(s0)
    52c4:	f15ff06f          	j	51d8 <fl_fopen+0x160>
    52c8:	00040513          	mv	a0,s0
    52cc:	ffffe097          	auipc	ra,0xffffe
    52d0:	da4080e7          	jalr	-604(ra) # 3070 <_check_file_open>
    52d4:	00050993          	mv	s3,a0
    52d8:	ec051ee3          	bnez	a0,51b4 <fl_fopen+0x13c>
    52dc:	01444783          	lbu	a5,20(s0)
    52e0:	0e079663          	bnez	a5,53cc <fl_fopen+0x354>
    52e4:	008b2783          	lw	a5,8(s6)
    52e8:	00f42023          	sw	a5,0(s0)
    52ec:	00042583          	lw	a1,0(s0)
    52f0:	01010693          	addi	a3,sp,16
    52f4:	000a8613          	mv	a2,s5
    52f8:	fbc90513          	addi	a0,s2,-68
    52fc:	ffffe097          	auipc	ra,0xffffe
    5300:	424080e7          	jalr	1060(ra) # 3720 <fatfs_get_file_entry>
    5304:	00100793          	li	a5,1
    5308:	eaf506e3          	beq	a0,a5,51b4 <fl_fopen+0x13c>
    530c:	00042223          	sw	zero,4(s0)
    5310:	00100693          	li	a3,1
    5314:	00440613          	addi	a2,s0,4
    5318:	00100593          	li	a1,1
    531c:	fbc90513          	addi	a0,s2,-68
    5320:	00000097          	auipc	ra,0x0
    5324:	924080e7          	jalr	-1756(ra) # 4c44 <fatfs_allocate_free_space>
    5328:	e80506e3          	beqz	a0,51b4 <fl_fopen+0x13c>
    532c:	00002c37          	lui	s8,0x2
    5330:	21c40b93          	addi	s7,s0,540
    5334:	70fc0c13          	addi	s8,s8,1807 # 270f <fatfs_entry_lfn_invalid+0x2b>
    5338:	000a8593          	mv	a1,s5
    533c:	00410513          	addi	a0,sp,4
    5340:	ffffd097          	auipc	ra,0xffffd
    5344:	680080e7          	jalr	1664(ra) # 29c0 <fatfs_lfn_create_sfn>
    5348:	08098e63          	beqz	s3,53e4 <fl_fopen+0x36c>
    534c:	00098613          	mv	a2,s3
    5350:	00410593          	addi	a1,sp,4
    5354:	000b8513          	mv	a0,s7
    5358:	ffffd097          	auipc	ra,0xffffd
    535c:	7e4080e7          	jalr	2020(ra) # 2b3c <fatfs_lfn_generate_tail>
    5360:	00042583          	lw	a1,0(s0)
    5364:	000b8613          	mv	a2,s7
    5368:	fbc90513          	addi	a0,s2,-68
    536c:	fffff097          	auipc	ra,0xfffff
    5370:	8ec080e7          	jalr	-1812(ra) # 3c58 <fatfs_sfn_exists>
    5374:	00050663          	beqz	a0,5380 <fl_fopen+0x308>
    5378:	00198993          	addi	s3,s3,1
    537c:	fb899ee3          	bne	s3,s8,5338 <fl_fopen+0x2c0>
    5380:	00442703          	lw	a4,4(s0)
    5384:	000027b7          	lui	a5,0x2
    5388:	70f78793          	addi	a5,a5,1807 # 270f <fatfs_entry_lfn_invalid+0x2b>
    538c:	00070593          	mv	a1,a4
    5390:	02f98663          	beq	s3,a5,53bc <fl_fopen+0x344>
    5394:	00042583          	lw	a1,0(s0)
    5398:	00000813          	li	a6,0
    539c:	00000793          	li	a5,0
    53a0:	000b8693          	mv	a3,s7
    53a4:	000a8613          	mv	a2,s5
    53a8:	fbc90513          	addi	a0,s2,-68
    53ac:	00000097          	auipc	ra,0x0
    53b0:	9b4080e7          	jalr	-1612(ra) # 4d60 <fatfs_add_file_entry>
    53b4:	04051463          	bnez	a0,53fc <fl_fopen+0x384>
    53b8:	00442583          	lw	a1,4(s0)
    53bc:	fbc90513          	addi	a0,s2,-68
    53c0:	fffff097          	auipc	ra,0xfffff
    53c4:	1e8080e7          	jalr	488(ra) # 45a8 <fatfs_free_cluster_chain>
    53c8:	dedff06f          	j	51b4 <fl_fopen+0x13c>
    53cc:	00040593          	mv	a1,s0
    53d0:	000b8513          	mv	a0,s7
    53d4:	ffffe097          	auipc	ra,0xffffe
    53d8:	558080e7          	jalr	1368(ra) # 392c <_open_directory>
    53dc:	f00518e3          	bnez	a0,52ec <fl_fopen+0x274>
    53e0:	dd5ff06f          	j	51b4 <fl_fopen+0x13c>
    53e4:	00b00613          	li	a2,11
    53e8:	00410593          	addi	a1,sp,4
    53ec:	000b8513          	mv	a0,s7
    53f0:	ffffc097          	auipc	ra,0xffffc
    53f4:	404080e7          	jalr	1028(ra) # 17f4 <memcpy>
    53f8:	f69ff06f          	j	5360 <fl_fopen+0x2e8>
    53fc:	fff00793          	li	a5,-1
    5400:	00042623          	sw	zero,12(s0)
    5404:	00042423          	sw	zero,8(s0)
    5408:	42f42823          	sw	a5,1072(s0)
    540c:	42042a23          	sw	zero,1076(s0)
    5410:	00042823          	sw	zero,16(s0)
    5414:	22f42423          	sw	a5,552(s0)
    5418:	22f42623          	sw	a5,556(s0)
    541c:	fbc90513          	addi	a0,s2,-68
    5420:	ffffe097          	auipc	ra,0xffffe
    5424:	054080e7          	jalr	84(ra) # 3474 <fatfs_fat_purge>
    5428:	d9dff06f          	j	51c4 <fl_fopen+0x14c>
    542c:	000a0513          	mv	a0,s4
    5430:	ffffe097          	auipc	ra,0xffffe
    5434:	6b0080e7          	jalr	1712(ra) # 3ae0 <_open_file>
    5438:	00050413          	mv	s0,a0
    543c:	e80412e3          	bnez	s0,52c0 <fl_fopen+0x248>
    5440:	d95ff06f          	j	51d4 <fl_fopen+0x15c>
    5444:	00000413          	li	s0,0
    5448:	d9dff06f          	j	51e4 <fl_fopen+0x16c>

0000544c <g_volume>:
    544c:	00000004                                ....

00005450 <cmd16>:
    5450:	02000050 00001500                       P.......

00005458 <acmd41>:
    5458:	00004069 00000100                       i@......

00005460 <cmd55>:
    5460:	00000077 00000100                       w.......

00005468 <cmd8>:
    5468:	01000048 000087aa                       H.......

00005470 <cmd0>:
    5470:	00000040 00009500                       @.......

00005478 <AUDIO>:
    5478:	00018000                                ....

0000547c <DISPLAY>:
    547c:	00014000                                .@..

00005480 <RGBSEL>:
    5480:	00012000                                . ..

00005484 <VOLUME>:
    5484:	00011000                                ....

00005488 <BUTTONS>:
    5488:	00010100                                ....

0000548c <SDCARD>:
    548c:	00010080                                ....

00005490 <OLED_RST>:
    5490:	00010010                                ....

00005494 <OLED>:
    5494:	00010008                                ....

00005498 <LEDS>:
    5498:	00010004 73756d2f 00006369 74696e69     ..../music..init
    54a8:	20647320 202e2e2e 00000000 000a6b6f      sd ... ....ok..
    54b8:	20202020 3d3d3d3d 616c7020 20726579         ==== player 
    54c8:	3d3d3d3d 20202020 00000a0a 2e206f6e     ====    ....no .
    54d8:	20776172 2f206e69 6973756d 00000a63     raw in /music...
    54e8:	203e6425 000a7325 00006272 2073250a     %d> %s..rb...%s 
    54f8:	20746f6e 6e756f66 00000a64 616c700a     not found....pla
    5508:	676e6979 20732520 0a2e2e2e 00000000     ying %s ........
    5518:	676d692f 676d692f 7761722e 00000000     /img/img.raw....
    5528:	656e6f64 00000a2e 33323130 37363534     done....01234567
    5538:	42413938 46454443 00000000 5f544146     89ABCDEF....FAT_
    5548:	203a5346 6f727245 6f632072 20646c75     FS: Error could 
    5558:	20746f6e 64616f6c 54414620 74656420     not load FAT det
    5568:	736c6961 64252820 0a0d2129 00000000     ails (%d)!......

00005578 <font>:
    5578:	00000000 00002f00 00030000 14000003     ...../..........
    5588:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    5598:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    55a8:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    55b8:	00080800 00200000 20000000 02040810     ...... .... ....
    55c8:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    55d8:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    55e8:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    55f8:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    5608:	00141400 0a110000 01000004 0007052d     ............-...
    5618:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    5628:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    5638:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    5648:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    5658:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    5668:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    5678:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    5688:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    5698:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    56a8:	003f2102 01020000 20000201 00000020     .!?........  ...
    56b8:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    56c8:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    56d8:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    56e8:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    56f8:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    5708:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    5718:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    5728:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    5738:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    5748:	043f2100 02010000 00000102 00000000     .!?.............
    5758:	00000001 00000003 00000005 00000007     ................
    5768:	00000009 0000000e 00000010 00000012     ................
    5778:	00000014 00000016 00000018 0000001c     ................
    5788:	0000001e                                ....

0000578c <file_count>:
    578c:	00000000                                ....

00005790 <sdcard_while_loading_callback>:
    5790:	00000000                                ....

00005794 <back_color>:
	...

00005795 <front_color>:
    5795:	                                         ...

00005798 <cursor_y>:
    5798:	00000000                                ....

0000579c <cursor_x>:
    579c:	00000000                                ....

000057a0 <f_putchar>:
    57a0:	00000000                                ....

000057a4 <_free_file_list>:
	...

000057ac <_open_file_list>:
	...

000057b4 <_filelib_valid>:
    57b4:	00000000                                ....

000057b8 <_filelib_init>:
    57b8:	00000000                                ....
