
code.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00001097          	auipc	ra,0x1
       8:	58c080e7          	jalr	1420(ra) # 1590 <main>
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
      3c:	000067b7          	lui	a5,0x6
      40:	3dc7a783          	lw	a5,988(a5) # 63dc <LEDS>
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

0000006c <draw_controls>:
      6c:	fd010113          	addi	sp,sp,-48 # ffd0 <_files+0x8b74>
      70:	02912223          	sw	s1,36(sp)
      74:	03212023          	sw	s2,32(sp)
      78:	00058493          	mv	s1,a1
      7c:	00050913          	mv	s2,a0
      80:	00000593          	li	a1,0
      84:	0ff00513          	li	a0,255
      88:	02812423          	sw	s0,40(sp)
      8c:	02112623          	sw	ra,44(sp)
      90:	00060413          	mv	s0,a2
      94:	00003097          	auipc	ra,0x3
      98:	9a8080e7          	jalr	-1624(ra) # 2a3c <display_set_front_back_color>
      9c:	16090663          	beqz	s2,208 <draw_controls+0x19c>
      a0:	000066b7          	lui	a3,0x6
      a4:	3e068693          	addi	a3,a3,992 # 63e0 <LEDS+0x4>
      a8:	00200793          	li	a5,2
      ac:	16f48463          	beq	s1,a5,214 <draw_controls+0x1a8>
      b0:	00100793          	li	a5,1
      b4:	16f49663          	bne	s1,a5,220 <draw_controls+0x1b4>
      b8:	000065b7          	lui	a1,0x6
      bc:	3f858593          	addi	a1,a1,1016 # 63f8 <LEDS+0x1c>
      c0:	00200793          	li	a5,2
      c4:	16f40463          	beq	s0,a5,22c <draw_controls+0x1c0>
      c8:	00100793          	li	a5,1
      cc:	16f41663          	bne	s0,a5,238 <draw_controls+0x1cc>
      d0:	00006737          	lui	a4,0x6
      d4:	40470713          	addi	a4,a4,1028 # 6404 <LEDS+0x28>
      d8:	02000793          	li	a5,32
      dc:	00f10023          	sb	a5,0(sp)
      e0:	01f00813          	li	a6,31
      e4:	00000793          	li	a5,0
      e8:	00f58533          	add	a0,a1,a5
      ec:	00054503          	lbu	a0,0(a0)
      f0:	00178613          	addi	a2,a5,1
      f4:	00050863          	beqz	a0,104 <draw_controls+0x98>
      f8:	15061663          	bne	a2,a6,244 <draw_controls+0x1d8>
      fc:	01e00793          	li	a5,30
     100:	01f00613          	li	a2,31
     104:	02060613          	addi	a2,a2,32
     108:	02000593          	li	a1,32
     10c:	00260633          	add	a2,a2,sp
     110:	feb60023          	sb	a1,-32(a2)
     114:	02078613          	addi	a2,a5,32
     118:	00260633          	add	a2,a2,sp
     11c:	feb60123          	sb	a1,-30(a2)
     120:	00478793          	addi	a5,a5,4
     124:	feb601a3          	sb	a1,-29(a2)
     128:	01e00513          	li	a0,30
     12c:	0006c583          	lbu	a1,0(a3)
     130:	00178613          	addi	a2,a5,1
     134:	00058663          	beqz	a1,140 <draw_controls+0xd4>
     138:	00168693          	addi	a3,a3,1
     13c:	10f55c63          	bge	a0,a5,254 <draw_controls+0x1e8>
     140:	02078693          	addi	a3,a5,32
     144:	002685b3          	add	a1,a3,sp
     148:	02060613          	addi	a2,a2,32
     14c:	02000693          	li	a3,32
     150:	fed58023          	sb	a3,-32(a1)
     154:	00260633          	add	a2,a2,sp
     158:	fed60023          	sb	a3,-32(a2)
     15c:	fed58123          	sb	a3,-30(a1)
     160:	00378793          	addi	a5,a5,3
     164:	01e00593          	li	a1,30
     168:	00074603          	lbu	a2,0(a4)
     16c:	00178693          	addi	a3,a5,1
     170:	00060663          	beqz	a2,17c <draw_controls+0x110>
     174:	00170713          	addi	a4,a4,1
     178:	0ef5d663          	bge	a1,a5,264 <draw_controls+0x1f8>
     17c:	02078793          	addi	a5,a5,32
     180:	002787b3          	add	a5,a5,sp
     184:	02000713          	li	a4,32
     188:	fee78023          	sb	a4,-32(a5)
     18c:	02068793          	addi	a5,a3,32
     190:	002786b3          	add	a3,a5,sp
     194:	fe068023          	sb	zero,-32(a3)
     198:	00000793          	li	a5,0
     19c:	00f10733          	add	a4,sp,a5
     1a0:	00074703          	lbu	a4,0(a4)
     1a4:	0c071863          	bnez	a4,274 <draw_controls+0x208>
     1a8:	00279713          	slli	a4,a5,0x2
     1ac:	00f70733          	add	a4,a4,a5
     1b0:	08000793          	li	a5,128
     1b4:	40e787b3          	sub	a5,a5,a4
     1b8:	fff00713          	li	a4,-1
     1bc:	00000513          	li	a0,0
     1c0:	00e7c863          	blt	a5,a4,1d0 <draw_controls+0x164>
     1c4:	01f7d513          	srli	a0,a5,0x1f
     1c8:	00f50533          	add	a0,a0,a5
     1cc:	40155513          	srai	a0,a0,0x1
     1d0:	06c00593          	li	a1,108
     1d4:	00003097          	auipc	ra,0x3
     1d8:	854080e7          	jalr	-1964(ra) # 2a28 <display_set_cursor>
     1dc:	00006537          	lui	a0,0x6
     1e0:	00010593          	mv	a1,sp
     1e4:	40850513          	addi	a0,a0,1032 # 6408 <LEDS+0x2c>
     1e8:	00003097          	auipc	ra,0x3
     1ec:	b44080e7          	jalr	-1212(ra) # 2d2c <printf>
     1f0:	02c12083          	lw	ra,44(sp)
     1f4:	02812403          	lw	s0,40(sp)
     1f8:	02412483          	lw	s1,36(sp)
     1fc:	02012903          	lw	s2,32(sp)
     200:	03010113          	addi	sp,sp,48
     204:	00008067          	ret
     208:	000066b7          	lui	a3,0x6
     20c:	3e868693          	addi	a3,a3,1000 # 63e8 <LEDS+0xc>
     210:	e99ff06f          	j	a8 <draw_controls+0x3c>
     214:	000065b7          	lui	a1,0x6
     218:	3f458593          	addi	a1,a1,1012 # 63f4 <LEDS+0x18>
     21c:	ea5ff06f          	j	c0 <draw_controls+0x54>
     220:	000065b7          	lui	a1,0x6
     224:	3f058593          	addi	a1,a1,1008 # 63f0 <LEDS+0x14>
     228:	e99ff06f          	j	c0 <draw_controls+0x54>
     22c:	00006737          	lui	a4,0x6
     230:	40070713          	addi	a4,a4,1024 # 6400 <LEDS+0x24>
     234:	ea5ff06f          	j	d8 <draw_controls+0x6c>
     238:	00006737          	lui	a4,0x6
     23c:	3fc70713          	addi	a4,a4,1020 # 63fc <LEDS+0x20>
     240:	e99ff06f          	j	d8 <draw_controls+0x6c>
     244:	00c107b3          	add	a5,sp,a2
     248:	00a78023          	sb	a0,0(a5)
     24c:	00060793          	mv	a5,a2
     250:	e99ff06f          	j	e8 <draw_controls+0x7c>
     254:	00f107b3          	add	a5,sp,a5
     258:	00b78023          	sb	a1,0(a5)
     25c:	00060793          	mv	a5,a2
     260:	ecdff06f          	j	12c <draw_controls+0xc0>
     264:	00f107b3          	add	a5,sp,a5
     268:	00c78023          	sb	a2,0(a5)
     26c:	00068793          	mv	a5,a3
     270:	ef9ff06f          	j	168 <draw_controls+0xfc>
     274:	00178793          	addi	a5,a5,1
     278:	f25ff06f          	j	19c <draw_controls+0x130>

0000027c <show_hourglass>:
     27c:	ff010113          	addi	sp,sp,-16
     280:	00000593          	li	a1,0
     284:	0ff00513          	li	a0,255
     288:	00112623          	sw	ra,12(sp)
     28c:	00812423          	sw	s0,8(sp)
     290:	00002097          	auipc	ra,0x2
     294:	7ac080e7          	jalr	1964(ra) # 2a3c <display_set_front_back_color>
     298:	02c00593          	li	a1,44
     29c:	03100513          	li	a0,49
     2a0:	00002097          	auipc	ra,0x2
     2a4:	788080e7          	jalr	1928(ra) # 2a28 <display_set_cursor>
     2a8:	00006437          	lui	s0,0x6
     2ac:	40c40513          	addi	a0,s0,1036 # 640c <LEDS+0x30>
     2b0:	00003097          	auipc	ra,0x3
     2b4:	a7c080e7          	jalr	-1412(ra) # 2d2c <printf>
     2b8:	03400593          	li	a1,52
     2bc:	03100513          	li	a0,49
     2c0:	00002097          	auipc	ra,0x2
     2c4:	768080e7          	jalr	1896(ra) # 2a28 <display_set_cursor>
     2c8:	00006537          	lui	a0,0x6
     2cc:	41450513          	addi	a0,a0,1044 # 6414 <LEDS+0x38>
     2d0:	00003097          	auipc	ra,0x3
     2d4:	a5c080e7          	jalr	-1444(ra) # 2d2c <printf>
     2d8:	03c00593          	li	a1,60
     2dc:	03100513          	li	a0,49
     2e0:	00002097          	auipc	ra,0x2
     2e4:	748080e7          	jalr	1864(ra) # 2a28 <display_set_cursor>
     2e8:	00006537          	lui	a0,0x6
     2ec:	41c50513          	addi	a0,a0,1052 # 641c <LEDS+0x40>
     2f0:	00003097          	auipc	ra,0x3
     2f4:	a3c080e7          	jalr	-1476(ra) # 2d2c <printf>
     2f8:	04400593          	li	a1,68
     2fc:	03100513          	li	a0,49
     300:	00002097          	auipc	ra,0x2
     304:	728080e7          	jalr	1832(ra) # 2a28 <display_set_cursor>
     308:	00006537          	lui	a0,0x6
     30c:	42450513          	addi	a0,a0,1060 # 6424 <LEDS+0x48>
     310:	00003097          	auipc	ra,0x3
     314:	a1c080e7          	jalr	-1508(ra) # 2d2c <printf>
     318:	04c00593          	li	a1,76
     31c:	03100513          	li	a0,49
     320:	00002097          	auipc	ra,0x2
     324:	708080e7          	jalr	1800(ra) # 2a28 <display_set_cursor>
     328:	40c40513          	addi	a0,s0,1036
     32c:	00003097          	auipc	ra,0x3
     330:	a00080e7          	jalr	-1536(ra) # 2d2c <printf>
     334:	00812403          	lw	s0,8(sp)
     338:	00c12083          	lw	ra,12(sp)
     33c:	01010113          	addi	sp,sp,16
     340:	00003317          	auipc	t1,0x3
     344:	88030067          	jr	-1920(t1) # 2bc0 <display_refresh>

00000348 <clear_audio>:
     348:	ff010113          	addi	sp,sp,-16
     34c:	000067b7          	lui	a5,0x6
     350:	00812423          	sw	s0,8(sp)
     354:	3bc7a403          	lw	s0,956(a5) # 63bc <AUDIO>
     358:	00112623          	sw	ra,12(sp)
     35c:	00912223          	sw	s1,4(sp)
     360:	00042703          	lw	a4,0(s0)
     364:	00042783          	lw	a5,0(s0)
     368:	fef70ee3          	beq	a4,a5,364 <clear_audio+0x1c>
     36c:	00042483          	lw	s1,0(s0)
     370:	20000613          	li	a2,512
     374:	00000593          	li	a1,0
     378:	00048513          	mv	a0,s1
     37c:	00002097          	auipc	ra,0x2
     380:	39c080e7          	jalr	924(ra) # 2718 <memset>
     384:	00042783          	lw	a5,0(s0)
     388:	fef48ee3          	beq	s1,a5,384 <clear_audio+0x3c>
     38c:	00042483          	lw	s1,0(s0)
     390:	20000613          	li	a2,512
     394:	00000593          	li	a1,0
     398:	00048513          	mv	a0,s1
     39c:	00002097          	auipc	ra,0x2
     3a0:	37c080e7          	jalr	892(ra) # 2718 <memset>
     3a4:	00042783          	lw	a5,0(s0)
     3a8:	fef48ee3          	beq	s1,a5,3a4 <clear_audio+0x5c>
     3ac:	00c12083          	lw	ra,12(sp)
     3b0:	00812403          	lw	s0,8(sp)
     3b4:	00412483          	lw	s1,4(sp)
     3b8:	01010113          	addi	sp,sp,16
     3bc:	00008067          	ret

000003c0 <clear_screen>:
     3c0:	000067b7          	lui	a5,0x6
     3c4:	3c47a783          	lw	a5,964(a5) # 63c4 <RGBSEL>
     3c8:	ff010113          	addi	sp,sp,-16
     3cc:	00812423          	sw	s0,8(sp)
     3d0:	00912223          	sw	s1,4(sp)
     3d4:	01212023          	sw	s2,0(sp)
     3d8:	00112623          	sw	ra,12(sp)
     3dc:	00000413          	li	s0,0
     3e0:	00078913          	mv	s2,a5
     3e4:	00300493          	li	s1,3
     3e8:	00892023          	sw	s0,0(s2)
     3ec:	00002097          	auipc	ra,0x2
     3f0:	630080e7          	jalr	1584(ra) # 2a1c <display_framebuffer>
     3f4:	00004637          	lui	a2,0x4
     3f8:	00000593          	li	a1,0
     3fc:	00140413          	addi	s0,s0,1
     400:	00002097          	auipc	ra,0x2
     404:	318080e7          	jalr	792(ra) # 2718 <memset>
     408:	fe9410e3          	bne	s0,s1,3e8 <clear_screen+0x28>
     40c:	00812403          	lw	s0,8(sp)
     410:	00c12083          	lw	ra,12(sp)
     414:	00412483          	lw	s1,4(sp)
     418:	00012903          	lw	s2,0(sp)
     41c:	01010113          	addi	sp,sp,16
     420:	00002317          	auipc	t1,0x2
     424:	7a030067          	jr	1952(t1) # 2bc0 <display_refresh>

00000428 <fill_rect_gray>:
     428:	000067b7          	lui	a5,0x6
     42c:	3c47a783          	lw	a5,964(a5) # 63c4 <RGBSEL>
     430:	fd010113          	addi	sp,sp,-48
     434:	02812423          	sw	s0,40(sp)
     438:	03212023          	sw	s2,32(sp)
     43c:	01412c23          	sw	s4,24(sp)
     440:	01512a23          	sw	s5,20(sp)
     444:	01612823          	sw	s6,16(sp)
     448:	01812423          	sw	s8,8(sp)
     44c:	01912223          	sw	s9,4(sp)
     450:	01a12023          	sw	s10,0(sp)
     454:	02112623          	sw	ra,44(sp)
     458:	02912223          	sw	s1,36(sp)
     45c:	01312e23          	sw	s3,28(sp)
     460:	01712623          	sw	s7,12(sp)
     464:	00050913          	mv	s2,a0
     468:	00070b13          	mv	s6,a4
     46c:	00058413          	mv	s0,a1
     470:	00b68ab3          	add	s5,a3,a1
     474:	00a60a33          	add	s4,a2,a0
     478:	07f00c13          	li	s8,127
     47c:	00078d13          	mv	s10,a5
     480:	00300c93          	li	s9,3
     484:	00090493          	mv	s1,s2
     488:	0380006f          	j	4c0 <fill_rect_gray+0x98>
     48c:	029c4863          	blt	s8,s1,4bc <fill_rect_gray+0x94>
     490:	028c6663          	bltu	s8,s0,4bc <fill_rect_gray+0x94>
     494:	00749b93          	slli	s7,s1,0x7
     498:	008b8bb3          	add	s7,s7,s0
     49c:	00000993          	li	s3,0
     4a0:	013d2023          	sw	s3,0(s10)
     4a4:	00002097          	auipc	ra,0x2
     4a8:	578080e7          	jalr	1400(ra) # 2a1c <display_framebuffer>
     4ac:	01750533          	add	a0,a0,s7
     4b0:	01650023          	sb	s6,0(a0)
     4b4:	00198993          	addi	s3,s3,1
     4b8:	ff9994e3          	bne	s3,s9,4a0 <fill_rect_gray+0x78>
     4bc:	00148493          	addi	s1,s1,1
     4c0:	fd4496e3          	bne	s1,s4,48c <fill_rect_gray+0x64>
     4c4:	00140413          	addi	s0,s0,1
     4c8:	fb541ee3          	bne	s0,s5,484 <fill_rect_gray+0x5c>
     4cc:	02c12083          	lw	ra,44(sp)
     4d0:	02812403          	lw	s0,40(sp)
     4d4:	02412483          	lw	s1,36(sp)
     4d8:	02012903          	lw	s2,32(sp)
     4dc:	01c12983          	lw	s3,28(sp)
     4e0:	01812a03          	lw	s4,24(sp)
     4e4:	01412a83          	lw	s5,20(sp)
     4e8:	01012b03          	lw	s6,16(sp)
     4ec:	00c12b83          	lw	s7,12(sp)
     4f0:	00812c03          	lw	s8,8(sp)
     4f4:	00412c83          	lw	s9,4(sp)
     4f8:	00012d03          	lw	s10,0(sp)
     4fc:	03010113          	addi	sp,sp,48
     500:	00008067          	ret

00000504 <draw_progress_bar>:
     504:	0eb05063          	blez	a1,5e4 <draw_progress_bar+0xe0>
     508:	00351793          	slli	a5,a0,0x3
     50c:	40a787b3          	sub	a5,a5,a0
     510:	00279793          	slli	a5,a5,0x2
     514:	40a78533          	sub	a0,a5,a0
     518:	ff010113          	addi	sp,sp,-16
     51c:	00251513          	slli	a0,a0,0x2
     520:	00812423          	sw	s0,8(sp)
     524:	00112623          	sw	ra,12(sp)
     528:	00912223          	sw	s1,4(sp)
     52c:	00002097          	auipc	ra,0x2
     530:	138080e7          	jalr	312(ra) # 2664 <__divsi3>
     534:	06c00793          	li	a5,108
     538:	00050413          	mv	s0,a0
     53c:	06a7d263          	bge	a5,a0,5a0 <draw_progress_bar+0x9c>
     540:	06c00413          	li	s0,108
     544:	000064b7          	lui	s1,0x6
     548:	38c4a503          	lw	a0,908(s1) # 638c <g_last_progress>
     54c:	06055063          	bgez	a0,5ac <draw_progress_bar+0xa8>
     550:	00000713          	li	a4,0
     554:	00300693          	li	a3,3
     558:	06c00613          	li	a2,108
     55c:	06400593          	li	a1,100
     560:	00a00513          	li	a0,10
     564:	00000097          	auipc	ra,0x0
     568:	ec4080e7          	jalr	-316(ra) # 428 <fill_rect_gray>
     56c:	0ff00713          	li	a4,255
     570:	00300693          	li	a3,3
     574:	00040613          	mv	a2,s0
     578:	06400593          	li	a1,100
     57c:	00a00513          	li	a0,10
     580:	00000097          	auipc	ra,0x0
     584:	ea8080e7          	jalr	-344(ra) # 428 <fill_rect_gray>
     588:	3884a623          	sw	s0,908(s1)
     58c:	00c12083          	lw	ra,12(sp)
     590:	00812403          	lw	s0,8(sp)
     594:	00412483          	lw	s1,4(sp)
     598:	01010113          	addi	sp,sp,16
     59c:	00008067          	ret
     5a0:	fa0552e3          	bgez	a0,544 <draw_progress_bar+0x40>
     5a4:	00000413          	li	s0,0
     5a8:	f9dff06f          	j	544 <draw_progress_bar+0x40>
     5ac:	fc850ee3          	beq	a0,s0,588 <draw_progress_bar+0x84>
     5b0:	00855e63          	bge	a0,s0,5cc <draw_progress_bar+0xc8>
     5b4:	40a40633          	sub	a2,s0,a0
     5b8:	0ff00713          	li	a4,255
     5bc:	00300693          	li	a3,3
     5c0:	06400593          	li	a1,100
     5c4:	00a50513          	addi	a0,a0,10
     5c8:	fb9ff06f          	j	580 <draw_progress_bar+0x7c>
     5cc:	40850633          	sub	a2,a0,s0
     5d0:	00000713          	li	a4,0
     5d4:	00300693          	li	a3,3
     5d8:	06400593          	li	a1,100
     5dc:	00a40513          	addi	a0,s0,10
     5e0:	fa1ff06f          	j	580 <draw_progress_bar+0x7c>
     5e4:	00008067          	ret

000005e8 <update_ui>:
     5e8:	fe010113          	addi	sp,sp,-32
     5ec:	00812c23          	sw	s0,24(sp)
     5f0:	00912a23          	sw	s1,20(sp)
     5f4:	01212823          	sw	s2,16(sp)
     5f8:	01412423          	sw	s4,8(sp)
     5fc:	01512223          	sw	s5,4(sp)
     600:	00050413          	mv	s0,a0
     604:	00058a13          	mv	s4,a1
     608:	00000513          	li	a0,0
     60c:	06000593          	li	a1,96
     610:	00060a93          	mv	s5,a2
     614:	00068493          	mv	s1,a3
     618:	08000613          	li	a2,128
     61c:	02000693          	li	a3,32
     620:	00070913          	mv	s2,a4
     624:	00000713          	li	a4,0
     628:	00112e23          	sw	ra,28(sp)
     62c:	01312623          	sw	s3,12(sp)
     630:	00078993          	mv	s3,a5
     634:	00000097          	auipc	ra,0x0
     638:	df4080e7          	jalr	-524(ra) # 428 <fill_rect_gray>
     63c:	000067b7          	lui	a5,0x6
     640:	fff00713          	li	a4,-1
     644:	00000593          	li	a1,0
     648:	0ff00513          	li	a0,255
     64c:	38e7a623          	sw	a4,908(a5) # 638c <g_last_progress>
     650:	00002097          	auipc	ra,0x2
     654:	3ec080e7          	jalr	1004(ra) # 2a3c <display_set_front_back_color>
     658:	00000593          	li	a1,0
     65c:	00000513          	li	a0,0
     660:	00002097          	auipc	ra,0x2
     664:	3c8080e7          	jalr	968(ra) # 2a28 <display_set_cursor>
     668:	00006537          	lui	a0,0x6
     66c:	42c50513          	addi	a0,a0,1068 # 642c <LEDS+0x50>
     670:	00002097          	auipc	ra,0x2
     674:	6bc080e7          	jalr	1724(ra) # 2d2c <printf>
     678:	00000593          	li	a1,0
     67c:	0ff00513          	li	a0,255
     680:	00002097          	auipc	ra,0x2
     684:	3bc080e7          	jalr	956(ra) # 2a3c <display_set_front_back_color>
     688:	00000813          	li	a6,0
     68c:	010407b3          	add	a5,s0,a6
     690:	0007c783          	lbu	a5,0(a5)
     694:	10079263          	bnez	a5,798 <update_ui+0x1b0>
     698:	00281793          	slli	a5,a6,0x2
     69c:	010787b3          	add	a5,a5,a6
     6a0:	08000893          	li	a7,128
     6a4:	40f888b3          	sub	a7,a7,a5
     6a8:	fff00793          	li	a5,-1
     6ac:	00000513          	li	a0,0
     6b0:	00f8c863          	blt	a7,a5,6c0 <update_ui+0xd8>
     6b4:	01f8d813          	srli	a6,a7,0x1f
     6b8:	01180833          	add	a6,a6,a7
     6bc:	40185513          	srai	a0,a6,0x1
     6c0:	00800593          	li	a1,8
     6c4:	00002097          	auipc	ra,0x2
     6c8:	364080e7          	jalr	868(ra) # 2a28 <display_set_cursor>
     6cc:	00040593          	mv	a1,s0
     6d0:	00006437          	lui	s0,0x6
     6d4:	40840513          	addi	a0,s0,1032 # 6408 <LEDS+0x2c>
     6d8:	00002097          	auipc	ra,0x2
     6dc:	654080e7          	jalr	1620(ra) # 2d2c <printf>
     6e0:	000a8593          	mv	a1,s5
     6e4:	000a0513          	mv	a0,s4
     6e8:	00000097          	auipc	ra,0x0
     6ec:	e1c080e7          	jalr	-484(ra) # 504 <draw_progress_bar>
     6f0:	00048513          	mv	a0,s1
     6f4:	00098613          	mv	a2,s3
     6f8:	00090593          	mv	a1,s2
     6fc:	00000097          	auipc	ra,0x0
     700:	970080e7          	jalr	-1680(ra) # 6c <draw_controls>
     704:	00000593          	li	a1,0
     708:	0ff00513          	li	a0,255
     70c:	00002097          	auipc	ra,0x2
     710:	330080e7          	jalr	816(ra) # 2a3c <display_set_front_back_color>
     714:	000064b7          	lui	s1,0x6
     718:	00000793          	li	a5,0
     71c:	43448693          	addi	a3,s1,1076 # 6434 <LEDS+0x58>
     720:	00d78733          	add	a4,a5,a3
     724:	00074703          	lbu	a4,0(a4)
     728:	06071c63          	bnez	a4,7a0 <update_ui+0x1b8>
     72c:	00279713          	slli	a4,a5,0x2
     730:	00f70733          	add	a4,a4,a5
     734:	08000793          	li	a5,128
     738:	40e787b3          	sub	a5,a5,a4
     73c:	fff00713          	li	a4,-1
     740:	00000513          	li	a0,0
     744:	00e7c863          	blt	a5,a4,754 <update_ui+0x16c>
     748:	01f7d513          	srli	a0,a5,0x1f
     74c:	00f50533          	add	a0,a0,a5
     750:	40155513          	srai	a0,a0,0x1
     754:	07400593          	li	a1,116
     758:	00002097          	auipc	ra,0x2
     75c:	2d0080e7          	jalr	720(ra) # 2a28 <display_set_cursor>
     760:	43448593          	addi	a1,s1,1076
     764:	40840513          	addi	a0,s0,1032
     768:	00002097          	auipc	ra,0x2
     76c:	5c4080e7          	jalr	1476(ra) # 2d2c <printf>
     770:	01812403          	lw	s0,24(sp)
     774:	01c12083          	lw	ra,28(sp)
     778:	01412483          	lw	s1,20(sp)
     77c:	01012903          	lw	s2,16(sp)
     780:	00c12983          	lw	s3,12(sp)
     784:	00812a03          	lw	s4,8(sp)
     788:	00412a83          	lw	s5,4(sp)
     78c:	02010113          	addi	sp,sp,32
     790:	00002317          	auipc	t1,0x2
     794:	43030067          	jr	1072(t1) # 2bc0 <display_refresh>
     798:	00180813          	addi	a6,a6,1
     79c:	ef1ff06f          	j	68c <update_ui+0xa4>
     7a0:	00178793          	addi	a5,a5,1
     7a4:	f7dff06f          	j	720 <update_ui+0x138>

000007a8 <file_size>:
     7a8:	ff010113          	addi	sp,sp,-16
     7ac:	00200613          	li	a2,2
     7b0:	00000593          	li	a1,0
     7b4:	00112623          	sw	ra,12(sp)
     7b8:	00812423          	sw	s0,8(sp)
     7bc:	00912223          	sw	s1,4(sp)
     7c0:	00050413          	mv	s0,a0
     7c4:	00003097          	auipc	ra,0x3
     7c8:	ba0080e7          	jalr	-1120(ra) # 3364 <fl_fseek>
     7cc:	00040513          	mv	a0,s0
     7d0:	00003097          	auipc	ra,0x3
     7d4:	d08080e7          	jalr	-760(ra) # 34d8 <fl_ftell>
     7d8:	00050493          	mv	s1,a0
     7dc:	00000613          	li	a2,0
     7e0:	00040513          	mv	a0,s0
     7e4:	00000593          	li	a1,0
     7e8:	00003097          	auipc	ra,0x3
     7ec:	b7c080e7          	jalr	-1156(ra) # 3364 <fl_fseek>
     7f0:	00c12083          	lw	ra,12(sp)
     7f4:	00812403          	lw	s0,8(sp)
     7f8:	00048513          	mv	a0,s1
     7fc:	00412483          	lw	s1,4(sp)
     800:	01010113          	addi	sp,sp,16
     804:	00008067          	ret

00000808 <streq.constprop.0>:
     808:	00006737          	lui	a4,0x6
     80c:	44870713          	addi	a4,a4,1096 # 6448 <LEDS+0x6c>
     810:	00054683          	lbu	a3,0(a0)
     814:	00074783          	lbu	a5,0(a4)
     818:	00068463          	beqz	a3,820 <streq.constprop.0+0x18>
     81c:	00079863          	bnez	a5,82c <streq.constprop.0+0x24>
     820:	40d78533          	sub	a0,a5,a3
     824:	00153513          	seqz	a0,a0
     828:	00008067          	ret
     82c:	00150513          	addi	a0,a0,1
     830:	00170713          	addi	a4,a4,1
     834:	fcf68ee3          	beq	a3,a5,810 <streq.constprop.0+0x8>
     838:	00000513          	li	a0,0
     83c:	00008067          	ret

00000840 <scan_files>:
     840:	ec010113          	addi	sp,sp,-320
     844:	00006537          	lui	a0,0x6
     848:	13212823          	sw	s2,304(sp)
     84c:	00410593          	addi	a1,sp,4
     850:	00006937          	lui	s2,0x6
     854:	45850513          	addi	a0,a0,1112 # 6458 <LEDS+0x7c>
     858:	12112e23          	sw	ra,316(sp)
     85c:	12812c23          	sw	s0,312(sp)
     860:	12912a23          	sw	s1,308(sp)
     864:	13312623          	sw	s3,300(sp)
     868:	13412423          	sw	s4,296(sp)
     86c:	13512223          	sw	s5,292(sp)
     870:	7c092223          	sw	zero,1988(s2) # 67c4 <file_count>
     874:	00004097          	auipc	ra,0x4
     878:	0e0080e7          	jalr	224(ra) # 4954 <fl_opendir>
     87c:	02050863          	beqz	a0,8ac <scan_files+0x6c>
     880:	01f00993          	li	s3,31
     884:	00300a13          	li	s4,3
     888:	02e00a93          	li	s5,46
     88c:	01010593          	addi	a1,sp,16
     890:	00410513          	addi	a0,sp,4
     894:	00004097          	auipc	ra,0x4
     898:	784080e7          	jalr	1924(ra) # 5018 <fl_readdir>
     89c:	02050a63          	beqz	a0,8d0 <scan_files+0x90>
     8a0:	00410513          	addi	a0,sp,4
     8a4:	00003097          	auipc	ra,0x3
     8a8:	c5c080e7          	jalr	-932(ra) # 3500 <fl_closedir>
     8ac:	13c12083          	lw	ra,316(sp)
     8b0:	13812403          	lw	s0,312(sp)
     8b4:	13412483          	lw	s1,308(sp)
     8b8:	13012903          	lw	s2,304(sp)
     8bc:	12c12983          	lw	s3,300(sp)
     8c0:	12812a03          	lw	s4,296(sp)
     8c4:	12412a83          	lw	s5,292(sp)
     8c8:	14010113          	addi	sp,sp,320
     8cc:	00008067          	ret
     8d0:	7c492403          	lw	s0,1988(s2)
     8d4:	fc89c6e3          	blt	s3,s0,8a0 <scan_files+0x60>
     8d8:	11414783          	lbu	a5,276(sp)
     8dc:	fa0798e3          	bnez	a5,88c <scan_files+0x4c>
     8e0:	01010513          	addi	a0,sp,16
     8e4:	00000097          	auipc	ra,0x0
     8e8:	f24080e7          	jalr	-220(ra) # 808 <streq.constprop.0>
     8ec:	fa0510e3          	bnez	a0,88c <scan_files+0x4c>
     8f0:	01010513          	addi	a0,sp,16
     8f4:	00002097          	auipc	ra,0x2
     8f8:	e64080e7          	jalr	-412(ra) # 2758 <strlen>
     8fc:	f8aa58e3          	bge	s4,a0,88c <scan_files+0x4c>
     900:	12050793          	addi	a5,a0,288
     904:	00278533          	add	a0,a5,sp
     908:	eec54783          	lbu	a5,-276(a0)
     90c:	f95790e3          	bne	a5,s5,88c <scan_files+0x4c>
     910:	eed54783          	lbu	a5,-275(a0)
     914:	05200713          	li	a4,82
     918:	0df7f793          	andi	a5,a5,223
     91c:	f6e798e3          	bne	a5,a4,88c <scan_files+0x4c>
     920:	eee54783          	lbu	a5,-274(a0)
     924:	04100713          	li	a4,65
     928:	0df7f793          	andi	a5,a5,223
     92c:	f6e790e3          	bne	a5,a4,88c <scan_files+0x4c>
     930:	eef54783          	lbu	a5,-273(a0)
     934:	05700713          	li	a4,87
     938:	0df7f793          	andi	a5,a5,223
     93c:	f4e798e3          	bne	a5,a4,88c <scan_files+0x4c>
     940:	000067b7          	lui	a5,0x6
     944:	00641493          	slli	s1,s0,0x6
     948:	7f478793          	addi	a5,a5,2036 # 67f4 <files>
     94c:	00f484b3          	add	s1,s1,a5
     950:	03f00613          	li	a2,63
     954:	01010593          	addi	a1,sp,16
     958:	00048513          	mv	a0,s1
     95c:	00140413          	addi	s0,s0,1
     960:	00002097          	auipc	ra,0x2
     964:	e58080e7          	jalr	-424(ra) # 27b8 <strncpy>
     968:	02048fa3          	sb	zero,63(s1)
     96c:	7c892223          	sw	s0,1988(s2)
     970:	f1dff06f          	j	88c <scan_files+0x4c>

00000974 <play_file>:
     974:	d0010113          	addi	sp,sp,-768
     978:	2e812c23          	sw	s0,760(sp)
     97c:	2e112e23          	sw	ra,764(sp)
     980:	2e912a23          	sw	s1,756(sp)
     984:	2f212823          	sw	s2,752(sp)
     988:	2f312623          	sw	s3,748(sp)
     98c:	2f412423          	sw	s4,744(sp)
     990:	2f512223          	sw	s5,740(sp)
     994:	2f612023          	sw	s6,736(sp)
     998:	2d712e23          	sw	s7,732(sp)
     99c:	2d812c23          	sw	s8,728(sp)
     9a0:	2d912a23          	sw	s9,724(sp)
     9a4:	2da12823          	sw	s10,720(sp)
     9a8:	2db12623          	sw	s11,716(sp)
     9ac:	00050413          	mv	s0,a0
     9b0:	00000097          	auipc	ra,0x0
     9b4:	e58080e7          	jalr	-424(ra) # 808 <streq.constprop.0>
     9b8:	000067b7          	lui	a5,0x6
     9bc:	00a03533          	snez	a0,a0
     9c0:	7aa7ae23          	sw	a0,1980(a5) # 67bc <g_last_was_easter>
     9c4:	737577b7          	lui	a5,0x73757
     9c8:	d2f78793          	addi	a5,a5,-721 # 73756d2f <__stacktop+0x73746d2f>
     9cc:	06f12a23          	sw	a5,116(sp)
     9d0:	000067b7          	lui	a5,0x6
     9d4:	36978793          	addi	a5,a5,873 # 6369 <fl_fopen+0x3b1>
     9d8:	06f11c23          	sh	a5,120(sp)
     9dc:	02f00793          	li	a5,47
     9e0:	06f10d23          	sb	a5,122(sp)
     9e4:	04900693          	li	a3,73
     9e8:	00700793          	li	a5,7
     9ec:	00f40733          	add	a4,s0,a5
     9f0:	ff974703          	lbu	a4,-7(a4)
     9f4:	00070663          	beqz	a4,a00 <play_file+0x8c>
     9f8:	16d79663          	bne	a5,a3,b64 <play_file+0x1f0>
     9fc:	04900793          	li	a5,73
     a00:	05010713          	addi	a4,sp,80
     a04:	27078793          	addi	a5,a5,624
     a08:	00006937          	lui	s2,0x6
     a0c:	00e787b3          	add	a5,a5,a4
     a10:	46090593          	addi	a1,s2,1120 # 6460 <LEDS+0x84>
     a14:	07410513          	addi	a0,sp,116
     a18:	da078a23          	sb	zero,-588(a5)
     a1c:	00005097          	auipc	ra,0x5
     a20:	59c080e7          	jalr	1436(ra) # 5fb8 <fl_fopen>
     a24:	00a12623          	sw	a0,12(sp)
     a28:	00000793          	li	a5,0
     a2c:	14050663          	beqz	a0,b78 <play_file+0x204>
     a30:	01900693          	li	a3,25
     a34:	02e00613          	li	a2,46
     a38:	05f00593          	li	a1,95
     a3c:	00f40733          	add	a4,s0,a5
     a40:	00074703          	lbu	a4,0(a4)
     a44:	00070463          	beqz	a4,a4c <play_file+0xd8>
     a48:	16d79263          	bne	a5,a3,bac <play_file+0x238>
     a4c:	05010713          	addi	a4,sp,80
     a50:	27078793          	addi	a5,a5,624
     a54:	00e787b3          	add	a5,a5,a4
     a58:	d8078c23          	sb	zero,-616(a5)
     a5c:	000067b7          	lui	a5,0x6
     a60:	7c07a703          	lw	a4,1984(a5) # 67c0 <g_skip_image>
     a64:	7c07a023          	sw	zero,1984(a5)
     a68:	00e12823          	sw	a4,16(sp)
     a6c:	4a071663          	bnez	a4,f18 <play_file+0x5a4>
     a70:	00000097          	auipc	ra,0x0
     a74:	950080e7          	jalr	-1712(ra) # 3c0 <clear_screen>
     a78:	676d77b7          	lui	a5,0x676d7
     a7c:	92f78793          	addi	a5,a5,-1745 # 676d692f <__stacktop+0x676c692f>
     a80:	0cf12023          	sw	a5,192(sp)
     a84:	02f00793          	li	a5,47
     a88:	0cf10223          	sb	a5,196(sp)
     a8c:	04400693          	li	a3,68
     a90:	00500793          	li	a5,5
     a94:	00f40733          	add	a4,s0,a5
     a98:	ffb74703          	lbu	a4,-5(a4)
     a9c:	00070663          	beqz	a4,aa8 <play_file+0x134>
     aa0:	12d79663          	bne	a5,a3,bcc <play_file+0x258>
     aa4:	04400793          	li	a5,68
     aa8:	05010713          	addi	a4,sp,80
     aac:	27078793          	addi	a5,a5,624
     ab0:	00e787b3          	add	a5,a5,a4
     ab4:	05f00713          	li	a4,95
     ab8:	dee78e23          	sb	a4,-516(a5)
     abc:	06900713          	li	a4,105
     ac0:	dee78ea3          	sb	a4,-515(a5)
     ac4:	06d00713          	li	a4,109
     ac8:	dee78f23          	sb	a4,-514(a5)
     acc:	06700713          	li	a4,103
     ad0:	dee78fa3          	sb	a4,-513(a5)
     ad4:	02e00713          	li	a4,46
     ad8:	e0e78023          	sb	a4,-512(a5)
     adc:	07200713          	li	a4,114
     ae0:	e0e780a3          	sb	a4,-511(a5)
     ae4:	06100713          	li	a4,97
     ae8:	e0e78123          	sb	a4,-510(a5)
     aec:	07700713          	li	a4,119
     af0:	e0e781a3          	sb	a4,-509(a5)
     af4:	e0078223          	sb	zero,-508(a5)
     af8:	46090593          	addi	a1,s2,1120
     afc:	0c010513          	addi	a0,sp,192
     b00:	00005097          	auipc	ra,0x5
     b04:	4b8080e7          	jalr	1208(ra) # 5fb8 <fl_fopen>
     b08:	00050413          	mv	s0,a0
     b0c:	02051063          	bnez	a0,b2c <play_file+0x1b8>
     b10:	00006537          	lui	a0,0x6
     b14:	46090593          	addi	a1,s2,1120
     b18:	47450513          	addi	a0,a0,1140 # 6474 <LEDS+0x98>
     b1c:	00005097          	auipc	ra,0x5
     b20:	49c080e7          	jalr	1180(ra) # 5fb8 <fl_fopen>
     b24:	00050413          	mv	s0,a0
     b28:	02050a63          	beqz	a0,b5c <play_file+0x1e8>
     b2c:	00040513          	mv	a0,s0
     b30:	00000097          	auipc	ra,0x0
     b34:	c78080e7          	jalr	-904(ra) # 7a8 <file_size>
     b38:	000107b7          	lui	a5,0x10
     b3c:	0af55263          	bge	a0,a5,be0 <play_file+0x26c>
     b40:	0000c7b7          	lui	a5,0xc
     b44:	3cf55263          	bge	a0,a5,f08 <play_file+0x594>
     b48:	000047b7          	lui	a5,0x4
     b4c:	3cf55263          	bge	a0,a5,f10 <play_file+0x59c>
     b50:	00040513          	mv	a0,s0
     b54:	00005097          	auipc	ra,0x5
     b58:	dac080e7          	jalr	-596(ra) # 5900 <fl_fclose>
     b5c:	00000413          	li	s0,0
     b60:	0880006f          	j	be8 <play_file+0x274>
     b64:	07410613          	addi	a2,sp,116
     b68:	00f60633          	add	a2,a2,a5
     b6c:	00e60023          	sb	a4,0(a2) # 4000 <_check_file_open+0x50>
     b70:	00178793          	addi	a5,a5,1 # 4001 <_check_file_open+0x51>
     b74:	e79ff06f          	j	9ec <play_file+0x78>
     b78:	00000593          	li	a1,0
     b7c:	0ff00513          	li	a0,255
     b80:	00002097          	auipc	ra,0x2
     b84:	ebc080e7          	jalr	-324(ra) # 2a3c <display_set_front_back_color>
     b88:	00006537          	lui	a0,0x6
     b8c:	00040593          	mv	a1,s0
     b90:	46450513          	addi	a0,a0,1124 # 6464 <LEDS+0x88>
     b94:	00002097          	auipc	ra,0x2
     b98:	198080e7          	jalr	408(ra) # 2d2c <printf>
     b9c:	00002097          	auipc	ra,0x2
     ba0:	024080e7          	jalr	36(ra) # 2bc0 <display_refresh>
     ba4:	00000513          	li	a0,0
     ba8:	49c0006f          	j	1044 <play_file+0x6d0>
     bac:	eac700e3          	beq	a4,a2,a4c <play_file+0xd8>
     bb0:	00b71463          	bne	a4,a1,bb8 <play_file+0x244>
     bb4:	02000713          	li	a4,32
     bb8:	05810513          	addi	a0,sp,88
     bbc:	00f50533          	add	a0,a0,a5
     bc0:	00e50023          	sb	a4,0(a0)
     bc4:	00178793          	addi	a5,a5,1
     bc8:	e75ff06f          	j	a3c <play_file+0xc8>
     bcc:	0c010613          	addi	a2,sp,192
     bd0:	00f60633          	add	a2,a2,a5
     bd4:	00e60023          	sb	a4,0(a2)
     bd8:	00178793          	addi	a5,a5,1
     bdc:	eb9ff06f          	j	a94 <play_file+0x120>
     be0:	00400793          	li	a5,4
     be4:	00f12823          	sw	a5,16(sp)
     be8:	fffff097          	auipc	ra,0xfffff
     bec:	760080e7          	jalr	1888(ra) # 348 <clear_audio>
     bf0:	000067b7          	lui	a5,0x6
     bf4:	3c87a783          	lw	a5,968(a5) # 63c8 <VOLUME>
     bf8:	02f12023          	sw	a5,32(sp)
     bfc:	000067b7          	lui	a5,0x6
     c00:	3907a503          	lw	a0,912(a5) # 6390 <g_volume>
     c04:	02012783          	lw	a5,32(sp)
     c08:	00a7a023          	sw	a0,0(a5)
     c0c:	fffff097          	auipc	ra,0xfffff
     c10:	410080e7          	jalr	1040(ra) # 1c <set_volume_leds>
     c14:	00c12503          	lw	a0,12(sp)
     c18:	00000097          	auipc	ra,0x0
     c1c:	b90080e7          	jalr	-1136(ra) # 7a8 <file_size>
     c20:	00a12a23          	sw	a0,20(sp)
     c24:	00050613          	mv	a2,a0
     c28:	00000793          	li	a5,0
     c2c:	00000713          	li	a4,0
     c30:	00000693          	li	a3,0
     c34:	00000593          	li	a1,0
     c38:	05810513          	addi	a0,sp,88
     c3c:	00000097          	auipc	ra,0x0
     c40:	9ac080e7          	jalr	-1620(ra) # 5e8 <update_ui>
     c44:	0a040c63          	beqz	s0,cfc <play_file+0x388>
     c48:	00000593          	li	a1,0
     c4c:	0ff00513          	li	a0,255
     c50:	00002097          	auipc	ra,0x2
     c54:	dec080e7          	jalr	-532(ra) # 2a3c <display_set_front_back_color>
     c58:	02400593          	li	a1,36
     c5c:	03100513          	li	a0,49
     c60:	00002097          	auipc	ra,0x2
     c64:	dc8080e7          	jalr	-568(ra) # 2a28 <display_set_cursor>
     c68:	00006937          	lui	s2,0x6
     c6c:	40c90513          	addi	a0,s2,1036 # 640c <LEDS+0x30>
     c70:	00002097          	auipc	ra,0x2
     c74:	0bc080e7          	jalr	188(ra) # 2d2c <printf>
     c78:	02c00593          	li	a1,44
     c7c:	03100513          	li	a0,49
     c80:	00002097          	auipc	ra,0x2
     c84:	da8080e7          	jalr	-600(ra) # 2a28 <display_set_cursor>
     c88:	00006537          	lui	a0,0x6
     c8c:	41450513          	addi	a0,a0,1044 # 6414 <LEDS+0x38>
     c90:	00002097          	auipc	ra,0x2
     c94:	09c080e7          	jalr	156(ra) # 2d2c <printf>
     c98:	03400593          	li	a1,52
     c9c:	03100513          	li	a0,49
     ca0:	00002097          	auipc	ra,0x2
     ca4:	d88080e7          	jalr	-632(ra) # 2a28 <display_set_cursor>
     ca8:	00006537          	lui	a0,0x6
     cac:	41c50513          	addi	a0,a0,1052 # 641c <LEDS+0x40>
     cb0:	00002097          	auipc	ra,0x2
     cb4:	07c080e7          	jalr	124(ra) # 2d2c <printf>
     cb8:	03c00593          	li	a1,60
     cbc:	03100513          	li	a0,49
     cc0:	00002097          	auipc	ra,0x2
     cc4:	d68080e7          	jalr	-664(ra) # 2a28 <display_set_cursor>
     cc8:	00006537          	lui	a0,0x6
     ccc:	42450513          	addi	a0,a0,1060 # 6424 <LEDS+0x48>
     cd0:	00002097          	auipc	ra,0x2
     cd4:	05c080e7          	jalr	92(ra) # 2d2c <printf>
     cd8:	04400593          	li	a1,68
     cdc:	03100513          	li	a0,49
     ce0:	00002097          	auipc	ra,0x2
     ce4:	d48080e7          	jalr	-696(ra) # 2a28 <display_set_cursor>
     ce8:	40c90513          	addi	a0,s2,1036
     cec:	00002097          	auipc	ra,0x2
     cf0:	040080e7          	jalr	64(ra) # 2d2c <printf>
     cf4:	00002097          	auipc	ra,0x2
     cf8:	ecc080e7          	jalr	-308(ra) # 2bc0 <display_refresh>
     cfc:	00006737          	lui	a4,0x6
     d00:	3bc72703          	lw	a4,956(a4) # 63bc <AUDIO>
     d04:	000067b7          	lui	a5,0x6
     d08:	3cc7a783          	lw	a5,972(a5) # 63cc <BUTTONS>
     d0c:	02e12823          	sw	a4,48(sp)
     d10:	00001737          	lui	a4,0x1
     d14:	0007a903          	lw	s2,0(a5)
     d18:	f9f70713          	addi	a4,a4,-97 # f9f <play_file+0x62b>
     d1c:	04e12223          	sw	a4,68(sp)
     d20:	00004737          	lui	a4,0x4
     d24:	04f12023          	sw	a5,64(sp)
     d28:	e7f70713          	addi	a4,a4,-385 # 3e7f <fatfs_compare_names+0x3b>
     d2c:	fff00793          	li	a5,-1
     d30:	02f12c23          	sw	a5,56(sp)
     d34:	02f12a23          	sw	a5,52(sp)
     d38:	07e97913          	andi	s2,s2,126
     d3c:	fff00d13          	li	s10,-1
     d40:	00000c93          	li	s9,0
     d44:	02012623          	sw	zero,44(sp)
     d48:	00000a13          	li	s4,0
     d4c:	00000993          	li	s3,0
     d50:	00012e23          	sw	zero,28(sp)
     d54:	00012c23          	sw	zero,24(sp)
     d58:	02012e23          	sw	zero,60(sp)
     d5c:	00000b93          	li	s7,0
     d60:	fff00493          	li	s1,-1
     d64:	00000a93          	li	s5,0
     d68:	00000c13          	li	s8,0
     d6c:	00000793          	li	a5,0
     d70:	00012423          	sw	zero,8(sp)
     d74:	04e12423          	sw	a4,72(sp)
     d78:	03012703          	lw	a4,48(sp)
     d7c:	00072d83          	lw	s11,0(a4)
     d80:	1c078863          	beqz	a5,f50 <play_file+0x5dc>
     d84:	00000713          	li	a4,0
     d88:	f8000593          	li	a1,-128
     d8c:	20000693          	li	a3,512
     d90:	00ed8633          	add	a2,s11,a4
     d94:	00b60023          	sb	a1,0(a2)
     d98:	00170713          	addi	a4,a4,1
     d9c:	fed71ae3          	bne	a4,a3,d90 <play_file+0x41c>
     da0:	03412423          	sw	s4,40(sp)
     da4:	02912223          	sw	s1,36(sp)
     da8:	00098a13          	mv	s4,s3
     dac:	00078493          	mv	s1,a5
     db0:	03012783          	lw	a5,48(sp)
     db4:	0007a783          	lw	a5,0(a5)
     db8:	1efd8263          	beq	s11,a5,f9c <play_file+0x628>
     dbc:	00897b13          	andi	s6,s2,8
     dc0:	420b0a63          	beqz	s6,11f4 <play_file+0x880>
     dc4:	000017b7          	lui	a5,0x1
     dc8:	200b8b13          	addi	s6,s7,512
     dcc:	a6978793          	addi	a5,a5,-1431 # a69 <play_file+0xf5>
     dd0:	0367d263          	bge	a5,s6,df4 <play_file+0x480>
     dd4:	01812783          	lw	a5,24(sp)
     dd8:	31f00a93          	li	s5,799
     ddc:	000069b7          	lui	s3,0x6
     de0:	20078793          	addi	a5,a5,512
     de4:	00f12c23          	sw	a5,24(sp)
     de8:	00700b93          	li	s7,7
     dec:	01812783          	lw	a5,24(sp)
     df0:	3cfac863          	blt	s5,a5,11c0 <play_file+0x84c>
     df4:	01097b93          	andi	s7,s2,16
     df8:	420b8c63          	beqz	s7,1230 <play_file+0x8bc>
     dfc:	03c12783          	lw	a5,60(sp)
     e00:	20078b93          	addi	s7,a5,512
     e04:	000017b7          	lui	a5,0x1
     e08:	a6978793          	addi	a5,a5,-1431 # a69 <play_file+0xf5>
     e0c:	0377d063          	bge	a5,s7,e2c <play_file+0x4b8>
     e10:	01c12783          	lw	a5,28(sp)
     e14:	31f00a93          	li	s5,799
     e18:	000069b7          	lui	s3,0x6
     e1c:	20078793          	addi	a5,a5,512
     e20:	00f12e23          	sw	a5,28(sp)
     e24:	01c12783          	lw	a5,28(sp)
     e28:	3cfaca63          	blt	s5,a5,11fc <play_file+0x888>
     e2c:	02097993          	andi	s3,s2,32
     e30:	00098463          	beqz	s3,e38 <play_file+0x4c4>
     e34:	200a0993          	addi	s3,s4,512
     e38:	04097a13          	andi	s4,s2,64
     e3c:	000a0663          	beqz	s4,e48 <play_file+0x4d4>
     e40:	02812783          	lw	a5,40(sp)
     e44:	20078a13          	addi	s4,a5,512
     e48:	40049c63          	bnez	s1,1260 <play_file+0x8ec>
     e4c:	000017b7          	lui	a5,0x1
     e50:	f9f78793          	addi	a5,a5,-97 # f9f <play_file+0x62b>
     e54:	3f37d263          	bge	a5,s3,1238 <play_file+0x8c4>
     e58:	000047b7          	lui	a5,0x4
     e5c:	e7f78793          	addi	a5,a5,-385 # 3e7f <fatfs_compare_names+0x3b>
     e60:	00000a93          	li	s5,0
     e64:	7137c263          	blt	a5,s3,1568 <play_file+0xbf4>
     e68:	00001537          	lui	a0,0x1
     e6c:	fa050513          	addi	a0,a0,-96 # fa0 <play_file+0x62c>
     e70:	fff00593          	li	a1,-1
     e74:	00100c13          	li	s8,1
     e78:	00002097          	auipc	ra,0x2
     e7c:	fe4080e7          	jalr	-28(ra) # 2e5c <__mulsi3>
     e80:	00812783          	lw	a5,8(sp)
     e84:	00f50533          	add	a0,a0,a5
     e88:	00055463          	bgez	a0,e90 <play_file+0x51c>
     e8c:	00000513          	li	a0,0
     e90:	01412703          	lw	a4,20(sp)
     e94:	00a12423          	sw	a0,8(sp)
     e98:	00a75463          	bge	a4,a0,ea0 <play_file+0x52c>
     e9c:	00e12423          	sw	a4,8(sp)
     ea0:	00812583          	lw	a1,8(sp)
     ea4:	00c12503          	lw	a0,12(sp)
     ea8:	00000613          	li	a2,0
     eac:	00002097          	auipc	ra,0x2
     eb0:	4b8080e7          	jalr	1208(ra) # 3364 <fl_fseek>
     eb4:	00000793          	li	a5,0
     eb8:	f8000693          	li	a3,-128
     ebc:	20000713          	li	a4,512
     ec0:	00fd8633          	add	a2,s11,a5
     ec4:	00d60023          	sb	a3,0(a2)
     ec8:	00178793          	addi	a5,a5,1
     ecc:	fee79ae3          	bne	a5,a4,ec0 <play_file+0x54c>
     ed0:	01412583          	lw	a1,20(sp)
     ed4:	00812503          	lw	a0,8(sp)
     ed8:	fffff097          	auipc	ra,0xfffff
     edc:	62c080e7          	jalr	1580(ra) # 504 <draw_progress_bar>
     ee0:	00002097          	auipc	ra,0x2
     ee4:	ce0080e7          	jalr	-800(ra) # 2bc0 <display_refresh>
     ee8:	000a8613          	mv	a2,s5
     eec:	000c0593          	mv	a1,s8
     ef0:	00000513          	li	a0,0
     ef4:	fffff097          	auipc	ra,0xfffff
     ef8:	178080e7          	jalr	376(ra) # 6c <draw_controls>
     efc:	00002097          	auipc	ra,0x2
     f00:	cc4080e7          	jalr	-828(ra) # 2bc0 <display_refresh>
     f04:	0440006f          	j	f48 <play_file+0x5d4>
     f08:	00300793          	li	a5,3
     f0c:	cd9ff06f          	j	be4 <play_file+0x270>
     f10:	00100793          	li	a5,1
     f14:	cd1ff06f          	j	be4 <play_file+0x270>
     f18:	00012823          	sw	zero,16(sp)
     f1c:	c41ff06f          	j	b5c <play_file+0x1e8>
     f20:	00048793          	mv	a5,s1
     f24:	00000a93          	li	s5,0
     f28:	00000c13          	li	s8,0
     f2c:	03712e23          	sw	s7,60(sp)
     f30:	03512c23          	sw	s5,56(sp)
     f34:	000b0b93          	mv	s7,s6
     f38:	03812a23          	sw	s8,52(sp)
     f3c:	e3dff06f          	j	d78 <play_file+0x404>
     f40:	00000a93          	li	s5,0
     f44:	00000c13          	li	s8,0
     f48:	00000793          	li	a5,0
     f4c:	fe1ff06f          	j	f2c <play_file+0x5b8>
     f50:	00c12683          	lw	a3,12(sp)
     f54:	20000613          	li	a2,512
     f58:	00100593          	li	a1,1
     f5c:	000d8513          	mv	a0,s11
     f60:	02f12223          	sw	a5,36(sp)
     f64:	00005097          	auipc	ra,0x5
     f68:	a7c080e7          	jalr	-1412(ra) # 59e0 <fl_fread>
     f6c:	5ca05463          	blez	a0,1534 <play_file+0xbc0>
     f70:	00812783          	lw	a5,8(sp)
     f74:	1ff00713          	li	a4,511
     f78:	f8000693          	li	a3,-128
     f7c:	00a787b3          	add	a5,a5,a0
     f80:	00f12423          	sw	a5,8(sp)
     f84:	02412783          	lw	a5,36(sp)
     f88:	e0a74ce3          	blt	a4,a0,da0 <play_file+0x42c>
     f8c:	01b50633          	add	a2,a0,s11
     f90:	00d60023          	sb	a3,0(a2)
     f94:	00150513          	addi	a0,a0,1
     f98:	ff1ff06f          	j	f88 <play_file+0x614>
     f9c:	04012783          	lw	a5,64(sp)
     fa0:	fff94993          	not	s3,s2
     fa4:	0007a783          	lw	a5,0(a5)
     fa8:	07e7fb13          	andi	s6,a5,126
     fac:	fffb4793          	not	a5,s6
     fb0:	0169f9b3          	and	s3,s3,s6
     fb4:	0127f933          	and	s2,a5,s2
     fb8:	0049f793          	andi	a5,s3,4
     fbc:	02078e63          	beqz	a5,ff8 <play_file+0x684>
     fc0:	0014c793          	xori	a5,s1,1
     fc4:	02f12223          	sw	a5,36(sp)
     fc8:	00049663          	bnez	s1,fd4 <play_file+0x660>
     fcc:	fffff097          	auipc	ra,0xfffff
     fd0:	37c080e7          	jalr	892(ra) # 348 <clear_audio>
     fd4:	02412683          	lw	a3,36(sp)
     fd8:	01412603          	lw	a2,20(sp)
     fdc:	00812583          	lw	a1,8(sp)
     fe0:	000a8793          	mv	a5,s5
     fe4:	000c0713          	mv	a4,s8
     fe8:	05810513          	addi	a0,sp,88
     fec:	fffff097          	auipc	ra,0xfffff
     ff0:	5fc080e7          	jalr	1532(ra) # 5e8 <update_ui>
     ff4:	02412483          	lw	s1,36(sp)
     ff8:	02097793          	andi	a5,s2,32
     ffc:	0c078263          	beqz	a5,10c0 <play_file+0x74c>
    1000:	04412783          	lw	a5,68(sp)
    1004:	1147c263          	blt	a5,s4,1108 <play_file+0x794>
    1008:	00812783          	lw	a5,8(sp)
    100c:	04812703          	lw	a4,72(sp)
    1010:	06f74863          	blt	a4,a5,1080 <play_file+0x70c>
    1014:	00c12503          	lw	a0,12(sp)
    1018:	00005097          	auipc	ra,0x5
    101c:	8e8080e7          	jalr	-1816(ra) # 5900 <fl_fclose>
    1020:	00040863          	beqz	s0,1030 <play_file+0x6bc>
    1024:	00040513          	mv	a0,s0
    1028:	00005097          	auipc	ra,0x5
    102c:	8d8080e7          	jalr	-1832(ra) # 5900 <fl_fclose>
    1030:	fffff097          	auipc	ra,0xfffff
    1034:	318080e7          	jalr	792(ra) # 348 <clear_audio>
    1038:	fffff097          	auipc	ra,0xfffff
    103c:	388080e7          	jalr	904(ra) # 3c0 <clear_screen>
    1040:	fff00513          	li	a0,-1
    1044:	2fc12083          	lw	ra,764(sp)
    1048:	2f812403          	lw	s0,760(sp)
    104c:	2f412483          	lw	s1,756(sp)
    1050:	2f012903          	lw	s2,752(sp)
    1054:	2ec12983          	lw	s3,748(sp)
    1058:	2e812a03          	lw	s4,744(sp)
    105c:	2e412a83          	lw	s5,740(sp)
    1060:	2e012b03          	lw	s6,736(sp)
    1064:	2dc12b83          	lw	s7,732(sp)
    1068:	2d812c03          	lw	s8,728(sp)
    106c:	2d412c83          	lw	s9,724(sp)
    1070:	2d012d03          	lw	s10,720(sp)
    1074:	2cc12d83          	lw	s11,716(sp)
    1078:	30010113          	addi	sp,sp,768
    107c:	00008067          	ret
    1080:	00c12503          	lw	a0,12(sp)
    1084:	00000613          	li	a2,0
    1088:	00000593          	li	a1,0
    108c:	00002097          	auipc	ra,0x2
    1090:	2d8080e7          	jalr	728(ra) # 3364 <fl_fseek>
    1094:	01412603          	lw	a2,20(sp)
    1098:	000a8793          	mv	a5,s5
    109c:	000c0713          	mv	a4,s8
    10a0:	00048693          	mv	a3,s1
    10a4:	00000593          	li	a1,0
    10a8:	05810513          	addi	a0,sp,88
    10ac:	fffff097          	auipc	ra,0xfffff
    10b0:	53c080e7          	jalr	1340(ra) # 5e8 <update_ui>
    10b4:	00000a13          	li	s4,0
    10b8:	02912223          	sw	s1,36(sp)
    10bc:	00012423          	sw	zero,8(sp)
    10c0:	04097913          	andi	s2,s2,64
    10c4:	04090863          	beqz	s2,1114 <play_file+0x7a0>
    10c8:	02812783          	lw	a5,40(sp)
    10cc:	04412703          	lw	a4,68(sp)
    10d0:	04f74063          	blt	a4,a5,1110 <play_file+0x79c>
    10d4:	00c12503          	lw	a0,12(sp)
    10d8:	00005097          	auipc	ra,0x5
    10dc:	828080e7          	jalr	-2008(ra) # 5900 <fl_fclose>
    10e0:	00040863          	beqz	s0,10f0 <play_file+0x77c>
    10e4:	00040513          	mv	a0,s0
    10e8:	00005097          	auipc	ra,0x5
    10ec:	818080e7          	jalr	-2024(ra) # 5900 <fl_fclose>
    10f0:	fffff097          	auipc	ra,0xfffff
    10f4:	258080e7          	jalr	600(ra) # 348 <clear_audio>
    10f8:	fffff097          	auipc	ra,0xfffff
    10fc:	2c8080e7          	jalr	712(ra) # 3c0 <clear_screen>
    1100:	00100513          	li	a0,1
    1104:	f41ff06f          	j	1044 <play_file+0x6d0>
    1108:	00000a13          	li	s4,0
    110c:	fb5ff06f          	j	10c0 <play_file+0x74c>
    1110:	02012423          	sw	zero,40(sp)
    1114:	0089f793          	andi	a5,s3,8
    1118:	02078a63          	beqz	a5,114c <play_file+0x7d8>
    111c:	00006737          	lui	a4,0x6
    1120:	39072783          	lw	a5,912(a4) # 6390 <g_volume>
    1124:	00700693          	li	a3,7
    1128:	00f6c663          	blt	a3,a5,1134 <play_file+0x7c0>
    112c:	00178793          	addi	a5,a5,1
    1130:	38f72823          	sw	a5,912(a4)
    1134:	000067b7          	lui	a5,0x6
    1138:	3907a503          	lw	a0,912(a5) # 6390 <g_volume>
    113c:	02012783          	lw	a5,32(sp)
    1140:	00a7a023          	sw	a0,0(a5)
    1144:	fffff097          	auipc	ra,0xfffff
    1148:	ed8080e7          	jalr	-296(ra) # 1c <set_volume_leds>
    114c:	0109f793          	andi	a5,s3,16
    1150:	02078863          	beqz	a5,1180 <play_file+0x80c>
    1154:	00006737          	lui	a4,0x6
    1158:	39072783          	lw	a5,912(a4) # 6390 <g_volume>
    115c:	00f05663          	blez	a5,1168 <play_file+0x7f4>
    1160:	fff78793          	addi	a5,a5,-1
    1164:	38f72823          	sw	a5,912(a4)
    1168:	000067b7          	lui	a5,0x6
    116c:	3907a503          	lw	a0,912(a5) # 6390 <g_volume>
    1170:	02012783          	lw	a5,32(sp)
    1174:	00a7a023          	sw	a0,0(a5)
    1178:	fffff097          	auipc	ra,0xfffff
    117c:	ea4080e7          	jalr	-348(ra) # 1c <set_volume_leds>
    1180:	0029f993          	andi	s3,s3,2
    1184:	02098a63          	beqz	s3,11b8 <play_file+0x844>
    1188:	00c12503          	lw	a0,12(sp)
    118c:	00004097          	auipc	ra,0x4
    1190:	774080e7          	jalr	1908(ra) # 5900 <fl_fclose>
    1194:	00040863          	beqz	s0,11a4 <play_file+0x830>
    1198:	00040513          	mv	a0,s0
    119c:	00004097          	auipc	ra,0x4
    11a0:	764080e7          	jalr	1892(ra) # 5900 <fl_fclose>
    11a4:	fffff097          	auipc	ra,0xfffff
    11a8:	1a4080e7          	jalr	420(ra) # 348 <clear_audio>
    11ac:	fffff097          	auipc	ra,0xfffff
    11b0:	214080e7          	jalr	532(ra) # 3c0 <clear_screen>
    11b4:	9f1ff06f          	j	ba4 <play_file+0x230>
    11b8:	000b0913          	mv	s2,s6
    11bc:	bf5ff06f          	j	db0 <play_file+0x43c>
    11c0:	3909a783          	lw	a5,912(s3) # 6390 <g_volume>
    11c4:	00fbc663          	blt	s7,a5,11d0 <play_file+0x85c>
    11c8:	00178793          	addi	a5,a5,1
    11cc:	38f9a823          	sw	a5,912(s3)
    11d0:	02012783          	lw	a5,32(sp)
    11d4:	3909a503          	lw	a0,912(s3)
    11d8:	00a7a023          	sw	a0,0(a5)
    11dc:	fffff097          	auipc	ra,0xfffff
    11e0:	e40080e7          	jalr	-448(ra) # 1c <set_volume_leds>
    11e4:	01812783          	lw	a5,24(sp)
    11e8:	ce078793          	addi	a5,a5,-800
    11ec:	00f12c23          	sw	a5,24(sp)
    11f0:	bfdff06f          	j	dec <play_file+0x478>
    11f4:	00012c23          	sw	zero,24(sp)
    11f8:	bfdff06f          	j	df4 <play_file+0x480>
    11fc:	3909a783          	lw	a5,912(s3)
    1200:	00f05663          	blez	a5,120c <play_file+0x898>
    1204:	fff78793          	addi	a5,a5,-1
    1208:	38f9a823          	sw	a5,912(s3)
    120c:	02012783          	lw	a5,32(sp)
    1210:	3909a503          	lw	a0,912(s3)
    1214:	00a7a023          	sw	a0,0(a5)
    1218:	fffff097          	auipc	ra,0xfffff
    121c:	e04080e7          	jalr	-508(ra) # 1c <set_volume_leds>
    1220:	01c12783          	lw	a5,28(sp)
    1224:	ce078793          	addi	a5,a5,-800
    1228:	00f12e23          	sw	a5,28(sp)
    122c:	bf9ff06f          	j	e24 <play_file+0x4b0>
    1230:	00012e23          	sw	zero,28(sp)
    1234:	bf9ff06f          	j	e2c <play_file+0x4b8>
    1238:	0347d463          	bge	a5,s4,1260 <play_file+0x8ec>
    123c:	000047b7          	lui	a5,0x4
    1240:	e7f78793          	addi	a5,a5,-385 # 3e7f <fatfs_compare_names+0x3b>
    1244:	00000c13          	li	s8,0
    1248:	3347da63          	bge	a5,s4,157c <play_file+0xc08>
    124c:	00004537          	lui	a0,0x4
    1250:	e8050513          	addi	a0,a0,-384 # 3e80 <fatfs_compare_names+0x3c>
    1254:	00100593          	li	a1,1
    1258:	00200a93          	li	s5,2
    125c:	c1dff06f          	j	e78 <play_file+0x504>
    1260:	03412783          	lw	a5,52(sp)
    1264:	03812703          	lw	a4,56(sp)
    1268:	00e7e7b3          	or	a5,a5,a4
    126c:	00079663          	bnez	a5,1278 <play_file+0x904>
    1270:	02412783          	lw	a5,36(sp)
    1274:	02f48063          	beq	s1,a5,1294 <play_file+0x920>
    1278:	00000613          	li	a2,0
    127c:	00000593          	li	a1,0
    1280:	00048513          	mv	a0,s1
    1284:	fffff097          	auipc	ra,0xfffff
    1288:	de8080e7          	jalr	-536(ra) # 6c <draw_controls>
    128c:	00002097          	auipc	ra,0x2
    1290:	934080e7          	jalr	-1740(ra) # 2bc0 <display_refresh>
    1294:	10040a63          	beqz	s0,13a8 <play_file+0xa34>
    1298:	01012783          	lw	a5,16(sp)
    129c:	00100713          	li	a4,1
    12a0:	ffd78793          	addi	a5,a5,-3
    12a4:	14f77463          	bgeu	a4,a5,13ec <play_file+0xa78>
    12a8:	07f00793          	li	a5,127
    12ac:	0f97c663          	blt	a5,s9,1398 <play_file+0xa24>
    12b0:	00040693          	mv	a3,s0
    12b4:	08000613          	li	a2,128
    12b8:	00100593          	li	a1,1
    12bc:	0c010513          	addi	a0,sp,192
    12c0:	00004097          	auipc	ra,0x4
    12c4:	720080e7          	jalr	1824(ra) # 59e0 <fl_fread>
    12c8:	08000793          	li	a5,128
    12cc:	0cf51663          	bne	a0,a5,1398 <play_file+0xa24>
    12d0:	002c9793          	slli	a5,s9,0x2
    12d4:	019787b3          	add	a5,a5,s9
    12d8:	00479793          	slli	a5,a5,0x4
    12dc:	41f7dd93          	srai	s11,a5,0x1f
    12e0:	07fdfd93          	andi	s11,s11,127
    12e4:	00fd8db3          	add	s11,s11,a5
    12e8:	407ddd93          	srai	s11,s11,0x7
    12ec:	09bd0e63          	beq	s10,s11,1388 <play_file+0xa14>
    12f0:	04f00793          	li	a5,79
    12f4:	09b7ea63          	bltu	a5,s11,1388 <play_file+0xa14>
    12f8:	000067b7          	lui	a5,0x6
    12fc:	3c47a783          	lw	a5,964(a5) # 63c4 <RGBSEL>
    1300:	00001ab7          	lui	s5,0x1
    1304:	c10a8a93          	addi	s5,s5,-1008 # c10 <play_file+0x29c>
    1308:	00003c37          	lui	s8,0x3
    130c:	00000d13          	li	s10,0
    1310:	015d8ab3          	add	s5,s11,s5
    1314:	02f12223          	sw	a5,36(sp)
    1318:	800c0c13          	addi	s8,s8,-2048 # 2800 <oled_init_mode+0x4>
    131c:	05000593          	li	a1,80
    1320:	000d0513          	mv	a0,s10
    1324:	00001097          	auipc	ra,0x1
    1328:	340080e7          	jalr	832(ra) # 2664 <__divsi3>
    132c:	27050793          	addi	a5,a0,624
    1330:	05010713          	addi	a4,sp,80
    1334:	00e78533          	add	a0,a5,a4
    1338:	e0054683          	lbu	a3,-512(a0)
    133c:	01aa8633          	add	a2,s5,s10
    1340:	00000793          	li	a5,0
    1344:	02412703          	lw	a4,36(sp)
    1348:	02d12c23          	sw	a3,56(sp)
    134c:	02c12a23          	sw	a2,52(sp)
    1350:	00f72023          	sw	a5,0(a4)
    1354:	02f12423          	sw	a5,40(sp)
    1358:	00001097          	auipc	ra,0x1
    135c:	6c4080e7          	jalr	1732(ra) # 2a1c <display_framebuffer>
    1360:	03412603          	lw	a2,52(sp)
    1364:	03812683          	lw	a3,56(sp)
    1368:	02812783          	lw	a5,40(sp)
    136c:	00c50533          	add	a0,a0,a2
    1370:	00d50023          	sb	a3,0(a0)
    1374:	00178793          	addi	a5,a5,1
    1378:	00300713          	li	a4,3
    137c:	fce794e3          	bne	a5,a4,1344 <play_file+0x9d0>
    1380:	080d0d13          	addi	s10,s10,128
    1384:	f98d1ce3          	bne	s10,s8,131c <play_file+0x9a8>
    1388:	001c8c93          	addi	s9,s9,1
    138c:	000d8d13          	mv	s10,s11
    1390:	08000793          	li	a5,128
    1394:	00fc9a63          	bne	s9,a5,13a8 <play_file+0xa34>
    1398:	00040513          	mv	a0,s0
    139c:	00004097          	auipc	ra,0x4
    13a0:	564080e7          	jalr	1380(ra) # 5900 <fl_fclose>
    13a4:	00000413          	li	s0,0
    13a8:	02c12783          	lw	a5,44(sp)
    13ac:	00178793          	addi	a5,a5,1
    13b0:	02f12623          	sw	a5,44(sp)
    13b4:	b60496e3          	bnez	s1,f20 <play_file+0x5ac>
    13b8:	0037f793          	andi	a5,a5,3
    13bc:	b80792e3          	bnez	a5,f40 <play_file+0x5cc>
    13c0:	01412583          	lw	a1,20(sp)
    13c4:	00812503          	lw	a0,8(sp)
    13c8:	02f12223          	sw	a5,36(sp)
    13cc:	00000a93          	li	s5,0
    13d0:	fffff097          	auipc	ra,0xfffff
    13d4:	134080e7          	jalr	308(ra) # 504 <draw_progress_bar>
    13d8:	00001097          	auipc	ra,0x1
    13dc:	7e8080e7          	jalr	2024(ra) # 2bc0 <display_refresh>
    13e0:	02412783          	lw	a5,36(sp)
    13e4:	00000c13          	li	s8,0
    13e8:	b45ff06f          	j	f2c <play_file+0x5b8>
    13ec:	07f00793          	li	a5,127
    13f0:	fb97c4e3          	blt	a5,s9,1398 <play_file+0xa24>
    13f4:	01012703          	lw	a4,16(sp)
    13f8:	00400793          	li	a5,4
    13fc:	18000a93          	li	s5,384
    1400:	00f71463          	bne	a4,a5,1408 <play_file+0xa94>
    1404:	20000a93          	li	s5,512
    1408:	00040693          	mv	a3,s0
    140c:	000a8613          	mv	a2,s5
    1410:	00100593          	li	a1,1
    1414:	0c010513          	addi	a0,sp,192
    1418:	00004097          	auipc	ra,0x4
    141c:	5c8080e7          	jalr	1480(ra) # 59e0 <fl_fread>
    1420:	f7551ce3          	bne	a0,s5,1398 <play_file+0xa24>
    1424:	002c9713          	slli	a4,s9,0x2
    1428:	01970733          	add	a4,a4,s9
    142c:	00471713          	slli	a4,a4,0x4
    1430:	41f75793          	srai	a5,a4,0x1f
    1434:	07f7f793          	andi	a5,a5,127
    1438:	00e787b3          	add	a5,a5,a4
    143c:	4077d793          	srai	a5,a5,0x7
    1440:	0fa78663          	beq	a5,s10,152c <play_file+0xbb8>
    1444:	04f00713          	li	a4,79
    1448:	0ef76063          	bltu	a4,a5,1528 <play_file+0xbb4>
    144c:	000066b7          	lui	a3,0x6
    1450:	3c46a703          	lw	a4,964(a3) # 63c4 <RGBSEL>
    1454:	00001ab7          	lui	s5,0x1
    1458:	c10a8a93          	addi	s5,s5,-1008 # c10 <play_file+0x29c>
    145c:	000036b7          	lui	a3,0x3
    1460:	00000d13          	li	s10,0
    1464:	01578ab3          	add	s5,a5,s5
    1468:	02e12223          	sw	a4,36(sp)
    146c:	00100d93          	li	s11,1
    1470:	80068693          	addi	a3,a3,-2048 # 2800 <oled_init_mode+0x4>
    1474:	05000593          	li	a1,80
    1478:	000d0513          	mv	a0,s10
    147c:	04d12623          	sw	a3,76(sp)
    1480:	02f12e23          	sw	a5,60(sp)
    1484:	00001097          	auipc	ra,0x1
    1488:	1e0080e7          	jalr	480(ra) # 2664 <__divsi3>
    148c:	01012583          	lw	a1,16(sp)
    1490:	01aa8c33          	add	s8,s5,s10
    1494:	080d0d13          	addi	s10,s10,128
    1498:	00002097          	auipc	ra,0x2
    149c:	9c4080e7          	jalr	-1596(ra) # 2e5c <__mulsi3>
    14a0:	05010713          	addi	a4,sp,80
    14a4:	27050793          	addi	a5,a0,624
    14a8:	00e78533          	add	a0,a5,a4
    14ac:	02412783          	lw	a5,36(sp)
    14b0:	e0154603          	lbu	a2,-511(a0)
    14b4:	e0254583          	lbu	a1,-510(a0)
    14b8:	e0054803          	lbu	a6,-512(a0)
    14bc:	0007a023          	sw	zero,0(a5)
    14c0:	02c12423          	sw	a2,40(sp)
    14c4:	02b12a23          	sw	a1,52(sp)
    14c8:	03012c23          	sw	a6,56(sp)
    14cc:	00001097          	auipc	ra,0x1
    14d0:	550080e7          	jalr	1360(ra) # 2a1c <display_framebuffer>
    14d4:	03812803          	lw	a6,56(sp)
    14d8:	02412783          	lw	a5,36(sp)
    14dc:	01850533          	add	a0,a0,s8
    14e0:	01050023          	sb	a6,0(a0)
    14e4:	01b7a023          	sw	s11,0(a5)
    14e8:	00001097          	auipc	ra,0x1
    14ec:	534080e7          	jalr	1332(ra) # 2a1c <display_framebuffer>
    14f0:	03412583          	lw	a1,52(sp)
    14f4:	02412783          	lw	a5,36(sp)
    14f8:	01850533          	add	a0,a0,s8
    14fc:	00b50023          	sb	a1,0(a0)
    1500:	00200713          	li	a4,2
    1504:	00e7a023          	sw	a4,0(a5)
    1508:	00001097          	auipc	ra,0x1
    150c:	514080e7          	jalr	1300(ra) # 2a1c <display_framebuffer>
    1510:	02812603          	lw	a2,40(sp)
    1514:	04c12683          	lw	a3,76(sp)
    1518:	01850533          	add	a0,a0,s8
    151c:	00c50023          	sb	a2,0(a0)
    1520:	03c12783          	lw	a5,60(sp)
    1524:	f4dd18e3          	bne	s10,a3,1474 <play_file+0xb00>
    1528:	00078d13          	mv	s10,a5
    152c:	001c8c93          	addi	s9,s9,1
    1530:	e61ff06f          	j	1390 <play_file+0xa1c>
    1534:	00c12503          	lw	a0,12(sp)
    1538:	00004097          	auipc	ra,0x4
    153c:	3c8080e7          	jalr	968(ra) # 5900 <fl_fclose>
    1540:	00040863          	beqz	s0,1550 <play_file+0xbdc>
    1544:	00040513          	mv	a0,s0
    1548:	00004097          	auipc	ra,0x4
    154c:	3b8080e7          	jalr	952(ra) # 5900 <fl_fclose>
    1550:	fffff097          	auipc	ra,0xfffff
    1554:	df8080e7          	jalr	-520(ra) # 348 <clear_audio>
    1558:	fffff097          	auipc	ra,0xfffff
    155c:	e68080e7          	jalr	-408(ra) # 3c0 <clear_screen>
    1560:	00200513          	li	a0,2
    1564:	ae1ff06f          	j	1044 <play_file+0x6d0>
    1568:	00004537          	lui	a0,0x4
    156c:	e8050513          	addi	a0,a0,-384 # 3e80 <fatfs_compare_names+0x3c>
    1570:	fff00593          	li	a1,-1
    1574:	00200c13          	li	s8,2
    1578:	901ff06f          	j	e78 <play_file+0x504>
    157c:	00001537          	lui	a0,0x1
    1580:	fa050513          	addi	a0,a0,-96 # fa0 <play_file+0x62c>
    1584:	00100593          	li	a1,1
    1588:	00100a93          	li	s5,1
    158c:	8edff06f          	j	e78 <play_file+0x504>

00001590 <main>:
    1590:	000067b7          	lui	a5,0x6
    1594:	3dc7a783          	lw	a5,988(a5) # 63dc <LEDS>
    1598:	fd010113          	addi	sp,sp,-48
    159c:	02112623          	sw	ra,44(sp)
    15a0:	02812423          	sw	s0,40(sp)
    15a4:	02912223          	sw	s1,36(sp)
    15a8:	03212023          	sw	s2,32(sp)
    15ac:	01312e23          	sw	s3,28(sp)
    15b0:	01412c23          	sw	s4,24(sp)
    15b4:	01512a23          	sw	s5,20(sp)
    15b8:	01612823          	sw	s6,16(sp)
    15bc:	01712623          	sw	s7,12(sp)
    15c0:	01812423          	sw	s8,8(sp)
    15c4:	01912223          	sw	s9,4(sp)
    15c8:	01a12023          	sw	s10,0(sp)
    15cc:	0007a023          	sw	zero,0(a5)
    15d0:	000067b7          	lui	a5,0x6
    15d4:	3907a703          	lw	a4,912(a5) # 6390 <g_volume>
    15d8:	000067b7          	lui	a5,0x6
    15dc:	3c87a783          	lw	a5,968(a5) # 63c8 <VOLUME>
    15e0:	00000413          	li	s0,0
    15e4:	00002937          	lui	s2,0x2
    15e8:	00e7a023          	sw	a4,0(a5)
    15ec:	000037b7          	lui	a5,0x3
    15f0:	00006737          	lui	a4,0x6
    15f4:	a5078793          	addi	a5,a5,-1456 # 2a50 <display_putchar>
    15f8:	7cf72c23          	sw	a5,2008(a4) # 67d8 <f_putchar>
    15fc:	00001097          	auipc	ra,0x1
    1600:	300080e7          	jalr	768(ra) # 28fc <oled_init>
    1604:	00001097          	auipc	ra,0x1
    1608:	304080e7          	jalr	772(ra) # 2908 <oled_fullscreen>
    160c:	00000513          	li	a0,0
    1610:	00001097          	auipc	ra,0x1
    1614:	390080e7          	jalr	912(ra) # 29a0 <oled_clear>
    1618:	000024b7          	lui	s1,0x2
    161c:	00001097          	auipc	ra,0x1
    1620:	e24080e7          	jalr	-476(ra) # 2440 <sdcard_init>
    1624:	00002097          	auipc	ra,0x2
    1628:	cd0080e7          	jalr	-816(ra) # 32f4 <fl_init>
    162c:	fffff097          	auipc	ra,0xfffff
    1630:	d94080e7          	jalr	-620(ra) # 3c0 <clear_screen>
    1634:	fffff097          	auipc	ra,0xfffff
    1638:	c48080e7          	jalr	-952(ra) # 27c <show_hourglass>
    163c:	65c90593          	addi	a1,s2,1628 # 265c <sdcard_writesector>
    1640:	60848513          	addi	a0,s1,1544 # 2608 <sdcard_readsector>
    1644:	00003097          	auipc	ra,0x3
    1648:	ce4080e7          	jalr	-796(ra) # 4328 <fl_attach_media>
    164c:	0e051063          	bnez	a0,172c <main+0x19c>
    1650:	fffff097          	auipc	ra,0xfffff
    1654:	cf8080e7          	jalr	-776(ra) # 348 <clear_audio>
    1658:	fffff097          	auipc	ra,0xfffff
    165c:	1e8080e7          	jalr	488(ra) # 840 <scan_files>
    1660:	000067b7          	lui	a5,0x6
    1664:	3cc7ab03          	lw	s6,972(a5) # 63cc <BUTTONS>
    1668:	00006bb7          	lui	s7,0x6
    166c:	00006ab7          	lui	s5,0x6
    1670:	000b2483          	lw	s1,0(s6)
    1674:	00000413          	li	s0,0
    1678:	00100793          	li	a5,1
    167c:	07e4f493          	andi	s1,s1,126
    1680:	00006c37          	lui	s8,0x6
    1684:	7f4b8a13          	addi	s4,s7,2036 # 67f4 <files>
    1688:	00006cb7          	lui	s9,0x6
    168c:	580a8a93          	addi	s5,s5,1408 # 6580 <seq.0>
    1690:	00078663          	beqz	a5,169c <main+0x10c>
    1694:	fffff097          	auipc	ra,0xfffff
    1698:	d2c080e7          	jalr	-724(ra) # 3c0 <clear_screen>
    169c:	00000593          	li	a1,0
    16a0:	00000513          	li	a0,0
    16a4:	00001097          	auipc	ra,0x1
    16a8:	384080e7          	jalr	900(ra) # 2a28 <display_set_cursor>
    16ac:	0ff00593          	li	a1,255
    16b0:	00000513          	li	a0,0
    16b4:	00001097          	auipc	ra,0x1
    16b8:	388080e7          	jalr	904(ra) # 2a3c <display_set_front_back_color>
    16bc:	00006537          	lui	a0,0x6
    16c0:	48450513          	addi	a0,a0,1156 # 6484 <LEDS+0xa8>
    16c4:	00001097          	auipc	ra,0x1
    16c8:	668080e7          	jalr	1640(ra) # 2d2c <printf>
    16cc:	00000593          	li	a1,0
    16d0:	0ff00513          	li	a0,255
    16d4:	00001097          	auipc	ra,0x1
    16d8:	368080e7          	jalr	872(ra) # 2a3c <display_set_front_back_color>
    16dc:	00006937          	lui	s2,0x6
    16e0:	7c492783          	lw	a5,1988(s2) # 67c4 <file_count>
    16e4:	06078063          	beqz	a5,1744 <main+0x1b4>
    16e8:	7f4b8d13          	addi	s10,s7,2036
    16ec:	00000993          	li	s3,0
    16f0:	7c492783          	lw	a5,1988(s2)
    16f4:	06f9d063          	bge	s3,a5,1754 <main+0x1c4>
    16f8:	13341e63          	bne	s0,s3,1834 <main+0x2a4>
    16fc:	0ff00593          	li	a1,255
    1700:	00000513          	li	a0,0
    1704:	00001097          	auipc	ra,0x1
    1708:	338080e7          	jalr	824(ra) # 2a3c <display_set_front_back_color>
    170c:	000d0613          	mv	a2,s10
    1710:	00098593          	mv	a1,s3
    1714:	4b4c0513          	addi	a0,s8,1204 # 64b4 <LEDS+0xd8>
    1718:	00001097          	auipc	ra,0x1
    171c:	614080e7          	jalr	1556(ra) # 2d2c <printf>
    1720:	00198993          	addi	s3,s3,1
    1724:	040d0d13          	addi	s10,s10,64
    1728:	fc9ff06f          	j	16f0 <main+0x160>
    172c:	3ff47793          	andi	a5,s0,1023
    1730:	00079663          	bnez	a5,173c <main+0x1ac>
    1734:	fffff097          	auipc	ra,0xfffff
    1738:	b48080e7          	jalr	-1208(ra) # 27c <show_hourglass>
    173c:	00140413          	addi	s0,s0,1
    1740:	efdff06f          	j	163c <main+0xac>
    1744:	00006537          	lui	a0,0x6
    1748:	4a050513          	addi	a0,a0,1184 # 64a0 <LEDS+0xc4>
    174c:	00001097          	auipc	ra,0x1
    1750:	5e0080e7          	jalr	1504(ra) # 2d2c <printf>
    1754:	00001097          	auipc	ra,0x1
    1758:	46c080e7          	jalr	1132(ra) # 2bc0 <display_refresh>
    175c:	000b2983          	lw	s3,0(s6)
    1760:	fff4c493          	not	s1,s1
    1764:	00006737          	lui	a4,0x6
    1768:	07e9f993          	andi	s3,s3,126
    176c:	0134f4b3          	and	s1,s1,s3
    1770:	0084f613          	andi	a2,s1,8
    1774:	00300793          	li	a5,3
    1778:	0c061463          	bnez	a2,1840 <main+0x2b0>
    177c:	0104f693          	andi	a3,s1,16
    1780:	00400793          	li	a5,4
    1784:	0a069e63          	bnez	a3,1840 <main+0x2b0>
    1788:	0204f693          	andi	a3,s1,32
    178c:	00500793          	li	a5,5
    1790:	0a069863          	bnez	a3,1840 <main+0x2b0>
    1794:	0404f693          	andi	a3,s1,64
    1798:	00600793          	li	a5,6
    179c:	0a069263          	bnez	a3,1840 <main+0x2b0>
    17a0:	7b872783          	lw	a5,1976(a4) # 67b8 <idle.2>
    17a4:	000016b7          	lui	a3,0x1
    17a8:	fa068693          	addi	a3,a3,-96 # fa0 <play_file+0x62c>
    17ac:	00178793          	addi	a5,a5,1
    17b0:	7af72c23          	sw	a5,1976(a4)
    17b4:	00f6d863          	bge	a3,a5,17c4 <main+0x234>
    17b8:	000067b7          	lui	a5,0x6
    17bc:	7a07aa23          	sw	zero,1972(a5) # 67b4 <idx.1>
    17c0:	7a072c23          	sw	zero,1976(a4)
    17c4:	0024f793          	andi	a5,s1,2
    17c8:	28078c63          	beqz	a5,1a60 <main+0x4d0>
    17cc:	7c492703          	lw	a4,1988(s2)
    17d0:	00000793          	li	a5,0
    17d4:	28e05663          	blez	a4,1a60 <main+0x4d0>
    17d8:	00641513          	slli	a0,s0,0x6
    17dc:	00aa0533          	add	a0,s4,a0
    17e0:	fffff097          	auipc	ra,0xfffff
    17e4:	194080e7          	jalr	404(ra) # 974 <play_file>
    17e8:	00100493          	li	s1,1
    17ec:	00150793          	addi	a5,a0,1
    17f0:	ffd7f793          	andi	a5,a5,-3
    17f4:	26078063          	beqz	a5,1a54 <main+0x4c4>
    17f8:	00200493          	li	s1,2
    17fc:	26951063          	bne	a0,s1,1a5c <main+0x4cc>
    1800:	7bcca783          	lw	a5,1980(s9) # 67bc <g_last_was_easter>
    1804:	24079c63          	bnez	a5,1a5c <main+0x4cc>
    1808:	7c492583          	lw	a1,1988(s2)
    180c:	24b05a63          	blez	a1,1a60 <main+0x4d0>
    1810:	00140513          	addi	a0,s0,1
    1814:	00001097          	auipc	ra,0x1
    1818:	ed4080e7          	jalr	-300(ra) # 26e8 <__modsi3>
    181c:	00050413          	mv	s0,a0
    1820:	00651513          	slli	a0,a0,0x6
    1824:	00aa0533          	add	a0,s4,a0
    1828:	fffff097          	auipc	ra,0xfffff
    182c:	14c080e7          	jalr	332(ra) # 974 <play_file>
    1830:	fcdff06f          	j	17fc <main+0x26c>
    1834:	00000593          	li	a1,0
    1838:	0ff00513          	li	a0,255
    183c:	ec9ff06f          	j	1704 <main+0x174>
    1840:	7a072c23          	sw	zero,1976(a4)
    1844:	00006737          	lui	a4,0x6
    1848:	7b472583          	lw	a1,1972(a4) # 67b4 <idx.1>
    184c:	00259693          	slli	a3,a1,0x2
    1850:	00da86b3          	add	a3,s5,a3
    1854:	0006a683          	lw	a3,0(a3)
    1858:	16f69c63          	bne	a3,a5,19d0 <main+0x440>
    185c:	00158793          	addi	a5,a1,1
    1860:	00800693          	li	a3,8
    1864:	16d79a63          	bne	a5,a3,19d8 <main+0x448>
    1868:	000067b7          	lui	a5,0x6
    186c:	7a072a23          	sw	zero,1972(a4)
    1870:	00100713          	li	a4,1
    1874:	7ce7a023          	sw	a4,1984(a5) # 67c0 <g_skip_image>
    1878:	fffff097          	auipc	ra,0xfffff
    187c:	b48080e7          	jalr	-1208(ra) # 3c0 <clear_screen>
    1880:	00000593          	li	a1,0
    1884:	0ff00513          	li	a0,255
    1888:	00001097          	auipc	ra,0x1
    188c:	1b4080e7          	jalr	436(ra) # 2a3c <display_set_front_back_color>
    1890:	01400593          	li	a1,20
    1894:	02200513          	li	a0,34
    1898:	00001097          	auipc	ra,0x1
    189c:	190080e7          	jalr	400(ra) # 2a28 <display_set_cursor>
    18a0:	00006537          	lui	a0,0x6
    18a4:	4bc50513          	addi	a0,a0,1212 # 64bc <LEDS+0xe0>
    18a8:	00001097          	auipc	ra,0x1
    18ac:	484080e7          	jalr	1156(ra) # 2d2c <printf>
    18b0:	01c00593          	li	a1,28
    18b4:	02200513          	li	a0,34
    18b8:	00001097          	auipc	ra,0x1
    18bc:	170080e7          	jalr	368(ra) # 2a28 <display_set_cursor>
    18c0:	00006537          	lui	a0,0x6
    18c4:	4c850513          	addi	a0,a0,1224 # 64c8 <LEDS+0xec>
    18c8:	00001097          	auipc	ra,0x1
    18cc:	464080e7          	jalr	1124(ra) # 2d2c <printf>
    18d0:	02400593          	li	a1,36
    18d4:	02200513          	li	a0,34
    18d8:	00001097          	auipc	ra,0x1
    18dc:	150080e7          	jalr	336(ra) # 2a28 <display_set_cursor>
    18e0:	00006537          	lui	a0,0x6
    18e4:	4d450513          	addi	a0,a0,1236 # 64d4 <LEDS+0xf8>
    18e8:	00001097          	auipc	ra,0x1
    18ec:	444080e7          	jalr	1092(ra) # 2d2c <printf>
    18f0:	02c00593          	li	a1,44
    18f4:	02200513          	li	a0,34
    18f8:	00001097          	auipc	ra,0x1
    18fc:	130080e7          	jalr	304(ra) # 2a28 <display_set_cursor>
    1900:	00006537          	lui	a0,0x6
    1904:	4e050513          	addi	a0,a0,1248 # 64e0 <LEDS+0x104>
    1908:	00001097          	auipc	ra,0x1
    190c:	424080e7          	jalr	1060(ra) # 2d2c <printf>
    1910:	03400593          	li	a1,52
    1914:	02200513          	li	a0,34
    1918:	00001097          	auipc	ra,0x1
    191c:	110080e7          	jalr	272(ra) # 2a28 <display_set_cursor>
    1920:	00006537          	lui	a0,0x6
    1924:	4f050513          	addi	a0,a0,1264 # 64f0 <LEDS+0x114>
    1928:	00001097          	auipc	ra,0x1
    192c:	404080e7          	jalr	1028(ra) # 2d2c <printf>
    1930:	03c00593          	li	a1,60
    1934:	02200513          	li	a0,34
    1938:	00001097          	auipc	ra,0x1
    193c:	0f0080e7          	jalr	240(ra) # 2a28 <display_set_cursor>
    1940:	00006537          	lui	a0,0x6
    1944:	50050513          	addi	a0,a0,1280 # 6500 <LEDS+0x124>
    1948:	00001097          	auipc	ra,0x1
    194c:	3e4080e7          	jalr	996(ra) # 2d2c <printf>
    1950:	04400593          	li	a1,68
    1954:	02200513          	li	a0,34
    1958:	00001097          	auipc	ra,0x1
    195c:	0d0080e7          	jalr	208(ra) # 2a28 <display_set_cursor>
    1960:	00006537          	lui	a0,0x6
    1964:	51050513          	addi	a0,a0,1296 # 6510 <LEDS+0x134>
    1968:	00001097          	auipc	ra,0x1
    196c:	3c4080e7          	jalr	964(ra) # 2d2c <printf>
    1970:	04c00593          	li	a1,76
    1974:	02200513          	li	a0,34
    1978:	00001097          	auipc	ra,0x1
    197c:	0b0080e7          	jalr	176(ra) # 2a28 <display_set_cursor>
    1980:	00006537          	lui	a0,0x6
    1984:	52050513          	addi	a0,a0,1312 # 6520 <LEDS+0x144>
    1988:	00001097          	auipc	ra,0x1
    198c:	3a4080e7          	jalr	932(ra) # 2d2c <printf>
    1990:	05400593          	li	a1,84
    1994:	02200513          	li	a0,34
    1998:	00001097          	auipc	ra,0x1
    199c:	090080e7          	jalr	144(ra) # 2a28 <display_set_cursor>
    19a0:	00006537          	lui	a0,0x6
    19a4:	52c50513          	addi	a0,a0,1324 # 652c <LEDS+0x150>
    19a8:	00001097          	auipc	ra,0x1
    19ac:	384080e7          	jalr	900(ra) # 2d2c <printf>
    19b0:	00001097          	auipc	ra,0x1
    19b4:	210080e7          	jalr	528(ra) # 2bc0 <display_refresh>
    19b8:	00006537          	lui	a0,0x6
    19bc:	44850513          	addi	a0,a0,1096 # 6448 <LEDS+0x6c>
    19c0:	fffff097          	auipc	ra,0xfffff
    19c4:	fb4080e7          	jalr	-76(ra) # 974 <play_file>
    19c8:	00100793          	li	a5,1
    19cc:	0940006f          	j	1a60 <main+0x4d0>
    19d0:	ffd78793          	addi	a5,a5,-3
    19d4:	0017b793          	seqz	a5,a5
    19d8:	7af72a23          	sw	a5,1972(a4)
    19dc:	02060063          	beqz	a2,19fc <main+0x46c>
    19e0:	7c492583          	lw	a1,1988(s2)
    19e4:	00058c63          	beqz	a1,19fc <main+0x46c>
    19e8:	fff40513          	addi	a0,s0,-1
    19ec:	00b50533          	add	a0,a0,a1
    19f0:	00001097          	auipc	ra,0x1
    19f4:	cf8080e7          	jalr	-776(ra) # 26e8 <__modsi3>
    19f8:	00050413          	mv	s0,a0
    19fc:	0104f793          	andi	a5,s1,16
    1a00:	dc0782e3          	beqz	a5,17c4 <main+0x234>
    1a04:	7c492583          	lw	a1,1988(s2)
    1a08:	da058ee3          	beqz	a1,17c4 <main+0x234>
    1a0c:	00140513          	addi	a0,s0,1
    1a10:	00001097          	auipc	ra,0x1
    1a14:	cd8080e7          	jalr	-808(ra) # 26e8 <__modsi3>
    1a18:	00050413          	mv	s0,a0
    1a1c:	da9ff06f          	j	17c4 <main+0x234>
    1a20:	02951463          	bne	a0,s1,1a48 <main+0x4b8>
    1a24:	00140513          	addi	a0,s0,1
    1a28:	00001097          	auipc	ra,0x1
    1a2c:	cc0080e7          	jalr	-832(ra) # 26e8 <__modsi3>
    1a30:	00050413          	mv	s0,a0
    1a34:	00651513          	slli	a0,a0,0x6
    1a38:	00aa0533          	add	a0,s4,a0
    1a3c:	fffff097          	auipc	ra,0xfffff
    1a40:	f38080e7          	jalr	-200(ra) # 974 <play_file>
    1a44:	da9ff06f          	j	17ec <main+0x25c>
    1a48:	fff40513          	addi	a0,s0,-1
    1a4c:	00b50533          	add	a0,a0,a1
    1a50:	fd9ff06f          	j	1a28 <main+0x498>
    1a54:	7c492583          	lw	a1,1988(s2)
    1a58:	fcb044e3          	bgtz	a1,1a20 <main+0x490>
    1a5c:	00000793          	li	a5,0
    1a60:	00098493          	mv	s1,s3
    1a64:	c2dff06f          	j	1690 <main+0x100>

00001a68 <sdcard_ponder>:
    1a68:	fe010113          	addi	sp,sp,-32
    1a6c:	00812e23          	sw	s0,28(sp)
    1a70:	02010413          	addi	s0,sp,32
    1a74:	fe042623          	sw	zero,-20(s0)
    1a78:	fe042423          	sw	zero,-24(s0)
    1a7c:	0380006f          	j	1ab4 <sdcard_ponder+0x4c>
    1a80:	000067b7          	lui	a5,0x6
    1a84:	3d07a783          	lw	a5,976(a5) # 63d0 <SDCARD>
    1a88:	fec42703          	lw	a4,-20(s0)
    1a8c:	00676713          	ori	a4,a4,6
    1a90:	00e7a023          	sw	a4,0(a5)
    1a94:	00100713          	li	a4,1
    1a98:	fec42783          	lw	a5,-20(s0)
    1a9c:	40f707b3          	sub	a5,a4,a5
    1aa0:	fef42623          	sw	a5,-20(s0)
    1aa4:	00000013          	nop
    1aa8:	fe842783          	lw	a5,-24(s0)
    1aac:	00178793          	addi	a5,a5,1
    1ab0:	fef42423          	sw	a5,-24(s0)
    1ab4:	fe842703          	lw	a4,-24(s0)
    1ab8:	00f00793          	li	a5,15
    1abc:	fce7d2e3          	bge	a5,a4,1a80 <sdcard_ponder+0x18>
    1ac0:	00000013          	nop
    1ac4:	00000013          	nop
    1ac8:	01c12403          	lw	s0,28(sp)
    1acc:	02010113          	addi	sp,sp,32
    1ad0:	00008067          	ret

00001ad4 <sdcard_send>:
    1ad4:	fd010113          	addi	sp,sp,-48
    1ad8:	02112623          	sw	ra,44(sp)
    1adc:	02812423          	sw	s0,40(sp)
    1ae0:	03010413          	addi	s0,sp,48
    1ae4:	fca42e23          	sw	a0,-36(s0)
    1ae8:	fe042623          	sw	zero,-20(s0)
    1aec:	fe042423          	sw	zero,-24(s0)
    1af0:	fdc42783          	lw	a5,-36(s0)
    1af4:	fef42223          	sw	a5,-28(s0)
    1af8:	fe442783          	lw	a5,-28(s0)
    1afc:	4077d793          	srai	a5,a5,0x7
    1b00:	0017f793          	andi	a5,a5,1
    1b04:	fef42423          	sw	a5,-24(s0)
    1b08:	fec42783          	lw	a5,-20(s0)
    1b0c:	fe442703          	lw	a4,-28(s0)
    1b10:	00f717b3          	sll	a5,a4,a5
    1b14:	fef42223          	sw	a5,-28(s0)
    1b18:	fe842783          	lw	a5,-24(s0)
    1b1c:	00179693          	slli	a3,a5,0x1
    1b20:	000067b7          	lui	a5,0x6
    1b24:	3d07a783          	lw	a5,976(a5) # 63d0 <SDCARD>
    1b28:	fec42703          	lw	a4,-20(s0)
    1b2c:	00e6e733          	or	a4,a3,a4
    1b30:	00e7a023          	sw	a4,0(a5)
    1b34:	00100713          	li	a4,1
    1b38:	fec42783          	lw	a5,-20(s0)
    1b3c:	40f707b3          	sub	a5,a4,a5
    1b40:	fef42623          	sw	a5,-20(s0)
    1b44:	fe442783          	lw	a5,-28(s0)
    1b48:	4077d793          	srai	a5,a5,0x7
    1b4c:	0017f793          	andi	a5,a5,1
    1b50:	fef42423          	sw	a5,-24(s0)
    1b54:	fec42783          	lw	a5,-20(s0)
    1b58:	fe442703          	lw	a4,-28(s0)
    1b5c:	00f717b3          	sll	a5,a4,a5
    1b60:	fef42223          	sw	a5,-28(s0)
    1b64:	fe842783          	lw	a5,-24(s0)
    1b68:	00179693          	slli	a3,a5,0x1
    1b6c:	000067b7          	lui	a5,0x6
    1b70:	3d07a783          	lw	a5,976(a5) # 63d0 <SDCARD>
    1b74:	fec42703          	lw	a4,-20(s0)
    1b78:	00e6e733          	or	a4,a3,a4
    1b7c:	00e7a023          	sw	a4,0(a5)
    1b80:	00100713          	li	a4,1
    1b84:	fec42783          	lw	a5,-20(s0)
    1b88:	40f707b3          	sub	a5,a4,a5
    1b8c:	fef42623          	sw	a5,-20(s0)
    1b90:	fe442783          	lw	a5,-28(s0)
    1b94:	4077d793          	srai	a5,a5,0x7
    1b98:	0017f793          	andi	a5,a5,1
    1b9c:	fef42423          	sw	a5,-24(s0)
    1ba0:	fec42783          	lw	a5,-20(s0)
    1ba4:	fe442703          	lw	a4,-28(s0)
    1ba8:	00f717b3          	sll	a5,a4,a5
    1bac:	fef42223          	sw	a5,-28(s0)
    1bb0:	fe842783          	lw	a5,-24(s0)
    1bb4:	00179693          	slli	a3,a5,0x1
    1bb8:	000067b7          	lui	a5,0x6
    1bbc:	3d07a783          	lw	a5,976(a5) # 63d0 <SDCARD>
    1bc0:	fec42703          	lw	a4,-20(s0)
    1bc4:	00e6e733          	or	a4,a3,a4
    1bc8:	00e7a023          	sw	a4,0(a5)
    1bcc:	00100713          	li	a4,1
    1bd0:	fec42783          	lw	a5,-20(s0)
    1bd4:	40f707b3          	sub	a5,a4,a5
    1bd8:	fef42623          	sw	a5,-20(s0)
    1bdc:	fe442783          	lw	a5,-28(s0)
    1be0:	4077d793          	srai	a5,a5,0x7
    1be4:	0017f793          	andi	a5,a5,1
    1be8:	fef42423          	sw	a5,-24(s0)
    1bec:	fec42783          	lw	a5,-20(s0)
    1bf0:	fe442703          	lw	a4,-28(s0)
    1bf4:	00f717b3          	sll	a5,a4,a5
    1bf8:	fef42223          	sw	a5,-28(s0)
    1bfc:	fe842783          	lw	a5,-24(s0)
    1c00:	00179693          	slli	a3,a5,0x1
    1c04:	000067b7          	lui	a5,0x6
    1c08:	3d07a783          	lw	a5,976(a5) # 63d0 <SDCARD>
    1c0c:	fec42703          	lw	a4,-20(s0)
    1c10:	00e6e733          	or	a4,a3,a4
    1c14:	00e7a023          	sw	a4,0(a5)
    1c18:	00100713          	li	a4,1
    1c1c:	fec42783          	lw	a5,-20(s0)
    1c20:	40f707b3          	sub	a5,a4,a5
    1c24:	fef42623          	sw	a5,-20(s0)
    1c28:	fe442783          	lw	a5,-28(s0)
    1c2c:	4077d793          	srai	a5,a5,0x7
    1c30:	0017f793          	andi	a5,a5,1
    1c34:	fef42423          	sw	a5,-24(s0)
    1c38:	fec42783          	lw	a5,-20(s0)
    1c3c:	fe442703          	lw	a4,-28(s0)
    1c40:	00f717b3          	sll	a5,a4,a5
    1c44:	fef42223          	sw	a5,-28(s0)
    1c48:	fe842783          	lw	a5,-24(s0)
    1c4c:	00179693          	slli	a3,a5,0x1
    1c50:	000067b7          	lui	a5,0x6
    1c54:	3d07a783          	lw	a5,976(a5) # 63d0 <SDCARD>
    1c58:	fec42703          	lw	a4,-20(s0)
    1c5c:	00e6e733          	or	a4,a3,a4
    1c60:	00e7a023          	sw	a4,0(a5)
    1c64:	00100713          	li	a4,1
    1c68:	fec42783          	lw	a5,-20(s0)
    1c6c:	40f707b3          	sub	a5,a4,a5
    1c70:	fef42623          	sw	a5,-20(s0)
    1c74:	fe442783          	lw	a5,-28(s0)
    1c78:	4077d793          	srai	a5,a5,0x7
    1c7c:	0017f793          	andi	a5,a5,1
    1c80:	fef42423          	sw	a5,-24(s0)
    1c84:	fec42783          	lw	a5,-20(s0)
    1c88:	fe442703          	lw	a4,-28(s0)
    1c8c:	00f717b3          	sll	a5,a4,a5
    1c90:	fef42223          	sw	a5,-28(s0)
    1c94:	fe842783          	lw	a5,-24(s0)
    1c98:	00179693          	slli	a3,a5,0x1
    1c9c:	000067b7          	lui	a5,0x6
    1ca0:	3d07a783          	lw	a5,976(a5) # 63d0 <SDCARD>
    1ca4:	fec42703          	lw	a4,-20(s0)
    1ca8:	00e6e733          	or	a4,a3,a4
    1cac:	00e7a023          	sw	a4,0(a5)
    1cb0:	00100713          	li	a4,1
    1cb4:	fec42783          	lw	a5,-20(s0)
    1cb8:	40f707b3          	sub	a5,a4,a5
    1cbc:	fef42623          	sw	a5,-20(s0)
    1cc0:	fe442783          	lw	a5,-28(s0)
    1cc4:	4077d793          	srai	a5,a5,0x7
    1cc8:	0017f793          	andi	a5,a5,1
    1ccc:	fef42423          	sw	a5,-24(s0)
    1cd0:	fec42783          	lw	a5,-20(s0)
    1cd4:	fe442703          	lw	a4,-28(s0)
    1cd8:	00f717b3          	sll	a5,a4,a5
    1cdc:	fef42223          	sw	a5,-28(s0)
    1ce0:	fe842783          	lw	a5,-24(s0)
    1ce4:	00179693          	slli	a3,a5,0x1
    1ce8:	000067b7          	lui	a5,0x6
    1cec:	3d07a783          	lw	a5,976(a5) # 63d0 <SDCARD>
    1cf0:	fec42703          	lw	a4,-20(s0)
    1cf4:	00e6e733          	or	a4,a3,a4
    1cf8:	00e7a023          	sw	a4,0(a5)
    1cfc:	00100713          	li	a4,1
    1d00:	fec42783          	lw	a5,-20(s0)
    1d04:	40f707b3          	sub	a5,a4,a5
    1d08:	fef42623          	sw	a5,-20(s0)
    1d0c:	fe442783          	lw	a5,-28(s0)
    1d10:	4077d793          	srai	a5,a5,0x7
    1d14:	0017f793          	andi	a5,a5,1
    1d18:	fef42423          	sw	a5,-24(s0)
    1d1c:	fec42783          	lw	a5,-20(s0)
    1d20:	fe442703          	lw	a4,-28(s0)
    1d24:	00f717b3          	sll	a5,a4,a5
    1d28:	fef42223          	sw	a5,-28(s0)
    1d2c:	fe842783          	lw	a5,-24(s0)
    1d30:	00179693          	slli	a3,a5,0x1
    1d34:	000067b7          	lui	a5,0x6
    1d38:	3d07a783          	lw	a5,976(a5) # 63d0 <SDCARD>
    1d3c:	fec42703          	lw	a4,-20(s0)
    1d40:	00e6e733          	or	a4,a3,a4
    1d44:	00e7a023          	sw	a4,0(a5)
    1d48:	00100713          	li	a4,1
    1d4c:	fec42783          	lw	a5,-20(s0)
    1d50:	40f707b3          	sub	a5,a4,a5
    1d54:	fef42623          	sw	a5,-20(s0)
    1d58:	fe442783          	lw	a5,-28(s0)
    1d5c:	4077d793          	srai	a5,a5,0x7
    1d60:	0017f793          	andi	a5,a5,1
    1d64:	fef42423          	sw	a5,-24(s0)
    1d68:	fec42783          	lw	a5,-20(s0)
    1d6c:	fe442703          	lw	a4,-28(s0)
    1d70:	00f717b3          	sll	a5,a4,a5
    1d74:	fef42223          	sw	a5,-28(s0)
    1d78:	fe842783          	lw	a5,-24(s0)
    1d7c:	00179693          	slli	a3,a5,0x1
    1d80:	000067b7          	lui	a5,0x6
    1d84:	3d07a783          	lw	a5,976(a5) # 63d0 <SDCARD>
    1d88:	fec42703          	lw	a4,-20(s0)
    1d8c:	00e6e733          	or	a4,a3,a4
    1d90:	00e7a023          	sw	a4,0(a5)
    1d94:	00100713          	li	a4,1
    1d98:	fec42783          	lw	a5,-20(s0)
    1d9c:	40f707b3          	sub	a5,a4,a5
    1da0:	fef42623          	sw	a5,-20(s0)
    1da4:	fe442783          	lw	a5,-28(s0)
    1da8:	4077d793          	srai	a5,a5,0x7
    1dac:	0017f793          	andi	a5,a5,1
    1db0:	fef42423          	sw	a5,-24(s0)
    1db4:	fec42783          	lw	a5,-20(s0)
    1db8:	fe442703          	lw	a4,-28(s0)
    1dbc:	00f717b3          	sll	a5,a4,a5
    1dc0:	fef42223          	sw	a5,-28(s0)
    1dc4:	fe842783          	lw	a5,-24(s0)
    1dc8:	00179693          	slli	a3,a5,0x1
    1dcc:	000067b7          	lui	a5,0x6
    1dd0:	3d07a783          	lw	a5,976(a5) # 63d0 <SDCARD>
    1dd4:	fec42703          	lw	a4,-20(s0)
    1dd8:	00e6e733          	or	a4,a3,a4
    1ddc:	00e7a023          	sw	a4,0(a5)
    1de0:	00100713          	li	a4,1
    1de4:	fec42783          	lw	a5,-20(s0)
    1de8:	40f707b3          	sub	a5,a4,a5
    1dec:	fef42623          	sw	a5,-20(s0)
    1df0:	fe442783          	lw	a5,-28(s0)
    1df4:	4077d793          	srai	a5,a5,0x7
    1df8:	0017f793          	andi	a5,a5,1
    1dfc:	fef42423          	sw	a5,-24(s0)
    1e00:	fec42783          	lw	a5,-20(s0)
    1e04:	fe442703          	lw	a4,-28(s0)
    1e08:	00f717b3          	sll	a5,a4,a5
    1e0c:	fef42223          	sw	a5,-28(s0)
    1e10:	fe842783          	lw	a5,-24(s0)
    1e14:	00179693          	slli	a3,a5,0x1
    1e18:	000067b7          	lui	a5,0x6
    1e1c:	3d07a783          	lw	a5,976(a5) # 63d0 <SDCARD>
    1e20:	fec42703          	lw	a4,-20(s0)
    1e24:	00e6e733          	or	a4,a3,a4
    1e28:	00e7a023          	sw	a4,0(a5)
    1e2c:	00100713          	li	a4,1
    1e30:	fec42783          	lw	a5,-20(s0)
    1e34:	40f707b3          	sub	a5,a4,a5
    1e38:	fef42623          	sw	a5,-20(s0)
    1e3c:	fe442783          	lw	a5,-28(s0)
    1e40:	4077d793          	srai	a5,a5,0x7
    1e44:	0017f793          	andi	a5,a5,1
    1e48:	fef42423          	sw	a5,-24(s0)
    1e4c:	fec42783          	lw	a5,-20(s0)
    1e50:	fe442703          	lw	a4,-28(s0)
    1e54:	00f717b3          	sll	a5,a4,a5
    1e58:	fef42223          	sw	a5,-28(s0)
    1e5c:	fe842783          	lw	a5,-24(s0)
    1e60:	00179693          	slli	a3,a5,0x1
    1e64:	000067b7          	lui	a5,0x6
    1e68:	3d07a783          	lw	a5,976(a5) # 63d0 <SDCARD>
    1e6c:	fec42703          	lw	a4,-20(s0)
    1e70:	00e6e733          	or	a4,a3,a4
    1e74:	00e7a023          	sw	a4,0(a5)
    1e78:	00100713          	li	a4,1
    1e7c:	fec42783          	lw	a5,-20(s0)
    1e80:	40f707b3          	sub	a5,a4,a5
    1e84:	fef42623          	sw	a5,-20(s0)
    1e88:	fe442783          	lw	a5,-28(s0)
    1e8c:	4077d793          	srai	a5,a5,0x7
    1e90:	0017f793          	andi	a5,a5,1
    1e94:	fef42423          	sw	a5,-24(s0)
    1e98:	fec42783          	lw	a5,-20(s0)
    1e9c:	fe442703          	lw	a4,-28(s0)
    1ea0:	00f717b3          	sll	a5,a4,a5
    1ea4:	fef42223          	sw	a5,-28(s0)
    1ea8:	fe842783          	lw	a5,-24(s0)
    1eac:	00179693          	slli	a3,a5,0x1
    1eb0:	000067b7          	lui	a5,0x6
    1eb4:	3d07a783          	lw	a5,976(a5) # 63d0 <SDCARD>
    1eb8:	fec42703          	lw	a4,-20(s0)
    1ebc:	00e6e733          	or	a4,a3,a4
    1ec0:	00e7a023          	sw	a4,0(a5)
    1ec4:	00100713          	li	a4,1
    1ec8:	fec42783          	lw	a5,-20(s0)
    1ecc:	40f707b3          	sub	a5,a4,a5
    1ed0:	fef42623          	sw	a5,-20(s0)
    1ed4:	fe442783          	lw	a5,-28(s0)
    1ed8:	4077d793          	srai	a5,a5,0x7
    1edc:	0017f793          	andi	a5,a5,1
    1ee0:	fef42423          	sw	a5,-24(s0)
    1ee4:	fec42783          	lw	a5,-20(s0)
    1ee8:	fe442703          	lw	a4,-28(s0)
    1eec:	00f717b3          	sll	a5,a4,a5
    1ef0:	fef42223          	sw	a5,-28(s0)
    1ef4:	fe842783          	lw	a5,-24(s0)
    1ef8:	00179693          	slli	a3,a5,0x1
    1efc:	000067b7          	lui	a5,0x6
    1f00:	3d07a783          	lw	a5,976(a5) # 63d0 <SDCARD>
    1f04:	fec42703          	lw	a4,-20(s0)
    1f08:	00e6e733          	or	a4,a3,a4
    1f0c:	00e7a023          	sw	a4,0(a5)
    1f10:	00100713          	li	a4,1
    1f14:	fec42783          	lw	a5,-20(s0)
    1f18:	40f707b3          	sub	a5,a4,a5
    1f1c:	fef42623          	sw	a5,-20(s0)
    1f20:	fe442783          	lw	a5,-28(s0)
    1f24:	4077d793          	srai	a5,a5,0x7
    1f28:	0017f793          	andi	a5,a5,1
    1f2c:	fef42423          	sw	a5,-24(s0)
    1f30:	fec42783          	lw	a5,-20(s0)
    1f34:	fe442703          	lw	a4,-28(s0)
    1f38:	00f717b3          	sll	a5,a4,a5
    1f3c:	fef42223          	sw	a5,-28(s0)
    1f40:	fe842783          	lw	a5,-24(s0)
    1f44:	00179693          	slli	a3,a5,0x1
    1f48:	000067b7          	lui	a5,0x6
    1f4c:	3d07a783          	lw	a5,976(a5) # 63d0 <SDCARD>
    1f50:	fec42703          	lw	a4,-20(s0)
    1f54:	00e6e733          	or	a4,a3,a4
    1f58:	00e7a023          	sw	a4,0(a5)
    1f5c:	00100713          	li	a4,1
    1f60:	fec42783          	lw	a5,-20(s0)
    1f64:	40f707b3          	sub	a5,a4,a5
    1f68:	fef42623          	sw	a5,-20(s0)
    1f6c:	fe442783          	lw	a5,-28(s0)
    1f70:	4077d793          	srai	a5,a5,0x7
    1f74:	0017f793          	andi	a5,a5,1
    1f78:	fef42423          	sw	a5,-24(s0)
    1f7c:	fec42783          	lw	a5,-20(s0)
    1f80:	fe442703          	lw	a4,-28(s0)
    1f84:	00f717b3          	sll	a5,a4,a5
    1f88:	fef42223          	sw	a5,-28(s0)
    1f8c:	fe842783          	lw	a5,-24(s0)
    1f90:	00179693          	slli	a3,a5,0x1
    1f94:	000067b7          	lui	a5,0x6
    1f98:	3d07a783          	lw	a5,976(a5) # 63d0 <SDCARD>
    1f9c:	fec42703          	lw	a4,-20(s0)
    1fa0:	00e6e733          	or	a4,a3,a4
    1fa4:	00e7a023          	sw	a4,0(a5)
    1fa8:	00100713          	li	a4,1
    1fac:	fec42783          	lw	a5,-20(s0)
    1fb0:	40f707b3          	sub	a5,a4,a5
    1fb4:	fef42623          	sw	a5,-20(s0)
    1fb8:	000067b7          	lui	a5,0x6
    1fbc:	3d07a783          	lw	a5,976(a5) # 63d0 <SDCARD>
    1fc0:	00200713          	li	a4,2
    1fc4:	00e7a023          	sw	a4,0(a5)
    1fc8:	000067b7          	lui	a5,0x6
    1fcc:	7c87a783          	lw	a5,1992(a5) # 67c8 <sdcard_while_loading_callback>
    1fd0:	000780e7          	jalr	a5
    1fd4:	00000013          	nop
    1fd8:	02c12083          	lw	ra,44(sp)
    1fdc:	02812403          	lw	s0,40(sp)
    1fe0:	03010113          	addi	sp,sp,48
    1fe4:	00008067          	ret

00001fe8 <sdcard_read>:
    1fe8:	fc010113          	addi	sp,sp,-64
    1fec:	02112e23          	sw	ra,60(sp)
    1ff0:	02812c23          	sw	s0,56(sp)
    1ff4:	04010413          	addi	s0,sp,64
    1ff8:	00050793          	mv	a5,a0
    1ffc:	00058713          	mv	a4,a1
    2000:	fcf407a3          	sb	a5,-49(s0)
    2004:	00070793          	mv	a5,a4
    2008:	fcf40723          	sb	a5,-50(s0)
    200c:	fce44783          	lbu	a5,-50(s0)
    2010:	fef42223          	sw	a5,-28(s0)
    2014:	fcf44783          	lbu	a5,-49(s0)
    2018:	fef42023          	sw	a5,-32(s0)
    201c:	fe042623          	sw	zero,-20(s0)
    2020:	0ff00793          	li	a5,255
    2024:	fef42423          	sw	a5,-24(s0)
    2028:	0600006f          	j	2088 <sdcard_read+0xa0>
    202c:	000067b7          	lui	a5,0x6
    2030:	3d07a783          	lw	a5,976(a5) # 63d0 <SDCARD>
    2034:	00300713          	li	a4,3
    2038:	00e7a023          	sw	a4,0(a5)
    203c:	fec42783          	lw	a5,-20(s0)
    2040:	00178793          	addi	a5,a5,1
    2044:	fef42623          	sw	a5,-20(s0)
    2048:	000067b7          	lui	a5,0x6
    204c:	3d07a783          	lw	a5,976(a5) # 63d0 <SDCARD>
    2050:	00200713          	li	a4,2
    2054:	00e7a023          	sw	a4,0(a5)
    2058:	000067b7          	lui	a5,0x6
    205c:	3d07a783          	lw	a5,976(a5) # 63d0 <SDCARD>
    2060:	0007a783          	lw	a5,0(a5)
    2064:	fcf42e23          	sw	a5,-36(s0)
    2068:	fe842783          	lw	a5,-24(s0)
    206c:	00179793          	slli	a5,a5,0x1
    2070:	fdc42703          	lw	a4,-36(s0)
    2074:	00f767b3          	or	a5,a4,a5
    2078:	fef42423          	sw	a5,-24(s0)
    207c:	000067b7          	lui	a5,0x6
    2080:	7c87a783          	lw	a5,1992(a5) # 67c8 <sdcard_while_loading_callback>
    2084:	000780e7          	jalr	a5
    2088:	fe442783          	lw	a5,-28(s0)
    208c:	00078e63          	beqz	a5,20a8 <sdcard_read+0xc0>
    2090:	fe042783          	lw	a5,-32(s0)
    2094:	fff78793          	addi	a5,a5,-1
    2098:	fe842703          	lw	a4,-24(s0)
    209c:	40f757b3          	sra	a5,a4,a5
    20a0:	0017f793          	andi	a5,a5,1
    20a4:	f80794e3          	bnez	a5,202c <sdcard_read+0x44>
    20a8:	fe442783          	lw	a5,-28(s0)
    20ac:	00079863          	bnez	a5,20bc <sdcard_read+0xd4>
    20b0:	fec42703          	lw	a4,-20(s0)
    20b4:	fe042783          	lw	a5,-32(s0)
    20b8:	f6f74ae3          	blt	a4,a5,202c <sdcard_read+0x44>
    20bc:	fe842783          	lw	a5,-24(s0)
    20c0:	0ff7f793          	zext.b	a5,a5
    20c4:	00078513          	mv	a0,a5
    20c8:	03c12083          	lw	ra,60(sp)
    20cc:	03812403          	lw	s0,56(sp)
    20d0:	04010113          	addi	sp,sp,64
    20d4:	00008067          	ret

000020d8 <sdcard_get>:
    20d8:	fd010113          	addi	sp,sp,-48
    20dc:	02112623          	sw	ra,44(sp)
    20e0:	02812423          	sw	s0,40(sp)
    20e4:	03010413          	addi	s0,sp,48
    20e8:	00050793          	mv	a5,a0
    20ec:	00058713          	mv	a4,a1
    20f0:	fcf40fa3          	sb	a5,-33(s0)
    20f4:	00070793          	mv	a5,a4
    20f8:	fcf40f23          	sb	a5,-34(s0)
    20fc:	00000097          	auipc	ra,0x0
    2100:	4e4080e7          	jalr	1252(ra) # 25e0 <sdcard_select>
    2104:	fde44703          	lbu	a4,-34(s0)
    2108:	fdf44783          	lbu	a5,-33(s0)
    210c:	00070593          	mv	a1,a4
    2110:	00078513          	mv	a0,a5
    2114:	00000097          	auipc	ra,0x0
    2118:	ed4080e7          	jalr	-300(ra) # 1fe8 <sdcard_read>
    211c:	00050793          	mv	a5,a0
    2120:	fef407a3          	sb	a5,-17(s0)
    2124:	00100793          	li	a5,1
    2128:	fef42423          	sw	a5,-24(s0)
    212c:	0280006f          	j	2154 <sdcard_get+0x7c>
    2130:	00000593          	li	a1,0
    2134:	00800513          	li	a0,8
    2138:	00000097          	auipc	ra,0x0
    213c:	eb0080e7          	jalr	-336(ra) # 1fe8 <sdcard_read>
    2140:	00050793          	mv	a5,a0
    2144:	fef407a3          	sb	a5,-17(s0)
    2148:	fe842783          	lw	a5,-24(s0)
    214c:	00178793          	addi	a5,a5,1
    2150:	fef42423          	sw	a5,-24(s0)
    2154:	fdf44783          	lbu	a5,-33(s0)
    2158:	0037d793          	srli	a5,a5,0x3
    215c:	0ff7f793          	zext.b	a5,a5
    2160:	00078713          	mv	a4,a5
    2164:	fe842783          	lw	a5,-24(s0)
    2168:	fce7c4e3          	blt	a5,a4,2130 <sdcard_get+0x58>
    216c:	00000097          	auipc	ra,0x0
    2170:	488080e7          	jalr	1160(ra) # 25f4 <sdcard_unselect>
    2174:	fef44783          	lbu	a5,-17(s0)
    2178:	00078513          	mv	a0,a5
    217c:	02c12083          	lw	ra,44(sp)
    2180:	02812403          	lw	s0,40(sp)
    2184:	03010113          	addi	sp,sp,48
    2188:	00008067          	ret

0000218c <sdcard_cmd>:
    218c:	fd010113          	addi	sp,sp,-48
    2190:	02112623          	sw	ra,44(sp)
    2194:	02812423          	sw	s0,40(sp)
    2198:	03010413          	addi	s0,sp,48
    219c:	fca42e23          	sw	a0,-36(s0)
    21a0:	00000097          	auipc	ra,0x0
    21a4:	440080e7          	jalr	1088(ra) # 25e0 <sdcard_select>
    21a8:	fe042623          	sw	zero,-20(s0)
    21ac:	02c0006f          	j	21d8 <sdcard_cmd+0x4c>
    21b0:	fec42783          	lw	a5,-20(s0)
    21b4:	fdc42703          	lw	a4,-36(s0)
    21b8:	00f707b3          	add	a5,a4,a5
    21bc:	0007c783          	lbu	a5,0(a5)
    21c0:	00078513          	mv	a0,a5
    21c4:	00000097          	auipc	ra,0x0
    21c8:	910080e7          	jalr	-1776(ra) # 1ad4 <sdcard_send>
    21cc:	fec42783          	lw	a5,-20(s0)
    21d0:	00178793          	addi	a5,a5,1
    21d4:	fef42623          	sw	a5,-20(s0)
    21d8:	fec42703          	lw	a4,-20(s0)
    21dc:	00500793          	li	a5,5
    21e0:	fce7d8e3          	bge	a5,a4,21b0 <sdcard_cmd+0x24>
    21e4:	00000097          	auipc	ra,0x0
    21e8:	410080e7          	jalr	1040(ra) # 25f4 <sdcard_unselect>
    21ec:	00000013          	nop
    21f0:	02c12083          	lw	ra,44(sp)
    21f4:	02812403          	lw	s0,40(sp)
    21f8:	03010113          	addi	sp,sp,48
    21fc:	00008067          	ret

00002200 <sdcard_start_sector>:
    2200:	fe010113          	addi	sp,sp,-32
    2204:	00112e23          	sw	ra,28(sp)
    2208:	00812c23          	sw	s0,24(sp)
    220c:	02010413          	addi	s0,sp,32
    2210:	fea42623          	sw	a0,-20(s0)
    2214:	00000097          	auipc	ra,0x0
    2218:	3cc080e7          	jalr	972(ra) # 25e0 <sdcard_select>
    221c:	05100793          	li	a5,81
    2220:	00078513          	mv	a0,a5
    2224:	00000097          	auipc	ra,0x0
    2228:	8b0080e7          	jalr	-1872(ra) # 1ad4 <sdcard_send>
    222c:	fec42783          	lw	a5,-20(s0)
    2230:	0187d793          	srli	a5,a5,0x18
    2234:	00078513          	mv	a0,a5
    2238:	00000097          	auipc	ra,0x0
    223c:	89c080e7          	jalr	-1892(ra) # 1ad4 <sdcard_send>
    2240:	fec42783          	lw	a5,-20(s0)
    2244:	4107d793          	srai	a5,a5,0x10
    2248:	0ff7f793          	zext.b	a5,a5
    224c:	00078513          	mv	a0,a5
    2250:	00000097          	auipc	ra,0x0
    2254:	884080e7          	jalr	-1916(ra) # 1ad4 <sdcard_send>
    2258:	fec42783          	lw	a5,-20(s0)
    225c:	4087d793          	srai	a5,a5,0x8
    2260:	0ff7f793          	zext.b	a5,a5
    2264:	00078513          	mv	a0,a5
    2268:	00000097          	auipc	ra,0x0
    226c:	86c080e7          	jalr	-1940(ra) # 1ad4 <sdcard_send>
    2270:	fec42783          	lw	a5,-20(s0)
    2274:	0ff7f793          	zext.b	a5,a5
    2278:	00078513          	mv	a0,a5
    227c:	00000097          	auipc	ra,0x0
    2280:	858080e7          	jalr	-1960(ra) # 1ad4 <sdcard_send>
    2284:	05500793          	li	a5,85
    2288:	00078513          	mv	a0,a5
    228c:	00000097          	auipc	ra,0x0
    2290:	848080e7          	jalr	-1976(ra) # 1ad4 <sdcard_send>
    2294:	00000097          	auipc	ra,0x0
    2298:	360080e7          	jalr	864(ra) # 25f4 <sdcard_unselect>
    229c:	fffff097          	auipc	ra,0xfffff
    22a0:	7cc080e7          	jalr	1996(ra) # 1a68 <sdcard_ponder>
    22a4:	00100593          	li	a1,1
    22a8:	00800513          	li	a0,8
    22ac:	00000097          	auipc	ra,0x0
    22b0:	e2c080e7          	jalr	-468(ra) # 20d8 <sdcard_get>
    22b4:	00050793          	mv	a5,a0
    22b8:	00078513          	mv	a0,a5
    22bc:	01c12083          	lw	ra,28(sp)
    22c0:	01812403          	lw	s0,24(sp)
    22c4:	02010113          	addi	sp,sp,32
    22c8:	00008067          	ret

000022cc <sdcard_read_sector>:
    22cc:	fd010113          	addi	sp,sp,-48
    22d0:	02112623          	sw	ra,44(sp)
    22d4:	02812423          	sw	s0,40(sp)
    22d8:	03010413          	addi	s0,sp,48
    22dc:	fca42e23          	sw	a0,-36(s0)
    22e0:	fcb42c23          	sw	a1,-40(s0)
    22e4:	fdc42503          	lw	a0,-36(s0)
    22e8:	00000097          	auipc	ra,0x0
    22ec:	f18080e7          	jalr	-232(ra) # 2200 <sdcard_start_sector>
    22f0:	00050793          	mv	a5,a0
    22f4:	fef405a3          	sb	a5,-21(s0)
    22f8:	feb44783          	lbu	a5,-21(s0)
    22fc:	00078663          	beqz	a5,2308 <sdcard_read_sector+0x3c>
    2300:	fd842783          	lw	a5,-40(s0)
    2304:	08c0006f          	j	2390 <sdcard_read_sector+0xc4>
    2308:	00100593          	li	a1,1
    230c:	00100513          	li	a0,1
    2310:	00000097          	auipc	ra,0x0
    2314:	dc8080e7          	jalr	-568(ra) # 20d8 <sdcard_get>
    2318:	fe042623          	sw	zero,-20(s0)
    231c:	03c0006f          	j	2358 <sdcard_read_sector+0x8c>
    2320:	00000593          	li	a1,0
    2324:	00800513          	li	a0,8
    2328:	00000097          	auipc	ra,0x0
    232c:	db0080e7          	jalr	-592(ra) # 20d8 <sdcard_get>
    2330:	00050793          	mv	a5,a0
    2334:	fef401a3          	sb	a5,-29(s0)
    2338:	fd842783          	lw	a5,-40(s0)
    233c:	00178713          	addi	a4,a5,1
    2340:	fce42c23          	sw	a4,-40(s0)
    2344:	fe344703          	lbu	a4,-29(s0)
    2348:	00e78023          	sb	a4,0(a5)
    234c:	fec42783          	lw	a5,-20(s0)
    2350:	00178793          	addi	a5,a5,1
    2354:	fef42623          	sw	a5,-20(s0)
    2358:	fec42703          	lw	a4,-20(s0)
    235c:	1ff00793          	li	a5,511
    2360:	fce7d0e3          	bge	a5,a4,2320 <sdcard_read_sector+0x54>
    2364:	00000593          	li	a1,0
    2368:	01000513          	li	a0,16
    236c:	00000097          	auipc	ra,0x0
    2370:	d6c080e7          	jalr	-660(ra) # 20d8 <sdcard_get>
    2374:	00050793          	mv	a5,a0
    2378:	fef42223          	sw	a5,-28(s0)
    237c:	00000097          	auipc	ra,0x0
    2380:	278080e7          	jalr	632(ra) # 25f4 <sdcard_unselect>
    2384:	fffff097          	auipc	ra,0xfffff
    2388:	6e4080e7          	jalr	1764(ra) # 1a68 <sdcard_ponder>
    238c:	fd842783          	lw	a5,-40(s0)
    2390:	00078513          	mv	a0,a5
    2394:	02c12083          	lw	ra,44(sp)
    2398:	02812403          	lw	s0,40(sp)
    239c:	03010113          	addi	sp,sp,48
    23a0:	00008067          	ret

000023a4 <sdcard_preinit>:
    23a4:	fe010113          	addi	sp,sp,-32
    23a8:	00112e23          	sw	ra,28(sp)
    23ac:	00812c23          	sw	s0,24(sp)
    23b0:	02010413          	addi	s0,sp,32
    23b4:	000067b7          	lui	a5,0x6
    23b8:	3d07a783          	lw	a5,976(a5) # 63d0 <SDCARD>
    23bc:	00600713          	li	a4,6
    23c0:	00e7a023          	sw	a4,0(a5)
    23c4:	013137b7          	lui	a5,0x1313
    23c8:	d0078513          	addi	a0,a5,-768 # 1312d00 <__stacktop+0x1302d00>
    23cc:	00000097          	auipc	ra,0x0
    23d0:	1fc080e7          	jalr	508(ra) # 25c8 <pause>
    23d4:	fe042623          	sw	zero,-20(s0)
    23d8:	fe042423          	sw	zero,-24(s0)
    23dc:	0340006f          	j	2410 <sdcard_preinit+0x6c>
    23e0:	000067b7          	lui	a5,0x6
    23e4:	3d07a783          	lw	a5,976(a5) # 63d0 <SDCARD>
    23e8:	fec42703          	lw	a4,-20(s0)
    23ec:	00676713          	ori	a4,a4,6
    23f0:	00e7a023          	sw	a4,0(a5)
    23f4:	00100713          	li	a4,1
    23f8:	fec42783          	lw	a5,-20(s0)
    23fc:	40f707b3          	sub	a5,a4,a5
    2400:	fef42623          	sw	a5,-20(s0)
    2404:	fe842783          	lw	a5,-24(s0)
    2408:	00178793          	addi	a5,a5,1
    240c:	fef42423          	sw	a5,-24(s0)
    2410:	fe842703          	lw	a4,-24(s0)
    2414:	09f00793          	li	a5,159
    2418:	fce7d4e3          	bge	a5,a4,23e0 <sdcard_preinit+0x3c>
    241c:	000067b7          	lui	a5,0x6
    2420:	3d07a783          	lw	a5,976(a5) # 63d0 <SDCARD>
    2424:	00600713          	li	a4,6
    2428:	00e7a023          	sw	a4,0(a5)
    242c:	00000013          	nop
    2430:	01c12083          	lw	ra,28(sp)
    2434:	01812403          	lw	s0,24(sp)
    2438:	02010113          	addi	sp,sp,32
    243c:	00008067          	ret

00002440 <sdcard_init>:
    2440:	fe010113          	addi	sp,sp,-32
    2444:	00112e23          	sw	ra,28(sp)
    2448:	00812c23          	sw	s0,24(sp)
    244c:	02010413          	addi	s0,sp,32
    2450:	000067b7          	lui	a5,0x6
    2454:	00002737          	lui	a4,0x2
    2458:	5dc70713          	addi	a4,a4,1500 # 25dc <sdcard_idle>
    245c:	7ce7a423          	sw	a4,1992(a5) # 67c8 <sdcard_while_loading_callback>
    2460:	00000097          	auipc	ra,0x0
    2464:	f44080e7          	jalr	-188(ra) # 23a4 <sdcard_preinit>
    2468:	000067b7          	lui	a5,0x6
    246c:	3b478513          	addi	a0,a5,948 # 63b4 <cmd0>
    2470:	00000097          	auipc	ra,0x0
    2474:	d1c080e7          	jalr	-740(ra) # 218c <sdcard_cmd>
    2478:	00100593          	li	a1,1
    247c:	00800513          	li	a0,8
    2480:	00000097          	auipc	ra,0x0
    2484:	c58080e7          	jalr	-936(ra) # 20d8 <sdcard_get>
    2488:	00050793          	mv	a5,a0
    248c:	fef407a3          	sb	a5,-17(s0)
    2490:	fffff097          	auipc	ra,0xfffff
    2494:	5d8080e7          	jalr	1496(ra) # 1a68 <sdcard_ponder>
    2498:	fef44703          	lbu	a4,-17(s0)
    249c:	0ff00793          	li	a5,255
    24a0:	00f71c63          	bne	a4,a5,24b8 <sdcard_init+0x78>
    24a4:	013137b7          	lui	a5,0x1313
    24a8:	d0078513          	addi	a0,a5,-768 # 1312d00 <__stacktop+0x1302d00>
    24ac:	00000097          	auipc	ra,0x0
    24b0:	11c080e7          	jalr	284(ra) # 25c8 <pause>
    24b4:	fadff06f          	j	2460 <sdcard_init+0x20>
    24b8:	00000013          	nop
    24bc:	000067b7          	lui	a5,0x6
    24c0:	3ac78513          	addi	a0,a5,940 # 63ac <cmd8>
    24c4:	00000097          	auipc	ra,0x0
    24c8:	cc8080e7          	jalr	-824(ra) # 218c <sdcard_cmd>
    24cc:	00100593          	li	a1,1
    24d0:	02800513          	li	a0,40
    24d4:	00000097          	auipc	ra,0x0
    24d8:	c04080e7          	jalr	-1020(ra) # 20d8 <sdcard_get>
    24dc:	00050793          	mv	a5,a0
    24e0:	fef407a3          	sb	a5,-17(s0)
    24e4:	fffff097          	auipc	ra,0xfffff
    24e8:	584080e7          	jalr	1412(ra) # 1a68 <sdcard_ponder>
    24ec:	000067b7          	lui	a5,0x6
    24f0:	3a478513          	addi	a0,a5,932 # 63a4 <cmd55>
    24f4:	00000097          	auipc	ra,0x0
    24f8:	c98080e7          	jalr	-872(ra) # 218c <sdcard_cmd>
    24fc:	00100593          	li	a1,1
    2500:	00800513          	li	a0,8
    2504:	00000097          	auipc	ra,0x0
    2508:	bd4080e7          	jalr	-1068(ra) # 20d8 <sdcard_get>
    250c:	00050793          	mv	a5,a0
    2510:	fef407a3          	sb	a5,-17(s0)
    2514:	fffff097          	auipc	ra,0xfffff
    2518:	554080e7          	jalr	1364(ra) # 1a68 <sdcard_ponder>
    251c:	000067b7          	lui	a5,0x6
    2520:	39c78513          	addi	a0,a5,924 # 639c <acmd41>
    2524:	00000097          	auipc	ra,0x0
    2528:	c68080e7          	jalr	-920(ra) # 218c <sdcard_cmd>
    252c:	00100593          	li	a1,1
    2530:	00800513          	li	a0,8
    2534:	00000097          	auipc	ra,0x0
    2538:	ba4080e7          	jalr	-1116(ra) # 20d8 <sdcard_get>
    253c:	00050793          	mv	a5,a0
    2540:	fef407a3          	sb	a5,-17(s0)
    2544:	fffff097          	auipc	ra,0xfffff
    2548:	524080e7          	jalr	1316(ra) # 1a68 <sdcard_ponder>
    254c:	fef44783          	lbu	a5,-17(s0)
    2550:	02078863          	beqz	a5,2580 <sdcard_init+0x140>
    2554:	00000097          	auipc	ra,0x0
    2558:	0a0080e7          	jalr	160(ra) # 25f4 <sdcard_unselect>
    255c:	fffff097          	auipc	ra,0xfffff
    2560:	50c080e7          	jalr	1292(ra) # 1a68 <sdcard_ponder>
    2564:	001e87b7          	lui	a5,0x1e8
    2568:	48078513          	addi	a0,a5,1152 # 1e8480 <__stacktop+0x1d8480>
    256c:	00000097          	auipc	ra,0x0
    2570:	05c080e7          	jalr	92(ra) # 25c8 <pause>
    2574:	00000097          	auipc	ra,0x0
    2578:	06c080e7          	jalr	108(ra) # 25e0 <sdcard_select>
    257c:	f71ff06f          	j	24ec <sdcard_init+0xac>
    2580:	00000013          	nop
    2584:	000067b7          	lui	a5,0x6
    2588:	39478513          	addi	a0,a5,916 # 6394 <cmd16>
    258c:	00000097          	auipc	ra,0x0
    2590:	c00080e7          	jalr	-1024(ra) # 218c <sdcard_cmd>
    2594:	00100593          	li	a1,1
    2598:	00800513          	li	a0,8
    259c:	00000097          	auipc	ra,0x0
    25a0:	b3c080e7          	jalr	-1220(ra) # 20d8 <sdcard_get>
    25a4:	00050793          	mv	a5,a0
    25a8:	fef407a3          	sb	a5,-17(s0)
    25ac:	fffff097          	auipc	ra,0xfffff
    25b0:	4bc080e7          	jalr	1212(ra) # 1a68 <sdcard_ponder>
    25b4:	00000013          	nop
    25b8:	01c12083          	lw	ra,28(sp)
    25bc:	01812403          	lw	s0,24(sp)
    25c0:	02010113          	addi	sp,sp,32
    25c4:	00008067          	ret

000025c8 <pause>:
    25c8:	c0002773          	rdcycle	a4
    25cc:	c00027f3          	rdcycle	a5
    25d0:	40e787b3          	sub	a5,a5,a4
    25d4:	fea7ece3          	bltu	a5,a0,25cc <pause+0x4>
    25d8:	00008067          	ret

000025dc <sdcard_idle>:
    25dc:	00008067          	ret

000025e0 <sdcard_select>:
    25e0:	000067b7          	lui	a5,0x6
    25e4:	3d07a783          	lw	a5,976(a5) # 63d0 <SDCARD>
    25e8:	00200713          	li	a4,2
    25ec:	00e7a023          	sw	a4,0(a5)
    25f0:	00008067          	ret

000025f4 <sdcard_unselect>:
    25f4:	000067b7          	lui	a5,0x6
    25f8:	3d07a783          	lw	a5,976(a5) # 63d0 <SDCARD>
    25fc:	00600713          	li	a4,6
    2600:	00e7a023          	sw	a4,0(a5)
    2604:	00008067          	ret

00002608 <sdcard_readsector>:
    2608:	04060663          	beqz	a2,2654 <sdcard_readsector+0x4c>
    260c:	ff010113          	addi	sp,sp,-16
    2610:	00912423          	sw	s1,8(sp)
    2614:	01212223          	sw	s2,4(sp)
    2618:	00112623          	sw	ra,12(sp)
    261c:	00050493          	mv	s1,a0
    2620:	00a60933          	add	s2,a2,a0
    2624:	00048513          	mv	a0,s1
    2628:	00000097          	auipc	ra,0x0
    262c:	ca4080e7          	jalr	-860(ra) # 22cc <sdcard_read_sector>
    2630:	00148493          	addi	s1,s1,1
    2634:	00050593          	mv	a1,a0
    2638:	fe9916e3          	bne	s2,s1,2624 <sdcard_readsector+0x1c>
    263c:	00c12083          	lw	ra,12(sp)
    2640:	00812483          	lw	s1,8(sp)
    2644:	00412903          	lw	s2,4(sp)
    2648:	00100513          	li	a0,1
    264c:	01010113          	addi	sp,sp,16
    2650:	00008067          	ret
    2654:	00000513          	li	a0,0
    2658:	00008067          	ret

0000265c <sdcard_writesector>:
    265c:	00000513          	li	a0,0
    2660:	00008067          	ret

00002664 <__divsi3>:
    2664:	06054063          	bltz	a0,26c4 <__umodsi3+0x10>
    2668:	0605c663          	bltz	a1,26d4 <__umodsi3+0x20>

0000266c <__udivsi3>:
    266c:	00058613          	mv	a2,a1
    2670:	00050593          	mv	a1,a0
    2674:	fff00513          	li	a0,-1
    2678:	02060c63          	beqz	a2,26b0 <__udivsi3+0x44>
    267c:	00100693          	li	a3,1
    2680:	00b67a63          	bgeu	a2,a1,2694 <__udivsi3+0x28>
    2684:	00c05863          	blez	a2,2694 <__udivsi3+0x28>
    2688:	00161613          	slli	a2,a2,0x1
    268c:	00169693          	slli	a3,a3,0x1
    2690:	feb66ae3          	bltu	a2,a1,2684 <__udivsi3+0x18>
    2694:	00000513          	li	a0,0
    2698:	00c5e663          	bltu	a1,a2,26a4 <__udivsi3+0x38>
    269c:	40c585b3          	sub	a1,a1,a2
    26a0:	00d56533          	or	a0,a0,a3
    26a4:	0016d693          	srli	a3,a3,0x1
    26a8:	00165613          	srli	a2,a2,0x1
    26ac:	fe0696e3          	bnez	a3,2698 <__udivsi3+0x2c>
    26b0:	00008067          	ret

000026b4 <__umodsi3>:
    26b4:	00008293          	mv	t0,ra
    26b8:	fb5ff0ef          	jal	266c <__udivsi3>
    26bc:	00058513          	mv	a0,a1
    26c0:	00028067          	jr	t0
    26c4:	40a00533          	neg	a0,a0
    26c8:	0005d863          	bgez	a1,26d8 <__umodsi3+0x24>
    26cc:	40b005b3          	neg	a1,a1
    26d0:	f95ff06f          	j	2664 <__divsi3>
    26d4:	40b005b3          	neg	a1,a1
    26d8:	00008293          	mv	t0,ra
    26dc:	f89ff0ef          	jal	2664 <__divsi3>
    26e0:	40a00533          	neg	a0,a0
    26e4:	00028067          	jr	t0

000026e8 <__modsi3>:
    26e8:	00008293          	mv	t0,ra
    26ec:	0005ca63          	bltz	a1,2700 <__modsi3+0x18>
    26f0:	00054c63          	bltz	a0,2708 <__modsi3+0x20>
    26f4:	f79ff0ef          	jal	266c <__udivsi3>
    26f8:	00058513          	mv	a0,a1
    26fc:	00028067          	jr	t0
    2700:	40b005b3          	neg	a1,a1
    2704:	fe0558e3          	bgez	a0,26f4 <__modsi3+0xc>
    2708:	40a00533          	neg	a0,a0
    270c:	f61ff0ef          	jal	266c <__udivsi3>
    2710:	40b00533          	neg	a0,a1
    2714:	00028067          	jr	t0

00002718 <memset>:
    2718:	00c50633          	add	a2,a0,a2
    271c:	00050793          	mv	a5,a0
    2720:	00c79463          	bne	a5,a2,2728 <memset+0x10>
    2724:	00008067          	ret
    2728:	00178793          	addi	a5,a5,1
    272c:	feb78fa3          	sb	a1,-1(a5)
    2730:	ff1ff06f          	j	2720 <memset+0x8>

00002734 <memcpy>:
    2734:	00000793          	li	a5,0
    2738:	00c79463          	bne	a5,a2,2740 <memcpy+0xc>
    273c:	00008067          	ret
    2740:	00f58733          	add	a4,a1,a5
    2744:	00074683          	lbu	a3,0(a4)
    2748:	00f50733          	add	a4,a0,a5
    274c:	00178793          	addi	a5,a5,1
    2750:	00d70023          	sb	a3,0(a4)
    2754:	fe5ff06f          	j	2738 <memcpy+0x4>

00002758 <strlen>:
    2758:	00050793          	mv	a5,a0
    275c:	00000513          	li	a0,0
    2760:	00a78733          	add	a4,a5,a0
    2764:	00074703          	lbu	a4,0(a4)
    2768:	00071463          	bnez	a4,2770 <strlen+0x18>
    276c:	00008067          	ret
    2770:	00150513          	addi	a0,a0,1
    2774:	fedff06f          	j	2760 <strlen+0x8>

00002778 <strncmp>:
    2778:	00000793          	li	a5,0
    277c:	00c79663          	bne	a5,a2,2788 <strncmp+0x10>
    2780:	00000513          	li	a0,0
    2784:	00008067          	ret
    2788:	00f50733          	add	a4,a0,a5
    278c:	00074683          	lbu	a3,0(a4)
    2790:	00f58733          	add	a4,a1,a5
    2794:	00074703          	lbu	a4,0(a4)
    2798:	00e6e863          	bltu	a3,a4,27a8 <strncmp+0x30>
    279c:	00d76a63          	bltu	a4,a3,27b0 <strncmp+0x38>
    27a0:	00178793          	addi	a5,a5,1
    27a4:	fd9ff06f          	j	277c <strncmp+0x4>
    27a8:	fff00513          	li	a0,-1
    27ac:	00008067          	ret
    27b0:	00100513          	li	a0,1
    27b4:	00008067          	ret

000027b8 <strncpy>:
    27b8:	00000793          	li	a5,0
    27bc:	00c79463          	bne	a5,a2,27c4 <strncpy+0xc>
    27c0:	00008067          	ret
    27c4:	00f58733          	add	a4,a1,a5
    27c8:	00074683          	lbu	a3,0(a4)
    27cc:	00f50733          	add	a4,a0,a5
    27d0:	00178793          	addi	a5,a5,1
    27d4:	00d70023          	sb	a3,0(a4)
    27d8:	fe5ff06f          	j	27bc <strncpy+0x4>

000027dc <oled_wait>:
    27dc:	00000013          	nop
    27e0:	00000013          	nop
    27e4:	00000013          	nop
    27e8:	00000013          	nop
    27ec:	00000013          	nop
    27f0:	00000013          	nop
    27f4:	00000013          	nop
    27f8:	00008067          	ret

000027fc <oled_init_mode>:
    27fc:	000067b7          	lui	a5,0x6
    2800:	3d47a703          	lw	a4,980(a5) # 63d4 <OLED_RST>
    2804:	ff010113          	addi	sp,sp,-16
    2808:	00912223          	sw	s1,4(sp)
    280c:	00112623          	sw	ra,12(sp)
    2810:	00812423          	sw	s0,8(sp)
    2814:	00072023          	sw	zero,0(a4)
    2818:	00050493          	mv	s1,a0
    281c:	00040737          	lui	a4,0x40
    2820:	00000013          	nop
    2824:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    2828:	fe071ce3          	bnez	a4,2820 <oled_init_mode+0x24>
    282c:	3d47a703          	lw	a4,980(a5)
    2830:	00100693          	li	a3,1
    2834:	00d72023          	sw	a3,0(a4)
    2838:	00040737          	lui	a4,0x40
    283c:	00000013          	nop
    2840:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    2844:	fe071ce3          	bnez	a4,283c <oled_init_mode+0x40>
    2848:	3d47a783          	lw	a5,980(a5)
    284c:	0007a023          	sw	zero,0(a5)
    2850:	000407b7          	lui	a5,0x40
    2854:	00000013          	nop
    2858:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    285c:	fe079ce3          	bnez	a5,2854 <oled_init_mode+0x58>
    2860:	00006737          	lui	a4,0x6
    2864:	3d872783          	lw	a5,984(a4) # 63d8 <OLED>
    2868:	2af00693          	li	a3,687
    286c:	00d7a023          	sw	a3,0(a5)
    2870:	000407b7          	lui	a5,0x40
    2874:	00000013          	nop
    2878:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    287c:	fe079ce3          	bnez	a5,2874 <oled_init_mode+0x78>
    2880:	3d872403          	lw	s0,984(a4)
    2884:	2a000793          	li	a5,672
    2888:	00f42023          	sw	a5,0(s0)
    288c:	00000097          	auipc	ra,0x0
    2890:	f50080e7          	jalr	-176(ra) # 27dc <oled_wait>
    2894:	4a000793          	li	a5,1184
    2898:	00048463          	beqz	s1,28a0 <oled_init_mode+0xa4>
    289c:	42000793          	li	a5,1056
    28a0:	00f42023          	sw	a5,0(s0)
    28a4:	00000097          	auipc	ra,0x0
    28a8:	f38080e7          	jalr	-200(ra) # 27dc <oled_wait>
    28ac:	2fd00793          	li	a5,765
    28b0:	00f42023          	sw	a5,0(s0)
    28b4:	00000097          	auipc	ra,0x0
    28b8:	f28080e7          	jalr	-216(ra) # 27dc <oled_wait>
    28bc:	4b100793          	li	a5,1201
    28c0:	00f42023          	sw	a5,0(s0)
    28c4:	00000097          	auipc	ra,0x0
    28c8:	f18080e7          	jalr	-232(ra) # 27dc <oled_wait>
    28cc:	2a200793          	li	a5,674
    28d0:	00f42023          	sw	a5,0(s0)
    28d4:	00000097          	auipc	ra,0x0
    28d8:	f08080e7          	jalr	-248(ra) # 27dc <oled_wait>
    28dc:	40000793          	li	a5,1024
    28e0:	00f42023          	sw	a5,0(s0)
    28e4:	00812403          	lw	s0,8(sp)
    28e8:	00c12083          	lw	ra,12(sp)
    28ec:	00412483          	lw	s1,4(sp)
    28f0:	01010113          	addi	sp,sp,16
    28f4:	00000317          	auipc	t1,0x0
    28f8:	ee830067          	jr	-280(t1) # 27dc <oled_wait>

000028fc <oled_init>:
    28fc:	00000513          	li	a0,0
    2900:	00000317          	auipc	t1,0x0
    2904:	efc30067          	jr	-260(t1) # 27fc <oled_init_mode>

00002908 <oled_fullscreen>:
    2908:	ff010113          	addi	sp,sp,-16
    290c:	000067b7          	lui	a5,0x6
    2910:	00812423          	sw	s0,8(sp)
    2914:	3d87a403          	lw	s0,984(a5) # 63d8 <OLED>
    2918:	00112623          	sw	ra,12(sp)
    291c:	00912223          	sw	s1,4(sp)
    2920:	01212023          	sw	s2,0(sp)
    2924:	21500793          	li	a5,533
    2928:	00f42023          	sw	a5,0(s0)
    292c:	40000913          	li	s2,1024
    2930:	00000097          	auipc	ra,0x0
    2934:	eac080e7          	jalr	-340(ra) # 27dc <oled_wait>
    2938:	47f00493          	li	s1,1151
    293c:	01242023          	sw	s2,0(s0)
    2940:	00000097          	auipc	ra,0x0
    2944:	e9c080e7          	jalr	-356(ra) # 27dc <oled_wait>
    2948:	00942023          	sw	s1,0(s0)
    294c:	00000097          	auipc	ra,0x0
    2950:	e90080e7          	jalr	-368(ra) # 27dc <oled_wait>
    2954:	27500793          	li	a5,629
    2958:	00f42023          	sw	a5,0(s0)
    295c:	00000097          	auipc	ra,0x0
    2960:	e80080e7          	jalr	-384(ra) # 27dc <oled_wait>
    2964:	01242023          	sw	s2,0(s0)
    2968:	00000097          	auipc	ra,0x0
    296c:	e74080e7          	jalr	-396(ra) # 27dc <oled_wait>
    2970:	00942023          	sw	s1,0(s0)
    2974:	00000097          	auipc	ra,0x0
    2978:	e68080e7          	jalr	-408(ra) # 27dc <oled_wait>
    297c:	25c00793          	li	a5,604
    2980:	00f42023          	sw	a5,0(s0)
    2984:	00812403          	lw	s0,8(sp)
    2988:	00c12083          	lw	ra,12(sp)
    298c:	00412483          	lw	s1,4(sp)
    2990:	00012903          	lw	s2,0(sp)
    2994:	01010113          	addi	sp,sp,16
    2998:	00000317          	auipc	t1,0x0
    299c:	e4430067          	jr	-444(t1) # 27dc <oled_wait>

000029a0 <oled_clear>:
    29a0:	fe010113          	addi	sp,sp,-32
    29a4:	000067b7          	lui	a5,0x6
    29a8:	01312623          	sw	s3,12(sp)
    29ac:	3d87a983          	lw	s3,984(a5) # 63d8 <OLED>
    29b0:	00812c23          	sw	s0,24(sp)
    29b4:	01212823          	sw	s2,16(sp)
    29b8:	00112e23          	sw	ra,28(sp)
    29bc:	00912a23          	sw	s1,20(sp)
    29c0:	08000913          	li	s2,128
    29c4:	40056413          	ori	s0,a0,1024
    29c8:	08000493          	li	s1,128
    29cc:	0089a023          	sw	s0,0(s3)
    29d0:	00000097          	auipc	ra,0x0
    29d4:	e0c080e7          	jalr	-500(ra) # 27dc <oled_wait>
    29d8:	0089a023          	sw	s0,0(s3)
    29dc:	00000097          	auipc	ra,0x0
    29e0:	e00080e7          	jalr	-512(ra) # 27dc <oled_wait>
    29e4:	fff48493          	addi	s1,s1,-1
    29e8:	0089a023          	sw	s0,0(s3)
    29ec:	00000097          	auipc	ra,0x0
    29f0:	df0080e7          	jalr	-528(ra) # 27dc <oled_wait>
    29f4:	fc049ce3          	bnez	s1,29cc <oled_clear+0x2c>
    29f8:	fff90913          	addi	s2,s2,-1
    29fc:	fc0916e3          	bnez	s2,29c8 <oled_clear+0x28>
    2a00:	01c12083          	lw	ra,28(sp)
    2a04:	01812403          	lw	s0,24(sp)
    2a08:	01412483          	lw	s1,20(sp)
    2a0c:	01012903          	lw	s2,16(sp)
    2a10:	00c12983          	lw	s3,12(sp)
    2a14:	02010113          	addi	sp,sp,32
    2a18:	00008067          	ret

00002a1c <display_framebuffer>:
    2a1c:	000067b7          	lui	a5,0x6
    2a20:	3c07a503          	lw	a0,960(a5) # 63c0 <DISPLAY>
    2a24:	00008067          	ret

00002a28 <display_set_cursor>:
    2a28:	000067b7          	lui	a5,0x6
    2a2c:	7ca7aa23          	sw	a0,2004(a5) # 67d4 <cursor_x>
    2a30:	000067b7          	lui	a5,0x6
    2a34:	7cb7a823          	sw	a1,2000(a5) # 67d0 <cursor_y>
    2a38:	00008067          	ret

00002a3c <display_set_front_back_color>:
    2a3c:	000067b7          	lui	a5,0x6
    2a40:	7ca786a3          	sb	a0,1997(a5) # 67cd <front_color>
    2a44:	000067b7          	lui	a5,0x6
    2a48:	7cb78623          	sb	a1,1996(a5) # 67cc <back_color>
    2a4c:	00008067          	ret

00002a50 <display_putchar>:
    2a50:	00a00793          	li	a5,10
    2a54:	00006737          	lui	a4,0x6
    2a58:	02f51663          	bne	a0,a5,2a84 <display_putchar+0x34>
    2a5c:	7c072a23          	sw	zero,2004(a4) # 67d4 <cursor_x>
    2a60:	00006737          	lui	a4,0x6
    2a64:	7d072783          	lw	a5,2000(a4) # 67d0 <cursor_y>
    2a68:	00878793          	addi	a5,a5,8
    2a6c:	7cf72823          	sw	a5,2000(a4)
    2a70:	07f00713          	li	a4,127
    2a74:	00f75663          	bge	a4,a5,2a80 <display_putchar+0x30>
    2a78:	000067b7          	lui	a5,0x6
    2a7c:	7c07a823          	sw	zero,2000(a5) # 67d0 <cursor_y>
    2a80:	00008067          	ret
    2a84:	ff010113          	addi	sp,sp,-16
    2a88:	00812623          	sw	s0,12(sp)
    2a8c:	00912423          	sw	s1,8(sp)
    2a90:	01f00793          	li	a5,31
    2a94:	0ea7d263          	bge	a5,a0,2b78 <display_putchar+0x128>
    2a98:	00006f37          	lui	t5,0x6
    2a9c:	7d0f2783          	lw	a5,2000(t5) # 67d0 <cursor_y>
    2aa0:	08000593          	li	a1,128
    2aa4:	40f585b3          	sub	a1,a1,a5
    2aa8:	00800793          	li	a5,8
    2aac:	00b7d463          	bge	a5,a1,2ab4 <display_putchar+0x64>
    2ab0:	00800593          	li	a1,8
    2ab4:	7d472783          	lw	a5,2004(a4)
    2ab8:	08000813          	li	a6,128
    2abc:	40f80833          	sub	a6,a6,a5
    2ac0:	00500793          	li	a5,5
    2ac4:	0107d463          	bge	a5,a6,2acc <display_putchar+0x7c>
    2ac8:	00500813          	li	a6,5
    2acc:	000067b7          	lui	a5,0x6
    2ad0:	3c47ae03          	lw	t3,964(a5) # 63c4 <RGBSEL>
    2ad4:	000067b7          	lui	a5,0x6
    2ad8:	3c07a283          	lw	t0,960(a5) # 63c0 <DISPLAY>
    2adc:	00251693          	slli	a3,a0,0x2
    2ae0:	000067b7          	lui	a5,0x6
    2ae4:	00a686b3          	add	a3,a3,a0
    2ae8:	5a078793          	addi	a5,a5,1440 # 65a0 <font>
    2aec:	00f686b3          	add	a3,a3,a5
    2af0:	00000613          	li	a2,0
    2af4:	00100e93          	li	t4,1
    2af8:	000063b7          	lui	t2,0x6
    2afc:	00006437          	lui	s0,0x6
    2b00:	00200493          	li	s1,2
    2b04:	06b65a63          	bge	a2,a1,2b78 <display_putchar+0x128>
    2b08:	00ce9fb3          	sll	t6,t4,a2
    2b0c:	00068313          	mv	t1,a3
    2b10:	00000893          	li	a7,0
    2b14:	04c0006f          	j	2b60 <display_putchar+0x110>
    2b18:	7d0f2783          	lw	a5,2000(t5)
    2b1c:	00a88533          	add	a0,a7,a0
    2b20:	00751513          	slli	a0,a0,0x7
    2b24:	00f607b3          	add	a5,a2,a5
    2b28:	00a787b3          	add	a5,a5,a0
    2b2c:	f6034503          	lbu	a0,-160(t1)
    2b30:	01f57533          	and	a0,a0,t6
    2b34:	02050e63          	beqz	a0,2b70 <display_putchar+0x120>
    2b38:	7cd44503          	lbu	a0,1997(s0) # 67cd <front_color>
    2b3c:	000e2023          	sw	zero,0(t3)
    2b40:	00f287b3          	add	a5,t0,a5
    2b44:	00a78023          	sb	a0,0(a5)
    2b48:	01de2023          	sw	t4,0(t3)
    2b4c:	00a78023          	sb	a0,0(a5)
    2b50:	009e2023          	sw	s1,0(t3)
    2b54:	00a78023          	sb	a0,0(a5)
    2b58:	00188893          	addi	a7,a7,1
    2b5c:	00130313          	addi	t1,t1,1
    2b60:	7d472503          	lw	a0,2004(a4)
    2b64:	fb08cae3          	blt	a7,a6,2b18 <display_putchar+0xc8>
    2b68:	00160613          	addi	a2,a2,1
    2b6c:	f99ff06f          	j	2b04 <display_putchar+0xb4>
    2b70:	7cc3c503          	lbu	a0,1996(t2) # 67cc <back_color>
    2b74:	fc9ff06f          	j	2b3c <display_putchar+0xec>
    2b78:	7d472783          	lw	a5,2004(a4)
    2b7c:	07f00693          	li	a3,127
    2b80:	00578793          	addi	a5,a5,5
    2b84:	00f6c663          	blt	a3,a5,2b90 <display_putchar+0x140>
    2b88:	7cf72a23          	sw	a5,2004(a4)
    2b8c:	0240006f          	j	2bb0 <display_putchar+0x160>
    2b90:	7c072a23          	sw	zero,2004(a4)
    2b94:	00006737          	lui	a4,0x6
    2b98:	7d072783          	lw	a5,2000(a4) # 67d0 <cursor_y>
    2b9c:	00878793          	addi	a5,a5,8
    2ba0:	7cf72823          	sw	a5,2000(a4)
    2ba4:	00f6d663          	bge	a3,a5,2bb0 <display_putchar+0x160>
    2ba8:	000067b7          	lui	a5,0x6
    2bac:	7c07a823          	sw	zero,2000(a5) # 67d0 <cursor_y>
    2bb0:	00c12403          	lw	s0,12(sp)
    2bb4:	00812483          	lw	s1,8(sp)
    2bb8:	01010113          	addi	sp,sp,16
    2bbc:	00008067          	ret

00002bc0 <display_refresh>:
    2bc0:	00008067          	ret

00002bc4 <print_string>:
    2bc4:	ff010113          	addi	sp,sp,-16
    2bc8:	00812423          	sw	s0,8(sp)
    2bcc:	00912223          	sw	s1,4(sp)
    2bd0:	00112623          	sw	ra,12(sp)
    2bd4:	00050413          	mv	s0,a0
    2bd8:	000064b7          	lui	s1,0x6
    2bdc:	00044503          	lbu	a0,0(s0)
    2be0:	00051c63          	bnez	a0,2bf8 <print_string+0x34>
    2be4:	00c12083          	lw	ra,12(sp)
    2be8:	00812403          	lw	s0,8(sp)
    2bec:	00412483          	lw	s1,4(sp)
    2bf0:	01010113          	addi	sp,sp,16
    2bf4:	00008067          	ret
    2bf8:	7d84a783          	lw	a5,2008(s1) # 67d8 <f_putchar>
    2bfc:	00140413          	addi	s0,s0,1
    2c00:	000780e7          	jalr	a5
    2c04:	fd9ff06f          	j	2bdc <print_string+0x18>

00002c08 <print_dec>:
    2c08:	ef010113          	addi	sp,sp,-272
    2c0c:	10812423          	sw	s0,264(sp)
    2c10:	10912223          	sw	s1,260(sp)
    2c14:	10112623          	sw	ra,268(sp)
    2c18:	11212023          	sw	s2,256(sp)
    2c1c:	00050413          	mv	s0,a0
    2c20:	000064b7          	lui	s1,0x6
    2c24:	08045063          	bgez	s0,2ca4 <print_dec+0x9c>
    2c28:	7d84a783          	lw	a5,2008(s1) # 67d8 <f_putchar>
    2c2c:	02d00513          	li	a0,45
    2c30:	40800433          	neg	s0,s0
    2c34:	000780e7          	jalr	a5
    2c38:	fedff06f          	j	2c24 <print_dec+0x1c>
    2c3c:	00040513          	mv	a0,s0
    2c40:	00a00593          	li	a1,10
    2c44:	00000097          	auipc	ra,0x0
    2c48:	a20080e7          	jalr	-1504(ra) # 2664 <__divsi3>
    2c4c:	00251793          	slli	a5,a0,0x2
    2c50:	00f507b3          	add	a5,a0,a5
    2c54:	00179793          	slli	a5,a5,0x1
    2c58:	40f40433          	sub	s0,s0,a5
    2c5c:	00148493          	addi	s1,s1,1
    2c60:	fe848fa3          	sb	s0,-1(s1)
    2c64:	00050413          	mv	s0,a0
    2c68:	fc041ae3          	bnez	s0,2c3c <print_dec+0x34>
    2c6c:	fd2488e3          	beq	s1,s2,2c3c <print_dec+0x34>
    2c70:	00006437          	lui	s0,0x6
    2c74:	fff4c503          	lbu	a0,-1(s1)
    2c78:	7d842783          	lw	a5,2008(s0) # 67d8 <f_putchar>
    2c7c:	fff48493          	addi	s1,s1,-1
    2c80:	03050513          	addi	a0,a0,48
    2c84:	000780e7          	jalr	a5
    2c88:	ff2496e3          	bne	s1,s2,2c74 <print_dec+0x6c>
    2c8c:	10c12083          	lw	ra,268(sp)
    2c90:	10812403          	lw	s0,264(sp)
    2c94:	10412483          	lw	s1,260(sp)
    2c98:	10012903          	lw	s2,256(sp)
    2c9c:	11010113          	addi	sp,sp,272
    2ca0:	00008067          	ret
    2ca4:	00010493          	mv	s1,sp
    2ca8:	00048913          	mv	s2,s1
    2cac:	fbdff06f          	j	2c68 <print_dec+0x60>

00002cb0 <print_hex_digits>:
    2cb0:	fe010113          	addi	sp,sp,-32
    2cb4:	00812c23          	sw	s0,24(sp)
    2cb8:	01212823          	sw	s2,16(sp)
    2cbc:	fff58413          	addi	s0,a1,-1
    2cc0:	00006937          	lui	s2,0x6
    2cc4:	00912a23          	sw	s1,20(sp)
    2cc8:	01312623          	sw	s3,12(sp)
    2ccc:	00112e23          	sw	ra,28(sp)
    2cd0:	00050493          	mv	s1,a0
    2cd4:	00241413          	slli	s0,s0,0x2
    2cd8:	53890913          	addi	s2,s2,1336 # 6538 <LEDS+0x15c>
    2cdc:	000069b7          	lui	s3,0x6
    2ce0:	02045063          	bgez	s0,2d00 <print_hex_digits+0x50>
    2ce4:	01c12083          	lw	ra,28(sp)
    2ce8:	01812403          	lw	s0,24(sp)
    2cec:	01412483          	lw	s1,20(sp)
    2cf0:	01012903          	lw	s2,16(sp)
    2cf4:	00c12983          	lw	s3,12(sp)
    2cf8:	02010113          	addi	sp,sp,32
    2cfc:	00008067          	ret
    2d00:	0084d7b3          	srl	a5,s1,s0
    2d04:	00f7f793          	andi	a5,a5,15
    2d08:	00f907b3          	add	a5,s2,a5
    2d0c:	7d89a703          	lw	a4,2008(s3) # 67d8 <f_putchar>
    2d10:	0007c503          	lbu	a0,0(a5)
    2d14:	ffc40413          	addi	s0,s0,-4
    2d18:	000700e7          	jalr	a4
    2d1c:	fc5ff06f          	j	2ce0 <print_hex_digits+0x30>

00002d20 <print_hex>:
    2d20:	00800593          	li	a1,8
    2d24:	00000317          	auipc	t1,0x0
    2d28:	f8c30067          	jr	-116(t1) # 2cb0 <print_hex_digits>

00002d2c <printf>:
    2d2c:	fb010113          	addi	sp,sp,-80
    2d30:	04f12223          	sw	a5,68(sp)
    2d34:	03410793          	addi	a5,sp,52
    2d38:	02812423          	sw	s0,40(sp)
    2d3c:	02912223          	sw	s1,36(sp)
    2d40:	03212023          	sw	s2,32(sp)
    2d44:	01312e23          	sw	s3,28(sp)
    2d48:	01412c23          	sw	s4,24(sp)
    2d4c:	01512a23          	sw	s5,20(sp)
    2d50:	01612823          	sw	s6,16(sp)
    2d54:	02112623          	sw	ra,44(sp)
    2d58:	00050413          	mv	s0,a0
    2d5c:	02b12a23          	sw	a1,52(sp)
    2d60:	02c12c23          	sw	a2,56(sp)
    2d64:	02d12e23          	sw	a3,60(sp)
    2d68:	04e12023          	sw	a4,64(sp)
    2d6c:	05012423          	sw	a6,72(sp)
    2d70:	05112623          	sw	a7,76(sp)
    2d74:	00f12623          	sw	a5,12(sp)
    2d78:	02500913          	li	s2,37
    2d7c:	000064b7          	lui	s1,0x6
    2d80:	07300993          	li	s3,115
    2d84:	07800a13          	li	s4,120
    2d88:	06400a93          	li	s5,100
    2d8c:	06300b13          	li	s6,99
    2d90:	00044503          	lbu	a0,0(s0)
    2d94:	02051663          	bnez	a0,2dc0 <printf+0x94>
    2d98:	02c12083          	lw	ra,44(sp)
    2d9c:	02812403          	lw	s0,40(sp)
    2da0:	02412483          	lw	s1,36(sp)
    2da4:	02012903          	lw	s2,32(sp)
    2da8:	01c12983          	lw	s3,28(sp)
    2dac:	01812a03          	lw	s4,24(sp)
    2db0:	01412a83          	lw	s5,20(sp)
    2db4:	01012b03          	lw	s6,16(sp)
    2db8:	05010113          	addi	sp,sp,80
    2dbc:	00008067          	ret
    2dc0:	09251863          	bne	a0,s2,2e50 <printf+0x124>
    2dc4:	00144503          	lbu	a0,1(s0)
    2dc8:	03351463          	bne	a0,s3,2df0 <printf+0xc4>
    2dcc:	00c12783          	lw	a5,12(sp)
    2dd0:	0007a503          	lw	a0,0(a5)
    2dd4:	00478713          	addi	a4,a5,4
    2dd8:	00e12623          	sw	a4,12(sp)
    2ddc:	00000097          	auipc	ra,0x0
    2de0:	de8080e7          	jalr	-536(ra) # 2bc4 <print_string>
    2de4:	00140413          	addi	s0,s0,1
    2de8:	00140413          	addi	s0,s0,1
    2dec:	fa5ff06f          	j	2d90 <printf+0x64>
    2df0:	03451063          	bne	a0,s4,2e10 <printf+0xe4>
    2df4:	00c12783          	lw	a5,12(sp)
    2df8:	0007a503          	lw	a0,0(a5)
    2dfc:	00478713          	addi	a4,a5,4
    2e00:	00e12623          	sw	a4,12(sp)
    2e04:	00000097          	auipc	ra,0x0
    2e08:	f1c080e7          	jalr	-228(ra) # 2d20 <print_hex>
    2e0c:	fd9ff06f          	j	2de4 <printf+0xb8>
    2e10:	03551063          	bne	a0,s5,2e30 <printf+0x104>
    2e14:	00c12783          	lw	a5,12(sp)
    2e18:	0007a503          	lw	a0,0(a5)
    2e1c:	00478713          	addi	a4,a5,4
    2e20:	00e12623          	sw	a4,12(sp)
    2e24:	00000097          	auipc	ra,0x0
    2e28:	de4080e7          	jalr	-540(ra) # 2c08 <print_dec>
    2e2c:	fb9ff06f          	j	2de4 <printf+0xb8>
    2e30:	7d84a783          	lw	a5,2008(s1) # 67d8 <f_putchar>
    2e34:	01651a63          	bne	a0,s6,2e48 <printf+0x11c>
    2e38:	00c12703          	lw	a4,12(sp)
    2e3c:	00072503          	lw	a0,0(a4)
    2e40:	00470693          	addi	a3,a4,4
    2e44:	00d12623          	sw	a3,12(sp)
    2e48:	000780e7          	jalr	a5
    2e4c:	f99ff06f          	j	2de4 <printf+0xb8>
    2e50:	7d84a783          	lw	a5,2008(s1)
    2e54:	000780e7          	jalr	a5
    2e58:	f91ff06f          	j	2de8 <printf+0xbc>

00002e5c <__mulsi3>:
    2e5c:	00050793          	mv	a5,a0
    2e60:	00000513          	li	a0,0
    2e64:	00079463          	bnez	a5,2e6c <__mulsi3+0x10>
    2e68:	00008067          	ret
    2e6c:	0017f713          	andi	a4,a5,1
    2e70:	00070463          	beqz	a4,2e78 <__mulsi3+0x1c>
    2e74:	00b50533          	add	a0,a0,a1
    2e78:	0017d793          	srli	a5,a5,0x1
    2e7c:	00159593          	slli	a1,a1,0x1
    2e80:	fe5ff06f          	j	2e64 <__mulsi3+0x8>

00002e84 <fat_list_insert_last>:
    2e84:	00452783          	lw	a5,4(a0)
    2e88:	04079263          	bnez	a5,2ecc <fat_list_insert_last+0x48>
    2e8c:	00052783          	lw	a5,0(a0)
    2e90:	00079c63          	bnez	a5,2ea8 <fat_list_insert_last+0x24>
    2e94:	00b52023          	sw	a1,0(a0)
    2e98:	00b52223          	sw	a1,4(a0)
    2e9c:	0005a023          	sw	zero,0(a1)
    2ea0:	0005a223          	sw	zero,4(a1)
    2ea4:	00008067          	ret
    2ea8:	0007a703          	lw	a4,0(a5)
    2eac:	00f5a223          	sw	a5,4(a1)
    2eb0:	00e5a023          	sw	a4,0(a1)
    2eb4:	00071863          	bnez	a4,2ec4 <fat_list_insert_last+0x40>
    2eb8:	00b52023          	sw	a1,0(a0)
    2ebc:	00b7a023          	sw	a1,0(a5)
    2ec0:	00008067          	ret
    2ec4:	00b72223          	sw	a1,4(a4)
    2ec8:	ff5ff06f          	j	2ebc <fat_list_insert_last+0x38>
    2ecc:	0047a703          	lw	a4,4(a5)
    2ed0:	00f5a023          	sw	a5,0(a1)
    2ed4:	00e5a223          	sw	a4,4(a1)
    2ed8:	00071863          	bnez	a4,2ee8 <fat_list_insert_last+0x64>
    2edc:	00b52223          	sw	a1,4(a0)
    2ee0:	00b7a223          	sw	a1,4(a5)
    2ee4:	00008067          	ret
    2ee8:	00b72023          	sw	a1,0(a4)
    2eec:	ff5ff06f          	j	2ee0 <fat_list_insert_last+0x5c>

00002ef0 <FileString_StrCmpNoCase>:
    2ef0:	00050313          	mv	t1,a0
    2ef4:	00000793          	li	a5,0
    2ef8:	01900e13          	li	t3,25
    2efc:	00c79663          	bne	a5,a2,2f08 <FileString_StrCmpNoCase+0x18>
    2f00:	00000513          	li	a0,0
    2f04:	00008067          	ret
    2f08:	00f30733          	add	a4,t1,a5
    2f0c:	00074883          	lbu	a7,0(a4)
    2f10:	00f58733          	add	a4,a1,a5
    2f14:	00074803          	lbu	a6,0(a4)
    2f18:	fbf88713          	addi	a4,a7,-65
    2f1c:	0ff77713          	zext.b	a4,a4
    2f20:	00088693          	mv	a3,a7
    2f24:	00ee6663          	bltu	t3,a4,2f30 <FileString_StrCmpNoCase+0x40>
    2f28:	02088693          	addi	a3,a7,32
    2f2c:	0ff6f693          	zext.b	a3,a3
    2f30:	fbf80513          	addi	a0,a6,-65
    2f34:	0ff57513          	zext.b	a0,a0
    2f38:	00080713          	mv	a4,a6
    2f3c:	00ae6663          	bltu	t3,a0,2f48 <FileString_StrCmpNoCase+0x58>
    2f40:	02080713          	addi	a4,a6,32
    2f44:	0ff77713          	zext.b	a4,a4
    2f48:	40e68533          	sub	a0,a3,a4
    2f4c:	00e69863          	bne	a3,a4,2f5c <FileString_StrCmpNoCase+0x6c>
    2f50:	00088663          	beqz	a7,2f5c <FileString_StrCmpNoCase+0x6c>
    2f54:	00178793          	addi	a5,a5,1
    2f58:	fa0812e3          	bnez	a6,2efc <FileString_StrCmpNoCase+0xc>
    2f5c:	00008067          	ret

00002f60 <FileString_GetExtension>:
    2f60:	00050713          	mv	a4,a0
    2f64:	00050793          	mv	a5,a0
    2f68:	02e00613          	li	a2,46
    2f6c:	fff00513          	li	a0,-1
    2f70:	0007c683          	lbu	a3,0(a5)
    2f74:	00069463          	bnez	a3,2f7c <FileString_GetExtension+0x1c>
    2f78:	00008067          	ret
    2f7c:	00c69463          	bne	a3,a2,2f84 <FileString_GetExtension+0x24>
    2f80:	40e78533          	sub	a0,a5,a4
    2f84:	00178793          	addi	a5,a5,1
    2f88:	fe9ff06f          	j	2f70 <FileString_GetExtension+0x10>

00002f8c <fatfs_fat_writeback>:
    2f8c:	00059663          	bnez	a1,2f98 <fatfs_fat_writeback+0xc>
    2f90:	00000513          	li	a0,0
    2f94:	00008067          	ret
    2f98:	2045a703          	lw	a4,516(a1)
    2f9c:	ff010113          	addi	sp,sp,-16
    2fa0:	00812423          	sw	s0,8(sp)
    2fa4:	00112623          	sw	ra,12(sp)
    2fa8:	00058413          	mv	s0,a1
    2fac:	00070a63          	beqz	a4,2fc0 <fatfs_fat_writeback+0x34>
    2fb0:	03852683          	lw	a3,56(a0)
    2fb4:	00050793          	mv	a5,a0
    2fb8:	00069863          	bnez	a3,2fc8 <fatfs_fat_writeback+0x3c>
    2fbc:	20042223          	sw	zero,516(s0)
    2fc0:	00100513          	li	a0,1
    2fc4:	0380006f          	j	2ffc <fatfs_fat_writeback+0x70>
    2fc8:	2005a503          	lw	a0,512(a1)
    2fcc:	0147a703          	lw	a4,20(a5)
    2fd0:	0207a583          	lw	a1,32(a5)
    2fd4:	00100613          	li	a2,1
    2fd8:	40e507b3          	sub	a5,a0,a4
    2fdc:	00178793          	addi	a5,a5,1
    2fe0:	00f5f663          	bgeu	a1,a5,2fec <fatfs_fat_writeback+0x60>
    2fe4:	00b70733          	add	a4,a4,a1
    2fe8:	40a70633          	sub	a2,a4,a0
    2fec:	00040593          	mv	a1,s0
    2ff0:	000680e7          	jalr	a3
    2ff4:	fc0514e3          	bnez	a0,2fbc <fatfs_fat_writeback+0x30>
    2ff8:	00000513          	li	a0,0
    2ffc:	00c12083          	lw	ra,12(sp)
    3000:	00812403          	lw	s0,8(sp)
    3004:	01010113          	addi	sp,sp,16
    3008:	00008067          	ret

0000300c <fatfs_fat_read_sector>:
    300c:	fe010113          	addi	sp,sp,-32
    3010:	01212823          	sw	s2,16(sp)
    3014:	25452903          	lw	s2,596(a0)
    3018:	00812c23          	sw	s0,24(sp)
    301c:	00912a23          	sw	s1,20(sp)
    3020:	01312623          	sw	s3,12(sp)
    3024:	00112e23          	sw	ra,28(sp)
    3028:	00050993          	mv	s3,a0
    302c:	00058493          	mv	s1,a1
    3030:	00000413          	li	s0,0
    3034:	04091063          	bnez	s2,3074 <fatfs_fat_read_sector+0x68>
    3038:	2549a783          	lw	a5,596(s3)
    303c:	20f42623          	sw	a5,524(s0)
    3040:	20442783          	lw	a5,516(s0)
    3044:	2489aa23          	sw	s0,596(s3)
    3048:	08079863          	bnez	a5,30d8 <fatfs_fat_read_sector+0xcc>
    304c:	0349a783          	lw	a5,52(s3)
    3050:	20942023          	sw	s1,512(s0)
    3054:	00100613          	li	a2,1
    3058:	00040593          	mv	a1,s0
    305c:	00048513          	mv	a0,s1
    3060:	000780e7          	jalr	a5
    3064:	08051663          	bnez	a0,30f0 <fatfs_fat_read_sector+0xe4>
    3068:	fff00793          	li	a5,-1
    306c:	20f42023          	sw	a5,512(s0)
    3070:	0480006f          	j	30b8 <fatfs_fat_read_sector+0xac>
    3074:	20092783          	lw	a5,512(s2)
    3078:	00f4e663          	bltu	s1,a5,3084 <fatfs_fat_read_sector+0x78>
    307c:	00178713          	addi	a4,a5,1
    3080:	02e4e463          	bltu	s1,a4,30a8 <fatfs_fat_read_sector+0x9c>
    3084:	20c92783          	lw	a5,524(s2)
    3088:	00079663          	bnez	a5,3094 <fatfs_fat_read_sector+0x88>
    308c:	00040a63          	beqz	s0,30a0 <fatfs_fat_read_sector+0x94>
    3090:	20042623          	sw	zero,524(s0)
    3094:	00090413          	mv	s0,s2
    3098:	20c92903          	lw	s2,524(s2)
    309c:	f99ff06f          	j	3034 <fatfs_fat_read_sector+0x28>
    30a0:	2409aa23          	sw	zero,596(s3)
    30a4:	ff1ff06f          	j	3094 <fatfs_fat_read_sector+0x88>
    30a8:	40f484b3          	sub	s1,s1,a5
    30ac:	00949493          	slli	s1,s1,0x9
    30b0:	009904b3          	add	s1,s2,s1
    30b4:	20992423          	sw	s1,520(s2)
    30b8:	01c12083          	lw	ra,28(sp)
    30bc:	01812403          	lw	s0,24(sp)
    30c0:	01412483          	lw	s1,20(sp)
    30c4:	00c12983          	lw	s3,12(sp)
    30c8:	00090513          	mv	a0,s2
    30cc:	01012903          	lw	s2,16(sp)
    30d0:	02010113          	addi	sp,sp,32
    30d4:	00008067          	ret
    30d8:	00040593          	mv	a1,s0
    30dc:	00098513          	mv	a0,s3
    30e0:	00000097          	auipc	ra,0x0
    30e4:	eac080e7          	jalr	-340(ra) # 2f8c <fatfs_fat_writeback>
    30e8:	f60512e3          	bnez	a0,304c <fatfs_fat_read_sector+0x40>
    30ec:	fcdff06f          	j	30b8 <fatfs_fat_read_sector+0xac>
    30f0:	20842423          	sw	s0,520(s0)
    30f4:	00040913          	mv	s2,s0
    30f8:	fc1ff06f          	j	30b8 <fatfs_fat_read_sector+0xac>

000030fc <_allocate_file>:
    30fc:	ff010113          	addi	sp,sp,-16
    3100:	000067b7          	lui	a5,0x6
    3104:	00812423          	sw	s0,8(sp)
    3108:	7dc7a403          	lw	s0,2012(a5) # 67dc <_free_file_list>
    310c:	00112623          	sw	ra,12(sp)
    3110:	02040e63          	beqz	s0,314c <_allocate_file+0x50>
    3114:	00042703          	lw	a4,0(s0)
    3118:	00442683          	lw	a3,4(s0)
    311c:	7dc78793          	addi	a5,a5,2012
    3120:	04071063          	bnez	a4,3160 <_allocate_file+0x64>
    3124:	00d7a023          	sw	a3,0(a5)
    3128:	00442683          	lw	a3,4(s0)
    312c:	02069e63          	bnez	a3,3168 <_allocate_file+0x6c>
    3130:	00e7a223          	sw	a4,4(a5)
    3134:	00006537          	lui	a0,0x6
    3138:	00040593          	mv	a1,s0
    313c:	7e450513          	addi	a0,a0,2020 # 67e4 <_open_file_list>
    3140:	00000097          	auipc	ra,0x0
    3144:	d44080e7          	jalr	-700(ra) # 2e84 <fat_list_insert_last>
    3148:	bc440413          	addi	s0,s0,-1084
    314c:	00c12083          	lw	ra,12(sp)
    3150:	00040513          	mv	a0,s0
    3154:	00812403          	lw	s0,8(sp)
    3158:	01010113          	addi	sp,sp,16
    315c:	00008067          	ret
    3160:	00d72223          	sw	a3,4(a4)
    3164:	fc5ff06f          	j	3128 <_allocate_file+0x2c>
    3168:	00e6a023          	sw	a4,0(a3)
    316c:	fc9ff06f          	j	3134 <_allocate_file+0x38>

00003170 <_free_file>:
    3170:	43c52783          	lw	a5,1084(a0)
    3174:	44052703          	lw	a4,1088(a0)
    3178:	43c50593          	addi	a1,a0,1084
    317c:	02079663          	bnez	a5,31a8 <_free_file+0x38>
    3180:	000066b7          	lui	a3,0x6
    3184:	7ee6a223          	sw	a4,2020(a3) # 67e4 <_open_file_list>
    3188:	44052703          	lw	a4,1088(a0)
    318c:	02071263          	bnez	a4,31b0 <_free_file+0x40>
    3190:	00006737          	lui	a4,0x6
    3194:	7ef72423          	sw	a5,2024(a4) # 67e8 <_open_file_list+0x4>
    3198:	00006537          	lui	a0,0x6
    319c:	7dc50513          	addi	a0,a0,2012 # 67dc <_free_file_list>
    31a0:	00000317          	auipc	t1,0x0
    31a4:	ce430067          	jr	-796(t1) # 2e84 <fat_list_insert_last>
    31a8:	00e7a223          	sw	a4,4(a5)
    31ac:	fddff06f          	j	3188 <_free_file+0x18>
    31b0:	00f72023          	sw	a5,0(a4)
    31b4:	fe5ff06f          	j	3198 <_free_file+0x28>

000031b8 <fatfs_lba_of_cluster>:
    31b8:	ff010113          	addi	sp,sp,-16
    31bc:	00812423          	sw	s0,8(sp)
    31c0:	00112623          	sw	ra,12(sp)
    31c4:	00050413          	mv	s0,a0
    31c8:	00058513          	mv	a0,a1
    31cc:	00044583          	lbu	a1,0(s0)
    31d0:	ffe50513          	addi	a0,a0,-2
    31d4:	00000097          	auipc	ra,0x0
    31d8:	c88080e7          	jalr	-888(ra) # 2e5c <__mulsi3>
    31dc:	00442783          	lw	a5,4(s0)
    31e0:	00f50533          	add	a0,a0,a5
    31e4:	03042783          	lw	a5,48(s0)
    31e8:	00079863          	bnez	a5,31f8 <fatfs_lba_of_cluster+0x40>
    31ec:	02845783          	lhu	a5,40(s0)
    31f0:	4047d793          	srai	a5,a5,0x4
    31f4:	00f50533          	add	a0,a0,a5
    31f8:	00c12083          	lw	ra,12(sp)
    31fc:	00812403          	lw	s0,8(sp)
    3200:	01010113          	addi	sp,sp,16
    3204:	00008067          	ret

00003208 <fatfs_sector_read>:
    3208:	03452783          	lw	a5,52(a0)
    320c:	00058713          	mv	a4,a1
    3210:	00070513          	mv	a0,a4
    3214:	00060593          	mv	a1,a2
    3218:	00068613          	mv	a2,a3
    321c:	00078067          	jr	a5

00003220 <fatfs_sector_write>:
    3220:	03852783          	lw	a5,56(a0)
    3224:	00058713          	mv	a4,a1
    3228:	00070513          	mv	a0,a4
    322c:	00060593          	mv	a1,a2
    3230:	00068613          	mv	a2,a3
    3234:	00078067          	jr	a5

00003238 <fatfs_write_sector>:
    3238:	03852783          	lw	a5,56(a0)
    323c:	0a078863          	beqz	a5,32ec <fatfs_write_sector+0xb4>
    3240:	fe010113          	addi	sp,sp,-32
    3244:	01212823          	sw	s2,16(sp)
    3248:	00068913          	mv	s2,a3
    324c:	03052683          	lw	a3,48(a0)
    3250:	00812c23          	sw	s0,24(sp)
    3254:	00912a23          	sw	s1,20(sp)
    3258:	00112e23          	sw	ra,28(sp)
    325c:	00d5e733          	or	a4,a1,a3
    3260:	00050413          	mv	s0,a0
    3264:	00060493          	mv	s1,a2
    3268:	04071063          	bnez	a4,32a8 <fatfs_write_sector+0x70>
    326c:	01052703          	lw	a4,16(a0)
    3270:	06e67063          	bgeu	a2,a4,32d0 <fatfs_write_sector+0x98>
    3274:	01c52503          	lw	a0,28(a0)
    3278:	00c42703          	lw	a4,12(s0)
    327c:	00e50533          	add	a0,a0,a4
    3280:	00c50533          	add	a0,a0,a2
    3284:	02090e63          	beqz	s2,32c0 <fatfs_write_sector+0x88>
    3288:	00100613          	li	a2,1
    328c:	00090593          	mv	a1,s2
    3290:	01812403          	lw	s0,24(sp)
    3294:	01c12083          	lw	ra,28(sp)
    3298:	01412483          	lw	s1,20(sp)
    329c:	01012903          	lw	s2,16(sp)
    32a0:	02010113          	addi	sp,sp,32
    32a4:	00078067          	jr	a5
    32a8:	00f12623          	sw	a5,12(sp)
    32ac:	00000097          	auipc	ra,0x0
    32b0:	f0c080e7          	jalr	-244(ra) # 31b8 <fatfs_lba_of_cluster>
    32b4:	00c12783          	lw	a5,12(sp)
    32b8:	00a48533          	add	a0,s1,a0
    32bc:	fc9ff06f          	j	3284 <fatfs_write_sector+0x4c>
    32c0:	24a42223          	sw	a0,580(s0)
    32c4:	00100613          	li	a2,1
    32c8:	04440593          	addi	a1,s0,68
    32cc:	fc5ff06f          	j	3290 <fatfs_write_sector+0x58>
    32d0:	01c12083          	lw	ra,28(sp)
    32d4:	01812403          	lw	s0,24(sp)
    32d8:	01412483          	lw	s1,20(sp)
    32dc:	01012903          	lw	s2,16(sp)
    32e0:	00000513          	li	a0,0
    32e4:	02010113          	addi	sp,sp,32
    32e8:	00008067          	ret
    32ec:	00000513          	li	a0,0
    32f0:	00008067          	ret

000032f4 <fl_init>:
    32f4:	ff010113          	addi	sp,sp,-16
    32f8:	00812423          	sw	s0,8(sp)
    32fc:	00006437          	lui	s0,0x6
    3300:	00112623          	sw	ra,12(sp)
    3304:	7dc40793          	addi	a5,s0,2012 # 67dc <_free_file_list>
    3308:	0007a223          	sw	zero,4(a5)
    330c:	0007a023          	sw	zero,0(a5)
    3310:	000085b7          	lui	a1,0x8
    3314:	000067b7          	lui	a5,0x6
    3318:	7e478793          	addi	a5,a5,2020 # 67e4 <_open_file_list>
    331c:	7dc40513          	addi	a0,s0,2012
    3320:	89858593          	addi	a1,a1,-1896 # 7898 <_files+0x43c>
    3324:	0007a223          	sw	zero,4(a5)
    3328:	0007a023          	sw	zero,0(a5)
    332c:	00000097          	auipc	ra,0x0
    3330:	b58080e7          	jalr	-1192(ra) # 2e84 <fat_list_insert_last>
    3334:	000085b7          	lui	a1,0x8
    3338:	7dc40513          	addi	a0,s0,2012
    333c:	cdc58593          	addi	a1,a1,-804 # 7cdc <_files+0x880>
    3340:	00000097          	auipc	ra,0x0
    3344:	b44080e7          	jalr	-1212(ra) # 2e84 <fat_list_insert_last>
    3348:	00c12083          	lw	ra,12(sp)
    334c:	00812403          	lw	s0,8(sp)
    3350:	000067b7          	lui	a5,0x6
    3354:	00100713          	li	a4,1
    3358:	7ee7a823          	sw	a4,2032(a5) # 67f0 <_filelib_init>
    335c:	01010113          	addi	sp,sp,16
    3360:	00008067          	ret

00003364 <fl_fseek>:
    3364:	000067b7          	lui	a5,0x6
    3368:	7f07a783          	lw	a5,2032(a5) # 67f0 <_filelib_init>
    336c:	fd010113          	addi	sp,sp,-48
    3370:	02812423          	sw	s0,40(sp)
    3374:	02912223          	sw	s1,36(sp)
    3378:	03212023          	sw	s2,32(sp)
    337c:	02112623          	sw	ra,44(sp)
    3380:	01312e23          	sw	s3,28(sp)
    3384:	00050413          	mv	s0,a0
    3388:	00058493          	mv	s1,a1
    338c:	00060913          	mv	s2,a2
    3390:	00079663          	bnez	a5,339c <fl_fseek+0x38>
    3394:	00000097          	auipc	ra,0x0
    3398:	f60080e7          	jalr	-160(ra) # 32f4 <fl_init>
    339c:	fff00513          	li	a0,-1
    33a0:	08040463          	beqz	s0,3428 <fl_fseek+0xc4>
    33a4:	00200793          	li	a5,2
    33a8:	00f91463          	bne	s2,a5,33b0 <fl_fseek+0x4c>
    33ac:	06049e63          	bnez	s1,3428 <fl_fseek+0xc4>
    33b0:	000077b7          	lui	a5,0x7
    33b4:	ff478713          	addi	a4,a5,-12 # 6ff4 <_fs>
    33b8:	03c72703          	lw	a4,60(a4)
    33bc:	ff478993          	addi	s3,a5,-12
    33c0:	00070463          	beqz	a4,33c8 <fl_fseek+0x64>
    33c4:	000700e7          	jalr	a4
    33c8:	fff00793          	li	a5,-1
    33cc:	42f42823          	sw	a5,1072(s0)
    33d0:	42042a23          	sw	zero,1076(s0)
    33d4:	00091c63          	bnez	s2,33ec <fl_fseek+0x88>
    33d8:	00c42783          	lw	a5,12(s0)
    33dc:	00942423          	sw	s1,8(s0)
    33e0:	0297f863          	bgeu	a5,s1,3410 <fl_fseek+0xac>
    33e4:	00f42423          	sw	a5,8(s0)
    33e8:	0280006f          	j	3410 <fl_fseek+0xac>
    33ec:	00100793          	li	a5,1
    33f0:	06f91063          	bne	s2,a5,3450 <fl_fseek+0xec>
    33f4:	00842783          	lw	a5,8(s0)
    33f8:	0004c663          	bltz	s1,3404 <fl_fseek+0xa0>
    33fc:	00f484b3          	add	s1,s1,a5
    3400:	fd9ff06f          	j	33d8 <fl_fseek+0x74>
    3404:	40900733          	neg	a4,s1
    3408:	02e7fe63          	bgeu	a5,a4,3444 <fl_fseek+0xe0>
    340c:	00042423          	sw	zero,8(s0)
    3410:	00000513          	li	a0,0
    3414:	0409a783          	lw	a5,64(s3)
    3418:	00078863          	beqz	a5,3428 <fl_fseek+0xc4>
    341c:	00a12623          	sw	a0,12(sp)
    3420:	000780e7          	jalr	a5
    3424:	00c12503          	lw	a0,12(sp)
    3428:	02c12083          	lw	ra,44(sp)
    342c:	02812403          	lw	s0,40(sp)
    3430:	02412483          	lw	s1,36(sp)
    3434:	02012903          	lw	s2,32(sp)
    3438:	01c12983          	lw	s3,28(sp)
    343c:	03010113          	addi	sp,sp,48
    3440:	00008067          	ret
    3444:	00f484b3          	add	s1,s1,a5
    3448:	00942423          	sw	s1,8(s0)
    344c:	fc5ff06f          	j	3410 <fl_fseek+0xac>
    3450:	00200793          	li	a5,2
    3454:	fff00513          	li	a0,-1
    3458:	faf91ee3          	bne	s2,a5,3414 <fl_fseek+0xb0>
    345c:	00c42783          	lw	a5,12(s0)
    3460:	f85ff06f          	j	33e4 <fl_fseek+0x80>

00003464 <fl_fgetpos>:
    3464:	06050663          	beqz	a0,34d0 <fl_fgetpos+0x6c>
    3468:	000077b7          	lui	a5,0x7
    346c:	ff478713          	addi	a4,a5,-12 # 6ff4 <_fs>
    3470:	03c72703          	lw	a4,60(a4)
    3474:	ff010113          	addi	sp,sp,-16
    3478:	00812423          	sw	s0,8(sp)
    347c:	00912223          	sw	s1,4(sp)
    3480:	01212023          	sw	s2,0(sp)
    3484:	00112623          	sw	ra,12(sp)
    3488:	00050493          	mv	s1,a0
    348c:	00058913          	mv	s2,a1
    3490:	ff478413          	addi	s0,a5,-12
    3494:	00070463          	beqz	a4,349c <fl_fgetpos+0x38>
    3498:	000700e7          	jalr	a4
    349c:	0084a783          	lw	a5,8(s1)
    34a0:	00f92023          	sw	a5,0(s2)
    34a4:	04042783          	lw	a5,64(s0)
    34a8:	02079063          	bnez	a5,34c8 <fl_fgetpos+0x64>
    34ac:	00c12083          	lw	ra,12(sp)
    34b0:	00812403          	lw	s0,8(sp)
    34b4:	00412483          	lw	s1,4(sp)
    34b8:	00012903          	lw	s2,0(sp)
    34bc:	00000513          	li	a0,0
    34c0:	01010113          	addi	sp,sp,16
    34c4:	00008067          	ret
    34c8:	000780e7          	jalr	a5
    34cc:	fe1ff06f          	j	34ac <fl_fgetpos+0x48>
    34d0:	fff00513          	li	a0,-1
    34d4:	00008067          	ret

000034d8 <fl_ftell>:
    34d8:	fe010113          	addi	sp,sp,-32
    34dc:	00c10593          	addi	a1,sp,12
    34e0:	00112e23          	sw	ra,28(sp)
    34e4:	00012623          	sw	zero,12(sp)
    34e8:	00000097          	auipc	ra,0x0
    34ec:	f7c080e7          	jalr	-132(ra) # 3464 <fl_fgetpos>
    34f0:	01c12083          	lw	ra,28(sp)
    34f4:	00c12503          	lw	a0,12(sp)
    34f8:	02010113          	addi	sp,sp,32
    34fc:	00008067          	ret

00003500 <fl_closedir>:
    3500:	00000513          	li	a0,0
    3504:	00008067          	ret

00003508 <fatfs_lfn_cache_entry>:
    3508:	0005c783          	lbu	a5,0(a1)
    350c:	01300693          	li	a3,19
    3510:	01f7f793          	andi	a5,a5,31
    3514:	fff78713          	addi	a4,a5,-1
    3518:	0ff77613          	zext.b	a2,a4
    351c:	0ac6ea63          	bltu	a3,a2,35d0 <fatfs_lfn_cache_entry+0xc8>
    3520:	10554683          	lbu	a3,261(a0)
    3524:	00069463          	bnez	a3,352c <fatfs_lfn_cache_entry+0x24>
    3528:	10f502a3          	sb	a5,261(a0)
    352c:	00171793          	slli	a5,a4,0x1
    3530:	00e787b3          	add	a5,a5,a4
    3534:	0015c683          	lbu	a3,1(a1)
    3538:	00279793          	slli	a5,a5,0x2
    353c:	00e787b3          	add	a5,a5,a4
    3540:	00f50533          	add	a0,a0,a5
    3544:	00d50023          	sb	a3,0(a0)
    3548:	0035c783          	lbu	a5,3(a1)
    354c:	0ff00713          	li	a4,255
    3550:	02000693          	li	a3,32
    3554:	00f500a3          	sb	a5,1(a0)
    3558:	0055c783          	lbu	a5,5(a1)
    355c:	00f50123          	sb	a5,2(a0)
    3560:	0075c783          	lbu	a5,7(a1)
    3564:	00f501a3          	sb	a5,3(a0)
    3568:	0095c783          	lbu	a5,9(a1)
    356c:	00f50223          	sb	a5,4(a0)
    3570:	00e5c783          	lbu	a5,14(a1)
    3574:	00f502a3          	sb	a5,5(a0)
    3578:	0105c783          	lbu	a5,16(a1)
    357c:	00f50323          	sb	a5,6(a0)
    3580:	0125c783          	lbu	a5,18(a1)
    3584:	00f503a3          	sb	a5,7(a0)
    3588:	0145c783          	lbu	a5,20(a1)
    358c:	00f50423          	sb	a5,8(a0)
    3590:	0165c783          	lbu	a5,22(a1)
    3594:	00f504a3          	sb	a5,9(a0)
    3598:	0185c783          	lbu	a5,24(a1)
    359c:	00f50523          	sb	a5,10(a0)
    35a0:	01c5c783          	lbu	a5,28(a1)
    35a4:	00f505a3          	sb	a5,11(a0)
    35a8:	01e5c783          	lbu	a5,30(a1)
    35ac:	00f50623          	sb	a5,12(a0)
    35b0:	00d00793          	li	a5,13
    35b4:	00054603          	lbu	a2,0(a0)
    35b8:	00e61463          	bne	a2,a4,35c0 <fatfs_lfn_cache_entry+0xb8>
    35bc:	00d50023          	sb	a3,0(a0)
    35c0:	fff78793          	addi	a5,a5,-1
    35c4:	0ff7f793          	zext.b	a5,a5
    35c8:	00150513          	addi	a0,a0,1
    35cc:	fe0794e3          	bnez	a5,35b4 <fatfs_lfn_cache_entry+0xac>
    35d0:	00008067          	ret

000035d4 <fatfs_lfn_cache_get>:
    35d4:	10554703          	lbu	a4,261(a0)
    35d8:	01400793          	li	a5,20
    35dc:	00f71663          	bne	a4,a5,35e8 <fatfs_lfn_cache_get+0x14>
    35e0:	10050223          	sb	zero,260(a0)
    35e4:	00008067          	ret
    35e8:	02070063          	beqz	a4,3608 <fatfs_lfn_cache_get+0x34>
    35ec:	00171793          	slli	a5,a4,0x1
    35f0:	00e787b3          	add	a5,a5,a4
    35f4:	00279793          	slli	a5,a5,0x2
    35f8:	00e787b3          	add	a5,a5,a4
    35fc:	00f507b3          	add	a5,a0,a5
    3600:	00078023          	sb	zero,0(a5)
    3604:	00008067          	ret
    3608:	00050023          	sb	zero,0(a0)
    360c:	00008067          	ret

00003610 <fatfs_entry_lfn_text>:
    3610:	00b54503          	lbu	a0,11(a0)
    3614:	00f57513          	andi	a0,a0,15
    3618:	ff150513          	addi	a0,a0,-15
    361c:	00153513          	seqz	a0,a0
    3620:	00008067          	ret

00003624 <fatfs_entry_lfn_invalid>:
    3624:	00054703          	lbu	a4,0(a0)
    3628:	00050793          	mv	a5,a0
    362c:	02070463          	beqz	a4,3654 <fatfs_entry_lfn_invalid+0x30>
    3630:	0e500693          	li	a3,229
    3634:	00100513          	li	a0,1
    3638:	02d70063          	beq	a4,a3,3658 <fatfs_entry_lfn_invalid+0x34>
    363c:	00b7c783          	lbu	a5,11(a5)
    3640:	00800713          	li	a4,8
    3644:	00e78a63          	beq	a5,a4,3658 <fatfs_entry_lfn_invalid+0x34>
    3648:	0067f793          	andi	a5,a5,6
    364c:	00f03533          	snez	a0,a5
    3650:	00008067          	ret
    3654:	00100513          	li	a0,1
    3658:	00008067          	ret

0000365c <fatfs_entry_lfn_exists>:
    365c:	00b5c783          	lbu	a5,11(a1)
    3660:	00f00693          	li	a3,15
    3664:	00050713          	mv	a4,a0
    3668:	02d78a63          	beq	a5,a3,369c <fatfs_entry_lfn_exists+0x40>
    366c:	0005c683          	lbu	a3,0(a1)
    3670:	00000513          	li	a0,0
    3674:	02068663          	beqz	a3,36a0 <fatfs_entry_lfn_exists+0x44>
    3678:	0e500613          	li	a2,229
    367c:	02c68263          	beq	a3,a2,36a0 <fatfs_entry_lfn_exists+0x44>
    3680:	00800693          	li	a3,8
    3684:	00d78e63          	beq	a5,a3,36a0 <fatfs_entry_lfn_exists+0x44>
    3688:	0067f793          	andi	a5,a5,6
    368c:	00079a63          	bnez	a5,36a0 <fatfs_entry_lfn_exists+0x44>
    3690:	10574503          	lbu	a0,261(a4)
    3694:	00a03533          	snez	a0,a0
    3698:	00008067          	ret
    369c:	00000513          	li	a0,0
    36a0:	00008067          	ret

000036a4 <fatfs_entry_sfn_only>:
    36a4:	00b54783          	lbu	a5,11(a0)
    36a8:	00f00713          	li	a4,15
    36ac:	02e78663          	beq	a5,a4,36d8 <fatfs_entry_sfn_only+0x34>
    36b0:	00054703          	lbu	a4,0(a0)
    36b4:	00000513          	li	a0,0
    36b8:	02070263          	beqz	a4,36dc <fatfs_entry_sfn_only+0x38>
    36bc:	0e500693          	li	a3,229
    36c0:	00d70e63          	beq	a4,a3,36dc <fatfs_entry_sfn_only+0x38>
    36c4:	00800713          	li	a4,8
    36c8:	00e78a63          	beq	a5,a4,36dc <fatfs_entry_sfn_only+0x38>
    36cc:	0067f793          	andi	a5,a5,6
    36d0:	0017b513          	seqz	a0,a5
    36d4:	00008067          	ret
    36d8:	00000513          	li	a0,0
    36dc:	00008067          	ret

000036e0 <fatfs_entry_is_dir>:
    36e0:	00b54503          	lbu	a0,11(a0)
    36e4:	00455513          	srli	a0,a0,0x4
    36e8:	00157513          	andi	a0,a0,1
    36ec:	00008067          	ret

000036f0 <fatfs_entry_is_file>:
    36f0:	00b54503          	lbu	a0,11(a0)
    36f4:	00555513          	srli	a0,a0,0x5
    36f8:	00157513          	andi	a0,a0,1
    36fc:	00008067          	ret

00003700 <fatfs_lfn_entries_required>:
    3700:	ff010113          	addi	sp,sp,-16
    3704:	00112623          	sw	ra,12(sp)
    3708:	fffff097          	auipc	ra,0xfffff
    370c:	050080e7          	jalr	80(ra) # 2758 <strlen>
    3710:	00050a63          	beqz	a0,3724 <fatfs_lfn_entries_required+0x24>
    3714:	00d00593          	li	a1,13
    3718:	00c50513          	addi	a0,a0,12
    371c:	fffff097          	auipc	ra,0xfffff
    3720:	f48080e7          	jalr	-184(ra) # 2664 <__divsi3>
    3724:	00c12083          	lw	ra,12(sp)
    3728:	01010113          	addi	sp,sp,16
    372c:	00008067          	ret

00003730 <fatfs_filename_to_lfn>:
    3730:	fa010113          	addi	sp,sp,-96
    3734:	04912a23          	sw	s1,84(sp)
    3738:	00058493          	mv	s1,a1
    373c:	000065b7          	lui	a1,0x6
    3740:	78058593          	addi	a1,a1,1920 # 6780 <font+0x1e0>
    3744:	05212823          	sw	s2,80(sp)
    3748:	05312623          	sw	s3,76(sp)
    374c:	00060913          	mv	s2,a2
    3750:	00050993          	mv	s3,a0
    3754:	03400613          	li	a2,52
    3758:	00c10513          	addi	a0,sp,12
    375c:	04112e23          	sw	ra,92(sp)
    3760:	04812c23          	sw	s0,88(sp)
    3764:	05412423          	sw	s4,72(sp)
    3768:	05512223          	sw	s5,68(sp)
    376c:	05612023          	sw	s6,64(sp)
    3770:	00068b13          	mv	s6,a3
    3774:	fffff097          	auipc	ra,0xfffff
    3778:	fc0080e7          	jalr	-64(ra) # 2734 <memcpy>
    377c:	00098513          	mv	a0,s3
    3780:	fffff097          	auipc	ra,0xfffff
    3784:	fd8080e7          	jalr	-40(ra) # 2758 <strlen>
    3788:	00050a93          	mv	s5,a0
    378c:	00098513          	mv	a0,s3
    3790:	00000097          	auipc	ra,0x0
    3794:	f70080e7          	jalr	-144(ra) # 3700 <fatfs_lfn_entries_required>
    3798:	00191793          	slli	a5,s2,0x1
    379c:	012787b3          	add	a5,a5,s2
    37a0:	00279793          	slli	a5,a5,0x2
    37a4:	00050a13          	mv	s4,a0
    37a8:	02000613          	li	a2,32
    37ac:	00000593          	li	a1,0
    37b0:	00048513          	mv	a0,s1
    37b4:	01278433          	add	s0,a5,s2
    37b8:	fffff097          	auipc	ra,0xfffff
    37bc:	f60080e7          	jalr	-160(ra) # 2718 <memset>
    37c0:	00190793          	addi	a5,s2,1
    37c4:	fffa0a13          	addi	s4,s4,-1
    37c8:	0ff7f793          	zext.b	a5,a5
    37cc:	012a1463          	bne	s4,s2,37d4 <fatfs_filename_to_lfn+0xa4>
    37d0:	0407e793          	ori	a5,a5,64
    37d4:	00f48023          	sb	a5,0(s1)
    37d8:	00f00793          	li	a5,15
    37dc:	00f485a3          	sb	a5,11(s1)
    37e0:	016486a3          	sb	s6,13(s1)
    37e4:	00c10713          	addi	a4,sp,12
    37e8:	00040793          	mv	a5,s0
    37ec:	fff00613          	li	a2,-1
    37f0:	00072683          	lw	a3,0(a4)
    37f4:	00d486b3          	add	a3,s1,a3
    37f8:	0557d463          	bge	a5,s5,3840 <fatfs_filename_to_lfn+0x110>
    37fc:	00f985b3          	add	a1,s3,a5
    3800:	0005c583          	lbu	a1,0(a1)
    3804:	00b68023          	sb	a1,0(a3)
    3808:	00470713          	addi	a4,a4,4
    380c:	04010693          	addi	a3,sp,64
    3810:	00178793          	addi	a5,a5,1
    3814:	fcd71ee3          	bne	a4,a3,37f0 <fatfs_filename_to_lfn+0xc0>
    3818:	05c12083          	lw	ra,92(sp)
    381c:	05812403          	lw	s0,88(sp)
    3820:	05412483          	lw	s1,84(sp)
    3824:	05012903          	lw	s2,80(sp)
    3828:	04c12983          	lw	s3,76(sp)
    382c:	04812a03          	lw	s4,72(sp)
    3830:	04412a83          	lw	s5,68(sp)
    3834:	04012b03          	lw	s6,64(sp)
    3838:	06010113          	addi	sp,sp,96
    383c:	00008067          	ret
    3840:	01579663          	bne	a5,s5,384c <fatfs_filename_to_lfn+0x11c>
    3844:	00068023          	sb	zero,0(a3)
    3848:	fc1ff06f          	j	3808 <fatfs_filename_to_lfn+0xd8>
    384c:	00c68023          	sb	a2,0(a3)
    3850:	00c680a3          	sb	a2,1(a3)
    3854:	fb5ff06f          	j	3808 <fatfs_filename_to_lfn+0xd8>

00003858 <fatfs_sfn_create_entry>:
    3858:	00000793          	li	a5,0
    385c:	00b00813          	li	a6,11
    3860:	00f508b3          	add	a7,a0,a5
    3864:	0008c303          	lbu	t1,0(a7)
    3868:	00f688b3          	add	a7,a3,a5
    386c:	00178793          	addi	a5,a5,1
    3870:	00688023          	sb	t1,0(a7)
    3874:	ff0796e3          	bne	a5,a6,3860 <fatfs_sfn_create_entry+0x8>
    3878:	02000793          	li	a5,32
    387c:	00f68823          	sb	a5,16(a3)
    3880:	00f68923          	sb	a5,18(a3)
    3884:	00f68c23          	sb	a5,24(a3)
    3888:	000686a3          	sb	zero,13(a3)
    388c:	00068723          	sb	zero,14(a3)
    3890:	000687a3          	sb	zero,15(a3)
    3894:	000688a3          	sb	zero,17(a3)
    3898:	000689a3          	sb	zero,19(a3)
    389c:	00068b23          	sb	zero,22(a3)
    38a0:	00068ba3          	sb	zero,23(a3)
    38a4:	00068ca3          	sb	zero,25(a3)
    38a8:	01000793          	li	a5,16
    38ac:	00071463          	bnez	a4,38b4 <fatfs_sfn_create_entry+0x5c>
    38b0:	02000793          	li	a5,32
    38b4:	00f685a3          	sb	a5,11(a3)
    38b8:	01065793          	srli	a5,a2,0x10
    38bc:	00f68a23          	sb	a5,20(a3)
    38c0:	0087d793          	srli	a5,a5,0x8
    38c4:	00f68aa3          	sb	a5,21(a3)
    38c8:	01061793          	slli	a5,a2,0x10
    38cc:	0107d793          	srli	a5,a5,0x10
    38d0:	0087d793          	srli	a5,a5,0x8
    38d4:	00f68da3          	sb	a5,27(a3)
    38d8:	0085d793          	srli	a5,a1,0x8
    38dc:	00b68e23          	sb	a1,28(a3)
    38e0:	00f68ea3          	sb	a5,29(a3)
    38e4:	0105d793          	srli	a5,a1,0x10
    38e8:	0185d593          	srli	a1,a1,0x18
    38ec:	00068623          	sb	zero,12(a3)
    38f0:	00c68d23          	sb	a2,26(a3)
    38f4:	00f68f23          	sb	a5,30(a3)
    38f8:	00b68fa3          	sb	a1,31(a3)
    38fc:	00008067          	ret

00003900 <fatfs_lfn_create_sfn>:
    3900:	0005c703          	lbu	a4,0(a1)
    3904:	02e00793          	li	a5,46
    3908:	16f70663          	beq	a4,a5,3a74 <fatfs_lfn_create_sfn+0x174>
    390c:	fe010113          	addi	sp,sp,-32
    3910:	00912a23          	sw	s1,20(sp)
    3914:	00050493          	mv	s1,a0
    3918:	00058513          	mv	a0,a1
    391c:	00112e23          	sw	ra,28(sp)
    3920:	00812c23          	sw	s0,24(sp)
    3924:	01212823          	sw	s2,16(sp)
    3928:	00058413          	mv	s0,a1
    392c:	fffff097          	auipc	ra,0xfffff
    3930:	e2c080e7          	jalr	-468(ra) # 2758 <strlen>
    3934:	00b00613          	li	a2,11
    3938:	02000593          	li	a1,32
    393c:	00050913          	mv	s2,a0
    3940:	00048513          	mv	a0,s1
    3944:	fffff097          	auipc	ra,0xfffff
    3948:	dd4080e7          	jalr	-556(ra) # 2718 <memset>
    394c:	00300613          	li	a2,3
    3950:	02000593          	li	a1,32
    3954:	00c10513          	addi	a0,sp,12
    3958:	fffff097          	auipc	ra,0xfffff
    395c:	dc0080e7          	jalr	-576(ra) # 2718 <memset>
    3960:	fff00713          	li	a4,-1
    3964:	00000793          	li	a5,0
    3968:	02e00693          	li	a3,46
    396c:	0d27c263          	blt	a5,s2,3a30 <fatfs_lfn_create_sfn+0x130>
    3970:	fff00793          	li	a5,-1
    3974:	0ef70863          	beq	a4,a5,3a64 <fatfs_lfn_create_sfn+0x164>
    3978:	00170793          	addi	a5,a4,1
    397c:	00c10693          	addi	a3,sp,12
    3980:	00470613          	addi	a2,a4,4
    3984:	0cf61263          	bne	a2,a5,3a48 <fatfs_lfn_create_sfn+0x148>
    3988:	00000613          	li	a2,0
    398c:	00000693          	li	a3,0
    3990:	02000513          	li	a0,32
    3994:	02e00813          	li	a6,46
    3998:	01900893          	li	a7,25
    399c:	00800313          	li	t1,8
    39a0:	02e6dc63          	bge	a3,a4,39d8 <fatfs_lfn_create_sfn+0xd8>
    39a4:	00d407b3          	add	a5,s0,a3
    39a8:	0007c783          	lbu	a5,0(a5)
    39ac:	0ca78063          	beq	a5,a0,3a6c <fatfs_lfn_create_sfn+0x16c>
    39b0:	0b078e63          	beq	a5,a6,3a6c <fatfs_lfn_create_sfn+0x16c>
    39b4:	f9f78593          	addi	a1,a5,-97
    39b8:	0ff5f593          	zext.b	a1,a1
    39bc:	00c48e33          	add	t3,s1,a2
    39c0:	00160613          	addi	a2,a2,1
    39c4:	00b8e663          	bltu	a7,a1,39d0 <fatfs_lfn_create_sfn+0xd0>
    39c8:	fe078793          	addi	a5,a5,-32
    39cc:	0ff7f793          	zext.b	a5,a5
    39d0:	00fe0023          	sb	a5,0(t3)
    39d4:	08661c63          	bne	a2,t1,3a6c <fatfs_lfn_create_sfn+0x16c>
    39d8:	00c10793          	addi	a5,sp,12
    39dc:	00800693          	li	a3,8
    39e0:	01900513          	li	a0,25
    39e4:	00b00593          	li	a1,11
    39e8:	0007c703          	lbu	a4,0(a5)
    39ec:	f9f70613          	addi	a2,a4,-97
    39f0:	0ff67613          	zext.b	a2,a2
    39f4:	00c56663          	bltu	a0,a2,3a00 <fatfs_lfn_create_sfn+0x100>
    39f8:	fe070713          	addi	a4,a4,-32
    39fc:	0ff77713          	zext.b	a4,a4
    3a00:	00d48633          	add	a2,s1,a3
    3a04:	00e60023          	sb	a4,0(a2)
    3a08:	00168693          	addi	a3,a3,1
    3a0c:	00178793          	addi	a5,a5,1
    3a10:	fcb69ce3          	bne	a3,a1,39e8 <fatfs_lfn_create_sfn+0xe8>
    3a14:	01c12083          	lw	ra,28(sp)
    3a18:	01812403          	lw	s0,24(sp)
    3a1c:	01412483          	lw	s1,20(sp)
    3a20:	01012903          	lw	s2,16(sp)
    3a24:	00100513          	li	a0,1
    3a28:	02010113          	addi	sp,sp,32
    3a2c:	00008067          	ret
    3a30:	00f40633          	add	a2,s0,a5
    3a34:	00064603          	lbu	a2,0(a2)
    3a38:	00d61463          	bne	a2,a3,3a40 <fatfs_lfn_create_sfn+0x140>
    3a3c:	00078713          	mv	a4,a5
    3a40:	00178793          	addi	a5,a5,1
    3a44:	f29ff06f          	j	396c <fatfs_lfn_create_sfn+0x6c>
    3a48:	0127d863          	bge	a5,s2,3a58 <fatfs_lfn_create_sfn+0x158>
    3a4c:	00f405b3          	add	a1,s0,a5
    3a50:	0005c583          	lbu	a1,0(a1)
    3a54:	00b68023          	sb	a1,0(a3)
    3a58:	00178793          	addi	a5,a5,1
    3a5c:	00168693          	addi	a3,a3,1
    3a60:	f25ff06f          	j	3984 <fatfs_lfn_create_sfn+0x84>
    3a64:	00090713          	mv	a4,s2
    3a68:	f21ff06f          	j	3988 <fatfs_lfn_create_sfn+0x88>
    3a6c:	00168693          	addi	a3,a3,1
    3a70:	f31ff06f          	j	39a0 <fatfs_lfn_create_sfn+0xa0>
    3a74:	00000513          	li	a0,0
    3a78:	00008067          	ret

00003a7c <fatfs_lfn_generate_tail>:
    3a7c:	000187b7          	lui	a5,0x18
    3a80:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    3a84:	16c7e463          	bltu	a5,a2,3bec <fatfs_lfn_generate_tail+0x170>
    3a88:	fa010113          	addi	sp,sp,-96
    3a8c:	04812c23          	sw	s0,88(sp)
    3a90:	04912a23          	sw	s1,84(sp)
    3a94:	05412423          	sw	s4,72(sp)
    3a98:	00050493          	mv	s1,a0
    3a9c:	00058a13          	mv	s4,a1
    3aa0:	00060413          	mv	s0,a2
    3aa4:	00000593          	li	a1,0
    3aa8:	00c00613          	li	a2,12
    3aac:	00410513          	addi	a0,sp,4
    3ab0:	04112e23          	sw	ra,92(sp)
    3ab4:	05312623          	sw	s3,76(sp)
    3ab8:	05512223          	sw	s5,68(sp)
    3abc:	03712e23          	sw	s7,60(sp)
    3ac0:	05212823          	sw	s2,80(sp)
    3ac4:	05612023          	sw	s6,64(sp)
    3ac8:	fffff097          	auipc	ra,0xfffff
    3acc:	c50080e7          	jalr	-944(ra) # 2718 <memset>
    3ad0:	000065b7          	lui	a1,0x6
    3ad4:	07e00793          	li	a5,126
    3ad8:	01100613          	li	a2,17
    3adc:	53858593          	addi	a1,a1,1336 # 6538 <LEDS+0x15c>
    3ae0:	01c10513          	addi	a0,sp,28
    3ae4:	01010993          	addi	s3,sp,16
    3ae8:	00f10223          	sb	a5,4(sp)
    3aec:	00098a93          	mv	s5,s3
    3af0:	fffff097          	auipc	ra,0xfffff
    3af4:	c44080e7          	jalr	-956(ra) # 2734 <memcpy>
    3af8:	00900b93          	li	s7,9
    3afc:	00a00593          	li	a1,10
    3b00:	00040513          	mv	a0,s0
    3b04:	fffff097          	auipc	ra,0xfffff
    3b08:	bb0080e7          	jalr	-1104(ra) # 26b4 <__umodsi3>
    3b0c:	03050793          	addi	a5,a0,48
    3b10:	00278533          	add	a0,a5,sp
    3b14:	fec54783          	lbu	a5,-20(a0)
    3b18:	00098913          	mv	s2,s3
    3b1c:	00040513          	mv	a0,s0
    3b20:	00a00593          	li	a1,10
    3b24:	00f98023          	sb	a5,0(s3)
    3b28:	00040b13          	mv	s6,s0
    3b2c:	fffff097          	auipc	ra,0xfffff
    3b30:	b40080e7          	jalr	-1216(ra) # 266c <__udivsi3>
    3b34:	00198993          	addi	s3,s3,1
    3b38:	00050413          	mv	s0,a0
    3b3c:	fd6be0e3          	bltu	s7,s6,3afc <fatfs_lfn_generate_tail+0x80>
    3b40:	00098023          	sb	zero,0(s3)
    3b44:	00410713          	addi	a4,sp,4
    3b48:	00090793          	mv	a5,s2
    3b4c:	00170713          	addi	a4,a4,1
    3b50:	0957f663          	bgeu	a5,s5,3bdc <fatfs_lfn_generate_tail+0x160>
    3b54:	00f10713          	addi	a4,sp,15
    3b58:	00000793          	li	a5,0
    3b5c:	00e96663          	bltu	s2,a4,3b68 <fatfs_lfn_generate_tail+0xec>
    3b60:	41590933          	sub	s2,s2,s5
    3b64:	00190793          	addi	a5,s2,1
    3b68:	03078793          	addi	a5,a5,48
    3b6c:	002787b3          	add	a5,a5,sp
    3b70:	000a0593          	mv	a1,s4
    3b74:	fc078aa3          	sb	zero,-43(a5)
    3b78:	00b00613          	li	a2,11
    3b7c:	00048513          	mv	a0,s1
    3b80:	fffff097          	auipc	ra,0xfffff
    3b84:	bb4080e7          	jalr	-1100(ra) # 2734 <memcpy>
    3b88:	00410513          	addi	a0,sp,4
    3b8c:	fffff097          	auipc	ra,0xfffff
    3b90:	bcc080e7          	jalr	-1076(ra) # 2758 <strlen>
    3b94:	40a484b3          	sub	s1,s1,a0
    3b98:	00050613          	mv	a2,a0
    3b9c:	00410593          	addi	a1,sp,4
    3ba0:	00848513          	addi	a0,s1,8
    3ba4:	fffff097          	auipc	ra,0xfffff
    3ba8:	b90080e7          	jalr	-1136(ra) # 2734 <memcpy>
    3bac:	05c12083          	lw	ra,92(sp)
    3bb0:	05812403          	lw	s0,88(sp)
    3bb4:	05412483          	lw	s1,84(sp)
    3bb8:	05012903          	lw	s2,80(sp)
    3bbc:	04c12983          	lw	s3,76(sp)
    3bc0:	04812a03          	lw	s4,72(sp)
    3bc4:	04412a83          	lw	s5,68(sp)
    3bc8:	04012b03          	lw	s6,64(sp)
    3bcc:	03c12b83          	lw	s7,60(sp)
    3bd0:	00100513          	li	a0,1
    3bd4:	06010113          	addi	sp,sp,96
    3bd8:	00008067          	ret
    3bdc:	0007c683          	lbu	a3,0(a5)
    3be0:	fff78793          	addi	a5,a5,-1
    3be4:	00d70023          	sb	a3,0(a4)
    3be8:	f65ff06f          	j	3b4c <fatfs_lfn_generate_tail+0xd0>
    3bec:	00000513          	li	a0,0
    3bf0:	00008067          	ret

00003bf4 <fatfs_total_path_levels>:
    3bf4:	00050793          	mv	a5,a0
    3bf8:	06050463          	beqz	a0,3c60 <fatfs_total_path_levels+0x6c>
    3bfc:	00054703          	lbu	a4,0(a0)
    3c00:	02f00693          	li	a3,47
    3c04:	00d71863          	bne	a4,a3,3c14 <fatfs_total_path_levels+0x20>
    3c08:	00150793          	addi	a5,a0,1
    3c0c:	00000513          	li	a0,0
    3c10:	0400006f          	j	3c50 <fatfs_total_path_levels+0x5c>
    3c14:	00154683          	lbu	a3,1(a0)
    3c18:	03a00713          	li	a4,58
    3c1c:	00e68a63          	beq	a3,a4,3c30 <fatfs_total_path_levels+0x3c>
    3c20:	00254683          	lbu	a3,2(a0)
    3c24:	05c00713          	li	a4,92
    3c28:	fff00513          	li	a0,-1
    3c2c:	02e69c63          	bne	a3,a4,3c64 <fatfs_total_path_levels+0x70>
    3c30:	00378793          	addi	a5,a5,3
    3c34:	05c00713          	li	a4,92
    3c38:	fd5ff06f          	j	3c0c <fatfs_total_path_levels+0x18>
    3c3c:	00178793          	addi	a5,a5,1
    3c40:	00e68663          	beq	a3,a4,3c4c <fatfs_total_path_levels+0x58>
    3c44:	0007c683          	lbu	a3,0(a5)
    3c48:	fe069ae3          	bnez	a3,3c3c <fatfs_total_path_levels+0x48>
    3c4c:	00150513          	addi	a0,a0,1
    3c50:	0007c683          	lbu	a3,0(a5)
    3c54:	fe0698e3          	bnez	a3,3c44 <fatfs_total_path_levels+0x50>
    3c58:	fff50513          	addi	a0,a0,-1
    3c5c:	00008067          	ret
    3c60:	fff00513          	li	a0,-1
    3c64:	00008067          	ret

00003c68 <fatfs_get_substring>:
    3c68:	0c050c63          	beqz	a0,3d40 <fatfs_get_substring+0xd8>
    3c6c:	fe010113          	addi	sp,sp,-32
    3c70:	00912a23          	sw	s1,20(sp)
    3c74:	00112e23          	sw	ra,28(sp)
    3c78:	00812c23          	sw	s0,24(sp)
    3c7c:	01212823          	sw	s2,16(sp)
    3c80:	01312623          	sw	s3,12(sp)
    3c84:	01412423          	sw	s4,8(sp)
    3c88:	00050793          	mv	a5,a0
    3c8c:	00068493          	mv	s1,a3
    3c90:	fff00513          	li	a0,-1
    3c94:	06d05a63          	blez	a3,3d08 <fatfs_get_substring+0xa0>
    3c98:	0007c983          	lbu	s3,0(a5)
    3c9c:	02f00713          	li	a4,47
    3ca0:	00058a13          	mv	s4,a1
    3ca4:	00060913          	mv	s2,a2
    3ca8:	00178413          	addi	s0,a5,1
    3cac:	02e98463          	beq	s3,a4,3cd4 <fatfs_get_substring+0x6c>
    3cb0:	0017c683          	lbu	a3,1(a5)
    3cb4:	03a00713          	li	a4,58
    3cb8:	00e68a63          	beq	a3,a4,3ccc <fatfs_get_substring+0x64>
    3cbc:	0027c683          	lbu	a3,2(a5)
    3cc0:	05c00713          	li	a4,92
    3cc4:	fff00513          	li	a0,-1
    3cc8:	04e69063          	bne	a3,a4,3d08 <fatfs_get_substring+0xa0>
    3ccc:	00378413          	addi	s0,a5,3
    3cd0:	05c00993          	li	s3,92
    3cd4:	00040513          	mv	a0,s0
    3cd8:	fffff097          	auipc	ra,0xfffff
    3cdc:	a80080e7          	jalr	-1408(ra) # 2758 <strlen>
    3ce0:	00000713          	li	a4,0
    3ce4:	00000693          	li	a3,0
    3ce8:	00000793          	li	a5,0
    3cec:	fff48493          	addi	s1,s1,-1
    3cf0:	00e905b3          	add	a1,s2,a4
    3cf4:	02a7ca63          	blt	a5,a0,3d28 <fatfs_get_substring+0xc0>
    3cf8:	00058023          	sb	zero,0(a1)
    3cfc:	00094503          	lbu	a0,0(s2)
    3d00:	00153513          	seqz	a0,a0
    3d04:	40a00533          	neg	a0,a0
    3d08:	01c12083          	lw	ra,28(sp)
    3d0c:	01812403          	lw	s0,24(sp)
    3d10:	01412483          	lw	s1,20(sp)
    3d14:	01012903          	lw	s2,16(sp)
    3d18:	00c12983          	lw	s3,12(sp)
    3d1c:	00812a03          	lw	s4,8(sp)
    3d20:	02010113          	addi	sp,sp,32
    3d24:	00008067          	ret
    3d28:	00f40633          	add	a2,s0,a5
    3d2c:	00064603          	lbu	a2,0(a2)
    3d30:	01361c63          	bne	a2,s3,3d48 <fatfs_get_substring+0xe0>
    3d34:	00168693          	addi	a3,a3,1
    3d38:	00178793          	addi	a5,a5,1
    3d3c:	fb5ff06f          	j	3cf0 <fatfs_get_substring+0x88>
    3d40:	fff00513          	li	a0,-1
    3d44:	00008067          	ret
    3d48:	ff4698e3          	bne	a3,s4,3d38 <fatfs_get_substring+0xd0>
    3d4c:	fe9756e3          	bge	a4,s1,3d38 <fatfs_get_substring+0xd0>
    3d50:	00170713          	addi	a4,a4,1
    3d54:	00c58023          	sb	a2,0(a1)
    3d58:	fe1ff06f          	j	3d38 <fatfs_get_substring+0xd0>

00003d5c <fatfs_split_path>:
    3d5c:	fd010113          	addi	sp,sp,-48
    3d60:	02912223          	sw	s1,36(sp)
    3d64:	01312e23          	sw	s3,28(sp)
    3d68:	01412c23          	sw	s4,24(sp)
    3d6c:	01512a23          	sw	s5,20(sp)
    3d70:	02112623          	sw	ra,44(sp)
    3d74:	00068a93          	mv	s5,a3
    3d78:	02812423          	sw	s0,40(sp)
    3d7c:	03212023          	sw	s2,32(sp)
    3d80:	00050993          	mv	s3,a0
    3d84:	00058493          	mv	s1,a1
    3d88:	00060a13          	mv	s4,a2
    3d8c:	00e12623          	sw	a4,12(sp)
    3d90:	00000097          	auipc	ra,0x0
    3d94:	e64080e7          	jalr	-412(ra) # 3bf4 <fatfs_total_path_levels>
    3d98:	fff00793          	li	a5,-1
    3d9c:	00c12683          	lw	a3,12(sp)
    3da0:	02f51863          	bne	a0,a5,3dd0 <fatfs_split_path+0x74>
    3da4:	fff00913          	li	s2,-1
    3da8:	02c12083          	lw	ra,44(sp)
    3dac:	02812403          	lw	s0,40(sp)
    3db0:	02412483          	lw	s1,36(sp)
    3db4:	01c12983          	lw	s3,28(sp)
    3db8:	01812a03          	lw	s4,24(sp)
    3dbc:	01412a83          	lw	s5,20(sp)
    3dc0:	00090513          	mv	a0,s2
    3dc4:	02012903          	lw	s2,32(sp)
    3dc8:	03010113          	addi	sp,sp,48
    3dcc:	00008067          	ret
    3dd0:	00050593          	mv	a1,a0
    3dd4:	00050413          	mv	s0,a0
    3dd8:	000a8613          	mv	a2,s5
    3ddc:	00098513          	mv	a0,s3
    3de0:	00000097          	auipc	ra,0x0
    3de4:	e88080e7          	jalr	-376(ra) # 3c68 <fatfs_get_substring>
    3de8:	00050913          	mv	s2,a0
    3dec:	fa051ce3          	bnez	a0,3da4 <fatfs_split_path+0x48>
    3df0:	00041663          	bnez	s0,3dfc <fatfs_split_path+0xa0>
    3df4:	00048023          	sb	zero,0(s1)
    3df8:	fb1ff06f          	j	3da8 <fatfs_split_path+0x4c>
    3dfc:	00098513          	mv	a0,s3
    3e00:	fffff097          	auipc	ra,0xfffff
    3e04:	958080e7          	jalr	-1704(ra) # 2758 <strlen>
    3e08:	00050413          	mv	s0,a0
    3e0c:	000a8513          	mv	a0,s5
    3e10:	fffff097          	auipc	ra,0xfffff
    3e14:	948080e7          	jalr	-1720(ra) # 2758 <strlen>
    3e18:	40a40433          	sub	s0,s0,a0
    3e1c:	008a5463          	bge	s4,s0,3e24 <fatfs_split_path+0xc8>
    3e20:	000a0413          	mv	s0,s4
    3e24:	00048513          	mv	a0,s1
    3e28:	00040613          	mv	a2,s0
    3e2c:	00098593          	mv	a1,s3
    3e30:	008484b3          	add	s1,s1,s0
    3e34:	fffff097          	auipc	ra,0xfffff
    3e38:	900080e7          	jalr	-1792(ra) # 2734 <memcpy>
    3e3c:	fe048fa3          	sb	zero,-1(s1)
    3e40:	f69ff06f          	j	3da8 <fatfs_split_path+0x4c>

00003e44 <fatfs_compare_names>:
    3e44:	fd010113          	addi	sp,sp,-48
    3e48:	02112623          	sw	ra,44(sp)
    3e4c:	02812423          	sw	s0,40(sp)
    3e50:	02912223          	sw	s1,36(sp)
    3e54:	03212023          	sw	s2,32(sp)
    3e58:	01312e23          	sw	s3,28(sp)
    3e5c:	00058913          	mv	s2,a1
    3e60:	01412c23          	sw	s4,24(sp)
    3e64:	01512a23          	sw	s5,20(sp)
    3e68:	01612823          	sw	s6,16(sp)
    3e6c:	00050a13          	mv	s4,a0
    3e70:	fffff097          	auipc	ra,0xfffff
    3e74:	0f0080e7          	jalr	240(ra) # 2f60 <FileString_GetExtension>
    3e78:	00050493          	mv	s1,a0
    3e7c:	00090513          	mv	a0,s2
    3e80:	fffff097          	auipc	ra,0xfffff
    3e84:	0e0080e7          	jalr	224(ra) # 2f60 <FileString_GetExtension>
    3e88:	fff00793          	li	a5,-1
    3e8c:	00050413          	mv	s0,a0
    3e90:	00000993          	li	s3,0
    3e94:	08f49a63          	bne	s1,a5,3f28 <fatfs_compare_names+0xe4>
    3e98:	0c951e63          	bne	a0,s1,3f74 <fatfs_compare_names+0x130>
    3e9c:	000a0513          	mv	a0,s4
    3ea0:	fffff097          	auipc	ra,0xfffff
    3ea4:	8b8080e7          	jalr	-1864(ra) # 2758 <strlen>
    3ea8:	00050493          	mv	s1,a0
    3eac:	00090513          	mv	a0,s2
    3eb0:	fffff097          	auipc	ra,0xfffff
    3eb4:	8a8080e7          	jalr	-1880(ra) # 2758 <strlen>
    3eb8:	00050413          	mv	s0,a0
    3ebc:	fff48793          	addi	a5,s1,-1
    3ec0:	00fa07b3          	add	a5,s4,a5
    3ec4:	40978733          	sub	a4,a5,s1
    3ec8:	02000613          	li	a2,32
    3ecc:	00078693          	mv	a3,a5
    3ed0:	00e78863          	beq	a5,a4,3ee0 <fatfs_compare_names+0x9c>
    3ed4:	0007c583          	lbu	a1,0(a5)
    3ed8:	fff78793          	addi	a5,a5,-1
    3edc:	0cc58263          	beq	a1,a2,3fa0 <fatfs_compare_names+0x15c>
    3ee0:	fff40793          	addi	a5,s0,-1
    3ee4:	00f907b3          	add	a5,s2,a5
    3ee8:	40878733          	sub	a4,a5,s0
    3eec:	02000613          	li	a2,32
    3ef0:	00078693          	mv	a3,a5
    3ef4:	00e78863          	beq	a5,a4,3f04 <fatfs_compare_names+0xc0>
    3ef8:	0007c583          	lbu	a1,0(a5)
    3efc:	fff78793          	addi	a5,a5,-1
    3f00:	0ac58463          	beq	a1,a2,3fa8 <fatfs_compare_names+0x164>
    3f04:	00000993          	li	s3,0
    3f08:	06941663          	bne	s0,s1,3f74 <fatfs_compare_names+0x130>
    3f0c:	00040613          	mv	a2,s0
    3f10:	00090593          	mv	a1,s2
    3f14:	000a0513          	mv	a0,s4
    3f18:	fffff097          	auipc	ra,0xfffff
    3f1c:	fd8080e7          	jalr	-40(ra) # 2ef0 <FileString_StrCmpNoCase>
    3f20:	00153993          	seqz	s3,a0
    3f24:	0500006f          	j	3f74 <fatfs_compare_names+0x130>
    3f28:	04f50663          	beq	a0,a5,3f74 <fatfs_compare_names+0x130>
    3f2c:	00148a93          	addi	s5,s1,1
    3f30:	015a0ab3          	add	s5,s4,s5
    3f34:	00150b13          	addi	s6,a0,1
    3f38:	000a8513          	mv	a0,s5
    3f3c:	fffff097          	auipc	ra,0xfffff
    3f40:	81c080e7          	jalr	-2020(ra) # 2758 <strlen>
    3f44:	01690b33          	add	s6,s2,s6
    3f48:	00a12623          	sw	a0,12(sp)
    3f4c:	000b0513          	mv	a0,s6
    3f50:	fffff097          	auipc	ra,0xfffff
    3f54:	808080e7          	jalr	-2040(ra) # 2758 <strlen>
    3f58:	00c12603          	lw	a2,12(sp)
    3f5c:	00a61c63          	bne	a2,a0,3f74 <fatfs_compare_names+0x130>
    3f60:	000b0593          	mv	a1,s6
    3f64:	000a8513          	mv	a0,s5
    3f68:	fffff097          	auipc	ra,0xfffff
    3f6c:	f88080e7          	jalr	-120(ra) # 2ef0 <FileString_StrCmpNoCase>
    3f70:	f40506e3          	beqz	a0,3ebc <fatfs_compare_names+0x78>
    3f74:	02c12083          	lw	ra,44(sp)
    3f78:	02812403          	lw	s0,40(sp)
    3f7c:	02412483          	lw	s1,36(sp)
    3f80:	02012903          	lw	s2,32(sp)
    3f84:	01812a03          	lw	s4,24(sp)
    3f88:	01412a83          	lw	s5,20(sp)
    3f8c:	01012b03          	lw	s6,16(sp)
    3f90:	00098513          	mv	a0,s3
    3f94:	01c12983          	lw	s3,28(sp)
    3f98:	03010113          	addi	sp,sp,48
    3f9c:	00008067          	ret
    3fa0:	414684b3          	sub	s1,a3,s4
    3fa4:	f29ff06f          	j	3ecc <fatfs_compare_names+0x88>
    3fa8:	41268433          	sub	s0,a3,s2
    3fac:	f45ff06f          	j	3ef0 <fatfs_compare_names+0xac>

00003fb0 <_check_file_open>:
    3fb0:	fe010113          	addi	sp,sp,-32
    3fb4:	000067b7          	lui	a5,0x6
    3fb8:	00812c23          	sw	s0,24(sp)
    3fbc:	7e47a403          	lw	s0,2020(a5) # 67e4 <_open_file_list>
    3fc0:	00912a23          	sw	s1,20(sp)
    3fc4:	01212823          	sw	s2,16(sp)
    3fc8:	01312623          	sw	s3,12(sp)
    3fcc:	00112e23          	sw	ra,28(sp)
    3fd0:	00050493          	mv	s1,a0
    3fd4:	01450913          	addi	s2,a0,20
    3fd8:	11850993          	addi	s3,a0,280
    3fdc:	02041263          	bnez	s0,4000 <_check_file_open+0x50>
    3fe0:	00000513          	li	a0,0
    3fe4:	01c12083          	lw	ra,28(sp)
    3fe8:	01812403          	lw	s0,24(sp)
    3fec:	01412483          	lw	s1,20(sp)
    3ff0:	01012903          	lw	s2,16(sp)
    3ff4:	00c12983          	lw	s3,12(sp)
    3ff8:	02010113          	addi	sp,sp,32
    3ffc:	00008067          	ret
    4000:	bc440793          	addi	a5,s0,-1084
    4004:	02f48663          	beq	s1,a5,4030 <_check_file_open+0x80>
    4008:	00090593          	mv	a1,s2
    400c:	bd840513          	addi	a0,s0,-1064
    4010:	00000097          	auipc	ra,0x0
    4014:	e34080e7          	jalr	-460(ra) # 3e44 <fatfs_compare_names>
    4018:	00050c63          	beqz	a0,4030 <_check_file_open+0x80>
    401c:	00098593          	mv	a1,s3
    4020:	cdc40513          	addi	a0,s0,-804
    4024:	00000097          	auipc	ra,0x0
    4028:	e20080e7          	jalr	-480(ra) # 3e44 <fatfs_compare_names>
    402c:	00051663          	bnez	a0,4038 <_check_file_open+0x88>
    4030:	00442403          	lw	s0,4(s0)
    4034:	fa9ff06f          	j	3fdc <_check_file_open+0x2c>
    4038:	00100513          	li	a0,1
    403c:	fa9ff06f          	j	3fe4 <_check_file_open+0x34>

00004040 <fatfs_get_sfn_display_name>:
    4040:	00000713          	li	a4,0
    4044:	00c00613          	li	a2,12
    4048:	02000813          	li	a6,32
    404c:	01900893          	li	a7,25
    4050:	0005c783          	lbu	a5,0(a1)
    4054:	00078463          	beqz	a5,405c <fatfs_get_sfn_display_name+0x1c>
    4058:	00c71863          	bne	a4,a2,4068 <fatfs_get_sfn_display_name+0x28>
    405c:	00050023          	sb	zero,0(a0)
    4060:	00100513          	li	a0,1
    4064:	00008067          	ret
    4068:	00158593          	addi	a1,a1,1
    406c:	ff0782e3          	beq	a5,a6,4050 <fatfs_get_sfn_display_name+0x10>
    4070:	fbf78693          	addi	a3,a5,-65
    4074:	0ff6f693          	zext.b	a3,a3
    4078:	00d8e663          	bltu	a7,a3,4084 <fatfs_get_sfn_display_name+0x44>
    407c:	02078793          	addi	a5,a5,32
    4080:	0ff7f793          	zext.b	a5,a5
    4084:	00f50023          	sb	a5,0(a0)
    4088:	00170713          	addi	a4,a4,1
    408c:	00150513          	addi	a0,a0,1
    4090:	fc1ff06f          	j	4050 <fatfs_get_sfn_display_name+0x10>

00004094 <fatfs_fat_init>:
    4094:	ff010113          	addi	sp,sp,-16
    4098:	00812423          	sw	s0,8(sp)
    409c:	00912223          	sw	s1,4(sp)
    40a0:	00112623          	sw	ra,12(sp)
    40a4:	fff00793          	li	a5,-1
    40a8:	25850493          	addi	s1,a0,600
    40ac:	00050413          	mv	s0,a0
    40b0:	44f52c23          	sw	a5,1112(a0)
    40b4:	24052a23          	sw	zero,596(a0)
    40b8:	44052e23          	sw	zero,1116(a0)
    40bc:	20000613          	li	a2,512
    40c0:	00048513          	mv	a0,s1
    40c4:	00000593          	li	a1,0
    40c8:	ffffe097          	auipc	ra,0xffffe
    40cc:	650080e7          	jalr	1616(ra) # 2718 <memset>
    40d0:	25442783          	lw	a5,596(s0)
    40d4:	00c12083          	lw	ra,12(sp)
    40d8:	24942a23          	sw	s1,596(s0)
    40dc:	46042023          	sw	zero,1120(s0)
    40e0:	46f42223          	sw	a5,1124(s0)
    40e4:	00812403          	lw	s0,8(sp)
    40e8:	00412483          	lw	s1,4(sp)
    40ec:	01010113          	addi	sp,sp,16
    40f0:	00008067          	ret

000040f4 <fatfs_init>:
    40f4:	fd010113          	addi	sp,sp,-48
    40f8:	02812423          	sw	s0,40(sp)
    40fc:	02112623          	sw	ra,44(sp)
    4100:	02912223          	sw	s1,36(sp)
    4104:	03212023          	sw	s2,32(sp)
    4108:	01312e23          	sw	s3,28(sp)
    410c:	fff00793          	li	a5,-1
    4110:	24f52223          	sw	a5,580(a0)
    4114:	24052423          	sw	zero,584(a0)
    4118:	02052223          	sw	zero,36(a0)
    411c:	00050413          	mv	s0,a0
    4120:	00000097          	auipc	ra,0x0
    4124:	f74080e7          	jalr	-140(ra) # 4094 <fatfs_fat_init>
    4128:	03442783          	lw	a5,52(s0)
    412c:	02079263          	bnez	a5,4150 <fatfs_init+0x5c>
    4130:	fff00513          	li	a0,-1
    4134:	02c12083          	lw	ra,44(sp)
    4138:	02812403          	lw	s0,40(sp)
    413c:	02412483          	lw	s1,36(sp)
    4140:	02012903          	lw	s2,32(sp)
    4144:	01c12983          	lw	s3,28(sp)
    4148:	03010113          	addi	sp,sp,48
    414c:	00008067          	ret
    4150:	04440593          	addi	a1,s0,68
    4154:	00100613          	li	a2,1
    4158:	00000513          	li	a0,0
    415c:	00b12623          	sw	a1,12(sp)
    4160:	000780e7          	jalr	a5
    4164:	fc0506e3          	beqz	a0,4130 <fatfs_init+0x3c>
    4168:	24042703          	lw	a4,576(s0)
    416c:	ffff07b7          	lui	a5,0xffff0
    4170:	00c12583          	lw	a1,12(sp)
    4174:	00e7f7b3          	and	a5,a5,a4
    4178:	aa550737          	lui	a4,0xaa550
    417c:	00e78663          	beq	a5,a4,4188 <fatfs_init+0x94>
    4180:	ffd00513          	li	a0,-3
    4184:	fb1ff06f          	j	4134 <fatfs_init+0x40>
    4188:	24245703          	lhu	a4,578(s0)
    418c:	0000b7b7          	lui	a5,0xb
    4190:	a5578793          	addi	a5,a5,-1451 # aa55 <_files+0x35f9>
    4194:	ffc00513          	li	a0,-4
    4198:	f8f71ee3          	bne	a4,a5,4134 <fatfs_init+0x40>
    419c:	20644783          	lbu	a5,518(s0)
    41a0:	00600713          	li	a4,6
    41a4:	02f76463          	bltu	a4,a5,41cc <fatfs_init+0xd8>
    41a8:	00400713          	li	a4,4
    41ac:	00f76663          	bltu	a4,a5,41b8 <fatfs_init+0xc4>
    41b0:	00000513          	li	a0,0
    41b4:	02078663          	beqz	a5,41e0 <fatfs_init+0xec>
    41b8:	20c45503          	lhu	a0,524(s0)
    41bc:	20a45783          	lhu	a5,522(s0)
    41c0:	01051513          	slli	a0,a0,0x10
    41c4:	00f56533          	or	a0,a0,a5
    41c8:	0180006f          	j	41e0 <fatfs_init+0xec>
    41cc:	00c00713          	li	a4,12
    41d0:	12f76a63          	bltu	a4,a5,4304 <fatfs_init+0x210>
    41d4:	00a00713          	li	a4,10
    41d8:	00000513          	li	a0,0
    41dc:	fcf76ee3          	bltu	a4,a5,41b8 <fatfs_init+0xc4>
    41e0:	03442783          	lw	a5,52(s0)
    41e4:	00a42e23          	sw	a0,28(s0)
    41e8:	00100613          	li	a2,1
    41ec:	000780e7          	jalr	a5
    41f0:	f40500e3          	beqz	a0,4130 <fatfs_init+0x3c>
    41f4:	05044783          	lbu	a5,80(s0)
    41f8:	04f44703          	lbu	a4,79(s0)
    41fc:	ffe00513          	li	a0,-2
    4200:	00879793          	slli	a5,a5,0x8
    4204:	00e7e7b3          	or	a5,a5,a4
    4208:	20000713          	li	a4,512
    420c:	f2e794e3          	bne	a5,a4,4134 <fatfs_init+0x40>
    4210:	05644483          	lbu	s1,86(s0)
    4214:	05544783          	lbu	a5,85(s0)
    4218:	05144983          	lbu	s3,81(s0)
    421c:	00849493          	slli	s1,s1,0x8
    4220:	05a45583          	lhu	a1,90(s0)
    4224:	00f4e4b3          	or	s1,s1,a5
    4228:	01340023          	sb	s3,0(s0)
    422c:	02941423          	sh	s1,40(s0)
    4230:	05245903          	lhu	s2,82(s0)
    4234:	05444503          	lbu	a0,84(s0)
    4238:	00059463          	bnez	a1,4240 <fatfs_init+0x14c>
    423c:	06842583          	lw	a1,104(s0)
    4240:	07042783          	lw	a5,112(s0)
    4244:	02b42023          	sw	a1,32(s0)
    4248:	00549493          	slli	s1,s1,0x5
    424c:	00f42423          	sw	a5,8(s0)
    4250:	07445783          	lhu	a5,116(s0)
    4254:	1ff48493          	addi	s1,s1,511
    4258:	4094d493          	srai	s1,s1,0x9
    425c:	00f41c23          	sh	a5,24(s0)
    4260:	fffff097          	auipc	ra,0xfffff
    4264:	bfc080e7          	jalr	-1028(ra) # 2e5c <__mulsi3>
    4268:	00a907b3          	add	a5,s2,a0
    426c:	00f42623          	sw	a5,12(s0)
    4270:	01c42783          	lw	a5,28(s0)
    4274:	24245703          	lhu	a4,578(s0)
    4278:	00942823          	sw	s1,16(s0)
    427c:	00f907b3          	add	a5,s2,a5
    4280:	00f42a23          	sw	a5,20(s0)
    4284:	00f507b3          	add	a5,a0,a5
    4288:	00f42223          	sw	a5,4(s0)
    428c:	0000b7b7          	lui	a5,0xb
    4290:	a5578793          	addi	a5,a5,-1451 # aa55 <_files+0x35f9>
    4294:	eef716e3          	bne	a4,a5,4180 <fatfs_init+0x8c>
    4298:	05844783          	lbu	a5,88(s0)
    429c:	05744703          	lbu	a4,87(s0)
    42a0:	00879793          	slli	a5,a5,0x8
    42a4:	00e7e7b3          	or	a5,a5,a4
    42a8:	00079463          	bnez	a5,42b0 <fatfs_init+0x1bc>
    42ac:	06442783          	lw	a5,100(s0)
    42b0:	00990933          	add	s2,s2,s1
    42b4:	00a90533          	add	a0,s2,a0
    42b8:	40a787b3          	sub	a5,a5,a0
    42bc:	ffb00513          	li	a0,-5
    42c0:	e6098ae3          	beqz	s3,4134 <fatfs_init+0x40>
    42c4:	00078513          	mv	a0,a5
    42c8:	00098593          	mv	a1,s3
    42cc:	ffffe097          	auipc	ra,0xffffe
    42d0:	3a0080e7          	jalr	928(ra) # 266c <__udivsi3>
    42d4:	00001737          	lui	a4,0x1
    42d8:	00050793          	mv	a5,a0
    42dc:	ff470713          	addi	a4,a4,-12 # ff4 <play_file+0x680>
    42e0:	ffb00513          	li	a0,-5
    42e4:	e4f778e3          	bgeu	a4,a5,4134 <fatfs_init+0x40>
    42e8:	00010737          	lui	a4,0x10
    42ec:	ff470713          	addi	a4,a4,-12 # fff4 <_files+0x8b98>
    42f0:	02f76663          	bltu	a4,a5,431c <fatfs_init+0x228>
    42f4:	00042423          	sw	zero,8(s0)
    42f8:	02042823          	sw	zero,48(s0)
    42fc:	00000513          	li	a0,0
    4300:	e35ff06f          	j	4134 <fatfs_init+0x40>
    4304:	ff278793          	addi	a5,a5,-14
    4308:	0ff7f793          	zext.b	a5,a5
    430c:	00100713          	li	a4,1
    4310:	00000513          	li	a0,0
    4314:	eaf772e3          	bgeu	a4,a5,41b8 <fatfs_init+0xc4>
    4318:	ec9ff06f          	j	41e0 <fatfs_init+0xec>
    431c:	00100793          	li	a5,1
    4320:	02f42823          	sw	a5,48(s0)
    4324:	fd9ff06f          	j	42fc <fatfs_init+0x208>

00004328 <fl_attach_media>:
    4328:	000067b7          	lui	a5,0x6
    432c:	7f07a783          	lw	a5,2032(a5) # 67f0 <_filelib_init>
    4330:	ff010113          	addi	sp,sp,-16
    4334:	00812423          	sw	s0,8(sp)
    4338:	00912223          	sw	s1,4(sp)
    433c:	00112623          	sw	ra,12(sp)
    4340:	00050493          	mv	s1,a0
    4344:	00058413          	mv	s0,a1
    4348:	00079663          	bnez	a5,4354 <fl_attach_media+0x2c>
    434c:	fffff097          	auipc	ra,0xfffff
    4350:	fa8080e7          	jalr	-88(ra) # 32f4 <fl_init>
    4354:	00007537          	lui	a0,0x7
    4358:	ff450793          	addi	a5,a0,-12 # 6ff4 <_fs>
    435c:	ff450513          	addi	a0,a0,-12
    4360:	0287ac23          	sw	s0,56(a5)
    4364:	0297aa23          	sw	s1,52(a5)
    4368:	00000097          	auipc	ra,0x0
    436c:	d8c080e7          	jalr	-628(ra) # 40f4 <fatfs_init>
    4370:	00050413          	mv	s0,a0
    4374:	02050863          	beqz	a0,43a4 <fl_attach_media+0x7c>
    4378:	00050593          	mv	a1,a0
    437c:	00006537          	lui	a0,0x6
    4380:	54c50513          	addi	a0,a0,1356 # 654c <LEDS+0x170>
    4384:	fffff097          	auipc	ra,0xfffff
    4388:	9a8080e7          	jalr	-1624(ra) # 2d2c <printf>
    438c:	00c12083          	lw	ra,12(sp)
    4390:	00040513          	mv	a0,s0
    4394:	00812403          	lw	s0,8(sp)
    4398:	00412483          	lw	s1,4(sp)
    439c:	01010113          	addi	sp,sp,16
    43a0:	00008067          	ret
    43a4:	000067b7          	lui	a5,0x6
    43a8:	00100713          	li	a4,1
    43ac:	7ee7a623          	sw	a4,2028(a5) # 67ec <_filelib_valid>
    43b0:	fddff06f          	j	438c <fl_attach_media+0x64>

000043b4 <fatfs_fat_purge>:
    43b4:	ff010113          	addi	sp,sp,-16
    43b8:	00812423          	sw	s0,8(sp)
    43bc:	25452403          	lw	s0,596(a0)
    43c0:	00912223          	sw	s1,4(sp)
    43c4:	00112623          	sw	ra,12(sp)
    43c8:	00050493          	mv	s1,a0
    43cc:	00041663          	bnez	s0,43d8 <fatfs_fat_purge+0x24>
    43d0:	00100513          	li	a0,1
    43d4:	0280006f          	j	43fc <fatfs_fat_purge+0x48>
    43d8:	20442783          	lw	a5,516(s0)
    43dc:	00079663          	bnez	a5,43e8 <fatfs_fat_purge+0x34>
    43e0:	20c42403          	lw	s0,524(s0)
    43e4:	fe9ff06f          	j	43cc <fatfs_fat_purge+0x18>
    43e8:	00040593          	mv	a1,s0
    43ec:	00048513          	mv	a0,s1
    43f0:	fffff097          	auipc	ra,0xfffff
    43f4:	b9c080e7          	jalr	-1124(ra) # 2f8c <fatfs_fat_writeback>
    43f8:	fe0514e3          	bnez	a0,43e0 <fatfs_fat_purge+0x2c>
    43fc:	00c12083          	lw	ra,12(sp)
    4400:	00812403          	lw	s0,8(sp)
    4404:	00412483          	lw	s1,4(sp)
    4408:	01010113          	addi	sp,sp,16
    440c:	00008067          	ret

00004410 <fatfs_find_next_cluster>:
    4410:	ff010113          	addi	sp,sp,-16
    4414:	00812423          	sw	s0,8(sp)
    4418:	01212023          	sw	s2,0(sp)
    441c:	00112623          	sw	ra,12(sp)
    4420:	00912223          	sw	s1,4(sp)
    4424:	00050913          	mv	s2,a0
    4428:	00200413          	li	s0,2
    442c:	00058463          	beqz	a1,4434 <fatfs_find_next_cluster+0x24>
    4430:	00058413          	mv	s0,a1
    4434:	03092783          	lw	a5,48(s2)
    4438:	00745493          	srli	s1,s0,0x7
    443c:	00079463          	bnez	a5,4444 <fatfs_find_next_cluster+0x34>
    4440:	00845493          	srli	s1,s0,0x8
    4444:	01492583          	lw	a1,20(s2)
    4448:	00090513          	mv	a0,s2
    444c:	00b485b3          	add	a1,s1,a1
    4450:	fffff097          	auipc	ra,0xfffff
    4454:	bbc080e7          	jalr	-1092(ra) # 300c <fatfs_fat_read_sector>
    4458:	00050793          	mv	a5,a0
    445c:	fff00513          	li	a0,-1
    4460:	04078a63          	beqz	a5,44b4 <fatfs_find_next_cluster+0xa4>
    4464:	03092703          	lw	a4,48(s2)
    4468:	2087a783          	lw	a5,520(a5)
    446c:	06071063          	bnez	a4,44cc <fatfs_find_next_cluster+0xbc>
    4470:	00849493          	slli	s1,s1,0x8
    4474:	40940433          	sub	s0,s0,s1
    4478:	00010737          	lui	a4,0x10
    447c:	00141413          	slli	s0,s0,0x1
    4480:	ffe70713          	addi	a4,a4,-2 # fffe <_files+0x8ba2>
    4484:	00e47433          	and	s0,s0,a4
    4488:	008787b3          	add	a5,a5,s0
    448c:	0017c503          	lbu	a0,1(a5)
    4490:	0007c783          	lbu	a5,0(a5)
    4494:	00851513          	slli	a0,a0,0x8
    4498:	00f50533          	add	a0,a0,a5
    449c:	ffff07b7          	lui	a5,0xffff0
    44a0:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    44a4:	00f507b3          	add	a5,a0,a5
    44a8:	00700713          	li	a4,7
    44ac:	00f76463          	bltu	a4,a5,44b4 <fatfs_find_next_cluster+0xa4>
    44b0:	fff00513          	li	a0,-1
    44b4:	00c12083          	lw	ra,12(sp)
    44b8:	00812403          	lw	s0,8(sp)
    44bc:	00412483          	lw	s1,4(sp)
    44c0:	00012903          	lw	s2,0(sp)
    44c4:	01010113          	addi	sp,sp,16
    44c8:	00008067          	ret
    44cc:	00749493          	slli	s1,s1,0x7
    44d0:	40940433          	sub	s0,s0,s1
    44d4:	00010737          	lui	a4,0x10
    44d8:	ffc70713          	addi	a4,a4,-4 # fffc <_files+0x8ba0>
    44dc:	00241413          	slli	s0,s0,0x2
    44e0:	00e47433          	and	s0,s0,a4
    44e4:	008787b3          	add	a5,a5,s0
    44e8:	0037c503          	lbu	a0,3(a5)
    44ec:	0027c703          	lbu	a4,2(a5)
    44f0:	01851513          	slli	a0,a0,0x18
    44f4:	01071713          	slli	a4,a4,0x10
    44f8:	00e50533          	add	a0,a0,a4
    44fc:	0007c703          	lbu	a4,0(a5)
    4500:	0017c783          	lbu	a5,1(a5)
    4504:	00e50533          	add	a0,a0,a4
    4508:	00879793          	slli	a5,a5,0x8
    450c:	00f50533          	add	a0,a0,a5
    4510:	00451513          	slli	a0,a0,0x4
    4514:	00455513          	srli	a0,a0,0x4
    4518:	f00007b7          	lui	a5,0xf0000
    451c:	f85ff06f          	j	44a0 <fatfs_find_next_cluster+0x90>

00004520 <fatfs_sector_reader>:
    4520:	03052783          	lw	a5,48(a0)
    4524:	fd010113          	addi	sp,sp,-48
    4528:	02812423          	sw	s0,40(sp)
    452c:	03212023          	sw	s2,32(sp)
    4530:	01312e23          	sw	s3,28(sp)
    4534:	02112623          	sw	ra,44(sp)
    4538:	02912223          	sw	s1,36(sp)
    453c:	01412c23          	sw	s4,24(sp)
    4540:	01512a23          	sw	s5,20(sp)
    4544:	00f5e7b3          	or	a5,a1,a5
    4548:	00050413          	mv	s0,a0
    454c:	00060913          	mv	s2,a2
    4550:	00068993          	mv	s3,a3
    4554:	06079c63          	bnez	a5,45cc <fatfs_sector_reader+0xac>
    4558:	01052783          	lw	a5,16(a0)
    455c:	02f66663          	bltu	a2,a5,4588 <fatfs_sector_reader+0x68>
    4560:	00000513          	li	a0,0
    4564:	02c12083          	lw	ra,44(sp)
    4568:	02812403          	lw	s0,40(sp)
    456c:	02412483          	lw	s1,36(sp)
    4570:	02012903          	lw	s2,32(sp)
    4574:	01c12983          	lw	s3,28(sp)
    4578:	01812a03          	lw	s4,24(sp)
    457c:	01412a83          	lw	s5,20(sp)
    4580:	03010113          	addi	sp,sp,48
    4584:	00008067          	ret
    4588:	01c52503          	lw	a0,28(a0)
    458c:	00c42783          	lw	a5,12(s0)
    4590:	00f50533          	add	a0,a0,a5
    4594:	01250533          	add	a0,a0,s2
    4598:	0a098263          	beqz	s3,463c <fatfs_sector_reader+0x11c>
    459c:	03442783          	lw	a5,52(s0)
    45a0:	00100613          	li	a2,1
    45a4:	00098593          	mv	a1,s3
    45a8:	02812403          	lw	s0,40(sp)
    45ac:	02c12083          	lw	ra,44(sp)
    45b0:	02412483          	lw	s1,36(sp)
    45b4:	02012903          	lw	s2,32(sp)
    45b8:	01c12983          	lw	s3,28(sp)
    45bc:	01812a03          	lw	s4,24(sp)
    45c0:	01412a83          	lw	s5,20(sp)
    45c4:	03010113          	addi	sp,sp,48
    45c8:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    45cc:	00058493          	mv	s1,a1
    45d0:	00054583          	lbu	a1,0(a0)
    45d4:	00060513          	mv	a0,a2
    45d8:	00000a93          	li	s5,0
    45dc:	00b12623          	sw	a1,12(sp)
    45e0:	ffffe097          	auipc	ra,0xffffe
    45e4:	08c080e7          	jalr	140(ra) # 266c <__udivsi3>
    45e8:	00c12583          	lw	a1,12(sp)
    45ec:	00050a13          	mv	s4,a0
    45f0:	00090513          	mv	a0,s2
    45f4:	ffffe097          	auipc	ra,0xffffe
    45f8:	0c0080e7          	jalr	192(ra) # 26b4 <__umodsi3>
    45fc:	00050913          	mv	s2,a0
    4600:	034a9063          	bne	s5,s4,4620 <fatfs_sector_reader+0x100>
    4604:	fff00793          	li	a5,-1
    4608:	f4f48ce3          	beq	s1,a5,4560 <fatfs_sector_reader+0x40>
    460c:	00048593          	mv	a1,s1
    4610:	00040513          	mv	a0,s0
    4614:	fffff097          	auipc	ra,0xfffff
    4618:	ba4080e7          	jalr	-1116(ra) # 31b8 <fatfs_lba_of_cluster>
    461c:	f79ff06f          	j	4594 <fatfs_sector_reader+0x74>
    4620:	00048593          	mv	a1,s1
    4624:	00040513          	mv	a0,s0
    4628:	00000097          	auipc	ra,0x0
    462c:	de8080e7          	jalr	-536(ra) # 4410 <fatfs_find_next_cluster>
    4630:	00050493          	mv	s1,a0
    4634:	001a8a93          	addi	s5,s5,1
    4638:	fc9ff06f          	j	4600 <fatfs_sector_reader+0xe0>
    463c:	24442783          	lw	a5,580(s0)
    4640:	00a78c63          	beq	a5,a0,4658 <fatfs_sector_reader+0x138>
    4644:	03442783          	lw	a5,52(s0)
    4648:	24a42223          	sw	a0,580(s0)
    464c:	00100613          	li	a2,1
    4650:	04440593          	addi	a1,s0,68
    4654:	f55ff06f          	j	45a8 <fatfs_sector_reader+0x88>
    4658:	00100513          	li	a0,1
    465c:	f09ff06f          	j	4564 <fatfs_sector_reader+0x44>

00004660 <fatfs_get_file_entry>:
    4660:	eb010113          	addi	sp,sp,-336
    4664:	14812423          	sw	s0,328(sp)
    4668:	01810413          	addi	s0,sp,24
    466c:	14912223          	sw	s1,324(sp)
    4670:	15212023          	sw	s2,320(sp)
    4674:	13312e23          	sw	s3,316(sp)
    4678:	13412c23          	sw	s4,312(sp)
    467c:	13512a23          	sw	s5,308(sp)
    4680:	13612823          	sw	s6,304(sp)
    4684:	14112623          	sw	ra,332(sp)
    4688:	13712623          	sw	s7,300(sp)
    468c:	13812423          	sw	s8,296(sp)
    4690:	13912223          	sw	s9,292(sp)
    4694:	13a12023          	sw	s10,288(sp)
    4698:	00050493          	mv	s1,a0
    469c:	00058a93          	mv	s5,a1
    46a0:	00060913          	mv	s2,a2
    46a4:	00068993          	mv	s3,a3
    46a8:	10010ea3          	sb	zero,285(sp)
    46ac:	11c10a13          	addi	s4,sp,284
    46b0:	00040b13          	mv	s6,s0
    46b4:	00040513          	mv	a0,s0
    46b8:	00d00613          	li	a2,13
    46bc:	00000593          	li	a1,0
    46c0:	00d40413          	addi	s0,s0,13
    46c4:	ffffe097          	auipc	ra,0xffffe
    46c8:	054080e7          	jalr	84(ra) # 2718 <memset>
    46cc:	ff4414e3          	bne	s0,s4,46b4 <fatfs_get_file_entry+0x54>
    46d0:	00000a13          	li	s4,0
    46d4:	24448c13          	addi	s8,s1,580
    46d8:	00800c93          	li	s9,8
    46dc:	02000b93          	li	s7,32
    46e0:	02e00d13          	li	s10,46
    46e4:	00000693          	li	a3,0
    46e8:	000a0613          	mv	a2,s4
    46ec:	000a8593          	mv	a1,s5
    46f0:	00048513          	mv	a0,s1
    46f4:	00000097          	auipc	ra,0x0
    46f8:	e2c080e7          	jalr	-468(ra) # 4520 <fatfs_sector_reader>
    46fc:	16050463          	beqz	a0,4864 <fatfs_get_file_entry+0x204>
    4700:	04448413          	addi	s0,s1,68
    4704:	00040513          	mv	a0,s0
    4708:	fffff097          	auipc	ra,0xfffff
    470c:	f08080e7          	jalr	-248(ra) # 3610 <fatfs_entry_lfn_text>
    4710:	02050263          	beqz	a0,4734 <fatfs_get_file_entry+0xd4>
    4714:	00040593          	mv	a1,s0
    4718:	000b0513          	mv	a0,s6
    471c:	fffff097          	auipc	ra,0xfffff
    4720:	dec080e7          	jalr	-532(ra) # 3508 <fatfs_lfn_cache_entry>
    4724:	02040413          	addi	s0,s0,32
    4728:	fd841ee3          	bne	s0,s8,4704 <fatfs_get_file_entry+0xa4>
    472c:	001a0a13          	addi	s4,s4,1
    4730:	fb5ff06f          	j	46e4 <fatfs_get_file_entry+0x84>
    4734:	00040513          	mv	a0,s0
    4738:	fffff097          	auipc	ra,0xfffff
    473c:	eec080e7          	jalr	-276(ra) # 3624 <fatfs_entry_lfn_invalid>
    4740:	00050663          	beqz	a0,474c <fatfs_get_file_entry+0xec>
    4744:	10010ea3          	sb	zero,285(sp)
    4748:	fddff06f          	j	4724 <fatfs_get_file_entry+0xc4>
    474c:	00040593          	mv	a1,s0
    4750:	000b0513          	mv	a0,s6
    4754:	fffff097          	auipc	ra,0xfffff
    4758:	f08080e7          	jalr	-248(ra) # 365c <fatfs_entry_lfn_exists>
    475c:	06050863          	beqz	a0,47cc <fatfs_get_file_entry+0x16c>
    4760:	000b0513          	mv	a0,s6
    4764:	fffff097          	auipc	ra,0xfffff
    4768:	e70080e7          	jalr	-400(ra) # 35d4 <fatfs_lfn_cache_get>
    476c:	00090593          	mv	a1,s2
    4770:	fffff097          	auipc	ra,0xfffff
    4774:	6d4080e7          	jalr	1748(ra) # 3e44 <fatfs_compare_names>
    4778:	fc0506e3          	beqz	a0,4744 <fatfs_get_file_entry+0xe4>
    477c:	02000613          	li	a2,32
    4780:	00040593          	mv	a1,s0
    4784:	00098513          	mv	a0,s3
    4788:	ffffe097          	auipc	ra,0xffffe
    478c:	fac080e7          	jalr	-84(ra) # 2734 <memcpy>
    4790:	00100513          	li	a0,1
    4794:	14c12083          	lw	ra,332(sp)
    4798:	14812403          	lw	s0,328(sp)
    479c:	14412483          	lw	s1,324(sp)
    47a0:	14012903          	lw	s2,320(sp)
    47a4:	13c12983          	lw	s3,316(sp)
    47a8:	13812a03          	lw	s4,312(sp)
    47ac:	13412a83          	lw	s5,308(sp)
    47b0:	13012b03          	lw	s6,304(sp)
    47b4:	12c12b83          	lw	s7,300(sp)
    47b8:	12812c03          	lw	s8,296(sp)
    47bc:	12412c83          	lw	s9,292(sp)
    47c0:	12012d03          	lw	s10,288(sp)
    47c4:	15010113          	addi	sp,sp,336
    47c8:	00008067          	ret
    47cc:	00040513          	mv	a0,s0
    47d0:	fffff097          	auipc	ra,0xfffff
    47d4:	ed4080e7          	jalr	-300(ra) # 36a4 <fatfs_entry_sfn_only>
    47d8:	f40506e3          	beqz	a0,4724 <fatfs_get_file_entry+0xc4>
    47dc:	00d00613          	li	a2,13
    47e0:	00000593          	li	a1,0
    47e4:	00810513          	addi	a0,sp,8
    47e8:	ffffe097          	auipc	ra,0xffffe
    47ec:	f30080e7          	jalr	-208(ra) # 2718 <memset>
    47f0:	00000793          	li	a5,0
    47f4:	00f406b3          	add	a3,s0,a5
    47f8:	0006c683          	lbu	a3,0(a3)
    47fc:	00810713          	addi	a4,sp,8
    4800:	00f70733          	add	a4,a4,a5
    4804:	00d70023          	sb	a3,0(a4)
    4808:	00178793          	addi	a5,a5,1
    480c:	ff9794e3          	bne	a5,s9,47f4 <fatfs_get_file_entry+0x194>
    4810:	00844783          	lbu	a5,8(s0)
    4814:	00944683          	lbu	a3,9(s0)
    4818:	00100713          	li	a4,1
    481c:	00f108a3          	sb	a5,17(sp)
    4820:	00d10923          	sb	a3,18(sp)
    4824:	01769663          	bne	a3,s7,4830 <fatfs_get_file_entry+0x1d0>
    4828:	fe078793          	addi	a5,a5,-32
    482c:	00f03733          	snez	a4,a5
    4830:	00a44783          	lbu	a5,10(s0)
    4834:	00f109a3          	sb	a5,19(sp)
    4838:	01779663          	bne	a5,s7,4844 <fatfs_get_file_entry+0x1e4>
    483c:	02000793          	li	a5,32
    4840:	00070a63          	beqz	a4,4854 <fatfs_get_file_entry+0x1f4>
    4844:	00814703          	lbu	a4,8(sp)
    4848:	02e00793          	li	a5,46
    484c:	01a71463          	bne	a4,s10,4854 <fatfs_get_file_entry+0x1f4>
    4850:	02000793          	li	a5,32
    4854:	00f10823          	sb	a5,16(sp)
    4858:	00090593          	mv	a1,s2
    485c:	00810513          	addi	a0,sp,8
    4860:	f11ff06f          	j	4770 <fatfs_get_file_entry+0x110>
    4864:	00000513          	li	a0,0
    4868:	f2dff06f          	j	4794 <fatfs_get_file_entry+0x134>

0000486c <_open_directory>:
    486c:	eb010113          	addi	sp,sp,-336
    4870:	13512a23          	sw	s5,308(sp)
    4874:	00007ab7          	lui	s5,0x7
    4878:	ff4a8793          	addi	a5,s5,-12 # 6ff4 <_fs>
    487c:	14812423          	sw	s0,328(sp)
    4880:	14912223          	sw	s1,324(sp)
    4884:	15212023          	sw	s2,320(sp)
    4888:	13312e23          	sw	s3,316(sp)
    488c:	13412c23          	sw	s4,312(sp)
    4890:	13612823          	sw	s6,304(sp)
    4894:	0087a403          	lw	s0,8(a5)
    4898:	14112623          	sw	ra,332(sp)
    489c:	00050a13          	mv	s4,a0
    48a0:	00058913          	mv	s2,a1
    48a4:	fffff097          	auipc	ra,0xfffff
    48a8:	350080e7          	jalr	848(ra) # 3bf4 <fatfs_total_path_levels>
    48ac:	00050993          	mv	s3,a0
    48b0:	00000493          	li	s1,0
    48b4:	fff00b13          	li	s6,-1
    48b8:	0099d863          	bge	s3,s1,48c8 <_open_directory+0x5c>
    48bc:	00892023          	sw	s0,0(s2)
    48c0:	00100513          	li	a0,1
    48c4:	0240006f          	j	48e8 <_open_directory+0x7c>
    48c8:	10400693          	li	a3,260
    48cc:	02c10613          	addi	a2,sp,44
    48d0:	00048593          	mv	a1,s1
    48d4:	000a0513          	mv	a0,s4
    48d8:	fffff097          	auipc	ra,0xfffff
    48dc:	390080e7          	jalr	912(ra) # 3c68 <fatfs_get_substring>
    48e0:	03651863          	bne	a0,s6,4910 <_open_directory+0xa4>
    48e4:	00000513          	li	a0,0
    48e8:	14c12083          	lw	ra,332(sp)
    48ec:	14812403          	lw	s0,328(sp)
    48f0:	14412483          	lw	s1,324(sp)
    48f4:	14012903          	lw	s2,320(sp)
    48f8:	13c12983          	lw	s3,316(sp)
    48fc:	13812a03          	lw	s4,312(sp)
    4900:	13412a83          	lw	s5,308(sp)
    4904:	13012b03          	lw	s6,304(sp)
    4908:	15010113          	addi	sp,sp,336
    490c:	00008067          	ret
    4910:	00c10693          	addi	a3,sp,12
    4914:	02c10613          	addi	a2,sp,44
    4918:	00040593          	mv	a1,s0
    491c:	ff4a8513          	addi	a0,s5,-12
    4920:	00000097          	auipc	ra,0x0
    4924:	d40080e7          	jalr	-704(ra) # 4660 <fatfs_get_file_entry>
    4928:	fa050ee3          	beqz	a0,48e4 <_open_directory+0x78>
    492c:	00c10513          	addi	a0,sp,12
    4930:	fffff097          	auipc	ra,0xfffff
    4934:	db0080e7          	jalr	-592(ra) # 36e0 <fatfs_entry_is_dir>
    4938:	fa0506e3          	beqz	a0,48e4 <_open_directory+0x78>
    493c:	02015403          	lhu	s0,32(sp)
    4940:	02615783          	lhu	a5,38(sp)
    4944:	00148493          	addi	s1,s1,1
    4948:	01041413          	slli	s0,s0,0x10
    494c:	00f40433          	add	s0,s0,a5
    4950:	f69ff06f          	j	48b8 <_open_directory+0x4c>

00004954 <fl_opendir>:
    4954:	fe010113          	addi	sp,sp,-32
    4958:	fff00793          	li	a5,-1
    495c:	00f12623          	sw	a5,12(sp)
    4960:	000067b7          	lui	a5,0x6
    4964:	7f07a783          	lw	a5,2032(a5) # 67f0 <_filelib_init>
    4968:	00812c23          	sw	s0,24(sp)
    496c:	01212823          	sw	s2,16(sp)
    4970:	00112e23          	sw	ra,28(sp)
    4974:	00912a23          	sw	s1,20(sp)
    4978:	00050913          	mv	s2,a0
    497c:	00058413          	mv	s0,a1
    4980:	00079663          	bnez	a5,498c <fl_opendir+0x38>
    4984:	fffff097          	auipc	ra,0xfffff
    4988:	970080e7          	jalr	-1680(ra) # 32f4 <fl_init>
    498c:	000074b7          	lui	s1,0x7
    4990:	ff448793          	addi	a5,s1,-12 # 6ff4 <_fs>
    4994:	03c7a783          	lw	a5,60(a5)
    4998:	ff448493          	addi	s1,s1,-12
    499c:	00078463          	beqz	a5,49a4 <fl_opendir+0x50>
    49a0:	000780e7          	jalr	a5
    49a4:	00090513          	mv	a0,s2
    49a8:	fffff097          	auipc	ra,0xfffff
    49ac:	24c080e7          	jalr	588(ra) # 3bf4 <fatfs_total_path_levels>
    49b0:	fff00793          	li	a5,-1
    49b4:	02f51063          	bne	a0,a5,49d4 <fl_opendir+0x80>
    49b8:	0084a783          	lw	a5,8(s1)
    49bc:	00f12623          	sw	a5,12(sp)
    49c0:	00c12783          	lw	a5,12(sp)
    49c4:	00042023          	sw	zero,0(s0)
    49c8:	00040423          	sb	zero,8(s0)
    49cc:	00f42223          	sw	a5,4(s0)
    49d0:	0180006f          	j	49e8 <fl_opendir+0x94>
    49d4:	00c10593          	addi	a1,sp,12
    49d8:	00090513          	mv	a0,s2
    49dc:	00000097          	auipc	ra,0x0
    49e0:	e90080e7          	jalr	-368(ra) # 486c <_open_directory>
    49e4:	fc051ee3          	bnez	a0,49c0 <fl_opendir+0x6c>
    49e8:	0404a783          	lw	a5,64(s1)
    49ec:	00078463          	beqz	a5,49f4 <fl_opendir+0xa0>
    49f0:	000780e7          	jalr	a5
    49f4:	00c12703          	lw	a4,12(sp)
    49f8:	fff00793          	li	a5,-1
    49fc:	00f71463          	bne	a4,a5,4a04 <fl_opendir+0xb0>
    4a00:	00000413          	li	s0,0
    4a04:	01c12083          	lw	ra,28(sp)
    4a08:	00040513          	mv	a0,s0
    4a0c:	01812403          	lw	s0,24(sp)
    4a10:	01412483          	lw	s1,20(sp)
    4a14:	01012903          	lw	s2,16(sp)
    4a18:	02010113          	addi	sp,sp,32
    4a1c:	00008067          	ret

00004a20 <_open_file>:
    4a20:	fc010113          	addi	sp,sp,-64
    4a24:	03312623          	sw	s3,44(sp)
    4a28:	02112e23          	sw	ra,60(sp)
    4a2c:	02812c23          	sw	s0,56(sp)
    4a30:	02912a23          	sw	s1,52(sp)
    4a34:	03212823          	sw	s2,48(sp)
    4a38:	00050993          	mv	s3,a0
    4a3c:	ffffe097          	auipc	ra,0xffffe
    4a40:	6c0080e7          	jalr	1728(ra) # 30fc <_allocate_file>
    4a44:	06050463          	beqz	a0,4aac <_open_file+0x8c>
    4a48:	01450913          	addi	s2,a0,20
    4a4c:	00050413          	mv	s0,a0
    4a50:	10400613          	li	a2,260
    4a54:	00000593          	li	a1,0
    4a58:	00090513          	mv	a0,s2
    4a5c:	ffffe097          	auipc	ra,0xffffe
    4a60:	cbc080e7          	jalr	-836(ra) # 2718 <memset>
    4a64:	11840493          	addi	s1,s0,280
    4a68:	10400613          	li	a2,260
    4a6c:	00000593          	li	a1,0
    4a70:	00048513          	mv	a0,s1
    4a74:	ffffe097          	auipc	ra,0xffffe
    4a78:	ca4080e7          	jalr	-860(ra) # 2718 <memset>
    4a7c:	10400713          	li	a4,260
    4a80:	00048693          	mv	a3,s1
    4a84:	10400613          	li	a2,260
    4a88:	00090593          	mv	a1,s2
    4a8c:	00098513          	mv	a0,s3
    4a90:	fffff097          	auipc	ra,0xfffff
    4a94:	2cc080e7          	jalr	716(ra) # 3d5c <fatfs_split_path>
    4a98:	fff00793          	li	a5,-1
    4a9c:	02f51a63          	bne	a0,a5,4ad0 <_open_file+0xb0>
    4aa0:	00040513          	mv	a0,s0
    4aa4:	ffffe097          	auipc	ra,0xffffe
    4aa8:	6cc080e7          	jalr	1740(ra) # 3170 <_free_file>
    4aac:	00000413          	li	s0,0
    4ab0:	03c12083          	lw	ra,60(sp)
    4ab4:	00040513          	mv	a0,s0
    4ab8:	03812403          	lw	s0,56(sp)
    4abc:	03412483          	lw	s1,52(sp)
    4ac0:	03012903          	lw	s2,48(sp)
    4ac4:	02c12983          	lw	s3,44(sp)
    4ac8:	04010113          	addi	sp,sp,64
    4acc:	00008067          	ret
    4ad0:	00040513          	mv	a0,s0
    4ad4:	fffff097          	auipc	ra,0xfffff
    4ad8:	4dc080e7          	jalr	1244(ra) # 3fb0 <_check_file_open>
    4adc:	fc0512e3          	bnez	a0,4aa0 <_open_file+0x80>
    4ae0:	01444783          	lbu	a5,20(s0)
    4ae4:	08079e63          	bnez	a5,4b80 <_open_file+0x160>
    4ae8:	000077b7          	lui	a5,0x7
    4aec:	ffc7a783          	lw	a5,-4(a5) # 6ffc <_fs+0x8>
    4af0:	00f42023          	sw	a5,0(s0)
    4af4:	00042583          	lw	a1,0(s0)
    4af8:	00048613          	mv	a2,s1
    4afc:	000074b7          	lui	s1,0x7
    4b00:	00010693          	mv	a3,sp
    4b04:	ff448513          	addi	a0,s1,-12 # 6ff4 <_fs>
    4b08:	00000097          	auipc	ra,0x0
    4b0c:	b58080e7          	jalr	-1192(ra) # 4660 <fatfs_get_file_entry>
    4b10:	f80508e3          	beqz	a0,4aa0 <_open_file+0x80>
    4b14:	00010513          	mv	a0,sp
    4b18:	fffff097          	auipc	ra,0xfffff
    4b1c:	bd8080e7          	jalr	-1064(ra) # 36f0 <fatfs_entry_is_file>
    4b20:	f80500e3          	beqz	a0,4aa0 <_open_file+0x80>
    4b24:	00b00613          	li	a2,11
    4b28:	00010593          	mv	a1,sp
    4b2c:	21c40513          	addi	a0,s0,540
    4b30:	ffffe097          	auipc	ra,0xffffe
    4b34:	c04080e7          	jalr	-1020(ra) # 2734 <memcpy>
    4b38:	01c12783          	lw	a5,28(sp)
    4b3c:	01a15703          	lhu	a4,26(sp)
    4b40:	00042423          	sw	zero,8(s0)
    4b44:	00f42623          	sw	a5,12(s0)
    4b48:	01415783          	lhu	a5,20(sp)
    4b4c:	42042a23          	sw	zero,1076(s0)
    4b50:	00042823          	sw	zero,16(s0)
    4b54:	01079793          	slli	a5,a5,0x10
    4b58:	00e787b3          	add	a5,a5,a4
    4b5c:	00f42223          	sw	a5,4(s0)
    4b60:	fff00793          	li	a5,-1
    4b64:	42f42823          	sw	a5,1072(s0)
    4b68:	22f42423          	sw	a5,552(s0)
    4b6c:	22f42623          	sw	a5,556(s0)
    4b70:	ff448513          	addi	a0,s1,-12
    4b74:	00000097          	auipc	ra,0x0
    4b78:	840080e7          	jalr	-1984(ra) # 43b4 <fatfs_fat_purge>
    4b7c:	f35ff06f          	j	4ab0 <_open_file+0x90>
    4b80:	00040593          	mv	a1,s0
    4b84:	00090513          	mv	a0,s2
    4b88:	00000097          	auipc	ra,0x0
    4b8c:	ce4080e7          	jalr	-796(ra) # 486c <_open_directory>
    4b90:	f60512e3          	bnez	a0,4af4 <_open_file+0xd4>
    4b94:	f0dff06f          	j	4aa0 <_open_file+0x80>

00004b98 <fatfs_sfn_exists>:
    4b98:	fe010113          	addi	sp,sp,-32
    4b9c:	00912a23          	sw	s1,20(sp)
    4ba0:	01212823          	sw	s2,16(sp)
    4ba4:	01312623          	sw	s3,12(sp)
    4ba8:	01412423          	sw	s4,8(sp)
    4bac:	01512223          	sw	s5,4(sp)
    4bb0:	00112e23          	sw	ra,28(sp)
    4bb4:	00812c23          	sw	s0,24(sp)
    4bb8:	00050493          	mv	s1,a0
    4bbc:	00058993          	mv	s3,a1
    4bc0:	00060a13          	mv	s4,a2
    4bc4:	00000913          	li	s2,0
    4bc8:	24450a93          	addi	s5,a0,580
    4bcc:	00000693          	li	a3,0
    4bd0:	00090613          	mv	a2,s2
    4bd4:	00098593          	mv	a1,s3
    4bd8:	00048513          	mv	a0,s1
    4bdc:	00000097          	auipc	ra,0x0
    4be0:	944080e7          	jalr	-1724(ra) # 4520 <fatfs_sector_reader>
    4be4:	06050263          	beqz	a0,4c48 <fatfs_sfn_exists+0xb0>
    4be8:	04448413          	addi	s0,s1,68
    4bec:	00040513          	mv	a0,s0
    4bf0:	fffff097          	auipc	ra,0xfffff
    4bf4:	a20080e7          	jalr	-1504(ra) # 3610 <fatfs_entry_lfn_text>
    4bf8:	02051e63          	bnez	a0,4c34 <fatfs_sfn_exists+0x9c>
    4bfc:	00040513          	mv	a0,s0
    4c00:	fffff097          	auipc	ra,0xfffff
    4c04:	a24080e7          	jalr	-1500(ra) # 3624 <fatfs_entry_lfn_invalid>
    4c08:	02051663          	bnez	a0,4c34 <fatfs_sfn_exists+0x9c>
    4c0c:	00040513          	mv	a0,s0
    4c10:	fffff097          	auipc	ra,0xfffff
    4c14:	a94080e7          	jalr	-1388(ra) # 36a4 <fatfs_entry_sfn_only>
    4c18:	00050e63          	beqz	a0,4c34 <fatfs_sfn_exists+0x9c>
    4c1c:	00b00613          	li	a2,11
    4c20:	000a0593          	mv	a1,s4
    4c24:	00040513          	mv	a0,s0
    4c28:	ffffe097          	auipc	ra,0xffffe
    4c2c:	b50080e7          	jalr	-1200(ra) # 2778 <strncmp>
    4c30:	00050a63          	beqz	a0,4c44 <fatfs_sfn_exists+0xac>
    4c34:	02040413          	addi	s0,s0,32
    4c38:	fb541ae3          	bne	s0,s5,4bec <fatfs_sfn_exists+0x54>
    4c3c:	00190913          	addi	s2,s2,1
    4c40:	f8dff06f          	j	4bcc <fatfs_sfn_exists+0x34>
    4c44:	00100513          	li	a0,1
    4c48:	01c12083          	lw	ra,28(sp)
    4c4c:	01812403          	lw	s0,24(sp)
    4c50:	01412483          	lw	s1,20(sp)
    4c54:	01012903          	lw	s2,16(sp)
    4c58:	00c12983          	lw	s3,12(sp)
    4c5c:	00812a03          	lw	s4,8(sp)
    4c60:	00412a83          	lw	s5,4(sp)
    4c64:	02010113          	addi	sp,sp,32
    4c68:	00008067          	ret

00004c6c <fatfs_update_file_length>:
    4c6c:	03852783          	lw	a5,56(a0)
    4c70:	14078e63          	beqz	a5,4dcc <fatfs_update_file_length+0x160>
    4c74:	fd010113          	addi	sp,sp,-48
    4c78:	02912223          	sw	s1,36(sp)
    4c7c:	03212023          	sw	s2,32(sp)
    4c80:	01312e23          	sw	s3,28(sp)
    4c84:	01412c23          	sw	s4,24(sp)
    4c88:	01512a23          	sw	s5,20(sp)
    4c8c:	01612823          	sw	s6,16(sp)
    4c90:	01712623          	sw	s7,12(sp)
    4c94:	02112623          	sw	ra,44(sp)
    4c98:	02812423          	sw	s0,40(sp)
    4c9c:	00050493          	mv	s1,a0
    4ca0:	00058a13          	mv	s4,a1
    4ca4:	00060a93          	mv	s5,a2
    4ca8:	00068913          	mv	s2,a3
    4cac:	00000993          	li	s3,0
    4cb0:	04450b93          	addi	s7,a0,68
    4cb4:	24450b13          	addi	s6,a0,580
    4cb8:	00000693          	li	a3,0
    4cbc:	00098613          	mv	a2,s3
    4cc0:	000a0593          	mv	a1,s4
    4cc4:	00048513          	mv	a0,s1
    4cc8:	00000097          	auipc	ra,0x0
    4ccc:	858080e7          	jalr	-1960(ra) # 4520 <fatfs_sector_reader>
    4cd0:	0c050663          	beqz	a0,4d9c <fatfs_update_file_length+0x130>
    4cd4:	000b8413          	mv	s0,s7
    4cd8:	00040513          	mv	a0,s0
    4cdc:	fffff097          	auipc	ra,0xfffff
    4ce0:	934080e7          	jalr	-1740(ra) # 3610 <fatfs_entry_lfn_text>
    4ce4:	0a051463          	bnez	a0,4d8c <fatfs_update_file_length+0x120>
    4ce8:	00040513          	mv	a0,s0
    4cec:	fffff097          	auipc	ra,0xfffff
    4cf0:	938080e7          	jalr	-1736(ra) # 3624 <fatfs_entry_lfn_invalid>
    4cf4:	08051c63          	bnez	a0,4d8c <fatfs_update_file_length+0x120>
    4cf8:	00040513          	mv	a0,s0
    4cfc:	fffff097          	auipc	ra,0xfffff
    4d00:	9a8080e7          	jalr	-1624(ra) # 36a4 <fatfs_entry_sfn_only>
    4d04:	08050463          	beqz	a0,4d8c <fatfs_update_file_length+0x120>
    4d08:	00b00613          	li	a2,11
    4d0c:	000a8593          	mv	a1,s5
    4d10:	00040513          	mv	a0,s0
    4d14:	ffffe097          	auipc	ra,0xffffe
    4d18:	a64080e7          	jalr	-1436(ra) # 2778 <strncmp>
    4d1c:	06051863          	bnez	a0,4d8c <fatfs_update_file_length+0x120>
    4d20:	00895793          	srli	a5,s2,0x8
    4d24:	01240e23          	sb	s2,28(s0)
    4d28:	00f40ea3          	sb	a5,29(s0)
    4d2c:	01095793          	srli	a5,s2,0x10
    4d30:	01895913          	srli	s2,s2,0x18
    4d34:	00f40f23          	sb	a5,30(s0)
    4d38:	01240fa3          	sb	s2,31(s0)
    4d3c:	00040593          	mv	a1,s0
    4d40:	02000613          	li	a2,32
    4d44:	00040513          	mv	a0,s0
    4d48:	ffffe097          	auipc	ra,0xffffe
    4d4c:	9ec080e7          	jalr	-1556(ra) # 2734 <memcpy>
    4d50:	02812403          	lw	s0,40(sp)
    4d54:	0384a783          	lw	a5,56(s1)
    4d58:	2444a503          	lw	a0,580(s1)
    4d5c:	02c12083          	lw	ra,44(sp)
    4d60:	02412483          	lw	s1,36(sp)
    4d64:	02012903          	lw	s2,32(sp)
    4d68:	01c12983          	lw	s3,28(sp)
    4d6c:	01812a03          	lw	s4,24(sp)
    4d70:	01412a83          	lw	s5,20(sp)
    4d74:	01012b03          	lw	s6,16(sp)
    4d78:	000b8593          	mv	a1,s7
    4d7c:	00c12b83          	lw	s7,12(sp)
    4d80:	00100613          	li	a2,1
    4d84:	03010113          	addi	sp,sp,48
    4d88:	00078067          	jr	a5
    4d8c:	02040413          	addi	s0,s0,32
    4d90:	f56414e3          	bne	s0,s6,4cd8 <fatfs_update_file_length+0x6c>
    4d94:	00198993          	addi	s3,s3,1
    4d98:	f21ff06f          	j	4cb8 <fatfs_update_file_length+0x4c>
    4d9c:	02c12083          	lw	ra,44(sp)
    4da0:	02812403          	lw	s0,40(sp)
    4da4:	02412483          	lw	s1,36(sp)
    4da8:	02012903          	lw	s2,32(sp)
    4dac:	01c12983          	lw	s3,28(sp)
    4db0:	01812a03          	lw	s4,24(sp)
    4db4:	01412a83          	lw	s5,20(sp)
    4db8:	01012b03          	lw	s6,16(sp)
    4dbc:	00c12b83          	lw	s7,12(sp)
    4dc0:	00000513          	li	a0,0
    4dc4:	03010113          	addi	sp,sp,48
    4dc8:	00008067          	ret
    4dcc:	00000513          	li	a0,0
    4dd0:	00008067          	ret

00004dd4 <fatfs_list_directory_next>:
    4dd4:	ec010113          	addi	sp,sp,-320
    4dd8:	13212823          	sw	s2,304(sp)
    4ddc:	13312623          	sw	s3,300(sp)
    4de0:	13412423          	sw	s4,296(sp)
    4de4:	13512223          	sw	s5,292(sp)
    4de8:	12112e23          	sw	ra,316(sp)
    4dec:	12812c23          	sw	s0,312(sp)
    4df0:	12912a23          	sw	s1,308(sp)
    4df4:	00050a13          	mv	s4,a0
    4df8:	00058913          	mv	s2,a1
    4dfc:	00060993          	mv	s3,a2
    4e00:	10010ea3          	sb	zero,285(sp)
    4e04:	00f00a93          	li	s5,15
    4e08:	00092603          	lw	a2,0(s2)
    4e0c:	00492583          	lw	a1,4(s2)
    4e10:	00000693          	li	a3,0
    4e14:	000a0513          	mv	a0,s4
    4e18:	fffff097          	auipc	ra,0xfffff
    4e1c:	708080e7          	jalr	1800(ra) # 4520 <fatfs_sector_reader>
    4e20:	12050263          	beqz	a0,4f44 <fatfs_list_directory_next+0x170>
    4e24:	00894483          	lbu	s1,8(s2)
    4e28:	00549413          	slli	s0,s1,0x5
    4e2c:	04440413          	addi	s0,s0,68
    4e30:	008a0433          	add	s0,s4,s0
    4e34:	009afc63          	bgeu	s5,s1,4e4c <fatfs_list_directory_next+0x78>
    4e38:	00092783          	lw	a5,0(s2)
    4e3c:	00090423          	sb	zero,8(s2)
    4e40:	00178793          	addi	a5,a5,1
    4e44:	00f92023          	sw	a5,0(s2)
    4e48:	fc1ff06f          	j	4e08 <fatfs_list_directory_next+0x34>
    4e4c:	00040513          	mv	a0,s0
    4e50:	ffffe097          	auipc	ra,0xffffe
    4e54:	7c0080e7          	jalr	1984(ra) # 3610 <fatfs_entry_lfn_text>
    4e58:	02050263          	beqz	a0,4e7c <fatfs_list_directory_next+0xa8>
    4e5c:	00040593          	mv	a1,s0
    4e60:	01810513          	addi	a0,sp,24
    4e64:	ffffe097          	auipc	ra,0xffffe
    4e68:	6a4080e7          	jalr	1700(ra) # 3508 <fatfs_lfn_cache_entry>
    4e6c:	00148493          	addi	s1,s1,1
    4e70:	0ff4f493          	zext.b	s1,s1
    4e74:	02040413          	addi	s0,s0,32
    4e78:	fbdff06f          	j	4e34 <fatfs_list_directory_next+0x60>
    4e7c:	00040513          	mv	a0,s0
    4e80:	ffffe097          	auipc	ra,0xffffe
    4e84:	7a4080e7          	jalr	1956(ra) # 3624 <fatfs_entry_lfn_invalid>
    4e88:	00050663          	beqz	a0,4e94 <fatfs_list_directory_next+0xc0>
    4e8c:	10010ea3          	sb	zero,285(sp)
    4e90:	fddff06f          	j	4e6c <fatfs_list_directory_next+0x98>
    4e94:	00040593          	mv	a1,s0
    4e98:	01810513          	addi	a0,sp,24
    4e9c:	ffffe097          	auipc	ra,0xffffe
    4ea0:	7c0080e7          	jalr	1984(ra) # 365c <fatfs_entry_lfn_exists>
    4ea4:	0c050263          	beqz	a0,4f68 <fatfs_list_directory_next+0x194>
    4ea8:	01810513          	addi	a0,sp,24
    4eac:	ffffe097          	auipc	ra,0xffffe
    4eb0:	728080e7          	jalr	1832(ra) # 35d4 <fatfs_lfn_cache_get>
    4eb4:	00050593          	mv	a1,a0
    4eb8:	10300613          	li	a2,259
    4ebc:	00098513          	mv	a0,s3
    4ec0:	ffffe097          	auipc	ra,0xffffe
    4ec4:	8f8080e7          	jalr	-1800(ra) # 27b8 <strncpy>
    4ec8:	00040513          	mv	a0,s0
    4ecc:	fffff097          	auipc	ra,0xfffff
    4ed0:	814080e7          	jalr	-2028(ra) # 36e0 <fatfs_entry_is_dir>
    4ed4:	00a03533          	snez	a0,a0
    4ed8:	10a98223          	sb	a0,260(s3)
    4edc:	01d44783          	lbu	a5,29(s0)
    4ee0:	01c44703          	lbu	a4,28(s0)
    4ee4:	00148493          	addi	s1,s1,1
    4ee8:	00879793          	slli	a5,a5,0x8
    4eec:	00e7e7b3          	or	a5,a5,a4
    4ef0:	01e44703          	lbu	a4,30(s0)
    4ef4:	0ff4f493          	zext.b	s1,s1
    4ef8:	00100513          	li	a0,1
    4efc:	01071713          	slli	a4,a4,0x10
    4f00:	00f76733          	or	a4,a4,a5
    4f04:	01f44783          	lbu	a5,31(s0)
    4f08:	01879793          	slli	a5,a5,0x18
    4f0c:	00e7e7b3          	or	a5,a5,a4
    4f10:	10f9a623          	sw	a5,268(s3)
    4f14:	01544783          	lbu	a5,21(s0)
    4f18:	01444703          	lbu	a4,20(s0)
    4f1c:	01a44683          	lbu	a3,26(s0)
    4f20:	00879793          	slli	a5,a5,0x8
    4f24:	00e7e7b3          	or	a5,a5,a4
    4f28:	01b44703          	lbu	a4,27(s0)
    4f2c:	01079793          	slli	a5,a5,0x10
    4f30:	00871713          	slli	a4,a4,0x8
    4f34:	00d76733          	or	a4,a4,a3
    4f38:	00e7e7b3          	or	a5,a5,a4
    4f3c:	10f9a423          	sw	a5,264(s3)
    4f40:	00990423          	sb	s1,8(s2)
    4f44:	13c12083          	lw	ra,316(sp)
    4f48:	13812403          	lw	s0,312(sp)
    4f4c:	13412483          	lw	s1,308(sp)
    4f50:	13012903          	lw	s2,304(sp)
    4f54:	12c12983          	lw	s3,300(sp)
    4f58:	12812a03          	lw	s4,296(sp)
    4f5c:	12412a83          	lw	s5,292(sp)
    4f60:	14010113          	addi	sp,sp,320
    4f64:	00008067          	ret
    4f68:	00040513          	mv	a0,s0
    4f6c:	ffffe097          	auipc	ra,0xffffe
    4f70:	738080e7          	jalr	1848(ra) # 36a4 <fatfs_entry_sfn_only>
    4f74:	ee050ce3          	beqz	a0,4e6c <fatfs_list_directory_next+0x98>
    4f78:	00d00613          	li	a2,13
    4f7c:	00000593          	li	a1,0
    4f80:	00810513          	addi	a0,sp,8
    4f84:	10010ea3          	sb	zero,285(sp)
    4f88:	ffffd097          	auipc	ra,0xffffd
    4f8c:	790080e7          	jalr	1936(ra) # 2718 <memset>
    4f90:	00000793          	li	a5,0
    4f94:	00800713          	li	a4,8
    4f98:	00f40633          	add	a2,s0,a5
    4f9c:	00064603          	lbu	a2,0(a2)
    4fa0:	00810693          	addi	a3,sp,8
    4fa4:	00f686b3          	add	a3,a3,a5
    4fa8:	00c68023          	sb	a2,0(a3)
    4fac:	00178793          	addi	a5,a5,1
    4fb0:	fee794e3          	bne	a5,a4,4f98 <fatfs_list_directory_next+0x1c4>
    4fb4:	00844783          	lbu	a5,8(s0)
    4fb8:	00944683          	lbu	a3,9(s0)
    4fbc:	02000613          	li	a2,32
    4fc0:	00f108a3          	sb	a5,17(sp)
    4fc4:	00d10923          	sb	a3,18(sp)
    4fc8:	00100713          	li	a4,1
    4fcc:	00c69663          	bne	a3,a2,4fd8 <fatfs_list_directory_next+0x204>
    4fd0:	fe078793          	addi	a5,a5,-32
    4fd4:	00f03733          	snez	a4,a5
    4fd8:	00a44783          	lbu	a5,10(s0)
    4fdc:	02000693          	li	a3,32
    4fe0:	00f109a3          	sb	a5,19(sp)
    4fe4:	00d79663          	bne	a5,a3,4ff0 <fatfs_list_directory_next+0x21c>
    4fe8:	02000793          	li	a5,32
    4fec:	00070a63          	beqz	a4,5000 <fatfs_list_directory_next+0x22c>
    4ff0:	00814703          	lbu	a4,8(sp)
    4ff4:	02e00793          	li	a5,46
    4ff8:	00f71463          	bne	a4,a5,5000 <fatfs_list_directory_next+0x22c>
    4ffc:	02000793          	li	a5,32
    5000:	00810593          	addi	a1,sp,8
    5004:	00098513          	mv	a0,s3
    5008:	00f10823          	sb	a5,16(sp)
    500c:	fffff097          	auipc	ra,0xfffff
    5010:	034080e7          	jalr	52(ra) # 4040 <fatfs_get_sfn_display_name>
    5014:	eb5ff06f          	j	4ec8 <fatfs_list_directory_next+0xf4>

00005018 <fl_readdir>:
    5018:	000067b7          	lui	a5,0x6
    501c:	7f07a783          	lw	a5,2032(a5) # 67f0 <_filelib_init>
    5020:	fe010113          	addi	sp,sp,-32
    5024:	00912a23          	sw	s1,20(sp)
    5028:	01212823          	sw	s2,16(sp)
    502c:	00112e23          	sw	ra,28(sp)
    5030:	00812c23          	sw	s0,24(sp)
    5034:	01312623          	sw	s3,12(sp)
    5038:	00050493          	mv	s1,a0
    503c:	00058913          	mv	s2,a1
    5040:	00079663          	bnez	a5,504c <fl_readdir+0x34>
    5044:	ffffe097          	auipc	ra,0xffffe
    5048:	2b0080e7          	jalr	688(ra) # 32f4 <fl_init>
    504c:	00007437          	lui	s0,0x7
    5050:	ff440793          	addi	a5,s0,-12 # 6ff4 <_fs>
    5054:	03c7a783          	lw	a5,60(a5)
    5058:	ff440993          	addi	s3,s0,-12
    505c:	00078463          	beqz	a5,5064 <fl_readdir+0x4c>
    5060:	000780e7          	jalr	a5
    5064:	ff440513          	addi	a0,s0,-12
    5068:	00090613          	mv	a2,s2
    506c:	00048593          	mv	a1,s1
    5070:	00000097          	auipc	ra,0x0
    5074:	d64080e7          	jalr	-668(ra) # 4dd4 <fatfs_list_directory_next>
    5078:	0409a783          	lw	a5,64(s3)
    507c:	00050413          	mv	s0,a0
    5080:	00078463          	beqz	a5,5088 <fl_readdir+0x70>
    5084:	000780e7          	jalr	a5
    5088:	01c12083          	lw	ra,28(sp)
    508c:	00143513          	seqz	a0,s0
    5090:	01812403          	lw	s0,24(sp)
    5094:	01412483          	lw	s1,20(sp)
    5098:	01012903          	lw	s2,16(sp)
    509c:	00c12983          	lw	s3,12(sp)
    50a0:	40a00533          	neg	a0,a0
    50a4:	02010113          	addi	sp,sp,32
    50a8:	00008067          	ret

000050ac <_read_sectors>:
    50ac:	fd010113          	addi	sp,sp,-48
    50b0:	01612823          	sw	s6,16(sp)
    50b4:	00007b37          	lui	s6,0x7
    50b8:	01512a23          	sw	s5,20(sp)
    50bc:	ff4b4a83          	lbu	s5,-12(s6) # 6ff4 <_fs>
    50c0:	01412c23          	sw	s4,24(sp)
    50c4:	00058a13          	mv	s4,a1
    50c8:	02912223          	sw	s1,36(sp)
    50cc:	000a8593          	mv	a1,s5
    50d0:	00050493          	mv	s1,a0
    50d4:	000a0513          	mv	a0,s4
    50d8:	02112623          	sw	ra,44(sp)
    50dc:	02812423          	sw	s0,40(sp)
    50e0:	03212023          	sw	s2,32(sp)
    50e4:	00068413          	mv	s0,a3
    50e8:	01712623          	sw	s7,12(sp)
    50ec:	01812423          	sw	s8,8(sp)
    50f0:	01312e23          	sw	s3,28(sp)
    50f4:	00060c13          	mv	s8,a2
    50f8:	ffffd097          	auipc	ra,0xffffd
    50fc:	574080e7          	jalr	1396(ra) # 266c <__udivsi3>
    5100:	00050913          	mv	s2,a0
    5104:	000a8593          	mv	a1,s5
    5108:	000a0513          	mv	a0,s4
    510c:	ffffd097          	auipc	ra,0xffffd
    5110:	5a8080e7          	jalr	1448(ra) # 26b4 <__umodsi3>
    5114:	00a407b3          	add	a5,s0,a0
    5118:	00050b93          	mv	s7,a0
    511c:	00fafe63          	bgeu	s5,a5,5138 <_read_sectors+0x8c>
    5120:	00090593          	mv	a1,s2
    5124:	000a8513          	mv	a0,s5
    5128:	ffffe097          	auipc	ra,0xffffe
    512c:	d34080e7          	jalr	-716(ra) # 2e5c <__mulsi3>
    5130:	414a87b3          	sub	a5,s5,s4
    5134:	00f50433          	add	s0,a0,a5
    5138:	2284a983          	lw	s3,552(s1)
    513c:	07299863          	bne	s3,s2,51ac <_read_sectors+0x100>
    5140:	22c4a583          	lw	a1,556(s1)
    5144:	fff00793          	li	a5,-1
    5148:	02f58663          	beq	a1,a5,5174 <_read_sectors+0xc8>
    514c:	ff4b0513          	addi	a0,s6,-12
    5150:	ffffe097          	auipc	ra,0xffffe
    5154:	068080e7          	jalr	104(ra) # 31b8 <fatfs_lba_of_cluster>
    5158:	017505b3          	add	a1,a0,s7
    515c:	00040693          	mv	a3,s0
    5160:	000c0613          	mv	a2,s8
    5164:	ff4b0513          	addi	a0,s6,-12
    5168:	ffffe097          	auipc	ra,0xffffe
    516c:	0a0080e7          	jalr	160(ra) # 3208 <fatfs_sector_read>
    5170:	00051463          	bnez	a0,5178 <_read_sectors+0xcc>
    5174:	00000413          	li	s0,0
    5178:	02c12083          	lw	ra,44(sp)
    517c:	00040513          	mv	a0,s0
    5180:	02812403          	lw	s0,40(sp)
    5184:	02412483          	lw	s1,36(sp)
    5188:	02012903          	lw	s2,32(sp)
    518c:	01c12983          	lw	s3,28(sp)
    5190:	01812a03          	lw	s4,24(sp)
    5194:	01412a83          	lw	s5,20(sp)
    5198:	01012b03          	lw	s6,16(sp)
    519c:	00c12b83          	lw	s7,12(sp)
    51a0:	00812c03          	lw	s8,8(sp)
    51a4:	03010113          	addi	sp,sp,48
    51a8:	00008067          	ret
    51ac:	035a6463          	bltu	s4,s5,51d4 <_read_sectors+0x128>
    51b0:	00198793          	addi	a5,s3,1
    51b4:	03279063          	bne	a5,s2,51d4 <_read_sectors+0x128>
    51b8:	22c4a583          	lw	a1,556(s1)
    51bc:	0329e263          	bltu	s3,s2,51e0 <_read_sectors+0x134>
    51c0:	fff00793          	li	a5,-1
    51c4:	faf588e3          	beq	a1,a5,5174 <_read_sectors+0xc8>
    51c8:	22b4a623          	sw	a1,556(s1)
    51cc:	2324a423          	sw	s2,552(s1)
    51d0:	f7dff06f          	j	514c <_read_sectors+0xa0>
    51d4:	0044a583          	lw	a1,4(s1)
    51d8:	00000993          	li	s3,0
    51dc:	fe1ff06f          	j	51bc <_read_sectors+0x110>
    51e0:	ff4b0513          	addi	a0,s6,-12
    51e4:	fffff097          	auipc	ra,0xfffff
    51e8:	22c080e7          	jalr	556(ra) # 4410 <fatfs_find_next_cluster>
    51ec:	00050593          	mv	a1,a0
    51f0:	00198993          	addi	s3,s3,1
    51f4:	fc9ff06f          	j	51bc <_read_sectors+0x110>

000051f8 <fatfs_set_fs_info_next_free_cluster>:
    51f8:	03052783          	lw	a5,48(a0)
    51fc:	0a078863          	beqz	a5,52ac <fatfs_set_fs_info_next_free_cluster+0xb4>
    5200:	ff010113          	addi	sp,sp,-16
    5204:	01c52783          	lw	a5,28(a0)
    5208:	01212023          	sw	s2,0(sp)
    520c:	00058913          	mv	s2,a1
    5210:	01855583          	lhu	a1,24(a0)
    5214:	00812423          	sw	s0,8(sp)
    5218:	00912223          	sw	s1,4(sp)
    521c:	00f585b3          	add	a1,a1,a5
    5220:	00112623          	sw	ra,12(sp)
    5224:	00050493          	mv	s1,a0
    5228:	ffffe097          	auipc	ra,0xffffe
    522c:	de4080e7          	jalr	-540(ra) # 300c <fatfs_fat_read_sector>
    5230:	00050413          	mv	s0,a0
    5234:	06050063          	beqz	a0,5294 <fatfs_set_fs_info_next_free_cluster+0x9c>
    5238:	20852783          	lw	a5,520(a0)
    523c:	00895713          	srli	a4,s2,0x8
    5240:	1f278623          	sb	s2,492(a5)
    5244:	20852783          	lw	a5,520(a0)
    5248:	1ee786a3          	sb	a4,493(a5)
    524c:	20852783          	lw	a5,520(a0)
    5250:	01095713          	srli	a4,s2,0x10
    5254:	1ee78723          	sb	a4,494(a5)
    5258:	20852783          	lw	a5,520(a0)
    525c:	01895713          	srli	a4,s2,0x18
    5260:	1ee787a3          	sb	a4,495(a5)
    5264:	00100793          	li	a5,1
    5268:	20f52223          	sw	a5,516(a0)
    526c:	0384a783          	lw	a5,56(s1)
    5270:	0324a223          	sw	s2,36(s1)
    5274:	00078a63          	beqz	a5,5288 <fatfs_set_fs_info_next_free_cluster+0x90>
    5278:	00050593          	mv	a1,a0
    527c:	20052503          	lw	a0,512(a0)
    5280:	00100613          	li	a2,1
    5284:	000780e7          	jalr	a5
    5288:	fff00793          	li	a5,-1
    528c:	20f42023          	sw	a5,512(s0)
    5290:	20042223          	sw	zero,516(s0)
    5294:	00c12083          	lw	ra,12(sp)
    5298:	00812403          	lw	s0,8(sp)
    529c:	00412483          	lw	s1,4(sp)
    52a0:	00012903          	lw	s2,0(sp)
    52a4:	01010113          	addi	sp,sp,16
    52a8:	00008067          	ret
    52ac:	00008067          	ret

000052b0 <fatfs_find_blank_cluster>:
    52b0:	fe010113          	addi	sp,sp,-32
    52b4:	01312623          	sw	s3,12(sp)
    52b8:	01512223          	sw	s5,4(sp)
    52bc:	000109b7          	lui	s3,0x10
    52c0:	10000ab7          	lui	s5,0x10000
    52c4:	00912a23          	sw	s1,20(sp)
    52c8:	01212823          	sw	s2,16(sp)
    52cc:	01412423          	sw	s4,8(sp)
    52d0:	00112e23          	sw	ra,28(sp)
    52d4:	00812c23          	sw	s0,24(sp)
    52d8:	00050913          	mv	s2,a0
    52dc:	00058493          	mv	s1,a1
    52e0:	00060a13          	mv	s4,a2
    52e4:	fff98993          	addi	s3,s3,-1 # ffff <_files+0x8ba3>
    52e8:	fffa8a93          	addi	s5,s5,-1 # fffffff <__stacktop+0xffeffff>
    52ec:	03092783          	lw	a5,48(s2)
    52f0:	0074d413          	srli	s0,s1,0x7
    52f4:	00079463          	bnez	a5,52fc <fatfs_find_blank_cluster+0x4c>
    52f8:	0084d413          	srli	s0,s1,0x8
    52fc:	02092783          	lw	a5,32(s2)
    5300:	0cf47463          	bgeu	s0,a5,53c8 <fatfs_find_blank_cluster+0x118>
    5304:	01492583          	lw	a1,20(s2)
    5308:	00090513          	mv	a0,s2
    530c:	00b405b3          	add	a1,s0,a1
    5310:	ffffe097          	auipc	ra,0xffffe
    5314:	cfc080e7          	jalr	-772(ra) # 300c <fatfs_fat_read_sector>
    5318:	0a050863          	beqz	a0,53c8 <fatfs_find_blank_cluster+0x118>
    531c:	03092783          	lw	a5,48(s2)
    5320:	20852703          	lw	a4,520(a0)
    5324:	04079c63          	bnez	a5,537c <fatfs_find_blank_cluster+0xcc>
    5328:	00841413          	slli	s0,s0,0x8
    532c:	40848433          	sub	s0,s1,s0
    5330:	00141413          	slli	s0,s0,0x1
    5334:	01347433          	and	s0,s0,s3
    5338:	00870733          	add	a4,a4,s0
    533c:	00174783          	lbu	a5,1(a4)
    5340:	00074703          	lbu	a4,0(a4)
    5344:	00879793          	slli	a5,a5,0x8
    5348:	00e787b3          	add	a5,a5,a4
    534c:	06079a63          	bnez	a5,53c0 <fatfs_find_blank_cluster+0x110>
    5350:	009a2023          	sw	s1,0(s4)
    5354:	00100513          	li	a0,1
    5358:	01c12083          	lw	ra,28(sp)
    535c:	01812403          	lw	s0,24(sp)
    5360:	01412483          	lw	s1,20(sp)
    5364:	01012903          	lw	s2,16(sp)
    5368:	00c12983          	lw	s3,12(sp)
    536c:	00812a03          	lw	s4,8(sp)
    5370:	00412a83          	lw	s5,4(sp)
    5374:	02010113          	addi	sp,sp,32
    5378:	00008067          	ret
    537c:	00741413          	slli	s0,s0,0x7
    5380:	40848433          	sub	s0,s1,s0
    5384:	00241413          	slli	s0,s0,0x2
    5388:	01347433          	and	s0,s0,s3
    538c:	00870733          	add	a4,a4,s0
    5390:	00374783          	lbu	a5,3(a4)
    5394:	00274683          	lbu	a3,2(a4)
    5398:	01879793          	slli	a5,a5,0x18
    539c:	01069693          	slli	a3,a3,0x10
    53a0:	00d787b3          	add	a5,a5,a3
    53a4:	00074683          	lbu	a3,0(a4)
    53a8:	00174703          	lbu	a4,1(a4)
    53ac:	00d787b3          	add	a5,a5,a3
    53b0:	00871713          	slli	a4,a4,0x8
    53b4:	00e787b3          	add	a5,a5,a4
    53b8:	0157f7b3          	and	a5,a5,s5
    53bc:	f91ff06f          	j	534c <fatfs_find_blank_cluster+0x9c>
    53c0:	00148493          	addi	s1,s1,1
    53c4:	f29ff06f          	j	52ec <fatfs_find_blank_cluster+0x3c>
    53c8:	00000513          	li	a0,0
    53cc:	f8dff06f          	j	5358 <fatfs_find_blank_cluster+0xa8>

000053d0 <fatfs_fat_set_cluster>:
    53d0:	03052783          	lw	a5,48(a0)
    53d4:	fe010113          	addi	sp,sp,-32
    53d8:	00812c23          	sw	s0,24(sp)
    53dc:	00912a23          	sw	s1,20(sp)
    53e0:	01212823          	sw	s2,16(sp)
    53e4:	01312623          	sw	s3,12(sp)
    53e8:	00112e23          	sw	ra,28(sp)
    53ec:	00050993          	mv	s3,a0
    53f0:	00058413          	mv	s0,a1
    53f4:	00060493          	mv	s1,a2
    53f8:	0085d913          	srli	s2,a1,0x8
    53fc:	00078463          	beqz	a5,5404 <fatfs_fat_set_cluster+0x34>
    5400:	0075d913          	srli	s2,a1,0x7
    5404:	0149a583          	lw	a1,20(s3)
    5408:	00098513          	mv	a0,s3
    540c:	00b905b3          	add	a1,s2,a1
    5410:	ffffe097          	auipc	ra,0xffffe
    5414:	bfc080e7          	jalr	-1028(ra) # 300c <fatfs_fat_read_sector>
    5418:	00050693          	mv	a3,a0
    541c:	00000513          	li	a0,0
    5420:	04068c63          	beqz	a3,5478 <fatfs_fat_set_cluster+0xa8>
    5424:	0309a703          	lw	a4,48(s3)
    5428:	2086a783          	lw	a5,520(a3)
    542c:	0ff4f613          	zext.b	a2,s1
    5430:	06071263          	bnez	a4,5494 <fatfs_fat_set_cluster+0xc4>
    5434:	00891913          	slli	s2,s2,0x8
    5438:	41240433          	sub	s0,s0,s2
    543c:	00010737          	lui	a4,0x10
    5440:	00141413          	slli	s0,s0,0x1
    5444:	ffe70713          	addi	a4,a4,-2 # fffe <_files+0x8ba2>
    5448:	00e47433          	and	s0,s0,a4
    544c:	008787b3          	add	a5,a5,s0
    5450:	00c78023          	sb	a2,0(a5)
    5454:	2086a783          	lw	a5,520(a3)
    5458:	01049493          	slli	s1,s1,0x10
    545c:	0104d493          	srli	s1,s1,0x10
    5460:	008787b3          	add	a5,a5,s0
    5464:	0084d493          	srli	s1,s1,0x8
    5468:	009780a3          	sb	s1,1(a5)
    546c:	00100793          	li	a5,1
    5470:	20f6a223          	sw	a5,516(a3)
    5474:	00100513          	li	a0,1
    5478:	01c12083          	lw	ra,28(sp)
    547c:	01812403          	lw	s0,24(sp)
    5480:	01412483          	lw	s1,20(sp)
    5484:	01012903          	lw	s2,16(sp)
    5488:	00c12983          	lw	s3,12(sp)
    548c:	02010113          	addi	sp,sp,32
    5490:	00008067          	ret
    5494:	00791913          	slli	s2,s2,0x7
    5498:	41240433          	sub	s0,s0,s2
    549c:	00010737          	lui	a4,0x10
    54a0:	ffc70713          	addi	a4,a4,-4 # fffc <_files+0x8ba0>
    54a4:	00241413          	slli	s0,s0,0x2
    54a8:	00e47433          	and	s0,s0,a4
    54ac:	008787b3          	add	a5,a5,s0
    54b0:	00c78023          	sb	a2,0(a5)
    54b4:	2086a783          	lw	a5,520(a3)
    54b8:	0084d713          	srli	a4,s1,0x8
    54bc:	008787b3          	add	a5,a5,s0
    54c0:	00e780a3          	sb	a4,1(a5)
    54c4:	2086a783          	lw	a5,520(a3)
    54c8:	0104d713          	srli	a4,s1,0x10
    54cc:	0184d493          	srli	s1,s1,0x18
    54d0:	008787b3          	add	a5,a5,s0
    54d4:	00e78123          	sb	a4,2(a5)
    54d8:	2086a783          	lw	a5,520(a3)
    54dc:	008787b3          	add	a5,a5,s0
    54e0:	009781a3          	sb	s1,3(a5)
    54e4:	f89ff06f          	j	546c <fatfs_fat_set_cluster+0x9c>

000054e8 <fatfs_free_cluster_chain>:
    54e8:	fe010113          	addi	sp,sp,-32
    54ec:	00812c23          	sw	s0,24(sp)
    54f0:	01212823          	sw	s2,16(sp)
    54f4:	00112e23          	sw	ra,28(sp)
    54f8:	00912a23          	sw	s1,20(sp)
    54fc:	00050413          	mv	s0,a0
    5500:	ffd00913          	li	s2,-3
    5504:	fff58793          	addi	a5,a1,-1
    5508:	02f97063          	bgeu	s2,a5,5528 <fatfs_free_cluster_chain+0x40>
    550c:	01c12083          	lw	ra,28(sp)
    5510:	01812403          	lw	s0,24(sp)
    5514:	01412483          	lw	s1,20(sp)
    5518:	01012903          	lw	s2,16(sp)
    551c:	00100513          	li	a0,1
    5520:	02010113          	addi	sp,sp,32
    5524:	00008067          	ret
    5528:	00040513          	mv	a0,s0
    552c:	00b12623          	sw	a1,12(sp)
    5530:	fffff097          	auipc	ra,0xfffff
    5534:	ee0080e7          	jalr	-288(ra) # 4410 <fatfs_find_next_cluster>
    5538:	00c12583          	lw	a1,12(sp)
    553c:	00050493          	mv	s1,a0
    5540:	00000613          	li	a2,0
    5544:	00040513          	mv	a0,s0
    5548:	00000097          	auipc	ra,0x0
    554c:	e88080e7          	jalr	-376(ra) # 53d0 <fatfs_fat_set_cluster>
    5550:	00048593          	mv	a1,s1
    5554:	fb1ff06f          	j	5504 <fatfs_free_cluster_chain+0x1c>

00005558 <fatfs_fat_add_cluster_to_chain>:
    5558:	fff00793          	li	a5,-1
    555c:	02f59463          	bne	a1,a5,5584 <fatfs_fat_add_cluster_to_chain+0x2c>
    5560:	00000513          	li	a0,0
    5564:	00008067          	ret
    5568:	00000513          	li	a0,0
    556c:	01c12083          	lw	ra,28(sp)
    5570:	01812403          	lw	s0,24(sp)
    5574:	01412483          	lw	s1,20(sp)
    5578:	01012903          	lw	s2,16(sp)
    557c:	02010113          	addi	sp,sp,32
    5580:	00008067          	ret
    5584:	fe010113          	addi	sp,sp,-32
    5588:	00812c23          	sw	s0,24(sp)
    558c:	00912a23          	sw	s1,20(sp)
    5590:	01212823          	sw	s2,16(sp)
    5594:	00050413          	mv	s0,a0
    5598:	00112e23          	sw	ra,28(sp)
    559c:	00058513          	mv	a0,a1
    55a0:	00060493          	mv	s1,a2
    55a4:	fff00913          	li	s2,-1
    55a8:	00050593          	mv	a1,a0
    55ac:	00a12623          	sw	a0,12(sp)
    55b0:	00040513          	mv	a0,s0
    55b4:	fffff097          	auipc	ra,0xfffff
    55b8:	e5c080e7          	jalr	-420(ra) # 4410 <fatfs_find_next_cluster>
    55bc:	fa0506e3          	beqz	a0,5568 <fatfs_fat_add_cluster_to_chain+0x10>
    55c0:	00c12583          	lw	a1,12(sp)
    55c4:	ff2512e3          	bne	a0,s2,55a8 <fatfs_fat_add_cluster_to_chain+0x50>
    55c8:	00048613          	mv	a2,s1
    55cc:	00040513          	mv	a0,s0
    55d0:	00000097          	auipc	ra,0x0
    55d4:	e00080e7          	jalr	-512(ra) # 53d0 <fatfs_fat_set_cluster>
    55d8:	fff00613          	li	a2,-1
    55dc:	00048593          	mv	a1,s1
    55e0:	00040513          	mv	a0,s0
    55e4:	00000097          	auipc	ra,0x0
    55e8:	dec080e7          	jalr	-532(ra) # 53d0 <fatfs_fat_set_cluster>
    55ec:	00100513          	li	a0,1
    55f0:	f7dff06f          	j	556c <fatfs_fat_add_cluster_to_chain+0x14>

000055f4 <fatfs_add_free_space>:
    55f4:	02452703          	lw	a4,36(a0)
    55f8:	fd010113          	addi	sp,sp,-48
    55fc:	02812423          	sw	s0,40(sp)
    5600:	03212023          	sw	s2,32(sp)
    5604:	01412c23          	sw	s4,24(sp)
    5608:	01512a23          	sw	s5,20(sp)
    560c:	02112623          	sw	ra,44(sp)
    5610:	02912223          	sw	s1,36(sp)
    5614:	01312e23          	sw	s3,28(sp)
    5618:	fff00793          	li	a5,-1
    561c:	0005aa83          	lw	s5,0(a1)
    5620:	00050413          	mv	s0,a0
    5624:	00058913          	mv	s2,a1
    5628:	00060a13          	mv	s4,a2
    562c:	00f70863          	beq	a4,a5,563c <fatfs_add_free_space+0x48>
    5630:	fff00593          	li	a1,-1
    5634:	00000097          	auipc	ra,0x0
    5638:	bc4080e7          	jalr	-1084(ra) # 51f8 <fatfs_set_fs_info_next_free_cluster>
    563c:	00000493          	li	s1,0
    5640:	03449663          	bne	s1,s4,566c <fatfs_add_free_space+0x78>
    5644:	00100513          	li	a0,1
    5648:	02c12083          	lw	ra,44(sp)
    564c:	02812403          	lw	s0,40(sp)
    5650:	02412483          	lw	s1,36(sp)
    5654:	02012903          	lw	s2,32(sp)
    5658:	01c12983          	lw	s3,28(sp)
    565c:	01812a03          	lw	s4,24(sp)
    5660:	01412a83          	lw	s5,20(sp)
    5664:	03010113          	addi	sp,sp,48
    5668:	00008067          	ret
    566c:	00842583          	lw	a1,8(s0)
    5670:	00c10613          	addi	a2,sp,12
    5674:	00040513          	mv	a0,s0
    5678:	00000097          	auipc	ra,0x0
    567c:	c38080e7          	jalr	-968(ra) # 52b0 <fatfs_find_blank_cluster>
    5680:	fc0504e3          	beqz	a0,5648 <fatfs_add_free_space+0x54>
    5684:	00c12983          	lw	s3,12(sp)
    5688:	000a8593          	mv	a1,s5
    568c:	00040513          	mv	a0,s0
    5690:	00098613          	mv	a2,s3
    5694:	00000097          	auipc	ra,0x0
    5698:	d3c080e7          	jalr	-708(ra) # 53d0 <fatfs_fat_set_cluster>
    569c:	fff00613          	li	a2,-1
    56a0:	00098593          	mv	a1,s3
    56a4:	00040513          	mv	a0,s0
    56a8:	00000097          	auipc	ra,0x0
    56ac:	d28080e7          	jalr	-728(ra) # 53d0 <fatfs_fat_set_cluster>
    56b0:	00049463          	bnez	s1,56b8 <fatfs_add_free_space+0xc4>
    56b4:	01392023          	sw	s3,0(s2)
    56b8:	00148493          	addi	s1,s1,1
    56bc:	00098a93          	mv	s5,s3
    56c0:	f81ff06f          	j	5640 <fatfs_add_free_space+0x4c>

000056c4 <_write_sectors>:
    56c4:	fb010113          	addi	sp,sp,-80
    56c8:	03312e23          	sw	s3,60(sp)
    56cc:	000079b7          	lui	s3,0x7
    56d0:	03612823          	sw	s6,48(sp)
    56d4:	ff49cb03          	lbu	s6,-12(s3) # 6ff4 <_fs>
    56d8:	03512a23          	sw	s5,52(sp)
    56dc:	00058a93          	mv	s5,a1
    56e0:	fff00793          	li	a5,-1
    56e4:	04812423          	sw	s0,72(sp)
    56e8:	000b0593          	mv	a1,s6
    56ec:	00050413          	mv	s0,a0
    56f0:	000a8513          	mv	a0,s5
    56f4:	00f12e23          	sw	a5,28(sp)
    56f8:	04112623          	sw	ra,76(sp)
    56fc:	04912223          	sw	s1,68(sp)
    5700:	05212023          	sw	s2,64(sp)
    5704:	03712623          	sw	s7,44(sp)
    5708:	03812423          	sw	s8,40(sp)
    570c:	00068b93          	mv	s7,a3
    5710:	03912223          	sw	s9,36(sp)
    5714:	03a12023          	sw	s10,32(sp)
    5718:	00060c93          	mv	s9,a2
    571c:	03412c23          	sw	s4,56(sp)
    5720:	ffffd097          	auipc	ra,0xffffd
    5724:	f4c080e7          	jalr	-180(ra) # 266c <__udivsi3>
    5728:	00050493          	mv	s1,a0
    572c:	000b0593          	mv	a1,s6
    5730:	000a8513          	mv	a0,s5
    5734:	ffffd097          	auipc	ra,0xffffd
    5738:	f80080e7          	jalr	-128(ra) # 26b4 <__umodsi3>
    573c:	00ab87b3          	add	a5,s7,a0
    5740:	00050c13          	mv	s8,a0
    5744:	ff498d13          	addi	s10,s3,-12
    5748:	000b8913          	mv	s2,s7
    574c:	00fb7e63          	bgeu	s6,a5,5768 <_write_sectors+0xa4>
    5750:	00048593          	mv	a1,s1
    5754:	000b0513          	mv	a0,s6
    5758:	ffffd097          	auipc	ra,0xffffd
    575c:	704080e7          	jalr	1796(ra) # 2e5c <__mulsi3>
    5760:	415b07b3          	sub	a5,s6,s5
    5764:	00f50933          	add	s2,a0,a5
    5768:	22842a03          	lw	s4,552(s0)
    576c:	029a1a63          	bne	s4,s1,57a0 <_write_sectors+0xdc>
    5770:	22c42583          	lw	a1,556(s0)
    5774:	ff498513          	addi	a0,s3,-12
    5778:	ffffe097          	auipc	ra,0xffffe
    577c:	a40080e7          	jalr	-1472(ra) # 31b8 <fatfs_lba_of_cluster>
    5780:	018505b3          	add	a1,a0,s8
    5784:	00090693          	mv	a3,s2
    5788:	000c8613          	mv	a2,s9
    578c:	ff498513          	addi	a0,s3,-12
    5790:	ffffe097          	auipc	ra,0xffffe
    5794:	a90080e7          	jalr	-1392(ra) # 3220 <fatfs_sector_write>
    5798:	04050a63          	beqz	a0,57ec <_write_sectors+0x128>
    579c:	0540006f          	j	57f0 <_write_sectors+0x12c>
    57a0:	096ae663          	bltu	s5,s6,582c <_write_sectors+0x168>
    57a4:	001a0793          	addi	a5,s4,1
    57a8:	08979263          	bne	a5,s1,582c <_write_sectors+0x168>
    57ac:	22c42583          	lw	a1,556(s0)
    57b0:	fff00a93          	li	s5,-1
    57b4:	089a6263          	bltu	s4,s1,5838 <_write_sectors+0x174>
    57b8:	fff00793          	li	a5,-1
    57bc:	0af59463          	bne	a1,a5,5864 <_write_sectors+0x1a0>
    57c0:	000d4583          	lbu	a1,0(s10)
    57c4:	fff58513          	addi	a0,a1,-1
    57c8:	01750533          	add	a0,a0,s7
    57cc:	ffffd097          	auipc	ra,0xffffd
    57d0:	ea0080e7          	jalr	-352(ra) # 266c <__udivsi3>
    57d4:	00050613          	mv	a2,a0
    57d8:	01c10593          	addi	a1,sp,28
    57dc:	ff498513          	addi	a0,s3,-12
    57e0:	00000097          	auipc	ra,0x0
    57e4:	e14080e7          	jalr	-492(ra) # 55f4 <fatfs_add_free_space>
    57e8:	06051c63          	bnez	a0,5860 <_write_sectors+0x19c>
    57ec:	00000913          	li	s2,0
    57f0:	04c12083          	lw	ra,76(sp)
    57f4:	04812403          	lw	s0,72(sp)
    57f8:	04412483          	lw	s1,68(sp)
    57fc:	03c12983          	lw	s3,60(sp)
    5800:	03812a03          	lw	s4,56(sp)
    5804:	03412a83          	lw	s5,52(sp)
    5808:	03012b03          	lw	s6,48(sp)
    580c:	02c12b83          	lw	s7,44(sp)
    5810:	02812c03          	lw	s8,40(sp)
    5814:	02412c83          	lw	s9,36(sp)
    5818:	02012d03          	lw	s10,32(sp)
    581c:	00090513          	mv	a0,s2
    5820:	04012903          	lw	s2,64(sp)
    5824:	05010113          	addi	sp,sp,80
    5828:	00008067          	ret
    582c:	00442583          	lw	a1,4(s0)
    5830:	00000a13          	li	s4,0
    5834:	f7dff06f          	j	57b0 <_write_sectors+0xec>
    5838:	ff498513          	addi	a0,s3,-12
    583c:	00b12623          	sw	a1,12(sp)
    5840:	fffff097          	auipc	ra,0xfffff
    5844:	bd0080e7          	jalr	-1072(ra) # 4410 <fatfs_find_next_cluster>
    5848:	00c12583          	lw	a1,12(sp)
    584c:	00b12e23          	sw	a1,28(sp)
    5850:	f75508e3          	beq	a0,s5,57c0 <_write_sectors+0xfc>
    5854:	001a0a13          	addi	s4,s4,1
    5858:	00050593          	mv	a1,a0
    585c:	f59ff06f          	j	57b4 <_write_sectors+0xf0>
    5860:	01c12583          	lw	a1,28(sp)
    5864:	22b42623          	sw	a1,556(s0)
    5868:	22942423          	sw	s1,552(s0)
    586c:	f09ff06f          	j	5774 <_write_sectors+0xb0>

00005870 <fl_fflush>:
    5870:	000067b7          	lui	a5,0x6
    5874:	7f07a783          	lw	a5,2032(a5) # 67f0 <_filelib_init>
    5878:	ff010113          	addi	sp,sp,-16
    587c:	00812423          	sw	s0,8(sp)
    5880:	00112623          	sw	ra,12(sp)
    5884:	00912223          	sw	s1,4(sp)
    5888:	00050413          	mv	s0,a0
    588c:	00079663          	bnez	a5,5898 <fl_fflush+0x28>
    5890:	ffffe097          	auipc	ra,0xffffe
    5894:	a64080e7          	jalr	-1436(ra) # 32f4 <fl_init>
    5898:	04040863          	beqz	s0,58e8 <fl_fflush+0x78>
    589c:	000077b7          	lui	a5,0x7
    58a0:	ff478713          	addi	a4,a5,-12 # 6ff4 <_fs>
    58a4:	03c72703          	lw	a4,60(a4)
    58a8:	ff478493          	addi	s1,a5,-12
    58ac:	00070463          	beqz	a4,58b4 <fl_fflush+0x44>
    58b0:	000700e7          	jalr	a4
    58b4:	43442783          	lw	a5,1076(s0)
    58b8:	02078263          	beqz	a5,58dc <fl_fflush+0x6c>
    58bc:	43042583          	lw	a1,1072(s0)
    58c0:	00100693          	li	a3,1
    58c4:	23040613          	addi	a2,s0,560
    58c8:	00040513          	mv	a0,s0
    58cc:	00000097          	auipc	ra,0x0
    58d0:	df8080e7          	jalr	-520(ra) # 56c4 <_write_sectors>
    58d4:	00050463          	beqz	a0,58dc <fl_fflush+0x6c>
    58d8:	42042a23          	sw	zero,1076(s0)
    58dc:	0404a783          	lw	a5,64(s1)
    58e0:	00078463          	beqz	a5,58e8 <fl_fflush+0x78>
    58e4:	000780e7          	jalr	a5
    58e8:	00c12083          	lw	ra,12(sp)
    58ec:	00812403          	lw	s0,8(sp)
    58f0:	00412483          	lw	s1,4(sp)
    58f4:	00000513          	li	a0,0
    58f8:	01010113          	addi	sp,sp,16
    58fc:	00008067          	ret

00005900 <fl_fclose>:
    5900:	000067b7          	lui	a5,0x6
    5904:	7f07a783          	lw	a5,2032(a5) # 67f0 <_filelib_init>
    5908:	ff010113          	addi	sp,sp,-16
    590c:	00812423          	sw	s0,8(sp)
    5910:	00112623          	sw	ra,12(sp)
    5914:	00912223          	sw	s1,4(sp)
    5918:	01212023          	sw	s2,0(sp)
    591c:	00050413          	mv	s0,a0
    5920:	00079663          	bnez	a5,592c <fl_fclose+0x2c>
    5924:	ffffe097          	auipc	ra,0xffffe
    5928:	9d0080e7          	jalr	-1584(ra) # 32f4 <fl_init>
    592c:	08040e63          	beqz	s0,59c8 <fl_fclose+0xc8>
    5930:	000074b7          	lui	s1,0x7
    5934:	ff448793          	addi	a5,s1,-12 # 6ff4 <_fs>
    5938:	03c7a783          	lw	a5,60(a5)
    593c:	ff448913          	addi	s2,s1,-12
    5940:	00078463          	beqz	a5,5948 <fl_fclose+0x48>
    5944:	000780e7          	jalr	a5
    5948:	00040513          	mv	a0,s0
    594c:	00000097          	auipc	ra,0x0
    5950:	f24080e7          	jalr	-220(ra) # 5870 <fl_fflush>
    5954:	01042783          	lw	a5,16(s0)
    5958:	00078e63          	beqz	a5,5974 <fl_fclose+0x74>
    595c:	00c42683          	lw	a3,12(s0)
    5960:	00042583          	lw	a1,0(s0)
    5964:	21c40613          	addi	a2,s0,540
    5968:	ff448513          	addi	a0,s1,-12
    596c:	fffff097          	auipc	ra,0xfffff
    5970:	300080e7          	jalr	768(ra) # 4c6c <fatfs_update_file_length>
    5974:	fff00793          	li	a5,-1
    5978:	42f42823          	sw	a5,1072(s0)
    597c:	00040513          	mv	a0,s0
    5980:	00042423          	sw	zero,8(s0)
    5984:	00042623          	sw	zero,12(s0)
    5988:	00042223          	sw	zero,4(s0)
    598c:	42042a23          	sw	zero,1076(s0)
    5990:	00042823          	sw	zero,16(s0)
    5994:	ffffd097          	auipc	ra,0xffffd
    5998:	7dc080e7          	jalr	2012(ra) # 3170 <_free_file>
    599c:	ff448513          	addi	a0,s1,-12
    59a0:	fffff097          	auipc	ra,0xfffff
    59a4:	a14080e7          	jalr	-1516(ra) # 43b4 <fatfs_fat_purge>
    59a8:	04092783          	lw	a5,64(s2)
    59ac:	00078e63          	beqz	a5,59c8 <fl_fclose+0xc8>
    59b0:	00812403          	lw	s0,8(sp)
    59b4:	00c12083          	lw	ra,12(sp)
    59b8:	00412483          	lw	s1,4(sp)
    59bc:	00012903          	lw	s2,0(sp)
    59c0:	01010113          	addi	sp,sp,16
    59c4:	00078067          	jr	a5
    59c8:	00c12083          	lw	ra,12(sp)
    59cc:	00812403          	lw	s0,8(sp)
    59d0:	00412483          	lw	s1,4(sp)
    59d4:	00012903          	lw	s2,0(sp)
    59d8:	01010113          	addi	sp,sp,16
    59dc:	00008067          	ret

000059e0 <fl_fread>:
    59e0:	fd010113          	addi	sp,sp,-48
    59e4:	01612823          	sw	s6,16(sp)
    59e8:	00050b13          	mv	s6,a0
    59ec:	00058513          	mv	a0,a1
    59f0:	00060593          	mv	a1,a2
    59f4:	02812423          	sw	s0,40(sp)
    59f8:	02912223          	sw	s1,36(sp)
    59fc:	02112623          	sw	ra,44(sp)
    5a00:	03212023          	sw	s2,32(sp)
    5a04:	01312e23          	sw	s3,28(sp)
    5a08:	01412c23          	sw	s4,24(sp)
    5a0c:	01512a23          	sw	s5,20(sp)
    5a10:	01712623          	sw	s7,12(sp)
    5a14:	01812423          	sw	s8,8(sp)
    5a18:	01912223          	sw	s9,4(sp)
    5a1c:	00068413          	mv	s0,a3
    5a20:	ffffd097          	auipc	ra,0xffffd
    5a24:	43c080e7          	jalr	1084(ra) # 2e5c <__mulsi3>
    5a28:	000067b7          	lui	a5,0x6
    5a2c:	7f07a783          	lw	a5,2032(a5) # 67f0 <_filelib_init>
    5a30:	00050493          	mv	s1,a0
    5a34:	00079663          	bnez	a5,5a40 <fl_fread+0x60>
    5a38:	ffffe097          	auipc	ra,0xffffe
    5a3c:	8bc080e7          	jalr	-1860(ra) # 32f4 <fl_init>
    5a40:	120b0e63          	beqz	s6,5b7c <fl_fread+0x19c>
    5a44:	12040c63          	beqz	s0,5b7c <fl_fread+0x19c>
    5a48:	43844783          	lbu	a5,1080(s0)
    5a4c:	0017f793          	andi	a5,a5,1
    5a50:	12078663          	beqz	a5,5b7c <fl_fread+0x19c>
    5a54:	0a048e63          	beqz	s1,5b10 <fl_fread+0x130>
    5a58:	00842583          	lw	a1,8(s0)
    5a5c:	00c42783          	lw	a5,12(s0)
    5a60:	10f5fe63          	bgeu	a1,a5,5b7c <fl_fread+0x19c>
    5a64:	00b48733          	add	a4,s1,a1
    5a68:	00e7f463          	bgeu	a5,a4,5a70 <fl_fread+0x90>
    5a6c:	40b784b3          	sub	s1,a5,a1
    5a70:	0095da13          	srli	s4,a1,0x9
    5a74:	1ff5f913          	andi	s2,a1,511
    5a78:	00000993          	li	s3,0
    5a7c:	23040b93          	addi	s7,s0,560
    5a80:	20000c13          	li	s8,512
    5a84:	1ff00c93          	li	s9,511
    5a88:	0899d263          	bge	s3,s1,5b0c <fl_fread+0x12c>
    5a8c:	04091463          	bnez	s2,5ad4 <fl_fread+0xf4>
    5a90:	413486b3          	sub	a3,s1,s3
    5a94:	04dcd063          	bge	s9,a3,5ad4 <fl_fread+0xf4>
    5a98:	4096d693          	srai	a3,a3,0x9
    5a9c:	013b0633          	add	a2,s6,s3
    5aa0:	000a0593          	mv	a1,s4
    5aa4:	00040513          	mv	a0,s0
    5aa8:	fffff097          	auipc	ra,0xfffff
    5aac:	604080e7          	jalr	1540(ra) # 50ac <_read_sectors>
    5ab0:	04050e63          	beqz	a0,5b0c <fl_fread+0x12c>
    5ab4:	00951a93          	slli	s5,a0,0x9
    5ab8:	00aa0a33          	add	s4,s4,a0
    5abc:	00842783          	lw	a5,8(s0)
    5ac0:	015989b3          	add	s3,s3,s5
    5ac4:	00000913          	li	s2,0
    5ac8:	015787b3          	add	a5,a5,s5
    5acc:	00f42423          	sw	a5,8(s0)
    5ad0:	fb9ff06f          	j	5a88 <fl_fread+0xa8>
    5ad4:	43042783          	lw	a5,1072(s0)
    5ad8:	07478c63          	beq	a5,s4,5b50 <fl_fread+0x170>
    5adc:	43442783          	lw	a5,1076(s0)
    5ae0:	00078863          	beqz	a5,5af0 <fl_fread+0x110>
    5ae4:	00040513          	mv	a0,s0
    5ae8:	00000097          	auipc	ra,0x0
    5aec:	d88080e7          	jalr	-632(ra) # 5870 <fl_fflush>
    5af0:	00100693          	li	a3,1
    5af4:	000b8613          	mv	a2,s7
    5af8:	000a0593          	mv	a1,s4
    5afc:	00040513          	mv	a0,s0
    5b00:	fffff097          	auipc	ra,0xfffff
    5b04:	5ac080e7          	jalr	1452(ra) # 50ac <_read_sectors>
    5b08:	04051063          	bnez	a0,5b48 <fl_fread+0x168>
    5b0c:	00098493          	mv	s1,s3
    5b10:	02c12083          	lw	ra,44(sp)
    5b14:	02812403          	lw	s0,40(sp)
    5b18:	02012903          	lw	s2,32(sp)
    5b1c:	01c12983          	lw	s3,28(sp)
    5b20:	01812a03          	lw	s4,24(sp)
    5b24:	01412a83          	lw	s5,20(sp)
    5b28:	01012b03          	lw	s6,16(sp)
    5b2c:	00c12b83          	lw	s7,12(sp)
    5b30:	00812c03          	lw	s8,8(sp)
    5b34:	00412c83          	lw	s9,4(sp)
    5b38:	00048513          	mv	a0,s1
    5b3c:	02412483          	lw	s1,36(sp)
    5b40:	03010113          	addi	sp,sp,48
    5b44:	00008067          	ret
    5b48:	43442823          	sw	s4,1072(s0)
    5b4c:	42042a23          	sw	zero,1076(s0)
    5b50:	412c07b3          	sub	a5,s8,s2
    5b54:	41348ab3          	sub	s5,s1,s3
    5b58:	0157d463          	bge	a5,s5,5b60 <fl_fread+0x180>
    5b5c:	00078a93          	mv	s5,a5
    5b60:	000a8613          	mv	a2,s5
    5b64:	012b85b3          	add	a1,s7,s2
    5b68:	013b0533          	add	a0,s6,s3
    5b6c:	ffffd097          	auipc	ra,0xffffd
    5b70:	bc8080e7          	jalr	-1080(ra) # 2734 <memcpy>
    5b74:	001a0a13          	addi	s4,s4,1
    5b78:	f45ff06f          	j	5abc <fl_fread+0xdc>
    5b7c:	fff00493          	li	s1,-1
    5b80:	f91ff06f          	j	5b10 <fl_fread+0x130>

00005b84 <fatfs_allocate_free_space>:
    5b84:	02069a63          	bnez	a3,5bb8 <fatfs_allocate_free_space+0x34>
    5b88:	00000513          	li	a0,0
    5b8c:	00008067          	ret
    5b90:	00000513          	li	a0,0
    5b94:	02c12083          	lw	ra,44(sp)
    5b98:	02812403          	lw	s0,40(sp)
    5b9c:	02412483          	lw	s1,36(sp)
    5ba0:	02012903          	lw	s2,32(sp)
    5ba4:	01c12983          	lw	s3,28(sp)
    5ba8:	01812a03          	lw	s4,24(sp)
    5bac:	01412a83          	lw	s5,20(sp)
    5bb0:	03010113          	addi	sp,sp,48
    5bb4:	00008067          	ret
    5bb8:	02452703          	lw	a4,36(a0)
    5bbc:	fd010113          	addi	sp,sp,-48
    5bc0:	02812423          	sw	s0,40(sp)
    5bc4:	03212023          	sw	s2,32(sp)
    5bc8:	01312e23          	sw	s3,28(sp)
    5bcc:	01512a23          	sw	s5,20(sp)
    5bd0:	02112623          	sw	ra,44(sp)
    5bd4:	02912223          	sw	s1,36(sp)
    5bd8:	01412c23          	sw	s4,24(sp)
    5bdc:	fff00793          	li	a5,-1
    5be0:	00050413          	mv	s0,a0
    5be4:	00058a93          	mv	s5,a1
    5be8:	00060993          	mv	s3,a2
    5bec:	00068913          	mv	s2,a3
    5bf0:	00f70863          	beq	a4,a5,5c00 <fatfs_allocate_free_space+0x7c>
    5bf4:	fff00593          	li	a1,-1
    5bf8:	fffff097          	auipc	ra,0xfffff
    5bfc:	600080e7          	jalr	1536(ra) # 51f8 <fatfs_set_fs_info_next_free_cluster>
    5c00:	00044a03          	lbu	s4,0(s0)
    5c04:	00090513          	mv	a0,s2
    5c08:	009a1a13          	slli	s4,s4,0x9
    5c0c:	000a0593          	mv	a1,s4
    5c10:	ffffd097          	auipc	ra,0xffffd
    5c14:	a5c080e7          	jalr	-1444(ra) # 266c <__udivsi3>
    5c18:	00050493          	mv	s1,a0
    5c1c:	00050593          	mv	a1,a0
    5c20:	000a0513          	mv	a0,s4
    5c24:	ffffd097          	auipc	ra,0xffffd
    5c28:	238080e7          	jalr	568(ra) # 2e5c <__mulsi3>
    5c2c:	01250463          	beq	a0,s2,5c34 <fatfs_allocate_free_space+0xb0>
    5c30:	00148493          	addi	s1,s1,1
    5c34:	040a8463          	beqz	s5,5c7c <fatfs_allocate_free_space+0xf8>
    5c38:	00842583          	lw	a1,8(s0)
    5c3c:	00c10613          	addi	a2,sp,12
    5c40:	00040513          	mv	a0,s0
    5c44:	fffff097          	auipc	ra,0xfffff
    5c48:	66c080e7          	jalr	1644(ra) # 52b0 <fatfs_find_blank_cluster>
    5c4c:	f40502e3          	beqz	a0,5b90 <fatfs_allocate_free_space+0xc>
    5c50:	00100793          	li	a5,1
    5c54:	02f49863          	bne	s1,a5,5c84 <fatfs_allocate_free_space+0x100>
    5c58:	00c12483          	lw	s1,12(sp)
    5c5c:	fff00613          	li	a2,-1
    5c60:	00040513          	mv	a0,s0
    5c64:	00048593          	mv	a1,s1
    5c68:	fffff097          	auipc	ra,0xfffff
    5c6c:	768080e7          	jalr	1896(ra) # 53d0 <fatfs_fat_set_cluster>
    5c70:	00100513          	li	a0,1
    5c74:	0099a023          	sw	s1,0(s3)
    5c78:	f1dff06f          	j	5b94 <fatfs_allocate_free_space+0x10>
    5c7c:	0009a783          	lw	a5,0(s3)
    5c80:	00f12623          	sw	a5,12(sp)
    5c84:	00048613          	mv	a2,s1
    5c88:	00c10593          	addi	a1,sp,12
    5c8c:	00040513          	mv	a0,s0
    5c90:	00000097          	auipc	ra,0x0
    5c94:	964080e7          	jalr	-1692(ra) # 55f4 <fatfs_add_free_space>
    5c98:	00a03533          	snez	a0,a0
    5c9c:	ef9ff06f          	j	5b94 <fatfs_allocate_free_space+0x10>

00005ca0 <fatfs_add_file_entry>:
    5ca0:	f8010113          	addi	sp,sp,-128
    5ca4:	00f12a23          	sw	a5,20(sp)
    5ca8:	03852783          	lw	a5,56(a0)
    5cac:	06112e23          	sw	ra,124(sp)
    5cb0:	06812c23          	sw	s0,120(sp)
    5cb4:	06912a23          	sw	s1,116(sp)
    5cb8:	07212823          	sw	s2,112(sp)
    5cbc:	07312623          	sw	s3,108(sp)
    5cc0:	07412423          	sw	s4,104(sp)
    5cc4:	07512223          	sw	s5,100(sp)
    5cc8:	07612023          	sw	s6,96(sp)
    5ccc:	05712e23          	sw	s7,92(sp)
    5cd0:	05812c23          	sw	s8,88(sp)
    5cd4:	05912a23          	sw	s9,84(sp)
    5cd8:	05a12823          	sw	s10,80(sp)
    5cdc:	05b12623          	sw	s11,76(sp)
    5ce0:	00b12423          	sw	a1,8(sp)
    5ce4:	00c12623          	sw	a2,12(sp)
    5ce8:	00e12823          	sw	a4,16(sp)
    5cec:	01012c23          	sw	a6,24(sp)
    5cf0:	04079263          	bnez	a5,5d34 <fatfs_add_file_entry+0x94>
    5cf4:	00000513          	li	a0,0
    5cf8:	07c12083          	lw	ra,124(sp)
    5cfc:	07812403          	lw	s0,120(sp)
    5d00:	07412483          	lw	s1,116(sp)
    5d04:	07012903          	lw	s2,112(sp)
    5d08:	06c12983          	lw	s3,108(sp)
    5d0c:	06812a03          	lw	s4,104(sp)
    5d10:	06412a83          	lw	s5,100(sp)
    5d14:	06012b03          	lw	s6,96(sp)
    5d18:	05c12b83          	lw	s7,92(sp)
    5d1c:	05812c03          	lw	s8,88(sp)
    5d20:	05412c83          	lw	s9,84(sp)
    5d24:	05012d03          	lw	s10,80(sp)
    5d28:	04c12d83          	lw	s11,76(sp)
    5d2c:	08010113          	addi	sp,sp,128
    5d30:	00008067          	ret
    5d34:	00050413          	mv	s0,a0
    5d38:	00c12503          	lw	a0,12(sp)
    5d3c:	00068a93          	mv	s5,a3
    5d40:	ffffe097          	auipc	ra,0xffffe
    5d44:	9c0080e7          	jalr	-1600(ra) # 3700 <fatfs_lfn_entries_required>
    5d48:	00150713          	addi	a4,a0,1
    5d4c:	00100793          	li	a5,1
    5d50:	00050493          	mv	s1,a0
    5d54:	fae7f0e3          	bgeu	a5,a4,5cf4 <fatfs_add_file_entry+0x54>
    5d58:	00000913          	li	s2,0
    5d5c:	00000a13          	li	s4,0
    5d60:	00000993          	li	s3,0
    5d64:	00000b13          	li	s6,0
    5d68:	00000d93          	li	s11,0
    5d6c:	0e500b93          	li	s7,229
    5d70:	01000c13          	li	s8,16
    5d74:	00812583          	lw	a1,8(sp)
    5d78:	00000693          	li	a3,0
    5d7c:	00090613          	mv	a2,s2
    5d80:	00040513          	mv	a0,s0
    5d84:	ffffe097          	auipc	ra,0xffffe
    5d88:	79c080e7          	jalr	1948(ra) # 4520 <fatfs_sector_reader>
    5d8c:	14050463          	beqz	a0,5ed4 <fatfs_add_file_entry+0x234>
    5d90:	04440d13          	addi	s10,s0,68
    5d94:	000d8793          	mv	a5,s11
    5d98:	00000c93          	li	s9,0
    5d9c:	000d0513          	mv	a0,s10
    5da0:	00f12e23          	sw	a5,28(sp)
    5da4:	ffffe097          	auipc	ra,0xffffe
    5da8:	86c080e7          	jalr	-1940(ra) # 3610 <fatfs_entry_lfn_text>
    5dac:	01c12783          	lw	a5,28(sp)
    5db0:	00050d93          	mv	s11,a0
    5db4:	02050c63          	beqz	a0,5dec <fatfs_add_file_entry+0x14c>
    5db8:	00079863          	bnez	a5,5dc8 <fatfs_add_file_entry+0x128>
    5dbc:	000c8a13          	mv	s4,s9
    5dc0:	00090993          	mv	s3,s2
    5dc4:	00100b13          	li	s6,1
    5dc8:	00178d93          	addi	s11,a5,1
    5dcc:	001c8713          	addi	a4,s9,1
    5dd0:	0ff77c93          	zext.b	s9,a4
    5dd4:	020d0d13          	addi	s10,s10,32
    5dd8:	018c9663          	bne	s9,s8,5de4 <fatfs_add_file_entry+0x144>
    5ddc:	00190913          	addi	s2,s2,1
    5de0:	f95ff06f          	j	5d74 <fatfs_add_file_entry+0xd4>
    5de4:	000d8793          	mv	a5,s11
    5de8:	fb5ff06f          	j	5d9c <fatfs_add_file_entry+0xfc>
    5dec:	000d4603          	lbu	a2,0(s10)
    5df0:	0d761c63          	bne	a2,s7,5ec8 <fatfs_add_file_entry+0x228>
    5df4:	00079863          	bnez	a5,5e04 <fatfs_add_file_entry+0x164>
    5df8:	000c8a13          	mv	s4,s9
    5dfc:	00090993          	mv	s3,s2
    5e00:	00100b13          	li	s6,1
    5e04:	00178d93          	addi	s11,a5,1
    5e08:	fc97c2e3          	blt	a5,s1,5dcc <fatfs_add_file_entry+0x12c>
    5e0c:	00ba8693          	addi	a3,s5,11
    5e10:	000a8713          	mv	a4,s5
    5e14:	00000913          	li	s2,0
    5e18:	00074603          	lbu	a2,0(a4)
    5e1c:	00195793          	srli	a5,s2,0x1
    5e20:	00791913          	slli	s2,s2,0x7
    5e24:	0127e7b3          	or	a5,a5,s2
    5e28:	00170713          	addi	a4,a4,1
    5e2c:	00c787b3          	add	a5,a5,a2
    5e30:	0ff7f913          	zext.b	s2,a5
    5e34:	fed712e3          	bne	a4,a3,5e18 <fatfs_add_file_entry+0x178>
    5e38:	00098b13          	mv	s6,s3
    5e3c:	00000d93          	li	s11,0
    5e40:	04440c13          	addi	s8,s0,68
    5e44:	01000c93          	li	s9,16
    5e48:	00812583          	lw	a1,8(sp)
    5e4c:	00000693          	li	a3,0
    5e50:	000b0613          	mv	a2,s6
    5e54:	00040513          	mv	a0,s0
    5e58:	ffffe097          	auipc	ra,0xffffe
    5e5c:	6c8080e7          	jalr	1736(ra) # 4520 <fatfs_sector_reader>
    5e60:	e8050ae3          	beqz	a0,5cf4 <fatfs_add_file_entry+0x54>
    5e64:	000c0b93          	mv	s7,s8
    5e68:	00000713          	li	a4,0
    5e6c:	00000d13          	li	s10,0
    5e70:	000d9663          	bnez	s11,5e7c <fatfs_add_file_entry+0x1dc>
    5e74:	11699863          	bne	s3,s6,5f84 <fatfs_add_file_entry+0x2e4>
    5e78:	114d1663          	bne	s10,s4,5f84 <fatfs_add_file_entry+0x2e4>
    5e7c:	0e049263          	bnez	s1,5f60 <fatfs_add_file_entry+0x2c0>
    5e80:	01812703          	lw	a4,24(sp)
    5e84:	01012603          	lw	a2,16(sp)
    5e88:	01412583          	lw	a1,20(sp)
    5e8c:	02010693          	addi	a3,sp,32
    5e90:	000a8513          	mv	a0,s5
    5e94:	ffffe097          	auipc	ra,0xffffe
    5e98:	9c4080e7          	jalr	-1596(ra) # 3858 <fatfs_sfn_create_entry>
    5e9c:	02010593          	addi	a1,sp,32
    5ea0:	02000613          	li	a2,32
    5ea4:	000b8513          	mv	a0,s7
    5ea8:	ffffd097          	auipc	ra,0xffffd
    5eac:	88c080e7          	jalr	-1908(ra) # 2734 <memcpy>
    5eb0:	03842783          	lw	a5,56(s0)
    5eb4:	24442503          	lw	a0,580(s0)
    5eb8:	00100613          	li	a2,1
    5ebc:	000c0593          	mv	a1,s8
    5ec0:	000780e7          	jalr	a5
    5ec4:	e35ff06f          	j	5cf8 <fatfs_add_file_entry+0x58>
    5ec8:	f20606e3          	beqz	a2,5df4 <fatfs_add_file_entry+0x154>
    5ecc:	00000b13          	li	s6,0
    5ed0:	efdff06f          	j	5dcc <fatfs_add_file_entry+0x12c>
    5ed4:	00842583          	lw	a1,8(s0)
    5ed8:	02010613          	addi	a2,sp,32
    5edc:	00040513          	mv	a0,s0
    5ee0:	fffff097          	auipc	ra,0xfffff
    5ee4:	3d0080e7          	jalr	976(ra) # 52b0 <fatfs_find_blank_cluster>
    5ee8:	e00506e3          	beqz	a0,5cf4 <fatfs_add_file_entry+0x54>
    5eec:	02012b83          	lw	s7,32(sp)
    5ef0:	00812583          	lw	a1,8(sp)
    5ef4:	00040513          	mv	a0,s0
    5ef8:	000b8613          	mv	a2,s7
    5efc:	fffff097          	auipc	ra,0xfffff
    5f00:	65c080e7          	jalr	1628(ra) # 5558 <fatfs_fat_add_cluster_to_chain>
    5f04:	de0508e3          	beqz	a0,5cf4 <fatfs_add_file_entry+0x54>
    5f08:	20000613          	li	a2,512
    5f0c:	00000593          	li	a1,0
    5f10:	04440513          	addi	a0,s0,68
    5f14:	ffffd097          	auipc	ra,0xffffd
    5f18:	804080e7          	jalr	-2044(ra) # 2718 <memset>
    5f1c:	00000c13          	li	s8,0
    5f20:	00044783          	lbu	a5,0(s0)
    5f24:	00fc6a63          	bltu	s8,a5,5f38 <fatfs_add_file_entry+0x298>
    5f28:	ee0b12e3          	bnez	s6,5e0c <fatfs_add_file_entry+0x16c>
    5f2c:	00090993          	mv	s3,s2
    5f30:	00000a13          	li	s4,0
    5f34:	ed9ff06f          	j	5e0c <fatfs_add_file_entry+0x16c>
    5f38:	00000693          	li	a3,0
    5f3c:	000c0613          	mv	a2,s8
    5f40:	000b8593          	mv	a1,s7
    5f44:	00040513          	mv	a0,s0
    5f48:	ffffd097          	auipc	ra,0xffffd
    5f4c:	2f0080e7          	jalr	752(ra) # 3238 <fatfs_write_sector>
    5f50:	da0502e3          	beqz	a0,5cf4 <fatfs_add_file_entry+0x54>
    5f54:	001c0c13          	addi	s8,s8,1
    5f58:	0ffc7c13          	zext.b	s8,s8
    5f5c:	fc5ff06f          	j	5f20 <fatfs_add_file_entry+0x280>
    5f60:	00c12503          	lw	a0,12(sp)
    5f64:	fff48493          	addi	s1,s1,-1
    5f68:	00090693          	mv	a3,s2
    5f6c:	00048613          	mv	a2,s1
    5f70:	000b8593          	mv	a1,s7
    5f74:	ffffd097          	auipc	ra,0xffffd
    5f78:	7bc080e7          	jalr	1980(ra) # 3730 <fatfs_filename_to_lfn>
    5f7c:	00100d93          	li	s11,1
    5f80:	00100713          	li	a4,1
    5f84:	001d0793          	addi	a5,s10,1
    5f88:	0ff7fd13          	zext.b	s10,a5
    5f8c:	020b8b93          	addi	s7,s7,32
    5f90:	ef9d10e3          	bne	s10,s9,5e70 <fatfs_add_file_entry+0x1d0>
    5f94:	00070e63          	beqz	a4,5fb0 <fatfs_add_file_entry+0x310>
    5f98:	03842783          	lw	a5,56(s0)
    5f9c:	24442503          	lw	a0,580(s0)
    5fa0:	00100613          	li	a2,1
    5fa4:	000c0593          	mv	a1,s8
    5fa8:	000780e7          	jalr	a5
    5fac:	d40504e3          	beqz	a0,5cf4 <fatfs_add_file_entry+0x54>
    5fb0:	001b0b13          	addi	s6,s6,1
    5fb4:	e95ff06f          	j	5e48 <fatfs_add_file_entry+0x1a8>

00005fb8 <fl_fopen>:
    5fb8:	000067b7          	lui	a5,0x6
    5fbc:	7f07a783          	lw	a5,2032(a5) # 67f0 <_filelib_init>
    5fc0:	fa010113          	addi	sp,sp,-96
    5fc4:	04812c23          	sw	s0,88(sp)
    5fc8:	05412423          	sw	s4,72(sp)
    5fcc:	04112e23          	sw	ra,92(sp)
    5fd0:	04912a23          	sw	s1,84(sp)
    5fd4:	05212823          	sw	s2,80(sp)
    5fd8:	05312623          	sw	s3,76(sp)
    5fdc:	05512223          	sw	s5,68(sp)
    5fe0:	05612023          	sw	s6,64(sp)
    5fe4:	03712e23          	sw	s7,60(sp)
    5fe8:	03812c23          	sw	s8,56(sp)
    5fec:	03912a23          	sw	s9,52(sp)
    5ff0:	00050a13          	mv	s4,a0
    5ff4:	00058413          	mv	s0,a1
    5ff8:	00079663          	bnez	a5,6004 <fl_fopen+0x4c>
    5ffc:	ffffd097          	auipc	ra,0xffffd
    6000:	2f8080e7          	jalr	760(ra) # 32f4 <fl_init>
    6004:	000067b7          	lui	a5,0x6
    6008:	7ec7a783          	lw	a5,2028(a5) # 67ec <_filelib_valid>
    600c:	36078c63          	beqz	a5,6384 <fl_fopen+0x3cc>
    6010:	360a0a63          	beqz	s4,6384 <fl_fopen+0x3cc>
    6014:	10040863          	beqz	s0,6124 <fl_fopen+0x16c>
    6018:	00040513          	mv	a0,s0
    601c:	ffffc097          	auipc	ra,0xffffc
    6020:	73c080e7          	jalr	1852(ra) # 2758 <strlen>
    6024:	00000493          	li	s1,0
    6028:	00000713          	li	a4,0
    602c:	05700693          	li	a3,87
    6030:	07200613          	li	a2,114
    6034:	07700813          	li	a6,119
    6038:	06100893          	li	a7,97
    603c:	06200313          	li	t1,98
    6040:	04100593          	li	a1,65
    6044:	04200e13          	li	t3,66
    6048:	05200e93          	li	t4,82
    604c:	02b00f13          	li	t5,43
    6050:	10a74663          	blt	a4,a0,615c <fl_fopen+0x1a4>
    6054:	00007937          	lui	s2,0x7
    6058:	ff490793          	addi	a5,s2,-12 # 6ff4 <_fs>
    605c:	0387a783          	lw	a5,56(a5)
    6060:	ff490b13          	addi	s6,s2,-12
    6064:	00079463          	bnez	a5,606c <fl_fopen+0xb4>
    6068:	0d94f493          	andi	s1,s1,217
    606c:	03cb2783          	lw	a5,60(s6)
    6070:	00078463          	beqz	a5,6078 <fl_fopen+0xc0>
    6074:	000780e7          	jalr	a5
    6078:	0014fc93          	andi	s9,s1,1
    607c:	160c9863          	bnez	s9,61ec <fl_fopen+0x234>
    6080:	0204f793          	andi	a5,s1,32
    6084:	08078863          	beqz	a5,6114 <fl_fopen+0x15c>
    6088:	038b2783          	lw	a5,56(s6)
    608c:	06078a63          	beqz	a5,6100 <fl_fopen+0x148>
    6090:	ffffd097          	auipc	ra,0xffffd
    6094:	06c080e7          	jalr	108(ra) # 30fc <_allocate_file>
    6098:	00050413          	mv	s0,a0
    609c:	06050263          	beqz	a0,6100 <fl_fopen+0x148>
    60a0:	01450b93          	addi	s7,a0,20
    60a4:	10400613          	li	a2,260
    60a8:	00000593          	li	a1,0
    60ac:	000b8513          	mv	a0,s7
    60b0:	ffffc097          	auipc	ra,0xffffc
    60b4:	668080e7          	jalr	1640(ra) # 2718 <memset>
    60b8:	11840a93          	addi	s5,s0,280
    60bc:	10400613          	li	a2,260
    60c0:	00000593          	li	a1,0
    60c4:	000a8513          	mv	a0,s5
    60c8:	ffffc097          	auipc	ra,0xffffc
    60cc:	650080e7          	jalr	1616(ra) # 2718 <memset>
    60d0:	10400713          	li	a4,260
    60d4:	000a8693          	mv	a3,s5
    60d8:	10400613          	li	a2,260
    60dc:	000b8593          	mv	a1,s7
    60e0:	000a0513          	mv	a0,s4
    60e4:	ffffe097          	auipc	ra,0xffffe
    60e8:	c78080e7          	jalr	-904(ra) # 3d5c <fatfs_split_path>
    60ec:	fff00793          	li	a5,-1
    60f0:	10f51c63          	bne	a0,a5,6208 <fl_fopen+0x250>
    60f4:	00040513          	mv	a0,s0
    60f8:	ffffd097          	auipc	ra,0xffffd
    60fc:	078080e7          	jalr	120(ra) # 3170 <_free_file>
    6100:	00000413          	li	s0,0
    6104:	260c9c63          	bnez	s9,637c <fl_fopen+0x3c4>
    6108:	0e041c63          	bnez	s0,6200 <fl_fopen+0x248>
    610c:	0064f793          	andi	a5,s1,6
    6110:	24079e63          	bnez	a5,636c <fl_fopen+0x3b4>
    6114:	00000413          	li	s0,0
    6118:	040b2783          	lw	a5,64(s6)
    611c:	00078463          	beqz	a5,6124 <fl_fopen+0x16c>
    6120:	000780e7          	jalr	a5
    6124:	05c12083          	lw	ra,92(sp)
    6128:	00040513          	mv	a0,s0
    612c:	05812403          	lw	s0,88(sp)
    6130:	05412483          	lw	s1,84(sp)
    6134:	05012903          	lw	s2,80(sp)
    6138:	04c12983          	lw	s3,76(sp)
    613c:	04812a03          	lw	s4,72(sp)
    6140:	04412a83          	lw	s5,68(sp)
    6144:	04012b03          	lw	s6,64(sp)
    6148:	03c12b83          	lw	s7,60(sp)
    614c:	03812c03          	lw	s8,56(sp)
    6150:	03412c83          	lw	s9,52(sp)
    6154:	06010113          	addi	sp,sp,96
    6158:	00008067          	ret
    615c:	00e407b3          	add	a5,s0,a4
    6160:	0007c783          	lbu	a5,0(a5)
    6164:	04d78463          	beq	a5,a3,61ac <fl_fopen+0x1f4>
    6168:	02f6e463          	bltu	a3,a5,6190 <fl_fopen+0x1d8>
    616c:	04b78463          	beq	a5,a1,61b4 <fl_fopen+0x1fc>
    6170:	00f5e863          	bltu	a1,a5,6180 <fl_fopen+0x1c8>
    6174:	05e78463          	beq	a5,t5,61bc <fl_fopen+0x204>
    6178:	00170713          	addi	a4,a4,1
    617c:	ed5ff06f          	j	6050 <fl_fopen+0x98>
    6180:	03c78063          	beq	a5,t3,61a0 <fl_fopen+0x1e8>
    6184:	ffd79ae3          	bne	a5,t4,6178 <fl_fopen+0x1c0>
    6188:	0014e493          	ori	s1,s1,1
    618c:	fedff06f          	j	6178 <fl_fopen+0x1c0>
    6190:	fec78ce3          	beq	a5,a2,6188 <fl_fopen+0x1d0>
    6194:	00f66a63          	bltu	a2,a5,61a8 <fl_fopen+0x1f0>
    6198:	01178e63          	beq	a5,a7,61b4 <fl_fopen+0x1fc>
    619c:	fc679ee3          	bne	a5,t1,6178 <fl_fopen+0x1c0>
    61a0:	0084e493          	ori	s1,s1,8
    61a4:	fd5ff06f          	j	6178 <fl_fopen+0x1c0>
    61a8:	fd0798e3          	bne	a5,a6,6178 <fl_fopen+0x1c0>
    61ac:	0324e493          	ori	s1,s1,50
    61b0:	fc9ff06f          	j	6178 <fl_fopen+0x1c0>
    61b4:	0264e493          	ori	s1,s1,38
    61b8:	fc1ff06f          	j	6178 <fl_fopen+0x1c0>
    61bc:	0014f793          	andi	a5,s1,1
    61c0:	00078663          	beqz	a5,61cc <fl_fopen+0x214>
    61c4:	0024e493          	ori	s1,s1,2
    61c8:	fb1ff06f          	j	6178 <fl_fopen+0x1c0>
    61cc:	0024f793          	andi	a5,s1,2
    61d0:	00078663          	beqz	a5,61dc <fl_fopen+0x224>
    61d4:	0314e493          	ori	s1,s1,49
    61d8:	fa1ff06f          	j	6178 <fl_fopen+0x1c0>
    61dc:	0044f793          	andi	a5,s1,4
    61e0:	f8078ce3          	beqz	a5,6178 <fl_fopen+0x1c0>
    61e4:	0274e493          	ori	s1,s1,39
    61e8:	f91ff06f          	j	6178 <fl_fopen+0x1c0>
    61ec:	000a0513          	mv	a0,s4
    61f0:	fffff097          	auipc	ra,0xfffff
    61f4:	830080e7          	jalr	-2000(ra) # 4a20 <_open_file>
    61f8:	00050413          	mv	s0,a0
    61fc:	e80502e3          	beqz	a0,6080 <fl_fopen+0xc8>
    6200:	42940c23          	sb	s1,1080(s0)
    6204:	f15ff06f          	j	6118 <fl_fopen+0x160>
    6208:	00040513          	mv	a0,s0
    620c:	ffffe097          	auipc	ra,0xffffe
    6210:	da4080e7          	jalr	-604(ra) # 3fb0 <_check_file_open>
    6214:	00050993          	mv	s3,a0
    6218:	ec051ee3          	bnez	a0,60f4 <fl_fopen+0x13c>
    621c:	01444783          	lbu	a5,20(s0)
    6220:	0e079663          	bnez	a5,630c <fl_fopen+0x354>
    6224:	008b2783          	lw	a5,8(s6)
    6228:	00f42023          	sw	a5,0(s0)
    622c:	00042583          	lw	a1,0(s0)
    6230:	01010693          	addi	a3,sp,16
    6234:	000a8613          	mv	a2,s5
    6238:	ff490513          	addi	a0,s2,-12
    623c:	ffffe097          	auipc	ra,0xffffe
    6240:	424080e7          	jalr	1060(ra) # 4660 <fatfs_get_file_entry>
    6244:	00100793          	li	a5,1
    6248:	eaf506e3          	beq	a0,a5,60f4 <fl_fopen+0x13c>
    624c:	00042223          	sw	zero,4(s0)
    6250:	00100693          	li	a3,1
    6254:	00440613          	addi	a2,s0,4
    6258:	00100593          	li	a1,1
    625c:	ff490513          	addi	a0,s2,-12
    6260:	00000097          	auipc	ra,0x0
    6264:	924080e7          	jalr	-1756(ra) # 5b84 <fatfs_allocate_free_space>
    6268:	e80506e3          	beqz	a0,60f4 <fl_fopen+0x13c>
    626c:	00002c37          	lui	s8,0x2
    6270:	21c40b93          	addi	s7,s0,540
    6274:	70fc0c13          	addi	s8,s8,1807 # 270f <__modsi3+0x27>
    6278:	000a8593          	mv	a1,s5
    627c:	00410513          	addi	a0,sp,4
    6280:	ffffd097          	auipc	ra,0xffffd
    6284:	680080e7          	jalr	1664(ra) # 3900 <fatfs_lfn_create_sfn>
    6288:	08098e63          	beqz	s3,6324 <fl_fopen+0x36c>
    628c:	00098613          	mv	a2,s3
    6290:	00410593          	addi	a1,sp,4
    6294:	000b8513          	mv	a0,s7
    6298:	ffffd097          	auipc	ra,0xffffd
    629c:	7e4080e7          	jalr	2020(ra) # 3a7c <fatfs_lfn_generate_tail>
    62a0:	00042583          	lw	a1,0(s0)
    62a4:	000b8613          	mv	a2,s7
    62a8:	ff490513          	addi	a0,s2,-12
    62ac:	fffff097          	auipc	ra,0xfffff
    62b0:	8ec080e7          	jalr	-1812(ra) # 4b98 <fatfs_sfn_exists>
    62b4:	00050663          	beqz	a0,62c0 <fl_fopen+0x308>
    62b8:	00198993          	addi	s3,s3,1
    62bc:	fb899ee3          	bne	s3,s8,6278 <fl_fopen+0x2c0>
    62c0:	00442703          	lw	a4,4(s0)
    62c4:	000027b7          	lui	a5,0x2
    62c8:	70f78793          	addi	a5,a5,1807 # 270f <__modsi3+0x27>
    62cc:	00070593          	mv	a1,a4
    62d0:	02f98663          	beq	s3,a5,62fc <fl_fopen+0x344>
    62d4:	00042583          	lw	a1,0(s0)
    62d8:	00000813          	li	a6,0
    62dc:	00000793          	li	a5,0
    62e0:	000b8693          	mv	a3,s7
    62e4:	000a8613          	mv	a2,s5
    62e8:	ff490513          	addi	a0,s2,-12
    62ec:	00000097          	auipc	ra,0x0
    62f0:	9b4080e7          	jalr	-1612(ra) # 5ca0 <fatfs_add_file_entry>
    62f4:	04051463          	bnez	a0,633c <fl_fopen+0x384>
    62f8:	00442583          	lw	a1,4(s0)
    62fc:	ff490513          	addi	a0,s2,-12
    6300:	fffff097          	auipc	ra,0xfffff
    6304:	1e8080e7          	jalr	488(ra) # 54e8 <fatfs_free_cluster_chain>
    6308:	dedff06f          	j	60f4 <fl_fopen+0x13c>
    630c:	00040593          	mv	a1,s0
    6310:	000b8513          	mv	a0,s7
    6314:	ffffe097          	auipc	ra,0xffffe
    6318:	558080e7          	jalr	1368(ra) # 486c <_open_directory>
    631c:	f00518e3          	bnez	a0,622c <fl_fopen+0x274>
    6320:	dd5ff06f          	j	60f4 <fl_fopen+0x13c>
    6324:	00b00613          	li	a2,11
    6328:	00410593          	addi	a1,sp,4
    632c:	000b8513          	mv	a0,s7
    6330:	ffffc097          	auipc	ra,0xffffc
    6334:	404080e7          	jalr	1028(ra) # 2734 <memcpy>
    6338:	f69ff06f          	j	62a0 <fl_fopen+0x2e8>
    633c:	fff00793          	li	a5,-1
    6340:	00042623          	sw	zero,12(s0)
    6344:	00042423          	sw	zero,8(s0)
    6348:	42f42823          	sw	a5,1072(s0)
    634c:	42042a23          	sw	zero,1076(s0)
    6350:	00042823          	sw	zero,16(s0)
    6354:	22f42423          	sw	a5,552(s0)
    6358:	22f42623          	sw	a5,556(s0)
    635c:	ff490513          	addi	a0,s2,-12
    6360:	ffffe097          	auipc	ra,0xffffe
    6364:	054080e7          	jalr	84(ra) # 43b4 <fatfs_fat_purge>
    6368:	d9dff06f          	j	6104 <fl_fopen+0x14c>
    636c:	000a0513          	mv	a0,s4
    6370:	ffffe097          	auipc	ra,0xffffe
    6374:	6b0080e7          	jalr	1712(ra) # 4a20 <_open_file>
    6378:	00050413          	mv	s0,a0
    637c:	e80412e3          	bnez	s0,6200 <fl_fopen+0x248>
    6380:	d95ff06f          	j	6114 <fl_fopen+0x15c>
    6384:	00000413          	li	s0,0
    6388:	d9dff06f          	j	6124 <fl_fopen+0x16c>

0000638c <g_last_progress>:
    638c:	ffffffff                                ....

00006390 <g_volume>:
    6390:	00000004                                ....

00006394 <cmd16>:
    6394:	02000050 00001500                       P.......

0000639c <acmd41>:
    639c:	00004069 00000100                       i@......

000063a4 <cmd55>:
    63a4:	00000077 00000100                       w.......

000063ac <cmd8>:
    63ac:	01000048 000087aa                       H.......

000063b4 <cmd0>:
    63b4:	00000040 00009500                       @.......

000063bc <AUDIO>:
    63bc:	00018000                                ....

000063c0 <DISPLAY>:
    63c0:	00014000                                .@..

000063c4 <RGBSEL>:
    63c4:	00012000                                . ..

000063c8 <VOLUME>:
    63c8:	00011000                                ....

000063cc <BUTTONS>:
    63cc:	00010100                                ....

000063d0 <SDCARD>:
    63d0:	00010080                                ....

000063d4 <OLED_RST>:
    63d4:	00010010                                ....

000063d8 <OLED>:
    63d8:	00010008                                ....

000063dc <LEDS>:
    63dc:	00010004 7c7c2020 00002020 3e7c2020     ....  ||  ..  |>
    63ec:	00002020 003c2020 003c3c3c 003c3c20       ..  <.<<<. <<.
    63fc:	0020203e 003e3e3e 00203e3e 00007325     >  .>>>.>> .%s..
    640c:	3d3d3d2b 00002b3d 3a3a287c 00007c29     +====+..|(::)|..
    641c:	2829207c 00007c20 2e2e287c 00007c29     | )( |..|(..)|..
    642c:	3142203c 00000000 20203542 42202020     < B1....B5     B
    643c:	20202032 36422020 00000000 6b636972     2     B6....rick
    644c:	6c6c6f72 7761722e 00000000 73756d2f     roll.raw..../mus
    645c:	00006369 00006272 2073250a 20746f6e     ic..rb...%s not 
    646c:	6e756f66 00000a64 676d692f 676d692f     found.../img/img
    647c:	7761722e 00000000 20202020 3d3d3d3d     .raw....    ====
    648c:	616c7020 20726579 3d3d3d3d 20202020      player ====    
    649c:	00000a0a 2e206f6e 20776172 2f206e69     ....no .raw in /
    64ac:	6973756d 00000a63 203e6425 000a7325     music...%d> %s..
    64bc:	2e202020 2e2d222d 00000000 3d272e20        .-"-..... .'=
    64cc:	3d5e3d5e 00002e27 3d5e3d2f 3d5e3d5e     ^=^='.../=^=^=^=
    64dc:	005c3d5e 203d5e3a 54534145 3d205245     ^=\.:^= EASTER =
    64ec:	00003b5e 20205e7c 21474745 5e202020     ^;..|^  EGG!   ^
    64fc:	0000007c 5e3d5e3a 5e3d5e3d 5e3d5e3d     |...:^=^=^=^=^=^
    650c:	0000003a 5e3d5c20 5e3d5e3d 2f3d5e3d     :... \=^=^=^=^=/
    651c:	00000000 2e602020 3d3d3d3d 00272e3d     ....  `.=====.'.
    652c:	20202020 7e7e7e60 00000060 33323130         `~~~`...0123
    653c:	37363534 42413938 46454443 00000000     456789ABCDEF....
    654c:	5f544146 203a5346 6f727245 6f632072     FAT_FS: Error co
    655c:	20646c75 20746f6e 64616f6c 54414620     uld not load FAT
    656c:	74656420 736c6961 64252820 0a0d2129      details (%d)!..
    657c:	00000000                                ....

00006580 <seq.0>:
    6580:	00000003 00000003 00000004 00000004     ................
    6590:	00000005 00000006 00000005 00000006     ................

000065a0 <font>:
    65a0:	00000000 00002f00 00030000 14000003     ...../..........
    65b0:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    65c0:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    65d0:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    65e0:	00080800 00200000 20000000 02040810     ...... .... ....
    65f0:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    6600:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    6610:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    6620:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    6630:	00141400 0a110000 01000004 0007052d     ............-...
    6640:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    6650:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    6660:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    6670:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    6680:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    6690:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    66a0:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    66b0:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    66c0:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    66d0:	003f2102 01020000 20000201 00000020     .!?........  ...
    66e0:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    66f0:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    6700:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    6710:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    6720:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    6730:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    6740:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    6750:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    6760:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    6770:	043f2100 02010000 00000102 00000000     .!?.............
    6780:	00000001 00000003 00000005 00000007     ................
    6790:	00000009 0000000e 00000010 00000012     ................
    67a0:	00000014 00000016 00000018 0000001c     ................
    67b0:	0000001e                                ....

000067b4 <idx.1>:
    67b4:	00000000                                ....

000067b8 <idle.2>:
    67b8:	00000000                                ....

000067bc <g_last_was_easter>:
    67bc:	00000000                                ....

000067c0 <g_skip_image>:
    67c0:	00000000                                ....

000067c4 <file_count>:
    67c4:	00000000                                ....

000067c8 <sdcard_while_loading_callback>:
    67c8:	00000000                                ....

000067cc <back_color>:
	...

000067cd <front_color>:
    67cd:	                                         ...

000067d0 <cursor_y>:
    67d0:	00000000                                ....

000067d4 <cursor_x>:
    67d4:	00000000                                ....

000067d8 <f_putchar>:
    67d8:	00000000                                ....

000067dc <_free_file_list>:
	...

000067e4 <_open_file_list>:
	...

000067ec <_filelib_valid>:
    67ec:	00000000                                ....

000067f0 <_filelib_init>:
    67f0:	00000000                                ....
