
code.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00001097          	auipc	ra,0x1
       8:	ec0080e7          	jalr	-320(ra) # ec4 <main>
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
      40:	ab87a783          	lw	a5,-1352(a5) # 5ab8 <LEDS>
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

0000006c <show_hourglass>:
      6c:	ff010113          	addi	sp,sp,-16 # fff0 <_files+0x9590>
      70:	00000593          	li	a1,0
      74:	0ff00513          	li	a0,255
      78:	00112623          	sw	ra,12(sp)
      7c:	00812423          	sw	s0,8(sp)
      80:	00002097          	auipc	ra,0x2
      84:	098080e7          	jalr	152(ra) # 2118 <display_set_front_back_color>
      88:	02c00593          	li	a1,44
      8c:	03100513          	li	a0,49
      90:	00002097          	auipc	ra,0x2
      94:	074080e7          	jalr	116(ra) # 2104 <display_set_cursor>
      98:	00006437          	lui	s0,0x6
      9c:	abc40513          	addi	a0,s0,-1348 # 5abc <LEDS+0x4>
      a0:	00002097          	auipc	ra,0x2
      a4:	368080e7          	jalr	872(ra) # 2408 <printf>
      a8:	03400593          	li	a1,52
      ac:	03100513          	li	a0,49
      b0:	00002097          	auipc	ra,0x2
      b4:	054080e7          	jalr	84(ra) # 2104 <display_set_cursor>
      b8:	00006537          	lui	a0,0x6
      bc:	ac450513          	addi	a0,a0,-1340 # 5ac4 <LEDS+0xc>
      c0:	00002097          	auipc	ra,0x2
      c4:	348080e7          	jalr	840(ra) # 2408 <printf>
      c8:	03c00593          	li	a1,60
      cc:	03100513          	li	a0,49
      d0:	00002097          	auipc	ra,0x2
      d4:	034080e7          	jalr	52(ra) # 2104 <display_set_cursor>
      d8:	00006537          	lui	a0,0x6
      dc:	acc50513          	addi	a0,a0,-1332 # 5acc <LEDS+0x14>
      e0:	00002097          	auipc	ra,0x2
      e4:	328080e7          	jalr	808(ra) # 2408 <printf>
      e8:	04400593          	li	a1,68
      ec:	03100513          	li	a0,49
      f0:	00002097          	auipc	ra,0x2
      f4:	014080e7          	jalr	20(ra) # 2104 <display_set_cursor>
      f8:	00006537          	lui	a0,0x6
      fc:	ad450513          	addi	a0,a0,-1324 # 5ad4 <LEDS+0x1c>
     100:	00002097          	auipc	ra,0x2
     104:	308080e7          	jalr	776(ra) # 2408 <printf>
     108:	04c00593          	li	a1,76
     10c:	03100513          	li	a0,49
     110:	00002097          	auipc	ra,0x2
     114:	ff4080e7          	jalr	-12(ra) # 2104 <display_set_cursor>
     118:	abc40513          	addi	a0,s0,-1348
     11c:	00002097          	auipc	ra,0x2
     120:	2ec080e7          	jalr	748(ra) # 2408 <printf>
     124:	00812403          	lw	s0,8(sp)
     128:	00c12083          	lw	ra,12(sp)
     12c:	01010113          	addi	sp,sp,16
     130:	00002317          	auipc	t1,0x2
     134:	16c30067          	jr	364(t1) # 229c <display_refresh>

00000138 <clear_audio>:
     138:	ff010113          	addi	sp,sp,-16
     13c:	000067b7          	lui	a5,0x6
     140:	00812423          	sw	s0,8(sp)
     144:	a987a403          	lw	s0,-1384(a5) # 5a98 <AUDIO>
     148:	00112623          	sw	ra,12(sp)
     14c:	00912223          	sw	s1,4(sp)
     150:	00042703          	lw	a4,0(s0)
     154:	00042783          	lw	a5,0(s0)
     158:	fef70ee3          	beq	a4,a5,154 <clear_audio+0x1c>
     15c:	00042483          	lw	s1,0(s0)
     160:	20000613          	li	a2,512
     164:	00000593          	li	a1,0
     168:	00048513          	mv	a0,s1
     16c:	00002097          	auipc	ra,0x2
     170:	c88080e7          	jalr	-888(ra) # 1df4 <memset>
     174:	00042783          	lw	a5,0(s0)
     178:	fef48ee3          	beq	s1,a5,174 <clear_audio+0x3c>
     17c:	00042483          	lw	s1,0(s0)
     180:	20000613          	li	a2,512
     184:	00000593          	li	a1,0
     188:	00048513          	mv	a0,s1
     18c:	00002097          	auipc	ra,0x2
     190:	c68080e7          	jalr	-920(ra) # 1df4 <memset>
     194:	00042783          	lw	a5,0(s0)
     198:	fef48ee3          	beq	s1,a5,194 <clear_audio+0x5c>
     19c:	00c12083          	lw	ra,12(sp)
     1a0:	00812403          	lw	s0,8(sp)
     1a4:	00412483          	lw	s1,4(sp)
     1a8:	01010113          	addi	sp,sp,16
     1ac:	00008067          	ret

000001b0 <scan_files>:
     1b0:	ec010113          	addi	sp,sp,-320
     1b4:	00006537          	lui	a0,0x6
     1b8:	13212823          	sw	s2,304(sp)
     1bc:	00410593          	addi	a1,sp,4
     1c0:	00006937          	lui	s2,0x6
     1c4:	adc50513          	addi	a0,a0,-1316 # 5adc <LEDS+0x24>
     1c8:	12112e23          	sw	ra,316(sp)
     1cc:	12812c23          	sw	s0,312(sp)
     1d0:	12912a23          	sw	s1,308(sp)
     1d4:	13312623          	sw	s3,300(sp)
     1d8:	13412423          	sw	s4,296(sp)
     1dc:	13512223          	sw	s5,292(sp)
     1e0:	dc092423          	sw	zero,-568(s2) # 5dc8 <file_count>
     1e4:	00004097          	auipc	ra,0x4
     1e8:	e4c080e7          	jalr	-436(ra) # 4030 <fl_opendir>
     1ec:	02050863          	beqz	a0,21c <scan_files+0x6c>
     1f0:	01f00993          	li	s3,31
     1f4:	00300a13          	li	s4,3
     1f8:	02e00a93          	li	s5,46
     1fc:	01010593          	addi	a1,sp,16
     200:	00410513          	addi	a0,sp,4
     204:	00004097          	auipc	ra,0x4
     208:	4f0080e7          	jalr	1264(ra) # 46f4 <fl_readdir>
     20c:	02050a63          	beqz	a0,240 <scan_files+0x90>
     210:	00410513          	addi	a0,sp,4
     214:	00003097          	auipc	ra,0x3
     218:	9c8080e7          	jalr	-1592(ra) # 2bdc <fl_closedir>
     21c:	13c12083          	lw	ra,316(sp)
     220:	13812403          	lw	s0,312(sp)
     224:	13412483          	lw	s1,308(sp)
     228:	13012903          	lw	s2,304(sp)
     22c:	12c12983          	lw	s3,300(sp)
     230:	12812a03          	lw	s4,296(sp)
     234:	12412a83          	lw	s5,292(sp)
     238:	14010113          	addi	sp,sp,320
     23c:	00008067          	ret
     240:	dc892403          	lw	s0,-568(s2)
     244:	fc89c6e3          	blt	s3,s0,210 <scan_files+0x60>
     248:	11414783          	lbu	a5,276(sp)
     24c:	fa0798e3          	bnez	a5,1fc <scan_files+0x4c>
     250:	01010513          	addi	a0,sp,16
     254:	00002097          	auipc	ra,0x2
     258:	be0080e7          	jalr	-1056(ra) # 1e34 <strlen>
     25c:	faaa50e3          	bge	s4,a0,1fc <scan_files+0x4c>
     260:	12050793          	addi	a5,a0,288
     264:	00278533          	add	a0,a5,sp
     268:	eec54783          	lbu	a5,-276(a0)
     26c:	f95798e3          	bne	a5,s5,1fc <scan_files+0x4c>
     270:	eed54783          	lbu	a5,-275(a0)
     274:	05200713          	li	a4,82
     278:	0df7f793          	andi	a5,a5,223
     27c:	f8e790e3          	bne	a5,a4,1fc <scan_files+0x4c>
     280:	eee54783          	lbu	a5,-274(a0)
     284:	04100713          	li	a4,65
     288:	0df7f793          	andi	a5,a5,223
     28c:	f6e798e3          	bne	a5,a4,1fc <scan_files+0x4c>
     290:	eef54783          	lbu	a5,-273(a0)
     294:	05700713          	li	a4,87
     298:	0df7f793          	andi	a5,a5,223
     29c:	f6e790e3          	bne	a5,a4,1fc <scan_files+0x4c>
     2a0:	000067b7          	lui	a5,0x6
     2a4:	00641493          	slli	s1,s0,0x6
     2a8:	df878793          	addi	a5,a5,-520 # 5df8 <files>
     2ac:	00f484b3          	add	s1,s1,a5
     2b0:	03f00613          	li	a2,63
     2b4:	01010593          	addi	a1,sp,16
     2b8:	00048513          	mv	a0,s1
     2bc:	00140413          	addi	s0,s0,1
     2c0:	00002097          	auipc	ra,0x2
     2c4:	bd4080e7          	jalr	-1068(ra) # 1e94 <strncpy>
     2c8:	02048fa3          	sb	zero,63(s1)
     2cc:	dc892423          	sw	s0,-568(s2)
     2d0:	f2dff06f          	j	1fc <scan_files+0x4c>

000002d4 <clear_screen>:
     2d4:	000067b7          	lui	a5,0x6
     2d8:	aa07a783          	lw	a5,-1376(a5) # 5aa0 <RGBSEL>
     2dc:	ff010113          	addi	sp,sp,-16
     2e0:	00812423          	sw	s0,8(sp)
     2e4:	00912223          	sw	s1,4(sp)
     2e8:	01212023          	sw	s2,0(sp)
     2ec:	00112623          	sw	ra,12(sp)
     2f0:	00000413          	li	s0,0
     2f4:	00078913          	mv	s2,a5
     2f8:	00300493          	li	s1,3
     2fc:	00892023          	sw	s0,0(s2)
     300:	00002097          	auipc	ra,0x2
     304:	df8080e7          	jalr	-520(ra) # 20f8 <display_framebuffer>
     308:	00004637          	lui	a2,0x4
     30c:	00000593          	li	a1,0
     310:	00140413          	addi	s0,s0,1
     314:	00002097          	auipc	ra,0x2
     318:	ae0080e7          	jalr	-1312(ra) # 1df4 <memset>
     31c:	fe9410e3          	bne	s0,s1,2fc <clear_screen+0x28>
     320:	00812403          	lw	s0,8(sp)
     324:	00c12083          	lw	ra,12(sp)
     328:	00412483          	lw	s1,4(sp)
     32c:	00012903          	lw	s2,0(sp)
     330:	01010113          	addi	sp,sp,16
     334:	00002317          	auipc	t1,0x2
     338:	f6830067          	jr	-152(t1) # 229c <display_refresh>

0000033c <fill_rect_gray>:
     33c:	000067b7          	lui	a5,0x6
     340:	aa07a783          	lw	a5,-1376(a5) # 5aa0 <RGBSEL>
     344:	fd010113          	addi	sp,sp,-48
     348:	02812423          	sw	s0,40(sp)
     34c:	03212023          	sw	s2,32(sp)
     350:	01412c23          	sw	s4,24(sp)
     354:	01512a23          	sw	s5,20(sp)
     358:	01612823          	sw	s6,16(sp)
     35c:	01812423          	sw	s8,8(sp)
     360:	01912223          	sw	s9,4(sp)
     364:	01a12023          	sw	s10,0(sp)
     368:	02112623          	sw	ra,44(sp)
     36c:	02912223          	sw	s1,36(sp)
     370:	01312e23          	sw	s3,28(sp)
     374:	01712623          	sw	s7,12(sp)
     378:	00050913          	mv	s2,a0
     37c:	00070b13          	mv	s6,a4
     380:	00058413          	mv	s0,a1
     384:	00b68ab3          	add	s5,a3,a1
     388:	00a60a33          	add	s4,a2,a0
     38c:	07f00c13          	li	s8,127
     390:	00078d13          	mv	s10,a5
     394:	00300c93          	li	s9,3
     398:	00090493          	mv	s1,s2
     39c:	0380006f          	j	3d4 <fill_rect_gray+0x98>
     3a0:	029c4863          	blt	s8,s1,3d0 <fill_rect_gray+0x94>
     3a4:	028c6663          	bltu	s8,s0,3d0 <fill_rect_gray+0x94>
     3a8:	00749b93          	slli	s7,s1,0x7
     3ac:	008b8bb3          	add	s7,s7,s0
     3b0:	00000993          	li	s3,0
     3b4:	013d2023          	sw	s3,0(s10)
     3b8:	00002097          	auipc	ra,0x2
     3bc:	d40080e7          	jalr	-704(ra) # 20f8 <display_framebuffer>
     3c0:	01750533          	add	a0,a0,s7
     3c4:	01650023          	sb	s6,0(a0)
     3c8:	00198993          	addi	s3,s3,1
     3cc:	ff9994e3          	bne	s3,s9,3b4 <fill_rect_gray+0x78>
     3d0:	00148493          	addi	s1,s1,1
     3d4:	fd4496e3          	bne	s1,s4,3a0 <fill_rect_gray+0x64>
     3d8:	00140413          	addi	s0,s0,1
     3dc:	fb541ee3          	bne	s0,s5,398 <fill_rect_gray+0x5c>
     3e0:	02c12083          	lw	ra,44(sp)
     3e4:	02812403          	lw	s0,40(sp)
     3e8:	02412483          	lw	s1,36(sp)
     3ec:	02012903          	lw	s2,32(sp)
     3f0:	01c12983          	lw	s3,28(sp)
     3f4:	01812a03          	lw	s4,24(sp)
     3f8:	01412a83          	lw	s5,20(sp)
     3fc:	01012b03          	lw	s6,16(sp)
     400:	00c12b83          	lw	s7,12(sp)
     404:	00812c03          	lw	s8,8(sp)
     408:	00412c83          	lw	s9,4(sp)
     40c:	00012d03          	lw	s10,0(sp)
     410:	03010113          	addi	sp,sp,48
     414:	00008067          	ret

00000418 <draw_progress_bar>:
     418:	0eb05063          	blez	a1,4f8 <draw_progress_bar+0xe0>
     41c:	00351793          	slli	a5,a0,0x3
     420:	40a787b3          	sub	a5,a5,a0
     424:	00279793          	slli	a5,a5,0x2
     428:	40a78533          	sub	a0,a5,a0
     42c:	ff010113          	addi	sp,sp,-16
     430:	00251513          	slli	a0,a0,0x2
     434:	00812423          	sw	s0,8(sp)
     438:	00112623          	sw	ra,12(sp)
     43c:	00912223          	sw	s1,4(sp)
     440:	00002097          	auipc	ra,0x2
     444:	900080e7          	jalr	-1792(ra) # 1d40 <__divsi3>
     448:	06c00793          	li	a5,108
     44c:	00050413          	mv	s0,a0
     450:	06a7d263          	bge	a5,a0,4b4 <draw_progress_bar+0x9c>
     454:	06c00413          	li	s0,108
     458:	000064b7          	lui	s1,0x6
     45c:	a684a503          	lw	a0,-1432(s1) # 5a68 <g_last_progress>
     460:	06055063          	bgez	a0,4c0 <draw_progress_bar+0xa8>
     464:	00000713          	li	a4,0
     468:	00300693          	li	a3,3
     46c:	06c00613          	li	a2,108
     470:	05a00593          	li	a1,90
     474:	00a00513          	li	a0,10
     478:	00000097          	auipc	ra,0x0
     47c:	ec4080e7          	jalr	-316(ra) # 33c <fill_rect_gray>
     480:	0ff00713          	li	a4,255
     484:	00300693          	li	a3,3
     488:	00040613          	mv	a2,s0
     48c:	05a00593          	li	a1,90
     490:	00a00513          	li	a0,10
     494:	00000097          	auipc	ra,0x0
     498:	ea8080e7          	jalr	-344(ra) # 33c <fill_rect_gray>
     49c:	a684a423          	sw	s0,-1432(s1)
     4a0:	00c12083          	lw	ra,12(sp)
     4a4:	00812403          	lw	s0,8(sp)
     4a8:	00412483          	lw	s1,4(sp)
     4ac:	01010113          	addi	sp,sp,16
     4b0:	00008067          	ret
     4b4:	fa0552e3          	bgez	a0,458 <draw_progress_bar+0x40>
     4b8:	00000413          	li	s0,0
     4bc:	f9dff06f          	j	458 <draw_progress_bar+0x40>
     4c0:	fc850ee3          	beq	a0,s0,49c <draw_progress_bar+0x84>
     4c4:	00855e63          	bge	a0,s0,4e0 <draw_progress_bar+0xc8>
     4c8:	40a40633          	sub	a2,s0,a0
     4cc:	0ff00713          	li	a4,255
     4d0:	00300693          	li	a3,3
     4d4:	05a00593          	li	a1,90
     4d8:	00a50513          	addi	a0,a0,10
     4dc:	fb9ff06f          	j	494 <draw_progress_bar+0x7c>
     4e0:	40850633          	sub	a2,a0,s0
     4e4:	00000713          	li	a4,0
     4e8:	00300693          	li	a3,3
     4ec:	05a00593          	li	a1,90
     4f0:	00a40513          	addi	a0,s0,10
     4f4:	fa1ff06f          	j	494 <draw_progress_bar+0x7c>
     4f8:	00008067          	ret

000004fc <update_ui>:
     4fc:	fe010113          	addi	sp,sp,-32
     500:	00812c23          	sw	s0,24(sp)
     504:	00912a23          	sw	s1,20(sp)
     508:	01212823          	sw	s2,16(sp)
     50c:	01312623          	sw	s3,12(sp)
     510:	00050493          	mv	s1,a0
     514:	00058913          	mv	s2,a1
     518:	00060993          	mv	s3,a2
     51c:	00068413          	mv	s0,a3
     520:	08000613          	li	a2,128
     524:	04000693          	li	a3,64
     528:	00000713          	li	a4,0
     52c:	04000593          	li	a1,64
     530:	00000513          	li	a0,0
     534:	00112e23          	sw	ra,28(sp)
     538:	00000097          	auipc	ra,0x0
     53c:	e04080e7          	jalr	-508(ra) # 33c <fill_rect_gray>
     540:	000067b7          	lui	a5,0x6
     544:	fff00713          	li	a4,-1
     548:	00000593          	li	a1,0
     54c:	0ff00513          	li	a0,255
     550:	a6e7a423          	sw	a4,-1432(a5) # 5a68 <g_last_progress>
     554:	00002097          	auipc	ra,0x2
     558:	bc4080e7          	jalr	-1084(ra) # 2118 <display_set_front_back_color>
     55c:	04400593          	li	a1,68
     560:	00000513          	li	a0,0
     564:	00002097          	auipc	ra,0x2
     568:	ba0080e7          	jalr	-1120(ra) # 2104 <display_set_cursor>
     56c:	00048593          	mv	a1,s1
     570:	000064b7          	lui	s1,0x6
     574:	b0448513          	addi	a0,s1,-1276 # 5b04 <LEDS+0x4c>
     578:	00002097          	auipc	ra,0x2
     57c:	e90080e7          	jalr	-368(ra) # 2408 <printf>
     580:	00098593          	mv	a1,s3
     584:	00090513          	mv	a0,s2
     588:	00000097          	auipc	ra,0x0
     58c:	e90080e7          	jalr	-368(ra) # 418 <draw_progress_bar>
     590:	00000593          	li	a1,0
     594:	0ff00513          	li	a0,255
     598:	00002097          	auipc	ra,0x2
     59c:	b80080e7          	jalr	-1152(ra) # 2118 <display_set_front_back_color>
     5a0:	08040063          	beqz	s0,620 <update_ui+0x124>
     5a4:	00006437          	lui	s0,0x6
     5a8:	ae440413          	addi	s0,s0,-1308 # 5ae4 <LEDS+0x2c>
     5ac:	00000793          	li	a5,0
     5b0:	00f40733          	add	a4,s0,a5
     5b4:	00074703          	lbu	a4,0(a4)
     5b8:	06071a63          	bnez	a4,62c <update_ui+0x130>
     5bc:	00279713          	slli	a4,a5,0x2
     5c0:	00f70733          	add	a4,a4,a5
     5c4:	08000793          	li	a5,128
     5c8:	40e787b3          	sub	a5,a5,a4
     5cc:	fff00713          	li	a4,-1
     5d0:	00000513          	li	a0,0
     5d4:	00e7c863          	blt	a5,a4,5e4 <update_ui+0xe8>
     5d8:	01f7d513          	srli	a0,a5,0x1f
     5dc:	00f50533          	add	a0,a0,a5
     5e0:	40155513          	srai	a0,a0,0x1
     5e4:	06800593          	li	a1,104
     5e8:	00002097          	auipc	ra,0x2
     5ec:	b1c080e7          	jalr	-1252(ra) # 2104 <display_set_cursor>
     5f0:	00040593          	mv	a1,s0
     5f4:	b0448513          	addi	a0,s1,-1276
     5f8:	00002097          	auipc	ra,0x2
     5fc:	e10080e7          	jalr	-496(ra) # 2408 <printf>
     600:	01812403          	lw	s0,24(sp)
     604:	01c12083          	lw	ra,28(sp)
     608:	01412483          	lw	s1,20(sp)
     60c:	01012903          	lw	s2,16(sp)
     610:	00c12983          	lw	s3,12(sp)
     614:	02010113          	addi	sp,sp,32
     618:	00002317          	auipc	t1,0x2
     61c:	c8430067          	jr	-892(t1) # 229c <display_refresh>
     620:	00006437          	lui	s0,0x6
     624:	af440413          	addi	s0,s0,-1292 # 5af4 <LEDS+0x3c>
     628:	f85ff06f          	j	5ac <update_ui+0xb0>
     62c:	00178793          	addi	a5,a5,1
     630:	f81ff06f          	j	5b0 <update_ui+0xb4>

00000634 <file_size>:
     634:	ff010113          	addi	sp,sp,-16
     638:	00200613          	li	a2,2
     63c:	00000593          	li	a1,0
     640:	00112623          	sw	ra,12(sp)
     644:	00812423          	sw	s0,8(sp)
     648:	00912223          	sw	s1,4(sp)
     64c:	00050413          	mv	s0,a0
     650:	00002097          	auipc	ra,0x2
     654:	3f0080e7          	jalr	1008(ra) # 2a40 <fl_fseek>
     658:	00040513          	mv	a0,s0
     65c:	00002097          	auipc	ra,0x2
     660:	558080e7          	jalr	1368(ra) # 2bb4 <fl_ftell>
     664:	00050493          	mv	s1,a0
     668:	00000613          	li	a2,0
     66c:	00040513          	mv	a0,s0
     670:	00000593          	li	a1,0
     674:	00002097          	auipc	ra,0x2
     678:	3cc080e7          	jalr	972(ra) # 2a40 <fl_fseek>
     67c:	00c12083          	lw	ra,12(sp)
     680:	00812403          	lw	s0,8(sp)
     684:	00048513          	mv	a0,s1
     688:	00412483          	lw	s1,4(sp)
     68c:	01010113          	addi	sp,sp,16
     690:	00008067          	ret

00000694 <render_image_rgb.part.0>:
     694:	4015d593          	srai	a1,a1,0x1
     698:	04000793          	li	a5,64
     69c:	0ef58263          	beq	a1,a5,780 <render_image_rgb.part.0+0xec>
     6a0:	fd010113          	addi	sp,sp,-48
     6a4:	000037b7          	lui	a5,0x3
     6a8:	03212023          	sw	s2,32(sp)
     6ac:	00f58933          	add	s2,a1,a5
     6b0:	000067b7          	lui	a5,0x6
     6b4:	01412c23          	sw	s4,24(sp)
     6b8:	aa07aa03          	lw	s4,-1376(a5) # 5aa0 <RGBSEL>
     6bc:	02912223          	sw	s1,36(sp)
     6c0:	000014b7          	lui	s1,0x1
     6c4:	02812423          	sw	s0,40(sp)
     6c8:	01312e23          	sw	s3,28(sp)
     6cc:	01512a23          	sw	s5,20(sp)
     6d0:	01612823          	sw	s6,16(sp)
     6d4:	02112623          	sw	ra,44(sp)
     6d8:	01712623          	sw	s7,12(sp)
     6dc:	01812423          	sw	s8,8(sp)
     6e0:	01912223          	sw	s9,4(sp)
     6e4:	00050413          	mv	s0,a0
     6e8:	00161993          	slli	s3,a2,0x1
     6ec:	009584b3          	add	s1,a1,s1
     6f0:	00100b13          	li	s6,1
     6f4:	00200a93          	li	s5,2
     6f8:	00044c83          	lbu	s9,0(s0)
     6fc:	00244c03          	lbu	s8,2(s0)
     700:	00144b83          	lbu	s7,1(s0)
     704:	000a2023          	sw	zero,0(s4)
     708:	00002097          	auipc	ra,0x2
     70c:	9f0080e7          	jalr	-1552(ra) # 20f8 <display_framebuffer>
     710:	00950533          	add	a0,a0,s1
     714:	01950023          	sb	s9,0(a0)
     718:	016a2023          	sw	s6,0(s4)
     71c:	00002097          	auipc	ra,0x2
     720:	9dc080e7          	jalr	-1572(ra) # 20f8 <display_framebuffer>
     724:	00950533          	add	a0,a0,s1
     728:	01850023          	sb	s8,0(a0)
     72c:	015a2023          	sw	s5,0(s4)
     730:	00002097          	auipc	ra,0x2
     734:	9c8080e7          	jalr	-1592(ra) # 20f8 <display_framebuffer>
     738:	00950533          	add	a0,a0,s1
     73c:	01750023          	sb	s7,0(a0)
     740:	08048493          	addi	s1,s1,128 # 1080 <main+0x1bc>
     744:	01340433          	add	s0,s0,s3
     748:	fb2498e3          	bne	s1,s2,6f8 <render_image_rgb.part.0+0x64>
     74c:	02c12083          	lw	ra,44(sp)
     750:	02812403          	lw	s0,40(sp)
     754:	02412483          	lw	s1,36(sp)
     758:	02012903          	lw	s2,32(sp)
     75c:	01c12983          	lw	s3,28(sp)
     760:	01812a03          	lw	s4,24(sp)
     764:	01412a83          	lw	s5,20(sp)
     768:	01012b03          	lw	s6,16(sp)
     76c:	00c12b83          	lw	s7,12(sp)
     770:	00812c03          	lw	s8,8(sp)
     774:	00412c83          	lw	s9,4(sp)
     778:	03010113          	addi	sp,sp,48
     77c:	00008067          	ret
     780:	00008067          	ret

00000784 <play_file>:
     784:	737577b7          	lui	a5,0x73757
     788:	ce010113          	addi	sp,sp,-800
     78c:	d2f78793          	addi	a5,a5,-721 # 73756d2f <__stacktop+0x73746d2f>
     790:	04f12423          	sw	a5,72(sp)
     794:	000067b7          	lui	a5,0x6
     798:	36978793          	addi	a5,a5,873 # 6369 <files+0x571>
     79c:	04f11623          	sh	a5,76(sp)
     7a0:	02f00793          	li	a5,47
     7a4:	30812c23          	sw	s0,792(sp)
     7a8:	04f10723          	sb	a5,78(sp)
     7ac:	30112e23          	sw	ra,796(sp)
     7b0:	30912a23          	sw	s1,788(sp)
     7b4:	31212823          	sw	s2,784(sp)
     7b8:	31312623          	sw	s3,780(sp)
     7bc:	31412423          	sw	s4,776(sp)
     7c0:	31512223          	sw	s5,772(sp)
     7c4:	31612023          	sw	s6,768(sp)
     7c8:	2f712e23          	sw	s7,764(sp)
     7cc:	2f812c23          	sw	s8,760(sp)
     7d0:	2f912a23          	sw	s9,756(sp)
     7d4:	2fa12823          	sw	s10,752(sp)
     7d8:	2fb12623          	sw	s11,748(sp)
     7dc:	00050413          	mv	s0,a0
     7e0:	00700793          	li	a5,7
     7e4:	04900693          	li	a3,73
     7e8:	00f40733          	add	a4,s0,a5
     7ec:	ff974703          	lbu	a4,-7(a4)
     7f0:	00070663          	beqz	a4,7fc <play_file+0x78>
     7f4:	2ed79263          	bne	a5,a3,ad8 <play_file+0x354>
     7f8:	04900793          	li	a5,73
     7fc:	02010713          	addi	a4,sp,32
     800:	2c078793          	addi	a5,a5,704
     804:	000064b7          	lui	s1,0x6
     808:	00e787b3          	add	a5,a5,a4
     80c:	b0848593          	addi	a1,s1,-1272 # 5b08 <LEDS+0x50>
     810:	04810513          	addi	a0,sp,72
     814:	d6078423          	sb	zero,-664(a5)
     818:	00005097          	auipc	ra,0x5
     81c:	e7c080e7          	jalr	-388(ra) # 5694 <fl_fopen>
     820:	00a12423          	sw	a0,8(sp)
     824:	00000793          	li	a5,0
     828:	2c050263          	beqz	a0,aec <play_file+0x368>
     82c:	01900693          	li	a3,25
     830:	02e00613          	li	a2,46
     834:	05f00593          	li	a1,95
     838:	00f40733          	add	a4,s0,a5
     83c:	00074703          	lbu	a4,0(a4)
     840:	00070463          	beqz	a4,848 <play_file+0xc4>
     844:	2cd79e63          	bne	a5,a3,b20 <play_file+0x39c>
     848:	02010713          	addi	a4,sp,32
     84c:	2c078793          	addi	a5,a5,704
     850:	00e787b3          	add	a5,a5,a4
     854:	d4078623          	sb	zero,-692(a5)
     858:	00000097          	auipc	ra,0x0
     85c:	a7c080e7          	jalr	-1412(ra) # 2d4 <clear_screen>
     860:	00000097          	auipc	ra,0x0
     864:	80c080e7          	jalr	-2036(ra) # 6c <show_hourglass>
     868:	676d77b7          	lui	a5,0x676d7
     86c:	92f78793          	addi	a5,a5,-1745 # 676d692f <__stacktop+0x676c692f>
     870:	08f12a23          	sw	a5,148(sp)
     874:	02f00793          	li	a5,47
     878:	08f10c23          	sb	a5,152(sp)
     87c:	04400693          	li	a3,68
     880:	00500793          	li	a5,5
     884:	00f40733          	add	a4,s0,a5
     888:	ffb74703          	lbu	a4,-5(a4)
     88c:	00070663          	beqz	a4,898 <play_file+0x114>
     890:	2ad79863          	bne	a5,a3,b40 <play_file+0x3bc>
     894:	04400793          	li	a5,68
     898:	02010713          	addi	a4,sp,32
     89c:	2c078793          	addi	a5,a5,704
     8a0:	00e787b3          	add	a5,a5,a4
     8a4:	05f00713          	li	a4,95
     8a8:	dae78823          	sb	a4,-592(a5)
     8ac:	06900713          	li	a4,105
     8b0:	dae788a3          	sb	a4,-591(a5)
     8b4:	06d00713          	li	a4,109
     8b8:	dae78923          	sb	a4,-590(a5)
     8bc:	06700713          	li	a4,103
     8c0:	dae789a3          	sb	a4,-589(a5)
     8c4:	02e00713          	li	a4,46
     8c8:	dae78a23          	sb	a4,-588(a5)
     8cc:	07200713          	li	a4,114
     8d0:	dae78aa3          	sb	a4,-587(a5)
     8d4:	06100713          	li	a4,97
     8d8:	dae78b23          	sb	a4,-586(a5)
     8dc:	b0848593          	addi	a1,s1,-1272
     8e0:	07700713          	li	a4,119
     8e4:	09410513          	addi	a0,sp,148
     8e8:	dae78ba3          	sb	a4,-585(a5)
     8ec:	da078c23          	sb	zero,-584(a5)
     8f0:	00005097          	auipc	ra,0x5
     8f4:	da4080e7          	jalr	-604(ra) # 5694 <fl_fopen>
     8f8:	00050413          	mv	s0,a0
     8fc:	02051063          	bnez	a0,91c <play_file+0x198>
     900:	00006537          	lui	a0,0x6
     904:	b0848593          	addi	a1,s1,-1272
     908:	b1c50513          	addi	a0,a0,-1252 # 5b1c <LEDS+0x64>
     90c:	00005097          	auipc	ra,0x5
     910:	d88080e7          	jalr	-632(ra) # 5694 <fl_fopen>
     914:	00050413          	mv	s0,a0
     918:	06050c63          	beqz	a0,990 <play_file+0x20c>
     91c:	00040513          	mv	a0,s0
     920:	00000097          	auipc	ra,0x0
     924:	d14080e7          	jalr	-748(ra) # 634 <file_size>
     928:	000107b7          	lui	a5,0x10
     92c:	22f54463          	blt	a0,a5,b54 <play_file+0x3d0>
     930:	00000493          	li	s1,0
     934:	08000993          	li	s3,128
     938:	00040693          	mv	a3,s0
     93c:	20000613          	li	a2,512
     940:	00100593          	li	a1,1
     944:	0e010513          	addi	a0,sp,224
     948:	00004097          	auipc	ra,0x4
     94c:	774080e7          	jalr	1908(ra) # 50bc <fl_fread>
     950:	20000793          	li	a5,512
     954:	02f51463          	bne	a0,a5,97c <play_file+0x1f8>
     958:	0014f793          	andi	a5,s1,1
     95c:	00079c63          	bnez	a5,974 <play_file+0x1f0>
     960:	00400613          	li	a2,4
     964:	00048593          	mv	a1,s1
     968:	0e010513          	addi	a0,sp,224
     96c:	00000097          	auipc	ra,0x0
     970:	d28080e7          	jalr	-728(ra) # 694 <render_image_rgb.part.0>
     974:	00148493          	addi	s1,s1,1
     978:	fd3490e3          	bne	s1,s3,938 <play_file+0x1b4>
     97c:	00040513          	mv	a0,s0
     980:	00004097          	auipc	ra,0x4
     984:	65c080e7          	jalr	1628(ra) # 4fdc <fl_fclose>
     988:	00002097          	auipc	ra,0x2
     98c:	914080e7          	jalr	-1772(ra) # 229c <display_refresh>
     990:	fffff097          	auipc	ra,0xfffff
     994:	7a8080e7          	jalr	1960(ra) # 138 <clear_audio>
     998:	000067b7          	lui	a5,0x6
     99c:	000064b7          	lui	s1,0x6
     9a0:	aa47ab83          	lw	s7,-1372(a5) # 5aa4 <VOLUME>
     9a4:	a6c4a503          	lw	a0,-1428(s1) # 5a6c <g_volume>
     9a8:	00004db7          	lui	s11,0x4
     9ac:	00000d13          	li	s10,0
     9b0:	00aba023          	sw	a0,0(s7)
     9b4:	fffff097          	auipc	ra,0xfffff
     9b8:	668080e7          	jalr	1640(ra) # 1c <set_volume_leds>
     9bc:	00812503          	lw	a0,8(sp)
     9c0:	00000b13          	li	s6,0
     9c4:	00000a93          	li	s5,0
     9c8:	00000097          	auipc	ra,0x0
     9cc:	c6c080e7          	jalr	-916(ra) # 634 <file_size>
     9d0:	00a12623          	sw	a0,12(sp)
     9d4:	00050613          	mv	a2,a0
     9d8:	00000693          	li	a3,0
     9dc:	00000593          	li	a1,0
     9e0:	02c10513          	addi	a0,sp,44
     9e4:	00000097          	auipc	ra,0x0
     9e8:	b18080e7          	jalr	-1256(ra) # 4fc <update_ui>
     9ec:	000067b7          	lui	a5,0x6
     9f0:	aa87a783          	lw	a5,-1368(a5) # 5aa8 <BUTTONS>
     9f4:	00000913          	li	s2,0
     9f8:	00012a23          	sw	zero,20(sp)
     9fc:	0007a403          	lw	s0,0(a5)
     a00:	00f12e23          	sw	a5,28(sp)
     a04:	000067b7          	lui	a5,0x6
     a08:	a987a783          	lw	a5,-1384(a5) # 5a98 <AUDIO>
     a0c:	07e47413          	andi	s0,s0,126
     a10:	00000a13          	li	s4,0
     a14:	00000993          	li	s3,0
     a18:	00f12823          	sw	a5,16(sp)
     a1c:	e7fd8d93          	addi	s11,s11,-385 # 3e7f <fatfs_get_file_entry+0x143>
     a20:	01012783          	lw	a5,16(sp)
     a24:	0007ac03          	lw	s8,0(a5)
     a28:	220a0063          	beqz	s4,c48 <play_file+0x4c4>
     a2c:	00000793          	li	a5,0
     a30:	f8000613          	li	a2,-128
     a34:	20000713          	li	a4,512
     a38:	00fc06b3          	add	a3,s8,a5
     a3c:	00c68023          	sb	a2,0(a3)
     a40:	00178793          	addi	a5,a5,1
     a44:	fee79ae3          	bne	a5,a4,a38 <play_file+0x2b4>
     a48:	01012783          	lw	a5,16(sp)
     a4c:	0007a783          	lw	a5,0(a5)
     a50:	22fc0a63          	beq	s8,a5,c84 <play_file+0x500>
     a54:	00847c13          	andi	s8,s0,8
     a58:	3e0c0463          	beqz	s8,e40 <play_file+0x6bc>
     a5c:	01412783          	lw	a5,20(sp)
     a60:	20078c13          	addi	s8,a5,512
     a64:	000017b7          	lui	a5,0x1
     a68:	a6978793          	addi	a5,a5,-1431 # a69 <play_file+0x2e5>
     a6c:	0187da63          	bge	a5,s8,a80 <play_file+0x2fc>
     a70:	200a8a93          	addi	s5,s5,512
     a74:	31f00c93          	li	s9,799
     a78:	00700713          	li	a4,7
     a7c:	395cce63          	blt	s9,s5,e18 <play_file+0x694>
     a80:	01047c93          	andi	s9,s0,16
     a84:	3e0c8663          	beqz	s9,e70 <play_file+0x6ec>
     a88:	000017b7          	lui	a5,0x1
     a8c:	20090c93          	addi	s9,s2,512
     a90:	a6978793          	addi	a5,a5,-1431 # a69 <play_file+0x2e5>
     a94:	0197d863          	bge	a5,s9,aa4 <play_file+0x320>
     a98:	200b0b13          	addi	s6,s6,512
     a9c:	31f00713          	li	a4,799
     aa0:	3b674463          	blt	a4,s6,e48 <play_file+0x6c4>
     aa4:	001d0d13          	addi	s10,s10,1
     aa8:	020a1263          	bnez	s4,acc <play_file+0x348>
     aac:	003d7793          	andi	a5,s10,3
     ab0:	00079e63          	bnez	a5,acc <play_file+0x348>
     ab4:	00c12583          	lw	a1,12(sp)
     ab8:	00098513          	mv	a0,s3
     abc:	00000097          	auipc	ra,0x0
     ac0:	95c080e7          	jalr	-1700(ra) # 418 <draw_progress_bar>
     ac4:	00001097          	auipc	ra,0x1
     ac8:	7d8080e7          	jalr	2008(ra) # 229c <display_refresh>
     acc:	000c8913          	mv	s2,s9
     ad0:	01812a23          	sw	s8,20(sp)
     ad4:	f4dff06f          	j	a20 <play_file+0x29c>
     ad8:	04810613          	addi	a2,sp,72
     adc:	00f60633          	add	a2,a2,a5
     ae0:	00e60023          	sb	a4,0(a2) # 4000 <_open_directory+0xb8>
     ae4:	00178793          	addi	a5,a5,1
     ae8:	d01ff06f          	j	7e8 <play_file+0x64>
     aec:	00000593          	li	a1,0
     af0:	0ff00513          	li	a0,255
     af4:	00001097          	auipc	ra,0x1
     af8:	624080e7          	jalr	1572(ra) # 2118 <display_set_front_back_color>
     afc:	00006537          	lui	a0,0x6
     b00:	00040593          	mv	a1,s0
     b04:	b0c50513          	addi	a0,a0,-1268 # 5b0c <LEDS+0x54>
     b08:	00002097          	auipc	ra,0x2
     b0c:	900080e7          	jalr	-1792(ra) # 2408 <printf>
     b10:	00001097          	auipc	ra,0x1
     b14:	78c080e7          	jalr	1932(ra) # 229c <display_refresh>
     b18:	00000513          	li	a0,0
     b1c:	1e00006f          	j	cfc <play_file+0x578>
     b20:	d2c704e3          	beq	a4,a2,848 <play_file+0xc4>
     b24:	00b71463          	bne	a4,a1,b2c <play_file+0x3a8>
     b28:	02000713          	li	a4,32
     b2c:	02c10513          	addi	a0,sp,44
     b30:	00f50533          	add	a0,a0,a5
     b34:	00e50023          	sb	a4,0(a0)
     b38:	00178793          	addi	a5,a5,1
     b3c:	cfdff06f          	j	838 <play_file+0xb4>
     b40:	09410613          	addi	a2,sp,148
     b44:	00f60633          	add	a2,a2,a5
     b48:	00e60023          	sb	a4,0(a2)
     b4c:	00178793          	addi	a5,a5,1
     b50:	d35ff06f          	j	884 <play_file+0x100>
     b54:	0000c7b7          	lui	a5,0xc
     b58:	04f54a63          	blt	a0,a5,bac <play_file+0x428>
     b5c:	00000493          	li	s1,0
     b60:	08000993          	li	s3,128
     b64:	00040693          	mv	a3,s0
     b68:	18000613          	li	a2,384
     b6c:	00100593          	li	a1,1
     b70:	0e010513          	addi	a0,sp,224
     b74:	00004097          	auipc	ra,0x4
     b78:	548080e7          	jalr	1352(ra) # 50bc <fl_fread>
     b7c:	18000793          	li	a5,384
     b80:	def51ee3          	bne	a0,a5,97c <play_file+0x1f8>
     b84:	0014f793          	andi	a5,s1,1
     b88:	00079c63          	bnez	a5,ba0 <play_file+0x41c>
     b8c:	00300613          	li	a2,3
     b90:	00048593          	mv	a1,s1
     b94:	0e010513          	addi	a0,sp,224
     b98:	00000097          	auipc	ra,0x0
     b9c:	afc080e7          	jalr	-1284(ra) # 694 <render_image_rgb.part.0>
     ba0:	00148493          	addi	s1,s1,1
     ba4:	fd3490e3          	bne	s1,s3,b64 <play_file+0x3e0>
     ba8:	dd5ff06f          	j	97c <play_file+0x1f8>
     bac:	000047b7          	lui	a5,0x4
     bb0:	dcf546e3          	blt	a0,a5,97c <play_file+0x1f8>
     bb4:	000067b7          	lui	a5,0x6
     bb8:	aa07ac83          	lw	s9,-1376(a5) # 5aa0 <RGBSEL>
     bbc:	00000493          	li	s1,0
     bc0:	00001bb7          	lui	s7,0x1
     bc4:	00003c37          	lui	s8,0x3
     bc8:	00300d13          	li	s10,3
     bcc:	00040693          	mv	a3,s0
     bd0:	08000613          	li	a2,128
     bd4:	00100593          	li	a1,1
     bd8:	0e010513          	addi	a0,sp,224
     bdc:	00004097          	auipc	ra,0x4
     be0:	4e0080e7          	jalr	1248(ra) # 50bc <fl_fread>
     be4:	08000793          	li	a5,128
     be8:	d8f51ae3          	bne	a0,a5,97c <play_file+0x1f8>
     bec:	0014f793          	andi	a5,s1,1
     bf0:	00078a63          	beqz	a5,c04 <play_file+0x480>
     bf4:	00148493          	addi	s1,s1,1
     bf8:	08000793          	li	a5,128
     bfc:	fcf498e3          	bne	s1,a5,bcc <play_file+0x448>
     c00:	d7dff06f          	j	97c <play_file+0x1f8>
     c04:	4014d793          	srai	a5,s1,0x1
     c08:	0e010b13          	addi	s6,sp,224
     c0c:	01778a33          	add	s4,a5,s7
     c10:	018789b3          	add	s3,a5,s8
     c14:	000b4d83          	lbu	s11,0(s6)
     c18:	00000a93          	li	s5,0
     c1c:	015ca023          	sw	s5,0(s9)
     c20:	00001097          	auipc	ra,0x1
     c24:	4d8080e7          	jalr	1240(ra) # 20f8 <display_framebuffer>
     c28:	01450533          	add	a0,a0,s4
     c2c:	01b50023          	sb	s11,0(a0)
     c30:	001a8a93          	addi	s5,s5,1
     c34:	ffaa94e3          	bne	s5,s10,c1c <play_file+0x498>
     c38:	080a0a13          	addi	s4,s4,128
     c3c:	002b0b13          	addi	s6,s6,2
     c40:	fd3a1ae3          	bne	s4,s3,c14 <play_file+0x490>
     c44:	fb1ff06f          	j	bf4 <play_file+0x470>
     c48:	00812683          	lw	a3,8(sp)
     c4c:	20000613          	li	a2,512
     c50:	00100593          	li	a1,1
     c54:	000c0513          	mv	a0,s8
     c58:	00004097          	auipc	ra,0x4
     c5c:	464080e7          	jalr	1124(ra) # 50bc <fl_fread>
     c60:	20a05c63          	blez	a0,e78 <play_file+0x6f4>
     c64:	00a989b3          	add	s3,s3,a0
     c68:	1ff00793          	li	a5,511
     c6c:	f8000713          	li	a4,-128
     c70:	dca7cce3          	blt	a5,a0,a48 <play_file+0x2c4>
     c74:	00ac06b3          	add	a3,s8,a0
     c78:	00e68023          	sb	a4,0(a3)
     c7c:	00150513          	addi	a0,a0,1
     c80:	ff1ff06f          	j	c70 <play_file+0x4ec>
     c84:	01c12783          	lw	a5,28(sp)
     c88:	fff44413          	not	s0,s0
     c8c:	0007ac83          	lw	s9,0(a5)
     c90:	07ecfc93          	andi	s9,s9,126
     c94:	01947433          	and	s0,s0,s9
     c98:	00447793          	andi	a5,s0,4
     c9c:	02078a63          	beqz	a5,cd0 <play_file+0x54c>
     ca0:	001a4793          	xori	a5,s4,1
     ca4:	00f12c23          	sw	a5,24(sp)
     ca8:	000a1663          	bnez	s4,cb4 <play_file+0x530>
     cac:	fffff097          	auipc	ra,0xfffff
     cb0:	48c080e7          	jalr	1164(ra) # 138 <clear_audio>
     cb4:	01812683          	lw	a3,24(sp)
     cb8:	00c12603          	lw	a2,12(sp)
     cbc:	00098593          	mv	a1,s3
     cc0:	02c10513          	addi	a0,sp,44
     cc4:	00000097          	auipc	ra,0x0
     cc8:	838080e7          	jalr	-1992(ra) # 4fc <update_ui>
     ccc:	01812a03          	lw	s4,24(sp)
     cd0:	02047793          	andi	a5,s0,32
     cd4:	08078a63          	beqz	a5,d68 <play_file+0x5e4>
     cd8:	073dc063          	blt	s11,s3,d38 <play_file+0x5b4>
     cdc:	00812503          	lw	a0,8(sp)
     ce0:	00004097          	auipc	ra,0x4
     ce4:	2fc080e7          	jalr	764(ra) # 4fdc <fl_fclose>
     ce8:	fffff097          	auipc	ra,0xfffff
     cec:	450080e7          	jalr	1104(ra) # 138 <clear_audio>
     cf0:	fffff097          	auipc	ra,0xfffff
     cf4:	5e4080e7          	jalr	1508(ra) # 2d4 <clear_screen>
     cf8:	fff00513          	li	a0,-1
     cfc:	31c12083          	lw	ra,796(sp)
     d00:	31812403          	lw	s0,792(sp)
     d04:	31412483          	lw	s1,788(sp)
     d08:	31012903          	lw	s2,784(sp)
     d0c:	30c12983          	lw	s3,780(sp)
     d10:	30812a03          	lw	s4,776(sp)
     d14:	30412a83          	lw	s5,772(sp)
     d18:	30012b03          	lw	s6,768(sp)
     d1c:	2fc12b83          	lw	s7,764(sp)
     d20:	2f812c03          	lw	s8,760(sp)
     d24:	2f412c83          	lw	s9,756(sp)
     d28:	2f012d03          	lw	s10,752(sp)
     d2c:	2ec12d83          	lw	s11,748(sp)
     d30:	32010113          	addi	sp,sp,800
     d34:	00008067          	ret
     d38:	00812503          	lw	a0,8(sp)
     d3c:	00000613          	li	a2,0
     d40:	00000593          	li	a1,0
     d44:	00002097          	auipc	ra,0x2
     d48:	cfc080e7          	jalr	-772(ra) # 2a40 <fl_fseek>
     d4c:	00c12603          	lw	a2,12(sp)
     d50:	000a0693          	mv	a3,s4
     d54:	00000593          	li	a1,0
     d58:	02c10513          	addi	a0,sp,44
     d5c:	fffff097          	auipc	ra,0xfffff
     d60:	7a0080e7          	jalr	1952(ra) # 4fc <update_ui>
     d64:	00000993          	li	s3,0
     d68:	04047793          	andi	a5,s0,64
     d6c:	02078463          	beqz	a5,d94 <play_file+0x610>
     d70:	00812503          	lw	a0,8(sp)
     d74:	00004097          	auipc	ra,0x4
     d78:	268080e7          	jalr	616(ra) # 4fdc <fl_fclose>
     d7c:	fffff097          	auipc	ra,0xfffff
     d80:	3bc080e7          	jalr	956(ra) # 138 <clear_audio>
     d84:	fffff097          	auipc	ra,0xfffff
     d88:	550080e7          	jalr	1360(ra) # 2d4 <clear_screen>
     d8c:	00100513          	li	a0,1
     d90:	f6dff06f          	j	cfc <play_file+0x578>
     d94:	00847793          	andi	a5,s0,8
     d98:	02078463          	beqz	a5,dc0 <play_file+0x63c>
     d9c:	a6c4a783          	lw	a5,-1428(s1)
     da0:	00700713          	li	a4,7
     da4:	00f74663          	blt	a4,a5,db0 <play_file+0x62c>
     da8:	00178793          	addi	a5,a5,1
     dac:	a6f4a623          	sw	a5,-1428(s1)
     db0:	a6c4a503          	lw	a0,-1428(s1)
     db4:	00aba023          	sw	a0,0(s7) # 1000 <main+0x13c>
     db8:	fffff097          	auipc	ra,0xfffff
     dbc:	264080e7          	jalr	612(ra) # 1c <set_volume_leds>
     dc0:	01047793          	andi	a5,s0,16
     dc4:	02078263          	beqz	a5,de8 <play_file+0x664>
     dc8:	a6c4a783          	lw	a5,-1428(s1)
     dcc:	00f05663          	blez	a5,dd8 <play_file+0x654>
     dd0:	fff78793          	addi	a5,a5,-1
     dd4:	a6f4a623          	sw	a5,-1428(s1)
     dd8:	a6c4a503          	lw	a0,-1428(s1)
     ddc:	00aba023          	sw	a0,0(s7)
     de0:	fffff097          	auipc	ra,0xfffff
     de4:	23c080e7          	jalr	572(ra) # 1c <set_volume_leds>
     de8:	00247413          	andi	s0,s0,2
     dec:	02040263          	beqz	s0,e10 <play_file+0x68c>
     df0:	00812503          	lw	a0,8(sp)
     df4:	00004097          	auipc	ra,0x4
     df8:	1e8080e7          	jalr	488(ra) # 4fdc <fl_fclose>
     dfc:	fffff097          	auipc	ra,0xfffff
     e00:	33c080e7          	jalr	828(ra) # 138 <clear_audio>
     e04:	fffff097          	auipc	ra,0xfffff
     e08:	4d0080e7          	jalr	1232(ra) # 2d4 <clear_screen>
     e0c:	d0dff06f          	j	b18 <play_file+0x394>
     e10:	000c8413          	mv	s0,s9
     e14:	c35ff06f          	j	a48 <play_file+0x2c4>
     e18:	a6c4a783          	lw	a5,-1428(s1)
     e1c:	00f74663          	blt	a4,a5,e28 <play_file+0x6a4>
     e20:	00178793          	addi	a5,a5,1
     e24:	a6f4a623          	sw	a5,-1428(s1)
     e28:	a6c4a503          	lw	a0,-1428(s1)
     e2c:	ce0a8a93          	addi	s5,s5,-800
     e30:	00aba023          	sw	a0,0(s7)
     e34:	fffff097          	auipc	ra,0xfffff
     e38:	1e8080e7          	jalr	488(ra) # 1c <set_volume_leds>
     e3c:	c3dff06f          	j	a78 <play_file+0x2f4>
     e40:	00000a93          	li	s5,0
     e44:	c3dff06f          	j	a80 <play_file+0x2fc>
     e48:	a6c4a783          	lw	a5,-1428(s1)
     e4c:	00f05663          	blez	a5,e58 <play_file+0x6d4>
     e50:	fff78793          	addi	a5,a5,-1
     e54:	a6f4a623          	sw	a5,-1428(s1)
     e58:	a6c4a503          	lw	a0,-1428(s1)
     e5c:	ce0b0b13          	addi	s6,s6,-800
     e60:	00aba023          	sw	a0,0(s7)
     e64:	fffff097          	auipc	ra,0xfffff
     e68:	1b8080e7          	jalr	440(ra) # 1c <set_volume_leds>
     e6c:	c31ff06f          	j	a9c <play_file+0x318>
     e70:	00000b13          	li	s6,0
     e74:	c31ff06f          	j	aa4 <play_file+0x320>
     e78:	00812503          	lw	a0,8(sp)
     e7c:	00004097          	auipc	ra,0x4
     e80:	160080e7          	jalr	352(ra) # 4fdc <fl_fclose>
     e84:	fffff097          	auipc	ra,0xfffff
     e88:	2b4080e7          	jalr	692(ra) # 138 <clear_audio>
     e8c:	fffff097          	auipc	ra,0xfffff
     e90:	448080e7          	jalr	1096(ra) # 2d4 <clear_screen>
     e94:	00000593          	li	a1,0
     e98:	0ff00513          	li	a0,255
     e9c:	00001097          	auipc	ra,0x1
     ea0:	27c080e7          	jalr	636(ra) # 2118 <display_set_front_back_color>
     ea4:	00006537          	lui	a0,0x6
     ea8:	b2c50513          	addi	a0,a0,-1236 # 5b2c <LEDS+0x74>
     eac:	00001097          	auipc	ra,0x1
     eb0:	55c080e7          	jalr	1372(ra) # 2408 <printf>
     eb4:	00001097          	auipc	ra,0x1
     eb8:	3e8080e7          	jalr	1000(ra) # 229c <display_refresh>
     ebc:	00200513          	li	a0,2
     ec0:	e3dff06f          	j	cfc <play_file+0x578>

00000ec4 <main>:
     ec4:	000067b7          	lui	a5,0x6
     ec8:	ab87a783          	lw	a5,-1352(a5) # 5ab8 <LEDS>
     ecc:	fc010113          	addi	sp,sp,-64
     ed0:	02112e23          	sw	ra,60(sp)
     ed4:	02812c23          	sw	s0,56(sp)
     ed8:	02912a23          	sw	s1,52(sp)
     edc:	03212823          	sw	s2,48(sp)
     ee0:	03312623          	sw	s3,44(sp)
     ee4:	03412423          	sw	s4,40(sp)
     ee8:	03512223          	sw	s5,36(sp)
     eec:	03612023          	sw	s6,32(sp)
     ef0:	01712e23          	sw	s7,28(sp)
     ef4:	01812c23          	sw	s8,24(sp)
     ef8:	01912a23          	sw	s9,20(sp)
     efc:	01a12823          	sw	s10,16(sp)
     f00:	01b12623          	sw	s11,12(sp)
     f04:	0007a023          	sw	zero,0(a5)
     f08:	000067b7          	lui	a5,0x6
     f0c:	a6c7a703          	lw	a4,-1428(a5) # 5a6c <g_volume>
     f10:	000067b7          	lui	a5,0x6
     f14:	aa47a783          	lw	a5,-1372(a5) # 5aa4 <VOLUME>
     f18:	00000413          	li	s0,0
     f1c:	00002937          	lui	s2,0x2
     f20:	00e7a023          	sw	a4,0(a5)
     f24:	000027b7          	lui	a5,0x2
     f28:	00006737          	lui	a4,0x6
     f2c:	12c78793          	addi	a5,a5,300 # 212c <display_putchar>
     f30:	dcf72e23          	sw	a5,-548(a4) # 5ddc <f_putchar>
     f34:	00001097          	auipc	ra,0x1
     f38:	0a4080e7          	jalr	164(ra) # 1fd8 <oled_init>
     f3c:	00001097          	auipc	ra,0x1
     f40:	0a8080e7          	jalr	168(ra) # 1fe4 <oled_fullscreen>
     f44:	00000513          	li	a0,0
     f48:	00001097          	auipc	ra,0x1
     f4c:	134080e7          	jalr	308(ra) # 207c <oled_clear>
     f50:	000024b7          	lui	s1,0x2
     f54:	00001097          	auipc	ra,0x1
     f58:	bc8080e7          	jalr	-1080(ra) # 1b1c <sdcard_init>
     f5c:	00002097          	auipc	ra,0x2
     f60:	a74080e7          	jalr	-1420(ra) # 29d0 <fl_init>
     f64:	fffff097          	auipc	ra,0xfffff
     f68:	370080e7          	jalr	880(ra) # 2d4 <clear_screen>
     f6c:	fffff097          	auipc	ra,0xfffff
     f70:	100080e7          	jalr	256(ra) # 6c <show_hourglass>
     f74:	d3890593          	addi	a1,s2,-712 # 1d38 <sdcard_writesector>
     f78:	ce448513          	addi	a0,s1,-796 # 1ce4 <sdcard_readsector>
     f7c:	00003097          	auipc	ra,0x3
     f80:	a88080e7          	jalr	-1400(ra) # 3a04 <fl_attach_media>
     f84:	0c051a63          	bnez	a0,1058 <main+0x194>
     f88:	fffff097          	auipc	ra,0xfffff
     f8c:	1b0080e7          	jalr	432(ra) # 138 <clear_audio>
     f90:	fffff097          	auipc	ra,0xfffff
     f94:	220080e7          	jalr	544(ra) # 1b0 <scan_files>
     f98:	000067b7          	lui	a5,0x6
     f9c:	aa87aa03          	lw	s4,-1368(a5) # 5aa8 <BUTTONS>
     fa0:	00006ab7          	lui	s5,0x6
     fa4:	00000413          	li	s0,0
     fa8:	000a2483          	lw	s1,0(s4)
     fac:	00006bb7          	lui	s7,0x6
     fb0:	00006937          	lui	s2,0x6
     fb4:	07e4f493          	andi	s1,s1,126
     fb8:	00006c37          	lui	s8,0x6
     fbc:	00006cb7          	lui	s9,0x6
     fc0:	df8a8b13          	addi	s6,s5,-520 # 5df8 <files>
     fc4:	00100d13          	li	s10,1
     fc8:	fffff097          	auipc	ra,0xfffff
     fcc:	30c080e7          	jalr	780(ra) # 2d4 <clear_screen>
     fd0:	00000593          	li	a1,0
     fd4:	00000513          	li	a0,0
     fd8:	00001097          	auipc	ra,0x1
     fdc:	12c080e7          	jalr	300(ra) # 2104 <display_set_cursor>
     fe0:	0ff00593          	li	a1,255
     fe4:	00000513          	li	a0,0
     fe8:	00001097          	auipc	ra,0x1
     fec:	130080e7          	jalr	304(ra) # 2118 <display_set_front_back_color>
     ff0:	b34b8513          	addi	a0,s7,-1228 # 5b34 <LEDS+0x7c>
     ff4:	00001097          	auipc	ra,0x1
     ff8:	414080e7          	jalr	1044(ra) # 2408 <printf>
     ffc:	00000593          	li	a1,0
    1000:	0ff00513          	li	a0,255
    1004:	00001097          	auipc	ra,0x1
    1008:	114080e7          	jalr	276(ra) # 2118 <display_set_front_back_color>
    100c:	dc892783          	lw	a5,-568(s2) # 5dc8 <file_count>
    1010:	06078063          	beqz	a5,1070 <main+0x1ac>
    1014:	df8a8d93          	addi	s11,s5,-520
    1018:	00000993          	li	s3,0
    101c:	dc892783          	lw	a5,-568(s2)
    1020:	04f9de63          	bge	s3,a5,107c <main+0x1b8>
    1024:	0f341863          	bne	s0,s3,1114 <main+0x250>
    1028:	0ff00593          	li	a1,255
    102c:	00000513          	li	a0,0
    1030:	00001097          	auipc	ra,0x1
    1034:	0e8080e7          	jalr	232(ra) # 2118 <display_set_front_back_color>
    1038:	000d8613          	mv	a2,s11
    103c:	00098593          	mv	a1,s3
    1040:	b64c8513          	addi	a0,s9,-1180 # 5b64 <LEDS+0xac>
    1044:	00001097          	auipc	ra,0x1
    1048:	3c4080e7          	jalr	964(ra) # 2408 <printf>
    104c:	00198993          	addi	s3,s3,1
    1050:	040d8d93          	addi	s11,s11,64
    1054:	fc9ff06f          	j	101c <main+0x158>
    1058:	3ff47793          	andi	a5,s0,1023
    105c:	00079663          	bnez	a5,1068 <main+0x1a4>
    1060:	fffff097          	auipc	ra,0xfffff
    1064:	00c080e7          	jalr	12(ra) # 6c <show_hourglass>
    1068:	00140413          	addi	s0,s0,1
    106c:	f09ff06f          	j	f74 <main+0xb0>
    1070:	b50c0513          	addi	a0,s8,-1200 # 5b50 <LEDS+0x98>
    1074:	00001097          	auipc	ra,0x1
    1078:	394080e7          	jalr	916(ra) # 2408 <printf>
    107c:	00001097          	auipc	ra,0x1
    1080:	220080e7          	jalr	544(ra) # 229c <display_refresh>
    1084:	000a2983          	lw	s3,0(s4)
    1088:	fff4c493          	not	s1,s1
    108c:	07e9f993          	andi	s3,s3,126
    1090:	0134f4b3          	and	s1,s1,s3
    1094:	0084f793          	andi	a5,s1,8
    1098:	02078063          	beqz	a5,10b8 <main+0x1f4>
    109c:	dc892583          	lw	a1,-568(s2)
    10a0:	00058c63          	beqz	a1,10b8 <main+0x1f4>
    10a4:	fff40513          	addi	a0,s0,-1
    10a8:	00b50533          	add	a0,a0,a1
    10ac:	00001097          	auipc	ra,0x1
    10b0:	d18080e7          	jalr	-744(ra) # 1dc4 <__modsi3>
    10b4:	00050413          	mv	s0,a0
    10b8:	0104f793          	andi	a5,s1,16
    10bc:	00078e63          	beqz	a5,10d8 <main+0x214>
    10c0:	dc892583          	lw	a1,-568(s2)
    10c4:	00058a63          	beqz	a1,10d8 <main+0x214>
    10c8:	00140513          	addi	a0,s0,1
    10cc:	00001097          	auipc	ra,0x1
    10d0:	cf8080e7          	jalr	-776(ra) # 1dc4 <__modsi3>
    10d4:	00050413          	mv	s0,a0
    10d8:	0024f493          	andi	s1,s1,2
    10dc:	02048863          	beqz	s1,110c <main+0x248>
    10e0:	dc892783          	lw	a5,-568(s2)
    10e4:	02f05463          	blez	a5,110c <main+0x248>
    10e8:	00641513          	slli	a0,s0,0x6
    10ec:	00ab0533          	add	a0,s6,a0
    10f0:	fffff097          	auipc	ra,0xfffff
    10f4:	694080e7          	jalr	1684(ra) # 784 <play_file>
    10f8:	00150793          	addi	a5,a0,1
    10fc:	ffd7f793          	andi	a5,a5,-3
    1100:	00079663          	bnez	a5,110c <main+0x248>
    1104:	dc892583          	lw	a1,-568(s2)
    1108:	00b04c63          	bgtz	a1,1120 <main+0x25c>
    110c:	00098493          	mv	s1,s3
    1110:	ec1ff06f          	j	fd0 <main+0x10c>
    1114:	00000593          	li	a1,0
    1118:	0ff00513          	li	a0,255
    111c:	f15ff06f          	j	1030 <main+0x16c>
    1120:	01a51c63          	bne	a0,s10,1138 <main+0x274>
    1124:	00140513          	addi	a0,s0,1
    1128:	00001097          	auipc	ra,0x1
    112c:	c9c080e7          	jalr	-868(ra) # 1dc4 <__modsi3>
    1130:	00050413          	mv	s0,a0
    1134:	fb5ff06f          	j	10e8 <main+0x224>
    1138:	fff40513          	addi	a0,s0,-1
    113c:	00b50533          	add	a0,a0,a1
    1140:	fe9ff06f          	j	1128 <main+0x264>

00001144 <sdcard_ponder>:
    1144:	fe010113          	addi	sp,sp,-32
    1148:	00812e23          	sw	s0,28(sp)
    114c:	02010413          	addi	s0,sp,32
    1150:	fe042623          	sw	zero,-20(s0)
    1154:	fe042423          	sw	zero,-24(s0)
    1158:	0380006f          	j	1190 <sdcard_ponder+0x4c>
    115c:	000067b7          	lui	a5,0x6
    1160:	aac7a783          	lw	a5,-1364(a5) # 5aac <SDCARD>
    1164:	fec42703          	lw	a4,-20(s0)
    1168:	00676713          	ori	a4,a4,6
    116c:	00e7a023          	sw	a4,0(a5)
    1170:	00100713          	li	a4,1
    1174:	fec42783          	lw	a5,-20(s0)
    1178:	40f707b3          	sub	a5,a4,a5
    117c:	fef42623          	sw	a5,-20(s0)
    1180:	00000013          	nop
    1184:	fe842783          	lw	a5,-24(s0)
    1188:	00178793          	addi	a5,a5,1
    118c:	fef42423          	sw	a5,-24(s0)
    1190:	fe842703          	lw	a4,-24(s0)
    1194:	00f00793          	li	a5,15
    1198:	fce7d2e3          	bge	a5,a4,115c <sdcard_ponder+0x18>
    119c:	00000013          	nop
    11a0:	00000013          	nop
    11a4:	01c12403          	lw	s0,28(sp)
    11a8:	02010113          	addi	sp,sp,32
    11ac:	00008067          	ret

000011b0 <sdcard_send>:
    11b0:	fd010113          	addi	sp,sp,-48
    11b4:	02112623          	sw	ra,44(sp)
    11b8:	02812423          	sw	s0,40(sp)
    11bc:	03010413          	addi	s0,sp,48
    11c0:	fca42e23          	sw	a0,-36(s0)
    11c4:	fe042623          	sw	zero,-20(s0)
    11c8:	fe042423          	sw	zero,-24(s0)
    11cc:	fdc42783          	lw	a5,-36(s0)
    11d0:	fef42223          	sw	a5,-28(s0)
    11d4:	fe442783          	lw	a5,-28(s0)
    11d8:	4077d793          	srai	a5,a5,0x7
    11dc:	0017f793          	andi	a5,a5,1
    11e0:	fef42423          	sw	a5,-24(s0)
    11e4:	fec42783          	lw	a5,-20(s0)
    11e8:	fe442703          	lw	a4,-28(s0)
    11ec:	00f717b3          	sll	a5,a4,a5
    11f0:	fef42223          	sw	a5,-28(s0)
    11f4:	fe842783          	lw	a5,-24(s0)
    11f8:	00179693          	slli	a3,a5,0x1
    11fc:	000067b7          	lui	a5,0x6
    1200:	aac7a783          	lw	a5,-1364(a5) # 5aac <SDCARD>
    1204:	fec42703          	lw	a4,-20(s0)
    1208:	00e6e733          	or	a4,a3,a4
    120c:	00e7a023          	sw	a4,0(a5)
    1210:	00100713          	li	a4,1
    1214:	fec42783          	lw	a5,-20(s0)
    1218:	40f707b3          	sub	a5,a4,a5
    121c:	fef42623          	sw	a5,-20(s0)
    1220:	fe442783          	lw	a5,-28(s0)
    1224:	4077d793          	srai	a5,a5,0x7
    1228:	0017f793          	andi	a5,a5,1
    122c:	fef42423          	sw	a5,-24(s0)
    1230:	fec42783          	lw	a5,-20(s0)
    1234:	fe442703          	lw	a4,-28(s0)
    1238:	00f717b3          	sll	a5,a4,a5
    123c:	fef42223          	sw	a5,-28(s0)
    1240:	fe842783          	lw	a5,-24(s0)
    1244:	00179693          	slli	a3,a5,0x1
    1248:	000067b7          	lui	a5,0x6
    124c:	aac7a783          	lw	a5,-1364(a5) # 5aac <SDCARD>
    1250:	fec42703          	lw	a4,-20(s0)
    1254:	00e6e733          	or	a4,a3,a4
    1258:	00e7a023          	sw	a4,0(a5)
    125c:	00100713          	li	a4,1
    1260:	fec42783          	lw	a5,-20(s0)
    1264:	40f707b3          	sub	a5,a4,a5
    1268:	fef42623          	sw	a5,-20(s0)
    126c:	fe442783          	lw	a5,-28(s0)
    1270:	4077d793          	srai	a5,a5,0x7
    1274:	0017f793          	andi	a5,a5,1
    1278:	fef42423          	sw	a5,-24(s0)
    127c:	fec42783          	lw	a5,-20(s0)
    1280:	fe442703          	lw	a4,-28(s0)
    1284:	00f717b3          	sll	a5,a4,a5
    1288:	fef42223          	sw	a5,-28(s0)
    128c:	fe842783          	lw	a5,-24(s0)
    1290:	00179693          	slli	a3,a5,0x1
    1294:	000067b7          	lui	a5,0x6
    1298:	aac7a783          	lw	a5,-1364(a5) # 5aac <SDCARD>
    129c:	fec42703          	lw	a4,-20(s0)
    12a0:	00e6e733          	or	a4,a3,a4
    12a4:	00e7a023          	sw	a4,0(a5)
    12a8:	00100713          	li	a4,1
    12ac:	fec42783          	lw	a5,-20(s0)
    12b0:	40f707b3          	sub	a5,a4,a5
    12b4:	fef42623          	sw	a5,-20(s0)
    12b8:	fe442783          	lw	a5,-28(s0)
    12bc:	4077d793          	srai	a5,a5,0x7
    12c0:	0017f793          	andi	a5,a5,1
    12c4:	fef42423          	sw	a5,-24(s0)
    12c8:	fec42783          	lw	a5,-20(s0)
    12cc:	fe442703          	lw	a4,-28(s0)
    12d0:	00f717b3          	sll	a5,a4,a5
    12d4:	fef42223          	sw	a5,-28(s0)
    12d8:	fe842783          	lw	a5,-24(s0)
    12dc:	00179693          	slli	a3,a5,0x1
    12e0:	000067b7          	lui	a5,0x6
    12e4:	aac7a783          	lw	a5,-1364(a5) # 5aac <SDCARD>
    12e8:	fec42703          	lw	a4,-20(s0)
    12ec:	00e6e733          	or	a4,a3,a4
    12f0:	00e7a023          	sw	a4,0(a5)
    12f4:	00100713          	li	a4,1
    12f8:	fec42783          	lw	a5,-20(s0)
    12fc:	40f707b3          	sub	a5,a4,a5
    1300:	fef42623          	sw	a5,-20(s0)
    1304:	fe442783          	lw	a5,-28(s0)
    1308:	4077d793          	srai	a5,a5,0x7
    130c:	0017f793          	andi	a5,a5,1
    1310:	fef42423          	sw	a5,-24(s0)
    1314:	fec42783          	lw	a5,-20(s0)
    1318:	fe442703          	lw	a4,-28(s0)
    131c:	00f717b3          	sll	a5,a4,a5
    1320:	fef42223          	sw	a5,-28(s0)
    1324:	fe842783          	lw	a5,-24(s0)
    1328:	00179693          	slli	a3,a5,0x1
    132c:	000067b7          	lui	a5,0x6
    1330:	aac7a783          	lw	a5,-1364(a5) # 5aac <SDCARD>
    1334:	fec42703          	lw	a4,-20(s0)
    1338:	00e6e733          	or	a4,a3,a4
    133c:	00e7a023          	sw	a4,0(a5)
    1340:	00100713          	li	a4,1
    1344:	fec42783          	lw	a5,-20(s0)
    1348:	40f707b3          	sub	a5,a4,a5
    134c:	fef42623          	sw	a5,-20(s0)
    1350:	fe442783          	lw	a5,-28(s0)
    1354:	4077d793          	srai	a5,a5,0x7
    1358:	0017f793          	andi	a5,a5,1
    135c:	fef42423          	sw	a5,-24(s0)
    1360:	fec42783          	lw	a5,-20(s0)
    1364:	fe442703          	lw	a4,-28(s0)
    1368:	00f717b3          	sll	a5,a4,a5
    136c:	fef42223          	sw	a5,-28(s0)
    1370:	fe842783          	lw	a5,-24(s0)
    1374:	00179693          	slli	a3,a5,0x1
    1378:	000067b7          	lui	a5,0x6
    137c:	aac7a783          	lw	a5,-1364(a5) # 5aac <SDCARD>
    1380:	fec42703          	lw	a4,-20(s0)
    1384:	00e6e733          	or	a4,a3,a4
    1388:	00e7a023          	sw	a4,0(a5)
    138c:	00100713          	li	a4,1
    1390:	fec42783          	lw	a5,-20(s0)
    1394:	40f707b3          	sub	a5,a4,a5
    1398:	fef42623          	sw	a5,-20(s0)
    139c:	fe442783          	lw	a5,-28(s0)
    13a0:	4077d793          	srai	a5,a5,0x7
    13a4:	0017f793          	andi	a5,a5,1
    13a8:	fef42423          	sw	a5,-24(s0)
    13ac:	fec42783          	lw	a5,-20(s0)
    13b0:	fe442703          	lw	a4,-28(s0)
    13b4:	00f717b3          	sll	a5,a4,a5
    13b8:	fef42223          	sw	a5,-28(s0)
    13bc:	fe842783          	lw	a5,-24(s0)
    13c0:	00179693          	slli	a3,a5,0x1
    13c4:	000067b7          	lui	a5,0x6
    13c8:	aac7a783          	lw	a5,-1364(a5) # 5aac <SDCARD>
    13cc:	fec42703          	lw	a4,-20(s0)
    13d0:	00e6e733          	or	a4,a3,a4
    13d4:	00e7a023          	sw	a4,0(a5)
    13d8:	00100713          	li	a4,1
    13dc:	fec42783          	lw	a5,-20(s0)
    13e0:	40f707b3          	sub	a5,a4,a5
    13e4:	fef42623          	sw	a5,-20(s0)
    13e8:	fe442783          	lw	a5,-28(s0)
    13ec:	4077d793          	srai	a5,a5,0x7
    13f0:	0017f793          	andi	a5,a5,1
    13f4:	fef42423          	sw	a5,-24(s0)
    13f8:	fec42783          	lw	a5,-20(s0)
    13fc:	fe442703          	lw	a4,-28(s0)
    1400:	00f717b3          	sll	a5,a4,a5
    1404:	fef42223          	sw	a5,-28(s0)
    1408:	fe842783          	lw	a5,-24(s0)
    140c:	00179693          	slli	a3,a5,0x1
    1410:	000067b7          	lui	a5,0x6
    1414:	aac7a783          	lw	a5,-1364(a5) # 5aac <SDCARD>
    1418:	fec42703          	lw	a4,-20(s0)
    141c:	00e6e733          	or	a4,a3,a4
    1420:	00e7a023          	sw	a4,0(a5)
    1424:	00100713          	li	a4,1
    1428:	fec42783          	lw	a5,-20(s0)
    142c:	40f707b3          	sub	a5,a4,a5
    1430:	fef42623          	sw	a5,-20(s0)
    1434:	fe442783          	lw	a5,-28(s0)
    1438:	4077d793          	srai	a5,a5,0x7
    143c:	0017f793          	andi	a5,a5,1
    1440:	fef42423          	sw	a5,-24(s0)
    1444:	fec42783          	lw	a5,-20(s0)
    1448:	fe442703          	lw	a4,-28(s0)
    144c:	00f717b3          	sll	a5,a4,a5
    1450:	fef42223          	sw	a5,-28(s0)
    1454:	fe842783          	lw	a5,-24(s0)
    1458:	00179693          	slli	a3,a5,0x1
    145c:	000067b7          	lui	a5,0x6
    1460:	aac7a783          	lw	a5,-1364(a5) # 5aac <SDCARD>
    1464:	fec42703          	lw	a4,-20(s0)
    1468:	00e6e733          	or	a4,a3,a4
    146c:	00e7a023          	sw	a4,0(a5)
    1470:	00100713          	li	a4,1
    1474:	fec42783          	lw	a5,-20(s0)
    1478:	40f707b3          	sub	a5,a4,a5
    147c:	fef42623          	sw	a5,-20(s0)
    1480:	fe442783          	lw	a5,-28(s0)
    1484:	4077d793          	srai	a5,a5,0x7
    1488:	0017f793          	andi	a5,a5,1
    148c:	fef42423          	sw	a5,-24(s0)
    1490:	fec42783          	lw	a5,-20(s0)
    1494:	fe442703          	lw	a4,-28(s0)
    1498:	00f717b3          	sll	a5,a4,a5
    149c:	fef42223          	sw	a5,-28(s0)
    14a0:	fe842783          	lw	a5,-24(s0)
    14a4:	00179693          	slli	a3,a5,0x1
    14a8:	000067b7          	lui	a5,0x6
    14ac:	aac7a783          	lw	a5,-1364(a5) # 5aac <SDCARD>
    14b0:	fec42703          	lw	a4,-20(s0)
    14b4:	00e6e733          	or	a4,a3,a4
    14b8:	00e7a023          	sw	a4,0(a5)
    14bc:	00100713          	li	a4,1
    14c0:	fec42783          	lw	a5,-20(s0)
    14c4:	40f707b3          	sub	a5,a4,a5
    14c8:	fef42623          	sw	a5,-20(s0)
    14cc:	fe442783          	lw	a5,-28(s0)
    14d0:	4077d793          	srai	a5,a5,0x7
    14d4:	0017f793          	andi	a5,a5,1
    14d8:	fef42423          	sw	a5,-24(s0)
    14dc:	fec42783          	lw	a5,-20(s0)
    14e0:	fe442703          	lw	a4,-28(s0)
    14e4:	00f717b3          	sll	a5,a4,a5
    14e8:	fef42223          	sw	a5,-28(s0)
    14ec:	fe842783          	lw	a5,-24(s0)
    14f0:	00179693          	slli	a3,a5,0x1
    14f4:	000067b7          	lui	a5,0x6
    14f8:	aac7a783          	lw	a5,-1364(a5) # 5aac <SDCARD>
    14fc:	fec42703          	lw	a4,-20(s0)
    1500:	00e6e733          	or	a4,a3,a4
    1504:	00e7a023          	sw	a4,0(a5)
    1508:	00100713          	li	a4,1
    150c:	fec42783          	lw	a5,-20(s0)
    1510:	40f707b3          	sub	a5,a4,a5
    1514:	fef42623          	sw	a5,-20(s0)
    1518:	fe442783          	lw	a5,-28(s0)
    151c:	4077d793          	srai	a5,a5,0x7
    1520:	0017f793          	andi	a5,a5,1
    1524:	fef42423          	sw	a5,-24(s0)
    1528:	fec42783          	lw	a5,-20(s0)
    152c:	fe442703          	lw	a4,-28(s0)
    1530:	00f717b3          	sll	a5,a4,a5
    1534:	fef42223          	sw	a5,-28(s0)
    1538:	fe842783          	lw	a5,-24(s0)
    153c:	00179693          	slli	a3,a5,0x1
    1540:	000067b7          	lui	a5,0x6
    1544:	aac7a783          	lw	a5,-1364(a5) # 5aac <SDCARD>
    1548:	fec42703          	lw	a4,-20(s0)
    154c:	00e6e733          	or	a4,a3,a4
    1550:	00e7a023          	sw	a4,0(a5)
    1554:	00100713          	li	a4,1
    1558:	fec42783          	lw	a5,-20(s0)
    155c:	40f707b3          	sub	a5,a4,a5
    1560:	fef42623          	sw	a5,-20(s0)
    1564:	fe442783          	lw	a5,-28(s0)
    1568:	4077d793          	srai	a5,a5,0x7
    156c:	0017f793          	andi	a5,a5,1
    1570:	fef42423          	sw	a5,-24(s0)
    1574:	fec42783          	lw	a5,-20(s0)
    1578:	fe442703          	lw	a4,-28(s0)
    157c:	00f717b3          	sll	a5,a4,a5
    1580:	fef42223          	sw	a5,-28(s0)
    1584:	fe842783          	lw	a5,-24(s0)
    1588:	00179693          	slli	a3,a5,0x1
    158c:	000067b7          	lui	a5,0x6
    1590:	aac7a783          	lw	a5,-1364(a5) # 5aac <SDCARD>
    1594:	fec42703          	lw	a4,-20(s0)
    1598:	00e6e733          	or	a4,a3,a4
    159c:	00e7a023          	sw	a4,0(a5)
    15a0:	00100713          	li	a4,1
    15a4:	fec42783          	lw	a5,-20(s0)
    15a8:	40f707b3          	sub	a5,a4,a5
    15ac:	fef42623          	sw	a5,-20(s0)
    15b0:	fe442783          	lw	a5,-28(s0)
    15b4:	4077d793          	srai	a5,a5,0x7
    15b8:	0017f793          	andi	a5,a5,1
    15bc:	fef42423          	sw	a5,-24(s0)
    15c0:	fec42783          	lw	a5,-20(s0)
    15c4:	fe442703          	lw	a4,-28(s0)
    15c8:	00f717b3          	sll	a5,a4,a5
    15cc:	fef42223          	sw	a5,-28(s0)
    15d0:	fe842783          	lw	a5,-24(s0)
    15d4:	00179693          	slli	a3,a5,0x1
    15d8:	000067b7          	lui	a5,0x6
    15dc:	aac7a783          	lw	a5,-1364(a5) # 5aac <SDCARD>
    15e0:	fec42703          	lw	a4,-20(s0)
    15e4:	00e6e733          	or	a4,a3,a4
    15e8:	00e7a023          	sw	a4,0(a5)
    15ec:	00100713          	li	a4,1
    15f0:	fec42783          	lw	a5,-20(s0)
    15f4:	40f707b3          	sub	a5,a4,a5
    15f8:	fef42623          	sw	a5,-20(s0)
    15fc:	fe442783          	lw	a5,-28(s0)
    1600:	4077d793          	srai	a5,a5,0x7
    1604:	0017f793          	andi	a5,a5,1
    1608:	fef42423          	sw	a5,-24(s0)
    160c:	fec42783          	lw	a5,-20(s0)
    1610:	fe442703          	lw	a4,-28(s0)
    1614:	00f717b3          	sll	a5,a4,a5
    1618:	fef42223          	sw	a5,-28(s0)
    161c:	fe842783          	lw	a5,-24(s0)
    1620:	00179693          	slli	a3,a5,0x1
    1624:	000067b7          	lui	a5,0x6
    1628:	aac7a783          	lw	a5,-1364(a5) # 5aac <SDCARD>
    162c:	fec42703          	lw	a4,-20(s0)
    1630:	00e6e733          	or	a4,a3,a4
    1634:	00e7a023          	sw	a4,0(a5)
    1638:	00100713          	li	a4,1
    163c:	fec42783          	lw	a5,-20(s0)
    1640:	40f707b3          	sub	a5,a4,a5
    1644:	fef42623          	sw	a5,-20(s0)
    1648:	fe442783          	lw	a5,-28(s0)
    164c:	4077d793          	srai	a5,a5,0x7
    1650:	0017f793          	andi	a5,a5,1
    1654:	fef42423          	sw	a5,-24(s0)
    1658:	fec42783          	lw	a5,-20(s0)
    165c:	fe442703          	lw	a4,-28(s0)
    1660:	00f717b3          	sll	a5,a4,a5
    1664:	fef42223          	sw	a5,-28(s0)
    1668:	fe842783          	lw	a5,-24(s0)
    166c:	00179693          	slli	a3,a5,0x1
    1670:	000067b7          	lui	a5,0x6
    1674:	aac7a783          	lw	a5,-1364(a5) # 5aac <SDCARD>
    1678:	fec42703          	lw	a4,-20(s0)
    167c:	00e6e733          	or	a4,a3,a4
    1680:	00e7a023          	sw	a4,0(a5)
    1684:	00100713          	li	a4,1
    1688:	fec42783          	lw	a5,-20(s0)
    168c:	40f707b3          	sub	a5,a4,a5
    1690:	fef42623          	sw	a5,-20(s0)
    1694:	000067b7          	lui	a5,0x6
    1698:	aac7a783          	lw	a5,-1364(a5) # 5aac <SDCARD>
    169c:	00200713          	li	a4,2
    16a0:	00e7a023          	sw	a4,0(a5)
    16a4:	000067b7          	lui	a5,0x6
    16a8:	dcc7a783          	lw	a5,-564(a5) # 5dcc <sdcard_while_loading_callback>
    16ac:	000780e7          	jalr	a5
    16b0:	00000013          	nop
    16b4:	02c12083          	lw	ra,44(sp)
    16b8:	02812403          	lw	s0,40(sp)
    16bc:	03010113          	addi	sp,sp,48
    16c0:	00008067          	ret

000016c4 <sdcard_read>:
    16c4:	fc010113          	addi	sp,sp,-64
    16c8:	02112e23          	sw	ra,60(sp)
    16cc:	02812c23          	sw	s0,56(sp)
    16d0:	04010413          	addi	s0,sp,64
    16d4:	00050793          	mv	a5,a0
    16d8:	00058713          	mv	a4,a1
    16dc:	fcf407a3          	sb	a5,-49(s0)
    16e0:	00070793          	mv	a5,a4
    16e4:	fcf40723          	sb	a5,-50(s0)
    16e8:	fce44783          	lbu	a5,-50(s0)
    16ec:	fef42223          	sw	a5,-28(s0)
    16f0:	fcf44783          	lbu	a5,-49(s0)
    16f4:	fef42023          	sw	a5,-32(s0)
    16f8:	fe042623          	sw	zero,-20(s0)
    16fc:	0ff00793          	li	a5,255
    1700:	fef42423          	sw	a5,-24(s0)
    1704:	0600006f          	j	1764 <sdcard_read+0xa0>
    1708:	000067b7          	lui	a5,0x6
    170c:	aac7a783          	lw	a5,-1364(a5) # 5aac <SDCARD>
    1710:	00300713          	li	a4,3
    1714:	00e7a023          	sw	a4,0(a5)
    1718:	fec42783          	lw	a5,-20(s0)
    171c:	00178793          	addi	a5,a5,1
    1720:	fef42623          	sw	a5,-20(s0)
    1724:	000067b7          	lui	a5,0x6
    1728:	aac7a783          	lw	a5,-1364(a5) # 5aac <SDCARD>
    172c:	00200713          	li	a4,2
    1730:	00e7a023          	sw	a4,0(a5)
    1734:	000067b7          	lui	a5,0x6
    1738:	aac7a783          	lw	a5,-1364(a5) # 5aac <SDCARD>
    173c:	0007a783          	lw	a5,0(a5)
    1740:	fcf42e23          	sw	a5,-36(s0)
    1744:	fe842783          	lw	a5,-24(s0)
    1748:	00179793          	slli	a5,a5,0x1
    174c:	fdc42703          	lw	a4,-36(s0)
    1750:	00f767b3          	or	a5,a4,a5
    1754:	fef42423          	sw	a5,-24(s0)
    1758:	000067b7          	lui	a5,0x6
    175c:	dcc7a783          	lw	a5,-564(a5) # 5dcc <sdcard_while_loading_callback>
    1760:	000780e7          	jalr	a5
    1764:	fe442783          	lw	a5,-28(s0)
    1768:	00078e63          	beqz	a5,1784 <sdcard_read+0xc0>
    176c:	fe042783          	lw	a5,-32(s0)
    1770:	fff78793          	addi	a5,a5,-1
    1774:	fe842703          	lw	a4,-24(s0)
    1778:	40f757b3          	sra	a5,a4,a5
    177c:	0017f793          	andi	a5,a5,1
    1780:	f80794e3          	bnez	a5,1708 <sdcard_read+0x44>
    1784:	fe442783          	lw	a5,-28(s0)
    1788:	00079863          	bnez	a5,1798 <sdcard_read+0xd4>
    178c:	fec42703          	lw	a4,-20(s0)
    1790:	fe042783          	lw	a5,-32(s0)
    1794:	f6f74ae3          	blt	a4,a5,1708 <sdcard_read+0x44>
    1798:	fe842783          	lw	a5,-24(s0)
    179c:	0ff7f793          	zext.b	a5,a5
    17a0:	00078513          	mv	a0,a5
    17a4:	03c12083          	lw	ra,60(sp)
    17a8:	03812403          	lw	s0,56(sp)
    17ac:	04010113          	addi	sp,sp,64
    17b0:	00008067          	ret

000017b4 <sdcard_get>:
    17b4:	fd010113          	addi	sp,sp,-48
    17b8:	02112623          	sw	ra,44(sp)
    17bc:	02812423          	sw	s0,40(sp)
    17c0:	03010413          	addi	s0,sp,48
    17c4:	00050793          	mv	a5,a0
    17c8:	00058713          	mv	a4,a1
    17cc:	fcf40fa3          	sb	a5,-33(s0)
    17d0:	00070793          	mv	a5,a4
    17d4:	fcf40f23          	sb	a5,-34(s0)
    17d8:	00000097          	auipc	ra,0x0
    17dc:	4e4080e7          	jalr	1252(ra) # 1cbc <sdcard_select>
    17e0:	fde44703          	lbu	a4,-34(s0)
    17e4:	fdf44783          	lbu	a5,-33(s0)
    17e8:	00070593          	mv	a1,a4
    17ec:	00078513          	mv	a0,a5
    17f0:	00000097          	auipc	ra,0x0
    17f4:	ed4080e7          	jalr	-300(ra) # 16c4 <sdcard_read>
    17f8:	00050793          	mv	a5,a0
    17fc:	fef407a3          	sb	a5,-17(s0)
    1800:	00100793          	li	a5,1
    1804:	fef42423          	sw	a5,-24(s0)
    1808:	0280006f          	j	1830 <sdcard_get+0x7c>
    180c:	00000593          	li	a1,0
    1810:	00800513          	li	a0,8
    1814:	00000097          	auipc	ra,0x0
    1818:	eb0080e7          	jalr	-336(ra) # 16c4 <sdcard_read>
    181c:	00050793          	mv	a5,a0
    1820:	fef407a3          	sb	a5,-17(s0)
    1824:	fe842783          	lw	a5,-24(s0)
    1828:	00178793          	addi	a5,a5,1
    182c:	fef42423          	sw	a5,-24(s0)
    1830:	fdf44783          	lbu	a5,-33(s0)
    1834:	0037d793          	srli	a5,a5,0x3
    1838:	0ff7f793          	zext.b	a5,a5
    183c:	00078713          	mv	a4,a5
    1840:	fe842783          	lw	a5,-24(s0)
    1844:	fce7c4e3          	blt	a5,a4,180c <sdcard_get+0x58>
    1848:	00000097          	auipc	ra,0x0
    184c:	488080e7          	jalr	1160(ra) # 1cd0 <sdcard_unselect>
    1850:	fef44783          	lbu	a5,-17(s0)
    1854:	00078513          	mv	a0,a5
    1858:	02c12083          	lw	ra,44(sp)
    185c:	02812403          	lw	s0,40(sp)
    1860:	03010113          	addi	sp,sp,48
    1864:	00008067          	ret

00001868 <sdcard_cmd>:
    1868:	fd010113          	addi	sp,sp,-48
    186c:	02112623          	sw	ra,44(sp)
    1870:	02812423          	sw	s0,40(sp)
    1874:	03010413          	addi	s0,sp,48
    1878:	fca42e23          	sw	a0,-36(s0)
    187c:	00000097          	auipc	ra,0x0
    1880:	440080e7          	jalr	1088(ra) # 1cbc <sdcard_select>
    1884:	fe042623          	sw	zero,-20(s0)
    1888:	02c0006f          	j	18b4 <sdcard_cmd+0x4c>
    188c:	fec42783          	lw	a5,-20(s0)
    1890:	fdc42703          	lw	a4,-36(s0)
    1894:	00f707b3          	add	a5,a4,a5
    1898:	0007c783          	lbu	a5,0(a5)
    189c:	00078513          	mv	a0,a5
    18a0:	00000097          	auipc	ra,0x0
    18a4:	910080e7          	jalr	-1776(ra) # 11b0 <sdcard_send>
    18a8:	fec42783          	lw	a5,-20(s0)
    18ac:	00178793          	addi	a5,a5,1
    18b0:	fef42623          	sw	a5,-20(s0)
    18b4:	fec42703          	lw	a4,-20(s0)
    18b8:	00500793          	li	a5,5
    18bc:	fce7d8e3          	bge	a5,a4,188c <sdcard_cmd+0x24>
    18c0:	00000097          	auipc	ra,0x0
    18c4:	410080e7          	jalr	1040(ra) # 1cd0 <sdcard_unselect>
    18c8:	00000013          	nop
    18cc:	02c12083          	lw	ra,44(sp)
    18d0:	02812403          	lw	s0,40(sp)
    18d4:	03010113          	addi	sp,sp,48
    18d8:	00008067          	ret

000018dc <sdcard_start_sector>:
    18dc:	fe010113          	addi	sp,sp,-32
    18e0:	00112e23          	sw	ra,28(sp)
    18e4:	00812c23          	sw	s0,24(sp)
    18e8:	02010413          	addi	s0,sp,32
    18ec:	fea42623          	sw	a0,-20(s0)
    18f0:	00000097          	auipc	ra,0x0
    18f4:	3cc080e7          	jalr	972(ra) # 1cbc <sdcard_select>
    18f8:	05100793          	li	a5,81
    18fc:	00078513          	mv	a0,a5
    1900:	00000097          	auipc	ra,0x0
    1904:	8b0080e7          	jalr	-1872(ra) # 11b0 <sdcard_send>
    1908:	fec42783          	lw	a5,-20(s0)
    190c:	0187d793          	srli	a5,a5,0x18
    1910:	00078513          	mv	a0,a5
    1914:	00000097          	auipc	ra,0x0
    1918:	89c080e7          	jalr	-1892(ra) # 11b0 <sdcard_send>
    191c:	fec42783          	lw	a5,-20(s0)
    1920:	4107d793          	srai	a5,a5,0x10
    1924:	0ff7f793          	zext.b	a5,a5
    1928:	00078513          	mv	a0,a5
    192c:	00000097          	auipc	ra,0x0
    1930:	884080e7          	jalr	-1916(ra) # 11b0 <sdcard_send>
    1934:	fec42783          	lw	a5,-20(s0)
    1938:	4087d793          	srai	a5,a5,0x8
    193c:	0ff7f793          	zext.b	a5,a5
    1940:	00078513          	mv	a0,a5
    1944:	00000097          	auipc	ra,0x0
    1948:	86c080e7          	jalr	-1940(ra) # 11b0 <sdcard_send>
    194c:	fec42783          	lw	a5,-20(s0)
    1950:	0ff7f793          	zext.b	a5,a5
    1954:	00078513          	mv	a0,a5
    1958:	00000097          	auipc	ra,0x0
    195c:	858080e7          	jalr	-1960(ra) # 11b0 <sdcard_send>
    1960:	05500793          	li	a5,85
    1964:	00078513          	mv	a0,a5
    1968:	00000097          	auipc	ra,0x0
    196c:	848080e7          	jalr	-1976(ra) # 11b0 <sdcard_send>
    1970:	00000097          	auipc	ra,0x0
    1974:	360080e7          	jalr	864(ra) # 1cd0 <sdcard_unselect>
    1978:	fffff097          	auipc	ra,0xfffff
    197c:	7cc080e7          	jalr	1996(ra) # 1144 <sdcard_ponder>
    1980:	00100593          	li	a1,1
    1984:	00800513          	li	a0,8
    1988:	00000097          	auipc	ra,0x0
    198c:	e2c080e7          	jalr	-468(ra) # 17b4 <sdcard_get>
    1990:	00050793          	mv	a5,a0
    1994:	00078513          	mv	a0,a5
    1998:	01c12083          	lw	ra,28(sp)
    199c:	01812403          	lw	s0,24(sp)
    19a0:	02010113          	addi	sp,sp,32
    19a4:	00008067          	ret

000019a8 <sdcard_read_sector>:
    19a8:	fd010113          	addi	sp,sp,-48
    19ac:	02112623          	sw	ra,44(sp)
    19b0:	02812423          	sw	s0,40(sp)
    19b4:	03010413          	addi	s0,sp,48
    19b8:	fca42e23          	sw	a0,-36(s0)
    19bc:	fcb42c23          	sw	a1,-40(s0)
    19c0:	fdc42503          	lw	a0,-36(s0)
    19c4:	00000097          	auipc	ra,0x0
    19c8:	f18080e7          	jalr	-232(ra) # 18dc <sdcard_start_sector>
    19cc:	00050793          	mv	a5,a0
    19d0:	fef405a3          	sb	a5,-21(s0)
    19d4:	feb44783          	lbu	a5,-21(s0)
    19d8:	00078663          	beqz	a5,19e4 <sdcard_read_sector+0x3c>
    19dc:	fd842783          	lw	a5,-40(s0)
    19e0:	08c0006f          	j	1a6c <sdcard_read_sector+0xc4>
    19e4:	00100593          	li	a1,1
    19e8:	00100513          	li	a0,1
    19ec:	00000097          	auipc	ra,0x0
    19f0:	dc8080e7          	jalr	-568(ra) # 17b4 <sdcard_get>
    19f4:	fe042623          	sw	zero,-20(s0)
    19f8:	03c0006f          	j	1a34 <sdcard_read_sector+0x8c>
    19fc:	00000593          	li	a1,0
    1a00:	00800513          	li	a0,8
    1a04:	00000097          	auipc	ra,0x0
    1a08:	db0080e7          	jalr	-592(ra) # 17b4 <sdcard_get>
    1a0c:	00050793          	mv	a5,a0
    1a10:	fef401a3          	sb	a5,-29(s0)
    1a14:	fd842783          	lw	a5,-40(s0)
    1a18:	00178713          	addi	a4,a5,1
    1a1c:	fce42c23          	sw	a4,-40(s0)
    1a20:	fe344703          	lbu	a4,-29(s0)
    1a24:	00e78023          	sb	a4,0(a5)
    1a28:	fec42783          	lw	a5,-20(s0)
    1a2c:	00178793          	addi	a5,a5,1
    1a30:	fef42623          	sw	a5,-20(s0)
    1a34:	fec42703          	lw	a4,-20(s0)
    1a38:	1ff00793          	li	a5,511
    1a3c:	fce7d0e3          	bge	a5,a4,19fc <sdcard_read_sector+0x54>
    1a40:	00000593          	li	a1,0
    1a44:	01000513          	li	a0,16
    1a48:	00000097          	auipc	ra,0x0
    1a4c:	d6c080e7          	jalr	-660(ra) # 17b4 <sdcard_get>
    1a50:	00050793          	mv	a5,a0
    1a54:	fef42223          	sw	a5,-28(s0)
    1a58:	00000097          	auipc	ra,0x0
    1a5c:	278080e7          	jalr	632(ra) # 1cd0 <sdcard_unselect>
    1a60:	fffff097          	auipc	ra,0xfffff
    1a64:	6e4080e7          	jalr	1764(ra) # 1144 <sdcard_ponder>
    1a68:	fd842783          	lw	a5,-40(s0)
    1a6c:	00078513          	mv	a0,a5
    1a70:	02c12083          	lw	ra,44(sp)
    1a74:	02812403          	lw	s0,40(sp)
    1a78:	03010113          	addi	sp,sp,48
    1a7c:	00008067          	ret

00001a80 <sdcard_preinit>:
    1a80:	fe010113          	addi	sp,sp,-32
    1a84:	00112e23          	sw	ra,28(sp)
    1a88:	00812c23          	sw	s0,24(sp)
    1a8c:	02010413          	addi	s0,sp,32
    1a90:	000067b7          	lui	a5,0x6
    1a94:	aac7a783          	lw	a5,-1364(a5) # 5aac <SDCARD>
    1a98:	00600713          	li	a4,6
    1a9c:	00e7a023          	sw	a4,0(a5)
    1aa0:	013137b7          	lui	a5,0x1313
    1aa4:	d0078513          	addi	a0,a5,-768 # 1312d00 <__stacktop+0x1302d00>
    1aa8:	00000097          	auipc	ra,0x0
    1aac:	1fc080e7          	jalr	508(ra) # 1ca4 <pause>
    1ab0:	fe042623          	sw	zero,-20(s0)
    1ab4:	fe042423          	sw	zero,-24(s0)
    1ab8:	0340006f          	j	1aec <sdcard_preinit+0x6c>
    1abc:	000067b7          	lui	a5,0x6
    1ac0:	aac7a783          	lw	a5,-1364(a5) # 5aac <SDCARD>
    1ac4:	fec42703          	lw	a4,-20(s0)
    1ac8:	00676713          	ori	a4,a4,6
    1acc:	00e7a023          	sw	a4,0(a5)
    1ad0:	00100713          	li	a4,1
    1ad4:	fec42783          	lw	a5,-20(s0)
    1ad8:	40f707b3          	sub	a5,a4,a5
    1adc:	fef42623          	sw	a5,-20(s0)
    1ae0:	fe842783          	lw	a5,-24(s0)
    1ae4:	00178793          	addi	a5,a5,1
    1ae8:	fef42423          	sw	a5,-24(s0)
    1aec:	fe842703          	lw	a4,-24(s0)
    1af0:	09f00793          	li	a5,159
    1af4:	fce7d4e3          	bge	a5,a4,1abc <sdcard_preinit+0x3c>
    1af8:	000067b7          	lui	a5,0x6
    1afc:	aac7a783          	lw	a5,-1364(a5) # 5aac <SDCARD>
    1b00:	00600713          	li	a4,6
    1b04:	00e7a023          	sw	a4,0(a5)
    1b08:	00000013          	nop
    1b0c:	01c12083          	lw	ra,28(sp)
    1b10:	01812403          	lw	s0,24(sp)
    1b14:	02010113          	addi	sp,sp,32
    1b18:	00008067          	ret

00001b1c <sdcard_init>:
    1b1c:	fe010113          	addi	sp,sp,-32
    1b20:	00112e23          	sw	ra,28(sp)
    1b24:	00812c23          	sw	s0,24(sp)
    1b28:	02010413          	addi	s0,sp,32
    1b2c:	000067b7          	lui	a5,0x6
    1b30:	00002737          	lui	a4,0x2
    1b34:	cb870713          	addi	a4,a4,-840 # 1cb8 <sdcard_idle>
    1b38:	dce7a623          	sw	a4,-564(a5) # 5dcc <sdcard_while_loading_callback>
    1b3c:	00000097          	auipc	ra,0x0
    1b40:	f44080e7          	jalr	-188(ra) # 1a80 <sdcard_preinit>
    1b44:	000067b7          	lui	a5,0x6
    1b48:	a9078513          	addi	a0,a5,-1392 # 5a90 <cmd0>
    1b4c:	00000097          	auipc	ra,0x0
    1b50:	d1c080e7          	jalr	-740(ra) # 1868 <sdcard_cmd>
    1b54:	00100593          	li	a1,1
    1b58:	00800513          	li	a0,8
    1b5c:	00000097          	auipc	ra,0x0
    1b60:	c58080e7          	jalr	-936(ra) # 17b4 <sdcard_get>
    1b64:	00050793          	mv	a5,a0
    1b68:	fef407a3          	sb	a5,-17(s0)
    1b6c:	fffff097          	auipc	ra,0xfffff
    1b70:	5d8080e7          	jalr	1496(ra) # 1144 <sdcard_ponder>
    1b74:	fef44703          	lbu	a4,-17(s0)
    1b78:	0ff00793          	li	a5,255
    1b7c:	00f71c63          	bne	a4,a5,1b94 <sdcard_init+0x78>
    1b80:	013137b7          	lui	a5,0x1313
    1b84:	d0078513          	addi	a0,a5,-768 # 1312d00 <__stacktop+0x1302d00>
    1b88:	00000097          	auipc	ra,0x0
    1b8c:	11c080e7          	jalr	284(ra) # 1ca4 <pause>
    1b90:	fadff06f          	j	1b3c <sdcard_init+0x20>
    1b94:	00000013          	nop
    1b98:	000067b7          	lui	a5,0x6
    1b9c:	a8878513          	addi	a0,a5,-1400 # 5a88 <cmd8>
    1ba0:	00000097          	auipc	ra,0x0
    1ba4:	cc8080e7          	jalr	-824(ra) # 1868 <sdcard_cmd>
    1ba8:	00100593          	li	a1,1
    1bac:	02800513          	li	a0,40
    1bb0:	00000097          	auipc	ra,0x0
    1bb4:	c04080e7          	jalr	-1020(ra) # 17b4 <sdcard_get>
    1bb8:	00050793          	mv	a5,a0
    1bbc:	fef407a3          	sb	a5,-17(s0)
    1bc0:	fffff097          	auipc	ra,0xfffff
    1bc4:	584080e7          	jalr	1412(ra) # 1144 <sdcard_ponder>
    1bc8:	000067b7          	lui	a5,0x6
    1bcc:	a8078513          	addi	a0,a5,-1408 # 5a80 <cmd55>
    1bd0:	00000097          	auipc	ra,0x0
    1bd4:	c98080e7          	jalr	-872(ra) # 1868 <sdcard_cmd>
    1bd8:	00100593          	li	a1,1
    1bdc:	00800513          	li	a0,8
    1be0:	00000097          	auipc	ra,0x0
    1be4:	bd4080e7          	jalr	-1068(ra) # 17b4 <sdcard_get>
    1be8:	00050793          	mv	a5,a0
    1bec:	fef407a3          	sb	a5,-17(s0)
    1bf0:	fffff097          	auipc	ra,0xfffff
    1bf4:	554080e7          	jalr	1364(ra) # 1144 <sdcard_ponder>
    1bf8:	000067b7          	lui	a5,0x6
    1bfc:	a7878513          	addi	a0,a5,-1416 # 5a78 <acmd41>
    1c00:	00000097          	auipc	ra,0x0
    1c04:	c68080e7          	jalr	-920(ra) # 1868 <sdcard_cmd>
    1c08:	00100593          	li	a1,1
    1c0c:	00800513          	li	a0,8
    1c10:	00000097          	auipc	ra,0x0
    1c14:	ba4080e7          	jalr	-1116(ra) # 17b4 <sdcard_get>
    1c18:	00050793          	mv	a5,a0
    1c1c:	fef407a3          	sb	a5,-17(s0)
    1c20:	fffff097          	auipc	ra,0xfffff
    1c24:	524080e7          	jalr	1316(ra) # 1144 <sdcard_ponder>
    1c28:	fef44783          	lbu	a5,-17(s0)
    1c2c:	02078863          	beqz	a5,1c5c <sdcard_init+0x140>
    1c30:	00000097          	auipc	ra,0x0
    1c34:	0a0080e7          	jalr	160(ra) # 1cd0 <sdcard_unselect>
    1c38:	fffff097          	auipc	ra,0xfffff
    1c3c:	50c080e7          	jalr	1292(ra) # 1144 <sdcard_ponder>
    1c40:	001e87b7          	lui	a5,0x1e8
    1c44:	48078513          	addi	a0,a5,1152 # 1e8480 <__stacktop+0x1d8480>
    1c48:	00000097          	auipc	ra,0x0
    1c4c:	05c080e7          	jalr	92(ra) # 1ca4 <pause>
    1c50:	00000097          	auipc	ra,0x0
    1c54:	06c080e7          	jalr	108(ra) # 1cbc <sdcard_select>
    1c58:	f71ff06f          	j	1bc8 <sdcard_init+0xac>
    1c5c:	00000013          	nop
    1c60:	000067b7          	lui	a5,0x6
    1c64:	a7078513          	addi	a0,a5,-1424 # 5a70 <cmd16>
    1c68:	00000097          	auipc	ra,0x0
    1c6c:	c00080e7          	jalr	-1024(ra) # 1868 <sdcard_cmd>
    1c70:	00100593          	li	a1,1
    1c74:	00800513          	li	a0,8
    1c78:	00000097          	auipc	ra,0x0
    1c7c:	b3c080e7          	jalr	-1220(ra) # 17b4 <sdcard_get>
    1c80:	00050793          	mv	a5,a0
    1c84:	fef407a3          	sb	a5,-17(s0)
    1c88:	fffff097          	auipc	ra,0xfffff
    1c8c:	4bc080e7          	jalr	1212(ra) # 1144 <sdcard_ponder>
    1c90:	00000013          	nop
    1c94:	01c12083          	lw	ra,28(sp)
    1c98:	01812403          	lw	s0,24(sp)
    1c9c:	02010113          	addi	sp,sp,32
    1ca0:	00008067          	ret

00001ca4 <pause>:
    1ca4:	c0002773          	rdcycle	a4
    1ca8:	c00027f3          	rdcycle	a5
    1cac:	40e787b3          	sub	a5,a5,a4
    1cb0:	fea7ece3          	bltu	a5,a0,1ca8 <pause+0x4>
    1cb4:	00008067          	ret

00001cb8 <sdcard_idle>:
    1cb8:	00008067          	ret

00001cbc <sdcard_select>:
    1cbc:	000067b7          	lui	a5,0x6
    1cc0:	aac7a783          	lw	a5,-1364(a5) # 5aac <SDCARD>
    1cc4:	00200713          	li	a4,2
    1cc8:	00e7a023          	sw	a4,0(a5)
    1ccc:	00008067          	ret

00001cd0 <sdcard_unselect>:
    1cd0:	000067b7          	lui	a5,0x6
    1cd4:	aac7a783          	lw	a5,-1364(a5) # 5aac <SDCARD>
    1cd8:	00600713          	li	a4,6
    1cdc:	00e7a023          	sw	a4,0(a5)
    1ce0:	00008067          	ret

00001ce4 <sdcard_readsector>:
    1ce4:	04060663          	beqz	a2,1d30 <sdcard_readsector+0x4c>
    1ce8:	ff010113          	addi	sp,sp,-16
    1cec:	00912423          	sw	s1,8(sp)
    1cf0:	01212223          	sw	s2,4(sp)
    1cf4:	00112623          	sw	ra,12(sp)
    1cf8:	00050493          	mv	s1,a0
    1cfc:	00a60933          	add	s2,a2,a0
    1d00:	00048513          	mv	a0,s1
    1d04:	00000097          	auipc	ra,0x0
    1d08:	ca4080e7          	jalr	-860(ra) # 19a8 <sdcard_read_sector>
    1d0c:	00148493          	addi	s1,s1,1
    1d10:	00050593          	mv	a1,a0
    1d14:	fe9916e3          	bne	s2,s1,1d00 <sdcard_readsector+0x1c>
    1d18:	00c12083          	lw	ra,12(sp)
    1d1c:	00812483          	lw	s1,8(sp)
    1d20:	00412903          	lw	s2,4(sp)
    1d24:	00100513          	li	a0,1
    1d28:	01010113          	addi	sp,sp,16
    1d2c:	00008067          	ret
    1d30:	00000513          	li	a0,0
    1d34:	00008067          	ret

00001d38 <sdcard_writesector>:
    1d38:	00000513          	li	a0,0
    1d3c:	00008067          	ret

00001d40 <__divsi3>:
    1d40:	06054063          	bltz	a0,1da0 <__umodsi3+0x10>
    1d44:	0605c663          	bltz	a1,1db0 <__umodsi3+0x20>

00001d48 <__udivsi3>:
    1d48:	00058613          	mv	a2,a1
    1d4c:	00050593          	mv	a1,a0
    1d50:	fff00513          	li	a0,-1
    1d54:	02060c63          	beqz	a2,1d8c <__udivsi3+0x44>
    1d58:	00100693          	li	a3,1
    1d5c:	00b67a63          	bgeu	a2,a1,1d70 <__udivsi3+0x28>
    1d60:	00c05863          	blez	a2,1d70 <__udivsi3+0x28>
    1d64:	00161613          	slli	a2,a2,0x1
    1d68:	00169693          	slli	a3,a3,0x1
    1d6c:	feb66ae3          	bltu	a2,a1,1d60 <__udivsi3+0x18>
    1d70:	00000513          	li	a0,0
    1d74:	00c5e663          	bltu	a1,a2,1d80 <__udivsi3+0x38>
    1d78:	40c585b3          	sub	a1,a1,a2
    1d7c:	00d56533          	or	a0,a0,a3
    1d80:	0016d693          	srli	a3,a3,0x1
    1d84:	00165613          	srli	a2,a2,0x1
    1d88:	fe0696e3          	bnez	a3,1d74 <__udivsi3+0x2c>
    1d8c:	00008067          	ret

00001d90 <__umodsi3>:
    1d90:	00008293          	mv	t0,ra
    1d94:	fb5ff0ef          	jal	1d48 <__udivsi3>
    1d98:	00058513          	mv	a0,a1
    1d9c:	00028067          	jr	t0
    1da0:	40a00533          	neg	a0,a0
    1da4:	0005d863          	bgez	a1,1db4 <__umodsi3+0x24>
    1da8:	40b005b3          	neg	a1,a1
    1dac:	f95ff06f          	j	1d40 <__divsi3>
    1db0:	40b005b3          	neg	a1,a1
    1db4:	00008293          	mv	t0,ra
    1db8:	f89ff0ef          	jal	1d40 <__divsi3>
    1dbc:	40a00533          	neg	a0,a0
    1dc0:	00028067          	jr	t0

00001dc4 <__modsi3>:
    1dc4:	00008293          	mv	t0,ra
    1dc8:	0005ca63          	bltz	a1,1ddc <__modsi3+0x18>
    1dcc:	00054c63          	bltz	a0,1de4 <__modsi3+0x20>
    1dd0:	f79ff0ef          	jal	1d48 <__udivsi3>
    1dd4:	00058513          	mv	a0,a1
    1dd8:	00028067          	jr	t0
    1ddc:	40b005b3          	neg	a1,a1
    1de0:	fe0558e3          	bgez	a0,1dd0 <__modsi3+0xc>
    1de4:	40a00533          	neg	a0,a0
    1de8:	f61ff0ef          	jal	1d48 <__udivsi3>
    1dec:	40b00533          	neg	a0,a1
    1df0:	00028067          	jr	t0

00001df4 <memset>:
    1df4:	00c50633          	add	a2,a0,a2
    1df8:	00050793          	mv	a5,a0
    1dfc:	00c79463          	bne	a5,a2,1e04 <memset+0x10>
    1e00:	00008067          	ret
    1e04:	00178793          	addi	a5,a5,1
    1e08:	feb78fa3          	sb	a1,-1(a5)
    1e0c:	ff1ff06f          	j	1dfc <memset+0x8>

00001e10 <memcpy>:
    1e10:	00000793          	li	a5,0
    1e14:	00c79463          	bne	a5,a2,1e1c <memcpy+0xc>
    1e18:	00008067          	ret
    1e1c:	00f58733          	add	a4,a1,a5
    1e20:	00074683          	lbu	a3,0(a4)
    1e24:	00f50733          	add	a4,a0,a5
    1e28:	00178793          	addi	a5,a5,1
    1e2c:	00d70023          	sb	a3,0(a4)
    1e30:	fe5ff06f          	j	1e14 <memcpy+0x4>

00001e34 <strlen>:
    1e34:	00050793          	mv	a5,a0
    1e38:	00000513          	li	a0,0
    1e3c:	00a78733          	add	a4,a5,a0
    1e40:	00074703          	lbu	a4,0(a4)
    1e44:	00071463          	bnez	a4,1e4c <strlen+0x18>
    1e48:	00008067          	ret
    1e4c:	00150513          	addi	a0,a0,1
    1e50:	fedff06f          	j	1e3c <strlen+0x8>

00001e54 <strncmp>:
    1e54:	00000793          	li	a5,0
    1e58:	00c79663          	bne	a5,a2,1e64 <strncmp+0x10>
    1e5c:	00000513          	li	a0,0
    1e60:	00008067          	ret
    1e64:	00f50733          	add	a4,a0,a5
    1e68:	00074683          	lbu	a3,0(a4)
    1e6c:	00f58733          	add	a4,a1,a5
    1e70:	00074703          	lbu	a4,0(a4)
    1e74:	00e6e863          	bltu	a3,a4,1e84 <strncmp+0x30>
    1e78:	00d76a63          	bltu	a4,a3,1e8c <strncmp+0x38>
    1e7c:	00178793          	addi	a5,a5,1
    1e80:	fd9ff06f          	j	1e58 <strncmp+0x4>
    1e84:	fff00513          	li	a0,-1
    1e88:	00008067          	ret
    1e8c:	00100513          	li	a0,1
    1e90:	00008067          	ret

00001e94 <strncpy>:
    1e94:	00000793          	li	a5,0
    1e98:	00c79463          	bne	a5,a2,1ea0 <strncpy+0xc>
    1e9c:	00008067          	ret
    1ea0:	00f58733          	add	a4,a1,a5
    1ea4:	00074683          	lbu	a3,0(a4)
    1ea8:	00f50733          	add	a4,a0,a5
    1eac:	00178793          	addi	a5,a5,1
    1eb0:	00d70023          	sb	a3,0(a4)
    1eb4:	fe5ff06f          	j	1e98 <strncpy+0x4>

00001eb8 <oled_wait>:
    1eb8:	00000013          	nop
    1ebc:	00000013          	nop
    1ec0:	00000013          	nop
    1ec4:	00000013          	nop
    1ec8:	00000013          	nop
    1ecc:	00000013          	nop
    1ed0:	00000013          	nop
    1ed4:	00008067          	ret

00001ed8 <oled_init_mode>:
    1ed8:	000067b7          	lui	a5,0x6
    1edc:	ab07a703          	lw	a4,-1360(a5) # 5ab0 <OLED_RST>
    1ee0:	ff010113          	addi	sp,sp,-16
    1ee4:	00912223          	sw	s1,4(sp)
    1ee8:	00112623          	sw	ra,12(sp)
    1eec:	00812423          	sw	s0,8(sp)
    1ef0:	00072023          	sw	zero,0(a4)
    1ef4:	00050493          	mv	s1,a0
    1ef8:	00040737          	lui	a4,0x40
    1efc:	00000013          	nop
    1f00:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    1f04:	fe071ce3          	bnez	a4,1efc <oled_init_mode+0x24>
    1f08:	ab07a703          	lw	a4,-1360(a5)
    1f0c:	00100693          	li	a3,1
    1f10:	00d72023          	sw	a3,0(a4)
    1f14:	00040737          	lui	a4,0x40
    1f18:	00000013          	nop
    1f1c:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    1f20:	fe071ce3          	bnez	a4,1f18 <oled_init_mode+0x40>
    1f24:	ab07a783          	lw	a5,-1360(a5)
    1f28:	0007a023          	sw	zero,0(a5)
    1f2c:	000407b7          	lui	a5,0x40
    1f30:	00000013          	nop
    1f34:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    1f38:	fe079ce3          	bnez	a5,1f30 <oled_init_mode+0x58>
    1f3c:	00006737          	lui	a4,0x6
    1f40:	ab472783          	lw	a5,-1356(a4) # 5ab4 <OLED>
    1f44:	2af00693          	li	a3,687
    1f48:	00d7a023          	sw	a3,0(a5)
    1f4c:	000407b7          	lui	a5,0x40
    1f50:	00000013          	nop
    1f54:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    1f58:	fe079ce3          	bnez	a5,1f50 <oled_init_mode+0x78>
    1f5c:	ab472403          	lw	s0,-1356(a4)
    1f60:	2a000793          	li	a5,672
    1f64:	00f42023          	sw	a5,0(s0)
    1f68:	00000097          	auipc	ra,0x0
    1f6c:	f50080e7          	jalr	-176(ra) # 1eb8 <oled_wait>
    1f70:	4a000793          	li	a5,1184
    1f74:	00048463          	beqz	s1,1f7c <oled_init_mode+0xa4>
    1f78:	42000793          	li	a5,1056
    1f7c:	00f42023          	sw	a5,0(s0)
    1f80:	00000097          	auipc	ra,0x0
    1f84:	f38080e7          	jalr	-200(ra) # 1eb8 <oled_wait>
    1f88:	2fd00793          	li	a5,765
    1f8c:	00f42023          	sw	a5,0(s0)
    1f90:	00000097          	auipc	ra,0x0
    1f94:	f28080e7          	jalr	-216(ra) # 1eb8 <oled_wait>
    1f98:	4b100793          	li	a5,1201
    1f9c:	00f42023          	sw	a5,0(s0)
    1fa0:	00000097          	auipc	ra,0x0
    1fa4:	f18080e7          	jalr	-232(ra) # 1eb8 <oled_wait>
    1fa8:	2a200793          	li	a5,674
    1fac:	00f42023          	sw	a5,0(s0)
    1fb0:	00000097          	auipc	ra,0x0
    1fb4:	f08080e7          	jalr	-248(ra) # 1eb8 <oled_wait>
    1fb8:	40000793          	li	a5,1024
    1fbc:	00f42023          	sw	a5,0(s0)
    1fc0:	00812403          	lw	s0,8(sp)
    1fc4:	00c12083          	lw	ra,12(sp)
    1fc8:	00412483          	lw	s1,4(sp)
    1fcc:	01010113          	addi	sp,sp,16
    1fd0:	00000317          	auipc	t1,0x0
    1fd4:	ee830067          	jr	-280(t1) # 1eb8 <oled_wait>

00001fd8 <oled_init>:
    1fd8:	00000513          	li	a0,0
    1fdc:	00000317          	auipc	t1,0x0
    1fe0:	efc30067          	jr	-260(t1) # 1ed8 <oled_init_mode>

00001fe4 <oled_fullscreen>:
    1fe4:	ff010113          	addi	sp,sp,-16
    1fe8:	000067b7          	lui	a5,0x6
    1fec:	00812423          	sw	s0,8(sp)
    1ff0:	ab47a403          	lw	s0,-1356(a5) # 5ab4 <OLED>
    1ff4:	00112623          	sw	ra,12(sp)
    1ff8:	00912223          	sw	s1,4(sp)
    1ffc:	01212023          	sw	s2,0(sp)
    2000:	21500793          	li	a5,533
    2004:	00f42023          	sw	a5,0(s0)
    2008:	40000913          	li	s2,1024
    200c:	00000097          	auipc	ra,0x0
    2010:	eac080e7          	jalr	-340(ra) # 1eb8 <oled_wait>
    2014:	47f00493          	li	s1,1151
    2018:	01242023          	sw	s2,0(s0)
    201c:	00000097          	auipc	ra,0x0
    2020:	e9c080e7          	jalr	-356(ra) # 1eb8 <oled_wait>
    2024:	00942023          	sw	s1,0(s0)
    2028:	00000097          	auipc	ra,0x0
    202c:	e90080e7          	jalr	-368(ra) # 1eb8 <oled_wait>
    2030:	27500793          	li	a5,629
    2034:	00f42023          	sw	a5,0(s0)
    2038:	00000097          	auipc	ra,0x0
    203c:	e80080e7          	jalr	-384(ra) # 1eb8 <oled_wait>
    2040:	01242023          	sw	s2,0(s0)
    2044:	00000097          	auipc	ra,0x0
    2048:	e74080e7          	jalr	-396(ra) # 1eb8 <oled_wait>
    204c:	00942023          	sw	s1,0(s0)
    2050:	00000097          	auipc	ra,0x0
    2054:	e68080e7          	jalr	-408(ra) # 1eb8 <oled_wait>
    2058:	25c00793          	li	a5,604
    205c:	00f42023          	sw	a5,0(s0)
    2060:	00812403          	lw	s0,8(sp)
    2064:	00c12083          	lw	ra,12(sp)
    2068:	00412483          	lw	s1,4(sp)
    206c:	00012903          	lw	s2,0(sp)
    2070:	01010113          	addi	sp,sp,16
    2074:	00000317          	auipc	t1,0x0
    2078:	e4430067          	jr	-444(t1) # 1eb8 <oled_wait>

0000207c <oled_clear>:
    207c:	fe010113          	addi	sp,sp,-32
    2080:	000067b7          	lui	a5,0x6
    2084:	01312623          	sw	s3,12(sp)
    2088:	ab47a983          	lw	s3,-1356(a5) # 5ab4 <OLED>
    208c:	00812c23          	sw	s0,24(sp)
    2090:	01212823          	sw	s2,16(sp)
    2094:	00112e23          	sw	ra,28(sp)
    2098:	00912a23          	sw	s1,20(sp)
    209c:	08000913          	li	s2,128
    20a0:	40056413          	ori	s0,a0,1024
    20a4:	08000493          	li	s1,128
    20a8:	0089a023          	sw	s0,0(s3)
    20ac:	00000097          	auipc	ra,0x0
    20b0:	e0c080e7          	jalr	-500(ra) # 1eb8 <oled_wait>
    20b4:	0089a023          	sw	s0,0(s3)
    20b8:	00000097          	auipc	ra,0x0
    20bc:	e00080e7          	jalr	-512(ra) # 1eb8 <oled_wait>
    20c0:	fff48493          	addi	s1,s1,-1
    20c4:	0089a023          	sw	s0,0(s3)
    20c8:	00000097          	auipc	ra,0x0
    20cc:	df0080e7          	jalr	-528(ra) # 1eb8 <oled_wait>
    20d0:	fc049ce3          	bnez	s1,20a8 <oled_clear+0x2c>
    20d4:	fff90913          	addi	s2,s2,-1
    20d8:	fc0916e3          	bnez	s2,20a4 <oled_clear+0x28>
    20dc:	01c12083          	lw	ra,28(sp)
    20e0:	01812403          	lw	s0,24(sp)
    20e4:	01412483          	lw	s1,20(sp)
    20e8:	01012903          	lw	s2,16(sp)
    20ec:	00c12983          	lw	s3,12(sp)
    20f0:	02010113          	addi	sp,sp,32
    20f4:	00008067          	ret

000020f8 <display_framebuffer>:
    20f8:	000067b7          	lui	a5,0x6
    20fc:	a9c7a503          	lw	a0,-1380(a5) # 5a9c <DISPLAY>
    2100:	00008067          	ret

00002104 <display_set_cursor>:
    2104:	000067b7          	lui	a5,0x6
    2108:	dca7ac23          	sw	a0,-552(a5) # 5dd8 <cursor_x>
    210c:	000067b7          	lui	a5,0x6
    2110:	dcb7aa23          	sw	a1,-556(a5) # 5dd4 <cursor_y>
    2114:	00008067          	ret

00002118 <display_set_front_back_color>:
    2118:	000067b7          	lui	a5,0x6
    211c:	dca788a3          	sb	a0,-559(a5) # 5dd1 <front_color>
    2120:	000067b7          	lui	a5,0x6
    2124:	dcb78823          	sb	a1,-560(a5) # 5dd0 <back_color>
    2128:	00008067          	ret

0000212c <display_putchar>:
    212c:	00a00793          	li	a5,10
    2130:	00006737          	lui	a4,0x6
    2134:	02f51663          	bne	a0,a5,2160 <display_putchar+0x34>
    2138:	dc072c23          	sw	zero,-552(a4) # 5dd8 <cursor_x>
    213c:	00006737          	lui	a4,0x6
    2140:	dd472783          	lw	a5,-556(a4) # 5dd4 <cursor_y>
    2144:	00878793          	addi	a5,a5,8
    2148:	dcf72a23          	sw	a5,-556(a4)
    214c:	07f00713          	li	a4,127
    2150:	00f75663          	bge	a4,a5,215c <display_putchar+0x30>
    2154:	000067b7          	lui	a5,0x6
    2158:	dc07aa23          	sw	zero,-556(a5) # 5dd4 <cursor_y>
    215c:	00008067          	ret
    2160:	ff010113          	addi	sp,sp,-16
    2164:	00812623          	sw	s0,12(sp)
    2168:	00912423          	sw	s1,8(sp)
    216c:	01f00793          	li	a5,31
    2170:	0ea7d263          	bge	a5,a0,2254 <display_putchar+0x128>
    2174:	00006f37          	lui	t5,0x6
    2178:	dd4f2783          	lw	a5,-556(t5) # 5dd4 <cursor_y>
    217c:	08000593          	li	a1,128
    2180:	40f585b3          	sub	a1,a1,a5
    2184:	00800793          	li	a5,8
    2188:	00b7d463          	bge	a5,a1,2190 <display_putchar+0x64>
    218c:	00800593          	li	a1,8
    2190:	dd872783          	lw	a5,-552(a4)
    2194:	08000813          	li	a6,128
    2198:	40f80833          	sub	a6,a6,a5
    219c:	00500793          	li	a5,5
    21a0:	0107d463          	bge	a5,a6,21a8 <display_putchar+0x7c>
    21a4:	00500813          	li	a6,5
    21a8:	000067b7          	lui	a5,0x6
    21ac:	aa07ae03          	lw	t3,-1376(a5) # 5aa0 <RGBSEL>
    21b0:	000067b7          	lui	a5,0x6
    21b4:	a9c7a283          	lw	t0,-1380(a5) # 5a9c <DISPLAY>
    21b8:	00251693          	slli	a3,a0,0x2
    21bc:	000067b7          	lui	a5,0x6
    21c0:	00a686b3          	add	a3,a3,a0
    21c4:	bb478793          	addi	a5,a5,-1100 # 5bb4 <font>
    21c8:	00f686b3          	add	a3,a3,a5
    21cc:	00000613          	li	a2,0
    21d0:	00100e93          	li	t4,1
    21d4:	000063b7          	lui	t2,0x6
    21d8:	00006437          	lui	s0,0x6
    21dc:	00200493          	li	s1,2
    21e0:	06b65a63          	bge	a2,a1,2254 <display_putchar+0x128>
    21e4:	00ce9fb3          	sll	t6,t4,a2
    21e8:	00068313          	mv	t1,a3
    21ec:	00000893          	li	a7,0
    21f0:	04c0006f          	j	223c <display_putchar+0x110>
    21f4:	dd4f2783          	lw	a5,-556(t5)
    21f8:	00a88533          	add	a0,a7,a0
    21fc:	00751513          	slli	a0,a0,0x7
    2200:	00f607b3          	add	a5,a2,a5
    2204:	00a787b3          	add	a5,a5,a0
    2208:	f6034503          	lbu	a0,-160(t1)
    220c:	01f57533          	and	a0,a0,t6
    2210:	02050e63          	beqz	a0,224c <display_putchar+0x120>
    2214:	dd144503          	lbu	a0,-559(s0) # 5dd1 <front_color>
    2218:	000e2023          	sw	zero,0(t3)
    221c:	00f287b3          	add	a5,t0,a5
    2220:	00a78023          	sb	a0,0(a5)
    2224:	01de2023          	sw	t4,0(t3)
    2228:	00a78023          	sb	a0,0(a5)
    222c:	009e2023          	sw	s1,0(t3)
    2230:	00a78023          	sb	a0,0(a5)
    2234:	00188893          	addi	a7,a7,1
    2238:	00130313          	addi	t1,t1,1
    223c:	dd872503          	lw	a0,-552(a4)
    2240:	fb08cae3          	blt	a7,a6,21f4 <display_putchar+0xc8>
    2244:	00160613          	addi	a2,a2,1
    2248:	f99ff06f          	j	21e0 <display_putchar+0xb4>
    224c:	dd03c503          	lbu	a0,-560(t2) # 5dd0 <back_color>
    2250:	fc9ff06f          	j	2218 <display_putchar+0xec>
    2254:	dd872783          	lw	a5,-552(a4)
    2258:	07f00693          	li	a3,127
    225c:	00578793          	addi	a5,a5,5
    2260:	00f6c663          	blt	a3,a5,226c <display_putchar+0x140>
    2264:	dcf72c23          	sw	a5,-552(a4)
    2268:	0240006f          	j	228c <display_putchar+0x160>
    226c:	dc072c23          	sw	zero,-552(a4)
    2270:	00006737          	lui	a4,0x6
    2274:	dd472783          	lw	a5,-556(a4) # 5dd4 <cursor_y>
    2278:	00878793          	addi	a5,a5,8
    227c:	dcf72a23          	sw	a5,-556(a4)
    2280:	00f6d663          	bge	a3,a5,228c <display_putchar+0x160>
    2284:	000067b7          	lui	a5,0x6
    2288:	dc07aa23          	sw	zero,-556(a5) # 5dd4 <cursor_y>
    228c:	00c12403          	lw	s0,12(sp)
    2290:	00812483          	lw	s1,8(sp)
    2294:	01010113          	addi	sp,sp,16
    2298:	00008067          	ret

0000229c <display_refresh>:
    229c:	00008067          	ret

000022a0 <print_string>:
    22a0:	ff010113          	addi	sp,sp,-16
    22a4:	00812423          	sw	s0,8(sp)
    22a8:	00912223          	sw	s1,4(sp)
    22ac:	00112623          	sw	ra,12(sp)
    22b0:	00050413          	mv	s0,a0
    22b4:	000064b7          	lui	s1,0x6
    22b8:	00044503          	lbu	a0,0(s0)
    22bc:	00051c63          	bnez	a0,22d4 <print_string+0x34>
    22c0:	00c12083          	lw	ra,12(sp)
    22c4:	00812403          	lw	s0,8(sp)
    22c8:	00412483          	lw	s1,4(sp)
    22cc:	01010113          	addi	sp,sp,16
    22d0:	00008067          	ret
    22d4:	ddc4a783          	lw	a5,-548(s1) # 5ddc <f_putchar>
    22d8:	00140413          	addi	s0,s0,1
    22dc:	000780e7          	jalr	a5
    22e0:	fd9ff06f          	j	22b8 <print_string+0x18>

000022e4 <print_dec>:
    22e4:	ef010113          	addi	sp,sp,-272
    22e8:	10812423          	sw	s0,264(sp)
    22ec:	10912223          	sw	s1,260(sp)
    22f0:	10112623          	sw	ra,268(sp)
    22f4:	11212023          	sw	s2,256(sp)
    22f8:	00050413          	mv	s0,a0
    22fc:	000064b7          	lui	s1,0x6
    2300:	08045063          	bgez	s0,2380 <print_dec+0x9c>
    2304:	ddc4a783          	lw	a5,-548(s1) # 5ddc <f_putchar>
    2308:	02d00513          	li	a0,45
    230c:	40800433          	neg	s0,s0
    2310:	000780e7          	jalr	a5
    2314:	fedff06f          	j	2300 <print_dec+0x1c>
    2318:	00040513          	mv	a0,s0
    231c:	00a00593          	li	a1,10
    2320:	00000097          	auipc	ra,0x0
    2324:	a20080e7          	jalr	-1504(ra) # 1d40 <__divsi3>
    2328:	00251793          	slli	a5,a0,0x2
    232c:	00f507b3          	add	a5,a0,a5
    2330:	00179793          	slli	a5,a5,0x1
    2334:	40f40433          	sub	s0,s0,a5
    2338:	00148493          	addi	s1,s1,1
    233c:	fe848fa3          	sb	s0,-1(s1)
    2340:	00050413          	mv	s0,a0
    2344:	fc041ae3          	bnez	s0,2318 <print_dec+0x34>
    2348:	fd2488e3          	beq	s1,s2,2318 <print_dec+0x34>
    234c:	00006437          	lui	s0,0x6
    2350:	fff4c503          	lbu	a0,-1(s1)
    2354:	ddc42783          	lw	a5,-548(s0) # 5ddc <f_putchar>
    2358:	fff48493          	addi	s1,s1,-1
    235c:	03050513          	addi	a0,a0,48
    2360:	000780e7          	jalr	a5
    2364:	ff2496e3          	bne	s1,s2,2350 <print_dec+0x6c>
    2368:	10c12083          	lw	ra,268(sp)
    236c:	10812403          	lw	s0,264(sp)
    2370:	10412483          	lw	s1,260(sp)
    2374:	10012903          	lw	s2,256(sp)
    2378:	11010113          	addi	sp,sp,272
    237c:	00008067          	ret
    2380:	00010493          	mv	s1,sp
    2384:	00048913          	mv	s2,s1
    2388:	fbdff06f          	j	2344 <print_dec+0x60>

0000238c <print_hex_digits>:
    238c:	fe010113          	addi	sp,sp,-32
    2390:	00812c23          	sw	s0,24(sp)
    2394:	01212823          	sw	s2,16(sp)
    2398:	fff58413          	addi	s0,a1,-1
    239c:	00006937          	lui	s2,0x6
    23a0:	00912a23          	sw	s1,20(sp)
    23a4:	01312623          	sw	s3,12(sp)
    23a8:	00112e23          	sw	ra,28(sp)
    23ac:	00050493          	mv	s1,a0
    23b0:	00241413          	slli	s0,s0,0x2
    23b4:	b6c90913          	addi	s2,s2,-1172 # 5b6c <LEDS+0xb4>
    23b8:	000069b7          	lui	s3,0x6
    23bc:	02045063          	bgez	s0,23dc <print_hex_digits+0x50>
    23c0:	01c12083          	lw	ra,28(sp)
    23c4:	01812403          	lw	s0,24(sp)
    23c8:	01412483          	lw	s1,20(sp)
    23cc:	01012903          	lw	s2,16(sp)
    23d0:	00c12983          	lw	s3,12(sp)
    23d4:	02010113          	addi	sp,sp,32
    23d8:	00008067          	ret
    23dc:	0084d7b3          	srl	a5,s1,s0
    23e0:	00f7f793          	andi	a5,a5,15
    23e4:	00f907b3          	add	a5,s2,a5
    23e8:	ddc9a703          	lw	a4,-548(s3) # 5ddc <f_putchar>
    23ec:	0007c503          	lbu	a0,0(a5)
    23f0:	ffc40413          	addi	s0,s0,-4
    23f4:	000700e7          	jalr	a4
    23f8:	fc5ff06f          	j	23bc <print_hex_digits+0x30>

000023fc <print_hex>:
    23fc:	00800593          	li	a1,8
    2400:	00000317          	auipc	t1,0x0
    2404:	f8c30067          	jr	-116(t1) # 238c <print_hex_digits>

00002408 <printf>:
    2408:	fb010113          	addi	sp,sp,-80
    240c:	04f12223          	sw	a5,68(sp)
    2410:	03410793          	addi	a5,sp,52
    2414:	02812423          	sw	s0,40(sp)
    2418:	02912223          	sw	s1,36(sp)
    241c:	03212023          	sw	s2,32(sp)
    2420:	01312e23          	sw	s3,28(sp)
    2424:	01412c23          	sw	s4,24(sp)
    2428:	01512a23          	sw	s5,20(sp)
    242c:	01612823          	sw	s6,16(sp)
    2430:	02112623          	sw	ra,44(sp)
    2434:	00050413          	mv	s0,a0
    2438:	02b12a23          	sw	a1,52(sp)
    243c:	02c12c23          	sw	a2,56(sp)
    2440:	02d12e23          	sw	a3,60(sp)
    2444:	04e12023          	sw	a4,64(sp)
    2448:	05012423          	sw	a6,72(sp)
    244c:	05112623          	sw	a7,76(sp)
    2450:	00f12623          	sw	a5,12(sp)
    2454:	02500913          	li	s2,37
    2458:	000064b7          	lui	s1,0x6
    245c:	07300993          	li	s3,115
    2460:	07800a13          	li	s4,120
    2464:	06400a93          	li	s5,100
    2468:	06300b13          	li	s6,99
    246c:	00044503          	lbu	a0,0(s0)
    2470:	02051663          	bnez	a0,249c <printf+0x94>
    2474:	02c12083          	lw	ra,44(sp)
    2478:	02812403          	lw	s0,40(sp)
    247c:	02412483          	lw	s1,36(sp)
    2480:	02012903          	lw	s2,32(sp)
    2484:	01c12983          	lw	s3,28(sp)
    2488:	01812a03          	lw	s4,24(sp)
    248c:	01412a83          	lw	s5,20(sp)
    2490:	01012b03          	lw	s6,16(sp)
    2494:	05010113          	addi	sp,sp,80
    2498:	00008067          	ret
    249c:	09251863          	bne	a0,s2,252c <printf+0x124>
    24a0:	00144503          	lbu	a0,1(s0)
    24a4:	03351463          	bne	a0,s3,24cc <printf+0xc4>
    24a8:	00c12783          	lw	a5,12(sp)
    24ac:	0007a503          	lw	a0,0(a5)
    24b0:	00478713          	addi	a4,a5,4
    24b4:	00e12623          	sw	a4,12(sp)
    24b8:	00000097          	auipc	ra,0x0
    24bc:	de8080e7          	jalr	-536(ra) # 22a0 <print_string>
    24c0:	00140413          	addi	s0,s0,1
    24c4:	00140413          	addi	s0,s0,1
    24c8:	fa5ff06f          	j	246c <printf+0x64>
    24cc:	03451063          	bne	a0,s4,24ec <printf+0xe4>
    24d0:	00c12783          	lw	a5,12(sp)
    24d4:	0007a503          	lw	a0,0(a5)
    24d8:	00478713          	addi	a4,a5,4
    24dc:	00e12623          	sw	a4,12(sp)
    24e0:	00000097          	auipc	ra,0x0
    24e4:	f1c080e7          	jalr	-228(ra) # 23fc <print_hex>
    24e8:	fd9ff06f          	j	24c0 <printf+0xb8>
    24ec:	03551063          	bne	a0,s5,250c <printf+0x104>
    24f0:	00c12783          	lw	a5,12(sp)
    24f4:	0007a503          	lw	a0,0(a5)
    24f8:	00478713          	addi	a4,a5,4
    24fc:	00e12623          	sw	a4,12(sp)
    2500:	00000097          	auipc	ra,0x0
    2504:	de4080e7          	jalr	-540(ra) # 22e4 <print_dec>
    2508:	fb9ff06f          	j	24c0 <printf+0xb8>
    250c:	ddc4a783          	lw	a5,-548(s1) # 5ddc <f_putchar>
    2510:	01651a63          	bne	a0,s6,2524 <printf+0x11c>
    2514:	00c12703          	lw	a4,12(sp)
    2518:	00072503          	lw	a0,0(a4)
    251c:	00470693          	addi	a3,a4,4
    2520:	00d12623          	sw	a3,12(sp)
    2524:	000780e7          	jalr	a5
    2528:	f99ff06f          	j	24c0 <printf+0xb8>
    252c:	ddc4a783          	lw	a5,-548(s1)
    2530:	000780e7          	jalr	a5
    2534:	f91ff06f          	j	24c4 <printf+0xbc>

00002538 <__mulsi3>:
    2538:	00050793          	mv	a5,a0
    253c:	00000513          	li	a0,0
    2540:	00079463          	bnez	a5,2548 <__mulsi3+0x10>
    2544:	00008067          	ret
    2548:	0017f713          	andi	a4,a5,1
    254c:	00070463          	beqz	a4,2554 <__mulsi3+0x1c>
    2550:	00b50533          	add	a0,a0,a1
    2554:	0017d793          	srli	a5,a5,0x1
    2558:	00159593          	slli	a1,a1,0x1
    255c:	fe5ff06f          	j	2540 <__mulsi3+0x8>

00002560 <fat_list_insert_last>:
    2560:	00452783          	lw	a5,4(a0)
    2564:	04079263          	bnez	a5,25a8 <fat_list_insert_last+0x48>
    2568:	00052783          	lw	a5,0(a0)
    256c:	00079c63          	bnez	a5,2584 <fat_list_insert_last+0x24>
    2570:	00b52023          	sw	a1,0(a0)
    2574:	00b52223          	sw	a1,4(a0)
    2578:	0005a023          	sw	zero,0(a1)
    257c:	0005a223          	sw	zero,4(a1)
    2580:	00008067          	ret
    2584:	0007a703          	lw	a4,0(a5)
    2588:	00f5a223          	sw	a5,4(a1)
    258c:	00e5a023          	sw	a4,0(a1)
    2590:	00071863          	bnez	a4,25a0 <fat_list_insert_last+0x40>
    2594:	00b52023          	sw	a1,0(a0)
    2598:	00b7a023          	sw	a1,0(a5)
    259c:	00008067          	ret
    25a0:	00b72223          	sw	a1,4(a4)
    25a4:	ff5ff06f          	j	2598 <fat_list_insert_last+0x38>
    25a8:	0047a703          	lw	a4,4(a5)
    25ac:	00f5a023          	sw	a5,0(a1)
    25b0:	00e5a223          	sw	a4,4(a1)
    25b4:	00071863          	bnez	a4,25c4 <fat_list_insert_last+0x64>
    25b8:	00b52223          	sw	a1,4(a0)
    25bc:	00b7a223          	sw	a1,4(a5)
    25c0:	00008067          	ret
    25c4:	00b72023          	sw	a1,0(a4)
    25c8:	ff5ff06f          	j	25bc <fat_list_insert_last+0x5c>

000025cc <FileString_StrCmpNoCase>:
    25cc:	00050313          	mv	t1,a0
    25d0:	00000793          	li	a5,0
    25d4:	01900e13          	li	t3,25
    25d8:	00c79663          	bne	a5,a2,25e4 <FileString_StrCmpNoCase+0x18>
    25dc:	00000513          	li	a0,0
    25e0:	00008067          	ret
    25e4:	00f30733          	add	a4,t1,a5
    25e8:	00074883          	lbu	a7,0(a4)
    25ec:	00f58733          	add	a4,a1,a5
    25f0:	00074803          	lbu	a6,0(a4)
    25f4:	fbf88713          	addi	a4,a7,-65
    25f8:	0ff77713          	zext.b	a4,a4
    25fc:	00088693          	mv	a3,a7
    2600:	00ee6663          	bltu	t3,a4,260c <FileString_StrCmpNoCase+0x40>
    2604:	02088693          	addi	a3,a7,32
    2608:	0ff6f693          	zext.b	a3,a3
    260c:	fbf80513          	addi	a0,a6,-65
    2610:	0ff57513          	zext.b	a0,a0
    2614:	00080713          	mv	a4,a6
    2618:	00ae6663          	bltu	t3,a0,2624 <FileString_StrCmpNoCase+0x58>
    261c:	02080713          	addi	a4,a6,32
    2620:	0ff77713          	zext.b	a4,a4
    2624:	40e68533          	sub	a0,a3,a4
    2628:	00e69863          	bne	a3,a4,2638 <FileString_StrCmpNoCase+0x6c>
    262c:	00088663          	beqz	a7,2638 <FileString_StrCmpNoCase+0x6c>
    2630:	00178793          	addi	a5,a5,1
    2634:	fa0812e3          	bnez	a6,25d8 <FileString_StrCmpNoCase+0xc>
    2638:	00008067          	ret

0000263c <FileString_GetExtension>:
    263c:	00050713          	mv	a4,a0
    2640:	00050793          	mv	a5,a0
    2644:	02e00613          	li	a2,46
    2648:	fff00513          	li	a0,-1
    264c:	0007c683          	lbu	a3,0(a5)
    2650:	00069463          	bnez	a3,2658 <FileString_GetExtension+0x1c>
    2654:	00008067          	ret
    2658:	00c69463          	bne	a3,a2,2660 <FileString_GetExtension+0x24>
    265c:	40e78533          	sub	a0,a5,a4
    2660:	00178793          	addi	a5,a5,1
    2664:	fe9ff06f          	j	264c <FileString_GetExtension+0x10>

00002668 <fatfs_fat_writeback>:
    2668:	00059663          	bnez	a1,2674 <fatfs_fat_writeback+0xc>
    266c:	00000513          	li	a0,0
    2670:	00008067          	ret
    2674:	2045a703          	lw	a4,516(a1)
    2678:	ff010113          	addi	sp,sp,-16
    267c:	00812423          	sw	s0,8(sp)
    2680:	00112623          	sw	ra,12(sp)
    2684:	00058413          	mv	s0,a1
    2688:	00070a63          	beqz	a4,269c <fatfs_fat_writeback+0x34>
    268c:	03852683          	lw	a3,56(a0)
    2690:	00050793          	mv	a5,a0
    2694:	00069863          	bnez	a3,26a4 <fatfs_fat_writeback+0x3c>
    2698:	20042223          	sw	zero,516(s0)
    269c:	00100513          	li	a0,1
    26a0:	0380006f          	j	26d8 <fatfs_fat_writeback+0x70>
    26a4:	2005a503          	lw	a0,512(a1)
    26a8:	0147a703          	lw	a4,20(a5)
    26ac:	0207a583          	lw	a1,32(a5)
    26b0:	00100613          	li	a2,1
    26b4:	40e507b3          	sub	a5,a0,a4
    26b8:	00178793          	addi	a5,a5,1
    26bc:	00f5f663          	bgeu	a1,a5,26c8 <fatfs_fat_writeback+0x60>
    26c0:	00b70733          	add	a4,a4,a1
    26c4:	40a70633          	sub	a2,a4,a0
    26c8:	00040593          	mv	a1,s0
    26cc:	000680e7          	jalr	a3
    26d0:	fc0514e3          	bnez	a0,2698 <fatfs_fat_writeback+0x30>
    26d4:	00000513          	li	a0,0
    26d8:	00c12083          	lw	ra,12(sp)
    26dc:	00812403          	lw	s0,8(sp)
    26e0:	01010113          	addi	sp,sp,16
    26e4:	00008067          	ret

000026e8 <fatfs_fat_read_sector>:
    26e8:	fe010113          	addi	sp,sp,-32
    26ec:	01212823          	sw	s2,16(sp)
    26f0:	25452903          	lw	s2,596(a0)
    26f4:	00812c23          	sw	s0,24(sp)
    26f8:	00912a23          	sw	s1,20(sp)
    26fc:	01312623          	sw	s3,12(sp)
    2700:	00112e23          	sw	ra,28(sp)
    2704:	00050993          	mv	s3,a0
    2708:	00058493          	mv	s1,a1
    270c:	00000413          	li	s0,0
    2710:	04091063          	bnez	s2,2750 <fatfs_fat_read_sector+0x68>
    2714:	2549a783          	lw	a5,596(s3)
    2718:	20f42623          	sw	a5,524(s0)
    271c:	20442783          	lw	a5,516(s0)
    2720:	2489aa23          	sw	s0,596(s3)
    2724:	08079863          	bnez	a5,27b4 <fatfs_fat_read_sector+0xcc>
    2728:	0349a783          	lw	a5,52(s3)
    272c:	20942023          	sw	s1,512(s0)
    2730:	00100613          	li	a2,1
    2734:	00040593          	mv	a1,s0
    2738:	00048513          	mv	a0,s1
    273c:	000780e7          	jalr	a5
    2740:	08051663          	bnez	a0,27cc <fatfs_fat_read_sector+0xe4>
    2744:	fff00793          	li	a5,-1
    2748:	20f42023          	sw	a5,512(s0)
    274c:	0480006f          	j	2794 <fatfs_fat_read_sector+0xac>
    2750:	20092783          	lw	a5,512(s2)
    2754:	00f4e663          	bltu	s1,a5,2760 <fatfs_fat_read_sector+0x78>
    2758:	00178713          	addi	a4,a5,1
    275c:	02e4e463          	bltu	s1,a4,2784 <fatfs_fat_read_sector+0x9c>
    2760:	20c92783          	lw	a5,524(s2)
    2764:	00079663          	bnez	a5,2770 <fatfs_fat_read_sector+0x88>
    2768:	00040a63          	beqz	s0,277c <fatfs_fat_read_sector+0x94>
    276c:	20042623          	sw	zero,524(s0)
    2770:	00090413          	mv	s0,s2
    2774:	20c92903          	lw	s2,524(s2)
    2778:	f99ff06f          	j	2710 <fatfs_fat_read_sector+0x28>
    277c:	2409aa23          	sw	zero,596(s3)
    2780:	ff1ff06f          	j	2770 <fatfs_fat_read_sector+0x88>
    2784:	40f484b3          	sub	s1,s1,a5
    2788:	00949493          	slli	s1,s1,0x9
    278c:	009904b3          	add	s1,s2,s1
    2790:	20992423          	sw	s1,520(s2)
    2794:	01c12083          	lw	ra,28(sp)
    2798:	01812403          	lw	s0,24(sp)
    279c:	01412483          	lw	s1,20(sp)
    27a0:	00c12983          	lw	s3,12(sp)
    27a4:	00090513          	mv	a0,s2
    27a8:	01012903          	lw	s2,16(sp)
    27ac:	02010113          	addi	sp,sp,32
    27b0:	00008067          	ret
    27b4:	00040593          	mv	a1,s0
    27b8:	00098513          	mv	a0,s3
    27bc:	00000097          	auipc	ra,0x0
    27c0:	eac080e7          	jalr	-340(ra) # 2668 <fatfs_fat_writeback>
    27c4:	f60512e3          	bnez	a0,2728 <fatfs_fat_read_sector+0x40>
    27c8:	fcdff06f          	j	2794 <fatfs_fat_read_sector+0xac>
    27cc:	20842423          	sw	s0,520(s0)
    27d0:	00040913          	mv	s2,s0
    27d4:	fc1ff06f          	j	2794 <fatfs_fat_read_sector+0xac>

000027d8 <_allocate_file>:
    27d8:	ff010113          	addi	sp,sp,-16
    27dc:	000067b7          	lui	a5,0x6
    27e0:	00812423          	sw	s0,8(sp)
    27e4:	de07a403          	lw	s0,-544(a5) # 5de0 <_free_file_list>
    27e8:	00112623          	sw	ra,12(sp)
    27ec:	02040e63          	beqz	s0,2828 <_allocate_file+0x50>
    27f0:	00042703          	lw	a4,0(s0)
    27f4:	00442683          	lw	a3,4(s0)
    27f8:	de078793          	addi	a5,a5,-544
    27fc:	04071063          	bnez	a4,283c <_allocate_file+0x64>
    2800:	00d7a023          	sw	a3,0(a5)
    2804:	00442683          	lw	a3,4(s0)
    2808:	02069e63          	bnez	a3,2844 <_allocate_file+0x6c>
    280c:	00e7a223          	sw	a4,4(a5)
    2810:	00006537          	lui	a0,0x6
    2814:	00040593          	mv	a1,s0
    2818:	de850513          	addi	a0,a0,-536 # 5de8 <_open_file_list>
    281c:	00000097          	auipc	ra,0x0
    2820:	d44080e7          	jalr	-700(ra) # 2560 <fat_list_insert_last>
    2824:	bc440413          	addi	s0,s0,-1084
    2828:	00c12083          	lw	ra,12(sp)
    282c:	00040513          	mv	a0,s0
    2830:	00812403          	lw	s0,8(sp)
    2834:	01010113          	addi	sp,sp,16
    2838:	00008067          	ret
    283c:	00d72223          	sw	a3,4(a4)
    2840:	fc5ff06f          	j	2804 <_allocate_file+0x2c>
    2844:	00e6a023          	sw	a4,0(a3)
    2848:	fc9ff06f          	j	2810 <_allocate_file+0x38>

0000284c <_free_file>:
    284c:	43c52783          	lw	a5,1084(a0)
    2850:	44052703          	lw	a4,1088(a0)
    2854:	43c50593          	addi	a1,a0,1084
    2858:	02079663          	bnez	a5,2884 <_free_file+0x38>
    285c:	000066b7          	lui	a3,0x6
    2860:	dee6a423          	sw	a4,-536(a3) # 5de8 <_open_file_list>
    2864:	44052703          	lw	a4,1088(a0)
    2868:	02071263          	bnez	a4,288c <_free_file+0x40>
    286c:	00006737          	lui	a4,0x6
    2870:	def72623          	sw	a5,-532(a4) # 5dec <_open_file_list+0x4>
    2874:	00006537          	lui	a0,0x6
    2878:	de050513          	addi	a0,a0,-544 # 5de0 <_free_file_list>
    287c:	00000317          	auipc	t1,0x0
    2880:	ce430067          	jr	-796(t1) # 2560 <fat_list_insert_last>
    2884:	00e7a223          	sw	a4,4(a5)
    2888:	fddff06f          	j	2864 <_free_file+0x18>
    288c:	00f72023          	sw	a5,0(a4)
    2890:	fe5ff06f          	j	2874 <_free_file+0x28>

00002894 <fatfs_lba_of_cluster>:
    2894:	ff010113          	addi	sp,sp,-16
    2898:	00812423          	sw	s0,8(sp)
    289c:	00112623          	sw	ra,12(sp)
    28a0:	00050413          	mv	s0,a0
    28a4:	00058513          	mv	a0,a1
    28a8:	00044583          	lbu	a1,0(s0)
    28ac:	ffe50513          	addi	a0,a0,-2
    28b0:	00000097          	auipc	ra,0x0
    28b4:	c88080e7          	jalr	-888(ra) # 2538 <__mulsi3>
    28b8:	00442783          	lw	a5,4(s0)
    28bc:	00f50533          	add	a0,a0,a5
    28c0:	03042783          	lw	a5,48(s0)
    28c4:	00079863          	bnez	a5,28d4 <fatfs_lba_of_cluster+0x40>
    28c8:	02845783          	lhu	a5,40(s0)
    28cc:	4047d793          	srai	a5,a5,0x4
    28d0:	00f50533          	add	a0,a0,a5
    28d4:	00c12083          	lw	ra,12(sp)
    28d8:	00812403          	lw	s0,8(sp)
    28dc:	01010113          	addi	sp,sp,16
    28e0:	00008067          	ret

000028e4 <fatfs_sector_read>:
    28e4:	03452783          	lw	a5,52(a0)
    28e8:	00058713          	mv	a4,a1
    28ec:	00070513          	mv	a0,a4
    28f0:	00060593          	mv	a1,a2
    28f4:	00068613          	mv	a2,a3
    28f8:	00078067          	jr	a5

000028fc <fatfs_sector_write>:
    28fc:	03852783          	lw	a5,56(a0)
    2900:	00058713          	mv	a4,a1
    2904:	00070513          	mv	a0,a4
    2908:	00060593          	mv	a1,a2
    290c:	00068613          	mv	a2,a3
    2910:	00078067          	jr	a5

00002914 <fatfs_write_sector>:
    2914:	03852783          	lw	a5,56(a0)
    2918:	0a078863          	beqz	a5,29c8 <fatfs_write_sector+0xb4>
    291c:	fe010113          	addi	sp,sp,-32
    2920:	01212823          	sw	s2,16(sp)
    2924:	00068913          	mv	s2,a3
    2928:	03052683          	lw	a3,48(a0)
    292c:	00812c23          	sw	s0,24(sp)
    2930:	00912a23          	sw	s1,20(sp)
    2934:	00112e23          	sw	ra,28(sp)
    2938:	00d5e733          	or	a4,a1,a3
    293c:	00050413          	mv	s0,a0
    2940:	00060493          	mv	s1,a2
    2944:	04071063          	bnez	a4,2984 <fatfs_write_sector+0x70>
    2948:	01052703          	lw	a4,16(a0)
    294c:	06e67063          	bgeu	a2,a4,29ac <fatfs_write_sector+0x98>
    2950:	01c52503          	lw	a0,28(a0)
    2954:	00c42703          	lw	a4,12(s0)
    2958:	00e50533          	add	a0,a0,a4
    295c:	00c50533          	add	a0,a0,a2
    2960:	02090e63          	beqz	s2,299c <fatfs_write_sector+0x88>
    2964:	00100613          	li	a2,1
    2968:	00090593          	mv	a1,s2
    296c:	01812403          	lw	s0,24(sp)
    2970:	01c12083          	lw	ra,28(sp)
    2974:	01412483          	lw	s1,20(sp)
    2978:	01012903          	lw	s2,16(sp)
    297c:	02010113          	addi	sp,sp,32
    2980:	00078067          	jr	a5
    2984:	00f12623          	sw	a5,12(sp)
    2988:	00000097          	auipc	ra,0x0
    298c:	f0c080e7          	jalr	-244(ra) # 2894 <fatfs_lba_of_cluster>
    2990:	00c12783          	lw	a5,12(sp)
    2994:	00a48533          	add	a0,s1,a0
    2998:	fc9ff06f          	j	2960 <fatfs_write_sector+0x4c>
    299c:	24a42223          	sw	a0,580(s0)
    29a0:	00100613          	li	a2,1
    29a4:	04440593          	addi	a1,s0,68
    29a8:	fc5ff06f          	j	296c <fatfs_write_sector+0x58>
    29ac:	01c12083          	lw	ra,28(sp)
    29b0:	01812403          	lw	s0,24(sp)
    29b4:	01412483          	lw	s1,20(sp)
    29b8:	01012903          	lw	s2,16(sp)
    29bc:	00000513          	li	a0,0
    29c0:	02010113          	addi	sp,sp,32
    29c4:	00008067          	ret
    29c8:	00000513          	li	a0,0
    29cc:	00008067          	ret

000029d0 <fl_init>:
    29d0:	ff010113          	addi	sp,sp,-16
    29d4:	00812423          	sw	s0,8(sp)
    29d8:	00006437          	lui	s0,0x6
    29dc:	00112623          	sw	ra,12(sp)
    29e0:	de040793          	addi	a5,s0,-544 # 5de0 <_free_file_list>
    29e4:	0007a223          	sw	zero,4(a5)
    29e8:	0007a023          	sw	zero,0(a5)
    29ec:	000075b7          	lui	a1,0x7
    29f0:	000067b7          	lui	a5,0x6
    29f4:	de878793          	addi	a5,a5,-536 # 5de8 <_open_file_list>
    29f8:	de040513          	addi	a0,s0,-544
    29fc:	e9c58593          	addi	a1,a1,-356 # 6e9c <_files+0x43c>
    2a00:	0007a223          	sw	zero,4(a5)
    2a04:	0007a023          	sw	zero,0(a5)
    2a08:	00000097          	auipc	ra,0x0
    2a0c:	b58080e7          	jalr	-1192(ra) # 2560 <fat_list_insert_last>
    2a10:	000075b7          	lui	a1,0x7
    2a14:	de040513          	addi	a0,s0,-544
    2a18:	2e058593          	addi	a1,a1,736 # 72e0 <_files+0x880>
    2a1c:	00000097          	auipc	ra,0x0
    2a20:	b44080e7          	jalr	-1212(ra) # 2560 <fat_list_insert_last>
    2a24:	00c12083          	lw	ra,12(sp)
    2a28:	00812403          	lw	s0,8(sp)
    2a2c:	000067b7          	lui	a5,0x6
    2a30:	00100713          	li	a4,1
    2a34:	dee7aa23          	sw	a4,-524(a5) # 5df4 <_filelib_init>
    2a38:	01010113          	addi	sp,sp,16
    2a3c:	00008067          	ret

00002a40 <fl_fseek>:
    2a40:	000067b7          	lui	a5,0x6
    2a44:	df47a783          	lw	a5,-524(a5) # 5df4 <_filelib_init>
    2a48:	fd010113          	addi	sp,sp,-48
    2a4c:	02812423          	sw	s0,40(sp)
    2a50:	02912223          	sw	s1,36(sp)
    2a54:	03212023          	sw	s2,32(sp)
    2a58:	02112623          	sw	ra,44(sp)
    2a5c:	01312e23          	sw	s3,28(sp)
    2a60:	00050413          	mv	s0,a0
    2a64:	00058493          	mv	s1,a1
    2a68:	00060913          	mv	s2,a2
    2a6c:	00079663          	bnez	a5,2a78 <fl_fseek+0x38>
    2a70:	00000097          	auipc	ra,0x0
    2a74:	f60080e7          	jalr	-160(ra) # 29d0 <fl_init>
    2a78:	fff00513          	li	a0,-1
    2a7c:	08040463          	beqz	s0,2b04 <fl_fseek+0xc4>
    2a80:	00200793          	li	a5,2
    2a84:	00f91463          	bne	s2,a5,2a8c <fl_fseek+0x4c>
    2a88:	06049e63          	bnez	s1,2b04 <fl_fseek+0xc4>
    2a8c:	000067b7          	lui	a5,0x6
    2a90:	5f878713          	addi	a4,a5,1528 # 65f8 <_fs>
    2a94:	03c72703          	lw	a4,60(a4)
    2a98:	5f878993          	addi	s3,a5,1528
    2a9c:	00070463          	beqz	a4,2aa4 <fl_fseek+0x64>
    2aa0:	000700e7          	jalr	a4
    2aa4:	fff00793          	li	a5,-1
    2aa8:	42f42823          	sw	a5,1072(s0)
    2aac:	42042a23          	sw	zero,1076(s0)
    2ab0:	00091c63          	bnez	s2,2ac8 <fl_fseek+0x88>
    2ab4:	00c42783          	lw	a5,12(s0)
    2ab8:	00942423          	sw	s1,8(s0)
    2abc:	0297f863          	bgeu	a5,s1,2aec <fl_fseek+0xac>
    2ac0:	00f42423          	sw	a5,8(s0)
    2ac4:	0280006f          	j	2aec <fl_fseek+0xac>
    2ac8:	00100793          	li	a5,1
    2acc:	06f91063          	bne	s2,a5,2b2c <fl_fseek+0xec>
    2ad0:	00842783          	lw	a5,8(s0)
    2ad4:	0004c663          	bltz	s1,2ae0 <fl_fseek+0xa0>
    2ad8:	00f484b3          	add	s1,s1,a5
    2adc:	fd9ff06f          	j	2ab4 <fl_fseek+0x74>
    2ae0:	40900733          	neg	a4,s1
    2ae4:	02e7fe63          	bgeu	a5,a4,2b20 <fl_fseek+0xe0>
    2ae8:	00042423          	sw	zero,8(s0)
    2aec:	00000513          	li	a0,0
    2af0:	0409a783          	lw	a5,64(s3)
    2af4:	00078863          	beqz	a5,2b04 <fl_fseek+0xc4>
    2af8:	00a12623          	sw	a0,12(sp)
    2afc:	000780e7          	jalr	a5
    2b00:	00c12503          	lw	a0,12(sp)
    2b04:	02c12083          	lw	ra,44(sp)
    2b08:	02812403          	lw	s0,40(sp)
    2b0c:	02412483          	lw	s1,36(sp)
    2b10:	02012903          	lw	s2,32(sp)
    2b14:	01c12983          	lw	s3,28(sp)
    2b18:	03010113          	addi	sp,sp,48
    2b1c:	00008067          	ret
    2b20:	00f484b3          	add	s1,s1,a5
    2b24:	00942423          	sw	s1,8(s0)
    2b28:	fc5ff06f          	j	2aec <fl_fseek+0xac>
    2b2c:	00200793          	li	a5,2
    2b30:	fff00513          	li	a0,-1
    2b34:	faf91ee3          	bne	s2,a5,2af0 <fl_fseek+0xb0>
    2b38:	00c42783          	lw	a5,12(s0)
    2b3c:	f85ff06f          	j	2ac0 <fl_fseek+0x80>

00002b40 <fl_fgetpos>:
    2b40:	06050663          	beqz	a0,2bac <fl_fgetpos+0x6c>
    2b44:	000067b7          	lui	a5,0x6
    2b48:	5f878713          	addi	a4,a5,1528 # 65f8 <_fs>
    2b4c:	03c72703          	lw	a4,60(a4)
    2b50:	ff010113          	addi	sp,sp,-16
    2b54:	00812423          	sw	s0,8(sp)
    2b58:	00912223          	sw	s1,4(sp)
    2b5c:	01212023          	sw	s2,0(sp)
    2b60:	00112623          	sw	ra,12(sp)
    2b64:	00050493          	mv	s1,a0
    2b68:	00058913          	mv	s2,a1
    2b6c:	5f878413          	addi	s0,a5,1528
    2b70:	00070463          	beqz	a4,2b78 <fl_fgetpos+0x38>
    2b74:	000700e7          	jalr	a4
    2b78:	0084a783          	lw	a5,8(s1)
    2b7c:	00f92023          	sw	a5,0(s2)
    2b80:	04042783          	lw	a5,64(s0)
    2b84:	02079063          	bnez	a5,2ba4 <fl_fgetpos+0x64>
    2b88:	00c12083          	lw	ra,12(sp)
    2b8c:	00812403          	lw	s0,8(sp)
    2b90:	00412483          	lw	s1,4(sp)
    2b94:	00012903          	lw	s2,0(sp)
    2b98:	00000513          	li	a0,0
    2b9c:	01010113          	addi	sp,sp,16
    2ba0:	00008067          	ret
    2ba4:	000780e7          	jalr	a5
    2ba8:	fe1ff06f          	j	2b88 <fl_fgetpos+0x48>
    2bac:	fff00513          	li	a0,-1
    2bb0:	00008067          	ret

00002bb4 <fl_ftell>:
    2bb4:	fe010113          	addi	sp,sp,-32
    2bb8:	00c10593          	addi	a1,sp,12
    2bbc:	00112e23          	sw	ra,28(sp)
    2bc0:	00012623          	sw	zero,12(sp)
    2bc4:	00000097          	auipc	ra,0x0
    2bc8:	f7c080e7          	jalr	-132(ra) # 2b40 <fl_fgetpos>
    2bcc:	01c12083          	lw	ra,28(sp)
    2bd0:	00c12503          	lw	a0,12(sp)
    2bd4:	02010113          	addi	sp,sp,32
    2bd8:	00008067          	ret

00002bdc <fl_closedir>:
    2bdc:	00000513          	li	a0,0
    2be0:	00008067          	ret

00002be4 <fatfs_lfn_cache_entry>:
    2be4:	0005c783          	lbu	a5,0(a1)
    2be8:	01300693          	li	a3,19
    2bec:	01f7f793          	andi	a5,a5,31
    2bf0:	fff78713          	addi	a4,a5,-1
    2bf4:	0ff77613          	zext.b	a2,a4
    2bf8:	0ac6ea63          	bltu	a3,a2,2cac <fatfs_lfn_cache_entry+0xc8>
    2bfc:	10554683          	lbu	a3,261(a0)
    2c00:	00069463          	bnez	a3,2c08 <fatfs_lfn_cache_entry+0x24>
    2c04:	10f502a3          	sb	a5,261(a0)
    2c08:	00171793          	slli	a5,a4,0x1
    2c0c:	00e787b3          	add	a5,a5,a4
    2c10:	0015c683          	lbu	a3,1(a1)
    2c14:	00279793          	slli	a5,a5,0x2
    2c18:	00e787b3          	add	a5,a5,a4
    2c1c:	00f50533          	add	a0,a0,a5
    2c20:	00d50023          	sb	a3,0(a0)
    2c24:	0035c783          	lbu	a5,3(a1)
    2c28:	0ff00713          	li	a4,255
    2c2c:	02000693          	li	a3,32
    2c30:	00f500a3          	sb	a5,1(a0)
    2c34:	0055c783          	lbu	a5,5(a1)
    2c38:	00f50123          	sb	a5,2(a0)
    2c3c:	0075c783          	lbu	a5,7(a1)
    2c40:	00f501a3          	sb	a5,3(a0)
    2c44:	0095c783          	lbu	a5,9(a1)
    2c48:	00f50223          	sb	a5,4(a0)
    2c4c:	00e5c783          	lbu	a5,14(a1)
    2c50:	00f502a3          	sb	a5,5(a0)
    2c54:	0105c783          	lbu	a5,16(a1)
    2c58:	00f50323          	sb	a5,6(a0)
    2c5c:	0125c783          	lbu	a5,18(a1)
    2c60:	00f503a3          	sb	a5,7(a0)
    2c64:	0145c783          	lbu	a5,20(a1)
    2c68:	00f50423          	sb	a5,8(a0)
    2c6c:	0165c783          	lbu	a5,22(a1)
    2c70:	00f504a3          	sb	a5,9(a0)
    2c74:	0185c783          	lbu	a5,24(a1)
    2c78:	00f50523          	sb	a5,10(a0)
    2c7c:	01c5c783          	lbu	a5,28(a1)
    2c80:	00f505a3          	sb	a5,11(a0)
    2c84:	01e5c783          	lbu	a5,30(a1)
    2c88:	00f50623          	sb	a5,12(a0)
    2c8c:	00d00793          	li	a5,13
    2c90:	00054603          	lbu	a2,0(a0)
    2c94:	00e61463          	bne	a2,a4,2c9c <fatfs_lfn_cache_entry+0xb8>
    2c98:	00d50023          	sb	a3,0(a0)
    2c9c:	fff78793          	addi	a5,a5,-1
    2ca0:	0ff7f793          	zext.b	a5,a5
    2ca4:	00150513          	addi	a0,a0,1
    2ca8:	fe0794e3          	bnez	a5,2c90 <fatfs_lfn_cache_entry+0xac>
    2cac:	00008067          	ret

00002cb0 <fatfs_lfn_cache_get>:
    2cb0:	10554703          	lbu	a4,261(a0)
    2cb4:	01400793          	li	a5,20
    2cb8:	00f71663          	bne	a4,a5,2cc4 <fatfs_lfn_cache_get+0x14>
    2cbc:	10050223          	sb	zero,260(a0)
    2cc0:	00008067          	ret
    2cc4:	02070063          	beqz	a4,2ce4 <fatfs_lfn_cache_get+0x34>
    2cc8:	00171793          	slli	a5,a4,0x1
    2ccc:	00e787b3          	add	a5,a5,a4
    2cd0:	00279793          	slli	a5,a5,0x2
    2cd4:	00e787b3          	add	a5,a5,a4
    2cd8:	00f507b3          	add	a5,a0,a5
    2cdc:	00078023          	sb	zero,0(a5)
    2ce0:	00008067          	ret
    2ce4:	00050023          	sb	zero,0(a0)
    2ce8:	00008067          	ret

00002cec <fatfs_entry_lfn_text>:
    2cec:	00b54503          	lbu	a0,11(a0)
    2cf0:	00f57513          	andi	a0,a0,15
    2cf4:	ff150513          	addi	a0,a0,-15
    2cf8:	00153513          	seqz	a0,a0
    2cfc:	00008067          	ret

00002d00 <fatfs_entry_lfn_invalid>:
    2d00:	00054703          	lbu	a4,0(a0)
    2d04:	00050793          	mv	a5,a0
    2d08:	02070463          	beqz	a4,2d30 <fatfs_entry_lfn_invalid+0x30>
    2d0c:	0e500693          	li	a3,229
    2d10:	00100513          	li	a0,1
    2d14:	02d70063          	beq	a4,a3,2d34 <fatfs_entry_lfn_invalid+0x34>
    2d18:	00b7c783          	lbu	a5,11(a5)
    2d1c:	00800713          	li	a4,8
    2d20:	00e78a63          	beq	a5,a4,2d34 <fatfs_entry_lfn_invalid+0x34>
    2d24:	0067f793          	andi	a5,a5,6
    2d28:	00f03533          	snez	a0,a5
    2d2c:	00008067          	ret
    2d30:	00100513          	li	a0,1
    2d34:	00008067          	ret

00002d38 <fatfs_entry_lfn_exists>:
    2d38:	00b5c783          	lbu	a5,11(a1)
    2d3c:	00f00693          	li	a3,15
    2d40:	00050713          	mv	a4,a0
    2d44:	02d78a63          	beq	a5,a3,2d78 <fatfs_entry_lfn_exists+0x40>
    2d48:	0005c683          	lbu	a3,0(a1)
    2d4c:	00000513          	li	a0,0
    2d50:	02068663          	beqz	a3,2d7c <fatfs_entry_lfn_exists+0x44>
    2d54:	0e500613          	li	a2,229
    2d58:	02c68263          	beq	a3,a2,2d7c <fatfs_entry_lfn_exists+0x44>
    2d5c:	00800693          	li	a3,8
    2d60:	00d78e63          	beq	a5,a3,2d7c <fatfs_entry_lfn_exists+0x44>
    2d64:	0067f793          	andi	a5,a5,6
    2d68:	00079a63          	bnez	a5,2d7c <fatfs_entry_lfn_exists+0x44>
    2d6c:	10574503          	lbu	a0,261(a4)
    2d70:	00a03533          	snez	a0,a0
    2d74:	00008067          	ret
    2d78:	00000513          	li	a0,0
    2d7c:	00008067          	ret

00002d80 <fatfs_entry_sfn_only>:
    2d80:	00b54783          	lbu	a5,11(a0)
    2d84:	00f00713          	li	a4,15
    2d88:	02e78663          	beq	a5,a4,2db4 <fatfs_entry_sfn_only+0x34>
    2d8c:	00054703          	lbu	a4,0(a0)
    2d90:	00000513          	li	a0,0
    2d94:	02070263          	beqz	a4,2db8 <fatfs_entry_sfn_only+0x38>
    2d98:	0e500693          	li	a3,229
    2d9c:	00d70e63          	beq	a4,a3,2db8 <fatfs_entry_sfn_only+0x38>
    2da0:	00800713          	li	a4,8
    2da4:	00e78a63          	beq	a5,a4,2db8 <fatfs_entry_sfn_only+0x38>
    2da8:	0067f793          	andi	a5,a5,6
    2dac:	0017b513          	seqz	a0,a5
    2db0:	00008067          	ret
    2db4:	00000513          	li	a0,0
    2db8:	00008067          	ret

00002dbc <fatfs_entry_is_dir>:
    2dbc:	00b54503          	lbu	a0,11(a0)
    2dc0:	00455513          	srli	a0,a0,0x4
    2dc4:	00157513          	andi	a0,a0,1
    2dc8:	00008067          	ret

00002dcc <fatfs_entry_is_file>:
    2dcc:	00b54503          	lbu	a0,11(a0)
    2dd0:	00555513          	srli	a0,a0,0x5
    2dd4:	00157513          	andi	a0,a0,1
    2dd8:	00008067          	ret

00002ddc <fatfs_lfn_entries_required>:
    2ddc:	ff010113          	addi	sp,sp,-16
    2de0:	00112623          	sw	ra,12(sp)
    2de4:	fffff097          	auipc	ra,0xfffff
    2de8:	050080e7          	jalr	80(ra) # 1e34 <strlen>
    2dec:	00050a63          	beqz	a0,2e00 <fatfs_lfn_entries_required+0x24>
    2df0:	00d00593          	li	a1,13
    2df4:	00c50513          	addi	a0,a0,12
    2df8:	fffff097          	auipc	ra,0xfffff
    2dfc:	f48080e7          	jalr	-184(ra) # 1d40 <__divsi3>
    2e00:	00c12083          	lw	ra,12(sp)
    2e04:	01010113          	addi	sp,sp,16
    2e08:	00008067          	ret

00002e0c <fatfs_filename_to_lfn>:
    2e0c:	fa010113          	addi	sp,sp,-96
    2e10:	04912a23          	sw	s1,84(sp)
    2e14:	00058493          	mv	s1,a1
    2e18:	000065b7          	lui	a1,0x6
    2e1c:	d9458593          	addi	a1,a1,-620 # 5d94 <font+0x1e0>
    2e20:	05212823          	sw	s2,80(sp)
    2e24:	05312623          	sw	s3,76(sp)
    2e28:	00060913          	mv	s2,a2
    2e2c:	00050993          	mv	s3,a0
    2e30:	03400613          	li	a2,52
    2e34:	00c10513          	addi	a0,sp,12
    2e38:	04112e23          	sw	ra,92(sp)
    2e3c:	04812c23          	sw	s0,88(sp)
    2e40:	05412423          	sw	s4,72(sp)
    2e44:	05512223          	sw	s5,68(sp)
    2e48:	05612023          	sw	s6,64(sp)
    2e4c:	00068b13          	mv	s6,a3
    2e50:	fffff097          	auipc	ra,0xfffff
    2e54:	fc0080e7          	jalr	-64(ra) # 1e10 <memcpy>
    2e58:	00098513          	mv	a0,s3
    2e5c:	fffff097          	auipc	ra,0xfffff
    2e60:	fd8080e7          	jalr	-40(ra) # 1e34 <strlen>
    2e64:	00050a93          	mv	s5,a0
    2e68:	00098513          	mv	a0,s3
    2e6c:	00000097          	auipc	ra,0x0
    2e70:	f70080e7          	jalr	-144(ra) # 2ddc <fatfs_lfn_entries_required>
    2e74:	00191793          	slli	a5,s2,0x1
    2e78:	012787b3          	add	a5,a5,s2
    2e7c:	00279793          	slli	a5,a5,0x2
    2e80:	00050a13          	mv	s4,a0
    2e84:	02000613          	li	a2,32
    2e88:	00000593          	li	a1,0
    2e8c:	00048513          	mv	a0,s1
    2e90:	01278433          	add	s0,a5,s2
    2e94:	fffff097          	auipc	ra,0xfffff
    2e98:	f60080e7          	jalr	-160(ra) # 1df4 <memset>
    2e9c:	00190793          	addi	a5,s2,1
    2ea0:	fffa0a13          	addi	s4,s4,-1
    2ea4:	0ff7f793          	zext.b	a5,a5
    2ea8:	012a1463          	bne	s4,s2,2eb0 <fatfs_filename_to_lfn+0xa4>
    2eac:	0407e793          	ori	a5,a5,64
    2eb0:	00f48023          	sb	a5,0(s1)
    2eb4:	00f00793          	li	a5,15
    2eb8:	00f485a3          	sb	a5,11(s1)
    2ebc:	016486a3          	sb	s6,13(s1)
    2ec0:	00c10713          	addi	a4,sp,12
    2ec4:	00040793          	mv	a5,s0
    2ec8:	fff00613          	li	a2,-1
    2ecc:	00072683          	lw	a3,0(a4)
    2ed0:	00d486b3          	add	a3,s1,a3
    2ed4:	0557d463          	bge	a5,s5,2f1c <fatfs_filename_to_lfn+0x110>
    2ed8:	00f985b3          	add	a1,s3,a5
    2edc:	0005c583          	lbu	a1,0(a1)
    2ee0:	00b68023          	sb	a1,0(a3)
    2ee4:	00470713          	addi	a4,a4,4
    2ee8:	04010693          	addi	a3,sp,64
    2eec:	00178793          	addi	a5,a5,1
    2ef0:	fcd71ee3          	bne	a4,a3,2ecc <fatfs_filename_to_lfn+0xc0>
    2ef4:	05c12083          	lw	ra,92(sp)
    2ef8:	05812403          	lw	s0,88(sp)
    2efc:	05412483          	lw	s1,84(sp)
    2f00:	05012903          	lw	s2,80(sp)
    2f04:	04c12983          	lw	s3,76(sp)
    2f08:	04812a03          	lw	s4,72(sp)
    2f0c:	04412a83          	lw	s5,68(sp)
    2f10:	04012b03          	lw	s6,64(sp)
    2f14:	06010113          	addi	sp,sp,96
    2f18:	00008067          	ret
    2f1c:	01579663          	bne	a5,s5,2f28 <fatfs_filename_to_lfn+0x11c>
    2f20:	00068023          	sb	zero,0(a3)
    2f24:	fc1ff06f          	j	2ee4 <fatfs_filename_to_lfn+0xd8>
    2f28:	00c68023          	sb	a2,0(a3)
    2f2c:	00c680a3          	sb	a2,1(a3)
    2f30:	fb5ff06f          	j	2ee4 <fatfs_filename_to_lfn+0xd8>

00002f34 <fatfs_sfn_create_entry>:
    2f34:	00000793          	li	a5,0
    2f38:	00b00813          	li	a6,11
    2f3c:	00f508b3          	add	a7,a0,a5
    2f40:	0008c303          	lbu	t1,0(a7)
    2f44:	00f688b3          	add	a7,a3,a5
    2f48:	00178793          	addi	a5,a5,1
    2f4c:	00688023          	sb	t1,0(a7)
    2f50:	ff0796e3          	bne	a5,a6,2f3c <fatfs_sfn_create_entry+0x8>
    2f54:	02000793          	li	a5,32
    2f58:	00f68823          	sb	a5,16(a3)
    2f5c:	00f68923          	sb	a5,18(a3)
    2f60:	00f68c23          	sb	a5,24(a3)
    2f64:	000686a3          	sb	zero,13(a3)
    2f68:	00068723          	sb	zero,14(a3)
    2f6c:	000687a3          	sb	zero,15(a3)
    2f70:	000688a3          	sb	zero,17(a3)
    2f74:	000689a3          	sb	zero,19(a3)
    2f78:	00068b23          	sb	zero,22(a3)
    2f7c:	00068ba3          	sb	zero,23(a3)
    2f80:	00068ca3          	sb	zero,25(a3)
    2f84:	01000793          	li	a5,16
    2f88:	00071463          	bnez	a4,2f90 <fatfs_sfn_create_entry+0x5c>
    2f8c:	02000793          	li	a5,32
    2f90:	00f685a3          	sb	a5,11(a3)
    2f94:	01065793          	srli	a5,a2,0x10
    2f98:	00f68a23          	sb	a5,20(a3)
    2f9c:	0087d793          	srli	a5,a5,0x8
    2fa0:	00f68aa3          	sb	a5,21(a3)
    2fa4:	01061793          	slli	a5,a2,0x10
    2fa8:	0107d793          	srli	a5,a5,0x10
    2fac:	0087d793          	srli	a5,a5,0x8
    2fb0:	00f68da3          	sb	a5,27(a3)
    2fb4:	0085d793          	srli	a5,a1,0x8
    2fb8:	00b68e23          	sb	a1,28(a3)
    2fbc:	00f68ea3          	sb	a5,29(a3)
    2fc0:	0105d793          	srli	a5,a1,0x10
    2fc4:	0185d593          	srli	a1,a1,0x18
    2fc8:	00068623          	sb	zero,12(a3)
    2fcc:	00c68d23          	sb	a2,26(a3)
    2fd0:	00f68f23          	sb	a5,30(a3)
    2fd4:	00b68fa3          	sb	a1,31(a3)
    2fd8:	00008067          	ret

00002fdc <fatfs_lfn_create_sfn>:
    2fdc:	0005c703          	lbu	a4,0(a1)
    2fe0:	02e00793          	li	a5,46
    2fe4:	16f70663          	beq	a4,a5,3150 <fatfs_lfn_create_sfn+0x174>
    2fe8:	fe010113          	addi	sp,sp,-32
    2fec:	00912a23          	sw	s1,20(sp)
    2ff0:	00050493          	mv	s1,a0
    2ff4:	00058513          	mv	a0,a1
    2ff8:	00112e23          	sw	ra,28(sp)
    2ffc:	00812c23          	sw	s0,24(sp)
    3000:	01212823          	sw	s2,16(sp)
    3004:	00058413          	mv	s0,a1
    3008:	fffff097          	auipc	ra,0xfffff
    300c:	e2c080e7          	jalr	-468(ra) # 1e34 <strlen>
    3010:	00b00613          	li	a2,11
    3014:	02000593          	li	a1,32
    3018:	00050913          	mv	s2,a0
    301c:	00048513          	mv	a0,s1
    3020:	fffff097          	auipc	ra,0xfffff
    3024:	dd4080e7          	jalr	-556(ra) # 1df4 <memset>
    3028:	00300613          	li	a2,3
    302c:	02000593          	li	a1,32
    3030:	00c10513          	addi	a0,sp,12
    3034:	fffff097          	auipc	ra,0xfffff
    3038:	dc0080e7          	jalr	-576(ra) # 1df4 <memset>
    303c:	fff00713          	li	a4,-1
    3040:	00000793          	li	a5,0
    3044:	02e00693          	li	a3,46
    3048:	0d27c263          	blt	a5,s2,310c <fatfs_lfn_create_sfn+0x130>
    304c:	fff00793          	li	a5,-1
    3050:	0ef70863          	beq	a4,a5,3140 <fatfs_lfn_create_sfn+0x164>
    3054:	00170793          	addi	a5,a4,1
    3058:	00c10693          	addi	a3,sp,12
    305c:	00470613          	addi	a2,a4,4
    3060:	0cf61263          	bne	a2,a5,3124 <fatfs_lfn_create_sfn+0x148>
    3064:	00000613          	li	a2,0
    3068:	00000693          	li	a3,0
    306c:	02000513          	li	a0,32
    3070:	02e00813          	li	a6,46
    3074:	01900893          	li	a7,25
    3078:	00800313          	li	t1,8
    307c:	02e6dc63          	bge	a3,a4,30b4 <fatfs_lfn_create_sfn+0xd8>
    3080:	00d407b3          	add	a5,s0,a3
    3084:	0007c783          	lbu	a5,0(a5)
    3088:	0ca78063          	beq	a5,a0,3148 <fatfs_lfn_create_sfn+0x16c>
    308c:	0b078e63          	beq	a5,a6,3148 <fatfs_lfn_create_sfn+0x16c>
    3090:	f9f78593          	addi	a1,a5,-97
    3094:	0ff5f593          	zext.b	a1,a1
    3098:	00c48e33          	add	t3,s1,a2
    309c:	00160613          	addi	a2,a2,1
    30a0:	00b8e663          	bltu	a7,a1,30ac <fatfs_lfn_create_sfn+0xd0>
    30a4:	fe078793          	addi	a5,a5,-32
    30a8:	0ff7f793          	zext.b	a5,a5
    30ac:	00fe0023          	sb	a5,0(t3)
    30b0:	08661c63          	bne	a2,t1,3148 <fatfs_lfn_create_sfn+0x16c>
    30b4:	00c10793          	addi	a5,sp,12
    30b8:	00800693          	li	a3,8
    30bc:	01900513          	li	a0,25
    30c0:	00b00593          	li	a1,11
    30c4:	0007c703          	lbu	a4,0(a5)
    30c8:	f9f70613          	addi	a2,a4,-97
    30cc:	0ff67613          	zext.b	a2,a2
    30d0:	00c56663          	bltu	a0,a2,30dc <fatfs_lfn_create_sfn+0x100>
    30d4:	fe070713          	addi	a4,a4,-32
    30d8:	0ff77713          	zext.b	a4,a4
    30dc:	00d48633          	add	a2,s1,a3
    30e0:	00e60023          	sb	a4,0(a2)
    30e4:	00168693          	addi	a3,a3,1
    30e8:	00178793          	addi	a5,a5,1
    30ec:	fcb69ce3          	bne	a3,a1,30c4 <fatfs_lfn_create_sfn+0xe8>
    30f0:	01c12083          	lw	ra,28(sp)
    30f4:	01812403          	lw	s0,24(sp)
    30f8:	01412483          	lw	s1,20(sp)
    30fc:	01012903          	lw	s2,16(sp)
    3100:	00100513          	li	a0,1
    3104:	02010113          	addi	sp,sp,32
    3108:	00008067          	ret
    310c:	00f40633          	add	a2,s0,a5
    3110:	00064603          	lbu	a2,0(a2)
    3114:	00d61463          	bne	a2,a3,311c <fatfs_lfn_create_sfn+0x140>
    3118:	00078713          	mv	a4,a5
    311c:	00178793          	addi	a5,a5,1
    3120:	f29ff06f          	j	3048 <fatfs_lfn_create_sfn+0x6c>
    3124:	0127d863          	bge	a5,s2,3134 <fatfs_lfn_create_sfn+0x158>
    3128:	00f405b3          	add	a1,s0,a5
    312c:	0005c583          	lbu	a1,0(a1)
    3130:	00b68023          	sb	a1,0(a3)
    3134:	00178793          	addi	a5,a5,1
    3138:	00168693          	addi	a3,a3,1
    313c:	f25ff06f          	j	3060 <fatfs_lfn_create_sfn+0x84>
    3140:	00090713          	mv	a4,s2
    3144:	f21ff06f          	j	3064 <fatfs_lfn_create_sfn+0x88>
    3148:	00168693          	addi	a3,a3,1
    314c:	f31ff06f          	j	307c <fatfs_lfn_create_sfn+0xa0>
    3150:	00000513          	li	a0,0
    3154:	00008067          	ret

00003158 <fatfs_lfn_generate_tail>:
    3158:	000187b7          	lui	a5,0x18
    315c:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    3160:	16c7e463          	bltu	a5,a2,32c8 <fatfs_lfn_generate_tail+0x170>
    3164:	fa010113          	addi	sp,sp,-96
    3168:	04812c23          	sw	s0,88(sp)
    316c:	04912a23          	sw	s1,84(sp)
    3170:	05412423          	sw	s4,72(sp)
    3174:	00050493          	mv	s1,a0
    3178:	00058a13          	mv	s4,a1
    317c:	00060413          	mv	s0,a2
    3180:	00000593          	li	a1,0
    3184:	00c00613          	li	a2,12
    3188:	00410513          	addi	a0,sp,4
    318c:	04112e23          	sw	ra,92(sp)
    3190:	05312623          	sw	s3,76(sp)
    3194:	05512223          	sw	s5,68(sp)
    3198:	03712e23          	sw	s7,60(sp)
    319c:	05212823          	sw	s2,80(sp)
    31a0:	05612023          	sw	s6,64(sp)
    31a4:	fffff097          	auipc	ra,0xfffff
    31a8:	c50080e7          	jalr	-944(ra) # 1df4 <memset>
    31ac:	000065b7          	lui	a1,0x6
    31b0:	07e00793          	li	a5,126
    31b4:	01100613          	li	a2,17
    31b8:	b6c58593          	addi	a1,a1,-1172 # 5b6c <LEDS+0xb4>
    31bc:	01c10513          	addi	a0,sp,28
    31c0:	01010993          	addi	s3,sp,16
    31c4:	00f10223          	sb	a5,4(sp)
    31c8:	00098a93          	mv	s5,s3
    31cc:	fffff097          	auipc	ra,0xfffff
    31d0:	c44080e7          	jalr	-956(ra) # 1e10 <memcpy>
    31d4:	00900b93          	li	s7,9
    31d8:	00a00593          	li	a1,10
    31dc:	00040513          	mv	a0,s0
    31e0:	fffff097          	auipc	ra,0xfffff
    31e4:	bb0080e7          	jalr	-1104(ra) # 1d90 <__umodsi3>
    31e8:	03050793          	addi	a5,a0,48
    31ec:	00278533          	add	a0,a5,sp
    31f0:	fec54783          	lbu	a5,-20(a0)
    31f4:	00098913          	mv	s2,s3
    31f8:	00040513          	mv	a0,s0
    31fc:	00a00593          	li	a1,10
    3200:	00f98023          	sb	a5,0(s3)
    3204:	00040b13          	mv	s6,s0
    3208:	fffff097          	auipc	ra,0xfffff
    320c:	b40080e7          	jalr	-1216(ra) # 1d48 <__udivsi3>
    3210:	00198993          	addi	s3,s3,1
    3214:	00050413          	mv	s0,a0
    3218:	fd6be0e3          	bltu	s7,s6,31d8 <fatfs_lfn_generate_tail+0x80>
    321c:	00098023          	sb	zero,0(s3)
    3220:	00410713          	addi	a4,sp,4
    3224:	00090793          	mv	a5,s2
    3228:	00170713          	addi	a4,a4,1
    322c:	0957f663          	bgeu	a5,s5,32b8 <fatfs_lfn_generate_tail+0x160>
    3230:	00f10713          	addi	a4,sp,15
    3234:	00000793          	li	a5,0
    3238:	00e96663          	bltu	s2,a4,3244 <fatfs_lfn_generate_tail+0xec>
    323c:	41590933          	sub	s2,s2,s5
    3240:	00190793          	addi	a5,s2,1
    3244:	03078793          	addi	a5,a5,48
    3248:	002787b3          	add	a5,a5,sp
    324c:	000a0593          	mv	a1,s4
    3250:	fc078aa3          	sb	zero,-43(a5)
    3254:	00b00613          	li	a2,11
    3258:	00048513          	mv	a0,s1
    325c:	fffff097          	auipc	ra,0xfffff
    3260:	bb4080e7          	jalr	-1100(ra) # 1e10 <memcpy>
    3264:	00410513          	addi	a0,sp,4
    3268:	fffff097          	auipc	ra,0xfffff
    326c:	bcc080e7          	jalr	-1076(ra) # 1e34 <strlen>
    3270:	40a484b3          	sub	s1,s1,a0
    3274:	00050613          	mv	a2,a0
    3278:	00410593          	addi	a1,sp,4
    327c:	00848513          	addi	a0,s1,8
    3280:	fffff097          	auipc	ra,0xfffff
    3284:	b90080e7          	jalr	-1136(ra) # 1e10 <memcpy>
    3288:	05c12083          	lw	ra,92(sp)
    328c:	05812403          	lw	s0,88(sp)
    3290:	05412483          	lw	s1,84(sp)
    3294:	05012903          	lw	s2,80(sp)
    3298:	04c12983          	lw	s3,76(sp)
    329c:	04812a03          	lw	s4,72(sp)
    32a0:	04412a83          	lw	s5,68(sp)
    32a4:	04012b03          	lw	s6,64(sp)
    32a8:	03c12b83          	lw	s7,60(sp)
    32ac:	00100513          	li	a0,1
    32b0:	06010113          	addi	sp,sp,96
    32b4:	00008067          	ret
    32b8:	0007c683          	lbu	a3,0(a5)
    32bc:	fff78793          	addi	a5,a5,-1
    32c0:	00d70023          	sb	a3,0(a4)
    32c4:	f65ff06f          	j	3228 <fatfs_lfn_generate_tail+0xd0>
    32c8:	00000513          	li	a0,0
    32cc:	00008067          	ret

000032d0 <fatfs_total_path_levels>:
    32d0:	00050793          	mv	a5,a0
    32d4:	06050463          	beqz	a0,333c <fatfs_total_path_levels+0x6c>
    32d8:	00054703          	lbu	a4,0(a0)
    32dc:	02f00693          	li	a3,47
    32e0:	00d71863          	bne	a4,a3,32f0 <fatfs_total_path_levels+0x20>
    32e4:	00150793          	addi	a5,a0,1
    32e8:	00000513          	li	a0,0
    32ec:	0400006f          	j	332c <fatfs_total_path_levels+0x5c>
    32f0:	00154683          	lbu	a3,1(a0)
    32f4:	03a00713          	li	a4,58
    32f8:	00e68a63          	beq	a3,a4,330c <fatfs_total_path_levels+0x3c>
    32fc:	00254683          	lbu	a3,2(a0)
    3300:	05c00713          	li	a4,92
    3304:	fff00513          	li	a0,-1
    3308:	02e69c63          	bne	a3,a4,3340 <fatfs_total_path_levels+0x70>
    330c:	00378793          	addi	a5,a5,3
    3310:	05c00713          	li	a4,92
    3314:	fd5ff06f          	j	32e8 <fatfs_total_path_levels+0x18>
    3318:	00178793          	addi	a5,a5,1
    331c:	00e68663          	beq	a3,a4,3328 <fatfs_total_path_levels+0x58>
    3320:	0007c683          	lbu	a3,0(a5)
    3324:	fe069ae3          	bnez	a3,3318 <fatfs_total_path_levels+0x48>
    3328:	00150513          	addi	a0,a0,1
    332c:	0007c683          	lbu	a3,0(a5)
    3330:	fe0698e3          	bnez	a3,3320 <fatfs_total_path_levels+0x50>
    3334:	fff50513          	addi	a0,a0,-1
    3338:	00008067          	ret
    333c:	fff00513          	li	a0,-1
    3340:	00008067          	ret

00003344 <fatfs_get_substring>:
    3344:	0c050c63          	beqz	a0,341c <fatfs_get_substring+0xd8>
    3348:	fe010113          	addi	sp,sp,-32
    334c:	00912a23          	sw	s1,20(sp)
    3350:	00112e23          	sw	ra,28(sp)
    3354:	00812c23          	sw	s0,24(sp)
    3358:	01212823          	sw	s2,16(sp)
    335c:	01312623          	sw	s3,12(sp)
    3360:	01412423          	sw	s4,8(sp)
    3364:	00050793          	mv	a5,a0
    3368:	00068493          	mv	s1,a3
    336c:	fff00513          	li	a0,-1
    3370:	06d05a63          	blez	a3,33e4 <fatfs_get_substring+0xa0>
    3374:	0007c983          	lbu	s3,0(a5)
    3378:	02f00713          	li	a4,47
    337c:	00058a13          	mv	s4,a1
    3380:	00060913          	mv	s2,a2
    3384:	00178413          	addi	s0,a5,1
    3388:	02e98463          	beq	s3,a4,33b0 <fatfs_get_substring+0x6c>
    338c:	0017c683          	lbu	a3,1(a5)
    3390:	03a00713          	li	a4,58
    3394:	00e68a63          	beq	a3,a4,33a8 <fatfs_get_substring+0x64>
    3398:	0027c683          	lbu	a3,2(a5)
    339c:	05c00713          	li	a4,92
    33a0:	fff00513          	li	a0,-1
    33a4:	04e69063          	bne	a3,a4,33e4 <fatfs_get_substring+0xa0>
    33a8:	00378413          	addi	s0,a5,3
    33ac:	05c00993          	li	s3,92
    33b0:	00040513          	mv	a0,s0
    33b4:	fffff097          	auipc	ra,0xfffff
    33b8:	a80080e7          	jalr	-1408(ra) # 1e34 <strlen>
    33bc:	00000713          	li	a4,0
    33c0:	00000693          	li	a3,0
    33c4:	00000793          	li	a5,0
    33c8:	fff48493          	addi	s1,s1,-1
    33cc:	00e905b3          	add	a1,s2,a4
    33d0:	02a7ca63          	blt	a5,a0,3404 <fatfs_get_substring+0xc0>
    33d4:	00058023          	sb	zero,0(a1)
    33d8:	00094503          	lbu	a0,0(s2)
    33dc:	00153513          	seqz	a0,a0
    33e0:	40a00533          	neg	a0,a0
    33e4:	01c12083          	lw	ra,28(sp)
    33e8:	01812403          	lw	s0,24(sp)
    33ec:	01412483          	lw	s1,20(sp)
    33f0:	01012903          	lw	s2,16(sp)
    33f4:	00c12983          	lw	s3,12(sp)
    33f8:	00812a03          	lw	s4,8(sp)
    33fc:	02010113          	addi	sp,sp,32
    3400:	00008067          	ret
    3404:	00f40633          	add	a2,s0,a5
    3408:	00064603          	lbu	a2,0(a2)
    340c:	01361c63          	bne	a2,s3,3424 <fatfs_get_substring+0xe0>
    3410:	00168693          	addi	a3,a3,1
    3414:	00178793          	addi	a5,a5,1
    3418:	fb5ff06f          	j	33cc <fatfs_get_substring+0x88>
    341c:	fff00513          	li	a0,-1
    3420:	00008067          	ret
    3424:	ff4698e3          	bne	a3,s4,3414 <fatfs_get_substring+0xd0>
    3428:	fe9756e3          	bge	a4,s1,3414 <fatfs_get_substring+0xd0>
    342c:	00170713          	addi	a4,a4,1
    3430:	00c58023          	sb	a2,0(a1)
    3434:	fe1ff06f          	j	3414 <fatfs_get_substring+0xd0>

00003438 <fatfs_split_path>:
    3438:	fd010113          	addi	sp,sp,-48
    343c:	02912223          	sw	s1,36(sp)
    3440:	01312e23          	sw	s3,28(sp)
    3444:	01412c23          	sw	s4,24(sp)
    3448:	01512a23          	sw	s5,20(sp)
    344c:	02112623          	sw	ra,44(sp)
    3450:	00068a93          	mv	s5,a3
    3454:	02812423          	sw	s0,40(sp)
    3458:	03212023          	sw	s2,32(sp)
    345c:	00050993          	mv	s3,a0
    3460:	00058493          	mv	s1,a1
    3464:	00060a13          	mv	s4,a2
    3468:	00e12623          	sw	a4,12(sp)
    346c:	00000097          	auipc	ra,0x0
    3470:	e64080e7          	jalr	-412(ra) # 32d0 <fatfs_total_path_levels>
    3474:	fff00793          	li	a5,-1
    3478:	00c12683          	lw	a3,12(sp)
    347c:	02f51863          	bne	a0,a5,34ac <fatfs_split_path+0x74>
    3480:	fff00913          	li	s2,-1
    3484:	02c12083          	lw	ra,44(sp)
    3488:	02812403          	lw	s0,40(sp)
    348c:	02412483          	lw	s1,36(sp)
    3490:	01c12983          	lw	s3,28(sp)
    3494:	01812a03          	lw	s4,24(sp)
    3498:	01412a83          	lw	s5,20(sp)
    349c:	00090513          	mv	a0,s2
    34a0:	02012903          	lw	s2,32(sp)
    34a4:	03010113          	addi	sp,sp,48
    34a8:	00008067          	ret
    34ac:	00050593          	mv	a1,a0
    34b0:	00050413          	mv	s0,a0
    34b4:	000a8613          	mv	a2,s5
    34b8:	00098513          	mv	a0,s3
    34bc:	00000097          	auipc	ra,0x0
    34c0:	e88080e7          	jalr	-376(ra) # 3344 <fatfs_get_substring>
    34c4:	00050913          	mv	s2,a0
    34c8:	fa051ce3          	bnez	a0,3480 <fatfs_split_path+0x48>
    34cc:	00041663          	bnez	s0,34d8 <fatfs_split_path+0xa0>
    34d0:	00048023          	sb	zero,0(s1)
    34d4:	fb1ff06f          	j	3484 <fatfs_split_path+0x4c>
    34d8:	00098513          	mv	a0,s3
    34dc:	fffff097          	auipc	ra,0xfffff
    34e0:	958080e7          	jalr	-1704(ra) # 1e34 <strlen>
    34e4:	00050413          	mv	s0,a0
    34e8:	000a8513          	mv	a0,s5
    34ec:	fffff097          	auipc	ra,0xfffff
    34f0:	948080e7          	jalr	-1720(ra) # 1e34 <strlen>
    34f4:	40a40433          	sub	s0,s0,a0
    34f8:	008a5463          	bge	s4,s0,3500 <fatfs_split_path+0xc8>
    34fc:	000a0413          	mv	s0,s4
    3500:	00048513          	mv	a0,s1
    3504:	00040613          	mv	a2,s0
    3508:	00098593          	mv	a1,s3
    350c:	008484b3          	add	s1,s1,s0
    3510:	fffff097          	auipc	ra,0xfffff
    3514:	900080e7          	jalr	-1792(ra) # 1e10 <memcpy>
    3518:	fe048fa3          	sb	zero,-1(s1)
    351c:	f69ff06f          	j	3484 <fatfs_split_path+0x4c>

00003520 <fatfs_compare_names>:
    3520:	fd010113          	addi	sp,sp,-48
    3524:	02112623          	sw	ra,44(sp)
    3528:	02812423          	sw	s0,40(sp)
    352c:	02912223          	sw	s1,36(sp)
    3530:	03212023          	sw	s2,32(sp)
    3534:	01312e23          	sw	s3,28(sp)
    3538:	00058913          	mv	s2,a1
    353c:	01412c23          	sw	s4,24(sp)
    3540:	01512a23          	sw	s5,20(sp)
    3544:	01612823          	sw	s6,16(sp)
    3548:	00050a13          	mv	s4,a0
    354c:	fffff097          	auipc	ra,0xfffff
    3550:	0f0080e7          	jalr	240(ra) # 263c <FileString_GetExtension>
    3554:	00050493          	mv	s1,a0
    3558:	00090513          	mv	a0,s2
    355c:	fffff097          	auipc	ra,0xfffff
    3560:	0e0080e7          	jalr	224(ra) # 263c <FileString_GetExtension>
    3564:	fff00793          	li	a5,-1
    3568:	00050413          	mv	s0,a0
    356c:	00000993          	li	s3,0
    3570:	08f49a63          	bne	s1,a5,3604 <fatfs_compare_names+0xe4>
    3574:	0c951e63          	bne	a0,s1,3650 <fatfs_compare_names+0x130>
    3578:	000a0513          	mv	a0,s4
    357c:	fffff097          	auipc	ra,0xfffff
    3580:	8b8080e7          	jalr	-1864(ra) # 1e34 <strlen>
    3584:	00050493          	mv	s1,a0
    3588:	00090513          	mv	a0,s2
    358c:	fffff097          	auipc	ra,0xfffff
    3590:	8a8080e7          	jalr	-1880(ra) # 1e34 <strlen>
    3594:	00050413          	mv	s0,a0
    3598:	fff48793          	addi	a5,s1,-1
    359c:	00fa07b3          	add	a5,s4,a5
    35a0:	40978733          	sub	a4,a5,s1
    35a4:	02000613          	li	a2,32
    35a8:	00078693          	mv	a3,a5
    35ac:	00e78863          	beq	a5,a4,35bc <fatfs_compare_names+0x9c>
    35b0:	0007c583          	lbu	a1,0(a5)
    35b4:	fff78793          	addi	a5,a5,-1
    35b8:	0cc58263          	beq	a1,a2,367c <fatfs_compare_names+0x15c>
    35bc:	fff40793          	addi	a5,s0,-1
    35c0:	00f907b3          	add	a5,s2,a5
    35c4:	40878733          	sub	a4,a5,s0
    35c8:	02000613          	li	a2,32
    35cc:	00078693          	mv	a3,a5
    35d0:	00e78863          	beq	a5,a4,35e0 <fatfs_compare_names+0xc0>
    35d4:	0007c583          	lbu	a1,0(a5)
    35d8:	fff78793          	addi	a5,a5,-1
    35dc:	0ac58463          	beq	a1,a2,3684 <fatfs_compare_names+0x164>
    35e0:	00000993          	li	s3,0
    35e4:	06941663          	bne	s0,s1,3650 <fatfs_compare_names+0x130>
    35e8:	00040613          	mv	a2,s0
    35ec:	00090593          	mv	a1,s2
    35f0:	000a0513          	mv	a0,s4
    35f4:	fffff097          	auipc	ra,0xfffff
    35f8:	fd8080e7          	jalr	-40(ra) # 25cc <FileString_StrCmpNoCase>
    35fc:	00153993          	seqz	s3,a0
    3600:	0500006f          	j	3650 <fatfs_compare_names+0x130>
    3604:	04f50663          	beq	a0,a5,3650 <fatfs_compare_names+0x130>
    3608:	00148a93          	addi	s5,s1,1
    360c:	015a0ab3          	add	s5,s4,s5
    3610:	00150b13          	addi	s6,a0,1
    3614:	000a8513          	mv	a0,s5
    3618:	fffff097          	auipc	ra,0xfffff
    361c:	81c080e7          	jalr	-2020(ra) # 1e34 <strlen>
    3620:	01690b33          	add	s6,s2,s6
    3624:	00a12623          	sw	a0,12(sp)
    3628:	000b0513          	mv	a0,s6
    362c:	fffff097          	auipc	ra,0xfffff
    3630:	808080e7          	jalr	-2040(ra) # 1e34 <strlen>
    3634:	00c12603          	lw	a2,12(sp)
    3638:	00a61c63          	bne	a2,a0,3650 <fatfs_compare_names+0x130>
    363c:	000b0593          	mv	a1,s6
    3640:	000a8513          	mv	a0,s5
    3644:	fffff097          	auipc	ra,0xfffff
    3648:	f88080e7          	jalr	-120(ra) # 25cc <FileString_StrCmpNoCase>
    364c:	f40506e3          	beqz	a0,3598 <fatfs_compare_names+0x78>
    3650:	02c12083          	lw	ra,44(sp)
    3654:	02812403          	lw	s0,40(sp)
    3658:	02412483          	lw	s1,36(sp)
    365c:	02012903          	lw	s2,32(sp)
    3660:	01812a03          	lw	s4,24(sp)
    3664:	01412a83          	lw	s5,20(sp)
    3668:	01012b03          	lw	s6,16(sp)
    366c:	00098513          	mv	a0,s3
    3670:	01c12983          	lw	s3,28(sp)
    3674:	03010113          	addi	sp,sp,48
    3678:	00008067          	ret
    367c:	414684b3          	sub	s1,a3,s4
    3680:	f29ff06f          	j	35a8 <fatfs_compare_names+0x88>
    3684:	41268433          	sub	s0,a3,s2
    3688:	f45ff06f          	j	35cc <fatfs_compare_names+0xac>

0000368c <_check_file_open>:
    368c:	fe010113          	addi	sp,sp,-32
    3690:	000067b7          	lui	a5,0x6
    3694:	00812c23          	sw	s0,24(sp)
    3698:	de87a403          	lw	s0,-536(a5) # 5de8 <_open_file_list>
    369c:	00912a23          	sw	s1,20(sp)
    36a0:	01212823          	sw	s2,16(sp)
    36a4:	01312623          	sw	s3,12(sp)
    36a8:	00112e23          	sw	ra,28(sp)
    36ac:	00050493          	mv	s1,a0
    36b0:	01450913          	addi	s2,a0,20
    36b4:	11850993          	addi	s3,a0,280
    36b8:	02041263          	bnez	s0,36dc <_check_file_open+0x50>
    36bc:	00000513          	li	a0,0
    36c0:	01c12083          	lw	ra,28(sp)
    36c4:	01812403          	lw	s0,24(sp)
    36c8:	01412483          	lw	s1,20(sp)
    36cc:	01012903          	lw	s2,16(sp)
    36d0:	00c12983          	lw	s3,12(sp)
    36d4:	02010113          	addi	sp,sp,32
    36d8:	00008067          	ret
    36dc:	bc440793          	addi	a5,s0,-1084
    36e0:	02f48663          	beq	s1,a5,370c <_check_file_open+0x80>
    36e4:	00090593          	mv	a1,s2
    36e8:	bd840513          	addi	a0,s0,-1064
    36ec:	00000097          	auipc	ra,0x0
    36f0:	e34080e7          	jalr	-460(ra) # 3520 <fatfs_compare_names>
    36f4:	00050c63          	beqz	a0,370c <_check_file_open+0x80>
    36f8:	00098593          	mv	a1,s3
    36fc:	cdc40513          	addi	a0,s0,-804
    3700:	00000097          	auipc	ra,0x0
    3704:	e20080e7          	jalr	-480(ra) # 3520 <fatfs_compare_names>
    3708:	00051663          	bnez	a0,3714 <_check_file_open+0x88>
    370c:	00442403          	lw	s0,4(s0)
    3710:	fa9ff06f          	j	36b8 <_check_file_open+0x2c>
    3714:	00100513          	li	a0,1
    3718:	fa9ff06f          	j	36c0 <_check_file_open+0x34>

0000371c <fatfs_get_sfn_display_name>:
    371c:	00000713          	li	a4,0
    3720:	00c00613          	li	a2,12
    3724:	02000813          	li	a6,32
    3728:	01900893          	li	a7,25
    372c:	0005c783          	lbu	a5,0(a1)
    3730:	00078463          	beqz	a5,3738 <fatfs_get_sfn_display_name+0x1c>
    3734:	00c71863          	bne	a4,a2,3744 <fatfs_get_sfn_display_name+0x28>
    3738:	00050023          	sb	zero,0(a0)
    373c:	00100513          	li	a0,1
    3740:	00008067          	ret
    3744:	00158593          	addi	a1,a1,1
    3748:	ff0782e3          	beq	a5,a6,372c <fatfs_get_sfn_display_name+0x10>
    374c:	fbf78693          	addi	a3,a5,-65
    3750:	0ff6f693          	zext.b	a3,a3
    3754:	00d8e663          	bltu	a7,a3,3760 <fatfs_get_sfn_display_name+0x44>
    3758:	02078793          	addi	a5,a5,32
    375c:	0ff7f793          	zext.b	a5,a5
    3760:	00f50023          	sb	a5,0(a0)
    3764:	00170713          	addi	a4,a4,1
    3768:	00150513          	addi	a0,a0,1
    376c:	fc1ff06f          	j	372c <fatfs_get_sfn_display_name+0x10>

00003770 <fatfs_fat_init>:
    3770:	ff010113          	addi	sp,sp,-16
    3774:	00812423          	sw	s0,8(sp)
    3778:	00912223          	sw	s1,4(sp)
    377c:	00112623          	sw	ra,12(sp)
    3780:	fff00793          	li	a5,-1
    3784:	25850493          	addi	s1,a0,600
    3788:	00050413          	mv	s0,a0
    378c:	44f52c23          	sw	a5,1112(a0)
    3790:	24052a23          	sw	zero,596(a0)
    3794:	44052e23          	sw	zero,1116(a0)
    3798:	20000613          	li	a2,512
    379c:	00048513          	mv	a0,s1
    37a0:	00000593          	li	a1,0
    37a4:	ffffe097          	auipc	ra,0xffffe
    37a8:	650080e7          	jalr	1616(ra) # 1df4 <memset>
    37ac:	25442783          	lw	a5,596(s0)
    37b0:	00c12083          	lw	ra,12(sp)
    37b4:	24942a23          	sw	s1,596(s0)
    37b8:	46042023          	sw	zero,1120(s0)
    37bc:	46f42223          	sw	a5,1124(s0)
    37c0:	00812403          	lw	s0,8(sp)
    37c4:	00412483          	lw	s1,4(sp)
    37c8:	01010113          	addi	sp,sp,16
    37cc:	00008067          	ret

000037d0 <fatfs_init>:
    37d0:	fd010113          	addi	sp,sp,-48
    37d4:	02812423          	sw	s0,40(sp)
    37d8:	02112623          	sw	ra,44(sp)
    37dc:	02912223          	sw	s1,36(sp)
    37e0:	03212023          	sw	s2,32(sp)
    37e4:	01312e23          	sw	s3,28(sp)
    37e8:	fff00793          	li	a5,-1
    37ec:	24f52223          	sw	a5,580(a0)
    37f0:	24052423          	sw	zero,584(a0)
    37f4:	02052223          	sw	zero,36(a0)
    37f8:	00050413          	mv	s0,a0
    37fc:	00000097          	auipc	ra,0x0
    3800:	f74080e7          	jalr	-140(ra) # 3770 <fatfs_fat_init>
    3804:	03442783          	lw	a5,52(s0)
    3808:	02079263          	bnez	a5,382c <fatfs_init+0x5c>
    380c:	fff00513          	li	a0,-1
    3810:	02c12083          	lw	ra,44(sp)
    3814:	02812403          	lw	s0,40(sp)
    3818:	02412483          	lw	s1,36(sp)
    381c:	02012903          	lw	s2,32(sp)
    3820:	01c12983          	lw	s3,28(sp)
    3824:	03010113          	addi	sp,sp,48
    3828:	00008067          	ret
    382c:	04440593          	addi	a1,s0,68
    3830:	00100613          	li	a2,1
    3834:	00000513          	li	a0,0
    3838:	00b12623          	sw	a1,12(sp)
    383c:	000780e7          	jalr	a5
    3840:	fc0506e3          	beqz	a0,380c <fatfs_init+0x3c>
    3844:	24042703          	lw	a4,576(s0)
    3848:	ffff07b7          	lui	a5,0xffff0
    384c:	00c12583          	lw	a1,12(sp)
    3850:	00e7f7b3          	and	a5,a5,a4
    3854:	aa550737          	lui	a4,0xaa550
    3858:	00e78663          	beq	a5,a4,3864 <fatfs_init+0x94>
    385c:	ffd00513          	li	a0,-3
    3860:	fb1ff06f          	j	3810 <fatfs_init+0x40>
    3864:	24245703          	lhu	a4,578(s0)
    3868:	0000b7b7          	lui	a5,0xb
    386c:	a5578793          	addi	a5,a5,-1451 # aa55 <_files+0x3ff5>
    3870:	ffc00513          	li	a0,-4
    3874:	f8f71ee3          	bne	a4,a5,3810 <fatfs_init+0x40>
    3878:	20644783          	lbu	a5,518(s0)
    387c:	00600713          	li	a4,6
    3880:	02f76463          	bltu	a4,a5,38a8 <fatfs_init+0xd8>
    3884:	00400713          	li	a4,4
    3888:	00f76663          	bltu	a4,a5,3894 <fatfs_init+0xc4>
    388c:	00000513          	li	a0,0
    3890:	02078663          	beqz	a5,38bc <fatfs_init+0xec>
    3894:	20c45503          	lhu	a0,524(s0)
    3898:	20a45783          	lhu	a5,522(s0)
    389c:	01051513          	slli	a0,a0,0x10
    38a0:	00f56533          	or	a0,a0,a5
    38a4:	0180006f          	j	38bc <fatfs_init+0xec>
    38a8:	00c00713          	li	a4,12
    38ac:	12f76a63          	bltu	a4,a5,39e0 <fatfs_init+0x210>
    38b0:	00a00713          	li	a4,10
    38b4:	00000513          	li	a0,0
    38b8:	fcf76ee3          	bltu	a4,a5,3894 <fatfs_init+0xc4>
    38bc:	03442783          	lw	a5,52(s0)
    38c0:	00a42e23          	sw	a0,28(s0)
    38c4:	00100613          	li	a2,1
    38c8:	000780e7          	jalr	a5
    38cc:	f40500e3          	beqz	a0,380c <fatfs_init+0x3c>
    38d0:	05044783          	lbu	a5,80(s0)
    38d4:	04f44703          	lbu	a4,79(s0)
    38d8:	ffe00513          	li	a0,-2
    38dc:	00879793          	slli	a5,a5,0x8
    38e0:	00e7e7b3          	or	a5,a5,a4
    38e4:	20000713          	li	a4,512
    38e8:	f2e794e3          	bne	a5,a4,3810 <fatfs_init+0x40>
    38ec:	05644483          	lbu	s1,86(s0)
    38f0:	05544783          	lbu	a5,85(s0)
    38f4:	05144983          	lbu	s3,81(s0)
    38f8:	00849493          	slli	s1,s1,0x8
    38fc:	05a45583          	lhu	a1,90(s0)
    3900:	00f4e4b3          	or	s1,s1,a5
    3904:	01340023          	sb	s3,0(s0)
    3908:	02941423          	sh	s1,40(s0)
    390c:	05245903          	lhu	s2,82(s0)
    3910:	05444503          	lbu	a0,84(s0)
    3914:	00059463          	bnez	a1,391c <fatfs_init+0x14c>
    3918:	06842583          	lw	a1,104(s0)
    391c:	07042783          	lw	a5,112(s0)
    3920:	02b42023          	sw	a1,32(s0)
    3924:	00549493          	slli	s1,s1,0x5
    3928:	00f42423          	sw	a5,8(s0)
    392c:	07445783          	lhu	a5,116(s0)
    3930:	1ff48493          	addi	s1,s1,511
    3934:	4094d493          	srai	s1,s1,0x9
    3938:	00f41c23          	sh	a5,24(s0)
    393c:	fffff097          	auipc	ra,0xfffff
    3940:	bfc080e7          	jalr	-1028(ra) # 2538 <__mulsi3>
    3944:	00a907b3          	add	a5,s2,a0
    3948:	00f42623          	sw	a5,12(s0)
    394c:	01c42783          	lw	a5,28(s0)
    3950:	24245703          	lhu	a4,578(s0)
    3954:	00942823          	sw	s1,16(s0)
    3958:	00f907b3          	add	a5,s2,a5
    395c:	00f42a23          	sw	a5,20(s0)
    3960:	00f507b3          	add	a5,a0,a5
    3964:	00f42223          	sw	a5,4(s0)
    3968:	0000b7b7          	lui	a5,0xb
    396c:	a5578793          	addi	a5,a5,-1451 # aa55 <_files+0x3ff5>
    3970:	eef716e3          	bne	a4,a5,385c <fatfs_init+0x8c>
    3974:	05844783          	lbu	a5,88(s0)
    3978:	05744703          	lbu	a4,87(s0)
    397c:	00879793          	slli	a5,a5,0x8
    3980:	00e7e7b3          	or	a5,a5,a4
    3984:	00079463          	bnez	a5,398c <fatfs_init+0x1bc>
    3988:	06442783          	lw	a5,100(s0)
    398c:	00990933          	add	s2,s2,s1
    3990:	00a90533          	add	a0,s2,a0
    3994:	40a787b3          	sub	a5,a5,a0
    3998:	ffb00513          	li	a0,-5
    399c:	e6098ae3          	beqz	s3,3810 <fatfs_init+0x40>
    39a0:	00078513          	mv	a0,a5
    39a4:	00098593          	mv	a1,s3
    39a8:	ffffe097          	auipc	ra,0xffffe
    39ac:	3a0080e7          	jalr	928(ra) # 1d48 <__udivsi3>
    39b0:	00001737          	lui	a4,0x1
    39b4:	00050793          	mv	a5,a0
    39b8:	ff470713          	addi	a4,a4,-12 # ff4 <main+0x130>
    39bc:	ffb00513          	li	a0,-5
    39c0:	e4f778e3          	bgeu	a4,a5,3810 <fatfs_init+0x40>
    39c4:	00010737          	lui	a4,0x10
    39c8:	ff470713          	addi	a4,a4,-12 # fff4 <_files+0x9594>
    39cc:	02f76663          	bltu	a4,a5,39f8 <fatfs_init+0x228>
    39d0:	00042423          	sw	zero,8(s0)
    39d4:	02042823          	sw	zero,48(s0)
    39d8:	00000513          	li	a0,0
    39dc:	e35ff06f          	j	3810 <fatfs_init+0x40>
    39e0:	ff278793          	addi	a5,a5,-14
    39e4:	0ff7f793          	zext.b	a5,a5
    39e8:	00100713          	li	a4,1
    39ec:	00000513          	li	a0,0
    39f0:	eaf772e3          	bgeu	a4,a5,3894 <fatfs_init+0xc4>
    39f4:	ec9ff06f          	j	38bc <fatfs_init+0xec>
    39f8:	00100793          	li	a5,1
    39fc:	02f42823          	sw	a5,48(s0)
    3a00:	fd9ff06f          	j	39d8 <fatfs_init+0x208>

00003a04 <fl_attach_media>:
    3a04:	000067b7          	lui	a5,0x6
    3a08:	df47a783          	lw	a5,-524(a5) # 5df4 <_filelib_init>
    3a0c:	ff010113          	addi	sp,sp,-16
    3a10:	00812423          	sw	s0,8(sp)
    3a14:	00912223          	sw	s1,4(sp)
    3a18:	00112623          	sw	ra,12(sp)
    3a1c:	00050493          	mv	s1,a0
    3a20:	00058413          	mv	s0,a1
    3a24:	00079663          	bnez	a5,3a30 <fl_attach_media+0x2c>
    3a28:	fffff097          	auipc	ra,0xfffff
    3a2c:	fa8080e7          	jalr	-88(ra) # 29d0 <fl_init>
    3a30:	00006537          	lui	a0,0x6
    3a34:	5f850793          	addi	a5,a0,1528 # 65f8 <_fs>
    3a38:	5f850513          	addi	a0,a0,1528
    3a3c:	0287ac23          	sw	s0,56(a5)
    3a40:	0297aa23          	sw	s1,52(a5)
    3a44:	00000097          	auipc	ra,0x0
    3a48:	d8c080e7          	jalr	-628(ra) # 37d0 <fatfs_init>
    3a4c:	00050413          	mv	s0,a0
    3a50:	02050863          	beqz	a0,3a80 <fl_attach_media+0x7c>
    3a54:	00050593          	mv	a1,a0
    3a58:	00006537          	lui	a0,0x6
    3a5c:	b8050513          	addi	a0,a0,-1152 # 5b80 <LEDS+0xc8>
    3a60:	fffff097          	auipc	ra,0xfffff
    3a64:	9a8080e7          	jalr	-1624(ra) # 2408 <printf>
    3a68:	00c12083          	lw	ra,12(sp)
    3a6c:	00040513          	mv	a0,s0
    3a70:	00812403          	lw	s0,8(sp)
    3a74:	00412483          	lw	s1,4(sp)
    3a78:	01010113          	addi	sp,sp,16
    3a7c:	00008067          	ret
    3a80:	000067b7          	lui	a5,0x6
    3a84:	00100713          	li	a4,1
    3a88:	dee7a823          	sw	a4,-528(a5) # 5df0 <_filelib_valid>
    3a8c:	fddff06f          	j	3a68 <fl_attach_media+0x64>

00003a90 <fatfs_fat_purge>:
    3a90:	ff010113          	addi	sp,sp,-16
    3a94:	00812423          	sw	s0,8(sp)
    3a98:	25452403          	lw	s0,596(a0)
    3a9c:	00912223          	sw	s1,4(sp)
    3aa0:	00112623          	sw	ra,12(sp)
    3aa4:	00050493          	mv	s1,a0
    3aa8:	00041663          	bnez	s0,3ab4 <fatfs_fat_purge+0x24>
    3aac:	00100513          	li	a0,1
    3ab0:	0280006f          	j	3ad8 <fatfs_fat_purge+0x48>
    3ab4:	20442783          	lw	a5,516(s0)
    3ab8:	00079663          	bnez	a5,3ac4 <fatfs_fat_purge+0x34>
    3abc:	20c42403          	lw	s0,524(s0)
    3ac0:	fe9ff06f          	j	3aa8 <fatfs_fat_purge+0x18>
    3ac4:	00040593          	mv	a1,s0
    3ac8:	00048513          	mv	a0,s1
    3acc:	fffff097          	auipc	ra,0xfffff
    3ad0:	b9c080e7          	jalr	-1124(ra) # 2668 <fatfs_fat_writeback>
    3ad4:	fe0514e3          	bnez	a0,3abc <fatfs_fat_purge+0x2c>
    3ad8:	00c12083          	lw	ra,12(sp)
    3adc:	00812403          	lw	s0,8(sp)
    3ae0:	00412483          	lw	s1,4(sp)
    3ae4:	01010113          	addi	sp,sp,16
    3ae8:	00008067          	ret

00003aec <fatfs_find_next_cluster>:
    3aec:	ff010113          	addi	sp,sp,-16
    3af0:	00812423          	sw	s0,8(sp)
    3af4:	01212023          	sw	s2,0(sp)
    3af8:	00112623          	sw	ra,12(sp)
    3afc:	00912223          	sw	s1,4(sp)
    3b00:	00050913          	mv	s2,a0
    3b04:	00200413          	li	s0,2
    3b08:	00058463          	beqz	a1,3b10 <fatfs_find_next_cluster+0x24>
    3b0c:	00058413          	mv	s0,a1
    3b10:	03092783          	lw	a5,48(s2)
    3b14:	00745493          	srli	s1,s0,0x7
    3b18:	00079463          	bnez	a5,3b20 <fatfs_find_next_cluster+0x34>
    3b1c:	00845493          	srli	s1,s0,0x8
    3b20:	01492583          	lw	a1,20(s2)
    3b24:	00090513          	mv	a0,s2
    3b28:	00b485b3          	add	a1,s1,a1
    3b2c:	fffff097          	auipc	ra,0xfffff
    3b30:	bbc080e7          	jalr	-1092(ra) # 26e8 <fatfs_fat_read_sector>
    3b34:	00050793          	mv	a5,a0
    3b38:	fff00513          	li	a0,-1
    3b3c:	04078a63          	beqz	a5,3b90 <fatfs_find_next_cluster+0xa4>
    3b40:	03092703          	lw	a4,48(s2)
    3b44:	2087a783          	lw	a5,520(a5)
    3b48:	06071063          	bnez	a4,3ba8 <fatfs_find_next_cluster+0xbc>
    3b4c:	00849493          	slli	s1,s1,0x8
    3b50:	40940433          	sub	s0,s0,s1
    3b54:	00010737          	lui	a4,0x10
    3b58:	00141413          	slli	s0,s0,0x1
    3b5c:	ffe70713          	addi	a4,a4,-2 # fffe <_files+0x959e>
    3b60:	00e47433          	and	s0,s0,a4
    3b64:	008787b3          	add	a5,a5,s0
    3b68:	0017c503          	lbu	a0,1(a5)
    3b6c:	0007c783          	lbu	a5,0(a5)
    3b70:	00851513          	slli	a0,a0,0x8
    3b74:	00f50533          	add	a0,a0,a5
    3b78:	ffff07b7          	lui	a5,0xffff0
    3b7c:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    3b80:	00f507b3          	add	a5,a0,a5
    3b84:	00700713          	li	a4,7
    3b88:	00f76463          	bltu	a4,a5,3b90 <fatfs_find_next_cluster+0xa4>
    3b8c:	fff00513          	li	a0,-1
    3b90:	00c12083          	lw	ra,12(sp)
    3b94:	00812403          	lw	s0,8(sp)
    3b98:	00412483          	lw	s1,4(sp)
    3b9c:	00012903          	lw	s2,0(sp)
    3ba0:	01010113          	addi	sp,sp,16
    3ba4:	00008067          	ret
    3ba8:	00749493          	slli	s1,s1,0x7
    3bac:	40940433          	sub	s0,s0,s1
    3bb0:	00010737          	lui	a4,0x10
    3bb4:	ffc70713          	addi	a4,a4,-4 # fffc <_files+0x959c>
    3bb8:	00241413          	slli	s0,s0,0x2
    3bbc:	00e47433          	and	s0,s0,a4
    3bc0:	008787b3          	add	a5,a5,s0
    3bc4:	0037c503          	lbu	a0,3(a5)
    3bc8:	0027c703          	lbu	a4,2(a5)
    3bcc:	01851513          	slli	a0,a0,0x18
    3bd0:	01071713          	slli	a4,a4,0x10
    3bd4:	00e50533          	add	a0,a0,a4
    3bd8:	0007c703          	lbu	a4,0(a5)
    3bdc:	0017c783          	lbu	a5,1(a5)
    3be0:	00e50533          	add	a0,a0,a4
    3be4:	00879793          	slli	a5,a5,0x8
    3be8:	00f50533          	add	a0,a0,a5
    3bec:	00451513          	slli	a0,a0,0x4
    3bf0:	00455513          	srli	a0,a0,0x4
    3bf4:	f00007b7          	lui	a5,0xf0000
    3bf8:	f85ff06f          	j	3b7c <fatfs_find_next_cluster+0x90>

00003bfc <fatfs_sector_reader>:
    3bfc:	03052783          	lw	a5,48(a0)
    3c00:	fd010113          	addi	sp,sp,-48
    3c04:	02812423          	sw	s0,40(sp)
    3c08:	03212023          	sw	s2,32(sp)
    3c0c:	01312e23          	sw	s3,28(sp)
    3c10:	02112623          	sw	ra,44(sp)
    3c14:	02912223          	sw	s1,36(sp)
    3c18:	01412c23          	sw	s4,24(sp)
    3c1c:	01512a23          	sw	s5,20(sp)
    3c20:	00f5e7b3          	or	a5,a1,a5
    3c24:	00050413          	mv	s0,a0
    3c28:	00060913          	mv	s2,a2
    3c2c:	00068993          	mv	s3,a3
    3c30:	06079c63          	bnez	a5,3ca8 <fatfs_sector_reader+0xac>
    3c34:	01052783          	lw	a5,16(a0)
    3c38:	02f66663          	bltu	a2,a5,3c64 <fatfs_sector_reader+0x68>
    3c3c:	00000513          	li	a0,0
    3c40:	02c12083          	lw	ra,44(sp)
    3c44:	02812403          	lw	s0,40(sp)
    3c48:	02412483          	lw	s1,36(sp)
    3c4c:	02012903          	lw	s2,32(sp)
    3c50:	01c12983          	lw	s3,28(sp)
    3c54:	01812a03          	lw	s4,24(sp)
    3c58:	01412a83          	lw	s5,20(sp)
    3c5c:	03010113          	addi	sp,sp,48
    3c60:	00008067          	ret
    3c64:	01c52503          	lw	a0,28(a0)
    3c68:	00c42783          	lw	a5,12(s0)
    3c6c:	00f50533          	add	a0,a0,a5
    3c70:	01250533          	add	a0,a0,s2
    3c74:	0a098263          	beqz	s3,3d18 <fatfs_sector_reader+0x11c>
    3c78:	03442783          	lw	a5,52(s0)
    3c7c:	00100613          	li	a2,1
    3c80:	00098593          	mv	a1,s3
    3c84:	02812403          	lw	s0,40(sp)
    3c88:	02c12083          	lw	ra,44(sp)
    3c8c:	02412483          	lw	s1,36(sp)
    3c90:	02012903          	lw	s2,32(sp)
    3c94:	01c12983          	lw	s3,28(sp)
    3c98:	01812a03          	lw	s4,24(sp)
    3c9c:	01412a83          	lw	s5,20(sp)
    3ca0:	03010113          	addi	sp,sp,48
    3ca4:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    3ca8:	00058493          	mv	s1,a1
    3cac:	00054583          	lbu	a1,0(a0)
    3cb0:	00060513          	mv	a0,a2
    3cb4:	00000a93          	li	s5,0
    3cb8:	00b12623          	sw	a1,12(sp)
    3cbc:	ffffe097          	auipc	ra,0xffffe
    3cc0:	08c080e7          	jalr	140(ra) # 1d48 <__udivsi3>
    3cc4:	00c12583          	lw	a1,12(sp)
    3cc8:	00050a13          	mv	s4,a0
    3ccc:	00090513          	mv	a0,s2
    3cd0:	ffffe097          	auipc	ra,0xffffe
    3cd4:	0c0080e7          	jalr	192(ra) # 1d90 <__umodsi3>
    3cd8:	00050913          	mv	s2,a0
    3cdc:	034a9063          	bne	s5,s4,3cfc <fatfs_sector_reader+0x100>
    3ce0:	fff00793          	li	a5,-1
    3ce4:	f4f48ce3          	beq	s1,a5,3c3c <fatfs_sector_reader+0x40>
    3ce8:	00048593          	mv	a1,s1
    3cec:	00040513          	mv	a0,s0
    3cf0:	fffff097          	auipc	ra,0xfffff
    3cf4:	ba4080e7          	jalr	-1116(ra) # 2894 <fatfs_lba_of_cluster>
    3cf8:	f79ff06f          	j	3c70 <fatfs_sector_reader+0x74>
    3cfc:	00048593          	mv	a1,s1
    3d00:	00040513          	mv	a0,s0
    3d04:	00000097          	auipc	ra,0x0
    3d08:	de8080e7          	jalr	-536(ra) # 3aec <fatfs_find_next_cluster>
    3d0c:	00050493          	mv	s1,a0
    3d10:	001a8a93          	addi	s5,s5,1
    3d14:	fc9ff06f          	j	3cdc <fatfs_sector_reader+0xe0>
    3d18:	24442783          	lw	a5,580(s0)
    3d1c:	00a78c63          	beq	a5,a0,3d34 <fatfs_sector_reader+0x138>
    3d20:	03442783          	lw	a5,52(s0)
    3d24:	24a42223          	sw	a0,580(s0)
    3d28:	00100613          	li	a2,1
    3d2c:	04440593          	addi	a1,s0,68
    3d30:	f55ff06f          	j	3c84 <fatfs_sector_reader+0x88>
    3d34:	00100513          	li	a0,1
    3d38:	f09ff06f          	j	3c40 <fatfs_sector_reader+0x44>

00003d3c <fatfs_get_file_entry>:
    3d3c:	eb010113          	addi	sp,sp,-336
    3d40:	14812423          	sw	s0,328(sp)
    3d44:	01810413          	addi	s0,sp,24
    3d48:	14912223          	sw	s1,324(sp)
    3d4c:	15212023          	sw	s2,320(sp)
    3d50:	13312e23          	sw	s3,316(sp)
    3d54:	13412c23          	sw	s4,312(sp)
    3d58:	13512a23          	sw	s5,308(sp)
    3d5c:	13612823          	sw	s6,304(sp)
    3d60:	14112623          	sw	ra,332(sp)
    3d64:	13712623          	sw	s7,300(sp)
    3d68:	13812423          	sw	s8,296(sp)
    3d6c:	13912223          	sw	s9,292(sp)
    3d70:	13a12023          	sw	s10,288(sp)
    3d74:	00050493          	mv	s1,a0
    3d78:	00058a93          	mv	s5,a1
    3d7c:	00060913          	mv	s2,a2
    3d80:	00068993          	mv	s3,a3
    3d84:	10010ea3          	sb	zero,285(sp)
    3d88:	11c10a13          	addi	s4,sp,284
    3d8c:	00040b13          	mv	s6,s0
    3d90:	00040513          	mv	a0,s0
    3d94:	00d00613          	li	a2,13
    3d98:	00000593          	li	a1,0
    3d9c:	00d40413          	addi	s0,s0,13
    3da0:	ffffe097          	auipc	ra,0xffffe
    3da4:	054080e7          	jalr	84(ra) # 1df4 <memset>
    3da8:	ff4414e3          	bne	s0,s4,3d90 <fatfs_get_file_entry+0x54>
    3dac:	00000a13          	li	s4,0
    3db0:	24448c13          	addi	s8,s1,580
    3db4:	00800c93          	li	s9,8
    3db8:	02000b93          	li	s7,32
    3dbc:	02e00d13          	li	s10,46
    3dc0:	00000693          	li	a3,0
    3dc4:	000a0613          	mv	a2,s4
    3dc8:	000a8593          	mv	a1,s5
    3dcc:	00048513          	mv	a0,s1
    3dd0:	00000097          	auipc	ra,0x0
    3dd4:	e2c080e7          	jalr	-468(ra) # 3bfc <fatfs_sector_reader>
    3dd8:	16050463          	beqz	a0,3f40 <fatfs_get_file_entry+0x204>
    3ddc:	04448413          	addi	s0,s1,68
    3de0:	00040513          	mv	a0,s0
    3de4:	fffff097          	auipc	ra,0xfffff
    3de8:	f08080e7          	jalr	-248(ra) # 2cec <fatfs_entry_lfn_text>
    3dec:	02050263          	beqz	a0,3e10 <fatfs_get_file_entry+0xd4>
    3df0:	00040593          	mv	a1,s0
    3df4:	000b0513          	mv	a0,s6
    3df8:	fffff097          	auipc	ra,0xfffff
    3dfc:	dec080e7          	jalr	-532(ra) # 2be4 <fatfs_lfn_cache_entry>
    3e00:	02040413          	addi	s0,s0,32
    3e04:	fd841ee3          	bne	s0,s8,3de0 <fatfs_get_file_entry+0xa4>
    3e08:	001a0a13          	addi	s4,s4,1
    3e0c:	fb5ff06f          	j	3dc0 <fatfs_get_file_entry+0x84>
    3e10:	00040513          	mv	a0,s0
    3e14:	fffff097          	auipc	ra,0xfffff
    3e18:	eec080e7          	jalr	-276(ra) # 2d00 <fatfs_entry_lfn_invalid>
    3e1c:	00050663          	beqz	a0,3e28 <fatfs_get_file_entry+0xec>
    3e20:	10010ea3          	sb	zero,285(sp)
    3e24:	fddff06f          	j	3e00 <fatfs_get_file_entry+0xc4>
    3e28:	00040593          	mv	a1,s0
    3e2c:	000b0513          	mv	a0,s6
    3e30:	fffff097          	auipc	ra,0xfffff
    3e34:	f08080e7          	jalr	-248(ra) # 2d38 <fatfs_entry_lfn_exists>
    3e38:	06050863          	beqz	a0,3ea8 <fatfs_get_file_entry+0x16c>
    3e3c:	000b0513          	mv	a0,s6
    3e40:	fffff097          	auipc	ra,0xfffff
    3e44:	e70080e7          	jalr	-400(ra) # 2cb0 <fatfs_lfn_cache_get>
    3e48:	00090593          	mv	a1,s2
    3e4c:	fffff097          	auipc	ra,0xfffff
    3e50:	6d4080e7          	jalr	1748(ra) # 3520 <fatfs_compare_names>
    3e54:	fc0506e3          	beqz	a0,3e20 <fatfs_get_file_entry+0xe4>
    3e58:	02000613          	li	a2,32
    3e5c:	00040593          	mv	a1,s0
    3e60:	00098513          	mv	a0,s3
    3e64:	ffffe097          	auipc	ra,0xffffe
    3e68:	fac080e7          	jalr	-84(ra) # 1e10 <memcpy>
    3e6c:	00100513          	li	a0,1
    3e70:	14c12083          	lw	ra,332(sp)
    3e74:	14812403          	lw	s0,328(sp)
    3e78:	14412483          	lw	s1,324(sp)
    3e7c:	14012903          	lw	s2,320(sp)
    3e80:	13c12983          	lw	s3,316(sp)
    3e84:	13812a03          	lw	s4,312(sp)
    3e88:	13412a83          	lw	s5,308(sp)
    3e8c:	13012b03          	lw	s6,304(sp)
    3e90:	12c12b83          	lw	s7,300(sp)
    3e94:	12812c03          	lw	s8,296(sp)
    3e98:	12412c83          	lw	s9,292(sp)
    3e9c:	12012d03          	lw	s10,288(sp)
    3ea0:	15010113          	addi	sp,sp,336
    3ea4:	00008067          	ret
    3ea8:	00040513          	mv	a0,s0
    3eac:	fffff097          	auipc	ra,0xfffff
    3eb0:	ed4080e7          	jalr	-300(ra) # 2d80 <fatfs_entry_sfn_only>
    3eb4:	f40506e3          	beqz	a0,3e00 <fatfs_get_file_entry+0xc4>
    3eb8:	00d00613          	li	a2,13
    3ebc:	00000593          	li	a1,0
    3ec0:	00810513          	addi	a0,sp,8
    3ec4:	ffffe097          	auipc	ra,0xffffe
    3ec8:	f30080e7          	jalr	-208(ra) # 1df4 <memset>
    3ecc:	00000793          	li	a5,0
    3ed0:	00f406b3          	add	a3,s0,a5
    3ed4:	0006c683          	lbu	a3,0(a3)
    3ed8:	00810713          	addi	a4,sp,8
    3edc:	00f70733          	add	a4,a4,a5
    3ee0:	00d70023          	sb	a3,0(a4)
    3ee4:	00178793          	addi	a5,a5,1
    3ee8:	ff9794e3          	bne	a5,s9,3ed0 <fatfs_get_file_entry+0x194>
    3eec:	00844783          	lbu	a5,8(s0)
    3ef0:	00944683          	lbu	a3,9(s0)
    3ef4:	00100713          	li	a4,1
    3ef8:	00f108a3          	sb	a5,17(sp)
    3efc:	00d10923          	sb	a3,18(sp)
    3f00:	01769663          	bne	a3,s7,3f0c <fatfs_get_file_entry+0x1d0>
    3f04:	fe078793          	addi	a5,a5,-32
    3f08:	00f03733          	snez	a4,a5
    3f0c:	00a44783          	lbu	a5,10(s0)
    3f10:	00f109a3          	sb	a5,19(sp)
    3f14:	01779663          	bne	a5,s7,3f20 <fatfs_get_file_entry+0x1e4>
    3f18:	02000793          	li	a5,32
    3f1c:	00070a63          	beqz	a4,3f30 <fatfs_get_file_entry+0x1f4>
    3f20:	00814703          	lbu	a4,8(sp)
    3f24:	02e00793          	li	a5,46
    3f28:	01a71463          	bne	a4,s10,3f30 <fatfs_get_file_entry+0x1f4>
    3f2c:	02000793          	li	a5,32
    3f30:	00f10823          	sb	a5,16(sp)
    3f34:	00090593          	mv	a1,s2
    3f38:	00810513          	addi	a0,sp,8
    3f3c:	f11ff06f          	j	3e4c <fatfs_get_file_entry+0x110>
    3f40:	00000513          	li	a0,0
    3f44:	f2dff06f          	j	3e70 <fatfs_get_file_entry+0x134>

00003f48 <_open_directory>:
    3f48:	eb010113          	addi	sp,sp,-336
    3f4c:	13512a23          	sw	s5,308(sp)
    3f50:	00006ab7          	lui	s5,0x6
    3f54:	5f8a8793          	addi	a5,s5,1528 # 65f8 <_fs>
    3f58:	14812423          	sw	s0,328(sp)
    3f5c:	14912223          	sw	s1,324(sp)
    3f60:	15212023          	sw	s2,320(sp)
    3f64:	13312e23          	sw	s3,316(sp)
    3f68:	13412c23          	sw	s4,312(sp)
    3f6c:	13612823          	sw	s6,304(sp)
    3f70:	0087a403          	lw	s0,8(a5)
    3f74:	14112623          	sw	ra,332(sp)
    3f78:	00050a13          	mv	s4,a0
    3f7c:	00058913          	mv	s2,a1
    3f80:	fffff097          	auipc	ra,0xfffff
    3f84:	350080e7          	jalr	848(ra) # 32d0 <fatfs_total_path_levels>
    3f88:	00050993          	mv	s3,a0
    3f8c:	00000493          	li	s1,0
    3f90:	fff00b13          	li	s6,-1
    3f94:	0099d863          	bge	s3,s1,3fa4 <_open_directory+0x5c>
    3f98:	00892023          	sw	s0,0(s2)
    3f9c:	00100513          	li	a0,1
    3fa0:	0240006f          	j	3fc4 <_open_directory+0x7c>
    3fa4:	10400693          	li	a3,260
    3fa8:	02c10613          	addi	a2,sp,44
    3fac:	00048593          	mv	a1,s1
    3fb0:	000a0513          	mv	a0,s4
    3fb4:	fffff097          	auipc	ra,0xfffff
    3fb8:	390080e7          	jalr	912(ra) # 3344 <fatfs_get_substring>
    3fbc:	03651863          	bne	a0,s6,3fec <_open_directory+0xa4>
    3fc0:	00000513          	li	a0,0
    3fc4:	14c12083          	lw	ra,332(sp)
    3fc8:	14812403          	lw	s0,328(sp)
    3fcc:	14412483          	lw	s1,324(sp)
    3fd0:	14012903          	lw	s2,320(sp)
    3fd4:	13c12983          	lw	s3,316(sp)
    3fd8:	13812a03          	lw	s4,312(sp)
    3fdc:	13412a83          	lw	s5,308(sp)
    3fe0:	13012b03          	lw	s6,304(sp)
    3fe4:	15010113          	addi	sp,sp,336
    3fe8:	00008067          	ret
    3fec:	00c10693          	addi	a3,sp,12
    3ff0:	02c10613          	addi	a2,sp,44
    3ff4:	00040593          	mv	a1,s0
    3ff8:	5f8a8513          	addi	a0,s5,1528
    3ffc:	00000097          	auipc	ra,0x0
    4000:	d40080e7          	jalr	-704(ra) # 3d3c <fatfs_get_file_entry>
    4004:	fa050ee3          	beqz	a0,3fc0 <_open_directory+0x78>
    4008:	00c10513          	addi	a0,sp,12
    400c:	fffff097          	auipc	ra,0xfffff
    4010:	db0080e7          	jalr	-592(ra) # 2dbc <fatfs_entry_is_dir>
    4014:	fa0506e3          	beqz	a0,3fc0 <_open_directory+0x78>
    4018:	02015403          	lhu	s0,32(sp)
    401c:	02615783          	lhu	a5,38(sp)
    4020:	00148493          	addi	s1,s1,1
    4024:	01041413          	slli	s0,s0,0x10
    4028:	00f40433          	add	s0,s0,a5
    402c:	f69ff06f          	j	3f94 <_open_directory+0x4c>

00004030 <fl_opendir>:
    4030:	fe010113          	addi	sp,sp,-32
    4034:	fff00793          	li	a5,-1
    4038:	00f12623          	sw	a5,12(sp)
    403c:	000067b7          	lui	a5,0x6
    4040:	df47a783          	lw	a5,-524(a5) # 5df4 <_filelib_init>
    4044:	00812c23          	sw	s0,24(sp)
    4048:	01212823          	sw	s2,16(sp)
    404c:	00112e23          	sw	ra,28(sp)
    4050:	00912a23          	sw	s1,20(sp)
    4054:	00050913          	mv	s2,a0
    4058:	00058413          	mv	s0,a1
    405c:	00079663          	bnez	a5,4068 <fl_opendir+0x38>
    4060:	fffff097          	auipc	ra,0xfffff
    4064:	970080e7          	jalr	-1680(ra) # 29d0 <fl_init>
    4068:	000064b7          	lui	s1,0x6
    406c:	5f848793          	addi	a5,s1,1528 # 65f8 <_fs>
    4070:	03c7a783          	lw	a5,60(a5)
    4074:	5f848493          	addi	s1,s1,1528
    4078:	00078463          	beqz	a5,4080 <fl_opendir+0x50>
    407c:	000780e7          	jalr	a5
    4080:	00090513          	mv	a0,s2
    4084:	fffff097          	auipc	ra,0xfffff
    4088:	24c080e7          	jalr	588(ra) # 32d0 <fatfs_total_path_levels>
    408c:	fff00793          	li	a5,-1
    4090:	02f51063          	bne	a0,a5,40b0 <fl_opendir+0x80>
    4094:	0084a783          	lw	a5,8(s1)
    4098:	00f12623          	sw	a5,12(sp)
    409c:	00c12783          	lw	a5,12(sp)
    40a0:	00042023          	sw	zero,0(s0)
    40a4:	00040423          	sb	zero,8(s0)
    40a8:	00f42223          	sw	a5,4(s0)
    40ac:	0180006f          	j	40c4 <fl_opendir+0x94>
    40b0:	00c10593          	addi	a1,sp,12
    40b4:	00090513          	mv	a0,s2
    40b8:	00000097          	auipc	ra,0x0
    40bc:	e90080e7          	jalr	-368(ra) # 3f48 <_open_directory>
    40c0:	fc051ee3          	bnez	a0,409c <fl_opendir+0x6c>
    40c4:	0404a783          	lw	a5,64(s1)
    40c8:	00078463          	beqz	a5,40d0 <fl_opendir+0xa0>
    40cc:	000780e7          	jalr	a5
    40d0:	00c12703          	lw	a4,12(sp)
    40d4:	fff00793          	li	a5,-1
    40d8:	00f71463          	bne	a4,a5,40e0 <fl_opendir+0xb0>
    40dc:	00000413          	li	s0,0
    40e0:	01c12083          	lw	ra,28(sp)
    40e4:	00040513          	mv	a0,s0
    40e8:	01812403          	lw	s0,24(sp)
    40ec:	01412483          	lw	s1,20(sp)
    40f0:	01012903          	lw	s2,16(sp)
    40f4:	02010113          	addi	sp,sp,32
    40f8:	00008067          	ret

000040fc <_open_file>:
    40fc:	fc010113          	addi	sp,sp,-64
    4100:	03312623          	sw	s3,44(sp)
    4104:	02112e23          	sw	ra,60(sp)
    4108:	02812c23          	sw	s0,56(sp)
    410c:	02912a23          	sw	s1,52(sp)
    4110:	03212823          	sw	s2,48(sp)
    4114:	00050993          	mv	s3,a0
    4118:	ffffe097          	auipc	ra,0xffffe
    411c:	6c0080e7          	jalr	1728(ra) # 27d8 <_allocate_file>
    4120:	06050463          	beqz	a0,4188 <_open_file+0x8c>
    4124:	01450913          	addi	s2,a0,20
    4128:	00050413          	mv	s0,a0
    412c:	10400613          	li	a2,260
    4130:	00000593          	li	a1,0
    4134:	00090513          	mv	a0,s2
    4138:	ffffe097          	auipc	ra,0xffffe
    413c:	cbc080e7          	jalr	-836(ra) # 1df4 <memset>
    4140:	11840493          	addi	s1,s0,280
    4144:	10400613          	li	a2,260
    4148:	00000593          	li	a1,0
    414c:	00048513          	mv	a0,s1
    4150:	ffffe097          	auipc	ra,0xffffe
    4154:	ca4080e7          	jalr	-860(ra) # 1df4 <memset>
    4158:	10400713          	li	a4,260
    415c:	00048693          	mv	a3,s1
    4160:	10400613          	li	a2,260
    4164:	00090593          	mv	a1,s2
    4168:	00098513          	mv	a0,s3
    416c:	fffff097          	auipc	ra,0xfffff
    4170:	2cc080e7          	jalr	716(ra) # 3438 <fatfs_split_path>
    4174:	fff00793          	li	a5,-1
    4178:	02f51a63          	bne	a0,a5,41ac <_open_file+0xb0>
    417c:	00040513          	mv	a0,s0
    4180:	ffffe097          	auipc	ra,0xffffe
    4184:	6cc080e7          	jalr	1740(ra) # 284c <_free_file>
    4188:	00000413          	li	s0,0
    418c:	03c12083          	lw	ra,60(sp)
    4190:	00040513          	mv	a0,s0
    4194:	03812403          	lw	s0,56(sp)
    4198:	03412483          	lw	s1,52(sp)
    419c:	03012903          	lw	s2,48(sp)
    41a0:	02c12983          	lw	s3,44(sp)
    41a4:	04010113          	addi	sp,sp,64
    41a8:	00008067          	ret
    41ac:	00040513          	mv	a0,s0
    41b0:	fffff097          	auipc	ra,0xfffff
    41b4:	4dc080e7          	jalr	1244(ra) # 368c <_check_file_open>
    41b8:	fc0512e3          	bnez	a0,417c <_open_file+0x80>
    41bc:	01444783          	lbu	a5,20(s0)
    41c0:	08079e63          	bnez	a5,425c <_open_file+0x160>
    41c4:	000067b7          	lui	a5,0x6
    41c8:	6007a783          	lw	a5,1536(a5) # 6600 <_fs+0x8>
    41cc:	00f42023          	sw	a5,0(s0)
    41d0:	00042583          	lw	a1,0(s0)
    41d4:	00048613          	mv	a2,s1
    41d8:	000064b7          	lui	s1,0x6
    41dc:	00010693          	mv	a3,sp
    41e0:	5f848513          	addi	a0,s1,1528 # 65f8 <_fs>
    41e4:	00000097          	auipc	ra,0x0
    41e8:	b58080e7          	jalr	-1192(ra) # 3d3c <fatfs_get_file_entry>
    41ec:	f80508e3          	beqz	a0,417c <_open_file+0x80>
    41f0:	00010513          	mv	a0,sp
    41f4:	fffff097          	auipc	ra,0xfffff
    41f8:	bd8080e7          	jalr	-1064(ra) # 2dcc <fatfs_entry_is_file>
    41fc:	f80500e3          	beqz	a0,417c <_open_file+0x80>
    4200:	00b00613          	li	a2,11
    4204:	00010593          	mv	a1,sp
    4208:	21c40513          	addi	a0,s0,540
    420c:	ffffe097          	auipc	ra,0xffffe
    4210:	c04080e7          	jalr	-1020(ra) # 1e10 <memcpy>
    4214:	01c12783          	lw	a5,28(sp)
    4218:	01a15703          	lhu	a4,26(sp)
    421c:	00042423          	sw	zero,8(s0)
    4220:	00f42623          	sw	a5,12(s0)
    4224:	01415783          	lhu	a5,20(sp)
    4228:	42042a23          	sw	zero,1076(s0)
    422c:	00042823          	sw	zero,16(s0)
    4230:	01079793          	slli	a5,a5,0x10
    4234:	00e787b3          	add	a5,a5,a4
    4238:	00f42223          	sw	a5,4(s0)
    423c:	fff00793          	li	a5,-1
    4240:	42f42823          	sw	a5,1072(s0)
    4244:	22f42423          	sw	a5,552(s0)
    4248:	22f42623          	sw	a5,556(s0)
    424c:	5f848513          	addi	a0,s1,1528
    4250:	00000097          	auipc	ra,0x0
    4254:	840080e7          	jalr	-1984(ra) # 3a90 <fatfs_fat_purge>
    4258:	f35ff06f          	j	418c <_open_file+0x90>
    425c:	00040593          	mv	a1,s0
    4260:	00090513          	mv	a0,s2
    4264:	00000097          	auipc	ra,0x0
    4268:	ce4080e7          	jalr	-796(ra) # 3f48 <_open_directory>
    426c:	f60512e3          	bnez	a0,41d0 <_open_file+0xd4>
    4270:	f0dff06f          	j	417c <_open_file+0x80>

00004274 <fatfs_sfn_exists>:
    4274:	fe010113          	addi	sp,sp,-32
    4278:	00912a23          	sw	s1,20(sp)
    427c:	01212823          	sw	s2,16(sp)
    4280:	01312623          	sw	s3,12(sp)
    4284:	01412423          	sw	s4,8(sp)
    4288:	01512223          	sw	s5,4(sp)
    428c:	00112e23          	sw	ra,28(sp)
    4290:	00812c23          	sw	s0,24(sp)
    4294:	00050493          	mv	s1,a0
    4298:	00058993          	mv	s3,a1
    429c:	00060a13          	mv	s4,a2
    42a0:	00000913          	li	s2,0
    42a4:	24450a93          	addi	s5,a0,580
    42a8:	00000693          	li	a3,0
    42ac:	00090613          	mv	a2,s2
    42b0:	00098593          	mv	a1,s3
    42b4:	00048513          	mv	a0,s1
    42b8:	00000097          	auipc	ra,0x0
    42bc:	944080e7          	jalr	-1724(ra) # 3bfc <fatfs_sector_reader>
    42c0:	06050263          	beqz	a0,4324 <fatfs_sfn_exists+0xb0>
    42c4:	04448413          	addi	s0,s1,68
    42c8:	00040513          	mv	a0,s0
    42cc:	fffff097          	auipc	ra,0xfffff
    42d0:	a20080e7          	jalr	-1504(ra) # 2cec <fatfs_entry_lfn_text>
    42d4:	02051e63          	bnez	a0,4310 <fatfs_sfn_exists+0x9c>
    42d8:	00040513          	mv	a0,s0
    42dc:	fffff097          	auipc	ra,0xfffff
    42e0:	a24080e7          	jalr	-1500(ra) # 2d00 <fatfs_entry_lfn_invalid>
    42e4:	02051663          	bnez	a0,4310 <fatfs_sfn_exists+0x9c>
    42e8:	00040513          	mv	a0,s0
    42ec:	fffff097          	auipc	ra,0xfffff
    42f0:	a94080e7          	jalr	-1388(ra) # 2d80 <fatfs_entry_sfn_only>
    42f4:	00050e63          	beqz	a0,4310 <fatfs_sfn_exists+0x9c>
    42f8:	00b00613          	li	a2,11
    42fc:	000a0593          	mv	a1,s4
    4300:	00040513          	mv	a0,s0
    4304:	ffffe097          	auipc	ra,0xffffe
    4308:	b50080e7          	jalr	-1200(ra) # 1e54 <strncmp>
    430c:	00050a63          	beqz	a0,4320 <fatfs_sfn_exists+0xac>
    4310:	02040413          	addi	s0,s0,32
    4314:	fb541ae3          	bne	s0,s5,42c8 <fatfs_sfn_exists+0x54>
    4318:	00190913          	addi	s2,s2,1
    431c:	f8dff06f          	j	42a8 <fatfs_sfn_exists+0x34>
    4320:	00100513          	li	a0,1
    4324:	01c12083          	lw	ra,28(sp)
    4328:	01812403          	lw	s0,24(sp)
    432c:	01412483          	lw	s1,20(sp)
    4330:	01012903          	lw	s2,16(sp)
    4334:	00c12983          	lw	s3,12(sp)
    4338:	00812a03          	lw	s4,8(sp)
    433c:	00412a83          	lw	s5,4(sp)
    4340:	02010113          	addi	sp,sp,32
    4344:	00008067          	ret

00004348 <fatfs_update_file_length>:
    4348:	03852783          	lw	a5,56(a0)
    434c:	14078e63          	beqz	a5,44a8 <fatfs_update_file_length+0x160>
    4350:	fd010113          	addi	sp,sp,-48
    4354:	02912223          	sw	s1,36(sp)
    4358:	03212023          	sw	s2,32(sp)
    435c:	01312e23          	sw	s3,28(sp)
    4360:	01412c23          	sw	s4,24(sp)
    4364:	01512a23          	sw	s5,20(sp)
    4368:	01612823          	sw	s6,16(sp)
    436c:	01712623          	sw	s7,12(sp)
    4370:	02112623          	sw	ra,44(sp)
    4374:	02812423          	sw	s0,40(sp)
    4378:	00050493          	mv	s1,a0
    437c:	00058a13          	mv	s4,a1
    4380:	00060a93          	mv	s5,a2
    4384:	00068913          	mv	s2,a3
    4388:	00000993          	li	s3,0
    438c:	04450b93          	addi	s7,a0,68
    4390:	24450b13          	addi	s6,a0,580
    4394:	00000693          	li	a3,0
    4398:	00098613          	mv	a2,s3
    439c:	000a0593          	mv	a1,s4
    43a0:	00048513          	mv	a0,s1
    43a4:	00000097          	auipc	ra,0x0
    43a8:	858080e7          	jalr	-1960(ra) # 3bfc <fatfs_sector_reader>
    43ac:	0c050663          	beqz	a0,4478 <fatfs_update_file_length+0x130>
    43b0:	000b8413          	mv	s0,s7
    43b4:	00040513          	mv	a0,s0
    43b8:	fffff097          	auipc	ra,0xfffff
    43bc:	934080e7          	jalr	-1740(ra) # 2cec <fatfs_entry_lfn_text>
    43c0:	0a051463          	bnez	a0,4468 <fatfs_update_file_length+0x120>
    43c4:	00040513          	mv	a0,s0
    43c8:	fffff097          	auipc	ra,0xfffff
    43cc:	938080e7          	jalr	-1736(ra) # 2d00 <fatfs_entry_lfn_invalid>
    43d0:	08051c63          	bnez	a0,4468 <fatfs_update_file_length+0x120>
    43d4:	00040513          	mv	a0,s0
    43d8:	fffff097          	auipc	ra,0xfffff
    43dc:	9a8080e7          	jalr	-1624(ra) # 2d80 <fatfs_entry_sfn_only>
    43e0:	08050463          	beqz	a0,4468 <fatfs_update_file_length+0x120>
    43e4:	00b00613          	li	a2,11
    43e8:	000a8593          	mv	a1,s5
    43ec:	00040513          	mv	a0,s0
    43f0:	ffffe097          	auipc	ra,0xffffe
    43f4:	a64080e7          	jalr	-1436(ra) # 1e54 <strncmp>
    43f8:	06051863          	bnez	a0,4468 <fatfs_update_file_length+0x120>
    43fc:	00895793          	srli	a5,s2,0x8
    4400:	01240e23          	sb	s2,28(s0)
    4404:	00f40ea3          	sb	a5,29(s0)
    4408:	01095793          	srli	a5,s2,0x10
    440c:	01895913          	srli	s2,s2,0x18
    4410:	00f40f23          	sb	a5,30(s0)
    4414:	01240fa3          	sb	s2,31(s0)
    4418:	00040593          	mv	a1,s0
    441c:	02000613          	li	a2,32
    4420:	00040513          	mv	a0,s0
    4424:	ffffe097          	auipc	ra,0xffffe
    4428:	9ec080e7          	jalr	-1556(ra) # 1e10 <memcpy>
    442c:	02812403          	lw	s0,40(sp)
    4430:	0384a783          	lw	a5,56(s1)
    4434:	2444a503          	lw	a0,580(s1)
    4438:	02c12083          	lw	ra,44(sp)
    443c:	02412483          	lw	s1,36(sp)
    4440:	02012903          	lw	s2,32(sp)
    4444:	01c12983          	lw	s3,28(sp)
    4448:	01812a03          	lw	s4,24(sp)
    444c:	01412a83          	lw	s5,20(sp)
    4450:	01012b03          	lw	s6,16(sp)
    4454:	000b8593          	mv	a1,s7
    4458:	00c12b83          	lw	s7,12(sp)
    445c:	00100613          	li	a2,1
    4460:	03010113          	addi	sp,sp,48
    4464:	00078067          	jr	a5
    4468:	02040413          	addi	s0,s0,32
    446c:	f56414e3          	bne	s0,s6,43b4 <fatfs_update_file_length+0x6c>
    4470:	00198993          	addi	s3,s3,1
    4474:	f21ff06f          	j	4394 <fatfs_update_file_length+0x4c>
    4478:	02c12083          	lw	ra,44(sp)
    447c:	02812403          	lw	s0,40(sp)
    4480:	02412483          	lw	s1,36(sp)
    4484:	02012903          	lw	s2,32(sp)
    4488:	01c12983          	lw	s3,28(sp)
    448c:	01812a03          	lw	s4,24(sp)
    4490:	01412a83          	lw	s5,20(sp)
    4494:	01012b03          	lw	s6,16(sp)
    4498:	00c12b83          	lw	s7,12(sp)
    449c:	00000513          	li	a0,0
    44a0:	03010113          	addi	sp,sp,48
    44a4:	00008067          	ret
    44a8:	00000513          	li	a0,0
    44ac:	00008067          	ret

000044b0 <fatfs_list_directory_next>:
    44b0:	ec010113          	addi	sp,sp,-320
    44b4:	13212823          	sw	s2,304(sp)
    44b8:	13312623          	sw	s3,300(sp)
    44bc:	13412423          	sw	s4,296(sp)
    44c0:	13512223          	sw	s5,292(sp)
    44c4:	12112e23          	sw	ra,316(sp)
    44c8:	12812c23          	sw	s0,312(sp)
    44cc:	12912a23          	sw	s1,308(sp)
    44d0:	00050a13          	mv	s4,a0
    44d4:	00058913          	mv	s2,a1
    44d8:	00060993          	mv	s3,a2
    44dc:	10010ea3          	sb	zero,285(sp)
    44e0:	00f00a93          	li	s5,15
    44e4:	00092603          	lw	a2,0(s2)
    44e8:	00492583          	lw	a1,4(s2)
    44ec:	00000693          	li	a3,0
    44f0:	000a0513          	mv	a0,s4
    44f4:	fffff097          	auipc	ra,0xfffff
    44f8:	708080e7          	jalr	1800(ra) # 3bfc <fatfs_sector_reader>
    44fc:	12050263          	beqz	a0,4620 <fatfs_list_directory_next+0x170>
    4500:	00894483          	lbu	s1,8(s2)
    4504:	00549413          	slli	s0,s1,0x5
    4508:	04440413          	addi	s0,s0,68
    450c:	008a0433          	add	s0,s4,s0
    4510:	009afc63          	bgeu	s5,s1,4528 <fatfs_list_directory_next+0x78>
    4514:	00092783          	lw	a5,0(s2)
    4518:	00090423          	sb	zero,8(s2)
    451c:	00178793          	addi	a5,a5,1
    4520:	00f92023          	sw	a5,0(s2)
    4524:	fc1ff06f          	j	44e4 <fatfs_list_directory_next+0x34>
    4528:	00040513          	mv	a0,s0
    452c:	ffffe097          	auipc	ra,0xffffe
    4530:	7c0080e7          	jalr	1984(ra) # 2cec <fatfs_entry_lfn_text>
    4534:	02050263          	beqz	a0,4558 <fatfs_list_directory_next+0xa8>
    4538:	00040593          	mv	a1,s0
    453c:	01810513          	addi	a0,sp,24
    4540:	ffffe097          	auipc	ra,0xffffe
    4544:	6a4080e7          	jalr	1700(ra) # 2be4 <fatfs_lfn_cache_entry>
    4548:	00148493          	addi	s1,s1,1
    454c:	0ff4f493          	zext.b	s1,s1
    4550:	02040413          	addi	s0,s0,32
    4554:	fbdff06f          	j	4510 <fatfs_list_directory_next+0x60>
    4558:	00040513          	mv	a0,s0
    455c:	ffffe097          	auipc	ra,0xffffe
    4560:	7a4080e7          	jalr	1956(ra) # 2d00 <fatfs_entry_lfn_invalid>
    4564:	00050663          	beqz	a0,4570 <fatfs_list_directory_next+0xc0>
    4568:	10010ea3          	sb	zero,285(sp)
    456c:	fddff06f          	j	4548 <fatfs_list_directory_next+0x98>
    4570:	00040593          	mv	a1,s0
    4574:	01810513          	addi	a0,sp,24
    4578:	ffffe097          	auipc	ra,0xffffe
    457c:	7c0080e7          	jalr	1984(ra) # 2d38 <fatfs_entry_lfn_exists>
    4580:	0c050263          	beqz	a0,4644 <fatfs_list_directory_next+0x194>
    4584:	01810513          	addi	a0,sp,24
    4588:	ffffe097          	auipc	ra,0xffffe
    458c:	728080e7          	jalr	1832(ra) # 2cb0 <fatfs_lfn_cache_get>
    4590:	00050593          	mv	a1,a0
    4594:	10300613          	li	a2,259
    4598:	00098513          	mv	a0,s3
    459c:	ffffe097          	auipc	ra,0xffffe
    45a0:	8f8080e7          	jalr	-1800(ra) # 1e94 <strncpy>
    45a4:	00040513          	mv	a0,s0
    45a8:	fffff097          	auipc	ra,0xfffff
    45ac:	814080e7          	jalr	-2028(ra) # 2dbc <fatfs_entry_is_dir>
    45b0:	00a03533          	snez	a0,a0
    45b4:	10a98223          	sb	a0,260(s3)
    45b8:	01d44783          	lbu	a5,29(s0)
    45bc:	01c44703          	lbu	a4,28(s0)
    45c0:	00148493          	addi	s1,s1,1
    45c4:	00879793          	slli	a5,a5,0x8
    45c8:	00e7e7b3          	or	a5,a5,a4
    45cc:	01e44703          	lbu	a4,30(s0)
    45d0:	0ff4f493          	zext.b	s1,s1
    45d4:	00100513          	li	a0,1
    45d8:	01071713          	slli	a4,a4,0x10
    45dc:	00f76733          	or	a4,a4,a5
    45e0:	01f44783          	lbu	a5,31(s0)
    45e4:	01879793          	slli	a5,a5,0x18
    45e8:	00e7e7b3          	or	a5,a5,a4
    45ec:	10f9a623          	sw	a5,268(s3)
    45f0:	01544783          	lbu	a5,21(s0)
    45f4:	01444703          	lbu	a4,20(s0)
    45f8:	01a44683          	lbu	a3,26(s0)
    45fc:	00879793          	slli	a5,a5,0x8
    4600:	00e7e7b3          	or	a5,a5,a4
    4604:	01b44703          	lbu	a4,27(s0)
    4608:	01079793          	slli	a5,a5,0x10
    460c:	00871713          	slli	a4,a4,0x8
    4610:	00d76733          	or	a4,a4,a3
    4614:	00e7e7b3          	or	a5,a5,a4
    4618:	10f9a423          	sw	a5,264(s3)
    461c:	00990423          	sb	s1,8(s2)
    4620:	13c12083          	lw	ra,316(sp)
    4624:	13812403          	lw	s0,312(sp)
    4628:	13412483          	lw	s1,308(sp)
    462c:	13012903          	lw	s2,304(sp)
    4630:	12c12983          	lw	s3,300(sp)
    4634:	12812a03          	lw	s4,296(sp)
    4638:	12412a83          	lw	s5,292(sp)
    463c:	14010113          	addi	sp,sp,320
    4640:	00008067          	ret
    4644:	00040513          	mv	a0,s0
    4648:	ffffe097          	auipc	ra,0xffffe
    464c:	738080e7          	jalr	1848(ra) # 2d80 <fatfs_entry_sfn_only>
    4650:	ee050ce3          	beqz	a0,4548 <fatfs_list_directory_next+0x98>
    4654:	00d00613          	li	a2,13
    4658:	00000593          	li	a1,0
    465c:	00810513          	addi	a0,sp,8
    4660:	10010ea3          	sb	zero,285(sp)
    4664:	ffffd097          	auipc	ra,0xffffd
    4668:	790080e7          	jalr	1936(ra) # 1df4 <memset>
    466c:	00000793          	li	a5,0
    4670:	00800713          	li	a4,8
    4674:	00f40633          	add	a2,s0,a5
    4678:	00064603          	lbu	a2,0(a2)
    467c:	00810693          	addi	a3,sp,8
    4680:	00f686b3          	add	a3,a3,a5
    4684:	00c68023          	sb	a2,0(a3)
    4688:	00178793          	addi	a5,a5,1
    468c:	fee794e3          	bne	a5,a4,4674 <fatfs_list_directory_next+0x1c4>
    4690:	00844783          	lbu	a5,8(s0)
    4694:	00944683          	lbu	a3,9(s0)
    4698:	02000613          	li	a2,32
    469c:	00f108a3          	sb	a5,17(sp)
    46a0:	00d10923          	sb	a3,18(sp)
    46a4:	00100713          	li	a4,1
    46a8:	00c69663          	bne	a3,a2,46b4 <fatfs_list_directory_next+0x204>
    46ac:	fe078793          	addi	a5,a5,-32
    46b0:	00f03733          	snez	a4,a5
    46b4:	00a44783          	lbu	a5,10(s0)
    46b8:	02000693          	li	a3,32
    46bc:	00f109a3          	sb	a5,19(sp)
    46c0:	00d79663          	bne	a5,a3,46cc <fatfs_list_directory_next+0x21c>
    46c4:	02000793          	li	a5,32
    46c8:	00070a63          	beqz	a4,46dc <fatfs_list_directory_next+0x22c>
    46cc:	00814703          	lbu	a4,8(sp)
    46d0:	02e00793          	li	a5,46
    46d4:	00f71463          	bne	a4,a5,46dc <fatfs_list_directory_next+0x22c>
    46d8:	02000793          	li	a5,32
    46dc:	00810593          	addi	a1,sp,8
    46e0:	00098513          	mv	a0,s3
    46e4:	00f10823          	sb	a5,16(sp)
    46e8:	fffff097          	auipc	ra,0xfffff
    46ec:	034080e7          	jalr	52(ra) # 371c <fatfs_get_sfn_display_name>
    46f0:	eb5ff06f          	j	45a4 <fatfs_list_directory_next+0xf4>

000046f4 <fl_readdir>:
    46f4:	000067b7          	lui	a5,0x6
    46f8:	df47a783          	lw	a5,-524(a5) # 5df4 <_filelib_init>
    46fc:	fe010113          	addi	sp,sp,-32
    4700:	00912a23          	sw	s1,20(sp)
    4704:	01212823          	sw	s2,16(sp)
    4708:	00112e23          	sw	ra,28(sp)
    470c:	00812c23          	sw	s0,24(sp)
    4710:	01312623          	sw	s3,12(sp)
    4714:	00050493          	mv	s1,a0
    4718:	00058913          	mv	s2,a1
    471c:	00079663          	bnez	a5,4728 <fl_readdir+0x34>
    4720:	ffffe097          	auipc	ra,0xffffe
    4724:	2b0080e7          	jalr	688(ra) # 29d0 <fl_init>
    4728:	00006437          	lui	s0,0x6
    472c:	5f840793          	addi	a5,s0,1528 # 65f8 <_fs>
    4730:	03c7a783          	lw	a5,60(a5)
    4734:	5f840993          	addi	s3,s0,1528
    4738:	00078463          	beqz	a5,4740 <fl_readdir+0x4c>
    473c:	000780e7          	jalr	a5
    4740:	5f840513          	addi	a0,s0,1528
    4744:	00090613          	mv	a2,s2
    4748:	00048593          	mv	a1,s1
    474c:	00000097          	auipc	ra,0x0
    4750:	d64080e7          	jalr	-668(ra) # 44b0 <fatfs_list_directory_next>
    4754:	0409a783          	lw	a5,64(s3)
    4758:	00050413          	mv	s0,a0
    475c:	00078463          	beqz	a5,4764 <fl_readdir+0x70>
    4760:	000780e7          	jalr	a5
    4764:	01c12083          	lw	ra,28(sp)
    4768:	00143513          	seqz	a0,s0
    476c:	01812403          	lw	s0,24(sp)
    4770:	01412483          	lw	s1,20(sp)
    4774:	01012903          	lw	s2,16(sp)
    4778:	00c12983          	lw	s3,12(sp)
    477c:	40a00533          	neg	a0,a0
    4780:	02010113          	addi	sp,sp,32
    4784:	00008067          	ret

00004788 <_read_sectors>:
    4788:	fd010113          	addi	sp,sp,-48
    478c:	01612823          	sw	s6,16(sp)
    4790:	00006b37          	lui	s6,0x6
    4794:	01512a23          	sw	s5,20(sp)
    4798:	5f8b4a83          	lbu	s5,1528(s6) # 65f8 <_fs>
    479c:	01412c23          	sw	s4,24(sp)
    47a0:	00058a13          	mv	s4,a1
    47a4:	02912223          	sw	s1,36(sp)
    47a8:	000a8593          	mv	a1,s5
    47ac:	00050493          	mv	s1,a0
    47b0:	000a0513          	mv	a0,s4
    47b4:	02112623          	sw	ra,44(sp)
    47b8:	02812423          	sw	s0,40(sp)
    47bc:	03212023          	sw	s2,32(sp)
    47c0:	00068413          	mv	s0,a3
    47c4:	01712623          	sw	s7,12(sp)
    47c8:	01812423          	sw	s8,8(sp)
    47cc:	01312e23          	sw	s3,28(sp)
    47d0:	00060c13          	mv	s8,a2
    47d4:	ffffd097          	auipc	ra,0xffffd
    47d8:	574080e7          	jalr	1396(ra) # 1d48 <__udivsi3>
    47dc:	00050913          	mv	s2,a0
    47e0:	000a8593          	mv	a1,s5
    47e4:	000a0513          	mv	a0,s4
    47e8:	ffffd097          	auipc	ra,0xffffd
    47ec:	5a8080e7          	jalr	1448(ra) # 1d90 <__umodsi3>
    47f0:	00a407b3          	add	a5,s0,a0
    47f4:	00050b93          	mv	s7,a0
    47f8:	00fafe63          	bgeu	s5,a5,4814 <_read_sectors+0x8c>
    47fc:	00090593          	mv	a1,s2
    4800:	000a8513          	mv	a0,s5
    4804:	ffffe097          	auipc	ra,0xffffe
    4808:	d34080e7          	jalr	-716(ra) # 2538 <__mulsi3>
    480c:	414a87b3          	sub	a5,s5,s4
    4810:	00f50433          	add	s0,a0,a5
    4814:	2284a983          	lw	s3,552(s1)
    4818:	07299863          	bne	s3,s2,4888 <_read_sectors+0x100>
    481c:	22c4a583          	lw	a1,556(s1)
    4820:	fff00793          	li	a5,-1
    4824:	02f58663          	beq	a1,a5,4850 <_read_sectors+0xc8>
    4828:	5f8b0513          	addi	a0,s6,1528
    482c:	ffffe097          	auipc	ra,0xffffe
    4830:	068080e7          	jalr	104(ra) # 2894 <fatfs_lba_of_cluster>
    4834:	017505b3          	add	a1,a0,s7
    4838:	00040693          	mv	a3,s0
    483c:	000c0613          	mv	a2,s8
    4840:	5f8b0513          	addi	a0,s6,1528
    4844:	ffffe097          	auipc	ra,0xffffe
    4848:	0a0080e7          	jalr	160(ra) # 28e4 <fatfs_sector_read>
    484c:	00051463          	bnez	a0,4854 <_read_sectors+0xcc>
    4850:	00000413          	li	s0,0
    4854:	02c12083          	lw	ra,44(sp)
    4858:	00040513          	mv	a0,s0
    485c:	02812403          	lw	s0,40(sp)
    4860:	02412483          	lw	s1,36(sp)
    4864:	02012903          	lw	s2,32(sp)
    4868:	01c12983          	lw	s3,28(sp)
    486c:	01812a03          	lw	s4,24(sp)
    4870:	01412a83          	lw	s5,20(sp)
    4874:	01012b03          	lw	s6,16(sp)
    4878:	00c12b83          	lw	s7,12(sp)
    487c:	00812c03          	lw	s8,8(sp)
    4880:	03010113          	addi	sp,sp,48
    4884:	00008067          	ret
    4888:	035a6463          	bltu	s4,s5,48b0 <_read_sectors+0x128>
    488c:	00198793          	addi	a5,s3,1
    4890:	03279063          	bne	a5,s2,48b0 <_read_sectors+0x128>
    4894:	22c4a583          	lw	a1,556(s1)
    4898:	0329e263          	bltu	s3,s2,48bc <_read_sectors+0x134>
    489c:	fff00793          	li	a5,-1
    48a0:	faf588e3          	beq	a1,a5,4850 <_read_sectors+0xc8>
    48a4:	22b4a623          	sw	a1,556(s1)
    48a8:	2324a423          	sw	s2,552(s1)
    48ac:	f7dff06f          	j	4828 <_read_sectors+0xa0>
    48b0:	0044a583          	lw	a1,4(s1)
    48b4:	00000993          	li	s3,0
    48b8:	fe1ff06f          	j	4898 <_read_sectors+0x110>
    48bc:	5f8b0513          	addi	a0,s6,1528
    48c0:	fffff097          	auipc	ra,0xfffff
    48c4:	22c080e7          	jalr	556(ra) # 3aec <fatfs_find_next_cluster>
    48c8:	00050593          	mv	a1,a0
    48cc:	00198993          	addi	s3,s3,1
    48d0:	fc9ff06f          	j	4898 <_read_sectors+0x110>

000048d4 <fatfs_set_fs_info_next_free_cluster>:
    48d4:	03052783          	lw	a5,48(a0)
    48d8:	0a078863          	beqz	a5,4988 <fatfs_set_fs_info_next_free_cluster+0xb4>
    48dc:	ff010113          	addi	sp,sp,-16
    48e0:	01c52783          	lw	a5,28(a0)
    48e4:	01212023          	sw	s2,0(sp)
    48e8:	00058913          	mv	s2,a1
    48ec:	01855583          	lhu	a1,24(a0)
    48f0:	00812423          	sw	s0,8(sp)
    48f4:	00912223          	sw	s1,4(sp)
    48f8:	00f585b3          	add	a1,a1,a5
    48fc:	00112623          	sw	ra,12(sp)
    4900:	00050493          	mv	s1,a0
    4904:	ffffe097          	auipc	ra,0xffffe
    4908:	de4080e7          	jalr	-540(ra) # 26e8 <fatfs_fat_read_sector>
    490c:	00050413          	mv	s0,a0
    4910:	06050063          	beqz	a0,4970 <fatfs_set_fs_info_next_free_cluster+0x9c>
    4914:	20852783          	lw	a5,520(a0)
    4918:	00895713          	srli	a4,s2,0x8
    491c:	1f278623          	sb	s2,492(a5)
    4920:	20852783          	lw	a5,520(a0)
    4924:	1ee786a3          	sb	a4,493(a5)
    4928:	20852783          	lw	a5,520(a0)
    492c:	01095713          	srli	a4,s2,0x10
    4930:	1ee78723          	sb	a4,494(a5)
    4934:	20852783          	lw	a5,520(a0)
    4938:	01895713          	srli	a4,s2,0x18
    493c:	1ee787a3          	sb	a4,495(a5)
    4940:	00100793          	li	a5,1
    4944:	20f52223          	sw	a5,516(a0)
    4948:	0384a783          	lw	a5,56(s1)
    494c:	0324a223          	sw	s2,36(s1)
    4950:	00078a63          	beqz	a5,4964 <fatfs_set_fs_info_next_free_cluster+0x90>
    4954:	00050593          	mv	a1,a0
    4958:	20052503          	lw	a0,512(a0)
    495c:	00100613          	li	a2,1
    4960:	000780e7          	jalr	a5
    4964:	fff00793          	li	a5,-1
    4968:	20f42023          	sw	a5,512(s0)
    496c:	20042223          	sw	zero,516(s0)
    4970:	00c12083          	lw	ra,12(sp)
    4974:	00812403          	lw	s0,8(sp)
    4978:	00412483          	lw	s1,4(sp)
    497c:	00012903          	lw	s2,0(sp)
    4980:	01010113          	addi	sp,sp,16
    4984:	00008067          	ret
    4988:	00008067          	ret

0000498c <fatfs_find_blank_cluster>:
    498c:	fe010113          	addi	sp,sp,-32
    4990:	01312623          	sw	s3,12(sp)
    4994:	01512223          	sw	s5,4(sp)
    4998:	000109b7          	lui	s3,0x10
    499c:	10000ab7          	lui	s5,0x10000
    49a0:	00912a23          	sw	s1,20(sp)
    49a4:	01212823          	sw	s2,16(sp)
    49a8:	01412423          	sw	s4,8(sp)
    49ac:	00112e23          	sw	ra,28(sp)
    49b0:	00812c23          	sw	s0,24(sp)
    49b4:	00050913          	mv	s2,a0
    49b8:	00058493          	mv	s1,a1
    49bc:	00060a13          	mv	s4,a2
    49c0:	fff98993          	addi	s3,s3,-1 # ffff <_files+0x959f>
    49c4:	fffa8a93          	addi	s5,s5,-1 # fffffff <__stacktop+0xffeffff>
    49c8:	03092783          	lw	a5,48(s2)
    49cc:	0074d413          	srli	s0,s1,0x7
    49d0:	00079463          	bnez	a5,49d8 <fatfs_find_blank_cluster+0x4c>
    49d4:	0084d413          	srli	s0,s1,0x8
    49d8:	02092783          	lw	a5,32(s2)
    49dc:	0cf47463          	bgeu	s0,a5,4aa4 <fatfs_find_blank_cluster+0x118>
    49e0:	01492583          	lw	a1,20(s2)
    49e4:	00090513          	mv	a0,s2
    49e8:	00b405b3          	add	a1,s0,a1
    49ec:	ffffe097          	auipc	ra,0xffffe
    49f0:	cfc080e7          	jalr	-772(ra) # 26e8 <fatfs_fat_read_sector>
    49f4:	0a050863          	beqz	a0,4aa4 <fatfs_find_blank_cluster+0x118>
    49f8:	03092783          	lw	a5,48(s2)
    49fc:	20852703          	lw	a4,520(a0)
    4a00:	04079c63          	bnez	a5,4a58 <fatfs_find_blank_cluster+0xcc>
    4a04:	00841413          	slli	s0,s0,0x8
    4a08:	40848433          	sub	s0,s1,s0
    4a0c:	00141413          	slli	s0,s0,0x1
    4a10:	01347433          	and	s0,s0,s3
    4a14:	00870733          	add	a4,a4,s0
    4a18:	00174783          	lbu	a5,1(a4)
    4a1c:	00074703          	lbu	a4,0(a4)
    4a20:	00879793          	slli	a5,a5,0x8
    4a24:	00e787b3          	add	a5,a5,a4
    4a28:	06079a63          	bnez	a5,4a9c <fatfs_find_blank_cluster+0x110>
    4a2c:	009a2023          	sw	s1,0(s4)
    4a30:	00100513          	li	a0,1
    4a34:	01c12083          	lw	ra,28(sp)
    4a38:	01812403          	lw	s0,24(sp)
    4a3c:	01412483          	lw	s1,20(sp)
    4a40:	01012903          	lw	s2,16(sp)
    4a44:	00c12983          	lw	s3,12(sp)
    4a48:	00812a03          	lw	s4,8(sp)
    4a4c:	00412a83          	lw	s5,4(sp)
    4a50:	02010113          	addi	sp,sp,32
    4a54:	00008067          	ret
    4a58:	00741413          	slli	s0,s0,0x7
    4a5c:	40848433          	sub	s0,s1,s0
    4a60:	00241413          	slli	s0,s0,0x2
    4a64:	01347433          	and	s0,s0,s3
    4a68:	00870733          	add	a4,a4,s0
    4a6c:	00374783          	lbu	a5,3(a4)
    4a70:	00274683          	lbu	a3,2(a4)
    4a74:	01879793          	slli	a5,a5,0x18
    4a78:	01069693          	slli	a3,a3,0x10
    4a7c:	00d787b3          	add	a5,a5,a3
    4a80:	00074683          	lbu	a3,0(a4)
    4a84:	00174703          	lbu	a4,1(a4)
    4a88:	00d787b3          	add	a5,a5,a3
    4a8c:	00871713          	slli	a4,a4,0x8
    4a90:	00e787b3          	add	a5,a5,a4
    4a94:	0157f7b3          	and	a5,a5,s5
    4a98:	f91ff06f          	j	4a28 <fatfs_find_blank_cluster+0x9c>
    4a9c:	00148493          	addi	s1,s1,1
    4aa0:	f29ff06f          	j	49c8 <fatfs_find_blank_cluster+0x3c>
    4aa4:	00000513          	li	a0,0
    4aa8:	f8dff06f          	j	4a34 <fatfs_find_blank_cluster+0xa8>

00004aac <fatfs_fat_set_cluster>:
    4aac:	03052783          	lw	a5,48(a0)
    4ab0:	fe010113          	addi	sp,sp,-32
    4ab4:	00812c23          	sw	s0,24(sp)
    4ab8:	00912a23          	sw	s1,20(sp)
    4abc:	01212823          	sw	s2,16(sp)
    4ac0:	01312623          	sw	s3,12(sp)
    4ac4:	00112e23          	sw	ra,28(sp)
    4ac8:	00050993          	mv	s3,a0
    4acc:	00058413          	mv	s0,a1
    4ad0:	00060493          	mv	s1,a2
    4ad4:	0085d913          	srli	s2,a1,0x8
    4ad8:	00078463          	beqz	a5,4ae0 <fatfs_fat_set_cluster+0x34>
    4adc:	0075d913          	srli	s2,a1,0x7
    4ae0:	0149a583          	lw	a1,20(s3)
    4ae4:	00098513          	mv	a0,s3
    4ae8:	00b905b3          	add	a1,s2,a1
    4aec:	ffffe097          	auipc	ra,0xffffe
    4af0:	bfc080e7          	jalr	-1028(ra) # 26e8 <fatfs_fat_read_sector>
    4af4:	00050693          	mv	a3,a0
    4af8:	00000513          	li	a0,0
    4afc:	04068c63          	beqz	a3,4b54 <fatfs_fat_set_cluster+0xa8>
    4b00:	0309a703          	lw	a4,48(s3)
    4b04:	2086a783          	lw	a5,520(a3)
    4b08:	0ff4f613          	zext.b	a2,s1
    4b0c:	06071263          	bnez	a4,4b70 <fatfs_fat_set_cluster+0xc4>
    4b10:	00891913          	slli	s2,s2,0x8
    4b14:	41240433          	sub	s0,s0,s2
    4b18:	00010737          	lui	a4,0x10
    4b1c:	00141413          	slli	s0,s0,0x1
    4b20:	ffe70713          	addi	a4,a4,-2 # fffe <_files+0x959e>
    4b24:	00e47433          	and	s0,s0,a4
    4b28:	008787b3          	add	a5,a5,s0
    4b2c:	00c78023          	sb	a2,0(a5)
    4b30:	2086a783          	lw	a5,520(a3)
    4b34:	01049493          	slli	s1,s1,0x10
    4b38:	0104d493          	srli	s1,s1,0x10
    4b3c:	008787b3          	add	a5,a5,s0
    4b40:	0084d493          	srli	s1,s1,0x8
    4b44:	009780a3          	sb	s1,1(a5)
    4b48:	00100793          	li	a5,1
    4b4c:	20f6a223          	sw	a5,516(a3)
    4b50:	00100513          	li	a0,1
    4b54:	01c12083          	lw	ra,28(sp)
    4b58:	01812403          	lw	s0,24(sp)
    4b5c:	01412483          	lw	s1,20(sp)
    4b60:	01012903          	lw	s2,16(sp)
    4b64:	00c12983          	lw	s3,12(sp)
    4b68:	02010113          	addi	sp,sp,32
    4b6c:	00008067          	ret
    4b70:	00791913          	slli	s2,s2,0x7
    4b74:	41240433          	sub	s0,s0,s2
    4b78:	00010737          	lui	a4,0x10
    4b7c:	ffc70713          	addi	a4,a4,-4 # fffc <_files+0x959c>
    4b80:	00241413          	slli	s0,s0,0x2
    4b84:	00e47433          	and	s0,s0,a4
    4b88:	008787b3          	add	a5,a5,s0
    4b8c:	00c78023          	sb	a2,0(a5)
    4b90:	2086a783          	lw	a5,520(a3)
    4b94:	0084d713          	srli	a4,s1,0x8
    4b98:	008787b3          	add	a5,a5,s0
    4b9c:	00e780a3          	sb	a4,1(a5)
    4ba0:	2086a783          	lw	a5,520(a3)
    4ba4:	0104d713          	srli	a4,s1,0x10
    4ba8:	0184d493          	srli	s1,s1,0x18
    4bac:	008787b3          	add	a5,a5,s0
    4bb0:	00e78123          	sb	a4,2(a5)
    4bb4:	2086a783          	lw	a5,520(a3)
    4bb8:	008787b3          	add	a5,a5,s0
    4bbc:	009781a3          	sb	s1,3(a5)
    4bc0:	f89ff06f          	j	4b48 <fatfs_fat_set_cluster+0x9c>

00004bc4 <fatfs_free_cluster_chain>:
    4bc4:	fe010113          	addi	sp,sp,-32
    4bc8:	00812c23          	sw	s0,24(sp)
    4bcc:	01212823          	sw	s2,16(sp)
    4bd0:	00112e23          	sw	ra,28(sp)
    4bd4:	00912a23          	sw	s1,20(sp)
    4bd8:	00050413          	mv	s0,a0
    4bdc:	ffd00913          	li	s2,-3
    4be0:	fff58793          	addi	a5,a1,-1
    4be4:	02f97063          	bgeu	s2,a5,4c04 <fatfs_free_cluster_chain+0x40>
    4be8:	01c12083          	lw	ra,28(sp)
    4bec:	01812403          	lw	s0,24(sp)
    4bf0:	01412483          	lw	s1,20(sp)
    4bf4:	01012903          	lw	s2,16(sp)
    4bf8:	00100513          	li	a0,1
    4bfc:	02010113          	addi	sp,sp,32
    4c00:	00008067          	ret
    4c04:	00040513          	mv	a0,s0
    4c08:	00b12623          	sw	a1,12(sp)
    4c0c:	fffff097          	auipc	ra,0xfffff
    4c10:	ee0080e7          	jalr	-288(ra) # 3aec <fatfs_find_next_cluster>
    4c14:	00c12583          	lw	a1,12(sp)
    4c18:	00050493          	mv	s1,a0
    4c1c:	00000613          	li	a2,0
    4c20:	00040513          	mv	a0,s0
    4c24:	00000097          	auipc	ra,0x0
    4c28:	e88080e7          	jalr	-376(ra) # 4aac <fatfs_fat_set_cluster>
    4c2c:	00048593          	mv	a1,s1
    4c30:	fb1ff06f          	j	4be0 <fatfs_free_cluster_chain+0x1c>

00004c34 <fatfs_fat_add_cluster_to_chain>:
    4c34:	fff00793          	li	a5,-1
    4c38:	02f59463          	bne	a1,a5,4c60 <fatfs_fat_add_cluster_to_chain+0x2c>
    4c3c:	00000513          	li	a0,0
    4c40:	00008067          	ret
    4c44:	00000513          	li	a0,0
    4c48:	01c12083          	lw	ra,28(sp)
    4c4c:	01812403          	lw	s0,24(sp)
    4c50:	01412483          	lw	s1,20(sp)
    4c54:	01012903          	lw	s2,16(sp)
    4c58:	02010113          	addi	sp,sp,32
    4c5c:	00008067          	ret
    4c60:	fe010113          	addi	sp,sp,-32
    4c64:	00812c23          	sw	s0,24(sp)
    4c68:	00912a23          	sw	s1,20(sp)
    4c6c:	01212823          	sw	s2,16(sp)
    4c70:	00050413          	mv	s0,a0
    4c74:	00112e23          	sw	ra,28(sp)
    4c78:	00058513          	mv	a0,a1
    4c7c:	00060493          	mv	s1,a2
    4c80:	fff00913          	li	s2,-1
    4c84:	00050593          	mv	a1,a0
    4c88:	00a12623          	sw	a0,12(sp)
    4c8c:	00040513          	mv	a0,s0
    4c90:	fffff097          	auipc	ra,0xfffff
    4c94:	e5c080e7          	jalr	-420(ra) # 3aec <fatfs_find_next_cluster>
    4c98:	fa0506e3          	beqz	a0,4c44 <fatfs_fat_add_cluster_to_chain+0x10>
    4c9c:	00c12583          	lw	a1,12(sp)
    4ca0:	ff2512e3          	bne	a0,s2,4c84 <fatfs_fat_add_cluster_to_chain+0x50>
    4ca4:	00048613          	mv	a2,s1
    4ca8:	00040513          	mv	a0,s0
    4cac:	00000097          	auipc	ra,0x0
    4cb0:	e00080e7          	jalr	-512(ra) # 4aac <fatfs_fat_set_cluster>
    4cb4:	fff00613          	li	a2,-1
    4cb8:	00048593          	mv	a1,s1
    4cbc:	00040513          	mv	a0,s0
    4cc0:	00000097          	auipc	ra,0x0
    4cc4:	dec080e7          	jalr	-532(ra) # 4aac <fatfs_fat_set_cluster>
    4cc8:	00100513          	li	a0,1
    4ccc:	f7dff06f          	j	4c48 <fatfs_fat_add_cluster_to_chain+0x14>

00004cd0 <fatfs_add_free_space>:
    4cd0:	02452703          	lw	a4,36(a0)
    4cd4:	fd010113          	addi	sp,sp,-48
    4cd8:	02812423          	sw	s0,40(sp)
    4cdc:	03212023          	sw	s2,32(sp)
    4ce0:	01412c23          	sw	s4,24(sp)
    4ce4:	01512a23          	sw	s5,20(sp)
    4ce8:	02112623          	sw	ra,44(sp)
    4cec:	02912223          	sw	s1,36(sp)
    4cf0:	01312e23          	sw	s3,28(sp)
    4cf4:	fff00793          	li	a5,-1
    4cf8:	0005aa83          	lw	s5,0(a1)
    4cfc:	00050413          	mv	s0,a0
    4d00:	00058913          	mv	s2,a1
    4d04:	00060a13          	mv	s4,a2
    4d08:	00f70863          	beq	a4,a5,4d18 <fatfs_add_free_space+0x48>
    4d0c:	fff00593          	li	a1,-1
    4d10:	00000097          	auipc	ra,0x0
    4d14:	bc4080e7          	jalr	-1084(ra) # 48d4 <fatfs_set_fs_info_next_free_cluster>
    4d18:	00000493          	li	s1,0
    4d1c:	03449663          	bne	s1,s4,4d48 <fatfs_add_free_space+0x78>
    4d20:	00100513          	li	a0,1
    4d24:	02c12083          	lw	ra,44(sp)
    4d28:	02812403          	lw	s0,40(sp)
    4d2c:	02412483          	lw	s1,36(sp)
    4d30:	02012903          	lw	s2,32(sp)
    4d34:	01c12983          	lw	s3,28(sp)
    4d38:	01812a03          	lw	s4,24(sp)
    4d3c:	01412a83          	lw	s5,20(sp)
    4d40:	03010113          	addi	sp,sp,48
    4d44:	00008067          	ret
    4d48:	00842583          	lw	a1,8(s0)
    4d4c:	00c10613          	addi	a2,sp,12
    4d50:	00040513          	mv	a0,s0
    4d54:	00000097          	auipc	ra,0x0
    4d58:	c38080e7          	jalr	-968(ra) # 498c <fatfs_find_blank_cluster>
    4d5c:	fc0504e3          	beqz	a0,4d24 <fatfs_add_free_space+0x54>
    4d60:	00c12983          	lw	s3,12(sp)
    4d64:	000a8593          	mv	a1,s5
    4d68:	00040513          	mv	a0,s0
    4d6c:	00098613          	mv	a2,s3
    4d70:	00000097          	auipc	ra,0x0
    4d74:	d3c080e7          	jalr	-708(ra) # 4aac <fatfs_fat_set_cluster>
    4d78:	fff00613          	li	a2,-1
    4d7c:	00098593          	mv	a1,s3
    4d80:	00040513          	mv	a0,s0
    4d84:	00000097          	auipc	ra,0x0
    4d88:	d28080e7          	jalr	-728(ra) # 4aac <fatfs_fat_set_cluster>
    4d8c:	00049463          	bnez	s1,4d94 <fatfs_add_free_space+0xc4>
    4d90:	01392023          	sw	s3,0(s2)
    4d94:	00148493          	addi	s1,s1,1
    4d98:	00098a93          	mv	s5,s3
    4d9c:	f81ff06f          	j	4d1c <fatfs_add_free_space+0x4c>

00004da0 <_write_sectors>:
    4da0:	fb010113          	addi	sp,sp,-80
    4da4:	03312e23          	sw	s3,60(sp)
    4da8:	000069b7          	lui	s3,0x6
    4dac:	03612823          	sw	s6,48(sp)
    4db0:	5f89cb03          	lbu	s6,1528(s3) # 65f8 <_fs>
    4db4:	03512a23          	sw	s5,52(sp)
    4db8:	00058a93          	mv	s5,a1
    4dbc:	fff00793          	li	a5,-1
    4dc0:	04812423          	sw	s0,72(sp)
    4dc4:	000b0593          	mv	a1,s6
    4dc8:	00050413          	mv	s0,a0
    4dcc:	000a8513          	mv	a0,s5
    4dd0:	00f12e23          	sw	a5,28(sp)
    4dd4:	04112623          	sw	ra,76(sp)
    4dd8:	04912223          	sw	s1,68(sp)
    4ddc:	05212023          	sw	s2,64(sp)
    4de0:	03712623          	sw	s7,44(sp)
    4de4:	03812423          	sw	s8,40(sp)
    4de8:	00068b93          	mv	s7,a3
    4dec:	03912223          	sw	s9,36(sp)
    4df0:	03a12023          	sw	s10,32(sp)
    4df4:	00060c93          	mv	s9,a2
    4df8:	03412c23          	sw	s4,56(sp)
    4dfc:	ffffd097          	auipc	ra,0xffffd
    4e00:	f4c080e7          	jalr	-180(ra) # 1d48 <__udivsi3>
    4e04:	00050493          	mv	s1,a0
    4e08:	000b0593          	mv	a1,s6
    4e0c:	000a8513          	mv	a0,s5
    4e10:	ffffd097          	auipc	ra,0xffffd
    4e14:	f80080e7          	jalr	-128(ra) # 1d90 <__umodsi3>
    4e18:	00ab87b3          	add	a5,s7,a0
    4e1c:	00050c13          	mv	s8,a0
    4e20:	5f898d13          	addi	s10,s3,1528
    4e24:	000b8913          	mv	s2,s7
    4e28:	00fb7e63          	bgeu	s6,a5,4e44 <_write_sectors+0xa4>
    4e2c:	00048593          	mv	a1,s1
    4e30:	000b0513          	mv	a0,s6
    4e34:	ffffd097          	auipc	ra,0xffffd
    4e38:	704080e7          	jalr	1796(ra) # 2538 <__mulsi3>
    4e3c:	415b07b3          	sub	a5,s6,s5
    4e40:	00f50933          	add	s2,a0,a5
    4e44:	22842a03          	lw	s4,552(s0)
    4e48:	029a1a63          	bne	s4,s1,4e7c <_write_sectors+0xdc>
    4e4c:	22c42583          	lw	a1,556(s0)
    4e50:	5f898513          	addi	a0,s3,1528
    4e54:	ffffe097          	auipc	ra,0xffffe
    4e58:	a40080e7          	jalr	-1472(ra) # 2894 <fatfs_lba_of_cluster>
    4e5c:	018505b3          	add	a1,a0,s8
    4e60:	00090693          	mv	a3,s2
    4e64:	000c8613          	mv	a2,s9
    4e68:	5f898513          	addi	a0,s3,1528
    4e6c:	ffffe097          	auipc	ra,0xffffe
    4e70:	a90080e7          	jalr	-1392(ra) # 28fc <fatfs_sector_write>
    4e74:	04050a63          	beqz	a0,4ec8 <_write_sectors+0x128>
    4e78:	0540006f          	j	4ecc <_write_sectors+0x12c>
    4e7c:	096ae663          	bltu	s5,s6,4f08 <_write_sectors+0x168>
    4e80:	001a0793          	addi	a5,s4,1
    4e84:	08979263          	bne	a5,s1,4f08 <_write_sectors+0x168>
    4e88:	22c42583          	lw	a1,556(s0)
    4e8c:	fff00a93          	li	s5,-1
    4e90:	089a6263          	bltu	s4,s1,4f14 <_write_sectors+0x174>
    4e94:	fff00793          	li	a5,-1
    4e98:	0af59463          	bne	a1,a5,4f40 <_write_sectors+0x1a0>
    4e9c:	000d4583          	lbu	a1,0(s10)
    4ea0:	fff58513          	addi	a0,a1,-1
    4ea4:	01750533          	add	a0,a0,s7
    4ea8:	ffffd097          	auipc	ra,0xffffd
    4eac:	ea0080e7          	jalr	-352(ra) # 1d48 <__udivsi3>
    4eb0:	00050613          	mv	a2,a0
    4eb4:	01c10593          	addi	a1,sp,28
    4eb8:	5f898513          	addi	a0,s3,1528
    4ebc:	00000097          	auipc	ra,0x0
    4ec0:	e14080e7          	jalr	-492(ra) # 4cd0 <fatfs_add_free_space>
    4ec4:	06051c63          	bnez	a0,4f3c <_write_sectors+0x19c>
    4ec8:	00000913          	li	s2,0
    4ecc:	04c12083          	lw	ra,76(sp)
    4ed0:	04812403          	lw	s0,72(sp)
    4ed4:	04412483          	lw	s1,68(sp)
    4ed8:	03c12983          	lw	s3,60(sp)
    4edc:	03812a03          	lw	s4,56(sp)
    4ee0:	03412a83          	lw	s5,52(sp)
    4ee4:	03012b03          	lw	s6,48(sp)
    4ee8:	02c12b83          	lw	s7,44(sp)
    4eec:	02812c03          	lw	s8,40(sp)
    4ef0:	02412c83          	lw	s9,36(sp)
    4ef4:	02012d03          	lw	s10,32(sp)
    4ef8:	00090513          	mv	a0,s2
    4efc:	04012903          	lw	s2,64(sp)
    4f00:	05010113          	addi	sp,sp,80
    4f04:	00008067          	ret
    4f08:	00442583          	lw	a1,4(s0)
    4f0c:	00000a13          	li	s4,0
    4f10:	f7dff06f          	j	4e8c <_write_sectors+0xec>
    4f14:	5f898513          	addi	a0,s3,1528
    4f18:	00b12623          	sw	a1,12(sp)
    4f1c:	fffff097          	auipc	ra,0xfffff
    4f20:	bd0080e7          	jalr	-1072(ra) # 3aec <fatfs_find_next_cluster>
    4f24:	00c12583          	lw	a1,12(sp)
    4f28:	00b12e23          	sw	a1,28(sp)
    4f2c:	f75508e3          	beq	a0,s5,4e9c <_write_sectors+0xfc>
    4f30:	001a0a13          	addi	s4,s4,1
    4f34:	00050593          	mv	a1,a0
    4f38:	f59ff06f          	j	4e90 <_write_sectors+0xf0>
    4f3c:	01c12583          	lw	a1,28(sp)
    4f40:	22b42623          	sw	a1,556(s0)
    4f44:	22942423          	sw	s1,552(s0)
    4f48:	f09ff06f          	j	4e50 <_write_sectors+0xb0>

00004f4c <fl_fflush>:
    4f4c:	000067b7          	lui	a5,0x6
    4f50:	df47a783          	lw	a5,-524(a5) # 5df4 <_filelib_init>
    4f54:	ff010113          	addi	sp,sp,-16
    4f58:	00812423          	sw	s0,8(sp)
    4f5c:	00112623          	sw	ra,12(sp)
    4f60:	00912223          	sw	s1,4(sp)
    4f64:	00050413          	mv	s0,a0
    4f68:	00079663          	bnez	a5,4f74 <fl_fflush+0x28>
    4f6c:	ffffe097          	auipc	ra,0xffffe
    4f70:	a64080e7          	jalr	-1436(ra) # 29d0 <fl_init>
    4f74:	04040863          	beqz	s0,4fc4 <fl_fflush+0x78>
    4f78:	000067b7          	lui	a5,0x6
    4f7c:	5f878713          	addi	a4,a5,1528 # 65f8 <_fs>
    4f80:	03c72703          	lw	a4,60(a4)
    4f84:	5f878493          	addi	s1,a5,1528
    4f88:	00070463          	beqz	a4,4f90 <fl_fflush+0x44>
    4f8c:	000700e7          	jalr	a4
    4f90:	43442783          	lw	a5,1076(s0)
    4f94:	02078263          	beqz	a5,4fb8 <fl_fflush+0x6c>
    4f98:	43042583          	lw	a1,1072(s0)
    4f9c:	00100693          	li	a3,1
    4fa0:	23040613          	addi	a2,s0,560
    4fa4:	00040513          	mv	a0,s0
    4fa8:	00000097          	auipc	ra,0x0
    4fac:	df8080e7          	jalr	-520(ra) # 4da0 <_write_sectors>
    4fb0:	00050463          	beqz	a0,4fb8 <fl_fflush+0x6c>
    4fb4:	42042a23          	sw	zero,1076(s0)
    4fb8:	0404a783          	lw	a5,64(s1)
    4fbc:	00078463          	beqz	a5,4fc4 <fl_fflush+0x78>
    4fc0:	000780e7          	jalr	a5
    4fc4:	00c12083          	lw	ra,12(sp)
    4fc8:	00812403          	lw	s0,8(sp)
    4fcc:	00412483          	lw	s1,4(sp)
    4fd0:	00000513          	li	a0,0
    4fd4:	01010113          	addi	sp,sp,16
    4fd8:	00008067          	ret

00004fdc <fl_fclose>:
    4fdc:	000067b7          	lui	a5,0x6
    4fe0:	df47a783          	lw	a5,-524(a5) # 5df4 <_filelib_init>
    4fe4:	ff010113          	addi	sp,sp,-16
    4fe8:	00812423          	sw	s0,8(sp)
    4fec:	00112623          	sw	ra,12(sp)
    4ff0:	00912223          	sw	s1,4(sp)
    4ff4:	01212023          	sw	s2,0(sp)
    4ff8:	00050413          	mv	s0,a0
    4ffc:	00079663          	bnez	a5,5008 <fl_fclose+0x2c>
    5000:	ffffe097          	auipc	ra,0xffffe
    5004:	9d0080e7          	jalr	-1584(ra) # 29d0 <fl_init>
    5008:	08040e63          	beqz	s0,50a4 <fl_fclose+0xc8>
    500c:	000064b7          	lui	s1,0x6
    5010:	5f848793          	addi	a5,s1,1528 # 65f8 <_fs>
    5014:	03c7a783          	lw	a5,60(a5)
    5018:	5f848913          	addi	s2,s1,1528
    501c:	00078463          	beqz	a5,5024 <fl_fclose+0x48>
    5020:	000780e7          	jalr	a5
    5024:	00040513          	mv	a0,s0
    5028:	00000097          	auipc	ra,0x0
    502c:	f24080e7          	jalr	-220(ra) # 4f4c <fl_fflush>
    5030:	01042783          	lw	a5,16(s0)
    5034:	00078e63          	beqz	a5,5050 <fl_fclose+0x74>
    5038:	00c42683          	lw	a3,12(s0)
    503c:	00042583          	lw	a1,0(s0)
    5040:	21c40613          	addi	a2,s0,540
    5044:	5f848513          	addi	a0,s1,1528
    5048:	fffff097          	auipc	ra,0xfffff
    504c:	300080e7          	jalr	768(ra) # 4348 <fatfs_update_file_length>
    5050:	fff00793          	li	a5,-1
    5054:	42f42823          	sw	a5,1072(s0)
    5058:	00040513          	mv	a0,s0
    505c:	00042423          	sw	zero,8(s0)
    5060:	00042623          	sw	zero,12(s0)
    5064:	00042223          	sw	zero,4(s0)
    5068:	42042a23          	sw	zero,1076(s0)
    506c:	00042823          	sw	zero,16(s0)
    5070:	ffffd097          	auipc	ra,0xffffd
    5074:	7dc080e7          	jalr	2012(ra) # 284c <_free_file>
    5078:	5f848513          	addi	a0,s1,1528
    507c:	fffff097          	auipc	ra,0xfffff
    5080:	a14080e7          	jalr	-1516(ra) # 3a90 <fatfs_fat_purge>
    5084:	04092783          	lw	a5,64(s2)
    5088:	00078e63          	beqz	a5,50a4 <fl_fclose+0xc8>
    508c:	00812403          	lw	s0,8(sp)
    5090:	00c12083          	lw	ra,12(sp)
    5094:	00412483          	lw	s1,4(sp)
    5098:	00012903          	lw	s2,0(sp)
    509c:	01010113          	addi	sp,sp,16
    50a0:	00078067          	jr	a5
    50a4:	00c12083          	lw	ra,12(sp)
    50a8:	00812403          	lw	s0,8(sp)
    50ac:	00412483          	lw	s1,4(sp)
    50b0:	00012903          	lw	s2,0(sp)
    50b4:	01010113          	addi	sp,sp,16
    50b8:	00008067          	ret

000050bc <fl_fread>:
    50bc:	fd010113          	addi	sp,sp,-48
    50c0:	01612823          	sw	s6,16(sp)
    50c4:	00050b13          	mv	s6,a0
    50c8:	00058513          	mv	a0,a1
    50cc:	00060593          	mv	a1,a2
    50d0:	02812423          	sw	s0,40(sp)
    50d4:	02912223          	sw	s1,36(sp)
    50d8:	02112623          	sw	ra,44(sp)
    50dc:	03212023          	sw	s2,32(sp)
    50e0:	01312e23          	sw	s3,28(sp)
    50e4:	01412c23          	sw	s4,24(sp)
    50e8:	01512a23          	sw	s5,20(sp)
    50ec:	01712623          	sw	s7,12(sp)
    50f0:	01812423          	sw	s8,8(sp)
    50f4:	01912223          	sw	s9,4(sp)
    50f8:	00068413          	mv	s0,a3
    50fc:	ffffd097          	auipc	ra,0xffffd
    5100:	43c080e7          	jalr	1084(ra) # 2538 <__mulsi3>
    5104:	000067b7          	lui	a5,0x6
    5108:	df47a783          	lw	a5,-524(a5) # 5df4 <_filelib_init>
    510c:	00050493          	mv	s1,a0
    5110:	00079663          	bnez	a5,511c <fl_fread+0x60>
    5114:	ffffe097          	auipc	ra,0xffffe
    5118:	8bc080e7          	jalr	-1860(ra) # 29d0 <fl_init>
    511c:	120b0e63          	beqz	s6,5258 <fl_fread+0x19c>
    5120:	12040c63          	beqz	s0,5258 <fl_fread+0x19c>
    5124:	43844783          	lbu	a5,1080(s0)
    5128:	0017f793          	andi	a5,a5,1
    512c:	12078663          	beqz	a5,5258 <fl_fread+0x19c>
    5130:	0a048e63          	beqz	s1,51ec <fl_fread+0x130>
    5134:	00842583          	lw	a1,8(s0)
    5138:	00c42783          	lw	a5,12(s0)
    513c:	10f5fe63          	bgeu	a1,a5,5258 <fl_fread+0x19c>
    5140:	00b48733          	add	a4,s1,a1
    5144:	00e7f463          	bgeu	a5,a4,514c <fl_fread+0x90>
    5148:	40b784b3          	sub	s1,a5,a1
    514c:	0095da13          	srli	s4,a1,0x9
    5150:	1ff5f913          	andi	s2,a1,511
    5154:	00000993          	li	s3,0
    5158:	23040b93          	addi	s7,s0,560
    515c:	20000c13          	li	s8,512
    5160:	1ff00c93          	li	s9,511
    5164:	0899d263          	bge	s3,s1,51e8 <fl_fread+0x12c>
    5168:	04091463          	bnez	s2,51b0 <fl_fread+0xf4>
    516c:	413486b3          	sub	a3,s1,s3
    5170:	04dcd063          	bge	s9,a3,51b0 <fl_fread+0xf4>
    5174:	4096d693          	srai	a3,a3,0x9
    5178:	013b0633          	add	a2,s6,s3
    517c:	000a0593          	mv	a1,s4
    5180:	00040513          	mv	a0,s0
    5184:	fffff097          	auipc	ra,0xfffff
    5188:	604080e7          	jalr	1540(ra) # 4788 <_read_sectors>
    518c:	04050e63          	beqz	a0,51e8 <fl_fread+0x12c>
    5190:	00951a93          	slli	s5,a0,0x9
    5194:	00aa0a33          	add	s4,s4,a0
    5198:	00842783          	lw	a5,8(s0)
    519c:	015989b3          	add	s3,s3,s5
    51a0:	00000913          	li	s2,0
    51a4:	015787b3          	add	a5,a5,s5
    51a8:	00f42423          	sw	a5,8(s0)
    51ac:	fb9ff06f          	j	5164 <fl_fread+0xa8>
    51b0:	43042783          	lw	a5,1072(s0)
    51b4:	07478c63          	beq	a5,s4,522c <fl_fread+0x170>
    51b8:	43442783          	lw	a5,1076(s0)
    51bc:	00078863          	beqz	a5,51cc <fl_fread+0x110>
    51c0:	00040513          	mv	a0,s0
    51c4:	00000097          	auipc	ra,0x0
    51c8:	d88080e7          	jalr	-632(ra) # 4f4c <fl_fflush>
    51cc:	00100693          	li	a3,1
    51d0:	000b8613          	mv	a2,s7
    51d4:	000a0593          	mv	a1,s4
    51d8:	00040513          	mv	a0,s0
    51dc:	fffff097          	auipc	ra,0xfffff
    51e0:	5ac080e7          	jalr	1452(ra) # 4788 <_read_sectors>
    51e4:	04051063          	bnez	a0,5224 <fl_fread+0x168>
    51e8:	00098493          	mv	s1,s3
    51ec:	02c12083          	lw	ra,44(sp)
    51f0:	02812403          	lw	s0,40(sp)
    51f4:	02012903          	lw	s2,32(sp)
    51f8:	01c12983          	lw	s3,28(sp)
    51fc:	01812a03          	lw	s4,24(sp)
    5200:	01412a83          	lw	s5,20(sp)
    5204:	01012b03          	lw	s6,16(sp)
    5208:	00c12b83          	lw	s7,12(sp)
    520c:	00812c03          	lw	s8,8(sp)
    5210:	00412c83          	lw	s9,4(sp)
    5214:	00048513          	mv	a0,s1
    5218:	02412483          	lw	s1,36(sp)
    521c:	03010113          	addi	sp,sp,48
    5220:	00008067          	ret
    5224:	43442823          	sw	s4,1072(s0)
    5228:	42042a23          	sw	zero,1076(s0)
    522c:	412c07b3          	sub	a5,s8,s2
    5230:	41348ab3          	sub	s5,s1,s3
    5234:	0157d463          	bge	a5,s5,523c <fl_fread+0x180>
    5238:	00078a93          	mv	s5,a5
    523c:	000a8613          	mv	a2,s5
    5240:	012b85b3          	add	a1,s7,s2
    5244:	013b0533          	add	a0,s6,s3
    5248:	ffffd097          	auipc	ra,0xffffd
    524c:	bc8080e7          	jalr	-1080(ra) # 1e10 <memcpy>
    5250:	001a0a13          	addi	s4,s4,1
    5254:	f45ff06f          	j	5198 <fl_fread+0xdc>
    5258:	fff00493          	li	s1,-1
    525c:	f91ff06f          	j	51ec <fl_fread+0x130>

00005260 <fatfs_allocate_free_space>:
    5260:	02069a63          	bnez	a3,5294 <fatfs_allocate_free_space+0x34>
    5264:	00000513          	li	a0,0
    5268:	00008067          	ret
    526c:	00000513          	li	a0,0
    5270:	02c12083          	lw	ra,44(sp)
    5274:	02812403          	lw	s0,40(sp)
    5278:	02412483          	lw	s1,36(sp)
    527c:	02012903          	lw	s2,32(sp)
    5280:	01c12983          	lw	s3,28(sp)
    5284:	01812a03          	lw	s4,24(sp)
    5288:	01412a83          	lw	s5,20(sp)
    528c:	03010113          	addi	sp,sp,48
    5290:	00008067          	ret
    5294:	02452703          	lw	a4,36(a0)
    5298:	fd010113          	addi	sp,sp,-48
    529c:	02812423          	sw	s0,40(sp)
    52a0:	03212023          	sw	s2,32(sp)
    52a4:	01312e23          	sw	s3,28(sp)
    52a8:	01512a23          	sw	s5,20(sp)
    52ac:	02112623          	sw	ra,44(sp)
    52b0:	02912223          	sw	s1,36(sp)
    52b4:	01412c23          	sw	s4,24(sp)
    52b8:	fff00793          	li	a5,-1
    52bc:	00050413          	mv	s0,a0
    52c0:	00058a93          	mv	s5,a1
    52c4:	00060993          	mv	s3,a2
    52c8:	00068913          	mv	s2,a3
    52cc:	00f70863          	beq	a4,a5,52dc <fatfs_allocate_free_space+0x7c>
    52d0:	fff00593          	li	a1,-1
    52d4:	fffff097          	auipc	ra,0xfffff
    52d8:	600080e7          	jalr	1536(ra) # 48d4 <fatfs_set_fs_info_next_free_cluster>
    52dc:	00044a03          	lbu	s4,0(s0)
    52e0:	00090513          	mv	a0,s2
    52e4:	009a1a13          	slli	s4,s4,0x9
    52e8:	000a0593          	mv	a1,s4
    52ec:	ffffd097          	auipc	ra,0xffffd
    52f0:	a5c080e7          	jalr	-1444(ra) # 1d48 <__udivsi3>
    52f4:	00050493          	mv	s1,a0
    52f8:	00050593          	mv	a1,a0
    52fc:	000a0513          	mv	a0,s4
    5300:	ffffd097          	auipc	ra,0xffffd
    5304:	238080e7          	jalr	568(ra) # 2538 <__mulsi3>
    5308:	01250463          	beq	a0,s2,5310 <fatfs_allocate_free_space+0xb0>
    530c:	00148493          	addi	s1,s1,1
    5310:	040a8463          	beqz	s5,5358 <fatfs_allocate_free_space+0xf8>
    5314:	00842583          	lw	a1,8(s0)
    5318:	00c10613          	addi	a2,sp,12
    531c:	00040513          	mv	a0,s0
    5320:	fffff097          	auipc	ra,0xfffff
    5324:	66c080e7          	jalr	1644(ra) # 498c <fatfs_find_blank_cluster>
    5328:	f40502e3          	beqz	a0,526c <fatfs_allocate_free_space+0xc>
    532c:	00100793          	li	a5,1
    5330:	02f49863          	bne	s1,a5,5360 <fatfs_allocate_free_space+0x100>
    5334:	00c12483          	lw	s1,12(sp)
    5338:	fff00613          	li	a2,-1
    533c:	00040513          	mv	a0,s0
    5340:	00048593          	mv	a1,s1
    5344:	fffff097          	auipc	ra,0xfffff
    5348:	768080e7          	jalr	1896(ra) # 4aac <fatfs_fat_set_cluster>
    534c:	00100513          	li	a0,1
    5350:	0099a023          	sw	s1,0(s3)
    5354:	f1dff06f          	j	5270 <fatfs_allocate_free_space+0x10>
    5358:	0009a783          	lw	a5,0(s3)
    535c:	00f12623          	sw	a5,12(sp)
    5360:	00048613          	mv	a2,s1
    5364:	00c10593          	addi	a1,sp,12
    5368:	00040513          	mv	a0,s0
    536c:	00000097          	auipc	ra,0x0
    5370:	964080e7          	jalr	-1692(ra) # 4cd0 <fatfs_add_free_space>
    5374:	00a03533          	snez	a0,a0
    5378:	ef9ff06f          	j	5270 <fatfs_allocate_free_space+0x10>

0000537c <fatfs_add_file_entry>:
    537c:	f8010113          	addi	sp,sp,-128
    5380:	00f12a23          	sw	a5,20(sp)
    5384:	03852783          	lw	a5,56(a0)
    5388:	06112e23          	sw	ra,124(sp)
    538c:	06812c23          	sw	s0,120(sp)
    5390:	06912a23          	sw	s1,116(sp)
    5394:	07212823          	sw	s2,112(sp)
    5398:	07312623          	sw	s3,108(sp)
    539c:	07412423          	sw	s4,104(sp)
    53a0:	07512223          	sw	s5,100(sp)
    53a4:	07612023          	sw	s6,96(sp)
    53a8:	05712e23          	sw	s7,92(sp)
    53ac:	05812c23          	sw	s8,88(sp)
    53b0:	05912a23          	sw	s9,84(sp)
    53b4:	05a12823          	sw	s10,80(sp)
    53b8:	05b12623          	sw	s11,76(sp)
    53bc:	00b12423          	sw	a1,8(sp)
    53c0:	00c12623          	sw	a2,12(sp)
    53c4:	00e12823          	sw	a4,16(sp)
    53c8:	01012c23          	sw	a6,24(sp)
    53cc:	04079263          	bnez	a5,5410 <fatfs_add_file_entry+0x94>
    53d0:	00000513          	li	a0,0
    53d4:	07c12083          	lw	ra,124(sp)
    53d8:	07812403          	lw	s0,120(sp)
    53dc:	07412483          	lw	s1,116(sp)
    53e0:	07012903          	lw	s2,112(sp)
    53e4:	06c12983          	lw	s3,108(sp)
    53e8:	06812a03          	lw	s4,104(sp)
    53ec:	06412a83          	lw	s5,100(sp)
    53f0:	06012b03          	lw	s6,96(sp)
    53f4:	05c12b83          	lw	s7,92(sp)
    53f8:	05812c03          	lw	s8,88(sp)
    53fc:	05412c83          	lw	s9,84(sp)
    5400:	05012d03          	lw	s10,80(sp)
    5404:	04c12d83          	lw	s11,76(sp)
    5408:	08010113          	addi	sp,sp,128
    540c:	00008067          	ret
    5410:	00050413          	mv	s0,a0
    5414:	00c12503          	lw	a0,12(sp)
    5418:	00068a93          	mv	s5,a3
    541c:	ffffe097          	auipc	ra,0xffffe
    5420:	9c0080e7          	jalr	-1600(ra) # 2ddc <fatfs_lfn_entries_required>
    5424:	00150713          	addi	a4,a0,1
    5428:	00100793          	li	a5,1
    542c:	00050493          	mv	s1,a0
    5430:	fae7f0e3          	bgeu	a5,a4,53d0 <fatfs_add_file_entry+0x54>
    5434:	00000913          	li	s2,0
    5438:	00000a13          	li	s4,0
    543c:	00000993          	li	s3,0
    5440:	00000b13          	li	s6,0
    5444:	00000d93          	li	s11,0
    5448:	0e500b93          	li	s7,229
    544c:	01000c13          	li	s8,16
    5450:	00812583          	lw	a1,8(sp)
    5454:	00000693          	li	a3,0
    5458:	00090613          	mv	a2,s2
    545c:	00040513          	mv	a0,s0
    5460:	ffffe097          	auipc	ra,0xffffe
    5464:	79c080e7          	jalr	1948(ra) # 3bfc <fatfs_sector_reader>
    5468:	14050463          	beqz	a0,55b0 <fatfs_add_file_entry+0x234>
    546c:	04440d13          	addi	s10,s0,68
    5470:	000d8793          	mv	a5,s11
    5474:	00000c93          	li	s9,0
    5478:	000d0513          	mv	a0,s10
    547c:	00f12e23          	sw	a5,28(sp)
    5480:	ffffe097          	auipc	ra,0xffffe
    5484:	86c080e7          	jalr	-1940(ra) # 2cec <fatfs_entry_lfn_text>
    5488:	01c12783          	lw	a5,28(sp)
    548c:	00050d93          	mv	s11,a0
    5490:	02050c63          	beqz	a0,54c8 <fatfs_add_file_entry+0x14c>
    5494:	00079863          	bnez	a5,54a4 <fatfs_add_file_entry+0x128>
    5498:	000c8a13          	mv	s4,s9
    549c:	00090993          	mv	s3,s2
    54a0:	00100b13          	li	s6,1
    54a4:	00178d93          	addi	s11,a5,1
    54a8:	001c8713          	addi	a4,s9,1
    54ac:	0ff77c93          	zext.b	s9,a4
    54b0:	020d0d13          	addi	s10,s10,32
    54b4:	018c9663          	bne	s9,s8,54c0 <fatfs_add_file_entry+0x144>
    54b8:	00190913          	addi	s2,s2,1
    54bc:	f95ff06f          	j	5450 <fatfs_add_file_entry+0xd4>
    54c0:	000d8793          	mv	a5,s11
    54c4:	fb5ff06f          	j	5478 <fatfs_add_file_entry+0xfc>
    54c8:	000d4603          	lbu	a2,0(s10)
    54cc:	0d761c63          	bne	a2,s7,55a4 <fatfs_add_file_entry+0x228>
    54d0:	00079863          	bnez	a5,54e0 <fatfs_add_file_entry+0x164>
    54d4:	000c8a13          	mv	s4,s9
    54d8:	00090993          	mv	s3,s2
    54dc:	00100b13          	li	s6,1
    54e0:	00178d93          	addi	s11,a5,1
    54e4:	fc97c2e3          	blt	a5,s1,54a8 <fatfs_add_file_entry+0x12c>
    54e8:	00ba8693          	addi	a3,s5,11
    54ec:	000a8713          	mv	a4,s5
    54f0:	00000913          	li	s2,0
    54f4:	00074603          	lbu	a2,0(a4)
    54f8:	00195793          	srli	a5,s2,0x1
    54fc:	00791913          	slli	s2,s2,0x7
    5500:	0127e7b3          	or	a5,a5,s2
    5504:	00170713          	addi	a4,a4,1
    5508:	00c787b3          	add	a5,a5,a2
    550c:	0ff7f913          	zext.b	s2,a5
    5510:	fed712e3          	bne	a4,a3,54f4 <fatfs_add_file_entry+0x178>
    5514:	00098b13          	mv	s6,s3
    5518:	00000d93          	li	s11,0
    551c:	04440c13          	addi	s8,s0,68
    5520:	01000c93          	li	s9,16
    5524:	00812583          	lw	a1,8(sp)
    5528:	00000693          	li	a3,0
    552c:	000b0613          	mv	a2,s6
    5530:	00040513          	mv	a0,s0
    5534:	ffffe097          	auipc	ra,0xffffe
    5538:	6c8080e7          	jalr	1736(ra) # 3bfc <fatfs_sector_reader>
    553c:	e8050ae3          	beqz	a0,53d0 <fatfs_add_file_entry+0x54>
    5540:	000c0b93          	mv	s7,s8
    5544:	00000713          	li	a4,0
    5548:	00000d13          	li	s10,0
    554c:	000d9663          	bnez	s11,5558 <fatfs_add_file_entry+0x1dc>
    5550:	11699863          	bne	s3,s6,5660 <fatfs_add_file_entry+0x2e4>
    5554:	114d1663          	bne	s10,s4,5660 <fatfs_add_file_entry+0x2e4>
    5558:	0e049263          	bnez	s1,563c <fatfs_add_file_entry+0x2c0>
    555c:	01812703          	lw	a4,24(sp)
    5560:	01012603          	lw	a2,16(sp)
    5564:	01412583          	lw	a1,20(sp)
    5568:	02010693          	addi	a3,sp,32
    556c:	000a8513          	mv	a0,s5
    5570:	ffffe097          	auipc	ra,0xffffe
    5574:	9c4080e7          	jalr	-1596(ra) # 2f34 <fatfs_sfn_create_entry>
    5578:	02010593          	addi	a1,sp,32
    557c:	02000613          	li	a2,32
    5580:	000b8513          	mv	a0,s7
    5584:	ffffd097          	auipc	ra,0xffffd
    5588:	88c080e7          	jalr	-1908(ra) # 1e10 <memcpy>
    558c:	03842783          	lw	a5,56(s0)
    5590:	24442503          	lw	a0,580(s0)
    5594:	00100613          	li	a2,1
    5598:	000c0593          	mv	a1,s8
    559c:	000780e7          	jalr	a5
    55a0:	e35ff06f          	j	53d4 <fatfs_add_file_entry+0x58>
    55a4:	f20606e3          	beqz	a2,54d0 <fatfs_add_file_entry+0x154>
    55a8:	00000b13          	li	s6,0
    55ac:	efdff06f          	j	54a8 <fatfs_add_file_entry+0x12c>
    55b0:	00842583          	lw	a1,8(s0)
    55b4:	02010613          	addi	a2,sp,32
    55b8:	00040513          	mv	a0,s0
    55bc:	fffff097          	auipc	ra,0xfffff
    55c0:	3d0080e7          	jalr	976(ra) # 498c <fatfs_find_blank_cluster>
    55c4:	e00506e3          	beqz	a0,53d0 <fatfs_add_file_entry+0x54>
    55c8:	02012b83          	lw	s7,32(sp)
    55cc:	00812583          	lw	a1,8(sp)
    55d0:	00040513          	mv	a0,s0
    55d4:	000b8613          	mv	a2,s7
    55d8:	fffff097          	auipc	ra,0xfffff
    55dc:	65c080e7          	jalr	1628(ra) # 4c34 <fatfs_fat_add_cluster_to_chain>
    55e0:	de0508e3          	beqz	a0,53d0 <fatfs_add_file_entry+0x54>
    55e4:	20000613          	li	a2,512
    55e8:	00000593          	li	a1,0
    55ec:	04440513          	addi	a0,s0,68
    55f0:	ffffd097          	auipc	ra,0xffffd
    55f4:	804080e7          	jalr	-2044(ra) # 1df4 <memset>
    55f8:	00000c13          	li	s8,0
    55fc:	00044783          	lbu	a5,0(s0)
    5600:	00fc6a63          	bltu	s8,a5,5614 <fatfs_add_file_entry+0x298>
    5604:	ee0b12e3          	bnez	s6,54e8 <fatfs_add_file_entry+0x16c>
    5608:	00090993          	mv	s3,s2
    560c:	00000a13          	li	s4,0
    5610:	ed9ff06f          	j	54e8 <fatfs_add_file_entry+0x16c>
    5614:	00000693          	li	a3,0
    5618:	000c0613          	mv	a2,s8
    561c:	000b8593          	mv	a1,s7
    5620:	00040513          	mv	a0,s0
    5624:	ffffd097          	auipc	ra,0xffffd
    5628:	2f0080e7          	jalr	752(ra) # 2914 <fatfs_write_sector>
    562c:	da0502e3          	beqz	a0,53d0 <fatfs_add_file_entry+0x54>
    5630:	001c0c13          	addi	s8,s8,1
    5634:	0ffc7c13          	zext.b	s8,s8
    5638:	fc5ff06f          	j	55fc <fatfs_add_file_entry+0x280>
    563c:	00c12503          	lw	a0,12(sp)
    5640:	fff48493          	addi	s1,s1,-1
    5644:	00090693          	mv	a3,s2
    5648:	00048613          	mv	a2,s1
    564c:	000b8593          	mv	a1,s7
    5650:	ffffd097          	auipc	ra,0xffffd
    5654:	7bc080e7          	jalr	1980(ra) # 2e0c <fatfs_filename_to_lfn>
    5658:	00100d93          	li	s11,1
    565c:	00100713          	li	a4,1
    5660:	001d0793          	addi	a5,s10,1
    5664:	0ff7fd13          	zext.b	s10,a5
    5668:	020b8b93          	addi	s7,s7,32
    566c:	ef9d10e3          	bne	s10,s9,554c <fatfs_add_file_entry+0x1d0>
    5670:	00070e63          	beqz	a4,568c <fatfs_add_file_entry+0x310>
    5674:	03842783          	lw	a5,56(s0)
    5678:	24442503          	lw	a0,580(s0)
    567c:	00100613          	li	a2,1
    5680:	000c0593          	mv	a1,s8
    5684:	000780e7          	jalr	a5
    5688:	d40504e3          	beqz	a0,53d0 <fatfs_add_file_entry+0x54>
    568c:	001b0b13          	addi	s6,s6,1
    5690:	e95ff06f          	j	5524 <fatfs_add_file_entry+0x1a8>

00005694 <fl_fopen>:
    5694:	000067b7          	lui	a5,0x6
    5698:	df47a783          	lw	a5,-524(a5) # 5df4 <_filelib_init>
    569c:	fa010113          	addi	sp,sp,-96
    56a0:	04812c23          	sw	s0,88(sp)
    56a4:	05412423          	sw	s4,72(sp)
    56a8:	04112e23          	sw	ra,92(sp)
    56ac:	04912a23          	sw	s1,84(sp)
    56b0:	05212823          	sw	s2,80(sp)
    56b4:	05312623          	sw	s3,76(sp)
    56b8:	05512223          	sw	s5,68(sp)
    56bc:	05612023          	sw	s6,64(sp)
    56c0:	03712e23          	sw	s7,60(sp)
    56c4:	03812c23          	sw	s8,56(sp)
    56c8:	03912a23          	sw	s9,52(sp)
    56cc:	00050a13          	mv	s4,a0
    56d0:	00058413          	mv	s0,a1
    56d4:	00079663          	bnez	a5,56e0 <fl_fopen+0x4c>
    56d8:	ffffd097          	auipc	ra,0xffffd
    56dc:	2f8080e7          	jalr	760(ra) # 29d0 <fl_init>
    56e0:	000067b7          	lui	a5,0x6
    56e4:	df07a783          	lw	a5,-528(a5) # 5df0 <_filelib_valid>
    56e8:	36078c63          	beqz	a5,5a60 <fl_fopen+0x3cc>
    56ec:	360a0a63          	beqz	s4,5a60 <fl_fopen+0x3cc>
    56f0:	10040863          	beqz	s0,5800 <fl_fopen+0x16c>
    56f4:	00040513          	mv	a0,s0
    56f8:	ffffc097          	auipc	ra,0xffffc
    56fc:	73c080e7          	jalr	1852(ra) # 1e34 <strlen>
    5700:	00000493          	li	s1,0
    5704:	00000713          	li	a4,0
    5708:	05700693          	li	a3,87
    570c:	07200613          	li	a2,114
    5710:	07700813          	li	a6,119
    5714:	06100893          	li	a7,97
    5718:	06200313          	li	t1,98
    571c:	04100593          	li	a1,65
    5720:	04200e13          	li	t3,66
    5724:	05200e93          	li	t4,82
    5728:	02b00f13          	li	t5,43
    572c:	10a74663          	blt	a4,a0,5838 <fl_fopen+0x1a4>
    5730:	00006937          	lui	s2,0x6
    5734:	5f890793          	addi	a5,s2,1528 # 65f8 <_fs>
    5738:	0387a783          	lw	a5,56(a5)
    573c:	5f890b13          	addi	s6,s2,1528
    5740:	00079463          	bnez	a5,5748 <fl_fopen+0xb4>
    5744:	0d94f493          	andi	s1,s1,217
    5748:	03cb2783          	lw	a5,60(s6)
    574c:	00078463          	beqz	a5,5754 <fl_fopen+0xc0>
    5750:	000780e7          	jalr	a5
    5754:	0014fc93          	andi	s9,s1,1
    5758:	160c9863          	bnez	s9,58c8 <fl_fopen+0x234>
    575c:	0204f793          	andi	a5,s1,32
    5760:	08078863          	beqz	a5,57f0 <fl_fopen+0x15c>
    5764:	038b2783          	lw	a5,56(s6)
    5768:	06078a63          	beqz	a5,57dc <fl_fopen+0x148>
    576c:	ffffd097          	auipc	ra,0xffffd
    5770:	06c080e7          	jalr	108(ra) # 27d8 <_allocate_file>
    5774:	00050413          	mv	s0,a0
    5778:	06050263          	beqz	a0,57dc <fl_fopen+0x148>
    577c:	01450b93          	addi	s7,a0,20
    5780:	10400613          	li	a2,260
    5784:	00000593          	li	a1,0
    5788:	000b8513          	mv	a0,s7
    578c:	ffffc097          	auipc	ra,0xffffc
    5790:	668080e7          	jalr	1640(ra) # 1df4 <memset>
    5794:	11840a93          	addi	s5,s0,280
    5798:	10400613          	li	a2,260
    579c:	00000593          	li	a1,0
    57a0:	000a8513          	mv	a0,s5
    57a4:	ffffc097          	auipc	ra,0xffffc
    57a8:	650080e7          	jalr	1616(ra) # 1df4 <memset>
    57ac:	10400713          	li	a4,260
    57b0:	000a8693          	mv	a3,s5
    57b4:	10400613          	li	a2,260
    57b8:	000b8593          	mv	a1,s7
    57bc:	000a0513          	mv	a0,s4
    57c0:	ffffe097          	auipc	ra,0xffffe
    57c4:	c78080e7          	jalr	-904(ra) # 3438 <fatfs_split_path>
    57c8:	fff00793          	li	a5,-1
    57cc:	10f51c63          	bne	a0,a5,58e4 <fl_fopen+0x250>
    57d0:	00040513          	mv	a0,s0
    57d4:	ffffd097          	auipc	ra,0xffffd
    57d8:	078080e7          	jalr	120(ra) # 284c <_free_file>
    57dc:	00000413          	li	s0,0
    57e0:	260c9c63          	bnez	s9,5a58 <fl_fopen+0x3c4>
    57e4:	0e041c63          	bnez	s0,58dc <fl_fopen+0x248>
    57e8:	0064f793          	andi	a5,s1,6
    57ec:	24079e63          	bnez	a5,5a48 <fl_fopen+0x3b4>
    57f0:	00000413          	li	s0,0
    57f4:	040b2783          	lw	a5,64(s6)
    57f8:	00078463          	beqz	a5,5800 <fl_fopen+0x16c>
    57fc:	000780e7          	jalr	a5
    5800:	05c12083          	lw	ra,92(sp)
    5804:	00040513          	mv	a0,s0
    5808:	05812403          	lw	s0,88(sp)
    580c:	05412483          	lw	s1,84(sp)
    5810:	05012903          	lw	s2,80(sp)
    5814:	04c12983          	lw	s3,76(sp)
    5818:	04812a03          	lw	s4,72(sp)
    581c:	04412a83          	lw	s5,68(sp)
    5820:	04012b03          	lw	s6,64(sp)
    5824:	03c12b83          	lw	s7,60(sp)
    5828:	03812c03          	lw	s8,56(sp)
    582c:	03412c83          	lw	s9,52(sp)
    5830:	06010113          	addi	sp,sp,96
    5834:	00008067          	ret
    5838:	00e407b3          	add	a5,s0,a4
    583c:	0007c783          	lbu	a5,0(a5)
    5840:	04d78463          	beq	a5,a3,5888 <fl_fopen+0x1f4>
    5844:	02f6e463          	bltu	a3,a5,586c <fl_fopen+0x1d8>
    5848:	04b78463          	beq	a5,a1,5890 <fl_fopen+0x1fc>
    584c:	00f5e863          	bltu	a1,a5,585c <fl_fopen+0x1c8>
    5850:	05e78463          	beq	a5,t5,5898 <fl_fopen+0x204>
    5854:	00170713          	addi	a4,a4,1
    5858:	ed5ff06f          	j	572c <fl_fopen+0x98>
    585c:	03c78063          	beq	a5,t3,587c <fl_fopen+0x1e8>
    5860:	ffd79ae3          	bne	a5,t4,5854 <fl_fopen+0x1c0>
    5864:	0014e493          	ori	s1,s1,1
    5868:	fedff06f          	j	5854 <fl_fopen+0x1c0>
    586c:	fec78ce3          	beq	a5,a2,5864 <fl_fopen+0x1d0>
    5870:	00f66a63          	bltu	a2,a5,5884 <fl_fopen+0x1f0>
    5874:	01178e63          	beq	a5,a7,5890 <fl_fopen+0x1fc>
    5878:	fc679ee3          	bne	a5,t1,5854 <fl_fopen+0x1c0>
    587c:	0084e493          	ori	s1,s1,8
    5880:	fd5ff06f          	j	5854 <fl_fopen+0x1c0>
    5884:	fd0798e3          	bne	a5,a6,5854 <fl_fopen+0x1c0>
    5888:	0324e493          	ori	s1,s1,50
    588c:	fc9ff06f          	j	5854 <fl_fopen+0x1c0>
    5890:	0264e493          	ori	s1,s1,38
    5894:	fc1ff06f          	j	5854 <fl_fopen+0x1c0>
    5898:	0014f793          	andi	a5,s1,1
    589c:	00078663          	beqz	a5,58a8 <fl_fopen+0x214>
    58a0:	0024e493          	ori	s1,s1,2
    58a4:	fb1ff06f          	j	5854 <fl_fopen+0x1c0>
    58a8:	0024f793          	andi	a5,s1,2
    58ac:	00078663          	beqz	a5,58b8 <fl_fopen+0x224>
    58b0:	0314e493          	ori	s1,s1,49
    58b4:	fa1ff06f          	j	5854 <fl_fopen+0x1c0>
    58b8:	0044f793          	andi	a5,s1,4
    58bc:	f8078ce3          	beqz	a5,5854 <fl_fopen+0x1c0>
    58c0:	0274e493          	ori	s1,s1,39
    58c4:	f91ff06f          	j	5854 <fl_fopen+0x1c0>
    58c8:	000a0513          	mv	a0,s4
    58cc:	fffff097          	auipc	ra,0xfffff
    58d0:	830080e7          	jalr	-2000(ra) # 40fc <_open_file>
    58d4:	00050413          	mv	s0,a0
    58d8:	e80502e3          	beqz	a0,575c <fl_fopen+0xc8>
    58dc:	42940c23          	sb	s1,1080(s0)
    58e0:	f15ff06f          	j	57f4 <fl_fopen+0x160>
    58e4:	00040513          	mv	a0,s0
    58e8:	ffffe097          	auipc	ra,0xffffe
    58ec:	da4080e7          	jalr	-604(ra) # 368c <_check_file_open>
    58f0:	00050993          	mv	s3,a0
    58f4:	ec051ee3          	bnez	a0,57d0 <fl_fopen+0x13c>
    58f8:	01444783          	lbu	a5,20(s0)
    58fc:	0e079663          	bnez	a5,59e8 <fl_fopen+0x354>
    5900:	008b2783          	lw	a5,8(s6)
    5904:	00f42023          	sw	a5,0(s0)
    5908:	00042583          	lw	a1,0(s0)
    590c:	01010693          	addi	a3,sp,16
    5910:	000a8613          	mv	a2,s5
    5914:	5f890513          	addi	a0,s2,1528
    5918:	ffffe097          	auipc	ra,0xffffe
    591c:	424080e7          	jalr	1060(ra) # 3d3c <fatfs_get_file_entry>
    5920:	00100793          	li	a5,1
    5924:	eaf506e3          	beq	a0,a5,57d0 <fl_fopen+0x13c>
    5928:	00042223          	sw	zero,4(s0)
    592c:	00100693          	li	a3,1
    5930:	00440613          	addi	a2,s0,4
    5934:	00100593          	li	a1,1
    5938:	5f890513          	addi	a0,s2,1528
    593c:	00000097          	auipc	ra,0x0
    5940:	924080e7          	jalr	-1756(ra) # 5260 <fatfs_allocate_free_space>
    5944:	e80506e3          	beqz	a0,57d0 <fl_fopen+0x13c>
    5948:	00002c37          	lui	s8,0x2
    594c:	21c40b93          	addi	s7,s0,540
    5950:	70fc0c13          	addi	s8,s8,1807 # 270f <fatfs_fat_read_sector+0x27>
    5954:	000a8593          	mv	a1,s5
    5958:	00410513          	addi	a0,sp,4
    595c:	ffffd097          	auipc	ra,0xffffd
    5960:	680080e7          	jalr	1664(ra) # 2fdc <fatfs_lfn_create_sfn>
    5964:	08098e63          	beqz	s3,5a00 <fl_fopen+0x36c>
    5968:	00098613          	mv	a2,s3
    596c:	00410593          	addi	a1,sp,4
    5970:	000b8513          	mv	a0,s7
    5974:	ffffd097          	auipc	ra,0xffffd
    5978:	7e4080e7          	jalr	2020(ra) # 3158 <fatfs_lfn_generate_tail>
    597c:	00042583          	lw	a1,0(s0)
    5980:	000b8613          	mv	a2,s7
    5984:	5f890513          	addi	a0,s2,1528
    5988:	fffff097          	auipc	ra,0xfffff
    598c:	8ec080e7          	jalr	-1812(ra) # 4274 <fatfs_sfn_exists>
    5990:	00050663          	beqz	a0,599c <fl_fopen+0x308>
    5994:	00198993          	addi	s3,s3,1
    5998:	fb899ee3          	bne	s3,s8,5954 <fl_fopen+0x2c0>
    599c:	00442703          	lw	a4,4(s0)
    59a0:	000027b7          	lui	a5,0x2
    59a4:	70f78793          	addi	a5,a5,1807 # 270f <fatfs_fat_read_sector+0x27>
    59a8:	00070593          	mv	a1,a4
    59ac:	02f98663          	beq	s3,a5,59d8 <fl_fopen+0x344>
    59b0:	00042583          	lw	a1,0(s0)
    59b4:	00000813          	li	a6,0
    59b8:	00000793          	li	a5,0
    59bc:	000b8693          	mv	a3,s7
    59c0:	000a8613          	mv	a2,s5
    59c4:	5f890513          	addi	a0,s2,1528
    59c8:	00000097          	auipc	ra,0x0
    59cc:	9b4080e7          	jalr	-1612(ra) # 537c <fatfs_add_file_entry>
    59d0:	04051463          	bnez	a0,5a18 <fl_fopen+0x384>
    59d4:	00442583          	lw	a1,4(s0)
    59d8:	5f890513          	addi	a0,s2,1528
    59dc:	fffff097          	auipc	ra,0xfffff
    59e0:	1e8080e7          	jalr	488(ra) # 4bc4 <fatfs_free_cluster_chain>
    59e4:	dedff06f          	j	57d0 <fl_fopen+0x13c>
    59e8:	00040593          	mv	a1,s0
    59ec:	000b8513          	mv	a0,s7
    59f0:	ffffe097          	auipc	ra,0xffffe
    59f4:	558080e7          	jalr	1368(ra) # 3f48 <_open_directory>
    59f8:	f00518e3          	bnez	a0,5908 <fl_fopen+0x274>
    59fc:	dd5ff06f          	j	57d0 <fl_fopen+0x13c>
    5a00:	00b00613          	li	a2,11
    5a04:	00410593          	addi	a1,sp,4
    5a08:	000b8513          	mv	a0,s7
    5a0c:	ffffc097          	auipc	ra,0xffffc
    5a10:	404080e7          	jalr	1028(ra) # 1e10 <memcpy>
    5a14:	f69ff06f          	j	597c <fl_fopen+0x2e8>
    5a18:	fff00793          	li	a5,-1
    5a1c:	00042623          	sw	zero,12(s0)
    5a20:	00042423          	sw	zero,8(s0)
    5a24:	42f42823          	sw	a5,1072(s0)
    5a28:	42042a23          	sw	zero,1076(s0)
    5a2c:	00042823          	sw	zero,16(s0)
    5a30:	22f42423          	sw	a5,552(s0)
    5a34:	22f42623          	sw	a5,556(s0)
    5a38:	5f890513          	addi	a0,s2,1528
    5a3c:	ffffe097          	auipc	ra,0xffffe
    5a40:	054080e7          	jalr	84(ra) # 3a90 <fatfs_fat_purge>
    5a44:	d9dff06f          	j	57e0 <fl_fopen+0x14c>
    5a48:	000a0513          	mv	a0,s4
    5a4c:	ffffe097          	auipc	ra,0xffffe
    5a50:	6b0080e7          	jalr	1712(ra) # 40fc <_open_file>
    5a54:	00050413          	mv	s0,a0
    5a58:	e80412e3          	bnez	s0,58dc <fl_fopen+0x248>
    5a5c:	d95ff06f          	j	57f0 <fl_fopen+0x15c>
    5a60:	00000413          	li	s0,0
    5a64:	d9dff06f          	j	5800 <fl_fopen+0x16c>

00005a68 <g_last_progress>:
    5a68:	ffffffff                                ....

00005a6c <g_volume>:
    5a6c:	00000004                                ....

00005a70 <cmd16>:
    5a70:	02000050 00001500                       P.......

00005a78 <acmd41>:
    5a78:	00004069 00000100                       i@......

00005a80 <cmd55>:
    5a80:	00000077 00000100                       w.......

00005a88 <cmd8>:
    5a88:	01000048 000087aa                       H.......

00005a90 <cmd0>:
    5a90:	00000040 00009500                       @.......

00005a98 <AUDIO>:
    5a98:	00018000                                ....

00005a9c <DISPLAY>:
    5a9c:	00014000                                .@..

00005aa0 <RGBSEL>:
    5aa0:	00012000                                . ..

00005aa4 <VOLUME>:
    5aa4:	00011000                                ....

00005aa8 <BUTTONS>:
    5aa8:	00010100                                ....

00005aac <SDCARD>:
    5aac:	00010080                                ....

00005ab0 <OLED_RST>:
    5ab0:	00010010                                ....

00005ab4 <OLED>:
    5ab4:	00010008                                ....

00005ab8 <LEDS>:
    5ab8:	00010004 3d3d3d2b 00002b3d 3a3a287c     ....+====+..|(::
    5ac8:	00007c29 2829207c 00007c20 2e2e287c     )|..| )( |..|(..
    5ad8:	00007c29 73756d2f 00006369 20203c20     )|../music.. <  
    5ae8:	207c7c20 203e2020 00000000 20203c20      ||   > .... <  
    5af8:	20203e20 203e2020 00000000 00007325      >    > ....%s..
    5b08:	00006272 2073250a 20746f6e 6e756f66     rb...%s not foun
    5b18:	00000a64 676d692f 676d692f 7761722e     d.../img/img.raw
    5b28:	00000000 656e6f64 00000a2e 20202020     ....done....    
    5b38:	3d3d3d3d 616c7020 20726579 3d3d3d3d     ==== player ====
    5b48:	20202020 00000a0a 2e206f6e 20776172         ....no .raw 
    5b58:	2f206e69 6973756d 00000a63 203e6425     in /music...%d> 
    5b68:	000a7325 33323130 37363534 42413938     %s..0123456789AB
    5b78:	46454443 00000000 5f544146 203a5346     CDEF....FAT_FS: 
    5b88:	6f727245 6f632072 20646c75 20746f6e     Error could not 
    5b98:	64616f6c 54414620 74656420 736c6961     load FAT details
    5ba8:	64252820 0a0d2129 00000000               (%d)!......

00005bb4 <font>:
    5bb4:	00000000 00002f00 00030000 14000003     ...../..........
    5bc4:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    5bd4:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    5be4:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    5bf4:	00080800 00200000 20000000 02040810     ...... .... ....
    5c04:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    5c14:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    5c24:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    5c34:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    5c44:	00141400 0a110000 01000004 0007052d     ............-...
    5c54:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    5c64:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    5c74:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    5c84:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    5c94:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    5ca4:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    5cb4:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    5cc4:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    5cd4:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    5ce4:	003f2102 01020000 20000201 00000020     .!?........  ...
    5cf4:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    5d04:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    5d14:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    5d24:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    5d34:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    5d44:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    5d54:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    5d64:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    5d74:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    5d84:	043f2100 02010000 00000102 00000000     .!?.............
    5d94:	00000001 00000003 00000005 00000007     ................
    5da4:	00000009 0000000e 00000010 00000012     ................
    5db4:	00000014 00000016 00000018 0000001c     ................
    5dc4:	0000001e                                ....

00005dc8 <file_count>:
    5dc8:	00000000                                ....

00005dcc <sdcard_while_loading_callback>:
    5dcc:	00000000                                ....

00005dd0 <back_color>:
	...

00005dd1 <front_color>:
    5dd1:	                                         ...

00005dd4 <cursor_y>:
    5dd4:	00000000                                ....

00005dd8 <cursor_x>:
    5dd8:	00000000                                ....

00005ddc <f_putchar>:
    5ddc:	00000000                                ....

00005de0 <_free_file_list>:
	...

00005de8 <_open_file_list>:
	...

00005df0 <_filelib_valid>:
    5df0:	00000000                                ....

00005df4 <_filelib_init>:
    5df4:	00000000                                ....
