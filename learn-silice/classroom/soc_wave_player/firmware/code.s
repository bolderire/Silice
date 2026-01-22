
code.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00000097          	auipc	ra,0x0
       8:	4a4080e7          	jalr	1188(ra) # 4a8 <main>
       c:	00000317          	auipc	t1,0x0
      10:	00830067          	jr	8(t1) # 14 <exit>

00000014 <exit>:
      14:	00000000          	.word	0x00000000
      18:	00008067          	ret

0000001c <clear_audio>:
      1c:	ff010113          	addi	sp,sp,-16 # fff0 <_files+0x9d78>
      20:	000057b7          	lui	a5,0x5
      24:	00812423          	sw	s0,8(sp)
      28:	2d07a403          	lw	s0,720(a5) # 52d0 <AUDIO>
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
      54:	5e4080e7          	jalr	1508(ra) # 1634 <memset>
      58:	00042783          	lw	a5,0(s0)
      5c:	fef48ee3          	beq	s1,a5,58 <clear_audio+0x3c>
      60:	00042483          	lw	s1,0(s0)
      64:	20000613          	li	a2,512
      68:	00000593          	li	a1,0
      6c:	00048513          	mv	a0,s1
      70:	00001097          	auipc	ra,0x1
      74:	5c4080e7          	jalr	1476(ra) # 1634 <memset>
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
      a8:	2f050513          	addi	a0,a0,752 # 52f0 <LEDS+0x4>
      ac:	12112e23          	sw	ra,316(sp)
      b0:	12812c23          	sw	s0,312(sp)
      b4:	12912a23          	sw	s1,308(sp)
      b8:	13312623          	sw	s3,300(sp)
      bc:	13412423          	sw	s4,296(sp)
      c0:	13512223          	sw	s5,292(sp)
      c4:	5e092023          	sw	zero,1504(s2) # 55e0 <file_count>
      c8:	00003097          	auipc	ra,0x3
      cc:	7a8080e7          	jalr	1960(ra) # 3870 <fl_opendir>
      d0:	02050863          	beqz	a0,100 <scan_files+0x6c>
      d4:	01f00993          	li	s3,31
      d8:	00300a13          	li	s4,3
      dc:	02e00a93          	li	s5,46
      e0:	01010593          	addi	a1,sp,16
      e4:	00410513          	addi	a0,sp,4
      e8:	00004097          	auipc	ra,0x4
      ec:	e4c080e7          	jalr	-436(ra) # 3f34 <fl_readdir>
      f0:	02050a63          	beqz	a0,124 <scan_files+0x90>
      f4:	00410513          	addi	a0,sp,4
      f8:	00002097          	auipc	ra,0x2
      fc:	324080e7          	jalr	804(ra) # 241c <fl_closedir>
     100:	13c12083          	lw	ra,316(sp)
     104:	13812403          	lw	s0,312(sp)
     108:	13412483          	lw	s1,308(sp)
     10c:	13012903          	lw	s2,304(sp)
     110:	12c12983          	lw	s3,300(sp)
     114:	12812a03          	lw	s4,296(sp)
     118:	12412a83          	lw	s5,292(sp)
     11c:	14010113          	addi	sp,sp,320
     120:	00008067          	ret
     124:	5e092403          	lw	s0,1504(s2)
     128:	fc89c6e3          	blt	s3,s0,f4 <scan_files+0x60>
     12c:	11414783          	lbu	a5,276(sp)
     130:	fa0798e3          	bnez	a5,e0 <scan_files+0x4c>
     134:	01010513          	addi	a0,sp,16
     138:	00001097          	auipc	ra,0x1
     13c:	53c080e7          	jalr	1340(ra) # 1674 <strlen>
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
     184:	000057b7          	lui	a5,0x5
     188:	00641493          	slli	s1,s0,0x6
     18c:	61078793          	addi	a5,a5,1552 # 5610 <files>
     190:	00f484b3          	add	s1,s1,a5
     194:	03f00613          	li	a2,63
     198:	01010593          	addi	a1,sp,16
     19c:	00048513          	mv	a0,s1
     1a0:	00140413          	addi	s0,s0,1
     1a4:	00001097          	auipc	ra,0x1
     1a8:	530080e7          	jalr	1328(ra) # 16d4 <strncpy>
     1ac:	02048fa3          	sb	zero,63(s1)
     1b0:	5e892023          	sw	s0,1504(s2)
     1b4:	f2dff06f          	j	e0 <scan_files+0x4c>

000001b8 <clear_screen>:
     1b8:	000057b7          	lui	a5,0x5
     1bc:	2d87a783          	lw	a5,728(a5) # 52d8 <RGBSEL>
     1c0:	ff010113          	addi	sp,sp,-16
     1c4:	00812423          	sw	s0,8(sp)
     1c8:	00912223          	sw	s1,4(sp)
     1cc:	01212023          	sw	s2,0(sp)
     1d0:	00112623          	sw	ra,12(sp)
     1d4:	00000413          	li	s0,0
     1d8:	00078913          	mv	s2,a5
     1dc:	00300493          	li	s1,3
     1e0:	00892023          	sw	s0,0(s2)
     1e4:	00001097          	auipc	ra,0x1
     1e8:	754080e7          	jalr	1876(ra) # 1938 <display_framebuffer>
     1ec:	00004637          	lui	a2,0x4
     1f0:	00000593          	li	a1,0
     1f4:	00140413          	addi	s0,s0,1
     1f8:	00001097          	auipc	ra,0x1
     1fc:	43c080e7          	jalr	1084(ra) # 1634 <memset>
     200:	fe9410e3          	bne	s0,s1,1e0 <clear_screen+0x28>
     204:	00812403          	lw	s0,8(sp)
     208:	00c12083          	lw	ra,12(sp)
     20c:	00412483          	lw	s1,4(sp)
     210:	00012903          	lw	s2,0(sp)
     214:	01010113          	addi	sp,sp,16
     218:	00002317          	auipc	t1,0x2
     21c:	8c430067          	jr	-1852(t1) # 1adc <display_refresh>

00000220 <render_image_rgb.constprop.0>:
     220:	e6010113          	addi	sp,sp,-416
     224:	18912a23          	sw	s1,404(sp)
     228:	18112e23          	sw	ra,412(sp)
     22c:	18812c23          	sw	s0,408(sp)
     230:	19212823          	sw	s2,400(sp)
     234:	19312623          	sw	s3,396(sp)
     238:	19412423          	sw	s4,392(sp)
     23c:	19512223          	sw	s5,388(sp)
     240:	00058493          	mv	s1,a1
     244:	00000793          	li	a5,0
     248:	08000713          	li	a4,128
     24c:	00054583          	lbu	a1,0(a0)
     250:	00f106b3          	add	a3,sp,a5
     254:	00b68023          	sb	a1,0(a3)
     258:	00154583          	lbu	a1,1(a0)
     25c:	10010693          	addi	a3,sp,256
     260:	00f686b3          	add	a3,a3,a5
     264:	00b68023          	sb	a1,0(a3)
     268:	00254583          	lbu	a1,2(a0)
     26c:	08010693          	addi	a3,sp,128
     270:	00f686b3          	add	a3,a3,a5
     274:	00b68023          	sb	a1,0(a3)
     278:	00178793          	addi	a5,a5,1
     27c:	00c50533          	add	a0,a0,a2
     280:	fce796e3          	bne	a5,a4,24c <render_image_rgb.constprop.0+0x2c>
     284:	000057b7          	lui	a5,0x5
     288:	2d87a783          	lw	a5,728(a5) # 52d8 <RGBSEL>
     28c:	00000413          	li	s0,0
     290:	00100a13          	li	s4,1
     294:	00078a93          	mv	s5,a5
     298:	08000993          	li	s3,128
     29c:	00300913          	li	s2,3
     2a0:	008aa023          	sw	s0,0(s5)
     2a4:	00001097          	auipc	ra,0x1
     2a8:	694080e7          	jalr	1684(ra) # 1938 <display_framebuffer>
     2ac:	00950533          	add	a0,a0,s1
     2b0:	00000793          	li	a5,0
     2b4:	00f10733          	add	a4,sp,a5
     2b8:	00040a63          	beqz	s0,2cc <render_image_rgb.constprop.0+0xac>
     2bc:	08010713          	addi	a4,sp,128
     2c0:	01440463          	beq	s0,s4,2c8 <render_image_rgb.constprop.0+0xa8>
     2c4:	10010713          	addi	a4,sp,256
     2c8:	00f70733          	add	a4,a4,a5
     2cc:	00074703          	lbu	a4,0(a4)
     2d0:	00178793          	addi	a5,a5,1
     2d4:	08050513          	addi	a0,a0,128
     2d8:	f8e50023          	sb	a4,-128(a0)
     2dc:	fd379ce3          	bne	a5,s3,2b4 <render_image_rgb.constprop.0+0x94>
     2e0:	00140413          	addi	s0,s0,1
     2e4:	fb241ee3          	bne	s0,s2,2a0 <render_image_rgb.constprop.0+0x80>
     2e8:	19c12083          	lw	ra,412(sp)
     2ec:	19812403          	lw	s0,408(sp)
     2f0:	19412483          	lw	s1,404(sp)
     2f4:	19012903          	lw	s2,400(sp)
     2f8:	18c12983          	lw	s3,396(sp)
     2fc:	18812a03          	lw	s4,392(sp)
     300:	18412a83          	lw	s5,388(sp)
     304:	1a010113          	addi	sp,sp,416
     308:	00008067          	ret

0000030c <render_image_stream.constprop.0>:
     30c:	de010113          	addi	sp,sp,-544
     310:	00200613          	li	a2,2
     314:	00000593          	li	a1,0
     318:	20112e23          	sw	ra,540(sp)
     31c:	20812c23          	sw	s0,536(sp)
     320:	20912a23          	sw	s1,532(sp)
     324:	00050413          	mv	s0,a0
     328:	21212823          	sw	s2,528(sp)
     32c:	21312623          	sw	s3,524(sp)
     330:	21412423          	sw	s4,520(sp)
     334:	21512223          	sw	s5,516(sp)
     338:	00002097          	auipc	ra,0x2
     33c:	f48080e7          	jalr	-184(ra) # 2280 <fl_fseek>
     340:	00040513          	mv	a0,s0
     344:	00002097          	auipc	ra,0x2
     348:	0b0080e7          	jalr	176(ra) # 23f4 <fl_ftell>
     34c:	00050493          	mv	s1,a0
     350:	00000613          	li	a2,0
     354:	00000593          	li	a1,0
     358:	00040513          	mv	a0,s0
     35c:	00002097          	auipc	ra,0x2
     360:	f24080e7          	jalr	-220(ra) # 2280 <fl_fseek>
     364:	000107b7          	lui	a5,0x10
     368:	06f4c663          	blt	s1,a5,3d4 <render_image_stream.constprop.0+0xc8>
     36c:	00000493          	li	s1,0
     370:	08000913          	li	s2,128
     374:	00040693          	mv	a3,s0
     378:	20000613          	li	a2,512
     37c:	00100593          	li	a1,1
     380:	00010513          	mv	a0,sp
     384:	00004097          	auipc	ra,0x4
     388:	578080e7          	jalr	1400(ra) # 48fc <fl_fread>
     38c:	20000793          	li	a5,512
     390:	02f51063          	bne	a0,a5,3b0 <render_image_stream.constprop.0+0xa4>
     394:	00048593          	mv	a1,s1
     398:	00400613          	li	a2,4
     39c:	00010513          	mv	a0,sp
     3a0:	00148493          	addi	s1,s1,1
     3a4:	00000097          	auipc	ra,0x0
     3a8:	e7c080e7          	jalr	-388(ra) # 220 <render_image_rgb.constprop.0>
     3ac:	fd2494e3          	bne	s1,s2,374 <render_image_stream.constprop.0+0x68>
     3b0:	21c12083          	lw	ra,540(sp)
     3b4:	21812403          	lw	s0,536(sp)
     3b8:	21412483          	lw	s1,532(sp)
     3bc:	21012903          	lw	s2,528(sp)
     3c0:	20c12983          	lw	s3,524(sp)
     3c4:	20812a03          	lw	s4,520(sp)
     3c8:	20412a83          	lw	s5,516(sp)
     3cc:	22010113          	addi	sp,sp,544
     3d0:	00008067          	ret
     3d4:	0000c7b7          	lui	a5,0xc
     3d8:	04f4c663          	blt	s1,a5,424 <render_image_stream.constprop.0+0x118>
     3dc:	00000493          	li	s1,0
     3e0:	08000913          	li	s2,128
     3e4:	00040693          	mv	a3,s0
     3e8:	18000613          	li	a2,384
     3ec:	00100593          	li	a1,1
     3f0:	00010513          	mv	a0,sp
     3f4:	00004097          	auipc	ra,0x4
     3f8:	508080e7          	jalr	1288(ra) # 48fc <fl_fread>
     3fc:	18000793          	li	a5,384
     400:	faf518e3          	bne	a0,a5,3b0 <render_image_stream.constprop.0+0xa4>
     404:	00048593          	mv	a1,s1
     408:	00300613          	li	a2,3
     40c:	00010513          	mv	a0,sp
     410:	00148493          	addi	s1,s1,1
     414:	00000097          	auipc	ra,0x0
     418:	e0c080e7          	jalr	-500(ra) # 220 <render_image_rgb.constprop.0>
     41c:	fd2494e3          	bne	s1,s2,3e4 <render_image_stream.constprop.0+0xd8>
     420:	f91ff06f          	j	3b0 <render_image_stream.constprop.0+0xa4>
     424:	000047b7          	lui	a5,0x4
     428:	f8f4c4e3          	blt	s1,a5,3b0 <render_image_stream.constprop.0+0xa4>
     42c:	000057b7          	lui	a5,0x5
     430:	2d87a783          	lw	a5,728(a5) # 52d8 <RGBSEL>
     434:	00000493          	li	s1,0
     438:	00300993          	li	s3,3
     43c:	00078a93          	mv	s5,a5
     440:	00040693          	mv	a3,s0
     444:	08000613          	li	a2,128
     448:	00100593          	li	a1,1
     44c:	00010513          	mv	a0,sp
     450:	00004097          	auipc	ra,0x4
     454:	4ac080e7          	jalr	1196(ra) # 48fc <fl_fread>
     458:	08000793          	li	a5,128
     45c:	f4f51ae3          	bne	a0,a5,3b0 <render_image_stream.constprop.0+0xa4>
     460:	00000913          	li	s2,0
     464:	08000a13          	li	s4,128
     468:	012aa023          	sw	s2,0(s5)
     46c:	00001097          	auipc	ra,0x1
     470:	4cc080e7          	jalr	1228(ra) # 1938 <display_framebuffer>
     474:	00950533          	add	a0,a0,s1
     478:	00000793          	li	a5,0
     47c:	00f10733          	add	a4,sp,a5
     480:	00074703          	lbu	a4,0(a4)
     484:	00178793          	addi	a5,a5,1
     488:	08050513          	addi	a0,a0,128
     48c:	f8e50023          	sb	a4,-128(a0)
     490:	ff4796e3          	bne	a5,s4,47c <render_image_stream.constprop.0+0x170>
     494:	00190913          	addi	s2,s2,1
     498:	fd3918e3          	bne	s2,s3,468 <render_image_stream.constprop.0+0x15c>
     49c:	00148493          	addi	s1,s1,1
     4a0:	faf490e3          	bne	s1,a5,440 <render_image_stream.constprop.0+0x134>
     4a4:	f0dff06f          	j	3b0 <render_image_stream.constprop.0+0xa4>

000004a8 <main>:
     4a8:	000057b7          	lui	a5,0x5
     4ac:	2ec7a783          	lw	a5,748(a5) # 52ec <LEDS>
     4b0:	f1010113          	addi	sp,sp,-240
     4b4:	0e112623          	sw	ra,236(sp)
     4b8:	0e812423          	sw	s0,232(sp)
     4bc:	0e912223          	sw	s1,228(sp)
     4c0:	0f212023          	sw	s2,224(sp)
     4c4:	0d312e23          	sw	s3,220(sp)
     4c8:	0d412c23          	sw	s4,216(sp)
     4cc:	0d512a23          	sw	s5,212(sp)
     4d0:	0d612823          	sw	s6,208(sp)
     4d4:	0d712623          	sw	s7,204(sp)
     4d8:	0d812423          	sw	s8,200(sp)
     4dc:	0d912223          	sw	s9,196(sp)
     4e0:	0da12023          	sw	s10,192(sp)
     4e4:	0bb12e23          	sw	s11,188(sp)
     4e8:	0007a023          	sw	zero,0(a5)
     4ec:	000027b7          	lui	a5,0x2
     4f0:	00005737          	lui	a4,0x5
     4f4:	96c78793          	addi	a5,a5,-1684 # 196c <display_putchar>
     4f8:	5ef72a23          	sw	a5,1524(a4) # 55f4 <f_putchar>
     4fc:	00001097          	auipc	ra,0x1
     500:	31c080e7          	jalr	796(ra) # 1818 <oled_init>
     504:	00001097          	auipc	ra,0x1
     508:	320080e7          	jalr	800(ra) # 1824 <oled_fullscreen>
     50c:	00000513          	li	a0,0
     510:	00001097          	auipc	ra,0x1
     514:	3ac080e7          	jalr	940(ra) # 18bc <oled_clear>
     518:	00000593          	li	a1,0
     51c:	00000513          	li	a0,0
     520:	00001097          	auipc	ra,0x1
     524:	424080e7          	jalr	1060(ra) # 1944 <display_set_cursor>
     528:	00000593          	li	a1,0
     52c:	0ff00513          	li	a0,255
     530:	00001097          	auipc	ra,0x1
     534:	428080e7          	jalr	1064(ra) # 1958 <display_set_front_back_color>
     538:	00005537          	lui	a0,0x5
     53c:	2f850513          	addi	a0,a0,760 # 52f8 <LEDS+0xc>
     540:	00001097          	auipc	ra,0x1
     544:	708080e7          	jalr	1800(ra) # 1c48 <printf>
     548:	00001097          	auipc	ra,0x1
     54c:	594080e7          	jalr	1428(ra) # 1adc <display_refresh>
     550:	000014b7          	lui	s1,0x1
     554:	00001097          	auipc	ra,0x1
     558:	e08080e7          	jalr	-504(ra) # 135c <sdcard_init>
     55c:	00001437          	lui	s0,0x1
     560:	00002097          	auipc	ra,0x2
     564:	cb0080e7          	jalr	-848(ra) # 2210 <fl_init>
     568:	57848593          	addi	a1,s1,1400 # 1578 <sdcard_writesector>
     56c:	52440513          	addi	a0,s0,1316 # 1524 <sdcard_readsector>
     570:	00003097          	auipc	ra,0x3
     574:	cd4080e7          	jalr	-812(ra) # 3244 <fl_attach_media>
     578:	fe0518e3          	bnez	a0,568 <main+0xc0>
     57c:	00000097          	auipc	ra,0x0
     580:	aa0080e7          	jalr	-1376(ra) # 1c <clear_audio>
     584:	00005537          	lui	a0,0x5
     588:	30850513          	addi	a0,a0,776 # 5308 <LEDS+0x1c>
     58c:	00001097          	auipc	ra,0x1
     590:	6bc080e7          	jalr	1724(ra) # 1c48 <printf>
     594:	00001097          	auipc	ra,0x1
     598:	548080e7          	jalr	1352(ra) # 1adc <display_refresh>
     59c:	00000097          	auipc	ra,0x0
     5a0:	af8080e7          	jalr	-1288(ra) # 94 <scan_files>
     5a4:	000057b7          	lui	a5,0x5
     5a8:	2dc7a483          	lw	s1,732(a5) # 52dc <BUTTONS>
     5ac:	000057b7          	lui	a5,0x5
     5b0:	2d07a783          	lw	a5,720(a5) # 52d0 <AUDIO>
     5b4:	0004ac03          	lw	s8,0(s1)
     5b8:	00005a37          	lui	s4,0x5
     5bc:	00000413          	li	s0,0
     5c0:	01ac7c13          	andi	s8,s8,26
     5c4:	00005b37          	lui	s6,0x5
     5c8:	610a0b93          	addi	s7,s4,1552 # 5610 <files>
     5cc:	000059b7          	lui	s3,0x5
     5d0:	00f12423          	sw	a5,8(sp)
     5d4:	00000097          	auipc	ra,0x0
     5d8:	be4080e7          	jalr	-1052(ra) # 1b8 <clear_screen>
     5dc:	00000593          	li	a1,0
     5e0:	00000513          	li	a0,0
     5e4:	00001097          	auipc	ra,0x1
     5e8:	360080e7          	jalr	864(ra) # 1944 <display_set_cursor>
     5ec:	0ff00593          	li	a1,255
     5f0:	00000513          	li	a0,0
     5f4:	00001097          	auipc	ra,0x1
     5f8:	364080e7          	jalr	868(ra) # 1958 <display_set_front_back_color>
     5fc:	00005537          	lui	a0,0x5
     600:	30c50513          	addi	a0,a0,780 # 530c <LEDS+0x20>
     604:	00001097          	auipc	ra,0x1
     608:	644080e7          	jalr	1604(ra) # 1c48 <printf>
     60c:	00000593          	li	a1,0
     610:	0ff00513          	li	a0,255
     614:	00001097          	auipc	ra,0x1
     618:	344080e7          	jalr	836(ra) # 1958 <display_set_front_back_color>
     61c:	00005cb7          	lui	s9,0x5
     620:	5e0ca783          	lw	a5,1504(s9) # 55e0 <file_count>
     624:	04078463          	beqz	a5,66c <main+0x1c4>
     628:	610a0d13          	addi	s10,s4,1552
     62c:	00000913          	li	s2,0
     630:	5e0ca783          	lw	a5,1504(s9)
     634:	04f95463          	bge	s2,a5,67c <main+0x1d4>
     638:	15241663          	bne	s0,s2,784 <main+0x2dc>
     63c:	0ff00593          	li	a1,255
     640:	00000513          	li	a0,0
     644:	00001097          	auipc	ra,0x1
     648:	314080e7          	jalr	788(ra) # 1958 <display_set_front_back_color>
     64c:	000d0613          	mv	a2,s10
     650:	00090593          	mv	a1,s2
     654:	33cb0513          	addi	a0,s6,828 # 533c <LEDS+0x50>
     658:	00001097          	auipc	ra,0x1
     65c:	5f0080e7          	jalr	1520(ra) # 1c48 <printf>
     660:	00190913          	addi	s2,s2,1
     664:	040d0d13          	addi	s10,s10,64
     668:	fc9ff06f          	j	630 <main+0x188>
     66c:	00005537          	lui	a0,0x5
     670:	32850513          	addi	a0,a0,808 # 5328 <LEDS+0x3c>
     674:	00001097          	auipc	ra,0x1
     678:	5d4080e7          	jalr	1492(ra) # 1c48 <printf>
     67c:	00001097          	auipc	ra,0x1
     680:	460080e7          	jalr	1120(ra) # 1adc <display_refresh>
     684:	0004a903          	lw	s2,0(s1)
     688:	fffc4c13          	not	s8,s8
     68c:	01a97913          	andi	s2,s2,26
     690:	012c7c33          	and	s8,s8,s2
     694:	008c7793          	andi	a5,s8,8
     698:	02078063          	beqz	a5,6b8 <main+0x210>
     69c:	5e0ca583          	lw	a1,1504(s9)
     6a0:	00058c63          	beqz	a1,6b8 <main+0x210>
     6a4:	fff40513          	addi	a0,s0,-1
     6a8:	00b50533          	add	a0,a0,a1
     6ac:	00001097          	auipc	ra,0x1
     6b0:	f58080e7          	jalr	-168(ra) # 1604 <__modsi3>
     6b4:	00050413          	mv	s0,a0
     6b8:	010c7793          	andi	a5,s8,16
     6bc:	00078e63          	beqz	a5,6d8 <main+0x230>
     6c0:	5e0ca583          	lw	a1,1504(s9)
     6c4:	00058a63          	beqz	a1,6d8 <main+0x230>
     6c8:	00140513          	addi	a0,s0,1
     6cc:	00001097          	auipc	ra,0x1
     6d0:	f38080e7          	jalr	-200(ra) # 1604 <__modsi3>
     6d4:	00050413          	mv	s0,a0
     6d8:	002c7c13          	andi	s8,s8,2
     6dc:	280c0c63          	beqz	s8,974 <main+0x4cc>
     6e0:	5e0ca783          	lw	a5,1504(s9)
     6e4:	28f05863          	blez	a5,974 <main+0x4cc>
     6e8:	737577b7          	lui	a5,0x73757
     6ec:	d2f78793          	addi	a5,a5,-721 # 73756d2f <__stacktop+0x73746d2f>
     6f0:	00f12c23          	sw	a5,24(sp)
     6f4:	000067b7          	lui	a5,0x6
     6f8:	36978793          	addi	a5,a5,873 # 6369 <_files+0xf1>
     6fc:	00641c93          	slli	s9,s0,0x6
     700:	00f11e23          	sh	a5,28(sp)
     704:	02f00793          	li	a5,47
     708:	00f10f23          	sb	a5,30(sp)
     70c:	017c8cb3          	add	s9,s9,s7
     710:	00700793          	li	a5,7
     714:	04900693          	li	a3,73
     718:	00fc8733          	add	a4,s9,a5
     71c:	ff974703          	lbu	a4,-7(a4)
     720:	00070663          	beqz	a4,72c <main+0x284>
     724:	06d79663          	bne	a5,a3,790 <main+0x2e8>
     728:	04900793          	li	a5,73
     72c:	01010713          	addi	a4,sp,16
     730:	0a078793          	addi	a5,a5,160
     734:	00e787b3          	add	a5,a5,a4
     738:	34498593          	addi	a1,s3,836 # 5344 <LEDS+0x58>
     73c:	01810513          	addi	a0,sp,24
     740:	f6078423          	sb	zero,-152(a5)
     744:	00004097          	auipc	ra,0x4
     748:	790080e7          	jalr	1936(ra) # 4ed4 <fl_fopen>
     74c:	00050c13          	mv	s8,a0
     750:	04051a63          	bnez	a0,7a4 <main+0x2fc>
     754:	00000593          	li	a1,0
     758:	0ff00513          	li	a0,255
     75c:	00001097          	auipc	ra,0x1
     760:	1fc080e7          	jalr	508(ra) # 1958 <display_set_front_back_color>
     764:	00005537          	lui	a0,0x5
     768:	000c8593          	mv	a1,s9
     76c:	34850513          	addi	a0,a0,840 # 5348 <LEDS+0x5c>
     770:	00001097          	auipc	ra,0x1
     774:	4d8080e7          	jalr	1240(ra) # 1c48 <printf>
     778:	00001097          	auipc	ra,0x1
     77c:	364080e7          	jalr	868(ra) # 1adc <display_refresh>
     780:	1f40006f          	j	974 <main+0x4cc>
     784:	00000593          	li	a1,0
     788:	0ff00513          	li	a0,255
     78c:	eb9ff06f          	j	644 <main+0x19c>
     790:	01810613          	addi	a2,sp,24
     794:	00f60633          	add	a2,a2,a5
     798:	00e60023          	sb	a4,0(a2) # 4000 <_read_sectors+0x38>
     79c:	00178793          	addi	a5,a5,1
     7a0:	f79ff06f          	j	718 <main+0x270>
     7a4:	0ff00593          	li	a1,255
     7a8:	00000513          	li	a0,0
     7ac:	00001097          	auipc	ra,0x1
     7b0:	1ac080e7          	jalr	428(ra) # 1958 <display_set_front_back_color>
     7b4:	00005537          	lui	a0,0x5
     7b8:	000c8593          	mv	a1,s9
     7bc:	35850513          	addi	a0,a0,856 # 5358 <LEDS+0x6c>
     7c0:	00001097          	auipc	ra,0x1
     7c4:	488080e7          	jalr	1160(ra) # 1c48 <printf>
     7c8:	00001097          	auipc	ra,0x1
     7cc:	314080e7          	jalr	788(ra) # 1adc <display_refresh>
     7d0:	676d77b7          	lui	a5,0x676d7
     7d4:	92f78793          	addi	a5,a5,-1745 # 676d692f <__stacktop+0x676c692f>
     7d8:	06f12223          	sw	a5,100(sp)
     7dc:	02f00793          	li	a5,47
     7e0:	06f10423          	sb	a5,104(sp)
     7e4:	04400693          	li	a3,68
     7e8:	00500793          	li	a5,5
     7ec:	00fc8733          	add	a4,s9,a5
     7f0:	ffb74703          	lbu	a4,-5(a4)
     7f4:	00070663          	beqz	a4,800 <main+0x358>
     7f8:	10d79c63          	bne	a5,a3,910 <main+0x468>
     7fc:	04400793          	li	a5,68
     800:	01010713          	addi	a4,sp,16
     804:	0a078793          	addi	a5,a5,160
     808:	00e787b3          	add	a5,a5,a4
     80c:	05f00713          	li	a4,95
     810:	fae78823          	sb	a4,-80(a5)
     814:	06900713          	li	a4,105
     818:	fae788a3          	sb	a4,-79(a5)
     81c:	06d00713          	li	a4,109
     820:	fae78923          	sb	a4,-78(a5)
     824:	06700713          	li	a4,103
     828:	fae789a3          	sb	a4,-77(a5)
     82c:	02e00713          	li	a4,46
     830:	fae78a23          	sb	a4,-76(a5)
     834:	07200713          	li	a4,114
     838:	fae78aa3          	sb	a4,-75(a5)
     83c:	06100713          	li	a4,97
     840:	fae78b23          	sb	a4,-74(a5)
     844:	34498593          	addi	a1,s3,836
     848:	07700713          	li	a4,119
     84c:	06410513          	addi	a0,sp,100
     850:	fae78ba3          	sb	a4,-73(a5)
     854:	fa078c23          	sb	zero,-72(a5)
     858:	00004097          	auipc	ra,0x4
     85c:	67c080e7          	jalr	1660(ra) # 4ed4 <fl_fopen>
     860:	00051e63          	bnez	a0,87c <main+0x3d4>
     864:	00005537          	lui	a0,0x5
     868:	34498593          	addi	a1,s3,836
     86c:	36c50513          	addi	a0,a0,876 # 536c <LEDS+0x80>
     870:	00004097          	auipc	ra,0x4
     874:	664080e7          	jalr	1636(ra) # 4ed4 <fl_fopen>
     878:	02050263          	beqz	a0,89c <main+0x3f4>
     87c:	00a12623          	sw	a0,12(sp)
     880:	00000097          	auipc	ra,0x0
     884:	a8c080e7          	jalr	-1396(ra) # 30c <render_image_stream.constprop.0>
     888:	00c12503          	lw	a0,12(sp)
     88c:	00004097          	auipc	ra,0x4
     890:	f90080e7          	jalr	-112(ra) # 481c <fl_fclose>
     894:	00001097          	auipc	ra,0x1
     898:	248080e7          	jalr	584(ra) # 1adc <display_refresh>
     89c:	fffff097          	auipc	ra,0xfffff
     8a0:	780080e7          	jalr	1920(ra) # 1c <clear_audio>
     8a4:	0004ac83          	lw	s9,0(s1)
     8a8:	1ff00d93          	li	s11,511
     8ac:	f8000a93          	li	s5,-128
     8b0:	01acfc93          	andi	s9,s9,26
     8b4:	00812783          	lw	a5,8(sp)
     8b8:	000c0693          	mv	a3,s8
     8bc:	20000613          	li	a2,512
     8c0:	0007ad03          	lw	s10,0(a5)
     8c4:	00100593          	li	a1,1
     8c8:	000d0513          	mv	a0,s10
     8cc:	00004097          	auipc	ra,0x4
     8d0:	030080e7          	jalr	48(ra) # 48fc <fl_fread>
     8d4:	04a04e63          	bgtz	a0,930 <main+0x488>
     8d8:	000c0513          	mv	a0,s8
     8dc:	00004097          	auipc	ra,0x4
     8e0:	f40080e7          	jalr	-192(ra) # 481c <fl_fclose>
     8e4:	fffff097          	auipc	ra,0xfffff
     8e8:	738080e7          	jalr	1848(ra) # 1c <clear_audio>
     8ec:	00000593          	li	a1,0
     8f0:	0ff00513          	li	a0,255
     8f4:	00001097          	auipc	ra,0x1
     8f8:	064080e7          	jalr	100(ra) # 1958 <display_set_front_back_color>
     8fc:	00005537          	lui	a0,0x5
     900:	37c50513          	addi	a0,a0,892 # 537c <LEDS+0x90>
     904:	00001097          	auipc	ra,0x1
     908:	344080e7          	jalr	836(ra) # 1c48 <printf>
     90c:	e6dff06f          	j	778 <main+0x2d0>
     910:	06410613          	addi	a2,sp,100
     914:	00f60633          	add	a2,a2,a5
     918:	00e60023          	sb	a4,0(a2)
     91c:	00178793          	addi	a5,a5,1
     920:	ecdff06f          	j	7ec <main+0x344>
     924:	00ad07b3          	add	a5,s10,a0
     928:	01578023          	sb	s5,0(a5)
     92c:	00150513          	addi	a0,a0,1
     930:	feaddae3          	bge	s11,a0,924 <main+0x47c>
     934:	00812783          	lw	a5,8(sp)
     938:	0007a783          	lw	a5,0(a5)
     93c:	f6fd1ce3          	bne	s10,a5,8b4 <main+0x40c>
     940:	0004a783          	lw	a5,0(s1)
     944:	fffccc93          	not	s9,s9
     948:	01a7f793          	andi	a5,a5,26
     94c:	00fcfcb3          	and	s9,s9,a5
     950:	002cfc93          	andi	s9,s9,2
     954:	020c8463          	beqz	s9,97c <main+0x4d4>
     958:	000c0513          	mv	a0,s8
     95c:	00004097          	auipc	ra,0x4
     960:	ec0080e7          	jalr	-320(ra) # 481c <fl_fclose>
     964:	fffff097          	auipc	ra,0xfffff
     968:	6b8080e7          	jalr	1720(ra) # 1c <clear_audio>
     96c:	00000097          	auipc	ra,0x0
     970:	84c080e7          	jalr	-1972(ra) # 1b8 <clear_screen>
     974:	00090c13          	mv	s8,s2
     978:	c65ff06f          	j	5dc <main+0x134>
     97c:	00078c93          	mv	s9,a5
     980:	fb5ff06f          	j	934 <main+0x48c>

00000984 <sdcard_ponder>:
     984:	fe010113          	addi	sp,sp,-32
     988:	00812e23          	sw	s0,28(sp)
     98c:	02010413          	addi	s0,sp,32
     990:	fe042623          	sw	zero,-20(s0)
     994:	fe042423          	sw	zero,-24(s0)
     998:	0380006f          	j	9d0 <sdcard_ponder+0x4c>
     99c:	000057b7          	lui	a5,0x5
     9a0:	2e07a783          	lw	a5,736(a5) # 52e0 <SDCARD>
     9a4:	fec42703          	lw	a4,-20(s0)
     9a8:	00676713          	ori	a4,a4,6
     9ac:	00e7a023          	sw	a4,0(a5)
     9b0:	00100713          	li	a4,1
     9b4:	fec42783          	lw	a5,-20(s0)
     9b8:	40f707b3          	sub	a5,a4,a5
     9bc:	fef42623          	sw	a5,-20(s0)
     9c0:	00000013          	nop
     9c4:	fe842783          	lw	a5,-24(s0)
     9c8:	00178793          	addi	a5,a5,1
     9cc:	fef42423          	sw	a5,-24(s0)
     9d0:	fe842703          	lw	a4,-24(s0)
     9d4:	00f00793          	li	a5,15
     9d8:	fce7d2e3          	bge	a5,a4,99c <sdcard_ponder+0x18>
     9dc:	00000013          	nop
     9e0:	00000013          	nop
     9e4:	01c12403          	lw	s0,28(sp)
     9e8:	02010113          	addi	sp,sp,32
     9ec:	00008067          	ret

000009f0 <sdcard_send>:
     9f0:	fd010113          	addi	sp,sp,-48
     9f4:	02112623          	sw	ra,44(sp)
     9f8:	02812423          	sw	s0,40(sp)
     9fc:	03010413          	addi	s0,sp,48
     a00:	fca42e23          	sw	a0,-36(s0)
     a04:	fe042623          	sw	zero,-20(s0)
     a08:	fe042423          	sw	zero,-24(s0)
     a0c:	fdc42783          	lw	a5,-36(s0)
     a10:	fef42223          	sw	a5,-28(s0)
     a14:	fe442783          	lw	a5,-28(s0)
     a18:	4077d793          	srai	a5,a5,0x7
     a1c:	0017f793          	andi	a5,a5,1
     a20:	fef42423          	sw	a5,-24(s0)
     a24:	fec42783          	lw	a5,-20(s0)
     a28:	fe442703          	lw	a4,-28(s0)
     a2c:	00f717b3          	sll	a5,a4,a5
     a30:	fef42223          	sw	a5,-28(s0)
     a34:	fe842783          	lw	a5,-24(s0)
     a38:	00179693          	slli	a3,a5,0x1
     a3c:	000057b7          	lui	a5,0x5
     a40:	2e07a783          	lw	a5,736(a5) # 52e0 <SDCARD>
     a44:	fec42703          	lw	a4,-20(s0)
     a48:	00e6e733          	or	a4,a3,a4
     a4c:	00e7a023          	sw	a4,0(a5)
     a50:	00100713          	li	a4,1
     a54:	fec42783          	lw	a5,-20(s0)
     a58:	40f707b3          	sub	a5,a4,a5
     a5c:	fef42623          	sw	a5,-20(s0)
     a60:	fe442783          	lw	a5,-28(s0)
     a64:	4077d793          	srai	a5,a5,0x7
     a68:	0017f793          	andi	a5,a5,1
     a6c:	fef42423          	sw	a5,-24(s0)
     a70:	fec42783          	lw	a5,-20(s0)
     a74:	fe442703          	lw	a4,-28(s0)
     a78:	00f717b3          	sll	a5,a4,a5
     a7c:	fef42223          	sw	a5,-28(s0)
     a80:	fe842783          	lw	a5,-24(s0)
     a84:	00179693          	slli	a3,a5,0x1
     a88:	000057b7          	lui	a5,0x5
     a8c:	2e07a783          	lw	a5,736(a5) # 52e0 <SDCARD>
     a90:	fec42703          	lw	a4,-20(s0)
     a94:	00e6e733          	or	a4,a3,a4
     a98:	00e7a023          	sw	a4,0(a5)
     a9c:	00100713          	li	a4,1
     aa0:	fec42783          	lw	a5,-20(s0)
     aa4:	40f707b3          	sub	a5,a4,a5
     aa8:	fef42623          	sw	a5,-20(s0)
     aac:	fe442783          	lw	a5,-28(s0)
     ab0:	4077d793          	srai	a5,a5,0x7
     ab4:	0017f793          	andi	a5,a5,1
     ab8:	fef42423          	sw	a5,-24(s0)
     abc:	fec42783          	lw	a5,-20(s0)
     ac0:	fe442703          	lw	a4,-28(s0)
     ac4:	00f717b3          	sll	a5,a4,a5
     ac8:	fef42223          	sw	a5,-28(s0)
     acc:	fe842783          	lw	a5,-24(s0)
     ad0:	00179693          	slli	a3,a5,0x1
     ad4:	000057b7          	lui	a5,0x5
     ad8:	2e07a783          	lw	a5,736(a5) # 52e0 <SDCARD>
     adc:	fec42703          	lw	a4,-20(s0)
     ae0:	00e6e733          	or	a4,a3,a4
     ae4:	00e7a023          	sw	a4,0(a5)
     ae8:	00100713          	li	a4,1
     aec:	fec42783          	lw	a5,-20(s0)
     af0:	40f707b3          	sub	a5,a4,a5
     af4:	fef42623          	sw	a5,-20(s0)
     af8:	fe442783          	lw	a5,-28(s0)
     afc:	4077d793          	srai	a5,a5,0x7
     b00:	0017f793          	andi	a5,a5,1
     b04:	fef42423          	sw	a5,-24(s0)
     b08:	fec42783          	lw	a5,-20(s0)
     b0c:	fe442703          	lw	a4,-28(s0)
     b10:	00f717b3          	sll	a5,a4,a5
     b14:	fef42223          	sw	a5,-28(s0)
     b18:	fe842783          	lw	a5,-24(s0)
     b1c:	00179693          	slli	a3,a5,0x1
     b20:	000057b7          	lui	a5,0x5
     b24:	2e07a783          	lw	a5,736(a5) # 52e0 <SDCARD>
     b28:	fec42703          	lw	a4,-20(s0)
     b2c:	00e6e733          	or	a4,a3,a4
     b30:	00e7a023          	sw	a4,0(a5)
     b34:	00100713          	li	a4,1
     b38:	fec42783          	lw	a5,-20(s0)
     b3c:	40f707b3          	sub	a5,a4,a5
     b40:	fef42623          	sw	a5,-20(s0)
     b44:	fe442783          	lw	a5,-28(s0)
     b48:	4077d793          	srai	a5,a5,0x7
     b4c:	0017f793          	andi	a5,a5,1
     b50:	fef42423          	sw	a5,-24(s0)
     b54:	fec42783          	lw	a5,-20(s0)
     b58:	fe442703          	lw	a4,-28(s0)
     b5c:	00f717b3          	sll	a5,a4,a5
     b60:	fef42223          	sw	a5,-28(s0)
     b64:	fe842783          	lw	a5,-24(s0)
     b68:	00179693          	slli	a3,a5,0x1
     b6c:	000057b7          	lui	a5,0x5
     b70:	2e07a783          	lw	a5,736(a5) # 52e0 <SDCARD>
     b74:	fec42703          	lw	a4,-20(s0)
     b78:	00e6e733          	or	a4,a3,a4
     b7c:	00e7a023          	sw	a4,0(a5)
     b80:	00100713          	li	a4,1
     b84:	fec42783          	lw	a5,-20(s0)
     b88:	40f707b3          	sub	a5,a4,a5
     b8c:	fef42623          	sw	a5,-20(s0)
     b90:	fe442783          	lw	a5,-28(s0)
     b94:	4077d793          	srai	a5,a5,0x7
     b98:	0017f793          	andi	a5,a5,1
     b9c:	fef42423          	sw	a5,-24(s0)
     ba0:	fec42783          	lw	a5,-20(s0)
     ba4:	fe442703          	lw	a4,-28(s0)
     ba8:	00f717b3          	sll	a5,a4,a5
     bac:	fef42223          	sw	a5,-28(s0)
     bb0:	fe842783          	lw	a5,-24(s0)
     bb4:	00179693          	slli	a3,a5,0x1
     bb8:	000057b7          	lui	a5,0x5
     bbc:	2e07a783          	lw	a5,736(a5) # 52e0 <SDCARD>
     bc0:	fec42703          	lw	a4,-20(s0)
     bc4:	00e6e733          	or	a4,a3,a4
     bc8:	00e7a023          	sw	a4,0(a5)
     bcc:	00100713          	li	a4,1
     bd0:	fec42783          	lw	a5,-20(s0)
     bd4:	40f707b3          	sub	a5,a4,a5
     bd8:	fef42623          	sw	a5,-20(s0)
     bdc:	fe442783          	lw	a5,-28(s0)
     be0:	4077d793          	srai	a5,a5,0x7
     be4:	0017f793          	andi	a5,a5,1
     be8:	fef42423          	sw	a5,-24(s0)
     bec:	fec42783          	lw	a5,-20(s0)
     bf0:	fe442703          	lw	a4,-28(s0)
     bf4:	00f717b3          	sll	a5,a4,a5
     bf8:	fef42223          	sw	a5,-28(s0)
     bfc:	fe842783          	lw	a5,-24(s0)
     c00:	00179693          	slli	a3,a5,0x1
     c04:	000057b7          	lui	a5,0x5
     c08:	2e07a783          	lw	a5,736(a5) # 52e0 <SDCARD>
     c0c:	fec42703          	lw	a4,-20(s0)
     c10:	00e6e733          	or	a4,a3,a4
     c14:	00e7a023          	sw	a4,0(a5)
     c18:	00100713          	li	a4,1
     c1c:	fec42783          	lw	a5,-20(s0)
     c20:	40f707b3          	sub	a5,a4,a5
     c24:	fef42623          	sw	a5,-20(s0)
     c28:	fe442783          	lw	a5,-28(s0)
     c2c:	4077d793          	srai	a5,a5,0x7
     c30:	0017f793          	andi	a5,a5,1
     c34:	fef42423          	sw	a5,-24(s0)
     c38:	fec42783          	lw	a5,-20(s0)
     c3c:	fe442703          	lw	a4,-28(s0)
     c40:	00f717b3          	sll	a5,a4,a5
     c44:	fef42223          	sw	a5,-28(s0)
     c48:	fe842783          	lw	a5,-24(s0)
     c4c:	00179693          	slli	a3,a5,0x1
     c50:	000057b7          	lui	a5,0x5
     c54:	2e07a783          	lw	a5,736(a5) # 52e0 <SDCARD>
     c58:	fec42703          	lw	a4,-20(s0)
     c5c:	00e6e733          	or	a4,a3,a4
     c60:	00e7a023          	sw	a4,0(a5)
     c64:	00100713          	li	a4,1
     c68:	fec42783          	lw	a5,-20(s0)
     c6c:	40f707b3          	sub	a5,a4,a5
     c70:	fef42623          	sw	a5,-20(s0)
     c74:	fe442783          	lw	a5,-28(s0)
     c78:	4077d793          	srai	a5,a5,0x7
     c7c:	0017f793          	andi	a5,a5,1
     c80:	fef42423          	sw	a5,-24(s0)
     c84:	fec42783          	lw	a5,-20(s0)
     c88:	fe442703          	lw	a4,-28(s0)
     c8c:	00f717b3          	sll	a5,a4,a5
     c90:	fef42223          	sw	a5,-28(s0)
     c94:	fe842783          	lw	a5,-24(s0)
     c98:	00179693          	slli	a3,a5,0x1
     c9c:	000057b7          	lui	a5,0x5
     ca0:	2e07a783          	lw	a5,736(a5) # 52e0 <SDCARD>
     ca4:	fec42703          	lw	a4,-20(s0)
     ca8:	00e6e733          	or	a4,a3,a4
     cac:	00e7a023          	sw	a4,0(a5)
     cb0:	00100713          	li	a4,1
     cb4:	fec42783          	lw	a5,-20(s0)
     cb8:	40f707b3          	sub	a5,a4,a5
     cbc:	fef42623          	sw	a5,-20(s0)
     cc0:	fe442783          	lw	a5,-28(s0)
     cc4:	4077d793          	srai	a5,a5,0x7
     cc8:	0017f793          	andi	a5,a5,1
     ccc:	fef42423          	sw	a5,-24(s0)
     cd0:	fec42783          	lw	a5,-20(s0)
     cd4:	fe442703          	lw	a4,-28(s0)
     cd8:	00f717b3          	sll	a5,a4,a5
     cdc:	fef42223          	sw	a5,-28(s0)
     ce0:	fe842783          	lw	a5,-24(s0)
     ce4:	00179693          	slli	a3,a5,0x1
     ce8:	000057b7          	lui	a5,0x5
     cec:	2e07a783          	lw	a5,736(a5) # 52e0 <SDCARD>
     cf0:	fec42703          	lw	a4,-20(s0)
     cf4:	00e6e733          	or	a4,a3,a4
     cf8:	00e7a023          	sw	a4,0(a5)
     cfc:	00100713          	li	a4,1
     d00:	fec42783          	lw	a5,-20(s0)
     d04:	40f707b3          	sub	a5,a4,a5
     d08:	fef42623          	sw	a5,-20(s0)
     d0c:	fe442783          	lw	a5,-28(s0)
     d10:	4077d793          	srai	a5,a5,0x7
     d14:	0017f793          	andi	a5,a5,1
     d18:	fef42423          	sw	a5,-24(s0)
     d1c:	fec42783          	lw	a5,-20(s0)
     d20:	fe442703          	lw	a4,-28(s0)
     d24:	00f717b3          	sll	a5,a4,a5
     d28:	fef42223          	sw	a5,-28(s0)
     d2c:	fe842783          	lw	a5,-24(s0)
     d30:	00179693          	slli	a3,a5,0x1
     d34:	000057b7          	lui	a5,0x5
     d38:	2e07a783          	lw	a5,736(a5) # 52e0 <SDCARD>
     d3c:	fec42703          	lw	a4,-20(s0)
     d40:	00e6e733          	or	a4,a3,a4
     d44:	00e7a023          	sw	a4,0(a5)
     d48:	00100713          	li	a4,1
     d4c:	fec42783          	lw	a5,-20(s0)
     d50:	40f707b3          	sub	a5,a4,a5
     d54:	fef42623          	sw	a5,-20(s0)
     d58:	fe442783          	lw	a5,-28(s0)
     d5c:	4077d793          	srai	a5,a5,0x7
     d60:	0017f793          	andi	a5,a5,1
     d64:	fef42423          	sw	a5,-24(s0)
     d68:	fec42783          	lw	a5,-20(s0)
     d6c:	fe442703          	lw	a4,-28(s0)
     d70:	00f717b3          	sll	a5,a4,a5
     d74:	fef42223          	sw	a5,-28(s0)
     d78:	fe842783          	lw	a5,-24(s0)
     d7c:	00179693          	slli	a3,a5,0x1
     d80:	000057b7          	lui	a5,0x5
     d84:	2e07a783          	lw	a5,736(a5) # 52e0 <SDCARD>
     d88:	fec42703          	lw	a4,-20(s0)
     d8c:	00e6e733          	or	a4,a3,a4
     d90:	00e7a023          	sw	a4,0(a5)
     d94:	00100713          	li	a4,1
     d98:	fec42783          	lw	a5,-20(s0)
     d9c:	40f707b3          	sub	a5,a4,a5
     da0:	fef42623          	sw	a5,-20(s0)
     da4:	fe442783          	lw	a5,-28(s0)
     da8:	4077d793          	srai	a5,a5,0x7
     dac:	0017f793          	andi	a5,a5,1
     db0:	fef42423          	sw	a5,-24(s0)
     db4:	fec42783          	lw	a5,-20(s0)
     db8:	fe442703          	lw	a4,-28(s0)
     dbc:	00f717b3          	sll	a5,a4,a5
     dc0:	fef42223          	sw	a5,-28(s0)
     dc4:	fe842783          	lw	a5,-24(s0)
     dc8:	00179693          	slli	a3,a5,0x1
     dcc:	000057b7          	lui	a5,0x5
     dd0:	2e07a783          	lw	a5,736(a5) # 52e0 <SDCARD>
     dd4:	fec42703          	lw	a4,-20(s0)
     dd8:	00e6e733          	or	a4,a3,a4
     ddc:	00e7a023          	sw	a4,0(a5)
     de0:	00100713          	li	a4,1
     de4:	fec42783          	lw	a5,-20(s0)
     de8:	40f707b3          	sub	a5,a4,a5
     dec:	fef42623          	sw	a5,-20(s0)
     df0:	fe442783          	lw	a5,-28(s0)
     df4:	4077d793          	srai	a5,a5,0x7
     df8:	0017f793          	andi	a5,a5,1
     dfc:	fef42423          	sw	a5,-24(s0)
     e00:	fec42783          	lw	a5,-20(s0)
     e04:	fe442703          	lw	a4,-28(s0)
     e08:	00f717b3          	sll	a5,a4,a5
     e0c:	fef42223          	sw	a5,-28(s0)
     e10:	fe842783          	lw	a5,-24(s0)
     e14:	00179693          	slli	a3,a5,0x1
     e18:	000057b7          	lui	a5,0x5
     e1c:	2e07a783          	lw	a5,736(a5) # 52e0 <SDCARD>
     e20:	fec42703          	lw	a4,-20(s0)
     e24:	00e6e733          	or	a4,a3,a4
     e28:	00e7a023          	sw	a4,0(a5)
     e2c:	00100713          	li	a4,1
     e30:	fec42783          	lw	a5,-20(s0)
     e34:	40f707b3          	sub	a5,a4,a5
     e38:	fef42623          	sw	a5,-20(s0)
     e3c:	fe442783          	lw	a5,-28(s0)
     e40:	4077d793          	srai	a5,a5,0x7
     e44:	0017f793          	andi	a5,a5,1
     e48:	fef42423          	sw	a5,-24(s0)
     e4c:	fec42783          	lw	a5,-20(s0)
     e50:	fe442703          	lw	a4,-28(s0)
     e54:	00f717b3          	sll	a5,a4,a5
     e58:	fef42223          	sw	a5,-28(s0)
     e5c:	fe842783          	lw	a5,-24(s0)
     e60:	00179693          	slli	a3,a5,0x1
     e64:	000057b7          	lui	a5,0x5
     e68:	2e07a783          	lw	a5,736(a5) # 52e0 <SDCARD>
     e6c:	fec42703          	lw	a4,-20(s0)
     e70:	00e6e733          	or	a4,a3,a4
     e74:	00e7a023          	sw	a4,0(a5)
     e78:	00100713          	li	a4,1
     e7c:	fec42783          	lw	a5,-20(s0)
     e80:	40f707b3          	sub	a5,a4,a5
     e84:	fef42623          	sw	a5,-20(s0)
     e88:	fe442783          	lw	a5,-28(s0)
     e8c:	4077d793          	srai	a5,a5,0x7
     e90:	0017f793          	andi	a5,a5,1
     e94:	fef42423          	sw	a5,-24(s0)
     e98:	fec42783          	lw	a5,-20(s0)
     e9c:	fe442703          	lw	a4,-28(s0)
     ea0:	00f717b3          	sll	a5,a4,a5
     ea4:	fef42223          	sw	a5,-28(s0)
     ea8:	fe842783          	lw	a5,-24(s0)
     eac:	00179693          	slli	a3,a5,0x1
     eb0:	000057b7          	lui	a5,0x5
     eb4:	2e07a783          	lw	a5,736(a5) # 52e0 <SDCARD>
     eb8:	fec42703          	lw	a4,-20(s0)
     ebc:	00e6e733          	or	a4,a3,a4
     ec0:	00e7a023          	sw	a4,0(a5)
     ec4:	00100713          	li	a4,1
     ec8:	fec42783          	lw	a5,-20(s0)
     ecc:	40f707b3          	sub	a5,a4,a5
     ed0:	fef42623          	sw	a5,-20(s0)
     ed4:	000057b7          	lui	a5,0x5
     ed8:	2e07a783          	lw	a5,736(a5) # 52e0 <SDCARD>
     edc:	00200713          	li	a4,2
     ee0:	00e7a023          	sw	a4,0(a5)
     ee4:	000057b7          	lui	a5,0x5
     ee8:	5e47a783          	lw	a5,1508(a5) # 55e4 <sdcard_while_loading_callback>
     eec:	000780e7          	jalr	a5
     ef0:	00000013          	nop
     ef4:	02c12083          	lw	ra,44(sp)
     ef8:	02812403          	lw	s0,40(sp)
     efc:	03010113          	addi	sp,sp,48
     f00:	00008067          	ret

00000f04 <sdcard_read>:
     f04:	fc010113          	addi	sp,sp,-64
     f08:	02112e23          	sw	ra,60(sp)
     f0c:	02812c23          	sw	s0,56(sp)
     f10:	04010413          	addi	s0,sp,64
     f14:	00050793          	mv	a5,a0
     f18:	00058713          	mv	a4,a1
     f1c:	fcf407a3          	sb	a5,-49(s0)
     f20:	00070793          	mv	a5,a4
     f24:	fcf40723          	sb	a5,-50(s0)
     f28:	fce44783          	lbu	a5,-50(s0)
     f2c:	fef42223          	sw	a5,-28(s0)
     f30:	fcf44783          	lbu	a5,-49(s0)
     f34:	fef42023          	sw	a5,-32(s0)
     f38:	fe042623          	sw	zero,-20(s0)
     f3c:	0ff00793          	li	a5,255
     f40:	fef42423          	sw	a5,-24(s0)
     f44:	0600006f          	j	fa4 <sdcard_read+0xa0>
     f48:	000057b7          	lui	a5,0x5
     f4c:	2e07a783          	lw	a5,736(a5) # 52e0 <SDCARD>
     f50:	00300713          	li	a4,3
     f54:	00e7a023          	sw	a4,0(a5)
     f58:	fec42783          	lw	a5,-20(s0)
     f5c:	00178793          	addi	a5,a5,1
     f60:	fef42623          	sw	a5,-20(s0)
     f64:	000057b7          	lui	a5,0x5
     f68:	2e07a783          	lw	a5,736(a5) # 52e0 <SDCARD>
     f6c:	00200713          	li	a4,2
     f70:	00e7a023          	sw	a4,0(a5)
     f74:	000057b7          	lui	a5,0x5
     f78:	2e07a783          	lw	a5,736(a5) # 52e0 <SDCARD>
     f7c:	0007a783          	lw	a5,0(a5)
     f80:	fcf42e23          	sw	a5,-36(s0)
     f84:	fe842783          	lw	a5,-24(s0)
     f88:	00179793          	slli	a5,a5,0x1
     f8c:	fdc42703          	lw	a4,-36(s0)
     f90:	00f767b3          	or	a5,a4,a5
     f94:	fef42423          	sw	a5,-24(s0)
     f98:	000057b7          	lui	a5,0x5
     f9c:	5e47a783          	lw	a5,1508(a5) # 55e4 <sdcard_while_loading_callback>
     fa0:	000780e7          	jalr	a5
     fa4:	fe442783          	lw	a5,-28(s0)
     fa8:	00078e63          	beqz	a5,fc4 <sdcard_read+0xc0>
     fac:	fe042783          	lw	a5,-32(s0)
     fb0:	fff78793          	addi	a5,a5,-1
     fb4:	fe842703          	lw	a4,-24(s0)
     fb8:	40f757b3          	sra	a5,a4,a5
     fbc:	0017f793          	andi	a5,a5,1
     fc0:	f80794e3          	bnez	a5,f48 <sdcard_read+0x44>
     fc4:	fe442783          	lw	a5,-28(s0)
     fc8:	00079863          	bnez	a5,fd8 <sdcard_read+0xd4>
     fcc:	fec42703          	lw	a4,-20(s0)
     fd0:	fe042783          	lw	a5,-32(s0)
     fd4:	f6f74ae3          	blt	a4,a5,f48 <sdcard_read+0x44>
     fd8:	fe842783          	lw	a5,-24(s0)
     fdc:	0ff7f793          	zext.b	a5,a5
     fe0:	00078513          	mv	a0,a5
     fe4:	03c12083          	lw	ra,60(sp)
     fe8:	03812403          	lw	s0,56(sp)
     fec:	04010113          	addi	sp,sp,64
     ff0:	00008067          	ret

00000ff4 <sdcard_get>:
     ff4:	fd010113          	addi	sp,sp,-48
     ff8:	02112623          	sw	ra,44(sp)
     ffc:	02812423          	sw	s0,40(sp)
    1000:	03010413          	addi	s0,sp,48
    1004:	00050793          	mv	a5,a0
    1008:	00058713          	mv	a4,a1
    100c:	fcf40fa3          	sb	a5,-33(s0)
    1010:	00070793          	mv	a5,a4
    1014:	fcf40f23          	sb	a5,-34(s0)
    1018:	00000097          	auipc	ra,0x0
    101c:	4e4080e7          	jalr	1252(ra) # 14fc <sdcard_select>
    1020:	fde44703          	lbu	a4,-34(s0)
    1024:	fdf44783          	lbu	a5,-33(s0)
    1028:	00070593          	mv	a1,a4
    102c:	00078513          	mv	a0,a5
    1030:	00000097          	auipc	ra,0x0
    1034:	ed4080e7          	jalr	-300(ra) # f04 <sdcard_read>
    1038:	00050793          	mv	a5,a0
    103c:	fef407a3          	sb	a5,-17(s0)
    1040:	00100793          	li	a5,1
    1044:	fef42423          	sw	a5,-24(s0)
    1048:	0280006f          	j	1070 <sdcard_get+0x7c>
    104c:	00000593          	li	a1,0
    1050:	00800513          	li	a0,8
    1054:	00000097          	auipc	ra,0x0
    1058:	eb0080e7          	jalr	-336(ra) # f04 <sdcard_read>
    105c:	00050793          	mv	a5,a0
    1060:	fef407a3          	sb	a5,-17(s0)
    1064:	fe842783          	lw	a5,-24(s0)
    1068:	00178793          	addi	a5,a5,1
    106c:	fef42423          	sw	a5,-24(s0)
    1070:	fdf44783          	lbu	a5,-33(s0)
    1074:	0037d793          	srli	a5,a5,0x3
    1078:	0ff7f793          	zext.b	a5,a5
    107c:	00078713          	mv	a4,a5
    1080:	fe842783          	lw	a5,-24(s0)
    1084:	fce7c4e3          	blt	a5,a4,104c <sdcard_get+0x58>
    1088:	00000097          	auipc	ra,0x0
    108c:	488080e7          	jalr	1160(ra) # 1510 <sdcard_unselect>
    1090:	fef44783          	lbu	a5,-17(s0)
    1094:	00078513          	mv	a0,a5
    1098:	02c12083          	lw	ra,44(sp)
    109c:	02812403          	lw	s0,40(sp)
    10a0:	03010113          	addi	sp,sp,48
    10a4:	00008067          	ret

000010a8 <sdcard_cmd>:
    10a8:	fd010113          	addi	sp,sp,-48
    10ac:	02112623          	sw	ra,44(sp)
    10b0:	02812423          	sw	s0,40(sp)
    10b4:	03010413          	addi	s0,sp,48
    10b8:	fca42e23          	sw	a0,-36(s0)
    10bc:	00000097          	auipc	ra,0x0
    10c0:	440080e7          	jalr	1088(ra) # 14fc <sdcard_select>
    10c4:	fe042623          	sw	zero,-20(s0)
    10c8:	02c0006f          	j	10f4 <sdcard_cmd+0x4c>
    10cc:	fec42783          	lw	a5,-20(s0)
    10d0:	fdc42703          	lw	a4,-36(s0)
    10d4:	00f707b3          	add	a5,a4,a5
    10d8:	0007c783          	lbu	a5,0(a5)
    10dc:	00078513          	mv	a0,a5
    10e0:	00000097          	auipc	ra,0x0
    10e4:	910080e7          	jalr	-1776(ra) # 9f0 <sdcard_send>
    10e8:	fec42783          	lw	a5,-20(s0)
    10ec:	00178793          	addi	a5,a5,1
    10f0:	fef42623          	sw	a5,-20(s0)
    10f4:	fec42703          	lw	a4,-20(s0)
    10f8:	00500793          	li	a5,5
    10fc:	fce7d8e3          	bge	a5,a4,10cc <sdcard_cmd+0x24>
    1100:	00000097          	auipc	ra,0x0
    1104:	410080e7          	jalr	1040(ra) # 1510 <sdcard_unselect>
    1108:	00000013          	nop
    110c:	02c12083          	lw	ra,44(sp)
    1110:	02812403          	lw	s0,40(sp)
    1114:	03010113          	addi	sp,sp,48
    1118:	00008067          	ret

0000111c <sdcard_start_sector>:
    111c:	fe010113          	addi	sp,sp,-32
    1120:	00112e23          	sw	ra,28(sp)
    1124:	00812c23          	sw	s0,24(sp)
    1128:	02010413          	addi	s0,sp,32
    112c:	fea42623          	sw	a0,-20(s0)
    1130:	00000097          	auipc	ra,0x0
    1134:	3cc080e7          	jalr	972(ra) # 14fc <sdcard_select>
    1138:	05100793          	li	a5,81
    113c:	00078513          	mv	a0,a5
    1140:	00000097          	auipc	ra,0x0
    1144:	8b0080e7          	jalr	-1872(ra) # 9f0 <sdcard_send>
    1148:	fec42783          	lw	a5,-20(s0)
    114c:	0187d793          	srli	a5,a5,0x18
    1150:	00078513          	mv	a0,a5
    1154:	00000097          	auipc	ra,0x0
    1158:	89c080e7          	jalr	-1892(ra) # 9f0 <sdcard_send>
    115c:	fec42783          	lw	a5,-20(s0)
    1160:	4107d793          	srai	a5,a5,0x10
    1164:	0ff7f793          	zext.b	a5,a5
    1168:	00078513          	mv	a0,a5
    116c:	00000097          	auipc	ra,0x0
    1170:	884080e7          	jalr	-1916(ra) # 9f0 <sdcard_send>
    1174:	fec42783          	lw	a5,-20(s0)
    1178:	4087d793          	srai	a5,a5,0x8
    117c:	0ff7f793          	zext.b	a5,a5
    1180:	00078513          	mv	a0,a5
    1184:	00000097          	auipc	ra,0x0
    1188:	86c080e7          	jalr	-1940(ra) # 9f0 <sdcard_send>
    118c:	fec42783          	lw	a5,-20(s0)
    1190:	0ff7f793          	zext.b	a5,a5
    1194:	00078513          	mv	a0,a5
    1198:	00000097          	auipc	ra,0x0
    119c:	858080e7          	jalr	-1960(ra) # 9f0 <sdcard_send>
    11a0:	05500793          	li	a5,85
    11a4:	00078513          	mv	a0,a5
    11a8:	00000097          	auipc	ra,0x0
    11ac:	848080e7          	jalr	-1976(ra) # 9f0 <sdcard_send>
    11b0:	00000097          	auipc	ra,0x0
    11b4:	360080e7          	jalr	864(ra) # 1510 <sdcard_unselect>
    11b8:	fffff097          	auipc	ra,0xfffff
    11bc:	7cc080e7          	jalr	1996(ra) # 984 <sdcard_ponder>
    11c0:	00100593          	li	a1,1
    11c4:	00800513          	li	a0,8
    11c8:	00000097          	auipc	ra,0x0
    11cc:	e2c080e7          	jalr	-468(ra) # ff4 <sdcard_get>
    11d0:	00050793          	mv	a5,a0
    11d4:	00078513          	mv	a0,a5
    11d8:	01c12083          	lw	ra,28(sp)
    11dc:	01812403          	lw	s0,24(sp)
    11e0:	02010113          	addi	sp,sp,32
    11e4:	00008067          	ret

000011e8 <sdcard_read_sector>:
    11e8:	fd010113          	addi	sp,sp,-48
    11ec:	02112623          	sw	ra,44(sp)
    11f0:	02812423          	sw	s0,40(sp)
    11f4:	03010413          	addi	s0,sp,48
    11f8:	fca42e23          	sw	a0,-36(s0)
    11fc:	fcb42c23          	sw	a1,-40(s0)
    1200:	fdc42503          	lw	a0,-36(s0)
    1204:	00000097          	auipc	ra,0x0
    1208:	f18080e7          	jalr	-232(ra) # 111c <sdcard_start_sector>
    120c:	00050793          	mv	a5,a0
    1210:	fef405a3          	sb	a5,-21(s0)
    1214:	feb44783          	lbu	a5,-21(s0)
    1218:	00078663          	beqz	a5,1224 <sdcard_read_sector+0x3c>
    121c:	fd842783          	lw	a5,-40(s0)
    1220:	08c0006f          	j	12ac <sdcard_read_sector+0xc4>
    1224:	00100593          	li	a1,1
    1228:	00100513          	li	a0,1
    122c:	00000097          	auipc	ra,0x0
    1230:	dc8080e7          	jalr	-568(ra) # ff4 <sdcard_get>
    1234:	fe042623          	sw	zero,-20(s0)
    1238:	03c0006f          	j	1274 <sdcard_read_sector+0x8c>
    123c:	00000593          	li	a1,0
    1240:	00800513          	li	a0,8
    1244:	00000097          	auipc	ra,0x0
    1248:	db0080e7          	jalr	-592(ra) # ff4 <sdcard_get>
    124c:	00050793          	mv	a5,a0
    1250:	fef401a3          	sb	a5,-29(s0)
    1254:	fd842783          	lw	a5,-40(s0)
    1258:	00178713          	addi	a4,a5,1
    125c:	fce42c23          	sw	a4,-40(s0)
    1260:	fe344703          	lbu	a4,-29(s0)
    1264:	00e78023          	sb	a4,0(a5)
    1268:	fec42783          	lw	a5,-20(s0)
    126c:	00178793          	addi	a5,a5,1
    1270:	fef42623          	sw	a5,-20(s0)
    1274:	fec42703          	lw	a4,-20(s0)
    1278:	1ff00793          	li	a5,511
    127c:	fce7d0e3          	bge	a5,a4,123c <sdcard_read_sector+0x54>
    1280:	00000593          	li	a1,0
    1284:	01000513          	li	a0,16
    1288:	00000097          	auipc	ra,0x0
    128c:	d6c080e7          	jalr	-660(ra) # ff4 <sdcard_get>
    1290:	00050793          	mv	a5,a0
    1294:	fef42223          	sw	a5,-28(s0)
    1298:	00000097          	auipc	ra,0x0
    129c:	278080e7          	jalr	632(ra) # 1510 <sdcard_unselect>
    12a0:	fffff097          	auipc	ra,0xfffff
    12a4:	6e4080e7          	jalr	1764(ra) # 984 <sdcard_ponder>
    12a8:	fd842783          	lw	a5,-40(s0)
    12ac:	00078513          	mv	a0,a5
    12b0:	02c12083          	lw	ra,44(sp)
    12b4:	02812403          	lw	s0,40(sp)
    12b8:	03010113          	addi	sp,sp,48
    12bc:	00008067          	ret

000012c0 <sdcard_preinit>:
    12c0:	fe010113          	addi	sp,sp,-32
    12c4:	00112e23          	sw	ra,28(sp)
    12c8:	00812c23          	sw	s0,24(sp)
    12cc:	02010413          	addi	s0,sp,32
    12d0:	000057b7          	lui	a5,0x5
    12d4:	2e07a783          	lw	a5,736(a5) # 52e0 <SDCARD>
    12d8:	00600713          	li	a4,6
    12dc:	00e7a023          	sw	a4,0(a5)
    12e0:	013137b7          	lui	a5,0x1313
    12e4:	d0078513          	addi	a0,a5,-768 # 1312d00 <__stacktop+0x1302d00>
    12e8:	00000097          	auipc	ra,0x0
    12ec:	1fc080e7          	jalr	508(ra) # 14e4 <pause>
    12f0:	fe042623          	sw	zero,-20(s0)
    12f4:	fe042423          	sw	zero,-24(s0)
    12f8:	0340006f          	j	132c <sdcard_preinit+0x6c>
    12fc:	000057b7          	lui	a5,0x5
    1300:	2e07a783          	lw	a5,736(a5) # 52e0 <SDCARD>
    1304:	fec42703          	lw	a4,-20(s0)
    1308:	00676713          	ori	a4,a4,6
    130c:	00e7a023          	sw	a4,0(a5)
    1310:	00100713          	li	a4,1
    1314:	fec42783          	lw	a5,-20(s0)
    1318:	40f707b3          	sub	a5,a4,a5
    131c:	fef42623          	sw	a5,-20(s0)
    1320:	fe842783          	lw	a5,-24(s0)
    1324:	00178793          	addi	a5,a5,1
    1328:	fef42423          	sw	a5,-24(s0)
    132c:	fe842703          	lw	a4,-24(s0)
    1330:	09f00793          	li	a5,159
    1334:	fce7d4e3          	bge	a5,a4,12fc <sdcard_preinit+0x3c>
    1338:	000057b7          	lui	a5,0x5
    133c:	2e07a783          	lw	a5,736(a5) # 52e0 <SDCARD>
    1340:	00600713          	li	a4,6
    1344:	00e7a023          	sw	a4,0(a5)
    1348:	00000013          	nop
    134c:	01c12083          	lw	ra,28(sp)
    1350:	01812403          	lw	s0,24(sp)
    1354:	02010113          	addi	sp,sp,32
    1358:	00008067          	ret

0000135c <sdcard_init>:
    135c:	fe010113          	addi	sp,sp,-32
    1360:	00112e23          	sw	ra,28(sp)
    1364:	00812c23          	sw	s0,24(sp)
    1368:	02010413          	addi	s0,sp,32
    136c:	000057b7          	lui	a5,0x5
    1370:	00001737          	lui	a4,0x1
    1374:	4f870713          	addi	a4,a4,1272 # 14f8 <sdcard_idle>
    1378:	5ee7a223          	sw	a4,1508(a5) # 55e4 <sdcard_while_loading_callback>
    137c:	00000097          	auipc	ra,0x0
    1380:	f44080e7          	jalr	-188(ra) # 12c0 <sdcard_preinit>
    1384:	000057b7          	lui	a5,0x5
    1388:	2c878513          	addi	a0,a5,712 # 52c8 <cmd0>
    138c:	00000097          	auipc	ra,0x0
    1390:	d1c080e7          	jalr	-740(ra) # 10a8 <sdcard_cmd>
    1394:	00100593          	li	a1,1
    1398:	00800513          	li	a0,8
    139c:	00000097          	auipc	ra,0x0
    13a0:	c58080e7          	jalr	-936(ra) # ff4 <sdcard_get>
    13a4:	00050793          	mv	a5,a0
    13a8:	fef407a3          	sb	a5,-17(s0)
    13ac:	fffff097          	auipc	ra,0xfffff
    13b0:	5d8080e7          	jalr	1496(ra) # 984 <sdcard_ponder>
    13b4:	fef44703          	lbu	a4,-17(s0)
    13b8:	0ff00793          	li	a5,255
    13bc:	00f71c63          	bne	a4,a5,13d4 <sdcard_init+0x78>
    13c0:	013137b7          	lui	a5,0x1313
    13c4:	d0078513          	addi	a0,a5,-768 # 1312d00 <__stacktop+0x1302d00>
    13c8:	00000097          	auipc	ra,0x0
    13cc:	11c080e7          	jalr	284(ra) # 14e4 <pause>
    13d0:	fadff06f          	j	137c <sdcard_init+0x20>
    13d4:	00000013          	nop
    13d8:	000057b7          	lui	a5,0x5
    13dc:	2c078513          	addi	a0,a5,704 # 52c0 <cmd8>
    13e0:	00000097          	auipc	ra,0x0
    13e4:	cc8080e7          	jalr	-824(ra) # 10a8 <sdcard_cmd>
    13e8:	00100593          	li	a1,1
    13ec:	02800513          	li	a0,40
    13f0:	00000097          	auipc	ra,0x0
    13f4:	c04080e7          	jalr	-1020(ra) # ff4 <sdcard_get>
    13f8:	00050793          	mv	a5,a0
    13fc:	fef407a3          	sb	a5,-17(s0)
    1400:	fffff097          	auipc	ra,0xfffff
    1404:	584080e7          	jalr	1412(ra) # 984 <sdcard_ponder>
    1408:	000057b7          	lui	a5,0x5
    140c:	2b878513          	addi	a0,a5,696 # 52b8 <cmd55>
    1410:	00000097          	auipc	ra,0x0
    1414:	c98080e7          	jalr	-872(ra) # 10a8 <sdcard_cmd>
    1418:	00100593          	li	a1,1
    141c:	00800513          	li	a0,8
    1420:	00000097          	auipc	ra,0x0
    1424:	bd4080e7          	jalr	-1068(ra) # ff4 <sdcard_get>
    1428:	00050793          	mv	a5,a0
    142c:	fef407a3          	sb	a5,-17(s0)
    1430:	fffff097          	auipc	ra,0xfffff
    1434:	554080e7          	jalr	1364(ra) # 984 <sdcard_ponder>
    1438:	000057b7          	lui	a5,0x5
    143c:	2b078513          	addi	a0,a5,688 # 52b0 <acmd41>
    1440:	00000097          	auipc	ra,0x0
    1444:	c68080e7          	jalr	-920(ra) # 10a8 <sdcard_cmd>
    1448:	00100593          	li	a1,1
    144c:	00800513          	li	a0,8
    1450:	00000097          	auipc	ra,0x0
    1454:	ba4080e7          	jalr	-1116(ra) # ff4 <sdcard_get>
    1458:	00050793          	mv	a5,a0
    145c:	fef407a3          	sb	a5,-17(s0)
    1460:	fffff097          	auipc	ra,0xfffff
    1464:	524080e7          	jalr	1316(ra) # 984 <sdcard_ponder>
    1468:	fef44783          	lbu	a5,-17(s0)
    146c:	02078863          	beqz	a5,149c <sdcard_init+0x140>
    1470:	00000097          	auipc	ra,0x0
    1474:	0a0080e7          	jalr	160(ra) # 1510 <sdcard_unselect>
    1478:	fffff097          	auipc	ra,0xfffff
    147c:	50c080e7          	jalr	1292(ra) # 984 <sdcard_ponder>
    1480:	001e87b7          	lui	a5,0x1e8
    1484:	48078513          	addi	a0,a5,1152 # 1e8480 <__stacktop+0x1d8480>
    1488:	00000097          	auipc	ra,0x0
    148c:	05c080e7          	jalr	92(ra) # 14e4 <pause>
    1490:	00000097          	auipc	ra,0x0
    1494:	06c080e7          	jalr	108(ra) # 14fc <sdcard_select>
    1498:	f71ff06f          	j	1408 <sdcard_init+0xac>
    149c:	00000013          	nop
    14a0:	000057b7          	lui	a5,0x5
    14a4:	2a878513          	addi	a0,a5,680 # 52a8 <cmd16>
    14a8:	00000097          	auipc	ra,0x0
    14ac:	c00080e7          	jalr	-1024(ra) # 10a8 <sdcard_cmd>
    14b0:	00100593          	li	a1,1
    14b4:	00800513          	li	a0,8
    14b8:	00000097          	auipc	ra,0x0
    14bc:	b3c080e7          	jalr	-1220(ra) # ff4 <sdcard_get>
    14c0:	00050793          	mv	a5,a0
    14c4:	fef407a3          	sb	a5,-17(s0)
    14c8:	fffff097          	auipc	ra,0xfffff
    14cc:	4bc080e7          	jalr	1212(ra) # 984 <sdcard_ponder>
    14d0:	00000013          	nop
    14d4:	01c12083          	lw	ra,28(sp)
    14d8:	01812403          	lw	s0,24(sp)
    14dc:	02010113          	addi	sp,sp,32
    14e0:	00008067          	ret

000014e4 <pause>:
    14e4:	c0002773          	rdcycle	a4
    14e8:	c00027f3          	rdcycle	a5
    14ec:	40e787b3          	sub	a5,a5,a4
    14f0:	fea7ece3          	bltu	a5,a0,14e8 <pause+0x4>
    14f4:	00008067          	ret

000014f8 <sdcard_idle>:
    14f8:	00008067          	ret

000014fc <sdcard_select>:
    14fc:	000057b7          	lui	a5,0x5
    1500:	2e07a783          	lw	a5,736(a5) # 52e0 <SDCARD>
    1504:	00200713          	li	a4,2
    1508:	00e7a023          	sw	a4,0(a5)
    150c:	00008067          	ret

00001510 <sdcard_unselect>:
    1510:	000057b7          	lui	a5,0x5
    1514:	2e07a783          	lw	a5,736(a5) # 52e0 <SDCARD>
    1518:	00600713          	li	a4,6
    151c:	00e7a023          	sw	a4,0(a5)
    1520:	00008067          	ret

00001524 <sdcard_readsector>:
    1524:	04060663          	beqz	a2,1570 <sdcard_readsector+0x4c>
    1528:	ff010113          	addi	sp,sp,-16
    152c:	00912423          	sw	s1,8(sp)
    1530:	01212223          	sw	s2,4(sp)
    1534:	00112623          	sw	ra,12(sp)
    1538:	00050493          	mv	s1,a0
    153c:	00a60933          	add	s2,a2,a0
    1540:	00048513          	mv	a0,s1
    1544:	00000097          	auipc	ra,0x0
    1548:	ca4080e7          	jalr	-860(ra) # 11e8 <sdcard_read_sector>
    154c:	00148493          	addi	s1,s1,1
    1550:	00050593          	mv	a1,a0
    1554:	fe9916e3          	bne	s2,s1,1540 <sdcard_readsector+0x1c>
    1558:	00c12083          	lw	ra,12(sp)
    155c:	00812483          	lw	s1,8(sp)
    1560:	00412903          	lw	s2,4(sp)
    1564:	00100513          	li	a0,1
    1568:	01010113          	addi	sp,sp,16
    156c:	00008067          	ret
    1570:	00000513          	li	a0,0
    1574:	00008067          	ret

00001578 <sdcard_writesector>:
    1578:	00000513          	li	a0,0
    157c:	00008067          	ret

00001580 <__divsi3>:
    1580:	06054063          	bltz	a0,15e0 <__umodsi3+0x10>
    1584:	0605c663          	bltz	a1,15f0 <__umodsi3+0x20>

00001588 <__udivsi3>:
    1588:	00058613          	mv	a2,a1
    158c:	00050593          	mv	a1,a0
    1590:	fff00513          	li	a0,-1
    1594:	02060c63          	beqz	a2,15cc <__udivsi3+0x44>
    1598:	00100693          	li	a3,1
    159c:	00b67a63          	bgeu	a2,a1,15b0 <__udivsi3+0x28>
    15a0:	00c05863          	blez	a2,15b0 <__udivsi3+0x28>
    15a4:	00161613          	slli	a2,a2,0x1
    15a8:	00169693          	slli	a3,a3,0x1
    15ac:	feb66ae3          	bltu	a2,a1,15a0 <__udivsi3+0x18>
    15b0:	00000513          	li	a0,0
    15b4:	00c5e663          	bltu	a1,a2,15c0 <__udivsi3+0x38>
    15b8:	40c585b3          	sub	a1,a1,a2
    15bc:	00d56533          	or	a0,a0,a3
    15c0:	0016d693          	srli	a3,a3,0x1
    15c4:	00165613          	srli	a2,a2,0x1
    15c8:	fe0696e3          	bnez	a3,15b4 <__udivsi3+0x2c>
    15cc:	00008067          	ret

000015d0 <__umodsi3>:
    15d0:	00008293          	mv	t0,ra
    15d4:	fb5ff0ef          	jal	1588 <__udivsi3>
    15d8:	00058513          	mv	a0,a1
    15dc:	00028067          	jr	t0
    15e0:	40a00533          	neg	a0,a0
    15e4:	0005d863          	bgez	a1,15f4 <__umodsi3+0x24>
    15e8:	40b005b3          	neg	a1,a1
    15ec:	f95ff06f          	j	1580 <__divsi3>
    15f0:	40b005b3          	neg	a1,a1
    15f4:	00008293          	mv	t0,ra
    15f8:	f89ff0ef          	jal	1580 <__divsi3>
    15fc:	40a00533          	neg	a0,a0
    1600:	00028067          	jr	t0

00001604 <__modsi3>:
    1604:	00008293          	mv	t0,ra
    1608:	0005ca63          	bltz	a1,161c <__modsi3+0x18>
    160c:	00054c63          	bltz	a0,1624 <__modsi3+0x20>
    1610:	f79ff0ef          	jal	1588 <__udivsi3>
    1614:	00058513          	mv	a0,a1
    1618:	00028067          	jr	t0
    161c:	40b005b3          	neg	a1,a1
    1620:	fe0558e3          	bgez	a0,1610 <__modsi3+0xc>
    1624:	40a00533          	neg	a0,a0
    1628:	f61ff0ef          	jal	1588 <__udivsi3>
    162c:	40b00533          	neg	a0,a1
    1630:	00028067          	jr	t0

00001634 <memset>:
    1634:	00c50633          	add	a2,a0,a2
    1638:	00050793          	mv	a5,a0
    163c:	00c79463          	bne	a5,a2,1644 <memset+0x10>
    1640:	00008067          	ret
    1644:	00178793          	addi	a5,a5,1
    1648:	feb78fa3          	sb	a1,-1(a5)
    164c:	ff1ff06f          	j	163c <memset+0x8>

00001650 <memcpy>:
    1650:	00000793          	li	a5,0
    1654:	00c79463          	bne	a5,a2,165c <memcpy+0xc>
    1658:	00008067          	ret
    165c:	00f58733          	add	a4,a1,a5
    1660:	00074683          	lbu	a3,0(a4)
    1664:	00f50733          	add	a4,a0,a5
    1668:	00178793          	addi	a5,a5,1
    166c:	00d70023          	sb	a3,0(a4)
    1670:	fe5ff06f          	j	1654 <memcpy+0x4>

00001674 <strlen>:
    1674:	00050793          	mv	a5,a0
    1678:	00000513          	li	a0,0
    167c:	00a78733          	add	a4,a5,a0
    1680:	00074703          	lbu	a4,0(a4)
    1684:	00071463          	bnez	a4,168c <strlen+0x18>
    1688:	00008067          	ret
    168c:	00150513          	addi	a0,a0,1
    1690:	fedff06f          	j	167c <strlen+0x8>

00001694 <strncmp>:
    1694:	00000793          	li	a5,0
    1698:	00c79663          	bne	a5,a2,16a4 <strncmp+0x10>
    169c:	00000513          	li	a0,0
    16a0:	00008067          	ret
    16a4:	00f50733          	add	a4,a0,a5
    16a8:	00074683          	lbu	a3,0(a4)
    16ac:	00f58733          	add	a4,a1,a5
    16b0:	00074703          	lbu	a4,0(a4)
    16b4:	00e6e863          	bltu	a3,a4,16c4 <strncmp+0x30>
    16b8:	00d76a63          	bltu	a4,a3,16cc <strncmp+0x38>
    16bc:	00178793          	addi	a5,a5,1
    16c0:	fd9ff06f          	j	1698 <strncmp+0x4>
    16c4:	fff00513          	li	a0,-1
    16c8:	00008067          	ret
    16cc:	00100513          	li	a0,1
    16d0:	00008067          	ret

000016d4 <strncpy>:
    16d4:	00000793          	li	a5,0
    16d8:	00c79463          	bne	a5,a2,16e0 <strncpy+0xc>
    16dc:	00008067          	ret
    16e0:	00f58733          	add	a4,a1,a5
    16e4:	00074683          	lbu	a3,0(a4)
    16e8:	00f50733          	add	a4,a0,a5
    16ec:	00178793          	addi	a5,a5,1
    16f0:	00d70023          	sb	a3,0(a4)
    16f4:	fe5ff06f          	j	16d8 <strncpy+0x4>

000016f8 <oled_wait>:
    16f8:	00000013          	nop
    16fc:	00000013          	nop
    1700:	00000013          	nop
    1704:	00000013          	nop
    1708:	00000013          	nop
    170c:	00000013          	nop
    1710:	00000013          	nop
    1714:	00008067          	ret

00001718 <oled_init_mode>:
    1718:	000057b7          	lui	a5,0x5
    171c:	2e47a703          	lw	a4,740(a5) # 52e4 <OLED_RST>
    1720:	ff010113          	addi	sp,sp,-16
    1724:	00912223          	sw	s1,4(sp)
    1728:	00112623          	sw	ra,12(sp)
    172c:	00812423          	sw	s0,8(sp)
    1730:	00072023          	sw	zero,0(a4)
    1734:	00050493          	mv	s1,a0
    1738:	00040737          	lui	a4,0x40
    173c:	00000013          	nop
    1740:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    1744:	fe071ce3          	bnez	a4,173c <oled_init_mode+0x24>
    1748:	2e47a703          	lw	a4,740(a5)
    174c:	00100693          	li	a3,1
    1750:	00d72023          	sw	a3,0(a4)
    1754:	00040737          	lui	a4,0x40
    1758:	00000013          	nop
    175c:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    1760:	fe071ce3          	bnez	a4,1758 <oled_init_mode+0x40>
    1764:	2e47a783          	lw	a5,740(a5)
    1768:	0007a023          	sw	zero,0(a5)
    176c:	000407b7          	lui	a5,0x40
    1770:	00000013          	nop
    1774:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    1778:	fe079ce3          	bnez	a5,1770 <oled_init_mode+0x58>
    177c:	00005737          	lui	a4,0x5
    1780:	2e872783          	lw	a5,744(a4) # 52e8 <OLED>
    1784:	2af00693          	li	a3,687
    1788:	00d7a023          	sw	a3,0(a5)
    178c:	000407b7          	lui	a5,0x40
    1790:	00000013          	nop
    1794:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    1798:	fe079ce3          	bnez	a5,1790 <oled_init_mode+0x78>
    179c:	2e872403          	lw	s0,744(a4)
    17a0:	2a000793          	li	a5,672
    17a4:	00f42023          	sw	a5,0(s0)
    17a8:	00000097          	auipc	ra,0x0
    17ac:	f50080e7          	jalr	-176(ra) # 16f8 <oled_wait>
    17b0:	4a000793          	li	a5,1184
    17b4:	00048463          	beqz	s1,17bc <oled_init_mode+0xa4>
    17b8:	42000793          	li	a5,1056
    17bc:	00f42023          	sw	a5,0(s0)
    17c0:	00000097          	auipc	ra,0x0
    17c4:	f38080e7          	jalr	-200(ra) # 16f8 <oled_wait>
    17c8:	2fd00793          	li	a5,765
    17cc:	00f42023          	sw	a5,0(s0)
    17d0:	00000097          	auipc	ra,0x0
    17d4:	f28080e7          	jalr	-216(ra) # 16f8 <oled_wait>
    17d8:	4b100793          	li	a5,1201
    17dc:	00f42023          	sw	a5,0(s0)
    17e0:	00000097          	auipc	ra,0x0
    17e4:	f18080e7          	jalr	-232(ra) # 16f8 <oled_wait>
    17e8:	2a200793          	li	a5,674
    17ec:	00f42023          	sw	a5,0(s0)
    17f0:	00000097          	auipc	ra,0x0
    17f4:	f08080e7          	jalr	-248(ra) # 16f8 <oled_wait>
    17f8:	40000793          	li	a5,1024
    17fc:	00f42023          	sw	a5,0(s0)
    1800:	00812403          	lw	s0,8(sp)
    1804:	00c12083          	lw	ra,12(sp)
    1808:	00412483          	lw	s1,4(sp)
    180c:	01010113          	addi	sp,sp,16
    1810:	00000317          	auipc	t1,0x0
    1814:	ee830067          	jr	-280(t1) # 16f8 <oled_wait>

00001818 <oled_init>:
    1818:	00000513          	li	a0,0
    181c:	00000317          	auipc	t1,0x0
    1820:	efc30067          	jr	-260(t1) # 1718 <oled_init_mode>

00001824 <oled_fullscreen>:
    1824:	ff010113          	addi	sp,sp,-16
    1828:	000057b7          	lui	a5,0x5
    182c:	00812423          	sw	s0,8(sp)
    1830:	2e87a403          	lw	s0,744(a5) # 52e8 <OLED>
    1834:	00112623          	sw	ra,12(sp)
    1838:	00912223          	sw	s1,4(sp)
    183c:	01212023          	sw	s2,0(sp)
    1840:	21500793          	li	a5,533
    1844:	00f42023          	sw	a5,0(s0)
    1848:	40000913          	li	s2,1024
    184c:	00000097          	auipc	ra,0x0
    1850:	eac080e7          	jalr	-340(ra) # 16f8 <oled_wait>
    1854:	47f00493          	li	s1,1151
    1858:	01242023          	sw	s2,0(s0)
    185c:	00000097          	auipc	ra,0x0
    1860:	e9c080e7          	jalr	-356(ra) # 16f8 <oled_wait>
    1864:	00942023          	sw	s1,0(s0)
    1868:	00000097          	auipc	ra,0x0
    186c:	e90080e7          	jalr	-368(ra) # 16f8 <oled_wait>
    1870:	27500793          	li	a5,629
    1874:	00f42023          	sw	a5,0(s0)
    1878:	00000097          	auipc	ra,0x0
    187c:	e80080e7          	jalr	-384(ra) # 16f8 <oled_wait>
    1880:	01242023          	sw	s2,0(s0)
    1884:	00000097          	auipc	ra,0x0
    1888:	e74080e7          	jalr	-396(ra) # 16f8 <oled_wait>
    188c:	00942023          	sw	s1,0(s0)
    1890:	00000097          	auipc	ra,0x0
    1894:	e68080e7          	jalr	-408(ra) # 16f8 <oled_wait>
    1898:	25c00793          	li	a5,604
    189c:	00f42023          	sw	a5,0(s0)
    18a0:	00812403          	lw	s0,8(sp)
    18a4:	00c12083          	lw	ra,12(sp)
    18a8:	00412483          	lw	s1,4(sp)
    18ac:	00012903          	lw	s2,0(sp)
    18b0:	01010113          	addi	sp,sp,16
    18b4:	00000317          	auipc	t1,0x0
    18b8:	e4430067          	jr	-444(t1) # 16f8 <oled_wait>

000018bc <oled_clear>:
    18bc:	fe010113          	addi	sp,sp,-32
    18c0:	000057b7          	lui	a5,0x5
    18c4:	01312623          	sw	s3,12(sp)
    18c8:	2e87a983          	lw	s3,744(a5) # 52e8 <OLED>
    18cc:	00812c23          	sw	s0,24(sp)
    18d0:	01212823          	sw	s2,16(sp)
    18d4:	00112e23          	sw	ra,28(sp)
    18d8:	00912a23          	sw	s1,20(sp)
    18dc:	08000913          	li	s2,128
    18e0:	40056413          	ori	s0,a0,1024
    18e4:	08000493          	li	s1,128
    18e8:	0089a023          	sw	s0,0(s3)
    18ec:	00000097          	auipc	ra,0x0
    18f0:	e0c080e7          	jalr	-500(ra) # 16f8 <oled_wait>
    18f4:	0089a023          	sw	s0,0(s3)
    18f8:	00000097          	auipc	ra,0x0
    18fc:	e00080e7          	jalr	-512(ra) # 16f8 <oled_wait>
    1900:	fff48493          	addi	s1,s1,-1
    1904:	0089a023          	sw	s0,0(s3)
    1908:	00000097          	auipc	ra,0x0
    190c:	df0080e7          	jalr	-528(ra) # 16f8 <oled_wait>
    1910:	fc049ce3          	bnez	s1,18e8 <oled_clear+0x2c>
    1914:	fff90913          	addi	s2,s2,-1
    1918:	fc0916e3          	bnez	s2,18e4 <oled_clear+0x28>
    191c:	01c12083          	lw	ra,28(sp)
    1920:	01812403          	lw	s0,24(sp)
    1924:	01412483          	lw	s1,20(sp)
    1928:	01012903          	lw	s2,16(sp)
    192c:	00c12983          	lw	s3,12(sp)
    1930:	02010113          	addi	sp,sp,32
    1934:	00008067          	ret

00001938 <display_framebuffer>:
    1938:	000057b7          	lui	a5,0x5
    193c:	2d47a503          	lw	a0,724(a5) # 52d4 <DISPLAY>
    1940:	00008067          	ret

00001944 <display_set_cursor>:
    1944:	000057b7          	lui	a5,0x5
    1948:	5ea7a823          	sw	a0,1520(a5) # 55f0 <cursor_x>
    194c:	000057b7          	lui	a5,0x5
    1950:	5eb7a623          	sw	a1,1516(a5) # 55ec <cursor_y>
    1954:	00008067          	ret

00001958 <display_set_front_back_color>:
    1958:	000057b7          	lui	a5,0x5
    195c:	5ea784a3          	sb	a0,1513(a5) # 55e9 <front_color>
    1960:	000057b7          	lui	a5,0x5
    1964:	5eb78423          	sb	a1,1512(a5) # 55e8 <back_color>
    1968:	00008067          	ret

0000196c <display_putchar>:
    196c:	00a00793          	li	a5,10
    1970:	00005737          	lui	a4,0x5
    1974:	02f51663          	bne	a0,a5,19a0 <display_putchar+0x34>
    1978:	5e072823          	sw	zero,1520(a4) # 55f0 <cursor_x>
    197c:	00005737          	lui	a4,0x5
    1980:	5ec72783          	lw	a5,1516(a4) # 55ec <cursor_y>
    1984:	00878793          	addi	a5,a5,8
    1988:	5ef72623          	sw	a5,1516(a4)
    198c:	07f00713          	li	a4,127
    1990:	00f75663          	bge	a4,a5,199c <display_putchar+0x30>
    1994:	000057b7          	lui	a5,0x5
    1998:	5e07a623          	sw	zero,1516(a5) # 55ec <cursor_y>
    199c:	00008067          	ret
    19a0:	ff010113          	addi	sp,sp,-16
    19a4:	00812623          	sw	s0,12(sp)
    19a8:	00912423          	sw	s1,8(sp)
    19ac:	01f00793          	li	a5,31
    19b0:	0ea7d263          	bge	a5,a0,1a94 <display_putchar+0x128>
    19b4:	00005f37          	lui	t5,0x5
    19b8:	5ecf2783          	lw	a5,1516(t5) # 55ec <cursor_y>
    19bc:	08000593          	li	a1,128
    19c0:	40f585b3          	sub	a1,a1,a5
    19c4:	00800793          	li	a5,8
    19c8:	00b7d463          	bge	a5,a1,19d0 <display_putchar+0x64>
    19cc:	00800593          	li	a1,8
    19d0:	5f072783          	lw	a5,1520(a4)
    19d4:	08000813          	li	a6,128
    19d8:	40f80833          	sub	a6,a6,a5
    19dc:	00500793          	li	a5,5
    19e0:	0107d463          	bge	a5,a6,19e8 <display_putchar+0x7c>
    19e4:	00500813          	li	a6,5
    19e8:	000057b7          	lui	a5,0x5
    19ec:	2d87ae03          	lw	t3,728(a5) # 52d8 <RGBSEL>
    19f0:	000057b7          	lui	a5,0x5
    19f4:	2d47a283          	lw	t0,724(a5) # 52d4 <DISPLAY>
    19f8:	00251693          	slli	a3,a0,0x2
    19fc:	000057b7          	lui	a5,0x5
    1a00:	00a686b3          	add	a3,a3,a0
    1a04:	3cc78793          	addi	a5,a5,972 # 53cc <font>
    1a08:	00f686b3          	add	a3,a3,a5
    1a0c:	00000613          	li	a2,0
    1a10:	00100e93          	li	t4,1
    1a14:	000053b7          	lui	t2,0x5
    1a18:	00005437          	lui	s0,0x5
    1a1c:	00200493          	li	s1,2
    1a20:	06b65a63          	bge	a2,a1,1a94 <display_putchar+0x128>
    1a24:	00ce9fb3          	sll	t6,t4,a2
    1a28:	00068313          	mv	t1,a3
    1a2c:	00000893          	li	a7,0
    1a30:	04c0006f          	j	1a7c <display_putchar+0x110>
    1a34:	5ecf2783          	lw	a5,1516(t5)
    1a38:	00a88533          	add	a0,a7,a0
    1a3c:	00751513          	slli	a0,a0,0x7
    1a40:	00f607b3          	add	a5,a2,a5
    1a44:	00a787b3          	add	a5,a5,a0
    1a48:	f6034503          	lbu	a0,-160(t1)
    1a4c:	01f57533          	and	a0,a0,t6
    1a50:	02050e63          	beqz	a0,1a8c <display_putchar+0x120>
    1a54:	5e944503          	lbu	a0,1513(s0) # 55e9 <front_color>
    1a58:	000e2023          	sw	zero,0(t3)
    1a5c:	00f287b3          	add	a5,t0,a5
    1a60:	00a78023          	sb	a0,0(a5)
    1a64:	01de2023          	sw	t4,0(t3)
    1a68:	00a78023          	sb	a0,0(a5)
    1a6c:	009e2023          	sw	s1,0(t3)
    1a70:	00a78023          	sb	a0,0(a5)
    1a74:	00188893          	addi	a7,a7,1
    1a78:	00130313          	addi	t1,t1,1
    1a7c:	5f072503          	lw	a0,1520(a4)
    1a80:	fb08cae3          	blt	a7,a6,1a34 <display_putchar+0xc8>
    1a84:	00160613          	addi	a2,a2,1
    1a88:	f99ff06f          	j	1a20 <display_putchar+0xb4>
    1a8c:	5e83c503          	lbu	a0,1512(t2) # 55e8 <back_color>
    1a90:	fc9ff06f          	j	1a58 <display_putchar+0xec>
    1a94:	5f072783          	lw	a5,1520(a4)
    1a98:	07f00693          	li	a3,127
    1a9c:	00578793          	addi	a5,a5,5
    1aa0:	00f6c663          	blt	a3,a5,1aac <display_putchar+0x140>
    1aa4:	5ef72823          	sw	a5,1520(a4)
    1aa8:	0240006f          	j	1acc <display_putchar+0x160>
    1aac:	5e072823          	sw	zero,1520(a4)
    1ab0:	00005737          	lui	a4,0x5
    1ab4:	5ec72783          	lw	a5,1516(a4) # 55ec <cursor_y>
    1ab8:	00878793          	addi	a5,a5,8
    1abc:	5ef72623          	sw	a5,1516(a4)
    1ac0:	00f6d663          	bge	a3,a5,1acc <display_putchar+0x160>
    1ac4:	000057b7          	lui	a5,0x5
    1ac8:	5e07a623          	sw	zero,1516(a5) # 55ec <cursor_y>
    1acc:	00c12403          	lw	s0,12(sp)
    1ad0:	00812483          	lw	s1,8(sp)
    1ad4:	01010113          	addi	sp,sp,16
    1ad8:	00008067          	ret

00001adc <display_refresh>:
    1adc:	00008067          	ret

00001ae0 <print_string>:
    1ae0:	ff010113          	addi	sp,sp,-16
    1ae4:	00812423          	sw	s0,8(sp)
    1ae8:	00912223          	sw	s1,4(sp)
    1aec:	00112623          	sw	ra,12(sp)
    1af0:	00050413          	mv	s0,a0
    1af4:	000054b7          	lui	s1,0x5
    1af8:	00044503          	lbu	a0,0(s0)
    1afc:	00051c63          	bnez	a0,1b14 <print_string+0x34>
    1b00:	00c12083          	lw	ra,12(sp)
    1b04:	00812403          	lw	s0,8(sp)
    1b08:	00412483          	lw	s1,4(sp)
    1b0c:	01010113          	addi	sp,sp,16
    1b10:	00008067          	ret
    1b14:	5f44a783          	lw	a5,1524(s1) # 55f4 <f_putchar>
    1b18:	00140413          	addi	s0,s0,1
    1b1c:	000780e7          	jalr	a5
    1b20:	fd9ff06f          	j	1af8 <print_string+0x18>

00001b24 <print_dec>:
    1b24:	ef010113          	addi	sp,sp,-272
    1b28:	10812423          	sw	s0,264(sp)
    1b2c:	10912223          	sw	s1,260(sp)
    1b30:	10112623          	sw	ra,268(sp)
    1b34:	11212023          	sw	s2,256(sp)
    1b38:	00050413          	mv	s0,a0
    1b3c:	000054b7          	lui	s1,0x5
    1b40:	08045063          	bgez	s0,1bc0 <print_dec+0x9c>
    1b44:	5f44a783          	lw	a5,1524(s1) # 55f4 <f_putchar>
    1b48:	02d00513          	li	a0,45
    1b4c:	40800433          	neg	s0,s0
    1b50:	000780e7          	jalr	a5
    1b54:	fedff06f          	j	1b40 <print_dec+0x1c>
    1b58:	00040513          	mv	a0,s0
    1b5c:	00a00593          	li	a1,10
    1b60:	00000097          	auipc	ra,0x0
    1b64:	a20080e7          	jalr	-1504(ra) # 1580 <__divsi3>
    1b68:	00251793          	slli	a5,a0,0x2
    1b6c:	00f507b3          	add	a5,a0,a5
    1b70:	00179793          	slli	a5,a5,0x1
    1b74:	40f40433          	sub	s0,s0,a5
    1b78:	00148493          	addi	s1,s1,1
    1b7c:	fe848fa3          	sb	s0,-1(s1)
    1b80:	00050413          	mv	s0,a0
    1b84:	fc041ae3          	bnez	s0,1b58 <print_dec+0x34>
    1b88:	fd2488e3          	beq	s1,s2,1b58 <print_dec+0x34>
    1b8c:	00005437          	lui	s0,0x5
    1b90:	fff4c503          	lbu	a0,-1(s1)
    1b94:	5f442783          	lw	a5,1524(s0) # 55f4 <f_putchar>
    1b98:	fff48493          	addi	s1,s1,-1
    1b9c:	03050513          	addi	a0,a0,48
    1ba0:	000780e7          	jalr	a5
    1ba4:	ff2496e3          	bne	s1,s2,1b90 <print_dec+0x6c>
    1ba8:	10c12083          	lw	ra,268(sp)
    1bac:	10812403          	lw	s0,264(sp)
    1bb0:	10412483          	lw	s1,260(sp)
    1bb4:	10012903          	lw	s2,256(sp)
    1bb8:	11010113          	addi	sp,sp,272
    1bbc:	00008067          	ret
    1bc0:	00010493          	mv	s1,sp
    1bc4:	00048913          	mv	s2,s1
    1bc8:	fbdff06f          	j	1b84 <print_dec+0x60>

00001bcc <print_hex_digits>:
    1bcc:	fe010113          	addi	sp,sp,-32
    1bd0:	00812c23          	sw	s0,24(sp)
    1bd4:	01212823          	sw	s2,16(sp)
    1bd8:	fff58413          	addi	s0,a1,-1
    1bdc:	00005937          	lui	s2,0x5
    1be0:	00912a23          	sw	s1,20(sp)
    1be4:	01312623          	sw	s3,12(sp)
    1be8:	00112e23          	sw	ra,28(sp)
    1bec:	00050493          	mv	s1,a0
    1bf0:	00241413          	slli	s0,s0,0x2
    1bf4:	38490913          	addi	s2,s2,900 # 5384 <LEDS+0x98>
    1bf8:	000059b7          	lui	s3,0x5
    1bfc:	02045063          	bgez	s0,1c1c <print_hex_digits+0x50>
    1c00:	01c12083          	lw	ra,28(sp)
    1c04:	01812403          	lw	s0,24(sp)
    1c08:	01412483          	lw	s1,20(sp)
    1c0c:	01012903          	lw	s2,16(sp)
    1c10:	00c12983          	lw	s3,12(sp)
    1c14:	02010113          	addi	sp,sp,32
    1c18:	00008067          	ret
    1c1c:	0084d7b3          	srl	a5,s1,s0
    1c20:	00f7f793          	andi	a5,a5,15
    1c24:	00f907b3          	add	a5,s2,a5
    1c28:	5f49a703          	lw	a4,1524(s3) # 55f4 <f_putchar>
    1c2c:	0007c503          	lbu	a0,0(a5)
    1c30:	ffc40413          	addi	s0,s0,-4
    1c34:	000700e7          	jalr	a4
    1c38:	fc5ff06f          	j	1bfc <print_hex_digits+0x30>

00001c3c <print_hex>:
    1c3c:	00800593          	li	a1,8
    1c40:	00000317          	auipc	t1,0x0
    1c44:	f8c30067          	jr	-116(t1) # 1bcc <print_hex_digits>

00001c48 <printf>:
    1c48:	fb010113          	addi	sp,sp,-80
    1c4c:	04f12223          	sw	a5,68(sp)
    1c50:	03410793          	addi	a5,sp,52
    1c54:	02812423          	sw	s0,40(sp)
    1c58:	02912223          	sw	s1,36(sp)
    1c5c:	03212023          	sw	s2,32(sp)
    1c60:	01312e23          	sw	s3,28(sp)
    1c64:	01412c23          	sw	s4,24(sp)
    1c68:	01512a23          	sw	s5,20(sp)
    1c6c:	01612823          	sw	s6,16(sp)
    1c70:	02112623          	sw	ra,44(sp)
    1c74:	00050413          	mv	s0,a0
    1c78:	02b12a23          	sw	a1,52(sp)
    1c7c:	02c12c23          	sw	a2,56(sp)
    1c80:	02d12e23          	sw	a3,60(sp)
    1c84:	04e12023          	sw	a4,64(sp)
    1c88:	05012423          	sw	a6,72(sp)
    1c8c:	05112623          	sw	a7,76(sp)
    1c90:	00f12623          	sw	a5,12(sp)
    1c94:	02500913          	li	s2,37
    1c98:	000054b7          	lui	s1,0x5
    1c9c:	07300993          	li	s3,115
    1ca0:	07800a13          	li	s4,120
    1ca4:	06400a93          	li	s5,100
    1ca8:	06300b13          	li	s6,99
    1cac:	00044503          	lbu	a0,0(s0)
    1cb0:	02051663          	bnez	a0,1cdc <printf+0x94>
    1cb4:	02c12083          	lw	ra,44(sp)
    1cb8:	02812403          	lw	s0,40(sp)
    1cbc:	02412483          	lw	s1,36(sp)
    1cc0:	02012903          	lw	s2,32(sp)
    1cc4:	01c12983          	lw	s3,28(sp)
    1cc8:	01812a03          	lw	s4,24(sp)
    1ccc:	01412a83          	lw	s5,20(sp)
    1cd0:	01012b03          	lw	s6,16(sp)
    1cd4:	05010113          	addi	sp,sp,80
    1cd8:	00008067          	ret
    1cdc:	09251863          	bne	a0,s2,1d6c <printf+0x124>
    1ce0:	00144503          	lbu	a0,1(s0)
    1ce4:	03351463          	bne	a0,s3,1d0c <printf+0xc4>
    1ce8:	00c12783          	lw	a5,12(sp)
    1cec:	0007a503          	lw	a0,0(a5)
    1cf0:	00478713          	addi	a4,a5,4
    1cf4:	00e12623          	sw	a4,12(sp)
    1cf8:	00000097          	auipc	ra,0x0
    1cfc:	de8080e7          	jalr	-536(ra) # 1ae0 <print_string>
    1d00:	00140413          	addi	s0,s0,1
    1d04:	00140413          	addi	s0,s0,1
    1d08:	fa5ff06f          	j	1cac <printf+0x64>
    1d0c:	03451063          	bne	a0,s4,1d2c <printf+0xe4>
    1d10:	00c12783          	lw	a5,12(sp)
    1d14:	0007a503          	lw	a0,0(a5)
    1d18:	00478713          	addi	a4,a5,4
    1d1c:	00e12623          	sw	a4,12(sp)
    1d20:	00000097          	auipc	ra,0x0
    1d24:	f1c080e7          	jalr	-228(ra) # 1c3c <print_hex>
    1d28:	fd9ff06f          	j	1d00 <printf+0xb8>
    1d2c:	03551063          	bne	a0,s5,1d4c <printf+0x104>
    1d30:	00c12783          	lw	a5,12(sp)
    1d34:	0007a503          	lw	a0,0(a5)
    1d38:	00478713          	addi	a4,a5,4
    1d3c:	00e12623          	sw	a4,12(sp)
    1d40:	00000097          	auipc	ra,0x0
    1d44:	de4080e7          	jalr	-540(ra) # 1b24 <print_dec>
    1d48:	fb9ff06f          	j	1d00 <printf+0xb8>
    1d4c:	5f44a783          	lw	a5,1524(s1) # 55f4 <f_putchar>
    1d50:	01651a63          	bne	a0,s6,1d64 <printf+0x11c>
    1d54:	00c12703          	lw	a4,12(sp)
    1d58:	00072503          	lw	a0,0(a4)
    1d5c:	00470693          	addi	a3,a4,4
    1d60:	00d12623          	sw	a3,12(sp)
    1d64:	000780e7          	jalr	a5
    1d68:	f99ff06f          	j	1d00 <printf+0xb8>
    1d6c:	5f44a783          	lw	a5,1524(s1)
    1d70:	000780e7          	jalr	a5
    1d74:	f91ff06f          	j	1d04 <printf+0xbc>

00001d78 <__mulsi3>:
    1d78:	00050793          	mv	a5,a0
    1d7c:	00000513          	li	a0,0
    1d80:	00079463          	bnez	a5,1d88 <__mulsi3+0x10>
    1d84:	00008067          	ret
    1d88:	0017f713          	andi	a4,a5,1
    1d8c:	00070463          	beqz	a4,1d94 <__mulsi3+0x1c>
    1d90:	00b50533          	add	a0,a0,a1
    1d94:	0017d793          	srli	a5,a5,0x1
    1d98:	00159593          	slli	a1,a1,0x1
    1d9c:	fe5ff06f          	j	1d80 <__mulsi3+0x8>

00001da0 <fat_list_insert_last>:
    1da0:	00452783          	lw	a5,4(a0)
    1da4:	04079263          	bnez	a5,1de8 <fat_list_insert_last+0x48>
    1da8:	00052783          	lw	a5,0(a0)
    1dac:	00079c63          	bnez	a5,1dc4 <fat_list_insert_last+0x24>
    1db0:	00b52023          	sw	a1,0(a0)
    1db4:	00b52223          	sw	a1,4(a0)
    1db8:	0005a023          	sw	zero,0(a1)
    1dbc:	0005a223          	sw	zero,4(a1)
    1dc0:	00008067          	ret
    1dc4:	0007a703          	lw	a4,0(a5)
    1dc8:	00f5a223          	sw	a5,4(a1)
    1dcc:	00e5a023          	sw	a4,0(a1)
    1dd0:	00071863          	bnez	a4,1de0 <fat_list_insert_last+0x40>
    1dd4:	00b52023          	sw	a1,0(a0)
    1dd8:	00b7a023          	sw	a1,0(a5)
    1ddc:	00008067          	ret
    1de0:	00b72223          	sw	a1,4(a4)
    1de4:	ff5ff06f          	j	1dd8 <fat_list_insert_last+0x38>
    1de8:	0047a703          	lw	a4,4(a5)
    1dec:	00f5a023          	sw	a5,0(a1)
    1df0:	00e5a223          	sw	a4,4(a1)
    1df4:	00071863          	bnez	a4,1e04 <fat_list_insert_last+0x64>
    1df8:	00b52223          	sw	a1,4(a0)
    1dfc:	00b7a223          	sw	a1,4(a5)
    1e00:	00008067          	ret
    1e04:	00b72023          	sw	a1,0(a4)
    1e08:	ff5ff06f          	j	1dfc <fat_list_insert_last+0x5c>

00001e0c <FileString_StrCmpNoCase>:
    1e0c:	00050313          	mv	t1,a0
    1e10:	00000793          	li	a5,0
    1e14:	01900e13          	li	t3,25
    1e18:	00c79663          	bne	a5,a2,1e24 <FileString_StrCmpNoCase+0x18>
    1e1c:	00000513          	li	a0,0
    1e20:	00008067          	ret
    1e24:	00f30733          	add	a4,t1,a5
    1e28:	00074883          	lbu	a7,0(a4)
    1e2c:	00f58733          	add	a4,a1,a5
    1e30:	00074803          	lbu	a6,0(a4)
    1e34:	fbf88713          	addi	a4,a7,-65
    1e38:	0ff77713          	zext.b	a4,a4
    1e3c:	00088693          	mv	a3,a7
    1e40:	00ee6663          	bltu	t3,a4,1e4c <FileString_StrCmpNoCase+0x40>
    1e44:	02088693          	addi	a3,a7,32
    1e48:	0ff6f693          	zext.b	a3,a3
    1e4c:	fbf80513          	addi	a0,a6,-65
    1e50:	0ff57513          	zext.b	a0,a0
    1e54:	00080713          	mv	a4,a6
    1e58:	00ae6663          	bltu	t3,a0,1e64 <FileString_StrCmpNoCase+0x58>
    1e5c:	02080713          	addi	a4,a6,32
    1e60:	0ff77713          	zext.b	a4,a4
    1e64:	40e68533          	sub	a0,a3,a4
    1e68:	00e69863          	bne	a3,a4,1e78 <FileString_StrCmpNoCase+0x6c>
    1e6c:	00088663          	beqz	a7,1e78 <FileString_StrCmpNoCase+0x6c>
    1e70:	00178793          	addi	a5,a5,1
    1e74:	fa0812e3          	bnez	a6,1e18 <FileString_StrCmpNoCase+0xc>
    1e78:	00008067          	ret

00001e7c <FileString_GetExtension>:
    1e7c:	00050713          	mv	a4,a0
    1e80:	00050793          	mv	a5,a0
    1e84:	02e00613          	li	a2,46
    1e88:	fff00513          	li	a0,-1
    1e8c:	0007c683          	lbu	a3,0(a5)
    1e90:	00069463          	bnez	a3,1e98 <FileString_GetExtension+0x1c>
    1e94:	00008067          	ret
    1e98:	00c69463          	bne	a3,a2,1ea0 <FileString_GetExtension+0x24>
    1e9c:	40e78533          	sub	a0,a5,a4
    1ea0:	00178793          	addi	a5,a5,1
    1ea4:	fe9ff06f          	j	1e8c <FileString_GetExtension+0x10>

00001ea8 <fatfs_fat_writeback>:
    1ea8:	00059663          	bnez	a1,1eb4 <fatfs_fat_writeback+0xc>
    1eac:	00000513          	li	a0,0
    1eb0:	00008067          	ret
    1eb4:	2045a703          	lw	a4,516(a1)
    1eb8:	ff010113          	addi	sp,sp,-16
    1ebc:	00812423          	sw	s0,8(sp)
    1ec0:	00112623          	sw	ra,12(sp)
    1ec4:	00058413          	mv	s0,a1
    1ec8:	00070a63          	beqz	a4,1edc <fatfs_fat_writeback+0x34>
    1ecc:	03852683          	lw	a3,56(a0)
    1ed0:	00050793          	mv	a5,a0
    1ed4:	00069863          	bnez	a3,1ee4 <fatfs_fat_writeback+0x3c>
    1ed8:	20042223          	sw	zero,516(s0)
    1edc:	00100513          	li	a0,1
    1ee0:	0380006f          	j	1f18 <fatfs_fat_writeback+0x70>
    1ee4:	2005a503          	lw	a0,512(a1)
    1ee8:	0147a703          	lw	a4,20(a5)
    1eec:	0207a583          	lw	a1,32(a5)
    1ef0:	00100613          	li	a2,1
    1ef4:	40e507b3          	sub	a5,a0,a4
    1ef8:	00178793          	addi	a5,a5,1
    1efc:	00f5f663          	bgeu	a1,a5,1f08 <fatfs_fat_writeback+0x60>
    1f00:	00b70733          	add	a4,a4,a1
    1f04:	40a70633          	sub	a2,a4,a0
    1f08:	00040593          	mv	a1,s0
    1f0c:	000680e7          	jalr	a3
    1f10:	fc0514e3          	bnez	a0,1ed8 <fatfs_fat_writeback+0x30>
    1f14:	00000513          	li	a0,0
    1f18:	00c12083          	lw	ra,12(sp)
    1f1c:	00812403          	lw	s0,8(sp)
    1f20:	01010113          	addi	sp,sp,16
    1f24:	00008067          	ret

00001f28 <fatfs_fat_read_sector>:
    1f28:	fe010113          	addi	sp,sp,-32
    1f2c:	01212823          	sw	s2,16(sp)
    1f30:	25452903          	lw	s2,596(a0)
    1f34:	00812c23          	sw	s0,24(sp)
    1f38:	00912a23          	sw	s1,20(sp)
    1f3c:	01312623          	sw	s3,12(sp)
    1f40:	00112e23          	sw	ra,28(sp)
    1f44:	00050993          	mv	s3,a0
    1f48:	00058493          	mv	s1,a1
    1f4c:	00000413          	li	s0,0
    1f50:	04091063          	bnez	s2,1f90 <fatfs_fat_read_sector+0x68>
    1f54:	2549a783          	lw	a5,596(s3)
    1f58:	20f42623          	sw	a5,524(s0)
    1f5c:	20442783          	lw	a5,516(s0)
    1f60:	2489aa23          	sw	s0,596(s3)
    1f64:	08079863          	bnez	a5,1ff4 <fatfs_fat_read_sector+0xcc>
    1f68:	0349a783          	lw	a5,52(s3)
    1f6c:	20942023          	sw	s1,512(s0)
    1f70:	00100613          	li	a2,1
    1f74:	00040593          	mv	a1,s0
    1f78:	00048513          	mv	a0,s1
    1f7c:	000780e7          	jalr	a5
    1f80:	08051663          	bnez	a0,200c <fatfs_fat_read_sector+0xe4>
    1f84:	fff00793          	li	a5,-1
    1f88:	20f42023          	sw	a5,512(s0)
    1f8c:	0480006f          	j	1fd4 <fatfs_fat_read_sector+0xac>
    1f90:	20092783          	lw	a5,512(s2)
    1f94:	00f4e663          	bltu	s1,a5,1fa0 <fatfs_fat_read_sector+0x78>
    1f98:	00178713          	addi	a4,a5,1
    1f9c:	02e4e463          	bltu	s1,a4,1fc4 <fatfs_fat_read_sector+0x9c>
    1fa0:	20c92783          	lw	a5,524(s2)
    1fa4:	00079663          	bnez	a5,1fb0 <fatfs_fat_read_sector+0x88>
    1fa8:	00040a63          	beqz	s0,1fbc <fatfs_fat_read_sector+0x94>
    1fac:	20042623          	sw	zero,524(s0)
    1fb0:	00090413          	mv	s0,s2
    1fb4:	20c92903          	lw	s2,524(s2)
    1fb8:	f99ff06f          	j	1f50 <fatfs_fat_read_sector+0x28>
    1fbc:	2409aa23          	sw	zero,596(s3)
    1fc0:	ff1ff06f          	j	1fb0 <fatfs_fat_read_sector+0x88>
    1fc4:	40f484b3          	sub	s1,s1,a5
    1fc8:	00949493          	slli	s1,s1,0x9
    1fcc:	009904b3          	add	s1,s2,s1
    1fd0:	20992423          	sw	s1,520(s2)
    1fd4:	01c12083          	lw	ra,28(sp)
    1fd8:	01812403          	lw	s0,24(sp)
    1fdc:	01412483          	lw	s1,20(sp)
    1fe0:	00c12983          	lw	s3,12(sp)
    1fe4:	00090513          	mv	a0,s2
    1fe8:	01012903          	lw	s2,16(sp)
    1fec:	02010113          	addi	sp,sp,32
    1ff0:	00008067          	ret
    1ff4:	00040593          	mv	a1,s0
    1ff8:	00098513          	mv	a0,s3
    1ffc:	00000097          	auipc	ra,0x0
    2000:	eac080e7          	jalr	-340(ra) # 1ea8 <fatfs_fat_writeback>
    2004:	f60512e3          	bnez	a0,1f68 <fatfs_fat_read_sector+0x40>
    2008:	fcdff06f          	j	1fd4 <fatfs_fat_read_sector+0xac>
    200c:	20842423          	sw	s0,520(s0)
    2010:	00040913          	mv	s2,s0
    2014:	fc1ff06f          	j	1fd4 <fatfs_fat_read_sector+0xac>

00002018 <_allocate_file>:
    2018:	ff010113          	addi	sp,sp,-16
    201c:	000057b7          	lui	a5,0x5
    2020:	00812423          	sw	s0,8(sp)
    2024:	5f87a403          	lw	s0,1528(a5) # 55f8 <_free_file_list>
    2028:	00112623          	sw	ra,12(sp)
    202c:	02040e63          	beqz	s0,2068 <_allocate_file+0x50>
    2030:	00042703          	lw	a4,0(s0)
    2034:	00442683          	lw	a3,4(s0)
    2038:	5f878793          	addi	a5,a5,1528
    203c:	04071063          	bnez	a4,207c <_allocate_file+0x64>
    2040:	00d7a023          	sw	a3,0(a5)
    2044:	00442683          	lw	a3,4(s0)
    2048:	02069e63          	bnez	a3,2084 <_allocate_file+0x6c>
    204c:	00e7a223          	sw	a4,4(a5)
    2050:	00005537          	lui	a0,0x5
    2054:	00040593          	mv	a1,s0
    2058:	60050513          	addi	a0,a0,1536 # 5600 <_open_file_list>
    205c:	00000097          	auipc	ra,0x0
    2060:	d44080e7          	jalr	-700(ra) # 1da0 <fat_list_insert_last>
    2064:	bc440413          	addi	s0,s0,-1084
    2068:	00c12083          	lw	ra,12(sp)
    206c:	00040513          	mv	a0,s0
    2070:	00812403          	lw	s0,8(sp)
    2074:	01010113          	addi	sp,sp,16
    2078:	00008067          	ret
    207c:	00d72223          	sw	a3,4(a4)
    2080:	fc5ff06f          	j	2044 <_allocate_file+0x2c>
    2084:	00e6a023          	sw	a4,0(a3)
    2088:	fc9ff06f          	j	2050 <_allocate_file+0x38>

0000208c <_free_file>:
    208c:	43c52783          	lw	a5,1084(a0)
    2090:	44052703          	lw	a4,1088(a0)
    2094:	43c50593          	addi	a1,a0,1084
    2098:	02079663          	bnez	a5,20c4 <_free_file+0x38>
    209c:	000056b7          	lui	a3,0x5
    20a0:	60e6a023          	sw	a4,1536(a3) # 5600 <_open_file_list>
    20a4:	44052703          	lw	a4,1088(a0)
    20a8:	02071263          	bnez	a4,20cc <_free_file+0x40>
    20ac:	00005737          	lui	a4,0x5
    20b0:	60f72223          	sw	a5,1540(a4) # 5604 <_open_file_list+0x4>
    20b4:	00005537          	lui	a0,0x5
    20b8:	5f850513          	addi	a0,a0,1528 # 55f8 <_free_file_list>
    20bc:	00000317          	auipc	t1,0x0
    20c0:	ce430067          	jr	-796(t1) # 1da0 <fat_list_insert_last>
    20c4:	00e7a223          	sw	a4,4(a5)
    20c8:	fddff06f          	j	20a4 <_free_file+0x18>
    20cc:	00f72023          	sw	a5,0(a4)
    20d0:	fe5ff06f          	j	20b4 <_free_file+0x28>

000020d4 <fatfs_lba_of_cluster>:
    20d4:	ff010113          	addi	sp,sp,-16
    20d8:	00812423          	sw	s0,8(sp)
    20dc:	00112623          	sw	ra,12(sp)
    20e0:	00050413          	mv	s0,a0
    20e4:	00058513          	mv	a0,a1
    20e8:	00044583          	lbu	a1,0(s0)
    20ec:	ffe50513          	addi	a0,a0,-2
    20f0:	00000097          	auipc	ra,0x0
    20f4:	c88080e7          	jalr	-888(ra) # 1d78 <__mulsi3>
    20f8:	00442783          	lw	a5,4(s0)
    20fc:	00f50533          	add	a0,a0,a5
    2100:	03042783          	lw	a5,48(s0)
    2104:	00079863          	bnez	a5,2114 <fatfs_lba_of_cluster+0x40>
    2108:	02845783          	lhu	a5,40(s0)
    210c:	4047d793          	srai	a5,a5,0x4
    2110:	00f50533          	add	a0,a0,a5
    2114:	00c12083          	lw	ra,12(sp)
    2118:	00812403          	lw	s0,8(sp)
    211c:	01010113          	addi	sp,sp,16
    2120:	00008067          	ret

00002124 <fatfs_sector_read>:
    2124:	03452783          	lw	a5,52(a0)
    2128:	00058713          	mv	a4,a1
    212c:	00070513          	mv	a0,a4
    2130:	00060593          	mv	a1,a2
    2134:	00068613          	mv	a2,a3
    2138:	00078067          	jr	a5

0000213c <fatfs_sector_write>:
    213c:	03852783          	lw	a5,56(a0)
    2140:	00058713          	mv	a4,a1
    2144:	00070513          	mv	a0,a4
    2148:	00060593          	mv	a1,a2
    214c:	00068613          	mv	a2,a3
    2150:	00078067          	jr	a5

00002154 <fatfs_write_sector>:
    2154:	03852783          	lw	a5,56(a0)
    2158:	0a078863          	beqz	a5,2208 <fatfs_write_sector+0xb4>
    215c:	fe010113          	addi	sp,sp,-32
    2160:	01212823          	sw	s2,16(sp)
    2164:	00068913          	mv	s2,a3
    2168:	03052683          	lw	a3,48(a0)
    216c:	00812c23          	sw	s0,24(sp)
    2170:	00912a23          	sw	s1,20(sp)
    2174:	00112e23          	sw	ra,28(sp)
    2178:	00d5e733          	or	a4,a1,a3
    217c:	00050413          	mv	s0,a0
    2180:	00060493          	mv	s1,a2
    2184:	04071063          	bnez	a4,21c4 <fatfs_write_sector+0x70>
    2188:	01052703          	lw	a4,16(a0)
    218c:	06e67063          	bgeu	a2,a4,21ec <fatfs_write_sector+0x98>
    2190:	01c52503          	lw	a0,28(a0)
    2194:	00c42703          	lw	a4,12(s0)
    2198:	00e50533          	add	a0,a0,a4
    219c:	00c50533          	add	a0,a0,a2
    21a0:	02090e63          	beqz	s2,21dc <fatfs_write_sector+0x88>
    21a4:	00100613          	li	a2,1
    21a8:	00090593          	mv	a1,s2
    21ac:	01812403          	lw	s0,24(sp)
    21b0:	01c12083          	lw	ra,28(sp)
    21b4:	01412483          	lw	s1,20(sp)
    21b8:	01012903          	lw	s2,16(sp)
    21bc:	02010113          	addi	sp,sp,32
    21c0:	00078067          	jr	a5
    21c4:	00f12623          	sw	a5,12(sp)
    21c8:	00000097          	auipc	ra,0x0
    21cc:	f0c080e7          	jalr	-244(ra) # 20d4 <fatfs_lba_of_cluster>
    21d0:	00c12783          	lw	a5,12(sp)
    21d4:	00a48533          	add	a0,s1,a0
    21d8:	fc9ff06f          	j	21a0 <fatfs_write_sector+0x4c>
    21dc:	24a42223          	sw	a0,580(s0)
    21e0:	00100613          	li	a2,1
    21e4:	04440593          	addi	a1,s0,68
    21e8:	fc5ff06f          	j	21ac <fatfs_write_sector+0x58>
    21ec:	01c12083          	lw	ra,28(sp)
    21f0:	01812403          	lw	s0,24(sp)
    21f4:	01412483          	lw	s1,20(sp)
    21f8:	01012903          	lw	s2,16(sp)
    21fc:	00000513          	li	a0,0
    2200:	02010113          	addi	sp,sp,32
    2204:	00008067          	ret
    2208:	00000513          	li	a0,0
    220c:	00008067          	ret

00002210 <fl_init>:
    2210:	ff010113          	addi	sp,sp,-16
    2214:	00812423          	sw	s0,8(sp)
    2218:	00005437          	lui	s0,0x5
    221c:	00112623          	sw	ra,12(sp)
    2220:	5f840793          	addi	a5,s0,1528 # 55f8 <_free_file_list>
    2224:	0007a223          	sw	zero,4(a5)
    2228:	0007a023          	sw	zero,0(a5)
    222c:	000065b7          	lui	a1,0x6
    2230:	000057b7          	lui	a5,0x5
    2234:	60078793          	addi	a5,a5,1536 # 5600 <_open_file_list>
    2238:	5f840513          	addi	a0,s0,1528
    223c:	6b458593          	addi	a1,a1,1716 # 66b4 <_files+0x43c>
    2240:	0007a223          	sw	zero,4(a5)
    2244:	0007a023          	sw	zero,0(a5)
    2248:	00000097          	auipc	ra,0x0
    224c:	b58080e7          	jalr	-1192(ra) # 1da0 <fat_list_insert_last>
    2250:	000075b7          	lui	a1,0x7
    2254:	5f840513          	addi	a0,s0,1528
    2258:	af858593          	addi	a1,a1,-1288 # 6af8 <_files+0x880>
    225c:	00000097          	auipc	ra,0x0
    2260:	b44080e7          	jalr	-1212(ra) # 1da0 <fat_list_insert_last>
    2264:	00c12083          	lw	ra,12(sp)
    2268:	00812403          	lw	s0,8(sp)
    226c:	000057b7          	lui	a5,0x5
    2270:	00100713          	li	a4,1
    2274:	60e7a623          	sw	a4,1548(a5) # 560c <_filelib_init>
    2278:	01010113          	addi	sp,sp,16
    227c:	00008067          	ret

00002280 <fl_fseek>:
    2280:	000057b7          	lui	a5,0x5
    2284:	60c7a783          	lw	a5,1548(a5) # 560c <_filelib_init>
    2288:	fd010113          	addi	sp,sp,-48
    228c:	02812423          	sw	s0,40(sp)
    2290:	02912223          	sw	s1,36(sp)
    2294:	03212023          	sw	s2,32(sp)
    2298:	02112623          	sw	ra,44(sp)
    229c:	01312e23          	sw	s3,28(sp)
    22a0:	00050413          	mv	s0,a0
    22a4:	00058493          	mv	s1,a1
    22a8:	00060913          	mv	s2,a2
    22ac:	00079663          	bnez	a5,22b8 <fl_fseek+0x38>
    22b0:	00000097          	auipc	ra,0x0
    22b4:	f60080e7          	jalr	-160(ra) # 2210 <fl_init>
    22b8:	fff00513          	li	a0,-1
    22bc:	08040463          	beqz	s0,2344 <fl_fseek+0xc4>
    22c0:	00200793          	li	a5,2
    22c4:	00f91463          	bne	s2,a5,22cc <fl_fseek+0x4c>
    22c8:	06049e63          	bnez	s1,2344 <fl_fseek+0xc4>
    22cc:	000067b7          	lui	a5,0x6
    22d0:	e1078713          	addi	a4,a5,-496 # 5e10 <_fs>
    22d4:	03c72703          	lw	a4,60(a4)
    22d8:	e1078993          	addi	s3,a5,-496
    22dc:	00070463          	beqz	a4,22e4 <fl_fseek+0x64>
    22e0:	000700e7          	jalr	a4
    22e4:	fff00793          	li	a5,-1
    22e8:	42f42823          	sw	a5,1072(s0)
    22ec:	42042a23          	sw	zero,1076(s0)
    22f0:	00091c63          	bnez	s2,2308 <fl_fseek+0x88>
    22f4:	00c42783          	lw	a5,12(s0)
    22f8:	00942423          	sw	s1,8(s0)
    22fc:	0297f863          	bgeu	a5,s1,232c <fl_fseek+0xac>
    2300:	00f42423          	sw	a5,8(s0)
    2304:	0280006f          	j	232c <fl_fseek+0xac>
    2308:	00100793          	li	a5,1
    230c:	06f91063          	bne	s2,a5,236c <fl_fseek+0xec>
    2310:	00842783          	lw	a5,8(s0)
    2314:	0004c663          	bltz	s1,2320 <fl_fseek+0xa0>
    2318:	00f484b3          	add	s1,s1,a5
    231c:	fd9ff06f          	j	22f4 <fl_fseek+0x74>
    2320:	40900733          	neg	a4,s1
    2324:	02e7fe63          	bgeu	a5,a4,2360 <fl_fseek+0xe0>
    2328:	00042423          	sw	zero,8(s0)
    232c:	00000513          	li	a0,0
    2330:	0409a783          	lw	a5,64(s3)
    2334:	00078863          	beqz	a5,2344 <fl_fseek+0xc4>
    2338:	00a12623          	sw	a0,12(sp)
    233c:	000780e7          	jalr	a5
    2340:	00c12503          	lw	a0,12(sp)
    2344:	02c12083          	lw	ra,44(sp)
    2348:	02812403          	lw	s0,40(sp)
    234c:	02412483          	lw	s1,36(sp)
    2350:	02012903          	lw	s2,32(sp)
    2354:	01c12983          	lw	s3,28(sp)
    2358:	03010113          	addi	sp,sp,48
    235c:	00008067          	ret
    2360:	00f484b3          	add	s1,s1,a5
    2364:	00942423          	sw	s1,8(s0)
    2368:	fc5ff06f          	j	232c <fl_fseek+0xac>
    236c:	00200793          	li	a5,2
    2370:	fff00513          	li	a0,-1
    2374:	faf91ee3          	bne	s2,a5,2330 <fl_fseek+0xb0>
    2378:	00c42783          	lw	a5,12(s0)
    237c:	f85ff06f          	j	2300 <fl_fseek+0x80>

00002380 <fl_fgetpos>:
    2380:	06050663          	beqz	a0,23ec <fl_fgetpos+0x6c>
    2384:	000067b7          	lui	a5,0x6
    2388:	e1078713          	addi	a4,a5,-496 # 5e10 <_fs>
    238c:	03c72703          	lw	a4,60(a4)
    2390:	ff010113          	addi	sp,sp,-16
    2394:	00812423          	sw	s0,8(sp)
    2398:	00912223          	sw	s1,4(sp)
    239c:	01212023          	sw	s2,0(sp)
    23a0:	00112623          	sw	ra,12(sp)
    23a4:	00050493          	mv	s1,a0
    23a8:	00058913          	mv	s2,a1
    23ac:	e1078413          	addi	s0,a5,-496
    23b0:	00070463          	beqz	a4,23b8 <fl_fgetpos+0x38>
    23b4:	000700e7          	jalr	a4
    23b8:	0084a783          	lw	a5,8(s1)
    23bc:	00f92023          	sw	a5,0(s2)
    23c0:	04042783          	lw	a5,64(s0)
    23c4:	02079063          	bnez	a5,23e4 <fl_fgetpos+0x64>
    23c8:	00c12083          	lw	ra,12(sp)
    23cc:	00812403          	lw	s0,8(sp)
    23d0:	00412483          	lw	s1,4(sp)
    23d4:	00012903          	lw	s2,0(sp)
    23d8:	00000513          	li	a0,0
    23dc:	01010113          	addi	sp,sp,16
    23e0:	00008067          	ret
    23e4:	000780e7          	jalr	a5
    23e8:	fe1ff06f          	j	23c8 <fl_fgetpos+0x48>
    23ec:	fff00513          	li	a0,-1
    23f0:	00008067          	ret

000023f4 <fl_ftell>:
    23f4:	fe010113          	addi	sp,sp,-32
    23f8:	00c10593          	addi	a1,sp,12
    23fc:	00112e23          	sw	ra,28(sp)
    2400:	00012623          	sw	zero,12(sp)
    2404:	00000097          	auipc	ra,0x0
    2408:	f7c080e7          	jalr	-132(ra) # 2380 <fl_fgetpos>
    240c:	01c12083          	lw	ra,28(sp)
    2410:	00c12503          	lw	a0,12(sp)
    2414:	02010113          	addi	sp,sp,32
    2418:	00008067          	ret

0000241c <fl_closedir>:
    241c:	00000513          	li	a0,0
    2420:	00008067          	ret

00002424 <fatfs_lfn_cache_entry>:
    2424:	0005c783          	lbu	a5,0(a1)
    2428:	01300693          	li	a3,19
    242c:	01f7f793          	andi	a5,a5,31
    2430:	fff78713          	addi	a4,a5,-1
    2434:	0ff77613          	zext.b	a2,a4
    2438:	0ac6ea63          	bltu	a3,a2,24ec <fatfs_lfn_cache_entry+0xc8>
    243c:	10554683          	lbu	a3,261(a0)
    2440:	00069463          	bnez	a3,2448 <fatfs_lfn_cache_entry+0x24>
    2444:	10f502a3          	sb	a5,261(a0)
    2448:	00171793          	slli	a5,a4,0x1
    244c:	00e787b3          	add	a5,a5,a4
    2450:	0015c683          	lbu	a3,1(a1)
    2454:	00279793          	slli	a5,a5,0x2
    2458:	00e787b3          	add	a5,a5,a4
    245c:	00f50533          	add	a0,a0,a5
    2460:	00d50023          	sb	a3,0(a0)
    2464:	0035c783          	lbu	a5,3(a1)
    2468:	0ff00713          	li	a4,255
    246c:	02000693          	li	a3,32
    2470:	00f500a3          	sb	a5,1(a0)
    2474:	0055c783          	lbu	a5,5(a1)
    2478:	00f50123          	sb	a5,2(a0)
    247c:	0075c783          	lbu	a5,7(a1)
    2480:	00f501a3          	sb	a5,3(a0)
    2484:	0095c783          	lbu	a5,9(a1)
    2488:	00f50223          	sb	a5,4(a0)
    248c:	00e5c783          	lbu	a5,14(a1)
    2490:	00f502a3          	sb	a5,5(a0)
    2494:	0105c783          	lbu	a5,16(a1)
    2498:	00f50323          	sb	a5,6(a0)
    249c:	0125c783          	lbu	a5,18(a1)
    24a0:	00f503a3          	sb	a5,7(a0)
    24a4:	0145c783          	lbu	a5,20(a1)
    24a8:	00f50423          	sb	a5,8(a0)
    24ac:	0165c783          	lbu	a5,22(a1)
    24b0:	00f504a3          	sb	a5,9(a0)
    24b4:	0185c783          	lbu	a5,24(a1)
    24b8:	00f50523          	sb	a5,10(a0)
    24bc:	01c5c783          	lbu	a5,28(a1)
    24c0:	00f505a3          	sb	a5,11(a0)
    24c4:	01e5c783          	lbu	a5,30(a1)
    24c8:	00f50623          	sb	a5,12(a0)
    24cc:	00d00793          	li	a5,13
    24d0:	00054603          	lbu	a2,0(a0)
    24d4:	00e61463          	bne	a2,a4,24dc <fatfs_lfn_cache_entry+0xb8>
    24d8:	00d50023          	sb	a3,0(a0)
    24dc:	fff78793          	addi	a5,a5,-1
    24e0:	0ff7f793          	zext.b	a5,a5
    24e4:	00150513          	addi	a0,a0,1
    24e8:	fe0794e3          	bnez	a5,24d0 <fatfs_lfn_cache_entry+0xac>
    24ec:	00008067          	ret

000024f0 <fatfs_lfn_cache_get>:
    24f0:	10554703          	lbu	a4,261(a0)
    24f4:	01400793          	li	a5,20
    24f8:	00f71663          	bne	a4,a5,2504 <fatfs_lfn_cache_get+0x14>
    24fc:	10050223          	sb	zero,260(a0)
    2500:	00008067          	ret
    2504:	02070063          	beqz	a4,2524 <fatfs_lfn_cache_get+0x34>
    2508:	00171793          	slli	a5,a4,0x1
    250c:	00e787b3          	add	a5,a5,a4
    2510:	00279793          	slli	a5,a5,0x2
    2514:	00e787b3          	add	a5,a5,a4
    2518:	00f507b3          	add	a5,a0,a5
    251c:	00078023          	sb	zero,0(a5)
    2520:	00008067          	ret
    2524:	00050023          	sb	zero,0(a0)
    2528:	00008067          	ret

0000252c <fatfs_entry_lfn_text>:
    252c:	00b54503          	lbu	a0,11(a0)
    2530:	00f57513          	andi	a0,a0,15
    2534:	ff150513          	addi	a0,a0,-15
    2538:	00153513          	seqz	a0,a0
    253c:	00008067          	ret

00002540 <fatfs_entry_lfn_invalid>:
    2540:	00054703          	lbu	a4,0(a0)
    2544:	00050793          	mv	a5,a0
    2548:	02070463          	beqz	a4,2570 <fatfs_entry_lfn_invalid+0x30>
    254c:	0e500693          	li	a3,229
    2550:	00100513          	li	a0,1
    2554:	02d70063          	beq	a4,a3,2574 <fatfs_entry_lfn_invalid+0x34>
    2558:	00b7c783          	lbu	a5,11(a5)
    255c:	00800713          	li	a4,8
    2560:	00e78a63          	beq	a5,a4,2574 <fatfs_entry_lfn_invalid+0x34>
    2564:	0067f793          	andi	a5,a5,6
    2568:	00f03533          	snez	a0,a5
    256c:	00008067          	ret
    2570:	00100513          	li	a0,1
    2574:	00008067          	ret

00002578 <fatfs_entry_lfn_exists>:
    2578:	00b5c783          	lbu	a5,11(a1)
    257c:	00f00693          	li	a3,15
    2580:	00050713          	mv	a4,a0
    2584:	02d78a63          	beq	a5,a3,25b8 <fatfs_entry_lfn_exists+0x40>
    2588:	0005c683          	lbu	a3,0(a1)
    258c:	00000513          	li	a0,0
    2590:	02068663          	beqz	a3,25bc <fatfs_entry_lfn_exists+0x44>
    2594:	0e500613          	li	a2,229
    2598:	02c68263          	beq	a3,a2,25bc <fatfs_entry_lfn_exists+0x44>
    259c:	00800693          	li	a3,8
    25a0:	00d78e63          	beq	a5,a3,25bc <fatfs_entry_lfn_exists+0x44>
    25a4:	0067f793          	andi	a5,a5,6
    25a8:	00079a63          	bnez	a5,25bc <fatfs_entry_lfn_exists+0x44>
    25ac:	10574503          	lbu	a0,261(a4)
    25b0:	00a03533          	snez	a0,a0
    25b4:	00008067          	ret
    25b8:	00000513          	li	a0,0
    25bc:	00008067          	ret

000025c0 <fatfs_entry_sfn_only>:
    25c0:	00b54783          	lbu	a5,11(a0)
    25c4:	00f00713          	li	a4,15
    25c8:	02e78663          	beq	a5,a4,25f4 <fatfs_entry_sfn_only+0x34>
    25cc:	00054703          	lbu	a4,0(a0)
    25d0:	00000513          	li	a0,0
    25d4:	02070263          	beqz	a4,25f8 <fatfs_entry_sfn_only+0x38>
    25d8:	0e500693          	li	a3,229
    25dc:	00d70e63          	beq	a4,a3,25f8 <fatfs_entry_sfn_only+0x38>
    25e0:	00800713          	li	a4,8
    25e4:	00e78a63          	beq	a5,a4,25f8 <fatfs_entry_sfn_only+0x38>
    25e8:	0067f793          	andi	a5,a5,6
    25ec:	0017b513          	seqz	a0,a5
    25f0:	00008067          	ret
    25f4:	00000513          	li	a0,0
    25f8:	00008067          	ret

000025fc <fatfs_entry_is_dir>:
    25fc:	00b54503          	lbu	a0,11(a0)
    2600:	00455513          	srli	a0,a0,0x4
    2604:	00157513          	andi	a0,a0,1
    2608:	00008067          	ret

0000260c <fatfs_entry_is_file>:
    260c:	00b54503          	lbu	a0,11(a0)
    2610:	00555513          	srli	a0,a0,0x5
    2614:	00157513          	andi	a0,a0,1
    2618:	00008067          	ret

0000261c <fatfs_lfn_entries_required>:
    261c:	ff010113          	addi	sp,sp,-16
    2620:	00112623          	sw	ra,12(sp)
    2624:	fffff097          	auipc	ra,0xfffff
    2628:	050080e7          	jalr	80(ra) # 1674 <strlen>
    262c:	00050a63          	beqz	a0,2640 <fatfs_lfn_entries_required+0x24>
    2630:	00d00593          	li	a1,13
    2634:	00c50513          	addi	a0,a0,12
    2638:	fffff097          	auipc	ra,0xfffff
    263c:	f48080e7          	jalr	-184(ra) # 1580 <__divsi3>
    2640:	00c12083          	lw	ra,12(sp)
    2644:	01010113          	addi	sp,sp,16
    2648:	00008067          	ret

0000264c <fatfs_filename_to_lfn>:
    264c:	fa010113          	addi	sp,sp,-96
    2650:	04912a23          	sw	s1,84(sp)
    2654:	00058493          	mv	s1,a1
    2658:	000055b7          	lui	a1,0x5
    265c:	5ac58593          	addi	a1,a1,1452 # 55ac <font+0x1e0>
    2660:	05212823          	sw	s2,80(sp)
    2664:	05312623          	sw	s3,76(sp)
    2668:	00060913          	mv	s2,a2
    266c:	00050993          	mv	s3,a0
    2670:	03400613          	li	a2,52
    2674:	00c10513          	addi	a0,sp,12
    2678:	04112e23          	sw	ra,92(sp)
    267c:	04812c23          	sw	s0,88(sp)
    2680:	05412423          	sw	s4,72(sp)
    2684:	05512223          	sw	s5,68(sp)
    2688:	05612023          	sw	s6,64(sp)
    268c:	00068b13          	mv	s6,a3
    2690:	fffff097          	auipc	ra,0xfffff
    2694:	fc0080e7          	jalr	-64(ra) # 1650 <memcpy>
    2698:	00098513          	mv	a0,s3
    269c:	fffff097          	auipc	ra,0xfffff
    26a0:	fd8080e7          	jalr	-40(ra) # 1674 <strlen>
    26a4:	00050a93          	mv	s5,a0
    26a8:	00098513          	mv	a0,s3
    26ac:	00000097          	auipc	ra,0x0
    26b0:	f70080e7          	jalr	-144(ra) # 261c <fatfs_lfn_entries_required>
    26b4:	00191793          	slli	a5,s2,0x1
    26b8:	012787b3          	add	a5,a5,s2
    26bc:	00279793          	slli	a5,a5,0x2
    26c0:	00050a13          	mv	s4,a0
    26c4:	02000613          	li	a2,32
    26c8:	00000593          	li	a1,0
    26cc:	00048513          	mv	a0,s1
    26d0:	01278433          	add	s0,a5,s2
    26d4:	fffff097          	auipc	ra,0xfffff
    26d8:	f60080e7          	jalr	-160(ra) # 1634 <memset>
    26dc:	00190793          	addi	a5,s2,1
    26e0:	fffa0a13          	addi	s4,s4,-1
    26e4:	0ff7f793          	zext.b	a5,a5
    26e8:	012a1463          	bne	s4,s2,26f0 <fatfs_filename_to_lfn+0xa4>
    26ec:	0407e793          	ori	a5,a5,64
    26f0:	00f48023          	sb	a5,0(s1)
    26f4:	00f00793          	li	a5,15
    26f8:	00f485a3          	sb	a5,11(s1)
    26fc:	016486a3          	sb	s6,13(s1)
    2700:	00c10713          	addi	a4,sp,12
    2704:	00040793          	mv	a5,s0
    2708:	fff00613          	li	a2,-1
    270c:	00072683          	lw	a3,0(a4)
    2710:	00d486b3          	add	a3,s1,a3
    2714:	0557d463          	bge	a5,s5,275c <fatfs_filename_to_lfn+0x110>
    2718:	00f985b3          	add	a1,s3,a5
    271c:	0005c583          	lbu	a1,0(a1)
    2720:	00b68023          	sb	a1,0(a3)
    2724:	00470713          	addi	a4,a4,4
    2728:	04010693          	addi	a3,sp,64
    272c:	00178793          	addi	a5,a5,1
    2730:	fcd71ee3          	bne	a4,a3,270c <fatfs_filename_to_lfn+0xc0>
    2734:	05c12083          	lw	ra,92(sp)
    2738:	05812403          	lw	s0,88(sp)
    273c:	05412483          	lw	s1,84(sp)
    2740:	05012903          	lw	s2,80(sp)
    2744:	04c12983          	lw	s3,76(sp)
    2748:	04812a03          	lw	s4,72(sp)
    274c:	04412a83          	lw	s5,68(sp)
    2750:	04012b03          	lw	s6,64(sp)
    2754:	06010113          	addi	sp,sp,96
    2758:	00008067          	ret
    275c:	01579663          	bne	a5,s5,2768 <fatfs_filename_to_lfn+0x11c>
    2760:	00068023          	sb	zero,0(a3)
    2764:	fc1ff06f          	j	2724 <fatfs_filename_to_lfn+0xd8>
    2768:	00c68023          	sb	a2,0(a3)
    276c:	00c680a3          	sb	a2,1(a3)
    2770:	fb5ff06f          	j	2724 <fatfs_filename_to_lfn+0xd8>

00002774 <fatfs_sfn_create_entry>:
    2774:	00000793          	li	a5,0
    2778:	00b00813          	li	a6,11
    277c:	00f508b3          	add	a7,a0,a5
    2780:	0008c303          	lbu	t1,0(a7)
    2784:	00f688b3          	add	a7,a3,a5
    2788:	00178793          	addi	a5,a5,1
    278c:	00688023          	sb	t1,0(a7)
    2790:	ff0796e3          	bne	a5,a6,277c <fatfs_sfn_create_entry+0x8>
    2794:	02000793          	li	a5,32
    2798:	00f68823          	sb	a5,16(a3)
    279c:	00f68923          	sb	a5,18(a3)
    27a0:	00f68c23          	sb	a5,24(a3)
    27a4:	000686a3          	sb	zero,13(a3)
    27a8:	00068723          	sb	zero,14(a3)
    27ac:	000687a3          	sb	zero,15(a3)
    27b0:	000688a3          	sb	zero,17(a3)
    27b4:	000689a3          	sb	zero,19(a3)
    27b8:	00068b23          	sb	zero,22(a3)
    27bc:	00068ba3          	sb	zero,23(a3)
    27c0:	00068ca3          	sb	zero,25(a3)
    27c4:	01000793          	li	a5,16
    27c8:	00071463          	bnez	a4,27d0 <fatfs_sfn_create_entry+0x5c>
    27cc:	02000793          	li	a5,32
    27d0:	00f685a3          	sb	a5,11(a3)
    27d4:	01065793          	srli	a5,a2,0x10
    27d8:	00f68a23          	sb	a5,20(a3)
    27dc:	0087d793          	srli	a5,a5,0x8
    27e0:	00f68aa3          	sb	a5,21(a3)
    27e4:	01061793          	slli	a5,a2,0x10
    27e8:	0107d793          	srli	a5,a5,0x10
    27ec:	0087d793          	srli	a5,a5,0x8
    27f0:	00f68da3          	sb	a5,27(a3)
    27f4:	0085d793          	srli	a5,a1,0x8
    27f8:	00b68e23          	sb	a1,28(a3)
    27fc:	00f68ea3          	sb	a5,29(a3)
    2800:	0105d793          	srli	a5,a1,0x10
    2804:	0185d593          	srli	a1,a1,0x18
    2808:	00068623          	sb	zero,12(a3)
    280c:	00c68d23          	sb	a2,26(a3)
    2810:	00f68f23          	sb	a5,30(a3)
    2814:	00b68fa3          	sb	a1,31(a3)
    2818:	00008067          	ret

0000281c <fatfs_lfn_create_sfn>:
    281c:	0005c703          	lbu	a4,0(a1)
    2820:	02e00793          	li	a5,46
    2824:	16f70663          	beq	a4,a5,2990 <fatfs_lfn_create_sfn+0x174>
    2828:	fe010113          	addi	sp,sp,-32
    282c:	00912a23          	sw	s1,20(sp)
    2830:	00050493          	mv	s1,a0
    2834:	00058513          	mv	a0,a1
    2838:	00112e23          	sw	ra,28(sp)
    283c:	00812c23          	sw	s0,24(sp)
    2840:	01212823          	sw	s2,16(sp)
    2844:	00058413          	mv	s0,a1
    2848:	fffff097          	auipc	ra,0xfffff
    284c:	e2c080e7          	jalr	-468(ra) # 1674 <strlen>
    2850:	00b00613          	li	a2,11
    2854:	02000593          	li	a1,32
    2858:	00050913          	mv	s2,a0
    285c:	00048513          	mv	a0,s1
    2860:	fffff097          	auipc	ra,0xfffff
    2864:	dd4080e7          	jalr	-556(ra) # 1634 <memset>
    2868:	00300613          	li	a2,3
    286c:	02000593          	li	a1,32
    2870:	00c10513          	addi	a0,sp,12
    2874:	fffff097          	auipc	ra,0xfffff
    2878:	dc0080e7          	jalr	-576(ra) # 1634 <memset>
    287c:	fff00713          	li	a4,-1
    2880:	00000793          	li	a5,0
    2884:	02e00693          	li	a3,46
    2888:	0d27c263          	blt	a5,s2,294c <fatfs_lfn_create_sfn+0x130>
    288c:	fff00793          	li	a5,-1
    2890:	0ef70863          	beq	a4,a5,2980 <fatfs_lfn_create_sfn+0x164>
    2894:	00170793          	addi	a5,a4,1
    2898:	00c10693          	addi	a3,sp,12
    289c:	00470613          	addi	a2,a4,4
    28a0:	0cf61263          	bne	a2,a5,2964 <fatfs_lfn_create_sfn+0x148>
    28a4:	00000613          	li	a2,0
    28a8:	00000693          	li	a3,0
    28ac:	02000513          	li	a0,32
    28b0:	02e00813          	li	a6,46
    28b4:	01900893          	li	a7,25
    28b8:	00800313          	li	t1,8
    28bc:	02e6dc63          	bge	a3,a4,28f4 <fatfs_lfn_create_sfn+0xd8>
    28c0:	00d407b3          	add	a5,s0,a3
    28c4:	0007c783          	lbu	a5,0(a5)
    28c8:	0ca78063          	beq	a5,a0,2988 <fatfs_lfn_create_sfn+0x16c>
    28cc:	0b078e63          	beq	a5,a6,2988 <fatfs_lfn_create_sfn+0x16c>
    28d0:	f9f78593          	addi	a1,a5,-97
    28d4:	0ff5f593          	zext.b	a1,a1
    28d8:	00c48e33          	add	t3,s1,a2
    28dc:	00160613          	addi	a2,a2,1
    28e0:	00b8e663          	bltu	a7,a1,28ec <fatfs_lfn_create_sfn+0xd0>
    28e4:	fe078793          	addi	a5,a5,-32
    28e8:	0ff7f793          	zext.b	a5,a5
    28ec:	00fe0023          	sb	a5,0(t3)
    28f0:	08661c63          	bne	a2,t1,2988 <fatfs_lfn_create_sfn+0x16c>
    28f4:	00c10793          	addi	a5,sp,12
    28f8:	00800693          	li	a3,8
    28fc:	01900513          	li	a0,25
    2900:	00b00593          	li	a1,11
    2904:	0007c703          	lbu	a4,0(a5)
    2908:	f9f70613          	addi	a2,a4,-97
    290c:	0ff67613          	zext.b	a2,a2
    2910:	00c56663          	bltu	a0,a2,291c <fatfs_lfn_create_sfn+0x100>
    2914:	fe070713          	addi	a4,a4,-32
    2918:	0ff77713          	zext.b	a4,a4
    291c:	00d48633          	add	a2,s1,a3
    2920:	00e60023          	sb	a4,0(a2)
    2924:	00168693          	addi	a3,a3,1
    2928:	00178793          	addi	a5,a5,1
    292c:	fcb69ce3          	bne	a3,a1,2904 <fatfs_lfn_create_sfn+0xe8>
    2930:	01c12083          	lw	ra,28(sp)
    2934:	01812403          	lw	s0,24(sp)
    2938:	01412483          	lw	s1,20(sp)
    293c:	01012903          	lw	s2,16(sp)
    2940:	00100513          	li	a0,1
    2944:	02010113          	addi	sp,sp,32
    2948:	00008067          	ret
    294c:	00f40633          	add	a2,s0,a5
    2950:	00064603          	lbu	a2,0(a2)
    2954:	00d61463          	bne	a2,a3,295c <fatfs_lfn_create_sfn+0x140>
    2958:	00078713          	mv	a4,a5
    295c:	00178793          	addi	a5,a5,1
    2960:	f29ff06f          	j	2888 <fatfs_lfn_create_sfn+0x6c>
    2964:	0127d863          	bge	a5,s2,2974 <fatfs_lfn_create_sfn+0x158>
    2968:	00f405b3          	add	a1,s0,a5
    296c:	0005c583          	lbu	a1,0(a1)
    2970:	00b68023          	sb	a1,0(a3)
    2974:	00178793          	addi	a5,a5,1
    2978:	00168693          	addi	a3,a3,1
    297c:	f25ff06f          	j	28a0 <fatfs_lfn_create_sfn+0x84>
    2980:	00090713          	mv	a4,s2
    2984:	f21ff06f          	j	28a4 <fatfs_lfn_create_sfn+0x88>
    2988:	00168693          	addi	a3,a3,1
    298c:	f31ff06f          	j	28bc <fatfs_lfn_create_sfn+0xa0>
    2990:	00000513          	li	a0,0
    2994:	00008067          	ret

00002998 <fatfs_lfn_generate_tail>:
    2998:	000187b7          	lui	a5,0x18
    299c:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    29a0:	16c7e463          	bltu	a5,a2,2b08 <fatfs_lfn_generate_tail+0x170>
    29a4:	fa010113          	addi	sp,sp,-96
    29a8:	04812c23          	sw	s0,88(sp)
    29ac:	04912a23          	sw	s1,84(sp)
    29b0:	05412423          	sw	s4,72(sp)
    29b4:	00050493          	mv	s1,a0
    29b8:	00058a13          	mv	s4,a1
    29bc:	00060413          	mv	s0,a2
    29c0:	00000593          	li	a1,0
    29c4:	00c00613          	li	a2,12
    29c8:	00410513          	addi	a0,sp,4
    29cc:	04112e23          	sw	ra,92(sp)
    29d0:	05312623          	sw	s3,76(sp)
    29d4:	05512223          	sw	s5,68(sp)
    29d8:	03712e23          	sw	s7,60(sp)
    29dc:	05212823          	sw	s2,80(sp)
    29e0:	05612023          	sw	s6,64(sp)
    29e4:	fffff097          	auipc	ra,0xfffff
    29e8:	c50080e7          	jalr	-944(ra) # 1634 <memset>
    29ec:	000055b7          	lui	a1,0x5
    29f0:	07e00793          	li	a5,126
    29f4:	01100613          	li	a2,17
    29f8:	38458593          	addi	a1,a1,900 # 5384 <LEDS+0x98>
    29fc:	01c10513          	addi	a0,sp,28
    2a00:	01010993          	addi	s3,sp,16
    2a04:	00f10223          	sb	a5,4(sp)
    2a08:	00098a93          	mv	s5,s3
    2a0c:	fffff097          	auipc	ra,0xfffff
    2a10:	c44080e7          	jalr	-956(ra) # 1650 <memcpy>
    2a14:	00900b93          	li	s7,9
    2a18:	00a00593          	li	a1,10
    2a1c:	00040513          	mv	a0,s0
    2a20:	fffff097          	auipc	ra,0xfffff
    2a24:	bb0080e7          	jalr	-1104(ra) # 15d0 <__umodsi3>
    2a28:	03050793          	addi	a5,a0,48
    2a2c:	00278533          	add	a0,a5,sp
    2a30:	fec54783          	lbu	a5,-20(a0)
    2a34:	00098913          	mv	s2,s3
    2a38:	00040513          	mv	a0,s0
    2a3c:	00a00593          	li	a1,10
    2a40:	00f98023          	sb	a5,0(s3)
    2a44:	00040b13          	mv	s6,s0
    2a48:	fffff097          	auipc	ra,0xfffff
    2a4c:	b40080e7          	jalr	-1216(ra) # 1588 <__udivsi3>
    2a50:	00198993          	addi	s3,s3,1
    2a54:	00050413          	mv	s0,a0
    2a58:	fd6be0e3          	bltu	s7,s6,2a18 <fatfs_lfn_generate_tail+0x80>
    2a5c:	00098023          	sb	zero,0(s3)
    2a60:	00410713          	addi	a4,sp,4
    2a64:	00090793          	mv	a5,s2
    2a68:	00170713          	addi	a4,a4,1
    2a6c:	0957f663          	bgeu	a5,s5,2af8 <fatfs_lfn_generate_tail+0x160>
    2a70:	00f10713          	addi	a4,sp,15
    2a74:	00000793          	li	a5,0
    2a78:	00e96663          	bltu	s2,a4,2a84 <fatfs_lfn_generate_tail+0xec>
    2a7c:	41590933          	sub	s2,s2,s5
    2a80:	00190793          	addi	a5,s2,1
    2a84:	03078793          	addi	a5,a5,48
    2a88:	002787b3          	add	a5,a5,sp
    2a8c:	000a0593          	mv	a1,s4
    2a90:	fc078aa3          	sb	zero,-43(a5)
    2a94:	00b00613          	li	a2,11
    2a98:	00048513          	mv	a0,s1
    2a9c:	fffff097          	auipc	ra,0xfffff
    2aa0:	bb4080e7          	jalr	-1100(ra) # 1650 <memcpy>
    2aa4:	00410513          	addi	a0,sp,4
    2aa8:	fffff097          	auipc	ra,0xfffff
    2aac:	bcc080e7          	jalr	-1076(ra) # 1674 <strlen>
    2ab0:	40a484b3          	sub	s1,s1,a0
    2ab4:	00050613          	mv	a2,a0
    2ab8:	00410593          	addi	a1,sp,4
    2abc:	00848513          	addi	a0,s1,8
    2ac0:	fffff097          	auipc	ra,0xfffff
    2ac4:	b90080e7          	jalr	-1136(ra) # 1650 <memcpy>
    2ac8:	05c12083          	lw	ra,92(sp)
    2acc:	05812403          	lw	s0,88(sp)
    2ad0:	05412483          	lw	s1,84(sp)
    2ad4:	05012903          	lw	s2,80(sp)
    2ad8:	04c12983          	lw	s3,76(sp)
    2adc:	04812a03          	lw	s4,72(sp)
    2ae0:	04412a83          	lw	s5,68(sp)
    2ae4:	04012b03          	lw	s6,64(sp)
    2ae8:	03c12b83          	lw	s7,60(sp)
    2aec:	00100513          	li	a0,1
    2af0:	06010113          	addi	sp,sp,96
    2af4:	00008067          	ret
    2af8:	0007c683          	lbu	a3,0(a5)
    2afc:	fff78793          	addi	a5,a5,-1
    2b00:	00d70023          	sb	a3,0(a4)
    2b04:	f65ff06f          	j	2a68 <fatfs_lfn_generate_tail+0xd0>
    2b08:	00000513          	li	a0,0
    2b0c:	00008067          	ret

00002b10 <fatfs_total_path_levels>:
    2b10:	00050793          	mv	a5,a0
    2b14:	06050463          	beqz	a0,2b7c <fatfs_total_path_levels+0x6c>
    2b18:	00054703          	lbu	a4,0(a0)
    2b1c:	02f00693          	li	a3,47
    2b20:	00d71863          	bne	a4,a3,2b30 <fatfs_total_path_levels+0x20>
    2b24:	00150793          	addi	a5,a0,1
    2b28:	00000513          	li	a0,0
    2b2c:	0400006f          	j	2b6c <fatfs_total_path_levels+0x5c>
    2b30:	00154683          	lbu	a3,1(a0)
    2b34:	03a00713          	li	a4,58
    2b38:	00e68a63          	beq	a3,a4,2b4c <fatfs_total_path_levels+0x3c>
    2b3c:	00254683          	lbu	a3,2(a0)
    2b40:	05c00713          	li	a4,92
    2b44:	fff00513          	li	a0,-1
    2b48:	02e69c63          	bne	a3,a4,2b80 <fatfs_total_path_levels+0x70>
    2b4c:	00378793          	addi	a5,a5,3
    2b50:	05c00713          	li	a4,92
    2b54:	fd5ff06f          	j	2b28 <fatfs_total_path_levels+0x18>
    2b58:	00178793          	addi	a5,a5,1
    2b5c:	00e68663          	beq	a3,a4,2b68 <fatfs_total_path_levels+0x58>
    2b60:	0007c683          	lbu	a3,0(a5)
    2b64:	fe069ae3          	bnez	a3,2b58 <fatfs_total_path_levels+0x48>
    2b68:	00150513          	addi	a0,a0,1
    2b6c:	0007c683          	lbu	a3,0(a5)
    2b70:	fe0698e3          	bnez	a3,2b60 <fatfs_total_path_levels+0x50>
    2b74:	fff50513          	addi	a0,a0,-1
    2b78:	00008067          	ret
    2b7c:	fff00513          	li	a0,-1
    2b80:	00008067          	ret

00002b84 <fatfs_get_substring>:
    2b84:	0c050c63          	beqz	a0,2c5c <fatfs_get_substring+0xd8>
    2b88:	fe010113          	addi	sp,sp,-32
    2b8c:	00912a23          	sw	s1,20(sp)
    2b90:	00112e23          	sw	ra,28(sp)
    2b94:	00812c23          	sw	s0,24(sp)
    2b98:	01212823          	sw	s2,16(sp)
    2b9c:	01312623          	sw	s3,12(sp)
    2ba0:	01412423          	sw	s4,8(sp)
    2ba4:	00050793          	mv	a5,a0
    2ba8:	00068493          	mv	s1,a3
    2bac:	fff00513          	li	a0,-1
    2bb0:	06d05a63          	blez	a3,2c24 <fatfs_get_substring+0xa0>
    2bb4:	0007c983          	lbu	s3,0(a5)
    2bb8:	02f00713          	li	a4,47
    2bbc:	00058a13          	mv	s4,a1
    2bc0:	00060913          	mv	s2,a2
    2bc4:	00178413          	addi	s0,a5,1
    2bc8:	02e98463          	beq	s3,a4,2bf0 <fatfs_get_substring+0x6c>
    2bcc:	0017c683          	lbu	a3,1(a5)
    2bd0:	03a00713          	li	a4,58
    2bd4:	00e68a63          	beq	a3,a4,2be8 <fatfs_get_substring+0x64>
    2bd8:	0027c683          	lbu	a3,2(a5)
    2bdc:	05c00713          	li	a4,92
    2be0:	fff00513          	li	a0,-1
    2be4:	04e69063          	bne	a3,a4,2c24 <fatfs_get_substring+0xa0>
    2be8:	00378413          	addi	s0,a5,3
    2bec:	05c00993          	li	s3,92
    2bf0:	00040513          	mv	a0,s0
    2bf4:	fffff097          	auipc	ra,0xfffff
    2bf8:	a80080e7          	jalr	-1408(ra) # 1674 <strlen>
    2bfc:	00000713          	li	a4,0
    2c00:	00000693          	li	a3,0
    2c04:	00000793          	li	a5,0
    2c08:	fff48493          	addi	s1,s1,-1
    2c0c:	00e905b3          	add	a1,s2,a4
    2c10:	02a7ca63          	blt	a5,a0,2c44 <fatfs_get_substring+0xc0>
    2c14:	00058023          	sb	zero,0(a1)
    2c18:	00094503          	lbu	a0,0(s2)
    2c1c:	00153513          	seqz	a0,a0
    2c20:	40a00533          	neg	a0,a0
    2c24:	01c12083          	lw	ra,28(sp)
    2c28:	01812403          	lw	s0,24(sp)
    2c2c:	01412483          	lw	s1,20(sp)
    2c30:	01012903          	lw	s2,16(sp)
    2c34:	00c12983          	lw	s3,12(sp)
    2c38:	00812a03          	lw	s4,8(sp)
    2c3c:	02010113          	addi	sp,sp,32
    2c40:	00008067          	ret
    2c44:	00f40633          	add	a2,s0,a5
    2c48:	00064603          	lbu	a2,0(a2)
    2c4c:	01361c63          	bne	a2,s3,2c64 <fatfs_get_substring+0xe0>
    2c50:	00168693          	addi	a3,a3,1
    2c54:	00178793          	addi	a5,a5,1
    2c58:	fb5ff06f          	j	2c0c <fatfs_get_substring+0x88>
    2c5c:	fff00513          	li	a0,-1
    2c60:	00008067          	ret
    2c64:	ff4698e3          	bne	a3,s4,2c54 <fatfs_get_substring+0xd0>
    2c68:	fe9756e3          	bge	a4,s1,2c54 <fatfs_get_substring+0xd0>
    2c6c:	00170713          	addi	a4,a4,1
    2c70:	00c58023          	sb	a2,0(a1)
    2c74:	fe1ff06f          	j	2c54 <fatfs_get_substring+0xd0>

00002c78 <fatfs_split_path>:
    2c78:	fd010113          	addi	sp,sp,-48
    2c7c:	02912223          	sw	s1,36(sp)
    2c80:	01312e23          	sw	s3,28(sp)
    2c84:	01412c23          	sw	s4,24(sp)
    2c88:	01512a23          	sw	s5,20(sp)
    2c8c:	02112623          	sw	ra,44(sp)
    2c90:	00068a93          	mv	s5,a3
    2c94:	02812423          	sw	s0,40(sp)
    2c98:	03212023          	sw	s2,32(sp)
    2c9c:	00050993          	mv	s3,a0
    2ca0:	00058493          	mv	s1,a1
    2ca4:	00060a13          	mv	s4,a2
    2ca8:	00e12623          	sw	a4,12(sp)
    2cac:	00000097          	auipc	ra,0x0
    2cb0:	e64080e7          	jalr	-412(ra) # 2b10 <fatfs_total_path_levels>
    2cb4:	fff00793          	li	a5,-1
    2cb8:	00c12683          	lw	a3,12(sp)
    2cbc:	02f51863          	bne	a0,a5,2cec <fatfs_split_path+0x74>
    2cc0:	fff00913          	li	s2,-1
    2cc4:	02c12083          	lw	ra,44(sp)
    2cc8:	02812403          	lw	s0,40(sp)
    2ccc:	02412483          	lw	s1,36(sp)
    2cd0:	01c12983          	lw	s3,28(sp)
    2cd4:	01812a03          	lw	s4,24(sp)
    2cd8:	01412a83          	lw	s5,20(sp)
    2cdc:	00090513          	mv	a0,s2
    2ce0:	02012903          	lw	s2,32(sp)
    2ce4:	03010113          	addi	sp,sp,48
    2ce8:	00008067          	ret
    2cec:	00050593          	mv	a1,a0
    2cf0:	00050413          	mv	s0,a0
    2cf4:	000a8613          	mv	a2,s5
    2cf8:	00098513          	mv	a0,s3
    2cfc:	00000097          	auipc	ra,0x0
    2d00:	e88080e7          	jalr	-376(ra) # 2b84 <fatfs_get_substring>
    2d04:	00050913          	mv	s2,a0
    2d08:	fa051ce3          	bnez	a0,2cc0 <fatfs_split_path+0x48>
    2d0c:	00041663          	bnez	s0,2d18 <fatfs_split_path+0xa0>
    2d10:	00048023          	sb	zero,0(s1)
    2d14:	fb1ff06f          	j	2cc4 <fatfs_split_path+0x4c>
    2d18:	00098513          	mv	a0,s3
    2d1c:	fffff097          	auipc	ra,0xfffff
    2d20:	958080e7          	jalr	-1704(ra) # 1674 <strlen>
    2d24:	00050413          	mv	s0,a0
    2d28:	000a8513          	mv	a0,s5
    2d2c:	fffff097          	auipc	ra,0xfffff
    2d30:	948080e7          	jalr	-1720(ra) # 1674 <strlen>
    2d34:	40a40433          	sub	s0,s0,a0
    2d38:	008a5463          	bge	s4,s0,2d40 <fatfs_split_path+0xc8>
    2d3c:	000a0413          	mv	s0,s4
    2d40:	00048513          	mv	a0,s1
    2d44:	00040613          	mv	a2,s0
    2d48:	00098593          	mv	a1,s3
    2d4c:	008484b3          	add	s1,s1,s0
    2d50:	fffff097          	auipc	ra,0xfffff
    2d54:	900080e7          	jalr	-1792(ra) # 1650 <memcpy>
    2d58:	fe048fa3          	sb	zero,-1(s1)
    2d5c:	f69ff06f          	j	2cc4 <fatfs_split_path+0x4c>

00002d60 <fatfs_compare_names>:
    2d60:	fd010113          	addi	sp,sp,-48
    2d64:	02112623          	sw	ra,44(sp)
    2d68:	02812423          	sw	s0,40(sp)
    2d6c:	02912223          	sw	s1,36(sp)
    2d70:	03212023          	sw	s2,32(sp)
    2d74:	01312e23          	sw	s3,28(sp)
    2d78:	00058913          	mv	s2,a1
    2d7c:	01412c23          	sw	s4,24(sp)
    2d80:	01512a23          	sw	s5,20(sp)
    2d84:	01612823          	sw	s6,16(sp)
    2d88:	00050a13          	mv	s4,a0
    2d8c:	fffff097          	auipc	ra,0xfffff
    2d90:	0f0080e7          	jalr	240(ra) # 1e7c <FileString_GetExtension>
    2d94:	00050493          	mv	s1,a0
    2d98:	00090513          	mv	a0,s2
    2d9c:	fffff097          	auipc	ra,0xfffff
    2da0:	0e0080e7          	jalr	224(ra) # 1e7c <FileString_GetExtension>
    2da4:	fff00793          	li	a5,-1
    2da8:	00050413          	mv	s0,a0
    2dac:	00000993          	li	s3,0
    2db0:	08f49a63          	bne	s1,a5,2e44 <fatfs_compare_names+0xe4>
    2db4:	0c951e63          	bne	a0,s1,2e90 <fatfs_compare_names+0x130>
    2db8:	000a0513          	mv	a0,s4
    2dbc:	fffff097          	auipc	ra,0xfffff
    2dc0:	8b8080e7          	jalr	-1864(ra) # 1674 <strlen>
    2dc4:	00050493          	mv	s1,a0
    2dc8:	00090513          	mv	a0,s2
    2dcc:	fffff097          	auipc	ra,0xfffff
    2dd0:	8a8080e7          	jalr	-1880(ra) # 1674 <strlen>
    2dd4:	00050413          	mv	s0,a0
    2dd8:	fff48793          	addi	a5,s1,-1
    2ddc:	00fa07b3          	add	a5,s4,a5
    2de0:	40978733          	sub	a4,a5,s1
    2de4:	02000613          	li	a2,32
    2de8:	00078693          	mv	a3,a5
    2dec:	00e78863          	beq	a5,a4,2dfc <fatfs_compare_names+0x9c>
    2df0:	0007c583          	lbu	a1,0(a5)
    2df4:	fff78793          	addi	a5,a5,-1
    2df8:	0cc58263          	beq	a1,a2,2ebc <fatfs_compare_names+0x15c>
    2dfc:	fff40793          	addi	a5,s0,-1
    2e00:	00f907b3          	add	a5,s2,a5
    2e04:	40878733          	sub	a4,a5,s0
    2e08:	02000613          	li	a2,32
    2e0c:	00078693          	mv	a3,a5
    2e10:	00e78863          	beq	a5,a4,2e20 <fatfs_compare_names+0xc0>
    2e14:	0007c583          	lbu	a1,0(a5)
    2e18:	fff78793          	addi	a5,a5,-1
    2e1c:	0ac58463          	beq	a1,a2,2ec4 <fatfs_compare_names+0x164>
    2e20:	00000993          	li	s3,0
    2e24:	06941663          	bne	s0,s1,2e90 <fatfs_compare_names+0x130>
    2e28:	00040613          	mv	a2,s0
    2e2c:	00090593          	mv	a1,s2
    2e30:	000a0513          	mv	a0,s4
    2e34:	fffff097          	auipc	ra,0xfffff
    2e38:	fd8080e7          	jalr	-40(ra) # 1e0c <FileString_StrCmpNoCase>
    2e3c:	00153993          	seqz	s3,a0
    2e40:	0500006f          	j	2e90 <fatfs_compare_names+0x130>
    2e44:	04f50663          	beq	a0,a5,2e90 <fatfs_compare_names+0x130>
    2e48:	00148a93          	addi	s5,s1,1
    2e4c:	015a0ab3          	add	s5,s4,s5
    2e50:	00150b13          	addi	s6,a0,1
    2e54:	000a8513          	mv	a0,s5
    2e58:	fffff097          	auipc	ra,0xfffff
    2e5c:	81c080e7          	jalr	-2020(ra) # 1674 <strlen>
    2e60:	01690b33          	add	s6,s2,s6
    2e64:	00a12623          	sw	a0,12(sp)
    2e68:	000b0513          	mv	a0,s6
    2e6c:	fffff097          	auipc	ra,0xfffff
    2e70:	808080e7          	jalr	-2040(ra) # 1674 <strlen>
    2e74:	00c12603          	lw	a2,12(sp)
    2e78:	00a61c63          	bne	a2,a0,2e90 <fatfs_compare_names+0x130>
    2e7c:	000b0593          	mv	a1,s6
    2e80:	000a8513          	mv	a0,s5
    2e84:	fffff097          	auipc	ra,0xfffff
    2e88:	f88080e7          	jalr	-120(ra) # 1e0c <FileString_StrCmpNoCase>
    2e8c:	f40506e3          	beqz	a0,2dd8 <fatfs_compare_names+0x78>
    2e90:	02c12083          	lw	ra,44(sp)
    2e94:	02812403          	lw	s0,40(sp)
    2e98:	02412483          	lw	s1,36(sp)
    2e9c:	02012903          	lw	s2,32(sp)
    2ea0:	01812a03          	lw	s4,24(sp)
    2ea4:	01412a83          	lw	s5,20(sp)
    2ea8:	01012b03          	lw	s6,16(sp)
    2eac:	00098513          	mv	a0,s3
    2eb0:	01c12983          	lw	s3,28(sp)
    2eb4:	03010113          	addi	sp,sp,48
    2eb8:	00008067          	ret
    2ebc:	414684b3          	sub	s1,a3,s4
    2ec0:	f29ff06f          	j	2de8 <fatfs_compare_names+0x88>
    2ec4:	41268433          	sub	s0,a3,s2
    2ec8:	f45ff06f          	j	2e0c <fatfs_compare_names+0xac>

00002ecc <_check_file_open>:
    2ecc:	fe010113          	addi	sp,sp,-32
    2ed0:	000057b7          	lui	a5,0x5
    2ed4:	00812c23          	sw	s0,24(sp)
    2ed8:	6007a403          	lw	s0,1536(a5) # 5600 <_open_file_list>
    2edc:	00912a23          	sw	s1,20(sp)
    2ee0:	01212823          	sw	s2,16(sp)
    2ee4:	01312623          	sw	s3,12(sp)
    2ee8:	00112e23          	sw	ra,28(sp)
    2eec:	00050493          	mv	s1,a0
    2ef0:	01450913          	addi	s2,a0,20
    2ef4:	11850993          	addi	s3,a0,280
    2ef8:	02041263          	bnez	s0,2f1c <_check_file_open+0x50>
    2efc:	00000513          	li	a0,0
    2f00:	01c12083          	lw	ra,28(sp)
    2f04:	01812403          	lw	s0,24(sp)
    2f08:	01412483          	lw	s1,20(sp)
    2f0c:	01012903          	lw	s2,16(sp)
    2f10:	00c12983          	lw	s3,12(sp)
    2f14:	02010113          	addi	sp,sp,32
    2f18:	00008067          	ret
    2f1c:	bc440793          	addi	a5,s0,-1084
    2f20:	02f48663          	beq	s1,a5,2f4c <_check_file_open+0x80>
    2f24:	00090593          	mv	a1,s2
    2f28:	bd840513          	addi	a0,s0,-1064
    2f2c:	00000097          	auipc	ra,0x0
    2f30:	e34080e7          	jalr	-460(ra) # 2d60 <fatfs_compare_names>
    2f34:	00050c63          	beqz	a0,2f4c <_check_file_open+0x80>
    2f38:	00098593          	mv	a1,s3
    2f3c:	cdc40513          	addi	a0,s0,-804
    2f40:	00000097          	auipc	ra,0x0
    2f44:	e20080e7          	jalr	-480(ra) # 2d60 <fatfs_compare_names>
    2f48:	00051663          	bnez	a0,2f54 <_check_file_open+0x88>
    2f4c:	00442403          	lw	s0,4(s0)
    2f50:	fa9ff06f          	j	2ef8 <_check_file_open+0x2c>
    2f54:	00100513          	li	a0,1
    2f58:	fa9ff06f          	j	2f00 <_check_file_open+0x34>

00002f5c <fatfs_get_sfn_display_name>:
    2f5c:	00000713          	li	a4,0
    2f60:	00c00613          	li	a2,12
    2f64:	02000813          	li	a6,32
    2f68:	01900893          	li	a7,25
    2f6c:	0005c783          	lbu	a5,0(a1)
    2f70:	00078463          	beqz	a5,2f78 <fatfs_get_sfn_display_name+0x1c>
    2f74:	00c71863          	bne	a4,a2,2f84 <fatfs_get_sfn_display_name+0x28>
    2f78:	00050023          	sb	zero,0(a0)
    2f7c:	00100513          	li	a0,1
    2f80:	00008067          	ret
    2f84:	00158593          	addi	a1,a1,1
    2f88:	ff0782e3          	beq	a5,a6,2f6c <fatfs_get_sfn_display_name+0x10>
    2f8c:	fbf78693          	addi	a3,a5,-65
    2f90:	0ff6f693          	zext.b	a3,a3
    2f94:	00d8e663          	bltu	a7,a3,2fa0 <fatfs_get_sfn_display_name+0x44>
    2f98:	02078793          	addi	a5,a5,32
    2f9c:	0ff7f793          	zext.b	a5,a5
    2fa0:	00f50023          	sb	a5,0(a0)
    2fa4:	00170713          	addi	a4,a4,1
    2fa8:	00150513          	addi	a0,a0,1
    2fac:	fc1ff06f          	j	2f6c <fatfs_get_sfn_display_name+0x10>

00002fb0 <fatfs_fat_init>:
    2fb0:	ff010113          	addi	sp,sp,-16
    2fb4:	00812423          	sw	s0,8(sp)
    2fb8:	00912223          	sw	s1,4(sp)
    2fbc:	00112623          	sw	ra,12(sp)
    2fc0:	fff00793          	li	a5,-1
    2fc4:	25850493          	addi	s1,a0,600
    2fc8:	00050413          	mv	s0,a0
    2fcc:	44f52c23          	sw	a5,1112(a0)
    2fd0:	24052a23          	sw	zero,596(a0)
    2fd4:	44052e23          	sw	zero,1116(a0)
    2fd8:	20000613          	li	a2,512
    2fdc:	00048513          	mv	a0,s1
    2fe0:	00000593          	li	a1,0
    2fe4:	ffffe097          	auipc	ra,0xffffe
    2fe8:	650080e7          	jalr	1616(ra) # 1634 <memset>
    2fec:	25442783          	lw	a5,596(s0)
    2ff0:	00c12083          	lw	ra,12(sp)
    2ff4:	24942a23          	sw	s1,596(s0)
    2ff8:	46042023          	sw	zero,1120(s0)
    2ffc:	46f42223          	sw	a5,1124(s0)
    3000:	00812403          	lw	s0,8(sp)
    3004:	00412483          	lw	s1,4(sp)
    3008:	01010113          	addi	sp,sp,16
    300c:	00008067          	ret

00003010 <fatfs_init>:
    3010:	fd010113          	addi	sp,sp,-48
    3014:	02812423          	sw	s0,40(sp)
    3018:	02112623          	sw	ra,44(sp)
    301c:	02912223          	sw	s1,36(sp)
    3020:	03212023          	sw	s2,32(sp)
    3024:	01312e23          	sw	s3,28(sp)
    3028:	fff00793          	li	a5,-1
    302c:	24f52223          	sw	a5,580(a0)
    3030:	24052423          	sw	zero,584(a0)
    3034:	02052223          	sw	zero,36(a0)
    3038:	00050413          	mv	s0,a0
    303c:	00000097          	auipc	ra,0x0
    3040:	f74080e7          	jalr	-140(ra) # 2fb0 <fatfs_fat_init>
    3044:	03442783          	lw	a5,52(s0)
    3048:	02079263          	bnez	a5,306c <fatfs_init+0x5c>
    304c:	fff00513          	li	a0,-1
    3050:	02c12083          	lw	ra,44(sp)
    3054:	02812403          	lw	s0,40(sp)
    3058:	02412483          	lw	s1,36(sp)
    305c:	02012903          	lw	s2,32(sp)
    3060:	01c12983          	lw	s3,28(sp)
    3064:	03010113          	addi	sp,sp,48
    3068:	00008067          	ret
    306c:	04440593          	addi	a1,s0,68
    3070:	00100613          	li	a2,1
    3074:	00000513          	li	a0,0
    3078:	00b12623          	sw	a1,12(sp)
    307c:	000780e7          	jalr	a5
    3080:	fc0506e3          	beqz	a0,304c <fatfs_init+0x3c>
    3084:	24042703          	lw	a4,576(s0)
    3088:	ffff07b7          	lui	a5,0xffff0
    308c:	00c12583          	lw	a1,12(sp)
    3090:	00e7f7b3          	and	a5,a5,a4
    3094:	aa550737          	lui	a4,0xaa550
    3098:	00e78663          	beq	a5,a4,30a4 <fatfs_init+0x94>
    309c:	ffd00513          	li	a0,-3
    30a0:	fb1ff06f          	j	3050 <fatfs_init+0x40>
    30a4:	24245703          	lhu	a4,578(s0)
    30a8:	0000b7b7          	lui	a5,0xb
    30ac:	a5578793          	addi	a5,a5,-1451 # aa55 <_files+0x47dd>
    30b0:	ffc00513          	li	a0,-4
    30b4:	f8f71ee3          	bne	a4,a5,3050 <fatfs_init+0x40>
    30b8:	20644783          	lbu	a5,518(s0)
    30bc:	00600713          	li	a4,6
    30c0:	02f76463          	bltu	a4,a5,30e8 <fatfs_init+0xd8>
    30c4:	00400713          	li	a4,4
    30c8:	00f76663          	bltu	a4,a5,30d4 <fatfs_init+0xc4>
    30cc:	00000513          	li	a0,0
    30d0:	02078663          	beqz	a5,30fc <fatfs_init+0xec>
    30d4:	20c45503          	lhu	a0,524(s0)
    30d8:	20a45783          	lhu	a5,522(s0)
    30dc:	01051513          	slli	a0,a0,0x10
    30e0:	00f56533          	or	a0,a0,a5
    30e4:	0180006f          	j	30fc <fatfs_init+0xec>
    30e8:	00c00713          	li	a4,12
    30ec:	12f76a63          	bltu	a4,a5,3220 <fatfs_init+0x210>
    30f0:	00a00713          	li	a4,10
    30f4:	00000513          	li	a0,0
    30f8:	fcf76ee3          	bltu	a4,a5,30d4 <fatfs_init+0xc4>
    30fc:	03442783          	lw	a5,52(s0)
    3100:	00a42e23          	sw	a0,28(s0)
    3104:	00100613          	li	a2,1
    3108:	000780e7          	jalr	a5
    310c:	f40500e3          	beqz	a0,304c <fatfs_init+0x3c>
    3110:	05044783          	lbu	a5,80(s0)
    3114:	04f44703          	lbu	a4,79(s0)
    3118:	ffe00513          	li	a0,-2
    311c:	00879793          	slli	a5,a5,0x8
    3120:	00e7e7b3          	or	a5,a5,a4
    3124:	20000713          	li	a4,512
    3128:	f2e794e3          	bne	a5,a4,3050 <fatfs_init+0x40>
    312c:	05644483          	lbu	s1,86(s0)
    3130:	05544783          	lbu	a5,85(s0)
    3134:	05144983          	lbu	s3,81(s0)
    3138:	00849493          	slli	s1,s1,0x8
    313c:	05a45583          	lhu	a1,90(s0)
    3140:	00f4e4b3          	or	s1,s1,a5
    3144:	01340023          	sb	s3,0(s0)
    3148:	02941423          	sh	s1,40(s0)
    314c:	05245903          	lhu	s2,82(s0)
    3150:	05444503          	lbu	a0,84(s0)
    3154:	00059463          	bnez	a1,315c <fatfs_init+0x14c>
    3158:	06842583          	lw	a1,104(s0)
    315c:	07042783          	lw	a5,112(s0)
    3160:	02b42023          	sw	a1,32(s0)
    3164:	00549493          	slli	s1,s1,0x5
    3168:	00f42423          	sw	a5,8(s0)
    316c:	07445783          	lhu	a5,116(s0)
    3170:	1ff48493          	addi	s1,s1,511
    3174:	4094d493          	srai	s1,s1,0x9
    3178:	00f41c23          	sh	a5,24(s0)
    317c:	fffff097          	auipc	ra,0xfffff
    3180:	bfc080e7          	jalr	-1028(ra) # 1d78 <__mulsi3>
    3184:	00a907b3          	add	a5,s2,a0
    3188:	00f42623          	sw	a5,12(s0)
    318c:	01c42783          	lw	a5,28(s0)
    3190:	24245703          	lhu	a4,578(s0)
    3194:	00942823          	sw	s1,16(s0)
    3198:	00f907b3          	add	a5,s2,a5
    319c:	00f42a23          	sw	a5,20(s0)
    31a0:	00f507b3          	add	a5,a0,a5
    31a4:	00f42223          	sw	a5,4(s0)
    31a8:	0000b7b7          	lui	a5,0xb
    31ac:	a5578793          	addi	a5,a5,-1451 # aa55 <_files+0x47dd>
    31b0:	eef716e3          	bne	a4,a5,309c <fatfs_init+0x8c>
    31b4:	05844783          	lbu	a5,88(s0)
    31b8:	05744703          	lbu	a4,87(s0)
    31bc:	00879793          	slli	a5,a5,0x8
    31c0:	00e7e7b3          	or	a5,a5,a4
    31c4:	00079463          	bnez	a5,31cc <fatfs_init+0x1bc>
    31c8:	06442783          	lw	a5,100(s0)
    31cc:	00990933          	add	s2,s2,s1
    31d0:	00a90533          	add	a0,s2,a0
    31d4:	40a787b3          	sub	a5,a5,a0
    31d8:	ffb00513          	li	a0,-5
    31dc:	e6098ae3          	beqz	s3,3050 <fatfs_init+0x40>
    31e0:	00078513          	mv	a0,a5
    31e4:	00098593          	mv	a1,s3
    31e8:	ffffe097          	auipc	ra,0xffffe
    31ec:	3a0080e7          	jalr	928(ra) # 1588 <__udivsi3>
    31f0:	00001737          	lui	a4,0x1
    31f4:	00050793          	mv	a5,a0
    31f8:	ff470713          	addi	a4,a4,-12 # ff4 <sdcard_get>
    31fc:	ffb00513          	li	a0,-5
    3200:	e4f778e3          	bgeu	a4,a5,3050 <fatfs_init+0x40>
    3204:	00010737          	lui	a4,0x10
    3208:	ff470713          	addi	a4,a4,-12 # fff4 <_files+0x9d7c>
    320c:	02f76663          	bltu	a4,a5,3238 <fatfs_init+0x228>
    3210:	00042423          	sw	zero,8(s0)
    3214:	02042823          	sw	zero,48(s0)
    3218:	00000513          	li	a0,0
    321c:	e35ff06f          	j	3050 <fatfs_init+0x40>
    3220:	ff278793          	addi	a5,a5,-14
    3224:	0ff7f793          	zext.b	a5,a5
    3228:	00100713          	li	a4,1
    322c:	00000513          	li	a0,0
    3230:	eaf772e3          	bgeu	a4,a5,30d4 <fatfs_init+0xc4>
    3234:	ec9ff06f          	j	30fc <fatfs_init+0xec>
    3238:	00100793          	li	a5,1
    323c:	02f42823          	sw	a5,48(s0)
    3240:	fd9ff06f          	j	3218 <fatfs_init+0x208>

00003244 <fl_attach_media>:
    3244:	000057b7          	lui	a5,0x5
    3248:	60c7a783          	lw	a5,1548(a5) # 560c <_filelib_init>
    324c:	ff010113          	addi	sp,sp,-16
    3250:	00812423          	sw	s0,8(sp)
    3254:	00912223          	sw	s1,4(sp)
    3258:	00112623          	sw	ra,12(sp)
    325c:	00050493          	mv	s1,a0
    3260:	00058413          	mv	s0,a1
    3264:	00079663          	bnez	a5,3270 <fl_attach_media+0x2c>
    3268:	fffff097          	auipc	ra,0xfffff
    326c:	fa8080e7          	jalr	-88(ra) # 2210 <fl_init>
    3270:	00006537          	lui	a0,0x6
    3274:	e1050793          	addi	a5,a0,-496 # 5e10 <_fs>
    3278:	e1050513          	addi	a0,a0,-496
    327c:	0287ac23          	sw	s0,56(a5)
    3280:	0297aa23          	sw	s1,52(a5)
    3284:	00000097          	auipc	ra,0x0
    3288:	d8c080e7          	jalr	-628(ra) # 3010 <fatfs_init>
    328c:	00050413          	mv	s0,a0
    3290:	02050863          	beqz	a0,32c0 <fl_attach_media+0x7c>
    3294:	00050593          	mv	a1,a0
    3298:	00005537          	lui	a0,0x5
    329c:	39850513          	addi	a0,a0,920 # 5398 <LEDS+0xac>
    32a0:	fffff097          	auipc	ra,0xfffff
    32a4:	9a8080e7          	jalr	-1624(ra) # 1c48 <printf>
    32a8:	00c12083          	lw	ra,12(sp)
    32ac:	00040513          	mv	a0,s0
    32b0:	00812403          	lw	s0,8(sp)
    32b4:	00412483          	lw	s1,4(sp)
    32b8:	01010113          	addi	sp,sp,16
    32bc:	00008067          	ret
    32c0:	000057b7          	lui	a5,0x5
    32c4:	00100713          	li	a4,1
    32c8:	60e7a423          	sw	a4,1544(a5) # 5608 <_filelib_valid>
    32cc:	fddff06f          	j	32a8 <fl_attach_media+0x64>

000032d0 <fatfs_fat_purge>:
    32d0:	ff010113          	addi	sp,sp,-16
    32d4:	00812423          	sw	s0,8(sp)
    32d8:	25452403          	lw	s0,596(a0)
    32dc:	00912223          	sw	s1,4(sp)
    32e0:	00112623          	sw	ra,12(sp)
    32e4:	00050493          	mv	s1,a0
    32e8:	00041663          	bnez	s0,32f4 <fatfs_fat_purge+0x24>
    32ec:	00100513          	li	a0,1
    32f0:	0280006f          	j	3318 <fatfs_fat_purge+0x48>
    32f4:	20442783          	lw	a5,516(s0)
    32f8:	00079663          	bnez	a5,3304 <fatfs_fat_purge+0x34>
    32fc:	20c42403          	lw	s0,524(s0)
    3300:	fe9ff06f          	j	32e8 <fatfs_fat_purge+0x18>
    3304:	00040593          	mv	a1,s0
    3308:	00048513          	mv	a0,s1
    330c:	fffff097          	auipc	ra,0xfffff
    3310:	b9c080e7          	jalr	-1124(ra) # 1ea8 <fatfs_fat_writeback>
    3314:	fe0514e3          	bnez	a0,32fc <fatfs_fat_purge+0x2c>
    3318:	00c12083          	lw	ra,12(sp)
    331c:	00812403          	lw	s0,8(sp)
    3320:	00412483          	lw	s1,4(sp)
    3324:	01010113          	addi	sp,sp,16
    3328:	00008067          	ret

0000332c <fatfs_find_next_cluster>:
    332c:	ff010113          	addi	sp,sp,-16
    3330:	00812423          	sw	s0,8(sp)
    3334:	01212023          	sw	s2,0(sp)
    3338:	00112623          	sw	ra,12(sp)
    333c:	00912223          	sw	s1,4(sp)
    3340:	00050913          	mv	s2,a0
    3344:	00200413          	li	s0,2
    3348:	00058463          	beqz	a1,3350 <fatfs_find_next_cluster+0x24>
    334c:	00058413          	mv	s0,a1
    3350:	03092783          	lw	a5,48(s2)
    3354:	00745493          	srli	s1,s0,0x7
    3358:	00079463          	bnez	a5,3360 <fatfs_find_next_cluster+0x34>
    335c:	00845493          	srli	s1,s0,0x8
    3360:	01492583          	lw	a1,20(s2)
    3364:	00090513          	mv	a0,s2
    3368:	00b485b3          	add	a1,s1,a1
    336c:	fffff097          	auipc	ra,0xfffff
    3370:	bbc080e7          	jalr	-1092(ra) # 1f28 <fatfs_fat_read_sector>
    3374:	00050793          	mv	a5,a0
    3378:	fff00513          	li	a0,-1
    337c:	04078a63          	beqz	a5,33d0 <fatfs_find_next_cluster+0xa4>
    3380:	03092703          	lw	a4,48(s2)
    3384:	2087a783          	lw	a5,520(a5)
    3388:	06071063          	bnez	a4,33e8 <fatfs_find_next_cluster+0xbc>
    338c:	00849493          	slli	s1,s1,0x8
    3390:	40940433          	sub	s0,s0,s1
    3394:	00010737          	lui	a4,0x10
    3398:	00141413          	slli	s0,s0,0x1
    339c:	ffe70713          	addi	a4,a4,-2 # fffe <_files+0x9d86>
    33a0:	00e47433          	and	s0,s0,a4
    33a4:	008787b3          	add	a5,a5,s0
    33a8:	0017c503          	lbu	a0,1(a5)
    33ac:	0007c783          	lbu	a5,0(a5)
    33b0:	00851513          	slli	a0,a0,0x8
    33b4:	00f50533          	add	a0,a0,a5
    33b8:	ffff07b7          	lui	a5,0xffff0
    33bc:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    33c0:	00f507b3          	add	a5,a0,a5
    33c4:	00700713          	li	a4,7
    33c8:	00f76463          	bltu	a4,a5,33d0 <fatfs_find_next_cluster+0xa4>
    33cc:	fff00513          	li	a0,-1
    33d0:	00c12083          	lw	ra,12(sp)
    33d4:	00812403          	lw	s0,8(sp)
    33d8:	00412483          	lw	s1,4(sp)
    33dc:	00012903          	lw	s2,0(sp)
    33e0:	01010113          	addi	sp,sp,16
    33e4:	00008067          	ret
    33e8:	00749493          	slli	s1,s1,0x7
    33ec:	40940433          	sub	s0,s0,s1
    33f0:	00010737          	lui	a4,0x10
    33f4:	ffc70713          	addi	a4,a4,-4 # fffc <_files+0x9d84>
    33f8:	00241413          	slli	s0,s0,0x2
    33fc:	00e47433          	and	s0,s0,a4
    3400:	008787b3          	add	a5,a5,s0
    3404:	0037c503          	lbu	a0,3(a5)
    3408:	0027c703          	lbu	a4,2(a5)
    340c:	01851513          	slli	a0,a0,0x18
    3410:	01071713          	slli	a4,a4,0x10
    3414:	00e50533          	add	a0,a0,a4
    3418:	0007c703          	lbu	a4,0(a5)
    341c:	0017c783          	lbu	a5,1(a5)
    3420:	00e50533          	add	a0,a0,a4
    3424:	00879793          	slli	a5,a5,0x8
    3428:	00f50533          	add	a0,a0,a5
    342c:	00451513          	slli	a0,a0,0x4
    3430:	00455513          	srli	a0,a0,0x4
    3434:	f00007b7          	lui	a5,0xf0000
    3438:	f85ff06f          	j	33bc <fatfs_find_next_cluster+0x90>

0000343c <fatfs_sector_reader>:
    343c:	03052783          	lw	a5,48(a0)
    3440:	fd010113          	addi	sp,sp,-48
    3444:	02812423          	sw	s0,40(sp)
    3448:	03212023          	sw	s2,32(sp)
    344c:	01312e23          	sw	s3,28(sp)
    3450:	02112623          	sw	ra,44(sp)
    3454:	02912223          	sw	s1,36(sp)
    3458:	01412c23          	sw	s4,24(sp)
    345c:	01512a23          	sw	s5,20(sp)
    3460:	00f5e7b3          	or	a5,a1,a5
    3464:	00050413          	mv	s0,a0
    3468:	00060913          	mv	s2,a2
    346c:	00068993          	mv	s3,a3
    3470:	06079c63          	bnez	a5,34e8 <fatfs_sector_reader+0xac>
    3474:	01052783          	lw	a5,16(a0)
    3478:	02f66663          	bltu	a2,a5,34a4 <fatfs_sector_reader+0x68>
    347c:	00000513          	li	a0,0
    3480:	02c12083          	lw	ra,44(sp)
    3484:	02812403          	lw	s0,40(sp)
    3488:	02412483          	lw	s1,36(sp)
    348c:	02012903          	lw	s2,32(sp)
    3490:	01c12983          	lw	s3,28(sp)
    3494:	01812a03          	lw	s4,24(sp)
    3498:	01412a83          	lw	s5,20(sp)
    349c:	03010113          	addi	sp,sp,48
    34a0:	00008067          	ret
    34a4:	01c52503          	lw	a0,28(a0)
    34a8:	00c42783          	lw	a5,12(s0)
    34ac:	00f50533          	add	a0,a0,a5
    34b0:	01250533          	add	a0,a0,s2
    34b4:	0a098263          	beqz	s3,3558 <fatfs_sector_reader+0x11c>
    34b8:	03442783          	lw	a5,52(s0)
    34bc:	00100613          	li	a2,1
    34c0:	00098593          	mv	a1,s3
    34c4:	02812403          	lw	s0,40(sp)
    34c8:	02c12083          	lw	ra,44(sp)
    34cc:	02412483          	lw	s1,36(sp)
    34d0:	02012903          	lw	s2,32(sp)
    34d4:	01c12983          	lw	s3,28(sp)
    34d8:	01812a03          	lw	s4,24(sp)
    34dc:	01412a83          	lw	s5,20(sp)
    34e0:	03010113          	addi	sp,sp,48
    34e4:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    34e8:	00058493          	mv	s1,a1
    34ec:	00054583          	lbu	a1,0(a0)
    34f0:	00060513          	mv	a0,a2
    34f4:	00000a93          	li	s5,0
    34f8:	00b12623          	sw	a1,12(sp)
    34fc:	ffffe097          	auipc	ra,0xffffe
    3500:	08c080e7          	jalr	140(ra) # 1588 <__udivsi3>
    3504:	00c12583          	lw	a1,12(sp)
    3508:	00050a13          	mv	s4,a0
    350c:	00090513          	mv	a0,s2
    3510:	ffffe097          	auipc	ra,0xffffe
    3514:	0c0080e7          	jalr	192(ra) # 15d0 <__umodsi3>
    3518:	00050913          	mv	s2,a0
    351c:	034a9063          	bne	s5,s4,353c <fatfs_sector_reader+0x100>
    3520:	fff00793          	li	a5,-1
    3524:	f4f48ce3          	beq	s1,a5,347c <fatfs_sector_reader+0x40>
    3528:	00048593          	mv	a1,s1
    352c:	00040513          	mv	a0,s0
    3530:	fffff097          	auipc	ra,0xfffff
    3534:	ba4080e7          	jalr	-1116(ra) # 20d4 <fatfs_lba_of_cluster>
    3538:	f79ff06f          	j	34b0 <fatfs_sector_reader+0x74>
    353c:	00048593          	mv	a1,s1
    3540:	00040513          	mv	a0,s0
    3544:	00000097          	auipc	ra,0x0
    3548:	de8080e7          	jalr	-536(ra) # 332c <fatfs_find_next_cluster>
    354c:	00050493          	mv	s1,a0
    3550:	001a8a93          	addi	s5,s5,1
    3554:	fc9ff06f          	j	351c <fatfs_sector_reader+0xe0>
    3558:	24442783          	lw	a5,580(s0)
    355c:	00a78c63          	beq	a5,a0,3574 <fatfs_sector_reader+0x138>
    3560:	03442783          	lw	a5,52(s0)
    3564:	24a42223          	sw	a0,580(s0)
    3568:	00100613          	li	a2,1
    356c:	04440593          	addi	a1,s0,68
    3570:	f55ff06f          	j	34c4 <fatfs_sector_reader+0x88>
    3574:	00100513          	li	a0,1
    3578:	f09ff06f          	j	3480 <fatfs_sector_reader+0x44>

0000357c <fatfs_get_file_entry>:
    357c:	eb010113          	addi	sp,sp,-336
    3580:	14812423          	sw	s0,328(sp)
    3584:	01810413          	addi	s0,sp,24
    3588:	14912223          	sw	s1,324(sp)
    358c:	15212023          	sw	s2,320(sp)
    3590:	13312e23          	sw	s3,316(sp)
    3594:	13412c23          	sw	s4,312(sp)
    3598:	13512a23          	sw	s5,308(sp)
    359c:	13612823          	sw	s6,304(sp)
    35a0:	14112623          	sw	ra,332(sp)
    35a4:	13712623          	sw	s7,300(sp)
    35a8:	13812423          	sw	s8,296(sp)
    35ac:	13912223          	sw	s9,292(sp)
    35b0:	13a12023          	sw	s10,288(sp)
    35b4:	00050493          	mv	s1,a0
    35b8:	00058a93          	mv	s5,a1
    35bc:	00060913          	mv	s2,a2
    35c0:	00068993          	mv	s3,a3
    35c4:	10010ea3          	sb	zero,285(sp)
    35c8:	11c10a13          	addi	s4,sp,284
    35cc:	00040b13          	mv	s6,s0
    35d0:	00040513          	mv	a0,s0
    35d4:	00d00613          	li	a2,13
    35d8:	00000593          	li	a1,0
    35dc:	00d40413          	addi	s0,s0,13
    35e0:	ffffe097          	auipc	ra,0xffffe
    35e4:	054080e7          	jalr	84(ra) # 1634 <memset>
    35e8:	ff4414e3          	bne	s0,s4,35d0 <fatfs_get_file_entry+0x54>
    35ec:	00000a13          	li	s4,0
    35f0:	24448c13          	addi	s8,s1,580
    35f4:	00800c93          	li	s9,8
    35f8:	02000b93          	li	s7,32
    35fc:	02e00d13          	li	s10,46
    3600:	00000693          	li	a3,0
    3604:	000a0613          	mv	a2,s4
    3608:	000a8593          	mv	a1,s5
    360c:	00048513          	mv	a0,s1
    3610:	00000097          	auipc	ra,0x0
    3614:	e2c080e7          	jalr	-468(ra) # 343c <fatfs_sector_reader>
    3618:	16050463          	beqz	a0,3780 <fatfs_get_file_entry+0x204>
    361c:	04448413          	addi	s0,s1,68
    3620:	00040513          	mv	a0,s0
    3624:	fffff097          	auipc	ra,0xfffff
    3628:	f08080e7          	jalr	-248(ra) # 252c <fatfs_entry_lfn_text>
    362c:	02050263          	beqz	a0,3650 <fatfs_get_file_entry+0xd4>
    3630:	00040593          	mv	a1,s0
    3634:	000b0513          	mv	a0,s6
    3638:	fffff097          	auipc	ra,0xfffff
    363c:	dec080e7          	jalr	-532(ra) # 2424 <fatfs_lfn_cache_entry>
    3640:	02040413          	addi	s0,s0,32
    3644:	fd841ee3          	bne	s0,s8,3620 <fatfs_get_file_entry+0xa4>
    3648:	001a0a13          	addi	s4,s4,1
    364c:	fb5ff06f          	j	3600 <fatfs_get_file_entry+0x84>
    3650:	00040513          	mv	a0,s0
    3654:	fffff097          	auipc	ra,0xfffff
    3658:	eec080e7          	jalr	-276(ra) # 2540 <fatfs_entry_lfn_invalid>
    365c:	00050663          	beqz	a0,3668 <fatfs_get_file_entry+0xec>
    3660:	10010ea3          	sb	zero,285(sp)
    3664:	fddff06f          	j	3640 <fatfs_get_file_entry+0xc4>
    3668:	00040593          	mv	a1,s0
    366c:	000b0513          	mv	a0,s6
    3670:	fffff097          	auipc	ra,0xfffff
    3674:	f08080e7          	jalr	-248(ra) # 2578 <fatfs_entry_lfn_exists>
    3678:	06050863          	beqz	a0,36e8 <fatfs_get_file_entry+0x16c>
    367c:	000b0513          	mv	a0,s6
    3680:	fffff097          	auipc	ra,0xfffff
    3684:	e70080e7          	jalr	-400(ra) # 24f0 <fatfs_lfn_cache_get>
    3688:	00090593          	mv	a1,s2
    368c:	fffff097          	auipc	ra,0xfffff
    3690:	6d4080e7          	jalr	1748(ra) # 2d60 <fatfs_compare_names>
    3694:	fc0506e3          	beqz	a0,3660 <fatfs_get_file_entry+0xe4>
    3698:	02000613          	li	a2,32
    369c:	00040593          	mv	a1,s0
    36a0:	00098513          	mv	a0,s3
    36a4:	ffffe097          	auipc	ra,0xffffe
    36a8:	fac080e7          	jalr	-84(ra) # 1650 <memcpy>
    36ac:	00100513          	li	a0,1
    36b0:	14c12083          	lw	ra,332(sp)
    36b4:	14812403          	lw	s0,328(sp)
    36b8:	14412483          	lw	s1,324(sp)
    36bc:	14012903          	lw	s2,320(sp)
    36c0:	13c12983          	lw	s3,316(sp)
    36c4:	13812a03          	lw	s4,312(sp)
    36c8:	13412a83          	lw	s5,308(sp)
    36cc:	13012b03          	lw	s6,304(sp)
    36d0:	12c12b83          	lw	s7,300(sp)
    36d4:	12812c03          	lw	s8,296(sp)
    36d8:	12412c83          	lw	s9,292(sp)
    36dc:	12012d03          	lw	s10,288(sp)
    36e0:	15010113          	addi	sp,sp,336
    36e4:	00008067          	ret
    36e8:	00040513          	mv	a0,s0
    36ec:	fffff097          	auipc	ra,0xfffff
    36f0:	ed4080e7          	jalr	-300(ra) # 25c0 <fatfs_entry_sfn_only>
    36f4:	f40506e3          	beqz	a0,3640 <fatfs_get_file_entry+0xc4>
    36f8:	00d00613          	li	a2,13
    36fc:	00000593          	li	a1,0
    3700:	00810513          	addi	a0,sp,8
    3704:	ffffe097          	auipc	ra,0xffffe
    3708:	f30080e7          	jalr	-208(ra) # 1634 <memset>
    370c:	00000793          	li	a5,0
    3710:	00f406b3          	add	a3,s0,a5
    3714:	0006c683          	lbu	a3,0(a3)
    3718:	00810713          	addi	a4,sp,8
    371c:	00f70733          	add	a4,a4,a5
    3720:	00d70023          	sb	a3,0(a4)
    3724:	00178793          	addi	a5,a5,1
    3728:	ff9794e3          	bne	a5,s9,3710 <fatfs_get_file_entry+0x194>
    372c:	00844783          	lbu	a5,8(s0)
    3730:	00944683          	lbu	a3,9(s0)
    3734:	00100713          	li	a4,1
    3738:	00f108a3          	sb	a5,17(sp)
    373c:	00d10923          	sb	a3,18(sp)
    3740:	01769663          	bne	a3,s7,374c <fatfs_get_file_entry+0x1d0>
    3744:	fe078793          	addi	a5,a5,-32
    3748:	00f03733          	snez	a4,a5
    374c:	00a44783          	lbu	a5,10(s0)
    3750:	00f109a3          	sb	a5,19(sp)
    3754:	01779663          	bne	a5,s7,3760 <fatfs_get_file_entry+0x1e4>
    3758:	02000793          	li	a5,32
    375c:	00070a63          	beqz	a4,3770 <fatfs_get_file_entry+0x1f4>
    3760:	00814703          	lbu	a4,8(sp)
    3764:	02e00793          	li	a5,46
    3768:	01a71463          	bne	a4,s10,3770 <fatfs_get_file_entry+0x1f4>
    376c:	02000793          	li	a5,32
    3770:	00f10823          	sb	a5,16(sp)
    3774:	00090593          	mv	a1,s2
    3778:	00810513          	addi	a0,sp,8
    377c:	f11ff06f          	j	368c <fatfs_get_file_entry+0x110>
    3780:	00000513          	li	a0,0
    3784:	f2dff06f          	j	36b0 <fatfs_get_file_entry+0x134>

00003788 <_open_directory>:
    3788:	eb010113          	addi	sp,sp,-336
    378c:	13512a23          	sw	s5,308(sp)
    3790:	00006ab7          	lui	s5,0x6
    3794:	e10a8793          	addi	a5,s5,-496 # 5e10 <_fs>
    3798:	14812423          	sw	s0,328(sp)
    379c:	14912223          	sw	s1,324(sp)
    37a0:	15212023          	sw	s2,320(sp)
    37a4:	13312e23          	sw	s3,316(sp)
    37a8:	13412c23          	sw	s4,312(sp)
    37ac:	13612823          	sw	s6,304(sp)
    37b0:	0087a403          	lw	s0,8(a5)
    37b4:	14112623          	sw	ra,332(sp)
    37b8:	00050a13          	mv	s4,a0
    37bc:	00058913          	mv	s2,a1
    37c0:	fffff097          	auipc	ra,0xfffff
    37c4:	350080e7          	jalr	848(ra) # 2b10 <fatfs_total_path_levels>
    37c8:	00050993          	mv	s3,a0
    37cc:	00000493          	li	s1,0
    37d0:	fff00b13          	li	s6,-1
    37d4:	0099d863          	bge	s3,s1,37e4 <_open_directory+0x5c>
    37d8:	00892023          	sw	s0,0(s2)
    37dc:	00100513          	li	a0,1
    37e0:	0240006f          	j	3804 <_open_directory+0x7c>
    37e4:	10400693          	li	a3,260
    37e8:	02c10613          	addi	a2,sp,44
    37ec:	00048593          	mv	a1,s1
    37f0:	000a0513          	mv	a0,s4
    37f4:	fffff097          	auipc	ra,0xfffff
    37f8:	390080e7          	jalr	912(ra) # 2b84 <fatfs_get_substring>
    37fc:	03651863          	bne	a0,s6,382c <_open_directory+0xa4>
    3800:	00000513          	li	a0,0
    3804:	14c12083          	lw	ra,332(sp)
    3808:	14812403          	lw	s0,328(sp)
    380c:	14412483          	lw	s1,324(sp)
    3810:	14012903          	lw	s2,320(sp)
    3814:	13c12983          	lw	s3,316(sp)
    3818:	13812a03          	lw	s4,312(sp)
    381c:	13412a83          	lw	s5,308(sp)
    3820:	13012b03          	lw	s6,304(sp)
    3824:	15010113          	addi	sp,sp,336
    3828:	00008067          	ret
    382c:	00c10693          	addi	a3,sp,12
    3830:	02c10613          	addi	a2,sp,44
    3834:	00040593          	mv	a1,s0
    3838:	e10a8513          	addi	a0,s5,-496
    383c:	00000097          	auipc	ra,0x0
    3840:	d40080e7          	jalr	-704(ra) # 357c <fatfs_get_file_entry>
    3844:	fa050ee3          	beqz	a0,3800 <_open_directory+0x78>
    3848:	00c10513          	addi	a0,sp,12
    384c:	fffff097          	auipc	ra,0xfffff
    3850:	db0080e7          	jalr	-592(ra) # 25fc <fatfs_entry_is_dir>
    3854:	fa0506e3          	beqz	a0,3800 <_open_directory+0x78>
    3858:	02015403          	lhu	s0,32(sp)
    385c:	02615783          	lhu	a5,38(sp)
    3860:	00148493          	addi	s1,s1,1
    3864:	01041413          	slli	s0,s0,0x10
    3868:	00f40433          	add	s0,s0,a5
    386c:	f69ff06f          	j	37d4 <_open_directory+0x4c>

00003870 <fl_opendir>:
    3870:	fe010113          	addi	sp,sp,-32
    3874:	fff00793          	li	a5,-1
    3878:	00f12623          	sw	a5,12(sp)
    387c:	000057b7          	lui	a5,0x5
    3880:	60c7a783          	lw	a5,1548(a5) # 560c <_filelib_init>
    3884:	00812c23          	sw	s0,24(sp)
    3888:	01212823          	sw	s2,16(sp)
    388c:	00112e23          	sw	ra,28(sp)
    3890:	00912a23          	sw	s1,20(sp)
    3894:	00050913          	mv	s2,a0
    3898:	00058413          	mv	s0,a1
    389c:	00079663          	bnez	a5,38a8 <fl_opendir+0x38>
    38a0:	fffff097          	auipc	ra,0xfffff
    38a4:	970080e7          	jalr	-1680(ra) # 2210 <fl_init>
    38a8:	000064b7          	lui	s1,0x6
    38ac:	e1048793          	addi	a5,s1,-496 # 5e10 <_fs>
    38b0:	03c7a783          	lw	a5,60(a5)
    38b4:	e1048493          	addi	s1,s1,-496
    38b8:	00078463          	beqz	a5,38c0 <fl_opendir+0x50>
    38bc:	000780e7          	jalr	a5
    38c0:	00090513          	mv	a0,s2
    38c4:	fffff097          	auipc	ra,0xfffff
    38c8:	24c080e7          	jalr	588(ra) # 2b10 <fatfs_total_path_levels>
    38cc:	fff00793          	li	a5,-1
    38d0:	02f51063          	bne	a0,a5,38f0 <fl_opendir+0x80>
    38d4:	0084a783          	lw	a5,8(s1)
    38d8:	00f12623          	sw	a5,12(sp)
    38dc:	00c12783          	lw	a5,12(sp)
    38e0:	00042023          	sw	zero,0(s0)
    38e4:	00040423          	sb	zero,8(s0)
    38e8:	00f42223          	sw	a5,4(s0)
    38ec:	0180006f          	j	3904 <fl_opendir+0x94>
    38f0:	00c10593          	addi	a1,sp,12
    38f4:	00090513          	mv	a0,s2
    38f8:	00000097          	auipc	ra,0x0
    38fc:	e90080e7          	jalr	-368(ra) # 3788 <_open_directory>
    3900:	fc051ee3          	bnez	a0,38dc <fl_opendir+0x6c>
    3904:	0404a783          	lw	a5,64(s1)
    3908:	00078463          	beqz	a5,3910 <fl_opendir+0xa0>
    390c:	000780e7          	jalr	a5
    3910:	00c12703          	lw	a4,12(sp)
    3914:	fff00793          	li	a5,-1
    3918:	00f71463          	bne	a4,a5,3920 <fl_opendir+0xb0>
    391c:	00000413          	li	s0,0
    3920:	01c12083          	lw	ra,28(sp)
    3924:	00040513          	mv	a0,s0
    3928:	01812403          	lw	s0,24(sp)
    392c:	01412483          	lw	s1,20(sp)
    3930:	01012903          	lw	s2,16(sp)
    3934:	02010113          	addi	sp,sp,32
    3938:	00008067          	ret

0000393c <_open_file>:
    393c:	fc010113          	addi	sp,sp,-64
    3940:	03312623          	sw	s3,44(sp)
    3944:	02112e23          	sw	ra,60(sp)
    3948:	02812c23          	sw	s0,56(sp)
    394c:	02912a23          	sw	s1,52(sp)
    3950:	03212823          	sw	s2,48(sp)
    3954:	00050993          	mv	s3,a0
    3958:	ffffe097          	auipc	ra,0xffffe
    395c:	6c0080e7          	jalr	1728(ra) # 2018 <_allocate_file>
    3960:	06050463          	beqz	a0,39c8 <_open_file+0x8c>
    3964:	01450913          	addi	s2,a0,20
    3968:	00050413          	mv	s0,a0
    396c:	10400613          	li	a2,260
    3970:	00000593          	li	a1,0
    3974:	00090513          	mv	a0,s2
    3978:	ffffe097          	auipc	ra,0xffffe
    397c:	cbc080e7          	jalr	-836(ra) # 1634 <memset>
    3980:	11840493          	addi	s1,s0,280
    3984:	10400613          	li	a2,260
    3988:	00000593          	li	a1,0
    398c:	00048513          	mv	a0,s1
    3990:	ffffe097          	auipc	ra,0xffffe
    3994:	ca4080e7          	jalr	-860(ra) # 1634 <memset>
    3998:	10400713          	li	a4,260
    399c:	00048693          	mv	a3,s1
    39a0:	10400613          	li	a2,260
    39a4:	00090593          	mv	a1,s2
    39a8:	00098513          	mv	a0,s3
    39ac:	fffff097          	auipc	ra,0xfffff
    39b0:	2cc080e7          	jalr	716(ra) # 2c78 <fatfs_split_path>
    39b4:	fff00793          	li	a5,-1
    39b8:	02f51a63          	bne	a0,a5,39ec <_open_file+0xb0>
    39bc:	00040513          	mv	a0,s0
    39c0:	ffffe097          	auipc	ra,0xffffe
    39c4:	6cc080e7          	jalr	1740(ra) # 208c <_free_file>
    39c8:	00000413          	li	s0,0
    39cc:	03c12083          	lw	ra,60(sp)
    39d0:	00040513          	mv	a0,s0
    39d4:	03812403          	lw	s0,56(sp)
    39d8:	03412483          	lw	s1,52(sp)
    39dc:	03012903          	lw	s2,48(sp)
    39e0:	02c12983          	lw	s3,44(sp)
    39e4:	04010113          	addi	sp,sp,64
    39e8:	00008067          	ret
    39ec:	00040513          	mv	a0,s0
    39f0:	fffff097          	auipc	ra,0xfffff
    39f4:	4dc080e7          	jalr	1244(ra) # 2ecc <_check_file_open>
    39f8:	fc0512e3          	bnez	a0,39bc <_open_file+0x80>
    39fc:	01444783          	lbu	a5,20(s0)
    3a00:	08079e63          	bnez	a5,3a9c <_open_file+0x160>
    3a04:	000067b7          	lui	a5,0x6
    3a08:	e187a783          	lw	a5,-488(a5) # 5e18 <_fs+0x8>
    3a0c:	00f42023          	sw	a5,0(s0)
    3a10:	00042583          	lw	a1,0(s0)
    3a14:	00048613          	mv	a2,s1
    3a18:	000064b7          	lui	s1,0x6
    3a1c:	00010693          	mv	a3,sp
    3a20:	e1048513          	addi	a0,s1,-496 # 5e10 <_fs>
    3a24:	00000097          	auipc	ra,0x0
    3a28:	b58080e7          	jalr	-1192(ra) # 357c <fatfs_get_file_entry>
    3a2c:	f80508e3          	beqz	a0,39bc <_open_file+0x80>
    3a30:	00010513          	mv	a0,sp
    3a34:	fffff097          	auipc	ra,0xfffff
    3a38:	bd8080e7          	jalr	-1064(ra) # 260c <fatfs_entry_is_file>
    3a3c:	f80500e3          	beqz	a0,39bc <_open_file+0x80>
    3a40:	00b00613          	li	a2,11
    3a44:	00010593          	mv	a1,sp
    3a48:	21c40513          	addi	a0,s0,540
    3a4c:	ffffe097          	auipc	ra,0xffffe
    3a50:	c04080e7          	jalr	-1020(ra) # 1650 <memcpy>
    3a54:	01c12783          	lw	a5,28(sp)
    3a58:	01a15703          	lhu	a4,26(sp)
    3a5c:	00042423          	sw	zero,8(s0)
    3a60:	00f42623          	sw	a5,12(s0)
    3a64:	01415783          	lhu	a5,20(sp)
    3a68:	42042a23          	sw	zero,1076(s0)
    3a6c:	00042823          	sw	zero,16(s0)
    3a70:	01079793          	slli	a5,a5,0x10
    3a74:	00e787b3          	add	a5,a5,a4
    3a78:	00f42223          	sw	a5,4(s0)
    3a7c:	fff00793          	li	a5,-1
    3a80:	42f42823          	sw	a5,1072(s0)
    3a84:	22f42423          	sw	a5,552(s0)
    3a88:	22f42623          	sw	a5,556(s0)
    3a8c:	e1048513          	addi	a0,s1,-496
    3a90:	00000097          	auipc	ra,0x0
    3a94:	840080e7          	jalr	-1984(ra) # 32d0 <fatfs_fat_purge>
    3a98:	f35ff06f          	j	39cc <_open_file+0x90>
    3a9c:	00040593          	mv	a1,s0
    3aa0:	00090513          	mv	a0,s2
    3aa4:	00000097          	auipc	ra,0x0
    3aa8:	ce4080e7          	jalr	-796(ra) # 3788 <_open_directory>
    3aac:	f60512e3          	bnez	a0,3a10 <_open_file+0xd4>
    3ab0:	f0dff06f          	j	39bc <_open_file+0x80>

00003ab4 <fatfs_sfn_exists>:
    3ab4:	fe010113          	addi	sp,sp,-32
    3ab8:	00912a23          	sw	s1,20(sp)
    3abc:	01212823          	sw	s2,16(sp)
    3ac0:	01312623          	sw	s3,12(sp)
    3ac4:	01412423          	sw	s4,8(sp)
    3ac8:	01512223          	sw	s5,4(sp)
    3acc:	00112e23          	sw	ra,28(sp)
    3ad0:	00812c23          	sw	s0,24(sp)
    3ad4:	00050493          	mv	s1,a0
    3ad8:	00058993          	mv	s3,a1
    3adc:	00060a13          	mv	s4,a2
    3ae0:	00000913          	li	s2,0
    3ae4:	24450a93          	addi	s5,a0,580
    3ae8:	00000693          	li	a3,0
    3aec:	00090613          	mv	a2,s2
    3af0:	00098593          	mv	a1,s3
    3af4:	00048513          	mv	a0,s1
    3af8:	00000097          	auipc	ra,0x0
    3afc:	944080e7          	jalr	-1724(ra) # 343c <fatfs_sector_reader>
    3b00:	06050263          	beqz	a0,3b64 <fatfs_sfn_exists+0xb0>
    3b04:	04448413          	addi	s0,s1,68
    3b08:	00040513          	mv	a0,s0
    3b0c:	fffff097          	auipc	ra,0xfffff
    3b10:	a20080e7          	jalr	-1504(ra) # 252c <fatfs_entry_lfn_text>
    3b14:	02051e63          	bnez	a0,3b50 <fatfs_sfn_exists+0x9c>
    3b18:	00040513          	mv	a0,s0
    3b1c:	fffff097          	auipc	ra,0xfffff
    3b20:	a24080e7          	jalr	-1500(ra) # 2540 <fatfs_entry_lfn_invalid>
    3b24:	02051663          	bnez	a0,3b50 <fatfs_sfn_exists+0x9c>
    3b28:	00040513          	mv	a0,s0
    3b2c:	fffff097          	auipc	ra,0xfffff
    3b30:	a94080e7          	jalr	-1388(ra) # 25c0 <fatfs_entry_sfn_only>
    3b34:	00050e63          	beqz	a0,3b50 <fatfs_sfn_exists+0x9c>
    3b38:	00b00613          	li	a2,11
    3b3c:	000a0593          	mv	a1,s4
    3b40:	00040513          	mv	a0,s0
    3b44:	ffffe097          	auipc	ra,0xffffe
    3b48:	b50080e7          	jalr	-1200(ra) # 1694 <strncmp>
    3b4c:	00050a63          	beqz	a0,3b60 <fatfs_sfn_exists+0xac>
    3b50:	02040413          	addi	s0,s0,32
    3b54:	fb541ae3          	bne	s0,s5,3b08 <fatfs_sfn_exists+0x54>
    3b58:	00190913          	addi	s2,s2,1
    3b5c:	f8dff06f          	j	3ae8 <fatfs_sfn_exists+0x34>
    3b60:	00100513          	li	a0,1
    3b64:	01c12083          	lw	ra,28(sp)
    3b68:	01812403          	lw	s0,24(sp)
    3b6c:	01412483          	lw	s1,20(sp)
    3b70:	01012903          	lw	s2,16(sp)
    3b74:	00c12983          	lw	s3,12(sp)
    3b78:	00812a03          	lw	s4,8(sp)
    3b7c:	00412a83          	lw	s5,4(sp)
    3b80:	02010113          	addi	sp,sp,32
    3b84:	00008067          	ret

00003b88 <fatfs_update_file_length>:
    3b88:	03852783          	lw	a5,56(a0)
    3b8c:	14078e63          	beqz	a5,3ce8 <fatfs_update_file_length+0x160>
    3b90:	fd010113          	addi	sp,sp,-48
    3b94:	02912223          	sw	s1,36(sp)
    3b98:	03212023          	sw	s2,32(sp)
    3b9c:	01312e23          	sw	s3,28(sp)
    3ba0:	01412c23          	sw	s4,24(sp)
    3ba4:	01512a23          	sw	s5,20(sp)
    3ba8:	01612823          	sw	s6,16(sp)
    3bac:	01712623          	sw	s7,12(sp)
    3bb0:	02112623          	sw	ra,44(sp)
    3bb4:	02812423          	sw	s0,40(sp)
    3bb8:	00050493          	mv	s1,a0
    3bbc:	00058a13          	mv	s4,a1
    3bc0:	00060a93          	mv	s5,a2
    3bc4:	00068913          	mv	s2,a3
    3bc8:	00000993          	li	s3,0
    3bcc:	04450b93          	addi	s7,a0,68
    3bd0:	24450b13          	addi	s6,a0,580
    3bd4:	00000693          	li	a3,0
    3bd8:	00098613          	mv	a2,s3
    3bdc:	000a0593          	mv	a1,s4
    3be0:	00048513          	mv	a0,s1
    3be4:	00000097          	auipc	ra,0x0
    3be8:	858080e7          	jalr	-1960(ra) # 343c <fatfs_sector_reader>
    3bec:	0c050663          	beqz	a0,3cb8 <fatfs_update_file_length+0x130>
    3bf0:	000b8413          	mv	s0,s7
    3bf4:	00040513          	mv	a0,s0
    3bf8:	fffff097          	auipc	ra,0xfffff
    3bfc:	934080e7          	jalr	-1740(ra) # 252c <fatfs_entry_lfn_text>
    3c00:	0a051463          	bnez	a0,3ca8 <fatfs_update_file_length+0x120>
    3c04:	00040513          	mv	a0,s0
    3c08:	fffff097          	auipc	ra,0xfffff
    3c0c:	938080e7          	jalr	-1736(ra) # 2540 <fatfs_entry_lfn_invalid>
    3c10:	08051c63          	bnez	a0,3ca8 <fatfs_update_file_length+0x120>
    3c14:	00040513          	mv	a0,s0
    3c18:	fffff097          	auipc	ra,0xfffff
    3c1c:	9a8080e7          	jalr	-1624(ra) # 25c0 <fatfs_entry_sfn_only>
    3c20:	08050463          	beqz	a0,3ca8 <fatfs_update_file_length+0x120>
    3c24:	00b00613          	li	a2,11
    3c28:	000a8593          	mv	a1,s5
    3c2c:	00040513          	mv	a0,s0
    3c30:	ffffe097          	auipc	ra,0xffffe
    3c34:	a64080e7          	jalr	-1436(ra) # 1694 <strncmp>
    3c38:	06051863          	bnez	a0,3ca8 <fatfs_update_file_length+0x120>
    3c3c:	00895793          	srli	a5,s2,0x8
    3c40:	01240e23          	sb	s2,28(s0)
    3c44:	00f40ea3          	sb	a5,29(s0)
    3c48:	01095793          	srli	a5,s2,0x10
    3c4c:	01895913          	srli	s2,s2,0x18
    3c50:	00f40f23          	sb	a5,30(s0)
    3c54:	01240fa3          	sb	s2,31(s0)
    3c58:	00040593          	mv	a1,s0
    3c5c:	02000613          	li	a2,32
    3c60:	00040513          	mv	a0,s0
    3c64:	ffffe097          	auipc	ra,0xffffe
    3c68:	9ec080e7          	jalr	-1556(ra) # 1650 <memcpy>
    3c6c:	02812403          	lw	s0,40(sp)
    3c70:	0384a783          	lw	a5,56(s1)
    3c74:	2444a503          	lw	a0,580(s1)
    3c78:	02c12083          	lw	ra,44(sp)
    3c7c:	02412483          	lw	s1,36(sp)
    3c80:	02012903          	lw	s2,32(sp)
    3c84:	01c12983          	lw	s3,28(sp)
    3c88:	01812a03          	lw	s4,24(sp)
    3c8c:	01412a83          	lw	s5,20(sp)
    3c90:	01012b03          	lw	s6,16(sp)
    3c94:	000b8593          	mv	a1,s7
    3c98:	00c12b83          	lw	s7,12(sp)
    3c9c:	00100613          	li	a2,1
    3ca0:	03010113          	addi	sp,sp,48
    3ca4:	00078067          	jr	a5
    3ca8:	02040413          	addi	s0,s0,32
    3cac:	f56414e3          	bne	s0,s6,3bf4 <fatfs_update_file_length+0x6c>
    3cb0:	00198993          	addi	s3,s3,1
    3cb4:	f21ff06f          	j	3bd4 <fatfs_update_file_length+0x4c>
    3cb8:	02c12083          	lw	ra,44(sp)
    3cbc:	02812403          	lw	s0,40(sp)
    3cc0:	02412483          	lw	s1,36(sp)
    3cc4:	02012903          	lw	s2,32(sp)
    3cc8:	01c12983          	lw	s3,28(sp)
    3ccc:	01812a03          	lw	s4,24(sp)
    3cd0:	01412a83          	lw	s5,20(sp)
    3cd4:	01012b03          	lw	s6,16(sp)
    3cd8:	00c12b83          	lw	s7,12(sp)
    3cdc:	00000513          	li	a0,0
    3ce0:	03010113          	addi	sp,sp,48
    3ce4:	00008067          	ret
    3ce8:	00000513          	li	a0,0
    3cec:	00008067          	ret

00003cf0 <fatfs_list_directory_next>:
    3cf0:	ec010113          	addi	sp,sp,-320
    3cf4:	13212823          	sw	s2,304(sp)
    3cf8:	13312623          	sw	s3,300(sp)
    3cfc:	13412423          	sw	s4,296(sp)
    3d00:	13512223          	sw	s5,292(sp)
    3d04:	12112e23          	sw	ra,316(sp)
    3d08:	12812c23          	sw	s0,312(sp)
    3d0c:	12912a23          	sw	s1,308(sp)
    3d10:	00050a13          	mv	s4,a0
    3d14:	00058913          	mv	s2,a1
    3d18:	00060993          	mv	s3,a2
    3d1c:	10010ea3          	sb	zero,285(sp)
    3d20:	00f00a93          	li	s5,15
    3d24:	00092603          	lw	a2,0(s2)
    3d28:	00492583          	lw	a1,4(s2)
    3d2c:	00000693          	li	a3,0
    3d30:	000a0513          	mv	a0,s4
    3d34:	fffff097          	auipc	ra,0xfffff
    3d38:	708080e7          	jalr	1800(ra) # 343c <fatfs_sector_reader>
    3d3c:	12050263          	beqz	a0,3e60 <fatfs_list_directory_next+0x170>
    3d40:	00894483          	lbu	s1,8(s2)
    3d44:	00549413          	slli	s0,s1,0x5
    3d48:	04440413          	addi	s0,s0,68
    3d4c:	008a0433          	add	s0,s4,s0
    3d50:	009afc63          	bgeu	s5,s1,3d68 <fatfs_list_directory_next+0x78>
    3d54:	00092783          	lw	a5,0(s2)
    3d58:	00090423          	sb	zero,8(s2)
    3d5c:	00178793          	addi	a5,a5,1
    3d60:	00f92023          	sw	a5,0(s2)
    3d64:	fc1ff06f          	j	3d24 <fatfs_list_directory_next+0x34>
    3d68:	00040513          	mv	a0,s0
    3d6c:	ffffe097          	auipc	ra,0xffffe
    3d70:	7c0080e7          	jalr	1984(ra) # 252c <fatfs_entry_lfn_text>
    3d74:	02050263          	beqz	a0,3d98 <fatfs_list_directory_next+0xa8>
    3d78:	00040593          	mv	a1,s0
    3d7c:	01810513          	addi	a0,sp,24
    3d80:	ffffe097          	auipc	ra,0xffffe
    3d84:	6a4080e7          	jalr	1700(ra) # 2424 <fatfs_lfn_cache_entry>
    3d88:	00148493          	addi	s1,s1,1
    3d8c:	0ff4f493          	zext.b	s1,s1
    3d90:	02040413          	addi	s0,s0,32
    3d94:	fbdff06f          	j	3d50 <fatfs_list_directory_next+0x60>
    3d98:	00040513          	mv	a0,s0
    3d9c:	ffffe097          	auipc	ra,0xffffe
    3da0:	7a4080e7          	jalr	1956(ra) # 2540 <fatfs_entry_lfn_invalid>
    3da4:	00050663          	beqz	a0,3db0 <fatfs_list_directory_next+0xc0>
    3da8:	10010ea3          	sb	zero,285(sp)
    3dac:	fddff06f          	j	3d88 <fatfs_list_directory_next+0x98>
    3db0:	00040593          	mv	a1,s0
    3db4:	01810513          	addi	a0,sp,24
    3db8:	ffffe097          	auipc	ra,0xffffe
    3dbc:	7c0080e7          	jalr	1984(ra) # 2578 <fatfs_entry_lfn_exists>
    3dc0:	0c050263          	beqz	a0,3e84 <fatfs_list_directory_next+0x194>
    3dc4:	01810513          	addi	a0,sp,24
    3dc8:	ffffe097          	auipc	ra,0xffffe
    3dcc:	728080e7          	jalr	1832(ra) # 24f0 <fatfs_lfn_cache_get>
    3dd0:	00050593          	mv	a1,a0
    3dd4:	10300613          	li	a2,259
    3dd8:	00098513          	mv	a0,s3
    3ddc:	ffffe097          	auipc	ra,0xffffe
    3de0:	8f8080e7          	jalr	-1800(ra) # 16d4 <strncpy>
    3de4:	00040513          	mv	a0,s0
    3de8:	fffff097          	auipc	ra,0xfffff
    3dec:	814080e7          	jalr	-2028(ra) # 25fc <fatfs_entry_is_dir>
    3df0:	00a03533          	snez	a0,a0
    3df4:	10a98223          	sb	a0,260(s3)
    3df8:	01d44783          	lbu	a5,29(s0)
    3dfc:	01c44703          	lbu	a4,28(s0)
    3e00:	00148493          	addi	s1,s1,1
    3e04:	00879793          	slli	a5,a5,0x8
    3e08:	00e7e7b3          	or	a5,a5,a4
    3e0c:	01e44703          	lbu	a4,30(s0)
    3e10:	0ff4f493          	zext.b	s1,s1
    3e14:	00100513          	li	a0,1
    3e18:	01071713          	slli	a4,a4,0x10
    3e1c:	00f76733          	or	a4,a4,a5
    3e20:	01f44783          	lbu	a5,31(s0)
    3e24:	01879793          	slli	a5,a5,0x18
    3e28:	00e7e7b3          	or	a5,a5,a4
    3e2c:	10f9a623          	sw	a5,268(s3)
    3e30:	01544783          	lbu	a5,21(s0)
    3e34:	01444703          	lbu	a4,20(s0)
    3e38:	01a44683          	lbu	a3,26(s0)
    3e3c:	00879793          	slli	a5,a5,0x8
    3e40:	00e7e7b3          	or	a5,a5,a4
    3e44:	01b44703          	lbu	a4,27(s0)
    3e48:	01079793          	slli	a5,a5,0x10
    3e4c:	00871713          	slli	a4,a4,0x8
    3e50:	00d76733          	or	a4,a4,a3
    3e54:	00e7e7b3          	or	a5,a5,a4
    3e58:	10f9a423          	sw	a5,264(s3)
    3e5c:	00990423          	sb	s1,8(s2)
    3e60:	13c12083          	lw	ra,316(sp)
    3e64:	13812403          	lw	s0,312(sp)
    3e68:	13412483          	lw	s1,308(sp)
    3e6c:	13012903          	lw	s2,304(sp)
    3e70:	12c12983          	lw	s3,300(sp)
    3e74:	12812a03          	lw	s4,296(sp)
    3e78:	12412a83          	lw	s5,292(sp)
    3e7c:	14010113          	addi	sp,sp,320
    3e80:	00008067          	ret
    3e84:	00040513          	mv	a0,s0
    3e88:	ffffe097          	auipc	ra,0xffffe
    3e8c:	738080e7          	jalr	1848(ra) # 25c0 <fatfs_entry_sfn_only>
    3e90:	ee050ce3          	beqz	a0,3d88 <fatfs_list_directory_next+0x98>
    3e94:	00d00613          	li	a2,13
    3e98:	00000593          	li	a1,0
    3e9c:	00810513          	addi	a0,sp,8
    3ea0:	10010ea3          	sb	zero,285(sp)
    3ea4:	ffffd097          	auipc	ra,0xffffd
    3ea8:	790080e7          	jalr	1936(ra) # 1634 <memset>
    3eac:	00000793          	li	a5,0
    3eb0:	00800713          	li	a4,8
    3eb4:	00f40633          	add	a2,s0,a5
    3eb8:	00064603          	lbu	a2,0(a2)
    3ebc:	00810693          	addi	a3,sp,8
    3ec0:	00f686b3          	add	a3,a3,a5
    3ec4:	00c68023          	sb	a2,0(a3)
    3ec8:	00178793          	addi	a5,a5,1
    3ecc:	fee794e3          	bne	a5,a4,3eb4 <fatfs_list_directory_next+0x1c4>
    3ed0:	00844783          	lbu	a5,8(s0)
    3ed4:	00944683          	lbu	a3,9(s0)
    3ed8:	02000613          	li	a2,32
    3edc:	00f108a3          	sb	a5,17(sp)
    3ee0:	00d10923          	sb	a3,18(sp)
    3ee4:	00100713          	li	a4,1
    3ee8:	00c69663          	bne	a3,a2,3ef4 <fatfs_list_directory_next+0x204>
    3eec:	fe078793          	addi	a5,a5,-32
    3ef0:	00f03733          	snez	a4,a5
    3ef4:	00a44783          	lbu	a5,10(s0)
    3ef8:	02000693          	li	a3,32
    3efc:	00f109a3          	sb	a5,19(sp)
    3f00:	00d79663          	bne	a5,a3,3f0c <fatfs_list_directory_next+0x21c>
    3f04:	02000793          	li	a5,32
    3f08:	00070a63          	beqz	a4,3f1c <fatfs_list_directory_next+0x22c>
    3f0c:	00814703          	lbu	a4,8(sp)
    3f10:	02e00793          	li	a5,46
    3f14:	00f71463          	bne	a4,a5,3f1c <fatfs_list_directory_next+0x22c>
    3f18:	02000793          	li	a5,32
    3f1c:	00810593          	addi	a1,sp,8
    3f20:	00098513          	mv	a0,s3
    3f24:	00f10823          	sb	a5,16(sp)
    3f28:	fffff097          	auipc	ra,0xfffff
    3f2c:	034080e7          	jalr	52(ra) # 2f5c <fatfs_get_sfn_display_name>
    3f30:	eb5ff06f          	j	3de4 <fatfs_list_directory_next+0xf4>

00003f34 <fl_readdir>:
    3f34:	000057b7          	lui	a5,0x5
    3f38:	60c7a783          	lw	a5,1548(a5) # 560c <_filelib_init>
    3f3c:	fe010113          	addi	sp,sp,-32
    3f40:	00912a23          	sw	s1,20(sp)
    3f44:	01212823          	sw	s2,16(sp)
    3f48:	00112e23          	sw	ra,28(sp)
    3f4c:	00812c23          	sw	s0,24(sp)
    3f50:	01312623          	sw	s3,12(sp)
    3f54:	00050493          	mv	s1,a0
    3f58:	00058913          	mv	s2,a1
    3f5c:	00079663          	bnez	a5,3f68 <fl_readdir+0x34>
    3f60:	ffffe097          	auipc	ra,0xffffe
    3f64:	2b0080e7          	jalr	688(ra) # 2210 <fl_init>
    3f68:	00006437          	lui	s0,0x6
    3f6c:	e1040793          	addi	a5,s0,-496 # 5e10 <_fs>
    3f70:	03c7a783          	lw	a5,60(a5)
    3f74:	e1040993          	addi	s3,s0,-496
    3f78:	00078463          	beqz	a5,3f80 <fl_readdir+0x4c>
    3f7c:	000780e7          	jalr	a5
    3f80:	e1040513          	addi	a0,s0,-496
    3f84:	00090613          	mv	a2,s2
    3f88:	00048593          	mv	a1,s1
    3f8c:	00000097          	auipc	ra,0x0
    3f90:	d64080e7          	jalr	-668(ra) # 3cf0 <fatfs_list_directory_next>
    3f94:	0409a783          	lw	a5,64(s3)
    3f98:	00050413          	mv	s0,a0
    3f9c:	00078463          	beqz	a5,3fa4 <fl_readdir+0x70>
    3fa0:	000780e7          	jalr	a5
    3fa4:	01c12083          	lw	ra,28(sp)
    3fa8:	00143513          	seqz	a0,s0
    3fac:	01812403          	lw	s0,24(sp)
    3fb0:	01412483          	lw	s1,20(sp)
    3fb4:	01012903          	lw	s2,16(sp)
    3fb8:	00c12983          	lw	s3,12(sp)
    3fbc:	40a00533          	neg	a0,a0
    3fc0:	02010113          	addi	sp,sp,32
    3fc4:	00008067          	ret

00003fc8 <_read_sectors>:
    3fc8:	fd010113          	addi	sp,sp,-48
    3fcc:	01612823          	sw	s6,16(sp)
    3fd0:	00006b37          	lui	s6,0x6
    3fd4:	01512a23          	sw	s5,20(sp)
    3fd8:	e10b4a83          	lbu	s5,-496(s6) # 5e10 <_fs>
    3fdc:	01412c23          	sw	s4,24(sp)
    3fe0:	00058a13          	mv	s4,a1
    3fe4:	02912223          	sw	s1,36(sp)
    3fe8:	000a8593          	mv	a1,s5
    3fec:	00050493          	mv	s1,a0
    3ff0:	000a0513          	mv	a0,s4
    3ff4:	02112623          	sw	ra,44(sp)
    3ff8:	02812423          	sw	s0,40(sp)
    3ffc:	03212023          	sw	s2,32(sp)
    4000:	00068413          	mv	s0,a3
    4004:	01712623          	sw	s7,12(sp)
    4008:	01812423          	sw	s8,8(sp)
    400c:	01312e23          	sw	s3,28(sp)
    4010:	00060c13          	mv	s8,a2
    4014:	ffffd097          	auipc	ra,0xffffd
    4018:	574080e7          	jalr	1396(ra) # 1588 <__udivsi3>
    401c:	00050913          	mv	s2,a0
    4020:	000a8593          	mv	a1,s5
    4024:	000a0513          	mv	a0,s4
    4028:	ffffd097          	auipc	ra,0xffffd
    402c:	5a8080e7          	jalr	1448(ra) # 15d0 <__umodsi3>
    4030:	00a407b3          	add	a5,s0,a0
    4034:	00050b93          	mv	s7,a0
    4038:	00fafe63          	bgeu	s5,a5,4054 <_read_sectors+0x8c>
    403c:	00090593          	mv	a1,s2
    4040:	000a8513          	mv	a0,s5
    4044:	ffffe097          	auipc	ra,0xffffe
    4048:	d34080e7          	jalr	-716(ra) # 1d78 <__mulsi3>
    404c:	414a87b3          	sub	a5,s5,s4
    4050:	00f50433          	add	s0,a0,a5
    4054:	2284a983          	lw	s3,552(s1)
    4058:	07299863          	bne	s3,s2,40c8 <_read_sectors+0x100>
    405c:	22c4a583          	lw	a1,556(s1)
    4060:	fff00793          	li	a5,-1
    4064:	02f58663          	beq	a1,a5,4090 <_read_sectors+0xc8>
    4068:	e10b0513          	addi	a0,s6,-496
    406c:	ffffe097          	auipc	ra,0xffffe
    4070:	068080e7          	jalr	104(ra) # 20d4 <fatfs_lba_of_cluster>
    4074:	017505b3          	add	a1,a0,s7
    4078:	00040693          	mv	a3,s0
    407c:	000c0613          	mv	a2,s8
    4080:	e10b0513          	addi	a0,s6,-496
    4084:	ffffe097          	auipc	ra,0xffffe
    4088:	0a0080e7          	jalr	160(ra) # 2124 <fatfs_sector_read>
    408c:	00051463          	bnez	a0,4094 <_read_sectors+0xcc>
    4090:	00000413          	li	s0,0
    4094:	02c12083          	lw	ra,44(sp)
    4098:	00040513          	mv	a0,s0
    409c:	02812403          	lw	s0,40(sp)
    40a0:	02412483          	lw	s1,36(sp)
    40a4:	02012903          	lw	s2,32(sp)
    40a8:	01c12983          	lw	s3,28(sp)
    40ac:	01812a03          	lw	s4,24(sp)
    40b0:	01412a83          	lw	s5,20(sp)
    40b4:	01012b03          	lw	s6,16(sp)
    40b8:	00c12b83          	lw	s7,12(sp)
    40bc:	00812c03          	lw	s8,8(sp)
    40c0:	03010113          	addi	sp,sp,48
    40c4:	00008067          	ret
    40c8:	035a6463          	bltu	s4,s5,40f0 <_read_sectors+0x128>
    40cc:	00198793          	addi	a5,s3,1
    40d0:	03279063          	bne	a5,s2,40f0 <_read_sectors+0x128>
    40d4:	22c4a583          	lw	a1,556(s1)
    40d8:	0329e263          	bltu	s3,s2,40fc <_read_sectors+0x134>
    40dc:	fff00793          	li	a5,-1
    40e0:	faf588e3          	beq	a1,a5,4090 <_read_sectors+0xc8>
    40e4:	22b4a623          	sw	a1,556(s1)
    40e8:	2324a423          	sw	s2,552(s1)
    40ec:	f7dff06f          	j	4068 <_read_sectors+0xa0>
    40f0:	0044a583          	lw	a1,4(s1)
    40f4:	00000993          	li	s3,0
    40f8:	fe1ff06f          	j	40d8 <_read_sectors+0x110>
    40fc:	e10b0513          	addi	a0,s6,-496
    4100:	fffff097          	auipc	ra,0xfffff
    4104:	22c080e7          	jalr	556(ra) # 332c <fatfs_find_next_cluster>
    4108:	00050593          	mv	a1,a0
    410c:	00198993          	addi	s3,s3,1
    4110:	fc9ff06f          	j	40d8 <_read_sectors+0x110>

00004114 <fatfs_set_fs_info_next_free_cluster>:
    4114:	03052783          	lw	a5,48(a0)
    4118:	0a078863          	beqz	a5,41c8 <fatfs_set_fs_info_next_free_cluster+0xb4>
    411c:	ff010113          	addi	sp,sp,-16
    4120:	01c52783          	lw	a5,28(a0)
    4124:	01212023          	sw	s2,0(sp)
    4128:	00058913          	mv	s2,a1
    412c:	01855583          	lhu	a1,24(a0)
    4130:	00812423          	sw	s0,8(sp)
    4134:	00912223          	sw	s1,4(sp)
    4138:	00f585b3          	add	a1,a1,a5
    413c:	00112623          	sw	ra,12(sp)
    4140:	00050493          	mv	s1,a0
    4144:	ffffe097          	auipc	ra,0xffffe
    4148:	de4080e7          	jalr	-540(ra) # 1f28 <fatfs_fat_read_sector>
    414c:	00050413          	mv	s0,a0
    4150:	06050063          	beqz	a0,41b0 <fatfs_set_fs_info_next_free_cluster+0x9c>
    4154:	20852783          	lw	a5,520(a0)
    4158:	00895713          	srli	a4,s2,0x8
    415c:	1f278623          	sb	s2,492(a5)
    4160:	20852783          	lw	a5,520(a0)
    4164:	1ee786a3          	sb	a4,493(a5)
    4168:	20852783          	lw	a5,520(a0)
    416c:	01095713          	srli	a4,s2,0x10
    4170:	1ee78723          	sb	a4,494(a5)
    4174:	20852783          	lw	a5,520(a0)
    4178:	01895713          	srli	a4,s2,0x18
    417c:	1ee787a3          	sb	a4,495(a5)
    4180:	00100793          	li	a5,1
    4184:	20f52223          	sw	a5,516(a0)
    4188:	0384a783          	lw	a5,56(s1)
    418c:	0324a223          	sw	s2,36(s1)
    4190:	00078a63          	beqz	a5,41a4 <fatfs_set_fs_info_next_free_cluster+0x90>
    4194:	00050593          	mv	a1,a0
    4198:	20052503          	lw	a0,512(a0)
    419c:	00100613          	li	a2,1
    41a0:	000780e7          	jalr	a5
    41a4:	fff00793          	li	a5,-1
    41a8:	20f42023          	sw	a5,512(s0)
    41ac:	20042223          	sw	zero,516(s0)
    41b0:	00c12083          	lw	ra,12(sp)
    41b4:	00812403          	lw	s0,8(sp)
    41b8:	00412483          	lw	s1,4(sp)
    41bc:	00012903          	lw	s2,0(sp)
    41c0:	01010113          	addi	sp,sp,16
    41c4:	00008067          	ret
    41c8:	00008067          	ret

000041cc <fatfs_find_blank_cluster>:
    41cc:	fe010113          	addi	sp,sp,-32
    41d0:	01312623          	sw	s3,12(sp)
    41d4:	01512223          	sw	s5,4(sp)
    41d8:	000109b7          	lui	s3,0x10
    41dc:	10000ab7          	lui	s5,0x10000
    41e0:	00912a23          	sw	s1,20(sp)
    41e4:	01212823          	sw	s2,16(sp)
    41e8:	01412423          	sw	s4,8(sp)
    41ec:	00112e23          	sw	ra,28(sp)
    41f0:	00812c23          	sw	s0,24(sp)
    41f4:	00050913          	mv	s2,a0
    41f8:	00058493          	mv	s1,a1
    41fc:	00060a13          	mv	s4,a2
    4200:	fff98993          	addi	s3,s3,-1 # ffff <_files+0x9d87>
    4204:	fffa8a93          	addi	s5,s5,-1 # fffffff <__stacktop+0xffeffff>
    4208:	03092783          	lw	a5,48(s2)
    420c:	0074d413          	srli	s0,s1,0x7
    4210:	00079463          	bnez	a5,4218 <fatfs_find_blank_cluster+0x4c>
    4214:	0084d413          	srli	s0,s1,0x8
    4218:	02092783          	lw	a5,32(s2)
    421c:	0cf47463          	bgeu	s0,a5,42e4 <fatfs_find_blank_cluster+0x118>
    4220:	01492583          	lw	a1,20(s2)
    4224:	00090513          	mv	a0,s2
    4228:	00b405b3          	add	a1,s0,a1
    422c:	ffffe097          	auipc	ra,0xffffe
    4230:	cfc080e7          	jalr	-772(ra) # 1f28 <fatfs_fat_read_sector>
    4234:	0a050863          	beqz	a0,42e4 <fatfs_find_blank_cluster+0x118>
    4238:	03092783          	lw	a5,48(s2)
    423c:	20852703          	lw	a4,520(a0)
    4240:	04079c63          	bnez	a5,4298 <fatfs_find_blank_cluster+0xcc>
    4244:	00841413          	slli	s0,s0,0x8
    4248:	40848433          	sub	s0,s1,s0
    424c:	00141413          	slli	s0,s0,0x1
    4250:	01347433          	and	s0,s0,s3
    4254:	00870733          	add	a4,a4,s0
    4258:	00174783          	lbu	a5,1(a4)
    425c:	00074703          	lbu	a4,0(a4)
    4260:	00879793          	slli	a5,a5,0x8
    4264:	00e787b3          	add	a5,a5,a4
    4268:	06079a63          	bnez	a5,42dc <fatfs_find_blank_cluster+0x110>
    426c:	009a2023          	sw	s1,0(s4)
    4270:	00100513          	li	a0,1
    4274:	01c12083          	lw	ra,28(sp)
    4278:	01812403          	lw	s0,24(sp)
    427c:	01412483          	lw	s1,20(sp)
    4280:	01012903          	lw	s2,16(sp)
    4284:	00c12983          	lw	s3,12(sp)
    4288:	00812a03          	lw	s4,8(sp)
    428c:	00412a83          	lw	s5,4(sp)
    4290:	02010113          	addi	sp,sp,32
    4294:	00008067          	ret
    4298:	00741413          	slli	s0,s0,0x7
    429c:	40848433          	sub	s0,s1,s0
    42a0:	00241413          	slli	s0,s0,0x2
    42a4:	01347433          	and	s0,s0,s3
    42a8:	00870733          	add	a4,a4,s0
    42ac:	00374783          	lbu	a5,3(a4)
    42b0:	00274683          	lbu	a3,2(a4)
    42b4:	01879793          	slli	a5,a5,0x18
    42b8:	01069693          	slli	a3,a3,0x10
    42bc:	00d787b3          	add	a5,a5,a3
    42c0:	00074683          	lbu	a3,0(a4)
    42c4:	00174703          	lbu	a4,1(a4)
    42c8:	00d787b3          	add	a5,a5,a3
    42cc:	00871713          	slli	a4,a4,0x8
    42d0:	00e787b3          	add	a5,a5,a4
    42d4:	0157f7b3          	and	a5,a5,s5
    42d8:	f91ff06f          	j	4268 <fatfs_find_blank_cluster+0x9c>
    42dc:	00148493          	addi	s1,s1,1
    42e0:	f29ff06f          	j	4208 <fatfs_find_blank_cluster+0x3c>
    42e4:	00000513          	li	a0,0
    42e8:	f8dff06f          	j	4274 <fatfs_find_blank_cluster+0xa8>

000042ec <fatfs_fat_set_cluster>:
    42ec:	03052783          	lw	a5,48(a0)
    42f0:	fe010113          	addi	sp,sp,-32
    42f4:	00812c23          	sw	s0,24(sp)
    42f8:	00912a23          	sw	s1,20(sp)
    42fc:	01212823          	sw	s2,16(sp)
    4300:	01312623          	sw	s3,12(sp)
    4304:	00112e23          	sw	ra,28(sp)
    4308:	00050993          	mv	s3,a0
    430c:	00058413          	mv	s0,a1
    4310:	00060493          	mv	s1,a2
    4314:	0085d913          	srli	s2,a1,0x8
    4318:	00078463          	beqz	a5,4320 <fatfs_fat_set_cluster+0x34>
    431c:	0075d913          	srli	s2,a1,0x7
    4320:	0149a583          	lw	a1,20(s3)
    4324:	00098513          	mv	a0,s3
    4328:	00b905b3          	add	a1,s2,a1
    432c:	ffffe097          	auipc	ra,0xffffe
    4330:	bfc080e7          	jalr	-1028(ra) # 1f28 <fatfs_fat_read_sector>
    4334:	00050693          	mv	a3,a0
    4338:	00000513          	li	a0,0
    433c:	04068c63          	beqz	a3,4394 <fatfs_fat_set_cluster+0xa8>
    4340:	0309a703          	lw	a4,48(s3)
    4344:	2086a783          	lw	a5,520(a3)
    4348:	0ff4f613          	zext.b	a2,s1
    434c:	06071263          	bnez	a4,43b0 <fatfs_fat_set_cluster+0xc4>
    4350:	00891913          	slli	s2,s2,0x8
    4354:	41240433          	sub	s0,s0,s2
    4358:	00010737          	lui	a4,0x10
    435c:	00141413          	slli	s0,s0,0x1
    4360:	ffe70713          	addi	a4,a4,-2 # fffe <_files+0x9d86>
    4364:	00e47433          	and	s0,s0,a4
    4368:	008787b3          	add	a5,a5,s0
    436c:	00c78023          	sb	a2,0(a5)
    4370:	2086a783          	lw	a5,520(a3)
    4374:	01049493          	slli	s1,s1,0x10
    4378:	0104d493          	srli	s1,s1,0x10
    437c:	008787b3          	add	a5,a5,s0
    4380:	0084d493          	srli	s1,s1,0x8
    4384:	009780a3          	sb	s1,1(a5)
    4388:	00100793          	li	a5,1
    438c:	20f6a223          	sw	a5,516(a3)
    4390:	00100513          	li	a0,1
    4394:	01c12083          	lw	ra,28(sp)
    4398:	01812403          	lw	s0,24(sp)
    439c:	01412483          	lw	s1,20(sp)
    43a0:	01012903          	lw	s2,16(sp)
    43a4:	00c12983          	lw	s3,12(sp)
    43a8:	02010113          	addi	sp,sp,32
    43ac:	00008067          	ret
    43b0:	00791913          	slli	s2,s2,0x7
    43b4:	41240433          	sub	s0,s0,s2
    43b8:	00010737          	lui	a4,0x10
    43bc:	ffc70713          	addi	a4,a4,-4 # fffc <_files+0x9d84>
    43c0:	00241413          	slli	s0,s0,0x2
    43c4:	00e47433          	and	s0,s0,a4
    43c8:	008787b3          	add	a5,a5,s0
    43cc:	00c78023          	sb	a2,0(a5)
    43d0:	2086a783          	lw	a5,520(a3)
    43d4:	0084d713          	srli	a4,s1,0x8
    43d8:	008787b3          	add	a5,a5,s0
    43dc:	00e780a3          	sb	a4,1(a5)
    43e0:	2086a783          	lw	a5,520(a3)
    43e4:	0104d713          	srli	a4,s1,0x10
    43e8:	0184d493          	srli	s1,s1,0x18
    43ec:	008787b3          	add	a5,a5,s0
    43f0:	00e78123          	sb	a4,2(a5)
    43f4:	2086a783          	lw	a5,520(a3)
    43f8:	008787b3          	add	a5,a5,s0
    43fc:	009781a3          	sb	s1,3(a5)
    4400:	f89ff06f          	j	4388 <fatfs_fat_set_cluster+0x9c>

00004404 <fatfs_free_cluster_chain>:
    4404:	fe010113          	addi	sp,sp,-32
    4408:	00812c23          	sw	s0,24(sp)
    440c:	01212823          	sw	s2,16(sp)
    4410:	00112e23          	sw	ra,28(sp)
    4414:	00912a23          	sw	s1,20(sp)
    4418:	00050413          	mv	s0,a0
    441c:	ffd00913          	li	s2,-3
    4420:	fff58793          	addi	a5,a1,-1
    4424:	02f97063          	bgeu	s2,a5,4444 <fatfs_free_cluster_chain+0x40>
    4428:	01c12083          	lw	ra,28(sp)
    442c:	01812403          	lw	s0,24(sp)
    4430:	01412483          	lw	s1,20(sp)
    4434:	01012903          	lw	s2,16(sp)
    4438:	00100513          	li	a0,1
    443c:	02010113          	addi	sp,sp,32
    4440:	00008067          	ret
    4444:	00040513          	mv	a0,s0
    4448:	00b12623          	sw	a1,12(sp)
    444c:	fffff097          	auipc	ra,0xfffff
    4450:	ee0080e7          	jalr	-288(ra) # 332c <fatfs_find_next_cluster>
    4454:	00c12583          	lw	a1,12(sp)
    4458:	00050493          	mv	s1,a0
    445c:	00000613          	li	a2,0
    4460:	00040513          	mv	a0,s0
    4464:	00000097          	auipc	ra,0x0
    4468:	e88080e7          	jalr	-376(ra) # 42ec <fatfs_fat_set_cluster>
    446c:	00048593          	mv	a1,s1
    4470:	fb1ff06f          	j	4420 <fatfs_free_cluster_chain+0x1c>

00004474 <fatfs_fat_add_cluster_to_chain>:
    4474:	fff00793          	li	a5,-1
    4478:	02f59463          	bne	a1,a5,44a0 <fatfs_fat_add_cluster_to_chain+0x2c>
    447c:	00000513          	li	a0,0
    4480:	00008067          	ret
    4484:	00000513          	li	a0,0
    4488:	01c12083          	lw	ra,28(sp)
    448c:	01812403          	lw	s0,24(sp)
    4490:	01412483          	lw	s1,20(sp)
    4494:	01012903          	lw	s2,16(sp)
    4498:	02010113          	addi	sp,sp,32
    449c:	00008067          	ret
    44a0:	fe010113          	addi	sp,sp,-32
    44a4:	00812c23          	sw	s0,24(sp)
    44a8:	00912a23          	sw	s1,20(sp)
    44ac:	01212823          	sw	s2,16(sp)
    44b0:	00050413          	mv	s0,a0
    44b4:	00112e23          	sw	ra,28(sp)
    44b8:	00058513          	mv	a0,a1
    44bc:	00060493          	mv	s1,a2
    44c0:	fff00913          	li	s2,-1
    44c4:	00050593          	mv	a1,a0
    44c8:	00a12623          	sw	a0,12(sp)
    44cc:	00040513          	mv	a0,s0
    44d0:	fffff097          	auipc	ra,0xfffff
    44d4:	e5c080e7          	jalr	-420(ra) # 332c <fatfs_find_next_cluster>
    44d8:	fa0506e3          	beqz	a0,4484 <fatfs_fat_add_cluster_to_chain+0x10>
    44dc:	00c12583          	lw	a1,12(sp)
    44e0:	ff2512e3          	bne	a0,s2,44c4 <fatfs_fat_add_cluster_to_chain+0x50>
    44e4:	00048613          	mv	a2,s1
    44e8:	00040513          	mv	a0,s0
    44ec:	00000097          	auipc	ra,0x0
    44f0:	e00080e7          	jalr	-512(ra) # 42ec <fatfs_fat_set_cluster>
    44f4:	fff00613          	li	a2,-1
    44f8:	00048593          	mv	a1,s1
    44fc:	00040513          	mv	a0,s0
    4500:	00000097          	auipc	ra,0x0
    4504:	dec080e7          	jalr	-532(ra) # 42ec <fatfs_fat_set_cluster>
    4508:	00100513          	li	a0,1
    450c:	f7dff06f          	j	4488 <fatfs_fat_add_cluster_to_chain+0x14>

00004510 <fatfs_add_free_space>:
    4510:	02452703          	lw	a4,36(a0)
    4514:	fd010113          	addi	sp,sp,-48
    4518:	02812423          	sw	s0,40(sp)
    451c:	03212023          	sw	s2,32(sp)
    4520:	01412c23          	sw	s4,24(sp)
    4524:	01512a23          	sw	s5,20(sp)
    4528:	02112623          	sw	ra,44(sp)
    452c:	02912223          	sw	s1,36(sp)
    4530:	01312e23          	sw	s3,28(sp)
    4534:	fff00793          	li	a5,-1
    4538:	0005aa83          	lw	s5,0(a1)
    453c:	00050413          	mv	s0,a0
    4540:	00058913          	mv	s2,a1
    4544:	00060a13          	mv	s4,a2
    4548:	00f70863          	beq	a4,a5,4558 <fatfs_add_free_space+0x48>
    454c:	fff00593          	li	a1,-1
    4550:	00000097          	auipc	ra,0x0
    4554:	bc4080e7          	jalr	-1084(ra) # 4114 <fatfs_set_fs_info_next_free_cluster>
    4558:	00000493          	li	s1,0
    455c:	03449663          	bne	s1,s4,4588 <fatfs_add_free_space+0x78>
    4560:	00100513          	li	a0,1
    4564:	02c12083          	lw	ra,44(sp)
    4568:	02812403          	lw	s0,40(sp)
    456c:	02412483          	lw	s1,36(sp)
    4570:	02012903          	lw	s2,32(sp)
    4574:	01c12983          	lw	s3,28(sp)
    4578:	01812a03          	lw	s4,24(sp)
    457c:	01412a83          	lw	s5,20(sp)
    4580:	03010113          	addi	sp,sp,48
    4584:	00008067          	ret
    4588:	00842583          	lw	a1,8(s0)
    458c:	00c10613          	addi	a2,sp,12
    4590:	00040513          	mv	a0,s0
    4594:	00000097          	auipc	ra,0x0
    4598:	c38080e7          	jalr	-968(ra) # 41cc <fatfs_find_blank_cluster>
    459c:	fc0504e3          	beqz	a0,4564 <fatfs_add_free_space+0x54>
    45a0:	00c12983          	lw	s3,12(sp)
    45a4:	000a8593          	mv	a1,s5
    45a8:	00040513          	mv	a0,s0
    45ac:	00098613          	mv	a2,s3
    45b0:	00000097          	auipc	ra,0x0
    45b4:	d3c080e7          	jalr	-708(ra) # 42ec <fatfs_fat_set_cluster>
    45b8:	fff00613          	li	a2,-1
    45bc:	00098593          	mv	a1,s3
    45c0:	00040513          	mv	a0,s0
    45c4:	00000097          	auipc	ra,0x0
    45c8:	d28080e7          	jalr	-728(ra) # 42ec <fatfs_fat_set_cluster>
    45cc:	00049463          	bnez	s1,45d4 <fatfs_add_free_space+0xc4>
    45d0:	01392023          	sw	s3,0(s2)
    45d4:	00148493          	addi	s1,s1,1
    45d8:	00098a93          	mv	s5,s3
    45dc:	f81ff06f          	j	455c <fatfs_add_free_space+0x4c>

000045e0 <_write_sectors>:
    45e0:	fb010113          	addi	sp,sp,-80
    45e4:	03312e23          	sw	s3,60(sp)
    45e8:	000069b7          	lui	s3,0x6
    45ec:	03612823          	sw	s6,48(sp)
    45f0:	e109cb03          	lbu	s6,-496(s3) # 5e10 <_fs>
    45f4:	03512a23          	sw	s5,52(sp)
    45f8:	00058a93          	mv	s5,a1
    45fc:	fff00793          	li	a5,-1
    4600:	04812423          	sw	s0,72(sp)
    4604:	000b0593          	mv	a1,s6
    4608:	00050413          	mv	s0,a0
    460c:	000a8513          	mv	a0,s5
    4610:	00f12e23          	sw	a5,28(sp)
    4614:	04112623          	sw	ra,76(sp)
    4618:	04912223          	sw	s1,68(sp)
    461c:	05212023          	sw	s2,64(sp)
    4620:	03712623          	sw	s7,44(sp)
    4624:	03812423          	sw	s8,40(sp)
    4628:	00068b93          	mv	s7,a3
    462c:	03912223          	sw	s9,36(sp)
    4630:	03a12023          	sw	s10,32(sp)
    4634:	00060c93          	mv	s9,a2
    4638:	03412c23          	sw	s4,56(sp)
    463c:	ffffd097          	auipc	ra,0xffffd
    4640:	f4c080e7          	jalr	-180(ra) # 1588 <__udivsi3>
    4644:	00050493          	mv	s1,a0
    4648:	000b0593          	mv	a1,s6
    464c:	000a8513          	mv	a0,s5
    4650:	ffffd097          	auipc	ra,0xffffd
    4654:	f80080e7          	jalr	-128(ra) # 15d0 <__umodsi3>
    4658:	00ab87b3          	add	a5,s7,a0
    465c:	00050c13          	mv	s8,a0
    4660:	e1098d13          	addi	s10,s3,-496
    4664:	000b8913          	mv	s2,s7
    4668:	00fb7e63          	bgeu	s6,a5,4684 <_write_sectors+0xa4>
    466c:	00048593          	mv	a1,s1
    4670:	000b0513          	mv	a0,s6
    4674:	ffffd097          	auipc	ra,0xffffd
    4678:	704080e7          	jalr	1796(ra) # 1d78 <__mulsi3>
    467c:	415b07b3          	sub	a5,s6,s5
    4680:	00f50933          	add	s2,a0,a5
    4684:	22842a03          	lw	s4,552(s0)
    4688:	029a1a63          	bne	s4,s1,46bc <_write_sectors+0xdc>
    468c:	22c42583          	lw	a1,556(s0)
    4690:	e1098513          	addi	a0,s3,-496
    4694:	ffffe097          	auipc	ra,0xffffe
    4698:	a40080e7          	jalr	-1472(ra) # 20d4 <fatfs_lba_of_cluster>
    469c:	018505b3          	add	a1,a0,s8
    46a0:	00090693          	mv	a3,s2
    46a4:	000c8613          	mv	a2,s9
    46a8:	e1098513          	addi	a0,s3,-496
    46ac:	ffffe097          	auipc	ra,0xffffe
    46b0:	a90080e7          	jalr	-1392(ra) # 213c <fatfs_sector_write>
    46b4:	04050a63          	beqz	a0,4708 <_write_sectors+0x128>
    46b8:	0540006f          	j	470c <_write_sectors+0x12c>
    46bc:	096ae663          	bltu	s5,s6,4748 <_write_sectors+0x168>
    46c0:	001a0793          	addi	a5,s4,1
    46c4:	08979263          	bne	a5,s1,4748 <_write_sectors+0x168>
    46c8:	22c42583          	lw	a1,556(s0)
    46cc:	fff00a93          	li	s5,-1
    46d0:	089a6263          	bltu	s4,s1,4754 <_write_sectors+0x174>
    46d4:	fff00793          	li	a5,-1
    46d8:	0af59463          	bne	a1,a5,4780 <_write_sectors+0x1a0>
    46dc:	000d4583          	lbu	a1,0(s10)
    46e0:	fff58513          	addi	a0,a1,-1
    46e4:	01750533          	add	a0,a0,s7
    46e8:	ffffd097          	auipc	ra,0xffffd
    46ec:	ea0080e7          	jalr	-352(ra) # 1588 <__udivsi3>
    46f0:	00050613          	mv	a2,a0
    46f4:	01c10593          	addi	a1,sp,28
    46f8:	e1098513          	addi	a0,s3,-496
    46fc:	00000097          	auipc	ra,0x0
    4700:	e14080e7          	jalr	-492(ra) # 4510 <fatfs_add_free_space>
    4704:	06051c63          	bnez	a0,477c <_write_sectors+0x19c>
    4708:	00000913          	li	s2,0
    470c:	04c12083          	lw	ra,76(sp)
    4710:	04812403          	lw	s0,72(sp)
    4714:	04412483          	lw	s1,68(sp)
    4718:	03c12983          	lw	s3,60(sp)
    471c:	03812a03          	lw	s4,56(sp)
    4720:	03412a83          	lw	s5,52(sp)
    4724:	03012b03          	lw	s6,48(sp)
    4728:	02c12b83          	lw	s7,44(sp)
    472c:	02812c03          	lw	s8,40(sp)
    4730:	02412c83          	lw	s9,36(sp)
    4734:	02012d03          	lw	s10,32(sp)
    4738:	00090513          	mv	a0,s2
    473c:	04012903          	lw	s2,64(sp)
    4740:	05010113          	addi	sp,sp,80
    4744:	00008067          	ret
    4748:	00442583          	lw	a1,4(s0)
    474c:	00000a13          	li	s4,0
    4750:	f7dff06f          	j	46cc <_write_sectors+0xec>
    4754:	e1098513          	addi	a0,s3,-496
    4758:	00b12623          	sw	a1,12(sp)
    475c:	fffff097          	auipc	ra,0xfffff
    4760:	bd0080e7          	jalr	-1072(ra) # 332c <fatfs_find_next_cluster>
    4764:	00c12583          	lw	a1,12(sp)
    4768:	00b12e23          	sw	a1,28(sp)
    476c:	f75508e3          	beq	a0,s5,46dc <_write_sectors+0xfc>
    4770:	001a0a13          	addi	s4,s4,1
    4774:	00050593          	mv	a1,a0
    4778:	f59ff06f          	j	46d0 <_write_sectors+0xf0>
    477c:	01c12583          	lw	a1,28(sp)
    4780:	22b42623          	sw	a1,556(s0)
    4784:	22942423          	sw	s1,552(s0)
    4788:	f09ff06f          	j	4690 <_write_sectors+0xb0>

0000478c <fl_fflush>:
    478c:	000057b7          	lui	a5,0x5
    4790:	60c7a783          	lw	a5,1548(a5) # 560c <_filelib_init>
    4794:	ff010113          	addi	sp,sp,-16
    4798:	00812423          	sw	s0,8(sp)
    479c:	00112623          	sw	ra,12(sp)
    47a0:	00912223          	sw	s1,4(sp)
    47a4:	00050413          	mv	s0,a0
    47a8:	00079663          	bnez	a5,47b4 <fl_fflush+0x28>
    47ac:	ffffe097          	auipc	ra,0xffffe
    47b0:	a64080e7          	jalr	-1436(ra) # 2210 <fl_init>
    47b4:	04040863          	beqz	s0,4804 <fl_fflush+0x78>
    47b8:	000067b7          	lui	a5,0x6
    47bc:	e1078713          	addi	a4,a5,-496 # 5e10 <_fs>
    47c0:	03c72703          	lw	a4,60(a4)
    47c4:	e1078493          	addi	s1,a5,-496
    47c8:	00070463          	beqz	a4,47d0 <fl_fflush+0x44>
    47cc:	000700e7          	jalr	a4
    47d0:	43442783          	lw	a5,1076(s0)
    47d4:	02078263          	beqz	a5,47f8 <fl_fflush+0x6c>
    47d8:	43042583          	lw	a1,1072(s0)
    47dc:	00100693          	li	a3,1
    47e0:	23040613          	addi	a2,s0,560
    47e4:	00040513          	mv	a0,s0
    47e8:	00000097          	auipc	ra,0x0
    47ec:	df8080e7          	jalr	-520(ra) # 45e0 <_write_sectors>
    47f0:	00050463          	beqz	a0,47f8 <fl_fflush+0x6c>
    47f4:	42042a23          	sw	zero,1076(s0)
    47f8:	0404a783          	lw	a5,64(s1)
    47fc:	00078463          	beqz	a5,4804 <fl_fflush+0x78>
    4800:	000780e7          	jalr	a5
    4804:	00c12083          	lw	ra,12(sp)
    4808:	00812403          	lw	s0,8(sp)
    480c:	00412483          	lw	s1,4(sp)
    4810:	00000513          	li	a0,0
    4814:	01010113          	addi	sp,sp,16
    4818:	00008067          	ret

0000481c <fl_fclose>:
    481c:	000057b7          	lui	a5,0x5
    4820:	60c7a783          	lw	a5,1548(a5) # 560c <_filelib_init>
    4824:	ff010113          	addi	sp,sp,-16
    4828:	00812423          	sw	s0,8(sp)
    482c:	00112623          	sw	ra,12(sp)
    4830:	00912223          	sw	s1,4(sp)
    4834:	01212023          	sw	s2,0(sp)
    4838:	00050413          	mv	s0,a0
    483c:	00079663          	bnez	a5,4848 <fl_fclose+0x2c>
    4840:	ffffe097          	auipc	ra,0xffffe
    4844:	9d0080e7          	jalr	-1584(ra) # 2210 <fl_init>
    4848:	08040e63          	beqz	s0,48e4 <fl_fclose+0xc8>
    484c:	000064b7          	lui	s1,0x6
    4850:	e1048793          	addi	a5,s1,-496 # 5e10 <_fs>
    4854:	03c7a783          	lw	a5,60(a5)
    4858:	e1048913          	addi	s2,s1,-496
    485c:	00078463          	beqz	a5,4864 <fl_fclose+0x48>
    4860:	000780e7          	jalr	a5
    4864:	00040513          	mv	a0,s0
    4868:	00000097          	auipc	ra,0x0
    486c:	f24080e7          	jalr	-220(ra) # 478c <fl_fflush>
    4870:	01042783          	lw	a5,16(s0)
    4874:	00078e63          	beqz	a5,4890 <fl_fclose+0x74>
    4878:	00c42683          	lw	a3,12(s0)
    487c:	00042583          	lw	a1,0(s0)
    4880:	21c40613          	addi	a2,s0,540
    4884:	e1048513          	addi	a0,s1,-496
    4888:	fffff097          	auipc	ra,0xfffff
    488c:	300080e7          	jalr	768(ra) # 3b88 <fatfs_update_file_length>
    4890:	fff00793          	li	a5,-1
    4894:	42f42823          	sw	a5,1072(s0)
    4898:	00040513          	mv	a0,s0
    489c:	00042423          	sw	zero,8(s0)
    48a0:	00042623          	sw	zero,12(s0)
    48a4:	00042223          	sw	zero,4(s0)
    48a8:	42042a23          	sw	zero,1076(s0)
    48ac:	00042823          	sw	zero,16(s0)
    48b0:	ffffd097          	auipc	ra,0xffffd
    48b4:	7dc080e7          	jalr	2012(ra) # 208c <_free_file>
    48b8:	e1048513          	addi	a0,s1,-496
    48bc:	fffff097          	auipc	ra,0xfffff
    48c0:	a14080e7          	jalr	-1516(ra) # 32d0 <fatfs_fat_purge>
    48c4:	04092783          	lw	a5,64(s2)
    48c8:	00078e63          	beqz	a5,48e4 <fl_fclose+0xc8>
    48cc:	00812403          	lw	s0,8(sp)
    48d0:	00c12083          	lw	ra,12(sp)
    48d4:	00412483          	lw	s1,4(sp)
    48d8:	00012903          	lw	s2,0(sp)
    48dc:	01010113          	addi	sp,sp,16
    48e0:	00078067          	jr	a5
    48e4:	00c12083          	lw	ra,12(sp)
    48e8:	00812403          	lw	s0,8(sp)
    48ec:	00412483          	lw	s1,4(sp)
    48f0:	00012903          	lw	s2,0(sp)
    48f4:	01010113          	addi	sp,sp,16
    48f8:	00008067          	ret

000048fc <fl_fread>:
    48fc:	fd010113          	addi	sp,sp,-48
    4900:	01612823          	sw	s6,16(sp)
    4904:	00050b13          	mv	s6,a0
    4908:	00058513          	mv	a0,a1
    490c:	00060593          	mv	a1,a2
    4910:	02812423          	sw	s0,40(sp)
    4914:	02912223          	sw	s1,36(sp)
    4918:	02112623          	sw	ra,44(sp)
    491c:	03212023          	sw	s2,32(sp)
    4920:	01312e23          	sw	s3,28(sp)
    4924:	01412c23          	sw	s4,24(sp)
    4928:	01512a23          	sw	s5,20(sp)
    492c:	01712623          	sw	s7,12(sp)
    4930:	01812423          	sw	s8,8(sp)
    4934:	01912223          	sw	s9,4(sp)
    4938:	00068413          	mv	s0,a3
    493c:	ffffd097          	auipc	ra,0xffffd
    4940:	43c080e7          	jalr	1084(ra) # 1d78 <__mulsi3>
    4944:	000057b7          	lui	a5,0x5
    4948:	60c7a783          	lw	a5,1548(a5) # 560c <_filelib_init>
    494c:	00050493          	mv	s1,a0
    4950:	00079663          	bnez	a5,495c <fl_fread+0x60>
    4954:	ffffe097          	auipc	ra,0xffffe
    4958:	8bc080e7          	jalr	-1860(ra) # 2210 <fl_init>
    495c:	120b0e63          	beqz	s6,4a98 <fl_fread+0x19c>
    4960:	12040c63          	beqz	s0,4a98 <fl_fread+0x19c>
    4964:	43844783          	lbu	a5,1080(s0)
    4968:	0017f793          	andi	a5,a5,1
    496c:	12078663          	beqz	a5,4a98 <fl_fread+0x19c>
    4970:	0a048e63          	beqz	s1,4a2c <fl_fread+0x130>
    4974:	00842583          	lw	a1,8(s0)
    4978:	00c42783          	lw	a5,12(s0)
    497c:	10f5fe63          	bgeu	a1,a5,4a98 <fl_fread+0x19c>
    4980:	00b48733          	add	a4,s1,a1
    4984:	00e7f463          	bgeu	a5,a4,498c <fl_fread+0x90>
    4988:	40b784b3          	sub	s1,a5,a1
    498c:	0095da13          	srli	s4,a1,0x9
    4990:	1ff5f913          	andi	s2,a1,511
    4994:	00000993          	li	s3,0
    4998:	23040b93          	addi	s7,s0,560
    499c:	20000c13          	li	s8,512
    49a0:	1ff00c93          	li	s9,511
    49a4:	0899d263          	bge	s3,s1,4a28 <fl_fread+0x12c>
    49a8:	04091463          	bnez	s2,49f0 <fl_fread+0xf4>
    49ac:	413486b3          	sub	a3,s1,s3
    49b0:	04dcd063          	bge	s9,a3,49f0 <fl_fread+0xf4>
    49b4:	4096d693          	srai	a3,a3,0x9
    49b8:	013b0633          	add	a2,s6,s3
    49bc:	000a0593          	mv	a1,s4
    49c0:	00040513          	mv	a0,s0
    49c4:	fffff097          	auipc	ra,0xfffff
    49c8:	604080e7          	jalr	1540(ra) # 3fc8 <_read_sectors>
    49cc:	04050e63          	beqz	a0,4a28 <fl_fread+0x12c>
    49d0:	00951a93          	slli	s5,a0,0x9
    49d4:	00aa0a33          	add	s4,s4,a0
    49d8:	00842783          	lw	a5,8(s0)
    49dc:	015989b3          	add	s3,s3,s5
    49e0:	00000913          	li	s2,0
    49e4:	015787b3          	add	a5,a5,s5
    49e8:	00f42423          	sw	a5,8(s0)
    49ec:	fb9ff06f          	j	49a4 <fl_fread+0xa8>
    49f0:	43042783          	lw	a5,1072(s0)
    49f4:	07478c63          	beq	a5,s4,4a6c <fl_fread+0x170>
    49f8:	43442783          	lw	a5,1076(s0)
    49fc:	00078863          	beqz	a5,4a0c <fl_fread+0x110>
    4a00:	00040513          	mv	a0,s0
    4a04:	00000097          	auipc	ra,0x0
    4a08:	d88080e7          	jalr	-632(ra) # 478c <fl_fflush>
    4a0c:	00100693          	li	a3,1
    4a10:	000b8613          	mv	a2,s7
    4a14:	000a0593          	mv	a1,s4
    4a18:	00040513          	mv	a0,s0
    4a1c:	fffff097          	auipc	ra,0xfffff
    4a20:	5ac080e7          	jalr	1452(ra) # 3fc8 <_read_sectors>
    4a24:	04051063          	bnez	a0,4a64 <fl_fread+0x168>
    4a28:	00098493          	mv	s1,s3
    4a2c:	02c12083          	lw	ra,44(sp)
    4a30:	02812403          	lw	s0,40(sp)
    4a34:	02012903          	lw	s2,32(sp)
    4a38:	01c12983          	lw	s3,28(sp)
    4a3c:	01812a03          	lw	s4,24(sp)
    4a40:	01412a83          	lw	s5,20(sp)
    4a44:	01012b03          	lw	s6,16(sp)
    4a48:	00c12b83          	lw	s7,12(sp)
    4a4c:	00812c03          	lw	s8,8(sp)
    4a50:	00412c83          	lw	s9,4(sp)
    4a54:	00048513          	mv	a0,s1
    4a58:	02412483          	lw	s1,36(sp)
    4a5c:	03010113          	addi	sp,sp,48
    4a60:	00008067          	ret
    4a64:	43442823          	sw	s4,1072(s0)
    4a68:	42042a23          	sw	zero,1076(s0)
    4a6c:	412c07b3          	sub	a5,s8,s2
    4a70:	41348ab3          	sub	s5,s1,s3
    4a74:	0157d463          	bge	a5,s5,4a7c <fl_fread+0x180>
    4a78:	00078a93          	mv	s5,a5
    4a7c:	000a8613          	mv	a2,s5
    4a80:	012b85b3          	add	a1,s7,s2
    4a84:	013b0533          	add	a0,s6,s3
    4a88:	ffffd097          	auipc	ra,0xffffd
    4a8c:	bc8080e7          	jalr	-1080(ra) # 1650 <memcpy>
    4a90:	001a0a13          	addi	s4,s4,1
    4a94:	f45ff06f          	j	49d8 <fl_fread+0xdc>
    4a98:	fff00493          	li	s1,-1
    4a9c:	f91ff06f          	j	4a2c <fl_fread+0x130>

00004aa0 <fatfs_allocate_free_space>:
    4aa0:	02069a63          	bnez	a3,4ad4 <fatfs_allocate_free_space+0x34>
    4aa4:	00000513          	li	a0,0
    4aa8:	00008067          	ret
    4aac:	00000513          	li	a0,0
    4ab0:	02c12083          	lw	ra,44(sp)
    4ab4:	02812403          	lw	s0,40(sp)
    4ab8:	02412483          	lw	s1,36(sp)
    4abc:	02012903          	lw	s2,32(sp)
    4ac0:	01c12983          	lw	s3,28(sp)
    4ac4:	01812a03          	lw	s4,24(sp)
    4ac8:	01412a83          	lw	s5,20(sp)
    4acc:	03010113          	addi	sp,sp,48
    4ad0:	00008067          	ret
    4ad4:	02452703          	lw	a4,36(a0)
    4ad8:	fd010113          	addi	sp,sp,-48
    4adc:	02812423          	sw	s0,40(sp)
    4ae0:	03212023          	sw	s2,32(sp)
    4ae4:	01312e23          	sw	s3,28(sp)
    4ae8:	01512a23          	sw	s5,20(sp)
    4aec:	02112623          	sw	ra,44(sp)
    4af0:	02912223          	sw	s1,36(sp)
    4af4:	01412c23          	sw	s4,24(sp)
    4af8:	fff00793          	li	a5,-1
    4afc:	00050413          	mv	s0,a0
    4b00:	00058a93          	mv	s5,a1
    4b04:	00060993          	mv	s3,a2
    4b08:	00068913          	mv	s2,a3
    4b0c:	00f70863          	beq	a4,a5,4b1c <fatfs_allocate_free_space+0x7c>
    4b10:	fff00593          	li	a1,-1
    4b14:	fffff097          	auipc	ra,0xfffff
    4b18:	600080e7          	jalr	1536(ra) # 4114 <fatfs_set_fs_info_next_free_cluster>
    4b1c:	00044a03          	lbu	s4,0(s0)
    4b20:	00090513          	mv	a0,s2
    4b24:	009a1a13          	slli	s4,s4,0x9
    4b28:	000a0593          	mv	a1,s4
    4b2c:	ffffd097          	auipc	ra,0xffffd
    4b30:	a5c080e7          	jalr	-1444(ra) # 1588 <__udivsi3>
    4b34:	00050493          	mv	s1,a0
    4b38:	00050593          	mv	a1,a0
    4b3c:	000a0513          	mv	a0,s4
    4b40:	ffffd097          	auipc	ra,0xffffd
    4b44:	238080e7          	jalr	568(ra) # 1d78 <__mulsi3>
    4b48:	01250463          	beq	a0,s2,4b50 <fatfs_allocate_free_space+0xb0>
    4b4c:	00148493          	addi	s1,s1,1
    4b50:	040a8463          	beqz	s5,4b98 <fatfs_allocate_free_space+0xf8>
    4b54:	00842583          	lw	a1,8(s0)
    4b58:	00c10613          	addi	a2,sp,12
    4b5c:	00040513          	mv	a0,s0
    4b60:	fffff097          	auipc	ra,0xfffff
    4b64:	66c080e7          	jalr	1644(ra) # 41cc <fatfs_find_blank_cluster>
    4b68:	f40502e3          	beqz	a0,4aac <fatfs_allocate_free_space+0xc>
    4b6c:	00100793          	li	a5,1
    4b70:	02f49863          	bne	s1,a5,4ba0 <fatfs_allocate_free_space+0x100>
    4b74:	00c12483          	lw	s1,12(sp)
    4b78:	fff00613          	li	a2,-1
    4b7c:	00040513          	mv	a0,s0
    4b80:	00048593          	mv	a1,s1
    4b84:	fffff097          	auipc	ra,0xfffff
    4b88:	768080e7          	jalr	1896(ra) # 42ec <fatfs_fat_set_cluster>
    4b8c:	00100513          	li	a0,1
    4b90:	0099a023          	sw	s1,0(s3)
    4b94:	f1dff06f          	j	4ab0 <fatfs_allocate_free_space+0x10>
    4b98:	0009a783          	lw	a5,0(s3)
    4b9c:	00f12623          	sw	a5,12(sp)
    4ba0:	00048613          	mv	a2,s1
    4ba4:	00c10593          	addi	a1,sp,12
    4ba8:	00040513          	mv	a0,s0
    4bac:	00000097          	auipc	ra,0x0
    4bb0:	964080e7          	jalr	-1692(ra) # 4510 <fatfs_add_free_space>
    4bb4:	00a03533          	snez	a0,a0
    4bb8:	ef9ff06f          	j	4ab0 <fatfs_allocate_free_space+0x10>

00004bbc <fatfs_add_file_entry>:
    4bbc:	f8010113          	addi	sp,sp,-128
    4bc0:	00f12a23          	sw	a5,20(sp)
    4bc4:	03852783          	lw	a5,56(a0)
    4bc8:	06112e23          	sw	ra,124(sp)
    4bcc:	06812c23          	sw	s0,120(sp)
    4bd0:	06912a23          	sw	s1,116(sp)
    4bd4:	07212823          	sw	s2,112(sp)
    4bd8:	07312623          	sw	s3,108(sp)
    4bdc:	07412423          	sw	s4,104(sp)
    4be0:	07512223          	sw	s5,100(sp)
    4be4:	07612023          	sw	s6,96(sp)
    4be8:	05712e23          	sw	s7,92(sp)
    4bec:	05812c23          	sw	s8,88(sp)
    4bf0:	05912a23          	sw	s9,84(sp)
    4bf4:	05a12823          	sw	s10,80(sp)
    4bf8:	05b12623          	sw	s11,76(sp)
    4bfc:	00b12423          	sw	a1,8(sp)
    4c00:	00c12623          	sw	a2,12(sp)
    4c04:	00e12823          	sw	a4,16(sp)
    4c08:	01012c23          	sw	a6,24(sp)
    4c0c:	04079263          	bnez	a5,4c50 <fatfs_add_file_entry+0x94>
    4c10:	00000513          	li	a0,0
    4c14:	07c12083          	lw	ra,124(sp)
    4c18:	07812403          	lw	s0,120(sp)
    4c1c:	07412483          	lw	s1,116(sp)
    4c20:	07012903          	lw	s2,112(sp)
    4c24:	06c12983          	lw	s3,108(sp)
    4c28:	06812a03          	lw	s4,104(sp)
    4c2c:	06412a83          	lw	s5,100(sp)
    4c30:	06012b03          	lw	s6,96(sp)
    4c34:	05c12b83          	lw	s7,92(sp)
    4c38:	05812c03          	lw	s8,88(sp)
    4c3c:	05412c83          	lw	s9,84(sp)
    4c40:	05012d03          	lw	s10,80(sp)
    4c44:	04c12d83          	lw	s11,76(sp)
    4c48:	08010113          	addi	sp,sp,128
    4c4c:	00008067          	ret
    4c50:	00050413          	mv	s0,a0
    4c54:	00c12503          	lw	a0,12(sp)
    4c58:	00068a93          	mv	s5,a3
    4c5c:	ffffe097          	auipc	ra,0xffffe
    4c60:	9c0080e7          	jalr	-1600(ra) # 261c <fatfs_lfn_entries_required>
    4c64:	00150713          	addi	a4,a0,1
    4c68:	00100793          	li	a5,1
    4c6c:	00050493          	mv	s1,a0
    4c70:	fae7f0e3          	bgeu	a5,a4,4c10 <fatfs_add_file_entry+0x54>
    4c74:	00000913          	li	s2,0
    4c78:	00000a13          	li	s4,0
    4c7c:	00000993          	li	s3,0
    4c80:	00000b13          	li	s6,0
    4c84:	00000d93          	li	s11,0
    4c88:	0e500b93          	li	s7,229
    4c8c:	01000c13          	li	s8,16
    4c90:	00812583          	lw	a1,8(sp)
    4c94:	00000693          	li	a3,0
    4c98:	00090613          	mv	a2,s2
    4c9c:	00040513          	mv	a0,s0
    4ca0:	ffffe097          	auipc	ra,0xffffe
    4ca4:	79c080e7          	jalr	1948(ra) # 343c <fatfs_sector_reader>
    4ca8:	14050463          	beqz	a0,4df0 <fatfs_add_file_entry+0x234>
    4cac:	04440d13          	addi	s10,s0,68
    4cb0:	000d8793          	mv	a5,s11
    4cb4:	00000c93          	li	s9,0
    4cb8:	000d0513          	mv	a0,s10
    4cbc:	00f12e23          	sw	a5,28(sp)
    4cc0:	ffffe097          	auipc	ra,0xffffe
    4cc4:	86c080e7          	jalr	-1940(ra) # 252c <fatfs_entry_lfn_text>
    4cc8:	01c12783          	lw	a5,28(sp)
    4ccc:	00050d93          	mv	s11,a0
    4cd0:	02050c63          	beqz	a0,4d08 <fatfs_add_file_entry+0x14c>
    4cd4:	00079863          	bnez	a5,4ce4 <fatfs_add_file_entry+0x128>
    4cd8:	000c8a13          	mv	s4,s9
    4cdc:	00090993          	mv	s3,s2
    4ce0:	00100b13          	li	s6,1
    4ce4:	00178d93          	addi	s11,a5,1
    4ce8:	001c8713          	addi	a4,s9,1
    4cec:	0ff77c93          	zext.b	s9,a4
    4cf0:	020d0d13          	addi	s10,s10,32
    4cf4:	018c9663          	bne	s9,s8,4d00 <fatfs_add_file_entry+0x144>
    4cf8:	00190913          	addi	s2,s2,1
    4cfc:	f95ff06f          	j	4c90 <fatfs_add_file_entry+0xd4>
    4d00:	000d8793          	mv	a5,s11
    4d04:	fb5ff06f          	j	4cb8 <fatfs_add_file_entry+0xfc>
    4d08:	000d4603          	lbu	a2,0(s10)
    4d0c:	0d761c63          	bne	a2,s7,4de4 <fatfs_add_file_entry+0x228>
    4d10:	00079863          	bnez	a5,4d20 <fatfs_add_file_entry+0x164>
    4d14:	000c8a13          	mv	s4,s9
    4d18:	00090993          	mv	s3,s2
    4d1c:	00100b13          	li	s6,1
    4d20:	00178d93          	addi	s11,a5,1
    4d24:	fc97c2e3          	blt	a5,s1,4ce8 <fatfs_add_file_entry+0x12c>
    4d28:	00ba8693          	addi	a3,s5,11
    4d2c:	000a8713          	mv	a4,s5
    4d30:	00000913          	li	s2,0
    4d34:	00074603          	lbu	a2,0(a4)
    4d38:	00195793          	srli	a5,s2,0x1
    4d3c:	00791913          	slli	s2,s2,0x7
    4d40:	0127e7b3          	or	a5,a5,s2
    4d44:	00170713          	addi	a4,a4,1
    4d48:	00c787b3          	add	a5,a5,a2
    4d4c:	0ff7f913          	zext.b	s2,a5
    4d50:	fed712e3          	bne	a4,a3,4d34 <fatfs_add_file_entry+0x178>
    4d54:	00098b13          	mv	s6,s3
    4d58:	00000d93          	li	s11,0
    4d5c:	04440c13          	addi	s8,s0,68
    4d60:	01000c93          	li	s9,16
    4d64:	00812583          	lw	a1,8(sp)
    4d68:	00000693          	li	a3,0
    4d6c:	000b0613          	mv	a2,s6
    4d70:	00040513          	mv	a0,s0
    4d74:	ffffe097          	auipc	ra,0xffffe
    4d78:	6c8080e7          	jalr	1736(ra) # 343c <fatfs_sector_reader>
    4d7c:	e8050ae3          	beqz	a0,4c10 <fatfs_add_file_entry+0x54>
    4d80:	000c0b93          	mv	s7,s8
    4d84:	00000713          	li	a4,0
    4d88:	00000d13          	li	s10,0
    4d8c:	000d9663          	bnez	s11,4d98 <fatfs_add_file_entry+0x1dc>
    4d90:	11699863          	bne	s3,s6,4ea0 <fatfs_add_file_entry+0x2e4>
    4d94:	114d1663          	bne	s10,s4,4ea0 <fatfs_add_file_entry+0x2e4>
    4d98:	0e049263          	bnez	s1,4e7c <fatfs_add_file_entry+0x2c0>
    4d9c:	01812703          	lw	a4,24(sp)
    4da0:	01012603          	lw	a2,16(sp)
    4da4:	01412583          	lw	a1,20(sp)
    4da8:	02010693          	addi	a3,sp,32
    4dac:	000a8513          	mv	a0,s5
    4db0:	ffffe097          	auipc	ra,0xffffe
    4db4:	9c4080e7          	jalr	-1596(ra) # 2774 <fatfs_sfn_create_entry>
    4db8:	02010593          	addi	a1,sp,32
    4dbc:	02000613          	li	a2,32
    4dc0:	000b8513          	mv	a0,s7
    4dc4:	ffffd097          	auipc	ra,0xffffd
    4dc8:	88c080e7          	jalr	-1908(ra) # 1650 <memcpy>
    4dcc:	03842783          	lw	a5,56(s0)
    4dd0:	24442503          	lw	a0,580(s0)
    4dd4:	00100613          	li	a2,1
    4dd8:	000c0593          	mv	a1,s8
    4ddc:	000780e7          	jalr	a5
    4de0:	e35ff06f          	j	4c14 <fatfs_add_file_entry+0x58>
    4de4:	f20606e3          	beqz	a2,4d10 <fatfs_add_file_entry+0x154>
    4de8:	00000b13          	li	s6,0
    4dec:	efdff06f          	j	4ce8 <fatfs_add_file_entry+0x12c>
    4df0:	00842583          	lw	a1,8(s0)
    4df4:	02010613          	addi	a2,sp,32
    4df8:	00040513          	mv	a0,s0
    4dfc:	fffff097          	auipc	ra,0xfffff
    4e00:	3d0080e7          	jalr	976(ra) # 41cc <fatfs_find_blank_cluster>
    4e04:	e00506e3          	beqz	a0,4c10 <fatfs_add_file_entry+0x54>
    4e08:	02012b83          	lw	s7,32(sp)
    4e0c:	00812583          	lw	a1,8(sp)
    4e10:	00040513          	mv	a0,s0
    4e14:	000b8613          	mv	a2,s7
    4e18:	fffff097          	auipc	ra,0xfffff
    4e1c:	65c080e7          	jalr	1628(ra) # 4474 <fatfs_fat_add_cluster_to_chain>
    4e20:	de0508e3          	beqz	a0,4c10 <fatfs_add_file_entry+0x54>
    4e24:	20000613          	li	a2,512
    4e28:	00000593          	li	a1,0
    4e2c:	04440513          	addi	a0,s0,68
    4e30:	ffffd097          	auipc	ra,0xffffd
    4e34:	804080e7          	jalr	-2044(ra) # 1634 <memset>
    4e38:	00000c13          	li	s8,0
    4e3c:	00044783          	lbu	a5,0(s0)
    4e40:	00fc6a63          	bltu	s8,a5,4e54 <fatfs_add_file_entry+0x298>
    4e44:	ee0b12e3          	bnez	s6,4d28 <fatfs_add_file_entry+0x16c>
    4e48:	00090993          	mv	s3,s2
    4e4c:	00000a13          	li	s4,0
    4e50:	ed9ff06f          	j	4d28 <fatfs_add_file_entry+0x16c>
    4e54:	00000693          	li	a3,0
    4e58:	000c0613          	mv	a2,s8
    4e5c:	000b8593          	mv	a1,s7
    4e60:	00040513          	mv	a0,s0
    4e64:	ffffd097          	auipc	ra,0xffffd
    4e68:	2f0080e7          	jalr	752(ra) # 2154 <fatfs_write_sector>
    4e6c:	da0502e3          	beqz	a0,4c10 <fatfs_add_file_entry+0x54>
    4e70:	001c0c13          	addi	s8,s8,1
    4e74:	0ffc7c13          	zext.b	s8,s8
    4e78:	fc5ff06f          	j	4e3c <fatfs_add_file_entry+0x280>
    4e7c:	00c12503          	lw	a0,12(sp)
    4e80:	fff48493          	addi	s1,s1,-1
    4e84:	00090693          	mv	a3,s2
    4e88:	00048613          	mv	a2,s1
    4e8c:	000b8593          	mv	a1,s7
    4e90:	ffffd097          	auipc	ra,0xffffd
    4e94:	7bc080e7          	jalr	1980(ra) # 264c <fatfs_filename_to_lfn>
    4e98:	00100d93          	li	s11,1
    4e9c:	00100713          	li	a4,1
    4ea0:	001d0793          	addi	a5,s10,1
    4ea4:	0ff7fd13          	zext.b	s10,a5
    4ea8:	020b8b93          	addi	s7,s7,32
    4eac:	ef9d10e3          	bne	s10,s9,4d8c <fatfs_add_file_entry+0x1d0>
    4eb0:	00070e63          	beqz	a4,4ecc <fatfs_add_file_entry+0x310>
    4eb4:	03842783          	lw	a5,56(s0)
    4eb8:	24442503          	lw	a0,580(s0)
    4ebc:	00100613          	li	a2,1
    4ec0:	000c0593          	mv	a1,s8
    4ec4:	000780e7          	jalr	a5
    4ec8:	d40504e3          	beqz	a0,4c10 <fatfs_add_file_entry+0x54>
    4ecc:	001b0b13          	addi	s6,s6,1
    4ed0:	e95ff06f          	j	4d64 <fatfs_add_file_entry+0x1a8>

00004ed4 <fl_fopen>:
    4ed4:	000057b7          	lui	a5,0x5
    4ed8:	60c7a783          	lw	a5,1548(a5) # 560c <_filelib_init>
    4edc:	fa010113          	addi	sp,sp,-96
    4ee0:	04812c23          	sw	s0,88(sp)
    4ee4:	05412423          	sw	s4,72(sp)
    4ee8:	04112e23          	sw	ra,92(sp)
    4eec:	04912a23          	sw	s1,84(sp)
    4ef0:	05212823          	sw	s2,80(sp)
    4ef4:	05312623          	sw	s3,76(sp)
    4ef8:	05512223          	sw	s5,68(sp)
    4efc:	05612023          	sw	s6,64(sp)
    4f00:	03712e23          	sw	s7,60(sp)
    4f04:	03812c23          	sw	s8,56(sp)
    4f08:	03912a23          	sw	s9,52(sp)
    4f0c:	00050a13          	mv	s4,a0
    4f10:	00058413          	mv	s0,a1
    4f14:	00079663          	bnez	a5,4f20 <fl_fopen+0x4c>
    4f18:	ffffd097          	auipc	ra,0xffffd
    4f1c:	2f8080e7          	jalr	760(ra) # 2210 <fl_init>
    4f20:	000057b7          	lui	a5,0x5
    4f24:	6087a783          	lw	a5,1544(a5) # 5608 <_filelib_valid>
    4f28:	36078c63          	beqz	a5,52a0 <fl_fopen+0x3cc>
    4f2c:	360a0a63          	beqz	s4,52a0 <fl_fopen+0x3cc>
    4f30:	10040863          	beqz	s0,5040 <fl_fopen+0x16c>
    4f34:	00040513          	mv	a0,s0
    4f38:	ffffc097          	auipc	ra,0xffffc
    4f3c:	73c080e7          	jalr	1852(ra) # 1674 <strlen>
    4f40:	00000493          	li	s1,0
    4f44:	00000713          	li	a4,0
    4f48:	05700693          	li	a3,87
    4f4c:	07200613          	li	a2,114
    4f50:	07700813          	li	a6,119
    4f54:	06100893          	li	a7,97
    4f58:	06200313          	li	t1,98
    4f5c:	04100593          	li	a1,65
    4f60:	04200e13          	li	t3,66
    4f64:	05200e93          	li	t4,82
    4f68:	02b00f13          	li	t5,43
    4f6c:	10a74663          	blt	a4,a0,5078 <fl_fopen+0x1a4>
    4f70:	00006937          	lui	s2,0x6
    4f74:	e1090793          	addi	a5,s2,-496 # 5e10 <_fs>
    4f78:	0387a783          	lw	a5,56(a5)
    4f7c:	e1090b13          	addi	s6,s2,-496
    4f80:	00079463          	bnez	a5,4f88 <fl_fopen+0xb4>
    4f84:	0d94f493          	andi	s1,s1,217
    4f88:	03cb2783          	lw	a5,60(s6)
    4f8c:	00078463          	beqz	a5,4f94 <fl_fopen+0xc0>
    4f90:	000780e7          	jalr	a5
    4f94:	0014fc93          	andi	s9,s1,1
    4f98:	160c9863          	bnez	s9,5108 <fl_fopen+0x234>
    4f9c:	0204f793          	andi	a5,s1,32
    4fa0:	08078863          	beqz	a5,5030 <fl_fopen+0x15c>
    4fa4:	038b2783          	lw	a5,56(s6)
    4fa8:	06078a63          	beqz	a5,501c <fl_fopen+0x148>
    4fac:	ffffd097          	auipc	ra,0xffffd
    4fb0:	06c080e7          	jalr	108(ra) # 2018 <_allocate_file>
    4fb4:	00050413          	mv	s0,a0
    4fb8:	06050263          	beqz	a0,501c <fl_fopen+0x148>
    4fbc:	01450b93          	addi	s7,a0,20
    4fc0:	10400613          	li	a2,260
    4fc4:	00000593          	li	a1,0
    4fc8:	000b8513          	mv	a0,s7
    4fcc:	ffffc097          	auipc	ra,0xffffc
    4fd0:	668080e7          	jalr	1640(ra) # 1634 <memset>
    4fd4:	11840a93          	addi	s5,s0,280
    4fd8:	10400613          	li	a2,260
    4fdc:	00000593          	li	a1,0
    4fe0:	000a8513          	mv	a0,s5
    4fe4:	ffffc097          	auipc	ra,0xffffc
    4fe8:	650080e7          	jalr	1616(ra) # 1634 <memset>
    4fec:	10400713          	li	a4,260
    4ff0:	000a8693          	mv	a3,s5
    4ff4:	10400613          	li	a2,260
    4ff8:	000b8593          	mv	a1,s7
    4ffc:	000a0513          	mv	a0,s4
    5000:	ffffe097          	auipc	ra,0xffffe
    5004:	c78080e7          	jalr	-904(ra) # 2c78 <fatfs_split_path>
    5008:	fff00793          	li	a5,-1
    500c:	10f51c63          	bne	a0,a5,5124 <fl_fopen+0x250>
    5010:	00040513          	mv	a0,s0
    5014:	ffffd097          	auipc	ra,0xffffd
    5018:	078080e7          	jalr	120(ra) # 208c <_free_file>
    501c:	00000413          	li	s0,0
    5020:	260c9c63          	bnez	s9,5298 <fl_fopen+0x3c4>
    5024:	0e041c63          	bnez	s0,511c <fl_fopen+0x248>
    5028:	0064f793          	andi	a5,s1,6
    502c:	24079e63          	bnez	a5,5288 <fl_fopen+0x3b4>
    5030:	00000413          	li	s0,0
    5034:	040b2783          	lw	a5,64(s6)
    5038:	00078463          	beqz	a5,5040 <fl_fopen+0x16c>
    503c:	000780e7          	jalr	a5
    5040:	05c12083          	lw	ra,92(sp)
    5044:	00040513          	mv	a0,s0
    5048:	05812403          	lw	s0,88(sp)
    504c:	05412483          	lw	s1,84(sp)
    5050:	05012903          	lw	s2,80(sp)
    5054:	04c12983          	lw	s3,76(sp)
    5058:	04812a03          	lw	s4,72(sp)
    505c:	04412a83          	lw	s5,68(sp)
    5060:	04012b03          	lw	s6,64(sp)
    5064:	03c12b83          	lw	s7,60(sp)
    5068:	03812c03          	lw	s8,56(sp)
    506c:	03412c83          	lw	s9,52(sp)
    5070:	06010113          	addi	sp,sp,96
    5074:	00008067          	ret
    5078:	00e407b3          	add	a5,s0,a4
    507c:	0007c783          	lbu	a5,0(a5)
    5080:	04d78463          	beq	a5,a3,50c8 <fl_fopen+0x1f4>
    5084:	02f6e463          	bltu	a3,a5,50ac <fl_fopen+0x1d8>
    5088:	04b78463          	beq	a5,a1,50d0 <fl_fopen+0x1fc>
    508c:	00f5e863          	bltu	a1,a5,509c <fl_fopen+0x1c8>
    5090:	05e78463          	beq	a5,t5,50d8 <fl_fopen+0x204>
    5094:	00170713          	addi	a4,a4,1
    5098:	ed5ff06f          	j	4f6c <fl_fopen+0x98>
    509c:	03c78063          	beq	a5,t3,50bc <fl_fopen+0x1e8>
    50a0:	ffd79ae3          	bne	a5,t4,5094 <fl_fopen+0x1c0>
    50a4:	0014e493          	ori	s1,s1,1
    50a8:	fedff06f          	j	5094 <fl_fopen+0x1c0>
    50ac:	fec78ce3          	beq	a5,a2,50a4 <fl_fopen+0x1d0>
    50b0:	00f66a63          	bltu	a2,a5,50c4 <fl_fopen+0x1f0>
    50b4:	01178e63          	beq	a5,a7,50d0 <fl_fopen+0x1fc>
    50b8:	fc679ee3          	bne	a5,t1,5094 <fl_fopen+0x1c0>
    50bc:	0084e493          	ori	s1,s1,8
    50c0:	fd5ff06f          	j	5094 <fl_fopen+0x1c0>
    50c4:	fd0798e3          	bne	a5,a6,5094 <fl_fopen+0x1c0>
    50c8:	0324e493          	ori	s1,s1,50
    50cc:	fc9ff06f          	j	5094 <fl_fopen+0x1c0>
    50d0:	0264e493          	ori	s1,s1,38
    50d4:	fc1ff06f          	j	5094 <fl_fopen+0x1c0>
    50d8:	0014f793          	andi	a5,s1,1
    50dc:	00078663          	beqz	a5,50e8 <fl_fopen+0x214>
    50e0:	0024e493          	ori	s1,s1,2
    50e4:	fb1ff06f          	j	5094 <fl_fopen+0x1c0>
    50e8:	0024f793          	andi	a5,s1,2
    50ec:	00078663          	beqz	a5,50f8 <fl_fopen+0x224>
    50f0:	0314e493          	ori	s1,s1,49
    50f4:	fa1ff06f          	j	5094 <fl_fopen+0x1c0>
    50f8:	0044f793          	andi	a5,s1,4
    50fc:	f8078ce3          	beqz	a5,5094 <fl_fopen+0x1c0>
    5100:	0274e493          	ori	s1,s1,39
    5104:	f91ff06f          	j	5094 <fl_fopen+0x1c0>
    5108:	000a0513          	mv	a0,s4
    510c:	fffff097          	auipc	ra,0xfffff
    5110:	830080e7          	jalr	-2000(ra) # 393c <_open_file>
    5114:	00050413          	mv	s0,a0
    5118:	e80502e3          	beqz	a0,4f9c <fl_fopen+0xc8>
    511c:	42940c23          	sb	s1,1080(s0)
    5120:	f15ff06f          	j	5034 <fl_fopen+0x160>
    5124:	00040513          	mv	a0,s0
    5128:	ffffe097          	auipc	ra,0xffffe
    512c:	da4080e7          	jalr	-604(ra) # 2ecc <_check_file_open>
    5130:	00050993          	mv	s3,a0
    5134:	ec051ee3          	bnez	a0,5010 <fl_fopen+0x13c>
    5138:	01444783          	lbu	a5,20(s0)
    513c:	0e079663          	bnez	a5,5228 <fl_fopen+0x354>
    5140:	008b2783          	lw	a5,8(s6)
    5144:	00f42023          	sw	a5,0(s0)
    5148:	00042583          	lw	a1,0(s0)
    514c:	01010693          	addi	a3,sp,16
    5150:	000a8613          	mv	a2,s5
    5154:	e1090513          	addi	a0,s2,-496
    5158:	ffffe097          	auipc	ra,0xffffe
    515c:	424080e7          	jalr	1060(ra) # 357c <fatfs_get_file_entry>
    5160:	00100793          	li	a5,1
    5164:	eaf506e3          	beq	a0,a5,5010 <fl_fopen+0x13c>
    5168:	00042223          	sw	zero,4(s0)
    516c:	00100693          	li	a3,1
    5170:	00440613          	addi	a2,s0,4
    5174:	00100593          	li	a1,1
    5178:	e1090513          	addi	a0,s2,-496
    517c:	00000097          	auipc	ra,0x0
    5180:	924080e7          	jalr	-1756(ra) # 4aa0 <fatfs_allocate_free_space>
    5184:	e80506e3          	beqz	a0,5010 <fl_fopen+0x13c>
    5188:	00002c37          	lui	s8,0x2
    518c:	21c40b93          	addi	s7,s0,540
    5190:	70fc0c13          	addi	s8,s8,1807 # 270f <fatfs_filename_to_lfn+0xc3>
    5194:	000a8593          	mv	a1,s5
    5198:	00410513          	addi	a0,sp,4
    519c:	ffffd097          	auipc	ra,0xffffd
    51a0:	680080e7          	jalr	1664(ra) # 281c <fatfs_lfn_create_sfn>
    51a4:	08098e63          	beqz	s3,5240 <fl_fopen+0x36c>
    51a8:	00098613          	mv	a2,s3
    51ac:	00410593          	addi	a1,sp,4
    51b0:	000b8513          	mv	a0,s7
    51b4:	ffffd097          	auipc	ra,0xffffd
    51b8:	7e4080e7          	jalr	2020(ra) # 2998 <fatfs_lfn_generate_tail>
    51bc:	00042583          	lw	a1,0(s0)
    51c0:	000b8613          	mv	a2,s7
    51c4:	e1090513          	addi	a0,s2,-496
    51c8:	fffff097          	auipc	ra,0xfffff
    51cc:	8ec080e7          	jalr	-1812(ra) # 3ab4 <fatfs_sfn_exists>
    51d0:	00050663          	beqz	a0,51dc <fl_fopen+0x308>
    51d4:	00198993          	addi	s3,s3,1
    51d8:	fb899ee3          	bne	s3,s8,5194 <fl_fopen+0x2c0>
    51dc:	00442703          	lw	a4,4(s0)
    51e0:	000027b7          	lui	a5,0x2
    51e4:	70f78793          	addi	a5,a5,1807 # 270f <fatfs_filename_to_lfn+0xc3>
    51e8:	00070593          	mv	a1,a4
    51ec:	02f98663          	beq	s3,a5,5218 <fl_fopen+0x344>
    51f0:	00042583          	lw	a1,0(s0)
    51f4:	00000813          	li	a6,0
    51f8:	00000793          	li	a5,0
    51fc:	000b8693          	mv	a3,s7
    5200:	000a8613          	mv	a2,s5
    5204:	e1090513          	addi	a0,s2,-496
    5208:	00000097          	auipc	ra,0x0
    520c:	9b4080e7          	jalr	-1612(ra) # 4bbc <fatfs_add_file_entry>
    5210:	04051463          	bnez	a0,5258 <fl_fopen+0x384>
    5214:	00442583          	lw	a1,4(s0)
    5218:	e1090513          	addi	a0,s2,-496
    521c:	fffff097          	auipc	ra,0xfffff
    5220:	1e8080e7          	jalr	488(ra) # 4404 <fatfs_free_cluster_chain>
    5224:	dedff06f          	j	5010 <fl_fopen+0x13c>
    5228:	00040593          	mv	a1,s0
    522c:	000b8513          	mv	a0,s7
    5230:	ffffe097          	auipc	ra,0xffffe
    5234:	558080e7          	jalr	1368(ra) # 3788 <_open_directory>
    5238:	f00518e3          	bnez	a0,5148 <fl_fopen+0x274>
    523c:	dd5ff06f          	j	5010 <fl_fopen+0x13c>
    5240:	00b00613          	li	a2,11
    5244:	00410593          	addi	a1,sp,4
    5248:	000b8513          	mv	a0,s7
    524c:	ffffc097          	auipc	ra,0xffffc
    5250:	404080e7          	jalr	1028(ra) # 1650 <memcpy>
    5254:	f69ff06f          	j	51bc <fl_fopen+0x2e8>
    5258:	fff00793          	li	a5,-1
    525c:	00042623          	sw	zero,12(s0)
    5260:	00042423          	sw	zero,8(s0)
    5264:	42f42823          	sw	a5,1072(s0)
    5268:	42042a23          	sw	zero,1076(s0)
    526c:	00042823          	sw	zero,16(s0)
    5270:	22f42423          	sw	a5,552(s0)
    5274:	22f42623          	sw	a5,556(s0)
    5278:	e1090513          	addi	a0,s2,-496
    527c:	ffffe097          	auipc	ra,0xffffe
    5280:	054080e7          	jalr	84(ra) # 32d0 <fatfs_fat_purge>
    5284:	d9dff06f          	j	5020 <fl_fopen+0x14c>
    5288:	000a0513          	mv	a0,s4
    528c:	ffffe097          	auipc	ra,0xffffe
    5290:	6b0080e7          	jalr	1712(ra) # 393c <_open_file>
    5294:	00050413          	mv	s0,a0
    5298:	e80412e3          	bnez	s0,511c <fl_fopen+0x248>
    529c:	d95ff06f          	j	5030 <fl_fopen+0x15c>
    52a0:	00000413          	li	s0,0
    52a4:	d9dff06f          	j	5040 <fl_fopen+0x16c>

000052a8 <cmd16>:
    52a8:	02000050 00001500                       P.......

000052b0 <acmd41>:
    52b0:	00004069 00000100                       i@......

000052b8 <cmd55>:
    52b8:	00000077 00000100                       w.......

000052c0 <cmd8>:
    52c0:	01000048 000087aa                       H.......

000052c8 <cmd0>:
    52c8:	00000040 00009500                       @.......

000052d0 <AUDIO>:
    52d0:	00018000                                ....

000052d4 <DISPLAY>:
    52d4:	00014000                                .@..

000052d8 <RGBSEL>:
    52d8:	00012000                                . ..

000052dc <BUTTONS>:
    52dc:	00010100                                ....

000052e0 <SDCARD>:
    52e0:	00010080                                ....

000052e4 <OLED_RST>:
    52e4:	00010010                                ....

000052e8 <OLED>:
    52e8:	00010008                                ....

000052ec <LEDS>:
    52ec:	00010004 73756d2f 00006369 74696e69     ..../music..init
    52fc:	20647320 202e2e2e 00000000 000a6b6f      sd ... ....ok..
    530c:	20202020 3d3d3d3d 616c7020 20726579         ==== player 
    531c:	3d3d3d3d 20202020 00000a0a 2e206f6e     ====    ....no .
    532c:	20776172 2f206e69 6973756d 00000a63     raw in /music...
    533c:	203e6425 000a7325 00006272 2073250a     %d> %s..rb...%s 
    534c:	20746f6e 6e756f66 00000a64 616c700a     not found....pla
    535c:	676e6979 20732520 0a2e2e2e 00000000     ying %s ........
    536c:	676d692f 676d692f 7761722e 00000000     /img/img.raw....
    537c:	656e6f64 00000a2e 33323130 37363534     done....01234567
    538c:	42413938 46454443 00000000 5f544146     89ABCDEF....FAT_
    539c:	203a5346 6f727245 6f632072 20646c75     FS: Error could 
    53ac:	20746f6e 64616f6c 54414620 74656420     not load FAT det
    53bc:	736c6961 64252820 0a0d2129 00000000     ails (%d)!......

000053cc <font>:
    53cc:	00000000 00002f00 00030000 14000003     ...../..........
    53dc:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    53ec:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    53fc:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    540c:	00080800 00200000 20000000 02040810     ...... .... ....
    541c:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    542c:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    543c:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    544c:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    545c:	00141400 0a110000 01000004 0007052d     ............-...
    546c:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    547c:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    548c:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    549c:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    54ac:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    54bc:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    54cc:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    54dc:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    54ec:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    54fc:	003f2102 01020000 20000201 00000020     .!?........  ...
    550c:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    551c:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    552c:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    553c:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    554c:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    555c:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    556c:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    557c:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    558c:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    559c:	043f2100 02010000 00000102 00000000     .!?.............
    55ac:	00000001 00000003 00000005 00000007     ................
    55bc:	00000009 0000000e 00000010 00000012     ................
    55cc:	00000014 00000016 00000018 0000001c     ................
    55dc:	0000001e                                ....

000055e0 <file_count>:
    55e0:	00000000                                ....

000055e4 <sdcard_while_loading_callback>:
    55e4:	00000000                                ....

000055e8 <back_color>:
	...

000055e9 <front_color>:
    55e9:	                                         ...

000055ec <cursor_y>:
    55ec:	00000000                                ....

000055f0 <cursor_x>:
    55f0:	00000000                                ....

000055f4 <f_putchar>:
    55f4:	00000000                                ....

000055f8 <_free_file_list>:
	...

00005600 <_open_file_list>:
	...

00005608 <_filelib_valid>:
    5608:	00000000                                ....

0000560c <_filelib_init>:
    560c:	00000000                                ....
