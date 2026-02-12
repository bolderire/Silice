
code.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00001097          	auipc	ra,0x1
       8:	010080e7          	jalr	16(ra) # 1014 <main>
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
      40:	e207a783          	lw	a5,-480(a5) # 5e20 <LEDS>
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
      6c:	ff010113          	addi	sp,sp,-16 # fff0 <_files+0x914c>
      70:	00000593          	li	a1,0
      74:	0ff00513          	li	a0,255
      78:	00112623          	sw	ra,12(sp)
      7c:	00812423          	sw	s0,8(sp)
      80:	00002097          	auipc	ra,0x2
      84:	400080e7          	jalr	1024(ra) # 2480 <display_set_front_back_color>
      88:	02c00593          	li	a1,44
      8c:	03100513          	li	a0,49
      90:	00002097          	auipc	ra,0x2
      94:	3dc080e7          	jalr	988(ra) # 246c <display_set_cursor>
      98:	00006437          	lui	s0,0x6
      9c:	e2440513          	addi	a0,s0,-476 # 5e24 <LEDS+0x4>
      a0:	00002097          	auipc	ra,0x2
      a4:	6d0080e7          	jalr	1744(ra) # 2770 <printf>
      a8:	03400593          	li	a1,52
      ac:	03100513          	li	a0,49
      b0:	00002097          	auipc	ra,0x2
      b4:	3bc080e7          	jalr	956(ra) # 246c <display_set_cursor>
      b8:	00006537          	lui	a0,0x6
      bc:	e2c50513          	addi	a0,a0,-468 # 5e2c <LEDS+0xc>
      c0:	00002097          	auipc	ra,0x2
      c4:	6b0080e7          	jalr	1712(ra) # 2770 <printf>
      c8:	03c00593          	li	a1,60
      cc:	03100513          	li	a0,49
      d0:	00002097          	auipc	ra,0x2
      d4:	39c080e7          	jalr	924(ra) # 246c <display_set_cursor>
      d8:	00006537          	lui	a0,0x6
      dc:	e3450513          	addi	a0,a0,-460 # 5e34 <LEDS+0x14>
      e0:	00002097          	auipc	ra,0x2
      e4:	690080e7          	jalr	1680(ra) # 2770 <printf>
      e8:	04400593          	li	a1,68
      ec:	03100513          	li	a0,49
      f0:	00002097          	auipc	ra,0x2
      f4:	37c080e7          	jalr	892(ra) # 246c <display_set_cursor>
      f8:	00006537          	lui	a0,0x6
      fc:	e3c50513          	addi	a0,a0,-452 # 5e3c <LEDS+0x1c>
     100:	00002097          	auipc	ra,0x2
     104:	670080e7          	jalr	1648(ra) # 2770 <printf>
     108:	04c00593          	li	a1,76
     10c:	03100513          	li	a0,49
     110:	00002097          	auipc	ra,0x2
     114:	35c080e7          	jalr	860(ra) # 246c <display_set_cursor>
     118:	e2440513          	addi	a0,s0,-476
     11c:	00002097          	auipc	ra,0x2
     120:	654080e7          	jalr	1620(ra) # 2770 <printf>
     124:	00812403          	lw	s0,8(sp)
     128:	00c12083          	lw	ra,12(sp)
     12c:	01010113          	addi	sp,sp,16
     130:	00002317          	auipc	t1,0x2
     134:	4d430067          	jr	1236(t1) # 2604 <display_refresh>

00000138 <clear_audio>:
     138:	ff010113          	addi	sp,sp,-16
     13c:	000067b7          	lui	a5,0x6
     140:	00812423          	sw	s0,8(sp)
     144:	e007a403          	lw	s0,-512(a5) # 5e00 <AUDIO>
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
     170:	ff0080e7          	jalr	-16(ra) # 215c <memset>
     174:	00042783          	lw	a5,0(s0)
     178:	fef48ee3          	beq	s1,a5,174 <clear_audio+0x3c>
     17c:	00042483          	lw	s1,0(s0)
     180:	20000613          	li	a2,512
     184:	00000593          	li	a1,0
     188:	00048513          	mv	a0,s1
     18c:	00002097          	auipc	ra,0x2
     190:	fd0080e7          	jalr	-48(ra) # 215c <memset>
     194:	00042783          	lw	a5,0(s0)
     198:	fef48ee3          	beq	s1,a5,194 <clear_audio+0x5c>
     19c:	00c12083          	lw	ra,12(sp)
     1a0:	00812403          	lw	s0,8(sp)
     1a4:	00412483          	lw	s1,4(sp)
     1a8:	01010113          	addi	sp,sp,16
     1ac:	00008067          	ret

000001b0 <clear_screen>:
     1b0:	000067b7          	lui	a5,0x6
     1b4:	e087a783          	lw	a5,-504(a5) # 5e08 <RGBSEL>
     1b8:	ff010113          	addi	sp,sp,-16
     1bc:	00812423          	sw	s0,8(sp)
     1c0:	00912223          	sw	s1,4(sp)
     1c4:	01212023          	sw	s2,0(sp)
     1c8:	00112623          	sw	ra,12(sp)
     1cc:	00000413          	li	s0,0
     1d0:	00078913          	mv	s2,a5
     1d4:	00300493          	li	s1,3
     1d8:	00892023          	sw	s0,0(s2)
     1dc:	00002097          	auipc	ra,0x2
     1e0:	284080e7          	jalr	644(ra) # 2460 <display_framebuffer>
     1e4:	00004637          	lui	a2,0x4
     1e8:	00000593          	li	a1,0
     1ec:	00140413          	addi	s0,s0,1
     1f0:	00002097          	auipc	ra,0x2
     1f4:	f6c080e7          	jalr	-148(ra) # 215c <memset>
     1f8:	fe9410e3          	bne	s0,s1,1d8 <clear_screen+0x28>
     1fc:	00812403          	lw	s0,8(sp)
     200:	00c12083          	lw	ra,12(sp)
     204:	00412483          	lw	s1,4(sp)
     208:	00012903          	lw	s2,0(sp)
     20c:	01010113          	addi	sp,sp,16
     210:	00002317          	auipc	t1,0x2
     214:	3f430067          	jr	1012(t1) # 2604 <display_refresh>

00000218 <fill_rect_gray>:
     218:	000067b7          	lui	a5,0x6
     21c:	e087a783          	lw	a5,-504(a5) # 5e08 <RGBSEL>
     220:	fd010113          	addi	sp,sp,-48
     224:	02812423          	sw	s0,40(sp)
     228:	03212023          	sw	s2,32(sp)
     22c:	01412c23          	sw	s4,24(sp)
     230:	01512a23          	sw	s5,20(sp)
     234:	01612823          	sw	s6,16(sp)
     238:	01812423          	sw	s8,8(sp)
     23c:	01912223          	sw	s9,4(sp)
     240:	01a12023          	sw	s10,0(sp)
     244:	02112623          	sw	ra,44(sp)
     248:	02912223          	sw	s1,36(sp)
     24c:	01312e23          	sw	s3,28(sp)
     250:	01712623          	sw	s7,12(sp)
     254:	00050913          	mv	s2,a0
     258:	00070b13          	mv	s6,a4
     25c:	00058413          	mv	s0,a1
     260:	00b68ab3          	add	s5,a3,a1
     264:	00a60a33          	add	s4,a2,a0
     268:	07f00c13          	li	s8,127
     26c:	00078d13          	mv	s10,a5
     270:	00300c93          	li	s9,3
     274:	00090493          	mv	s1,s2
     278:	0380006f          	j	2b0 <fill_rect_gray+0x98>
     27c:	029c4863          	blt	s8,s1,2ac <fill_rect_gray+0x94>
     280:	028c6663          	bltu	s8,s0,2ac <fill_rect_gray+0x94>
     284:	00749b93          	slli	s7,s1,0x7
     288:	008b8bb3          	add	s7,s7,s0
     28c:	00000993          	li	s3,0
     290:	013d2023          	sw	s3,0(s10)
     294:	00002097          	auipc	ra,0x2
     298:	1cc080e7          	jalr	460(ra) # 2460 <display_framebuffer>
     29c:	01750533          	add	a0,a0,s7
     2a0:	01650023          	sb	s6,0(a0)
     2a4:	00198993          	addi	s3,s3,1
     2a8:	ff9994e3          	bne	s3,s9,290 <fill_rect_gray+0x78>
     2ac:	00148493          	addi	s1,s1,1
     2b0:	fd4496e3          	bne	s1,s4,27c <fill_rect_gray+0x64>
     2b4:	00140413          	addi	s0,s0,1
     2b8:	fb541ee3          	bne	s0,s5,274 <fill_rect_gray+0x5c>
     2bc:	02c12083          	lw	ra,44(sp)
     2c0:	02812403          	lw	s0,40(sp)
     2c4:	02412483          	lw	s1,36(sp)
     2c8:	02012903          	lw	s2,32(sp)
     2cc:	01c12983          	lw	s3,28(sp)
     2d0:	01812a03          	lw	s4,24(sp)
     2d4:	01412a83          	lw	s5,20(sp)
     2d8:	01012b03          	lw	s6,16(sp)
     2dc:	00c12b83          	lw	s7,12(sp)
     2e0:	00812c03          	lw	s8,8(sp)
     2e4:	00412c83          	lw	s9,4(sp)
     2e8:	00012d03          	lw	s10,0(sp)
     2ec:	03010113          	addi	sp,sp,48
     2f0:	00008067          	ret

000002f4 <draw_progress_bar>:
     2f4:	0eb05063          	blez	a1,3d4 <draw_progress_bar+0xe0>
     2f8:	00351793          	slli	a5,a0,0x3
     2fc:	40a787b3          	sub	a5,a5,a0
     300:	00279793          	slli	a5,a5,0x2
     304:	40a78533          	sub	a0,a5,a0
     308:	ff010113          	addi	sp,sp,-16
     30c:	00251513          	slli	a0,a0,0x2
     310:	00812423          	sw	s0,8(sp)
     314:	00112623          	sw	ra,12(sp)
     318:	00912223          	sw	s1,4(sp)
     31c:	00002097          	auipc	ra,0x2
     320:	d8c080e7          	jalr	-628(ra) # 20a8 <__divsi3>
     324:	06c00793          	li	a5,108
     328:	00050413          	mv	s0,a0
     32c:	06a7d263          	bge	a5,a0,390 <draw_progress_bar+0x9c>
     330:	06c00413          	li	s0,108
     334:	000064b7          	lui	s1,0x6
     338:	dd04a503          	lw	a0,-560(s1) # 5dd0 <g_last_progress>
     33c:	06055063          	bgez	a0,39c <draw_progress_bar+0xa8>
     340:	00000713          	li	a4,0
     344:	00300693          	li	a3,3
     348:	06c00613          	li	a2,108
     34c:	06200593          	li	a1,98
     350:	00a00513          	li	a0,10
     354:	00000097          	auipc	ra,0x0
     358:	ec4080e7          	jalr	-316(ra) # 218 <fill_rect_gray>
     35c:	0ff00713          	li	a4,255
     360:	00300693          	li	a3,3
     364:	00040613          	mv	a2,s0
     368:	06200593          	li	a1,98
     36c:	00a00513          	li	a0,10
     370:	00000097          	auipc	ra,0x0
     374:	ea8080e7          	jalr	-344(ra) # 218 <fill_rect_gray>
     378:	dc84a823          	sw	s0,-560(s1)
     37c:	00c12083          	lw	ra,12(sp)
     380:	00812403          	lw	s0,8(sp)
     384:	00412483          	lw	s1,4(sp)
     388:	01010113          	addi	sp,sp,16
     38c:	00008067          	ret
     390:	fa0552e3          	bgez	a0,334 <draw_progress_bar+0x40>
     394:	00000413          	li	s0,0
     398:	f9dff06f          	j	334 <draw_progress_bar+0x40>
     39c:	fc850ee3          	beq	a0,s0,378 <draw_progress_bar+0x84>
     3a0:	00855e63          	bge	a0,s0,3bc <draw_progress_bar+0xc8>
     3a4:	40a40633          	sub	a2,s0,a0
     3a8:	0ff00713          	li	a4,255
     3ac:	00300693          	li	a3,3
     3b0:	06200593          	li	a1,98
     3b4:	00a50513          	addi	a0,a0,10
     3b8:	fb9ff06f          	j	370 <draw_progress_bar+0x7c>
     3bc:	40850633          	sub	a2,a0,s0
     3c0:	00000713          	li	a4,0
     3c4:	00300693          	li	a3,3
     3c8:	06200593          	li	a1,98
     3cc:	00a40513          	addi	a0,s0,10
     3d0:	fa1ff06f          	j	370 <draw_progress_bar+0x7c>
     3d4:	00008067          	ret

000003d8 <update_ui>:
     3d8:	fe010113          	addi	sp,sp,-32
     3dc:	00812c23          	sw	s0,24(sp)
     3e0:	00912a23          	sw	s1,20(sp)
     3e4:	01212823          	sw	s2,16(sp)
     3e8:	01312623          	sw	s3,12(sp)
     3ec:	00050493          	mv	s1,a0
     3f0:	00058913          	mv	s2,a1
     3f4:	00060993          	mv	s3,a2
     3f8:	00068413          	mv	s0,a3
     3fc:	08000613          	li	a2,128
     400:	03000693          	li	a3,48
     404:	00000713          	li	a4,0
     408:	05000593          	li	a1,80
     40c:	00000513          	li	a0,0
     410:	00112e23          	sw	ra,28(sp)
     414:	00000097          	auipc	ra,0x0
     418:	e04080e7          	jalr	-508(ra) # 218 <fill_rect_gray>
     41c:	000067b7          	lui	a5,0x6
     420:	fff00713          	li	a4,-1
     424:	00000593          	li	a1,0
     428:	0ff00513          	li	a0,255
     42c:	dce7a823          	sw	a4,-560(a5) # 5dd0 <g_last_progress>
     430:	00002097          	auipc	ra,0x2
     434:	050080e7          	jalr	80(ra) # 2480 <display_set_front_back_color>
     438:	00000593          	li	a1,0
     43c:	00000513          	li	a0,0
     440:	00002097          	auipc	ra,0x2
     444:	02c080e7          	jalr	44(ra) # 246c <display_set_cursor>
     448:	00006537          	lui	a0,0x6
     44c:	e6c50513          	addi	a0,a0,-404 # 5e6c <LEDS+0x4c>
     450:	00002097          	auipc	ra,0x2
     454:	320080e7          	jalr	800(ra) # 2770 <printf>
     458:	00000593          	li	a1,0
     45c:	0ff00513          	li	a0,255
     460:	00002097          	auipc	ra,0x2
     464:	020080e7          	jalr	32(ra) # 2480 <display_set_front_back_color>
     468:	05400593          	li	a1,84
     46c:	00000513          	li	a0,0
     470:	00002097          	auipc	ra,0x2
     474:	ffc080e7          	jalr	-4(ra) # 246c <display_set_cursor>
     478:	00048593          	mv	a1,s1
     47c:	000064b7          	lui	s1,0x6
     480:	e7448513          	addi	a0,s1,-396 # 5e74 <LEDS+0x54>
     484:	00002097          	auipc	ra,0x2
     488:	2ec080e7          	jalr	748(ra) # 2770 <printf>
     48c:	00098593          	mv	a1,s3
     490:	00090513          	mv	a0,s2
     494:	00000097          	auipc	ra,0x0
     498:	e60080e7          	jalr	-416(ra) # 2f4 <draw_progress_bar>
     49c:	00000593          	li	a1,0
     4a0:	0ff00513          	li	a0,255
     4a4:	00002097          	auipc	ra,0x2
     4a8:	fdc080e7          	jalr	-36(ra) # 2480 <display_set_front_back_color>
     4ac:	0e040663          	beqz	s0,598 <update_ui+0x1c0>
     4b0:	00006437          	lui	s0,0x6
     4b4:	e4440413          	addi	s0,s0,-444 # 5e44 <LEDS+0x24>
     4b8:	00000793          	li	a5,0
     4bc:	00f40733          	add	a4,s0,a5
     4c0:	00074703          	lbu	a4,0(a4)
     4c4:	0e071063          	bnez	a4,5a4 <update_ui+0x1cc>
     4c8:	00279713          	slli	a4,a5,0x2
     4cc:	00f70733          	add	a4,a4,a5
     4d0:	08000793          	li	a5,128
     4d4:	40e787b3          	sub	a5,a5,a4
     4d8:	fff00713          	li	a4,-1
     4dc:	00000513          	li	a0,0
     4e0:	00e7c863          	blt	a5,a4,4f0 <update_ui+0x118>
     4e4:	01f7d513          	srli	a0,a5,0x1f
     4e8:	00f50533          	add	a0,a0,a5
     4ec:	40155513          	srai	a0,a0,0x1
     4f0:	06c00593          	li	a1,108
     4f4:	00002097          	auipc	ra,0x2
     4f8:	f78080e7          	jalr	-136(ra) # 246c <display_set_cursor>
     4fc:	00040593          	mv	a1,s0
     500:	e7448513          	addi	a0,s1,-396
     504:	00002097          	auipc	ra,0x2
     508:	26c080e7          	jalr	620(ra) # 2770 <printf>
     50c:	00000593          	li	a1,0
     510:	0ff00513          	li	a0,255
     514:	00002097          	auipc	ra,0x2
     518:	f6c080e7          	jalr	-148(ra) # 2480 <display_set_front_back_color>
     51c:	00006437          	lui	s0,0x6
     520:	00000793          	li	a5,0
     524:	e7840693          	addi	a3,s0,-392 # 5e78 <LEDS+0x58>
     528:	00d78733          	add	a4,a5,a3
     52c:	00074703          	lbu	a4,0(a4)
     530:	06071e63          	bnez	a4,5ac <update_ui+0x1d4>
     534:	00279713          	slli	a4,a5,0x2
     538:	00f70733          	add	a4,a4,a5
     53c:	08000793          	li	a5,128
     540:	40e787b3          	sub	a5,a5,a4
     544:	fff00713          	li	a4,-1
     548:	00000513          	li	a0,0
     54c:	00e7c863          	blt	a5,a4,55c <update_ui+0x184>
     550:	01f7d513          	srli	a0,a5,0x1f
     554:	00f50533          	add	a0,a0,a5
     558:	40155513          	srai	a0,a0,0x1
     55c:	07400593          	li	a1,116
     560:	00002097          	auipc	ra,0x2
     564:	f0c080e7          	jalr	-244(ra) # 246c <display_set_cursor>
     568:	e7840593          	addi	a1,s0,-392
     56c:	e7448513          	addi	a0,s1,-396
     570:	00002097          	auipc	ra,0x2
     574:	200080e7          	jalr	512(ra) # 2770 <printf>
     578:	01812403          	lw	s0,24(sp)
     57c:	01c12083          	lw	ra,28(sp)
     580:	01412483          	lw	s1,20(sp)
     584:	01012903          	lw	s2,16(sp)
     588:	00c12983          	lw	s3,12(sp)
     58c:	02010113          	addi	sp,sp,32
     590:	00002317          	auipc	t1,0x2
     594:	07430067          	jr	116(t1) # 2604 <display_refresh>
     598:	00006437          	lui	s0,0x6
     59c:	e5840413          	addi	s0,s0,-424 # 5e58 <LEDS+0x38>
     5a0:	f19ff06f          	j	4b8 <update_ui+0xe0>
     5a4:	00178793          	addi	a5,a5,1
     5a8:	f15ff06f          	j	4bc <update_ui+0xe4>
     5ac:	00178793          	addi	a5,a5,1
     5b0:	f79ff06f          	j	528 <update_ui+0x150>

000005b4 <file_size>:
     5b4:	ff010113          	addi	sp,sp,-16
     5b8:	00200613          	li	a2,2
     5bc:	00000593          	li	a1,0
     5c0:	00112623          	sw	ra,12(sp)
     5c4:	00812423          	sw	s0,8(sp)
     5c8:	00912223          	sw	s1,4(sp)
     5cc:	00050413          	mv	s0,a0
     5d0:	00002097          	auipc	ra,0x2
     5d4:	7d8080e7          	jalr	2008(ra) # 2da8 <fl_fseek>
     5d8:	00040513          	mv	a0,s0
     5dc:	00003097          	auipc	ra,0x3
     5e0:	940080e7          	jalr	-1728(ra) # 2f1c <fl_ftell>
     5e4:	00050493          	mv	s1,a0
     5e8:	00000613          	li	a2,0
     5ec:	00040513          	mv	a0,s0
     5f0:	00000593          	li	a1,0
     5f4:	00002097          	auipc	ra,0x2
     5f8:	7b4080e7          	jalr	1972(ra) # 2da8 <fl_fseek>
     5fc:	00c12083          	lw	ra,12(sp)
     600:	00812403          	lw	s0,8(sp)
     604:	00048513          	mv	a0,s1
     608:	00412483          	lw	s1,4(sp)
     60c:	01010113          	addi	sp,sp,16
     610:	00008067          	ret

00000614 <render_image_rgb_row.part.0>:
     614:	000017b7          	lui	a5,0x1
     618:	fc010113          	addi	sp,sp,-64
     61c:	c0078793          	addi	a5,a5,-1024 # c00 <play_file+0x378>
     620:	03312623          	sw	s3,44(sp)
     624:	00f589b3          	add	s3,a1,a5
     628:	000067b7          	lui	a5,0x6
     62c:	03212823          	sw	s2,48(sp)
     630:	e087a903          	lw	s2,-504(a5) # 5e08 <RGBSEL>
     634:	02912a23          	sw	s1,52(sp)
     638:	000034b7          	lui	s1,0x3
     63c:	02812c23          	sw	s0,56(sp)
     640:	03412423          	sw	s4,40(sp)
     644:	03512223          	sw	s5,36(sp)
     648:	03612023          	sw	s6,32(sp)
     64c:	01712e23          	sw	s7,28(sp)
     650:	02112e23          	sw	ra,60(sp)
     654:	01812c23          	sw	s8,24(sp)
     658:	01912a23          	sw	s9,20(sp)
     65c:	01a12823          	sw	s10,16(sp)
     660:	01b12623          	sw	s11,12(sp)
     664:	00050a13          	mv	s4,a0
     668:	00060a93          	mv	s5,a2
     66c:	00000413          	li	s0,0
     670:	00100b93          	li	s7,1
     674:	00200b13          	li	s6,2
     678:	80048493          	addi	s1,s1,-2048 # 2800 <printf+0x90>
     67c:	05000593          	li	a1,80
     680:	00040513          	mv	a0,s0
     684:	00002097          	auipc	ra,0x2
     688:	a24080e7          	jalr	-1500(ra) # 20a8 <__divsi3>
     68c:	000a8593          	mv	a1,s5
     690:	00002097          	auipc	ra,0x2
     694:	210080e7          	jalr	528(ra) # 28a0 <__mulsi3>
     698:	00aa07b3          	add	a5,s4,a0
     69c:	0007cd83          	lbu	s11,0(a5)
     6a0:	0027cd03          	lbu	s10,2(a5)
     6a4:	0017cc83          	lbu	s9,1(a5)
     6a8:	00092023          	sw	zero,0(s2)
     6ac:	00002097          	auipc	ra,0x2
     6b0:	db4080e7          	jalr	-588(ra) # 2460 <display_framebuffer>
     6b4:	00898c33          	add	s8,s3,s0
     6b8:	01850533          	add	a0,a0,s8
     6bc:	01b50023          	sb	s11,0(a0)
     6c0:	01792023          	sw	s7,0(s2)
     6c4:	00002097          	auipc	ra,0x2
     6c8:	d9c080e7          	jalr	-612(ra) # 2460 <display_framebuffer>
     6cc:	01850533          	add	a0,a0,s8
     6d0:	01a50023          	sb	s10,0(a0)
     6d4:	01692023          	sw	s6,0(s2)
     6d8:	00002097          	auipc	ra,0x2
     6dc:	d88080e7          	jalr	-632(ra) # 2460 <display_framebuffer>
     6e0:	018507b3          	add	a5,a0,s8
     6e4:	01978023          	sb	s9,0(a5)
     6e8:	08040413          	addi	s0,s0,128
     6ec:	f89418e3          	bne	s0,s1,67c <render_image_rgb_row.part.0+0x68>
     6f0:	03c12083          	lw	ra,60(sp)
     6f4:	03812403          	lw	s0,56(sp)
     6f8:	03412483          	lw	s1,52(sp)
     6fc:	03012903          	lw	s2,48(sp)
     700:	02c12983          	lw	s3,44(sp)
     704:	02812a03          	lw	s4,40(sp)
     708:	02412a83          	lw	s5,36(sp)
     70c:	02012b03          	lw	s6,32(sp)
     710:	01c12b83          	lw	s7,28(sp)
     714:	01812c03          	lw	s8,24(sp)
     718:	01412c83          	lw	s9,20(sp)
     71c:	01012d03          	lw	s10,16(sp)
     720:	00c12d83          	lw	s11,12(sp)
     724:	04010113          	addi	sp,sp,64
     728:	00008067          	ret

0000072c <scan_files>:
     72c:	ec010113          	addi	sp,sp,-320
     730:	00006537          	lui	a0,0x6
     734:	13212823          	sw	s2,304(sp)
     738:	00410593          	addi	a1,sp,4
     73c:	00006937          	lui	s2,0x6
     740:	e8c50513          	addi	a0,a0,-372 # 5e8c <LEDS+0x6c>
     744:	12112e23          	sw	ra,316(sp)
     748:	12812c23          	sw	s0,312(sp)
     74c:	12912a23          	sw	s1,308(sp)
     750:	13312623          	sw	s3,300(sp)
     754:	13412423          	sw	s4,296(sp)
     758:	13512223          	sw	s5,292(sp)
     75c:	13612023          	sw	s6,288(sp)
     760:	20092623          	sw	zero,524(s2) # 620c <file_count>
     764:	00004097          	auipc	ra,0x4
     768:	c34080e7          	jalr	-972(ra) # 4398 <fl_opendir>
     76c:	02050e63          	beqz	a0,7a8 <scan_files+0x7c>
     770:	01f00993          	li	s3,31
     774:	00006a37          	lui	s4,0x6
     778:	00300a93          	li	s5,3
     77c:	02e00b13          	li	s6,46
     780:	01010593          	addi	a1,sp,16
     784:	00410513          	addi	a0,sp,4
     788:	00004097          	auipc	ra,0x4
     78c:	2d4080e7          	jalr	724(ra) # 4a5c <fl_readdir>
     790:	00051663          	bnez	a0,79c <scan_files+0x70>
     794:	20c92403          	lw	s0,524(s2)
     798:	0289dc63          	bge	s3,s0,7d0 <scan_files+0xa4>
     79c:	00410513          	addi	a0,sp,4
     7a0:	00002097          	auipc	ra,0x2
     7a4:	7a4080e7          	jalr	1956(ra) # 2f44 <fl_closedir>
     7a8:	13c12083          	lw	ra,316(sp)
     7ac:	13812403          	lw	s0,312(sp)
     7b0:	13412483          	lw	s1,308(sp)
     7b4:	13012903          	lw	s2,304(sp)
     7b8:	12c12983          	lw	s3,300(sp)
     7bc:	12812a03          	lw	s4,296(sp)
     7c0:	12412a83          	lw	s5,292(sp)
     7c4:	12012b03          	lw	s6,288(sp)
     7c8:	14010113          	addi	sp,sp,320
     7cc:	00008067          	ret
     7d0:	11414783          	lbu	a5,276(sp)
     7d4:	fa0796e3          	bnez	a5,780 <scan_files+0x54>
     7d8:	01010713          	addi	a4,sp,16
     7dc:	e94a0693          	addi	a3,s4,-364 # 5e94 <LEDS+0x74>
     7e0:	00074603          	lbu	a2,0(a4)
     7e4:	0006c783          	lbu	a5,0(a3)
     7e8:	08060c63          	beqz	a2,880 <scan_files+0x154>
     7ec:	00078863          	beqz	a5,7fc <scan_files+0xd0>
     7f0:	00170713          	addi	a4,a4,1
     7f4:	00168693          	addi	a3,a3,1
     7f8:	fef604e3          	beq	a2,a5,7e0 <scan_files+0xb4>
     7fc:	01010513          	addi	a0,sp,16
     800:	00002097          	auipc	ra,0x2
     804:	99c080e7          	jalr	-1636(ra) # 219c <strlen>
     808:	f6aadce3          	bge	s5,a0,780 <scan_files+0x54>
     80c:	12050793          	addi	a5,a0,288
     810:	00278533          	add	a0,a5,sp
     814:	eec54783          	lbu	a5,-276(a0)
     818:	f76794e3          	bne	a5,s6,780 <scan_files+0x54>
     81c:	eed54783          	lbu	a5,-275(a0)
     820:	05200713          	li	a4,82
     824:	0df7f793          	andi	a5,a5,223
     828:	f4e79ce3          	bne	a5,a4,780 <scan_files+0x54>
     82c:	eee54783          	lbu	a5,-274(a0)
     830:	04100713          	li	a4,65
     834:	0df7f793          	andi	a5,a5,223
     838:	f4e794e3          	bne	a5,a4,780 <scan_files+0x54>
     83c:	eef54783          	lbu	a5,-273(a0)
     840:	05700713          	li	a4,87
     844:	0df7f793          	andi	a5,a5,223
     848:	f2e79ce3          	bne	a5,a4,780 <scan_files+0x54>
     84c:	000067b7          	lui	a5,0x6
     850:	00641493          	slli	s1,s0,0x6
     854:	23c78793          	addi	a5,a5,572 # 623c <files>
     858:	00f484b3          	add	s1,s1,a5
     85c:	03f00613          	li	a2,63
     860:	01010593          	addi	a1,sp,16
     864:	00048513          	mv	a0,s1
     868:	00140413          	addi	s0,s0,1
     86c:	00002097          	auipc	ra,0x2
     870:	990080e7          	jalr	-1648(ra) # 21fc <strncpy>
     874:	02048fa3          	sb	zero,63(s1)
     878:	20892623          	sw	s0,524(s2)
     87c:	f05ff06f          	j	780 <scan_files+0x54>
     880:	f00780e3          	beqz	a5,780 <scan_files+0x54>
     884:	f79ff06f          	j	7fc <scan_files+0xd0>

00000888 <play_file>:
     888:	737577b7          	lui	a5,0x73757
     88c:	ce010113          	addi	sp,sp,-800
     890:	d2f78793          	addi	a5,a5,-721 # 73756d2f <__stacktop+0x73746d2f>
     894:	04f12423          	sw	a5,72(sp)
     898:	000067b7          	lui	a5,0x6
     89c:	36978793          	addi	a5,a5,873 # 6369 <files+0x12d>
     8a0:	04f11623          	sh	a5,76(sp)
     8a4:	02f00793          	li	a5,47
     8a8:	30812c23          	sw	s0,792(sp)
     8ac:	04f10723          	sb	a5,78(sp)
     8b0:	30112e23          	sw	ra,796(sp)
     8b4:	30912a23          	sw	s1,788(sp)
     8b8:	31212823          	sw	s2,784(sp)
     8bc:	31312623          	sw	s3,780(sp)
     8c0:	31412423          	sw	s4,776(sp)
     8c4:	31512223          	sw	s5,772(sp)
     8c8:	31612023          	sw	s6,768(sp)
     8cc:	2f712e23          	sw	s7,764(sp)
     8d0:	2f812c23          	sw	s8,760(sp)
     8d4:	2f912a23          	sw	s9,756(sp)
     8d8:	2fa12823          	sw	s10,752(sp)
     8dc:	2fb12623          	sw	s11,748(sp)
     8e0:	00050413          	mv	s0,a0
     8e4:	00700793          	li	a5,7
     8e8:	04900693          	li	a3,73
     8ec:	00f40733          	add	a4,s0,a5
     8f0:	ff974703          	lbu	a4,-7(a4)
     8f4:	00070663          	beqz	a4,900 <play_file+0x78>
     8f8:	2ed79e63          	bne	a5,a3,bf4 <play_file+0x36c>
     8fc:	04900793          	li	a5,73
     900:	02010713          	addi	a4,sp,32
     904:	2c078793          	addi	a5,a5,704
     908:	000064b7          	lui	s1,0x6
     90c:	00e787b3          	add	a5,a5,a4
     910:	ea448593          	addi	a1,s1,-348 # 5ea4 <LEDS+0x84>
     914:	04810513          	addi	a0,sp,72
     918:	d6078423          	sb	zero,-664(a5)
     91c:	00005097          	auipc	ra,0x5
     920:	0e0080e7          	jalr	224(ra) # 59fc <fl_fopen>
     924:	00a12423          	sw	a0,8(sp)
     928:	00000793          	li	a5,0
     92c:	2c050e63          	beqz	a0,c08 <play_file+0x380>
     930:	01900693          	li	a3,25
     934:	02e00613          	li	a2,46
     938:	05f00593          	li	a1,95
     93c:	00f40733          	add	a4,s0,a5
     940:	00074703          	lbu	a4,0(a4)
     944:	00070463          	beqz	a4,94c <play_file+0xc4>
     948:	2ed79a63          	bne	a5,a3,c3c <play_file+0x3b4>
     94c:	02010713          	addi	a4,sp,32
     950:	2c078793          	addi	a5,a5,704
     954:	00e787b3          	add	a5,a5,a4
     958:	d4078623          	sb	zero,-692(a5)
     95c:	000067b7          	lui	a5,0x6
     960:	2087a703          	lw	a4,520(a5) # 6208 <g_skip_image>
     964:	2007a423          	sw	zero,520(a5)
     968:	14071263          	bnez	a4,aac <play_file+0x224>
     96c:	00000097          	auipc	ra,0x0
     970:	844080e7          	jalr	-1980(ra) # 1b0 <clear_screen>
     974:	fffff097          	auipc	ra,0xfffff
     978:	6f8080e7          	jalr	1784(ra) # 6c <show_hourglass>
     97c:	676d77b7          	lui	a5,0x676d7
     980:	92f78793          	addi	a5,a5,-1745 # 676d692f <__stacktop+0x676c692f>
     984:	08f12a23          	sw	a5,148(sp)
     988:	02f00793          	li	a5,47
     98c:	08f10c23          	sb	a5,152(sp)
     990:	04400693          	li	a3,68
     994:	00500793          	li	a5,5
     998:	00f40733          	add	a4,s0,a5
     99c:	ffb74703          	lbu	a4,-5(a4)
     9a0:	00070663          	beqz	a4,9ac <play_file+0x124>
     9a4:	2ad79c63          	bne	a5,a3,c5c <play_file+0x3d4>
     9a8:	04400793          	li	a5,68
     9ac:	02010713          	addi	a4,sp,32
     9b0:	2c078793          	addi	a5,a5,704
     9b4:	00e787b3          	add	a5,a5,a4
     9b8:	05f00713          	li	a4,95
     9bc:	dae78823          	sb	a4,-592(a5)
     9c0:	06900713          	li	a4,105
     9c4:	dae788a3          	sb	a4,-591(a5)
     9c8:	06d00713          	li	a4,109
     9cc:	dae78923          	sb	a4,-590(a5)
     9d0:	06700713          	li	a4,103
     9d4:	dae789a3          	sb	a4,-589(a5)
     9d8:	02e00713          	li	a4,46
     9dc:	dae78a23          	sb	a4,-588(a5)
     9e0:	07200713          	li	a4,114
     9e4:	dae78aa3          	sb	a4,-587(a5)
     9e8:	06100713          	li	a4,97
     9ec:	dae78b23          	sb	a4,-586(a5)
     9f0:	ea448593          	addi	a1,s1,-348
     9f4:	07700713          	li	a4,119
     9f8:	09410513          	addi	a0,sp,148
     9fc:	dae78ba3          	sb	a4,-585(a5)
     a00:	da078c23          	sb	zero,-584(a5)
     a04:	00005097          	auipc	ra,0x5
     a08:	ff8080e7          	jalr	-8(ra) # 59fc <fl_fopen>
     a0c:	00050413          	mv	s0,a0
     a10:	02051063          	bnez	a0,a30 <play_file+0x1a8>
     a14:	00006537          	lui	a0,0x6
     a18:	ea448593          	addi	a1,s1,-348
     a1c:	eb850513          	addi	a0,a0,-328 # 5eb8 <LEDS+0x98>
     a20:	00005097          	auipc	ra,0x5
     a24:	fdc080e7          	jalr	-36(ra) # 59fc <fl_fopen>
     a28:	00050413          	mv	s0,a0
     a2c:	08050063          	beqz	a0,aac <play_file+0x224>
     a30:	00040513          	mv	a0,s0
     a34:	00000097          	auipc	ra,0x0
     a38:	b80080e7          	jalr	-1152(ra) # 5b4 <file_size>
     a3c:	000107b7          	lui	a5,0x10
     a40:	22f54c63          	blt	a0,a5,c78 <play_file+0x3f0>
     a44:	000039b7          	lui	s3,0x3
     a48:	00000493          	li	s1,0
     a4c:	fff00a93          	li	s5,-1
     a50:	80098993          	addi	s3,s3,-2048 # 2800 <printf+0x90>
     a54:	00040693          	mv	a3,s0
     a58:	20000613          	li	a2,512
     a5c:	00100593          	li	a1,1
     a60:	0e010513          	addi	a0,sp,224
     a64:	00005097          	auipc	ra,0x5
     a68:	9c0080e7          	jalr	-1600(ra) # 5424 <fl_fread>
     a6c:	20000793          	li	a5,512
     a70:	02f51463          	bne	a0,a5,a98 <play_file+0x210>
     a74:	4074da13          	srai	s4,s1,0x7
     a78:	015a0c63          	beq	s4,s5,a90 <play_file+0x208>
     a7c:	00400613          	li	a2,4
     a80:	000a0593          	mv	a1,s4
     a84:	0e010513          	addi	a0,sp,224
     a88:	00000097          	auipc	ra,0x0
     a8c:	b8c080e7          	jalr	-1140(ra) # 614 <render_image_rgb_row.part.0>
     a90:	05048493          	addi	s1,s1,80
     a94:	1d349e63          	bne	s1,s3,c70 <play_file+0x3e8>
     a98:	00040513          	mv	a0,s0
     a9c:	00005097          	auipc	ra,0x5
     aa0:	8a8080e7          	jalr	-1880(ra) # 5344 <fl_fclose>
     aa4:	00002097          	auipc	ra,0x2
     aa8:	b60080e7          	jalr	-1184(ra) # 2604 <display_refresh>
     aac:	fffff097          	auipc	ra,0xfffff
     ab0:	68c080e7          	jalr	1676(ra) # 138 <clear_audio>
     ab4:	000067b7          	lui	a5,0x6
     ab8:	000064b7          	lui	s1,0x6
     abc:	e0c7ab83          	lw	s7,-500(a5) # 5e0c <VOLUME>
     ac0:	dd44a503          	lw	a0,-556(s1) # 5dd4 <g_volume>
     ac4:	00004db7          	lui	s11,0x4
     ac8:	00000d13          	li	s10,0
     acc:	00aba023          	sw	a0,0(s7)
     ad0:	fffff097          	auipc	ra,0xfffff
     ad4:	54c080e7          	jalr	1356(ra) # 1c <set_volume_leds>
     ad8:	00812503          	lw	a0,8(sp)
     adc:	00000b13          	li	s6,0
     ae0:	00000a93          	li	s5,0
     ae4:	00000097          	auipc	ra,0x0
     ae8:	ad0080e7          	jalr	-1328(ra) # 5b4 <file_size>
     aec:	00a12623          	sw	a0,12(sp)
     af0:	00050613          	mv	a2,a0
     af4:	00000693          	li	a3,0
     af8:	00000593          	li	a1,0
     afc:	02c10513          	addi	a0,sp,44
     b00:	00000097          	auipc	ra,0x0
     b04:	8d8080e7          	jalr	-1832(ra) # 3d8 <update_ui>
     b08:	000067b7          	lui	a5,0x6
     b0c:	e107a783          	lw	a5,-496(a5) # 5e10 <BUTTONS>
     b10:	00000913          	li	s2,0
     b14:	00012a23          	sw	zero,20(sp)
     b18:	0007a403          	lw	s0,0(a5)
     b1c:	00f12e23          	sw	a5,28(sp)
     b20:	000067b7          	lui	a5,0x6
     b24:	e007a783          	lw	a5,-512(a5) # 5e00 <AUDIO>
     b28:	07e47413          	andi	s0,s0,126
     b2c:	00000a13          	li	s4,0
     b30:	00000993          	li	s3,0
     b34:	00f12823          	sw	a5,16(sp)
     b38:	e7fd8d93          	addi	s11,s11,-385 # 3e7f <fatfs_find_next_cluster+0x2b>
     b3c:	01012783          	lw	a5,16(sp)
     b40:	0007ac03          	lw	s8,0(a5)
     b44:	240a0a63          	beqz	s4,d98 <play_file+0x510>
     b48:	00000793          	li	a5,0
     b4c:	f8000613          	li	a2,-128
     b50:	20000713          	li	a4,512
     b54:	00fc06b3          	add	a3,s8,a5
     b58:	00c68023          	sb	a2,0(a3)
     b5c:	00178793          	addi	a5,a5,1
     b60:	fee79ae3          	bne	a5,a4,b54 <play_file+0x2cc>
     b64:	01012783          	lw	a5,16(sp)
     b68:	0007a783          	lw	a5,0(a5)
     b6c:	26fc0463          	beq	s8,a5,dd4 <play_file+0x54c>
     b70:	00847c13          	andi	s8,s0,8
     b74:	400c0e63          	beqz	s8,f90 <play_file+0x708>
     b78:	01412783          	lw	a5,20(sp)
     b7c:	20078c13          	addi	s8,a5,512
     b80:	000017b7          	lui	a5,0x1
     b84:	a6978793          	addi	a5,a5,-1431 # a69 <play_file+0x1e1>
     b88:	0187da63          	bge	a5,s8,b9c <play_file+0x314>
     b8c:	200a8a93          	addi	s5,s5,512
     b90:	31f00c93          	li	s9,799
     b94:	00700713          	li	a4,7
     b98:	3d5cc863          	blt	s9,s5,f68 <play_file+0x6e0>
     b9c:	01047c93          	andi	s9,s0,16
     ba0:	420c8063          	beqz	s9,fc0 <play_file+0x738>
     ba4:	000017b7          	lui	a5,0x1
     ba8:	20090c93          	addi	s9,s2,512
     bac:	a6978793          	addi	a5,a5,-1431 # a69 <play_file+0x1e1>
     bb0:	0197d863          	bge	a5,s9,bc0 <play_file+0x338>
     bb4:	200b0b13          	addi	s6,s6,512
     bb8:	31f00713          	li	a4,799
     bbc:	3d674e63          	blt	a4,s6,f98 <play_file+0x710>
     bc0:	001d0d13          	addi	s10,s10,1
     bc4:	020a1263          	bnez	s4,be8 <play_file+0x360>
     bc8:	003d7793          	andi	a5,s10,3
     bcc:	00079e63          	bnez	a5,be8 <play_file+0x360>
     bd0:	00c12583          	lw	a1,12(sp)
     bd4:	00098513          	mv	a0,s3
     bd8:	fffff097          	auipc	ra,0xfffff
     bdc:	71c080e7          	jalr	1820(ra) # 2f4 <draw_progress_bar>
     be0:	00002097          	auipc	ra,0x2
     be4:	a24080e7          	jalr	-1500(ra) # 2604 <display_refresh>
     be8:	000c8913          	mv	s2,s9
     bec:	01812a23          	sw	s8,20(sp)
     bf0:	f4dff06f          	j	b3c <play_file+0x2b4>
     bf4:	04810613          	addi	a2,sp,72
     bf8:	00f60633          	add	a2,a2,a5
     bfc:	00e60023          	sb	a4,0(a2) # 4000 <fatfs_sector_reader+0x9c>
     c00:	00178793          	addi	a5,a5,1
     c04:	ce9ff06f          	j	8ec <play_file+0x64>
     c08:	00000593          	li	a1,0
     c0c:	0ff00513          	li	a0,255
     c10:	00002097          	auipc	ra,0x2
     c14:	870080e7          	jalr	-1936(ra) # 2480 <display_set_front_back_color>
     c18:	00006537          	lui	a0,0x6
     c1c:	00040593          	mv	a1,s0
     c20:	ea850513          	addi	a0,a0,-344 # 5ea8 <LEDS+0x88>
     c24:	00002097          	auipc	ra,0x2
     c28:	b4c080e7          	jalr	-1204(ra) # 2770 <printf>
     c2c:	00002097          	auipc	ra,0x2
     c30:	9d8080e7          	jalr	-1576(ra) # 2604 <display_refresh>
     c34:	00000513          	li	a0,0
     c38:	2140006f          	j	e4c <play_file+0x5c4>
     c3c:	d0c708e3          	beq	a4,a2,94c <play_file+0xc4>
     c40:	00b71463          	bne	a4,a1,c48 <play_file+0x3c0>
     c44:	02000713          	li	a4,32
     c48:	02c10513          	addi	a0,sp,44
     c4c:	00f50533          	add	a0,a0,a5
     c50:	00e50023          	sb	a4,0(a0)
     c54:	00178793          	addi	a5,a5,1
     c58:	ce5ff06f          	j	93c <play_file+0xb4>
     c5c:	09410613          	addi	a2,sp,148
     c60:	00f60633          	add	a2,a2,a5
     c64:	00e60023          	sb	a4,0(a2)
     c68:	00178793          	addi	a5,a5,1
     c6c:	d2dff06f          	j	998 <play_file+0x110>
     c70:	000a0a93          	mv	s5,s4
     c74:	de1ff06f          	j	a54 <play_file+0x1cc>
     c78:	0000c7b7          	lui	a5,0xc
     c7c:	06f54063          	blt	a0,a5,cdc <play_file+0x454>
     c80:	000039b7          	lui	s3,0x3
     c84:	00000493          	li	s1,0
     c88:	fff00a93          	li	s5,-1
     c8c:	80098993          	addi	s3,s3,-2048 # 2800 <printf+0x90>
     c90:	00040693          	mv	a3,s0
     c94:	18000613          	li	a2,384
     c98:	00100593          	li	a1,1
     c9c:	0e010513          	addi	a0,sp,224
     ca0:	00004097          	auipc	ra,0x4
     ca4:	784080e7          	jalr	1924(ra) # 5424 <fl_fread>
     ca8:	18000793          	li	a5,384
     cac:	def516e3          	bne	a0,a5,a98 <play_file+0x210>
     cb0:	4074da13          	srai	s4,s1,0x7
     cb4:	014a8c63          	beq	s5,s4,ccc <play_file+0x444>
     cb8:	00300613          	li	a2,3
     cbc:	000a0593          	mv	a1,s4
     cc0:	0e010513          	addi	a0,sp,224
     cc4:	00000097          	auipc	ra,0x0
     cc8:	950080e7          	jalr	-1712(ra) # 614 <render_image_rgb_row.part.0>
     ccc:	05048493          	addi	s1,s1,80
     cd0:	dd3484e3          	beq	s1,s3,a98 <play_file+0x210>
     cd4:	000a0a93          	mv	s5,s4
     cd8:	fb9ff06f          	j	c90 <play_file+0x408>
     cdc:	000047b7          	lui	a5,0x4
     ce0:	daf54ce3          	blt	a0,a5,a98 <play_file+0x210>
     ce4:	000067b7          	lui	a5,0x6
     ce8:	e087ac03          	lw	s8,-504(a5) # 5e08 <RGBSEL>
     cec:	00001bb7          	lui	s7,0x1
     cf0:	00003a37          	lui	s4,0x3
     cf4:	00000993          	li	s3,0
     cf8:	fff00493          	li	s1,-1
     cfc:	c00b8b93          	addi	s7,s7,-1024 # c00 <play_file+0x378>
     d00:	00300c93          	li	s9,3
     d04:	800a0a13          	addi	s4,s4,-2048 # 2800 <printf+0x90>
     d08:	00040693          	mv	a3,s0
     d0c:	08000613          	li	a2,128
     d10:	00100593          	li	a1,1
     d14:	0e010513          	addi	a0,sp,224
     d18:	00004097          	auipc	ra,0x4
     d1c:	70c080e7          	jalr	1804(ra) # 5424 <fl_fread>
     d20:	08000793          	li	a5,128
     d24:	d6f51ae3          	bne	a0,a5,a98 <play_file+0x210>
     d28:	4079db13          	srai	s6,s3,0x7
     d2c:	01649a63          	bne	s1,s6,d40 <play_file+0x4b8>
     d30:	05098993          	addi	s3,s3,80
     d34:	d74982e3          	beq	s3,s4,a98 <play_file+0x210>
     d38:	000b0493          	mv	s1,s6
     d3c:	fcdff06f          	j	d08 <play_file+0x480>
     d40:	00000493          	li	s1,0
     d44:	017b0d33          	add	s10,s6,s7
     d48:	05000593          	li	a1,80
     d4c:	00048513          	mv	a0,s1
     d50:	00001097          	auipc	ra,0x1
     d54:	358080e7          	jalr	856(ra) # 20a8 <__divsi3>
     d58:	2c050793          	addi	a5,a0,704
     d5c:	02010713          	addi	a4,sp,32
     d60:	00e78533          	add	a0,a5,a4
     d64:	e0054d83          	lbu	s11,-512(a0)
     d68:	009d0933          	add	s2,s10,s1
     d6c:	00000a93          	li	s5,0
     d70:	015c2023          	sw	s5,0(s8)
     d74:	00001097          	auipc	ra,0x1
     d78:	6ec080e7          	jalr	1772(ra) # 2460 <display_framebuffer>
     d7c:	01250533          	add	a0,a0,s2
     d80:	01b50023          	sb	s11,0(a0)
     d84:	001a8a93          	addi	s5,s5,1
     d88:	ff9a94e3          	bne	s5,s9,d70 <play_file+0x4e8>
     d8c:	08048493          	addi	s1,s1,128
     d90:	fb449ce3          	bne	s1,s4,d48 <play_file+0x4c0>
     d94:	f9dff06f          	j	d30 <play_file+0x4a8>
     d98:	00812683          	lw	a3,8(sp)
     d9c:	20000613          	li	a2,512
     da0:	00100593          	li	a1,1
     da4:	000c0513          	mv	a0,s8
     da8:	00004097          	auipc	ra,0x4
     dac:	67c080e7          	jalr	1660(ra) # 5424 <fl_fread>
     db0:	20a05c63          	blez	a0,fc8 <play_file+0x740>
     db4:	00a989b3          	add	s3,s3,a0
     db8:	1ff00793          	li	a5,511
     dbc:	f8000713          	li	a4,-128
     dc0:	daa7c2e3          	blt	a5,a0,b64 <play_file+0x2dc>
     dc4:	00ac06b3          	add	a3,s8,a0
     dc8:	00e68023          	sb	a4,0(a3)
     dcc:	00150513          	addi	a0,a0,1
     dd0:	ff1ff06f          	j	dc0 <play_file+0x538>
     dd4:	01c12783          	lw	a5,28(sp)
     dd8:	fff44413          	not	s0,s0
     ddc:	0007ac83          	lw	s9,0(a5)
     de0:	07ecfc93          	andi	s9,s9,126
     de4:	01947433          	and	s0,s0,s9
     de8:	00447793          	andi	a5,s0,4
     dec:	02078a63          	beqz	a5,e20 <play_file+0x598>
     df0:	001a4793          	xori	a5,s4,1
     df4:	00f12c23          	sw	a5,24(sp)
     df8:	000a1663          	bnez	s4,e04 <play_file+0x57c>
     dfc:	fffff097          	auipc	ra,0xfffff
     e00:	33c080e7          	jalr	828(ra) # 138 <clear_audio>
     e04:	01812683          	lw	a3,24(sp)
     e08:	00c12603          	lw	a2,12(sp)
     e0c:	00098593          	mv	a1,s3
     e10:	02c10513          	addi	a0,sp,44
     e14:	fffff097          	auipc	ra,0xfffff
     e18:	5c4080e7          	jalr	1476(ra) # 3d8 <update_ui>
     e1c:	01812a03          	lw	s4,24(sp)
     e20:	02047793          	andi	a5,s0,32
     e24:	08078a63          	beqz	a5,eb8 <play_file+0x630>
     e28:	073dc063          	blt	s11,s3,e88 <play_file+0x600>
     e2c:	00812503          	lw	a0,8(sp)
     e30:	00004097          	auipc	ra,0x4
     e34:	514080e7          	jalr	1300(ra) # 5344 <fl_fclose>
     e38:	fffff097          	auipc	ra,0xfffff
     e3c:	300080e7          	jalr	768(ra) # 138 <clear_audio>
     e40:	fffff097          	auipc	ra,0xfffff
     e44:	370080e7          	jalr	880(ra) # 1b0 <clear_screen>
     e48:	fff00513          	li	a0,-1
     e4c:	31c12083          	lw	ra,796(sp)
     e50:	31812403          	lw	s0,792(sp)
     e54:	31412483          	lw	s1,788(sp)
     e58:	31012903          	lw	s2,784(sp)
     e5c:	30c12983          	lw	s3,780(sp)
     e60:	30812a03          	lw	s4,776(sp)
     e64:	30412a83          	lw	s5,772(sp)
     e68:	30012b03          	lw	s6,768(sp)
     e6c:	2fc12b83          	lw	s7,764(sp)
     e70:	2f812c03          	lw	s8,760(sp)
     e74:	2f412c83          	lw	s9,756(sp)
     e78:	2f012d03          	lw	s10,752(sp)
     e7c:	2ec12d83          	lw	s11,748(sp)
     e80:	32010113          	addi	sp,sp,800
     e84:	00008067          	ret
     e88:	00812503          	lw	a0,8(sp)
     e8c:	00000613          	li	a2,0
     e90:	00000593          	li	a1,0
     e94:	00002097          	auipc	ra,0x2
     e98:	f14080e7          	jalr	-236(ra) # 2da8 <fl_fseek>
     e9c:	00c12603          	lw	a2,12(sp)
     ea0:	000a0693          	mv	a3,s4
     ea4:	00000593          	li	a1,0
     ea8:	02c10513          	addi	a0,sp,44
     eac:	fffff097          	auipc	ra,0xfffff
     eb0:	52c080e7          	jalr	1324(ra) # 3d8 <update_ui>
     eb4:	00000993          	li	s3,0
     eb8:	04047793          	andi	a5,s0,64
     ebc:	02078463          	beqz	a5,ee4 <play_file+0x65c>
     ec0:	00812503          	lw	a0,8(sp)
     ec4:	00004097          	auipc	ra,0x4
     ec8:	480080e7          	jalr	1152(ra) # 5344 <fl_fclose>
     ecc:	fffff097          	auipc	ra,0xfffff
     ed0:	26c080e7          	jalr	620(ra) # 138 <clear_audio>
     ed4:	fffff097          	auipc	ra,0xfffff
     ed8:	2dc080e7          	jalr	732(ra) # 1b0 <clear_screen>
     edc:	00100513          	li	a0,1
     ee0:	f6dff06f          	j	e4c <play_file+0x5c4>
     ee4:	00847793          	andi	a5,s0,8
     ee8:	02078463          	beqz	a5,f10 <play_file+0x688>
     eec:	dd44a783          	lw	a5,-556(s1)
     ef0:	00700713          	li	a4,7
     ef4:	00f74663          	blt	a4,a5,f00 <play_file+0x678>
     ef8:	00178793          	addi	a5,a5,1
     efc:	dcf4aa23          	sw	a5,-556(s1)
     f00:	dd44a503          	lw	a0,-556(s1)
     f04:	00aba023          	sw	a0,0(s7)
     f08:	fffff097          	auipc	ra,0xfffff
     f0c:	114080e7          	jalr	276(ra) # 1c <set_volume_leds>
     f10:	01047793          	andi	a5,s0,16
     f14:	02078263          	beqz	a5,f38 <play_file+0x6b0>
     f18:	dd44a783          	lw	a5,-556(s1)
     f1c:	00f05663          	blez	a5,f28 <play_file+0x6a0>
     f20:	fff78793          	addi	a5,a5,-1
     f24:	dcf4aa23          	sw	a5,-556(s1)
     f28:	dd44a503          	lw	a0,-556(s1)
     f2c:	00aba023          	sw	a0,0(s7)
     f30:	fffff097          	auipc	ra,0xfffff
     f34:	0ec080e7          	jalr	236(ra) # 1c <set_volume_leds>
     f38:	00247413          	andi	s0,s0,2
     f3c:	02040263          	beqz	s0,f60 <play_file+0x6d8>
     f40:	00812503          	lw	a0,8(sp)
     f44:	00004097          	auipc	ra,0x4
     f48:	400080e7          	jalr	1024(ra) # 5344 <fl_fclose>
     f4c:	fffff097          	auipc	ra,0xfffff
     f50:	1ec080e7          	jalr	492(ra) # 138 <clear_audio>
     f54:	fffff097          	auipc	ra,0xfffff
     f58:	25c080e7          	jalr	604(ra) # 1b0 <clear_screen>
     f5c:	cd9ff06f          	j	c34 <play_file+0x3ac>
     f60:	000c8413          	mv	s0,s9
     f64:	c01ff06f          	j	b64 <play_file+0x2dc>
     f68:	dd44a783          	lw	a5,-556(s1)
     f6c:	00f74663          	blt	a4,a5,f78 <play_file+0x6f0>
     f70:	00178793          	addi	a5,a5,1
     f74:	dcf4aa23          	sw	a5,-556(s1)
     f78:	dd44a503          	lw	a0,-556(s1)
     f7c:	ce0a8a93          	addi	s5,s5,-800
     f80:	00aba023          	sw	a0,0(s7)
     f84:	fffff097          	auipc	ra,0xfffff
     f88:	098080e7          	jalr	152(ra) # 1c <set_volume_leds>
     f8c:	c09ff06f          	j	b94 <play_file+0x30c>
     f90:	00000a93          	li	s5,0
     f94:	c09ff06f          	j	b9c <play_file+0x314>
     f98:	dd44a783          	lw	a5,-556(s1)
     f9c:	00f05663          	blez	a5,fa8 <play_file+0x720>
     fa0:	fff78793          	addi	a5,a5,-1
     fa4:	dcf4aa23          	sw	a5,-556(s1)
     fa8:	dd44a503          	lw	a0,-556(s1)
     fac:	ce0b0b13          	addi	s6,s6,-800
     fb0:	00aba023          	sw	a0,0(s7)
     fb4:	fffff097          	auipc	ra,0xfffff
     fb8:	068080e7          	jalr	104(ra) # 1c <set_volume_leds>
     fbc:	bfdff06f          	j	bb8 <play_file+0x330>
     fc0:	00000b13          	li	s6,0
     fc4:	bfdff06f          	j	bc0 <play_file+0x338>
     fc8:	00812503          	lw	a0,8(sp)
     fcc:	00004097          	auipc	ra,0x4
     fd0:	378080e7          	jalr	888(ra) # 5344 <fl_fclose>
     fd4:	fffff097          	auipc	ra,0xfffff
     fd8:	164080e7          	jalr	356(ra) # 138 <clear_audio>
     fdc:	fffff097          	auipc	ra,0xfffff
     fe0:	1d4080e7          	jalr	468(ra) # 1b0 <clear_screen>
     fe4:	00000593          	li	a1,0
     fe8:	0ff00513          	li	a0,255
     fec:	00001097          	auipc	ra,0x1
     ff0:	494080e7          	jalr	1172(ra) # 2480 <display_set_front_back_color>
     ff4:	00006537          	lui	a0,0x6
     ff8:	ec850513          	addi	a0,a0,-312 # 5ec8 <LEDS+0xa8>
     ffc:	00001097          	auipc	ra,0x1
    1000:	774080e7          	jalr	1908(ra) # 2770 <printf>
    1004:	00001097          	auipc	ra,0x1
    1008:	600080e7          	jalr	1536(ra) # 2604 <display_refresh>
    100c:	00200513          	li	a0,2
    1010:	e3dff06f          	j	e4c <play_file+0x5c4>

00001014 <main>:
    1014:	000067b7          	lui	a5,0x6
    1018:	e207a783          	lw	a5,-480(a5) # 5e20 <LEDS>
    101c:	fd010113          	addi	sp,sp,-48
    1020:	02112623          	sw	ra,44(sp)
    1024:	02812423          	sw	s0,40(sp)
    1028:	02912223          	sw	s1,36(sp)
    102c:	03212023          	sw	s2,32(sp)
    1030:	01312e23          	sw	s3,28(sp)
    1034:	01412c23          	sw	s4,24(sp)
    1038:	01512a23          	sw	s5,20(sp)
    103c:	01612823          	sw	s6,16(sp)
    1040:	01712623          	sw	s7,12(sp)
    1044:	01812423          	sw	s8,8(sp)
    1048:	01912223          	sw	s9,4(sp)
    104c:	01a12023          	sw	s10,0(sp)
    1050:	0007a023          	sw	zero,0(a5)
    1054:	000067b7          	lui	a5,0x6
    1058:	dd47a703          	lw	a4,-556(a5) # 5dd4 <g_volume>
    105c:	000067b7          	lui	a5,0x6
    1060:	e0c7a783          	lw	a5,-500(a5) # 5e0c <VOLUME>
    1064:	00000413          	li	s0,0
    1068:	00002937          	lui	s2,0x2
    106c:	00e7a023          	sw	a4,0(a5)
    1070:	000027b7          	lui	a5,0x2
    1074:	00006737          	lui	a4,0x6
    1078:	49478793          	addi	a5,a5,1172 # 2494 <display_putchar>
    107c:	22f72023          	sw	a5,544(a4) # 6220 <f_putchar>
    1080:	00001097          	auipc	ra,0x1
    1084:	2c0080e7          	jalr	704(ra) # 2340 <oled_init>
    1088:	00001097          	auipc	ra,0x1
    108c:	2c4080e7          	jalr	708(ra) # 234c <oled_fullscreen>
    1090:	00000513          	li	a0,0
    1094:	00001097          	auipc	ra,0x1
    1098:	350080e7          	jalr	848(ra) # 23e4 <oled_clear>
    109c:	000024b7          	lui	s1,0x2
    10a0:	00001097          	auipc	ra,0x1
    10a4:	de4080e7          	jalr	-540(ra) # 1e84 <sdcard_init>
    10a8:	00002097          	auipc	ra,0x2
    10ac:	c90080e7          	jalr	-880(ra) # 2d38 <fl_init>
    10b0:	fffff097          	auipc	ra,0xfffff
    10b4:	100080e7          	jalr	256(ra) # 1b0 <clear_screen>
    10b8:	fffff097          	auipc	ra,0xfffff
    10bc:	fb4080e7          	jalr	-76(ra) # 6c <show_hourglass>
    10c0:	0a090593          	addi	a1,s2,160 # 20a0 <sdcard_writesector>
    10c4:	04c48513          	addi	a0,s1,76 # 204c <sdcard_readsector>
    10c8:	00003097          	auipc	ra,0x3
    10cc:	ca4080e7          	jalr	-860(ra) # 3d6c <fl_attach_media>
    10d0:	0c051e63          	bnez	a0,11ac <main+0x198>
    10d4:	fffff097          	auipc	ra,0xfffff
    10d8:	064080e7          	jalr	100(ra) # 138 <clear_audio>
    10dc:	fffff097          	auipc	ra,0xfffff
    10e0:	650080e7          	jalr	1616(ra) # 72c <scan_files>
    10e4:	000067b7          	lui	a5,0x6
    10e8:	e107aa83          	lw	s5,-496(a5) # 5e10 <BUTTONS>
    10ec:	00006b37          	lui	s6,0x6
    10f0:	00006a37          	lui	s4,0x6
    10f4:	000aa483          	lw	s1,0(s5)
    10f8:	00000413          	li	s0,0
    10fc:	00100793          	li	a5,1
    1100:	07e4f493          	andi	s1,s1,126
    1104:	00006c37          	lui	s8,0x6
    1108:	00006937          	lui	s2,0x6
    110c:	00006cb7          	lui	s9,0x6
    1110:	23cb0b93          	addi	s7,s6,572 # 623c <files>
    1114:	fcca0a13          	addi	s4,s4,-52 # 5fcc <seq.0>
    1118:	00078663          	beqz	a5,1124 <main+0x110>
    111c:	fffff097          	auipc	ra,0xfffff
    1120:	094080e7          	jalr	148(ra) # 1b0 <clear_screen>
    1124:	00000593          	li	a1,0
    1128:	00000513          	li	a0,0
    112c:	00001097          	auipc	ra,0x1
    1130:	340080e7          	jalr	832(ra) # 246c <display_set_cursor>
    1134:	0ff00593          	li	a1,255
    1138:	00000513          	li	a0,0
    113c:	00001097          	auipc	ra,0x1
    1140:	344080e7          	jalr	836(ra) # 2480 <display_set_front_back_color>
    1144:	ed0c0513          	addi	a0,s8,-304 # 5ed0 <LEDS+0xb0>
    1148:	00001097          	auipc	ra,0x1
    114c:	628080e7          	jalr	1576(ra) # 2770 <printf>
    1150:	00000593          	li	a1,0
    1154:	0ff00513          	li	a0,255
    1158:	00001097          	auipc	ra,0x1
    115c:	328080e7          	jalr	808(ra) # 2480 <display_set_front_back_color>
    1160:	20c92783          	lw	a5,524(s2) # 620c <file_count>
    1164:	06078663          	beqz	a5,11d0 <main+0x1bc>
    1168:	23cb0d13          	addi	s10,s6,572
    116c:	00000993          	li	s3,0
    1170:	20c92783          	lw	a5,524(s2)
    1174:	06f9d663          	bge	s3,a5,11e0 <main+0x1cc>
    1178:	13341e63          	bne	s0,s3,12b4 <main+0x2a0>
    117c:	0ff00593          	li	a1,255
    1180:	00000513          	li	a0,0
    1184:	00001097          	auipc	ra,0x1
    1188:	2fc080e7          	jalr	764(ra) # 2480 <display_set_front_back_color>
    118c:	000d0613          	mv	a2,s10
    1190:	00098593          	mv	a1,s3
    1194:	f00c8513          	addi	a0,s9,-256 # 5f00 <LEDS+0xe0>
    1198:	00001097          	auipc	ra,0x1
    119c:	5d8080e7          	jalr	1496(ra) # 2770 <printf>
    11a0:	00198993          	addi	s3,s3,1
    11a4:	040d0d13          	addi	s10,s10,64
    11a8:	fc9ff06f          	j	1170 <main+0x15c>
    11ac:	3ff47793          	andi	a5,s0,1023
    11b0:	00079663          	bnez	a5,11bc <main+0x1a8>
    11b4:	fffff097          	auipc	ra,0xfffff
    11b8:	eb8080e7          	jalr	-328(ra) # 6c <show_hourglass>
    11bc:	00140413          	addi	s0,s0,1
    11c0:	f01ff06f          	j	10c0 <main+0xac>
    11c4:	00000793          	li	a5,0
    11c8:	00098493          	mv	s1,s3
    11cc:	f4dff06f          	j	1118 <main+0x104>
    11d0:	00006537          	lui	a0,0x6
    11d4:	eec50513          	addi	a0,a0,-276 # 5eec <LEDS+0xcc>
    11d8:	00001097          	auipc	ra,0x1
    11dc:	598080e7          	jalr	1432(ra) # 2770 <printf>
    11e0:	00001097          	auipc	ra,0x1
    11e4:	424080e7          	jalr	1060(ra) # 2604 <display_refresh>
    11e8:	000aa983          	lw	s3,0(s5)
    11ec:	fff4c493          	not	s1,s1
    11f0:	00006737          	lui	a4,0x6
    11f4:	07e9f993          	andi	s3,s3,126
    11f8:	0134f4b3          	and	s1,s1,s3
    11fc:	0084f613          	andi	a2,s1,8
    1200:	00300793          	li	a5,3
    1204:	0a061e63          	bnez	a2,12c0 <main+0x2ac>
    1208:	0104f693          	andi	a3,s1,16
    120c:	00400793          	li	a5,4
    1210:	0a069863          	bnez	a3,12c0 <main+0x2ac>
    1214:	0204f693          	andi	a3,s1,32
    1218:	00500793          	li	a5,5
    121c:	0a069263          	bnez	a3,12c0 <main+0x2ac>
    1220:	0404f693          	andi	a3,s1,64
    1224:	00600793          	li	a5,6
    1228:	08069c63          	bnez	a3,12c0 <main+0x2ac>
    122c:	20472783          	lw	a5,516(a4) # 6204 <idle.2>
    1230:	000016b7          	lui	a3,0x1
    1234:	fa068693          	addi	a3,a3,-96 # fa0 <play_file+0x718>
    1238:	00178793          	addi	a5,a5,1
    123c:	20f72223          	sw	a5,516(a4)
    1240:	00f6d863          	bge	a3,a5,1250 <main+0x23c>
    1244:	000067b7          	lui	a5,0x6
    1248:	2007a023          	sw	zero,512(a5) # 6200 <idx.1>
    124c:	20072223          	sw	zero,516(a4)
    1250:	0024f793          	andi	a5,s1,2
    1254:	f6078ae3          	beqz	a5,11c8 <main+0x1b4>
    1258:	20c92703          	lw	a4,524(s2)
    125c:	00000793          	li	a5,0
    1260:	f6e054e3          	blez	a4,11c8 <main+0x1b4>
    1264:	00641513          	slli	a0,s0,0x6
    1268:	00ab8533          	add	a0,s7,a0
    126c:	fffff097          	auipc	ra,0xfffff
    1270:	61c080e7          	jalr	1564(ra) # 888 <play_file>
    1274:	00100493          	li	s1,1
    1278:	00150793          	addi	a5,a0,1
    127c:	ffd7f793          	andi	a5,a5,-3
    1280:	f40792e3          	bnez	a5,11c4 <main+0x1b0>
    1284:	20c92583          	lw	a1,524(s2)
    1288:	f4b050e3          	blez	a1,11c8 <main+0x1b4>
    128c:	20951a63          	bne	a0,s1,14a0 <main+0x48c>
    1290:	00140513          	addi	a0,s0,1
    1294:	00001097          	auipc	ra,0x1
    1298:	e98080e7          	jalr	-360(ra) # 212c <__modsi3>
    129c:	00050413          	mv	s0,a0
    12a0:	00651513          	slli	a0,a0,0x6
    12a4:	00ab8533          	add	a0,s7,a0
    12a8:	fffff097          	auipc	ra,0xfffff
    12ac:	5e0080e7          	jalr	1504(ra) # 888 <play_file>
    12b0:	fc9ff06f          	j	1278 <main+0x264>
    12b4:	00000593          	li	a1,0
    12b8:	0ff00513          	li	a0,255
    12bc:	ec9ff06f          	j	1184 <main+0x170>
    12c0:	20072223          	sw	zero,516(a4)
    12c4:	00006737          	lui	a4,0x6
    12c8:	20072583          	lw	a1,512(a4) # 6200 <idx.1>
    12cc:	00259693          	slli	a3,a1,0x2
    12d0:	00da06b3          	add	a3,s4,a3
    12d4:	0006a683          	lw	a3,0(a3)
    12d8:	16f69c63          	bne	a3,a5,1450 <main+0x43c>
    12dc:	00158793          	addi	a5,a1,1
    12e0:	00800693          	li	a3,8
    12e4:	16d79a63          	bne	a5,a3,1458 <main+0x444>
    12e8:	000067b7          	lui	a5,0x6
    12ec:	20072023          	sw	zero,512(a4)
    12f0:	00100713          	li	a4,1
    12f4:	20e7a423          	sw	a4,520(a5) # 6208 <g_skip_image>
    12f8:	fffff097          	auipc	ra,0xfffff
    12fc:	eb8080e7          	jalr	-328(ra) # 1b0 <clear_screen>
    1300:	00000593          	li	a1,0
    1304:	0ff00513          	li	a0,255
    1308:	00001097          	auipc	ra,0x1
    130c:	178080e7          	jalr	376(ra) # 2480 <display_set_front_back_color>
    1310:	00400593          	li	a1,4
    1314:	02200513          	li	a0,34
    1318:	00001097          	auipc	ra,0x1
    131c:	154080e7          	jalr	340(ra) # 246c <display_set_cursor>
    1320:	00006537          	lui	a0,0x6
    1324:	f0850513          	addi	a0,a0,-248 # 5f08 <LEDS+0xe8>
    1328:	00001097          	auipc	ra,0x1
    132c:	448080e7          	jalr	1096(ra) # 2770 <printf>
    1330:	00c00593          	li	a1,12
    1334:	02200513          	li	a0,34
    1338:	00001097          	auipc	ra,0x1
    133c:	134080e7          	jalr	308(ra) # 246c <display_set_cursor>
    1340:	00006537          	lui	a0,0x6
    1344:	f1450513          	addi	a0,a0,-236 # 5f14 <LEDS+0xf4>
    1348:	00001097          	auipc	ra,0x1
    134c:	428080e7          	jalr	1064(ra) # 2770 <printf>
    1350:	01400593          	li	a1,20
    1354:	02200513          	li	a0,34
    1358:	00001097          	auipc	ra,0x1
    135c:	114080e7          	jalr	276(ra) # 246c <display_set_cursor>
    1360:	00006537          	lui	a0,0x6
    1364:	f2050513          	addi	a0,a0,-224 # 5f20 <LEDS+0x100>
    1368:	00001097          	auipc	ra,0x1
    136c:	408080e7          	jalr	1032(ra) # 2770 <printf>
    1370:	01c00593          	li	a1,28
    1374:	02200513          	li	a0,34
    1378:	00001097          	auipc	ra,0x1
    137c:	0f4080e7          	jalr	244(ra) # 246c <display_set_cursor>
    1380:	00006537          	lui	a0,0x6
    1384:	f2c50513          	addi	a0,a0,-212 # 5f2c <LEDS+0x10c>
    1388:	00001097          	auipc	ra,0x1
    138c:	3e8080e7          	jalr	1000(ra) # 2770 <printf>
    1390:	02400593          	li	a1,36
    1394:	02200513          	li	a0,34
    1398:	00001097          	auipc	ra,0x1
    139c:	0d4080e7          	jalr	212(ra) # 246c <display_set_cursor>
    13a0:	00006537          	lui	a0,0x6
    13a4:	f3c50513          	addi	a0,a0,-196 # 5f3c <LEDS+0x11c>
    13a8:	00001097          	auipc	ra,0x1
    13ac:	3c8080e7          	jalr	968(ra) # 2770 <printf>
    13b0:	02c00593          	li	a1,44
    13b4:	02200513          	li	a0,34
    13b8:	00001097          	auipc	ra,0x1
    13bc:	0b4080e7          	jalr	180(ra) # 246c <display_set_cursor>
    13c0:	00006537          	lui	a0,0x6
    13c4:	f4c50513          	addi	a0,a0,-180 # 5f4c <LEDS+0x12c>
    13c8:	00001097          	auipc	ra,0x1
    13cc:	3a8080e7          	jalr	936(ra) # 2770 <printf>
    13d0:	03400593          	li	a1,52
    13d4:	02200513          	li	a0,34
    13d8:	00001097          	auipc	ra,0x1
    13dc:	094080e7          	jalr	148(ra) # 246c <display_set_cursor>
    13e0:	00006537          	lui	a0,0x6
    13e4:	f5c50513          	addi	a0,a0,-164 # 5f5c <LEDS+0x13c>
    13e8:	00001097          	auipc	ra,0x1
    13ec:	388080e7          	jalr	904(ra) # 2770 <printf>
    13f0:	03c00593          	li	a1,60
    13f4:	02200513          	li	a0,34
    13f8:	00001097          	auipc	ra,0x1
    13fc:	074080e7          	jalr	116(ra) # 246c <display_set_cursor>
    1400:	00006537          	lui	a0,0x6
    1404:	f6c50513          	addi	a0,a0,-148 # 5f6c <LEDS+0x14c>
    1408:	00001097          	auipc	ra,0x1
    140c:	368080e7          	jalr	872(ra) # 2770 <printf>
    1410:	04400593          	li	a1,68
    1414:	02200513          	li	a0,34
    1418:	00001097          	auipc	ra,0x1
    141c:	054080e7          	jalr	84(ra) # 246c <display_set_cursor>
    1420:	00006537          	lui	a0,0x6
    1424:	f7850513          	addi	a0,a0,-136 # 5f78 <LEDS+0x158>
    1428:	00001097          	auipc	ra,0x1
    142c:	348080e7          	jalr	840(ra) # 2770 <printf>
    1430:	00001097          	auipc	ra,0x1
    1434:	1d4080e7          	jalr	468(ra) # 2604 <display_refresh>
    1438:	00006537          	lui	a0,0x6
    143c:	e9450513          	addi	a0,a0,-364 # 5e94 <LEDS+0x74>
    1440:	fffff097          	auipc	ra,0xfffff
    1444:	448080e7          	jalr	1096(ra) # 888 <play_file>
    1448:	00100793          	li	a5,1
    144c:	d7dff06f          	j	11c8 <main+0x1b4>
    1450:	ffd78793          	addi	a5,a5,-3
    1454:	0017b793          	seqz	a5,a5
    1458:	20f72023          	sw	a5,512(a4)
    145c:	02060063          	beqz	a2,147c <main+0x468>
    1460:	20c92583          	lw	a1,524(s2)
    1464:	00058c63          	beqz	a1,147c <main+0x468>
    1468:	fff40513          	addi	a0,s0,-1
    146c:	00b50533          	add	a0,a0,a1
    1470:	00001097          	auipc	ra,0x1
    1474:	cbc080e7          	jalr	-836(ra) # 212c <__modsi3>
    1478:	00050413          	mv	s0,a0
    147c:	0104f793          	andi	a5,s1,16
    1480:	dc0788e3          	beqz	a5,1250 <main+0x23c>
    1484:	20c92583          	lw	a1,524(s2)
    1488:	dc0584e3          	beqz	a1,1250 <main+0x23c>
    148c:	00140513          	addi	a0,s0,1
    1490:	00001097          	auipc	ra,0x1
    1494:	c9c080e7          	jalr	-868(ra) # 212c <__modsi3>
    1498:	00050413          	mv	s0,a0
    149c:	db5ff06f          	j	1250 <main+0x23c>
    14a0:	fff40513          	addi	a0,s0,-1
    14a4:	00b50533          	add	a0,a0,a1
    14a8:	dedff06f          	j	1294 <main+0x280>

000014ac <sdcard_ponder>:
    14ac:	fe010113          	addi	sp,sp,-32
    14b0:	00812e23          	sw	s0,28(sp)
    14b4:	02010413          	addi	s0,sp,32
    14b8:	fe042623          	sw	zero,-20(s0)
    14bc:	fe042423          	sw	zero,-24(s0)
    14c0:	0380006f          	j	14f8 <sdcard_ponder+0x4c>
    14c4:	000067b7          	lui	a5,0x6
    14c8:	e147a783          	lw	a5,-492(a5) # 5e14 <SDCARD>
    14cc:	fec42703          	lw	a4,-20(s0)
    14d0:	00676713          	ori	a4,a4,6
    14d4:	00e7a023          	sw	a4,0(a5)
    14d8:	00100713          	li	a4,1
    14dc:	fec42783          	lw	a5,-20(s0)
    14e0:	40f707b3          	sub	a5,a4,a5
    14e4:	fef42623          	sw	a5,-20(s0)
    14e8:	00000013          	nop
    14ec:	fe842783          	lw	a5,-24(s0)
    14f0:	00178793          	addi	a5,a5,1
    14f4:	fef42423          	sw	a5,-24(s0)
    14f8:	fe842703          	lw	a4,-24(s0)
    14fc:	00f00793          	li	a5,15
    1500:	fce7d2e3          	bge	a5,a4,14c4 <sdcard_ponder+0x18>
    1504:	00000013          	nop
    1508:	00000013          	nop
    150c:	01c12403          	lw	s0,28(sp)
    1510:	02010113          	addi	sp,sp,32
    1514:	00008067          	ret

00001518 <sdcard_send>:
    1518:	fd010113          	addi	sp,sp,-48
    151c:	02112623          	sw	ra,44(sp)
    1520:	02812423          	sw	s0,40(sp)
    1524:	03010413          	addi	s0,sp,48
    1528:	fca42e23          	sw	a0,-36(s0)
    152c:	fe042623          	sw	zero,-20(s0)
    1530:	fe042423          	sw	zero,-24(s0)
    1534:	fdc42783          	lw	a5,-36(s0)
    1538:	fef42223          	sw	a5,-28(s0)
    153c:	fe442783          	lw	a5,-28(s0)
    1540:	4077d793          	srai	a5,a5,0x7
    1544:	0017f793          	andi	a5,a5,1
    1548:	fef42423          	sw	a5,-24(s0)
    154c:	fec42783          	lw	a5,-20(s0)
    1550:	fe442703          	lw	a4,-28(s0)
    1554:	00f717b3          	sll	a5,a4,a5
    1558:	fef42223          	sw	a5,-28(s0)
    155c:	fe842783          	lw	a5,-24(s0)
    1560:	00179693          	slli	a3,a5,0x1
    1564:	000067b7          	lui	a5,0x6
    1568:	e147a783          	lw	a5,-492(a5) # 5e14 <SDCARD>
    156c:	fec42703          	lw	a4,-20(s0)
    1570:	00e6e733          	or	a4,a3,a4
    1574:	00e7a023          	sw	a4,0(a5)
    1578:	00100713          	li	a4,1
    157c:	fec42783          	lw	a5,-20(s0)
    1580:	40f707b3          	sub	a5,a4,a5
    1584:	fef42623          	sw	a5,-20(s0)
    1588:	fe442783          	lw	a5,-28(s0)
    158c:	4077d793          	srai	a5,a5,0x7
    1590:	0017f793          	andi	a5,a5,1
    1594:	fef42423          	sw	a5,-24(s0)
    1598:	fec42783          	lw	a5,-20(s0)
    159c:	fe442703          	lw	a4,-28(s0)
    15a0:	00f717b3          	sll	a5,a4,a5
    15a4:	fef42223          	sw	a5,-28(s0)
    15a8:	fe842783          	lw	a5,-24(s0)
    15ac:	00179693          	slli	a3,a5,0x1
    15b0:	000067b7          	lui	a5,0x6
    15b4:	e147a783          	lw	a5,-492(a5) # 5e14 <SDCARD>
    15b8:	fec42703          	lw	a4,-20(s0)
    15bc:	00e6e733          	or	a4,a3,a4
    15c0:	00e7a023          	sw	a4,0(a5)
    15c4:	00100713          	li	a4,1
    15c8:	fec42783          	lw	a5,-20(s0)
    15cc:	40f707b3          	sub	a5,a4,a5
    15d0:	fef42623          	sw	a5,-20(s0)
    15d4:	fe442783          	lw	a5,-28(s0)
    15d8:	4077d793          	srai	a5,a5,0x7
    15dc:	0017f793          	andi	a5,a5,1
    15e0:	fef42423          	sw	a5,-24(s0)
    15e4:	fec42783          	lw	a5,-20(s0)
    15e8:	fe442703          	lw	a4,-28(s0)
    15ec:	00f717b3          	sll	a5,a4,a5
    15f0:	fef42223          	sw	a5,-28(s0)
    15f4:	fe842783          	lw	a5,-24(s0)
    15f8:	00179693          	slli	a3,a5,0x1
    15fc:	000067b7          	lui	a5,0x6
    1600:	e147a783          	lw	a5,-492(a5) # 5e14 <SDCARD>
    1604:	fec42703          	lw	a4,-20(s0)
    1608:	00e6e733          	or	a4,a3,a4
    160c:	00e7a023          	sw	a4,0(a5)
    1610:	00100713          	li	a4,1
    1614:	fec42783          	lw	a5,-20(s0)
    1618:	40f707b3          	sub	a5,a4,a5
    161c:	fef42623          	sw	a5,-20(s0)
    1620:	fe442783          	lw	a5,-28(s0)
    1624:	4077d793          	srai	a5,a5,0x7
    1628:	0017f793          	andi	a5,a5,1
    162c:	fef42423          	sw	a5,-24(s0)
    1630:	fec42783          	lw	a5,-20(s0)
    1634:	fe442703          	lw	a4,-28(s0)
    1638:	00f717b3          	sll	a5,a4,a5
    163c:	fef42223          	sw	a5,-28(s0)
    1640:	fe842783          	lw	a5,-24(s0)
    1644:	00179693          	slli	a3,a5,0x1
    1648:	000067b7          	lui	a5,0x6
    164c:	e147a783          	lw	a5,-492(a5) # 5e14 <SDCARD>
    1650:	fec42703          	lw	a4,-20(s0)
    1654:	00e6e733          	or	a4,a3,a4
    1658:	00e7a023          	sw	a4,0(a5)
    165c:	00100713          	li	a4,1
    1660:	fec42783          	lw	a5,-20(s0)
    1664:	40f707b3          	sub	a5,a4,a5
    1668:	fef42623          	sw	a5,-20(s0)
    166c:	fe442783          	lw	a5,-28(s0)
    1670:	4077d793          	srai	a5,a5,0x7
    1674:	0017f793          	andi	a5,a5,1
    1678:	fef42423          	sw	a5,-24(s0)
    167c:	fec42783          	lw	a5,-20(s0)
    1680:	fe442703          	lw	a4,-28(s0)
    1684:	00f717b3          	sll	a5,a4,a5
    1688:	fef42223          	sw	a5,-28(s0)
    168c:	fe842783          	lw	a5,-24(s0)
    1690:	00179693          	slli	a3,a5,0x1
    1694:	000067b7          	lui	a5,0x6
    1698:	e147a783          	lw	a5,-492(a5) # 5e14 <SDCARD>
    169c:	fec42703          	lw	a4,-20(s0)
    16a0:	00e6e733          	or	a4,a3,a4
    16a4:	00e7a023          	sw	a4,0(a5)
    16a8:	00100713          	li	a4,1
    16ac:	fec42783          	lw	a5,-20(s0)
    16b0:	40f707b3          	sub	a5,a4,a5
    16b4:	fef42623          	sw	a5,-20(s0)
    16b8:	fe442783          	lw	a5,-28(s0)
    16bc:	4077d793          	srai	a5,a5,0x7
    16c0:	0017f793          	andi	a5,a5,1
    16c4:	fef42423          	sw	a5,-24(s0)
    16c8:	fec42783          	lw	a5,-20(s0)
    16cc:	fe442703          	lw	a4,-28(s0)
    16d0:	00f717b3          	sll	a5,a4,a5
    16d4:	fef42223          	sw	a5,-28(s0)
    16d8:	fe842783          	lw	a5,-24(s0)
    16dc:	00179693          	slli	a3,a5,0x1
    16e0:	000067b7          	lui	a5,0x6
    16e4:	e147a783          	lw	a5,-492(a5) # 5e14 <SDCARD>
    16e8:	fec42703          	lw	a4,-20(s0)
    16ec:	00e6e733          	or	a4,a3,a4
    16f0:	00e7a023          	sw	a4,0(a5)
    16f4:	00100713          	li	a4,1
    16f8:	fec42783          	lw	a5,-20(s0)
    16fc:	40f707b3          	sub	a5,a4,a5
    1700:	fef42623          	sw	a5,-20(s0)
    1704:	fe442783          	lw	a5,-28(s0)
    1708:	4077d793          	srai	a5,a5,0x7
    170c:	0017f793          	andi	a5,a5,1
    1710:	fef42423          	sw	a5,-24(s0)
    1714:	fec42783          	lw	a5,-20(s0)
    1718:	fe442703          	lw	a4,-28(s0)
    171c:	00f717b3          	sll	a5,a4,a5
    1720:	fef42223          	sw	a5,-28(s0)
    1724:	fe842783          	lw	a5,-24(s0)
    1728:	00179693          	slli	a3,a5,0x1
    172c:	000067b7          	lui	a5,0x6
    1730:	e147a783          	lw	a5,-492(a5) # 5e14 <SDCARD>
    1734:	fec42703          	lw	a4,-20(s0)
    1738:	00e6e733          	or	a4,a3,a4
    173c:	00e7a023          	sw	a4,0(a5)
    1740:	00100713          	li	a4,1
    1744:	fec42783          	lw	a5,-20(s0)
    1748:	40f707b3          	sub	a5,a4,a5
    174c:	fef42623          	sw	a5,-20(s0)
    1750:	fe442783          	lw	a5,-28(s0)
    1754:	4077d793          	srai	a5,a5,0x7
    1758:	0017f793          	andi	a5,a5,1
    175c:	fef42423          	sw	a5,-24(s0)
    1760:	fec42783          	lw	a5,-20(s0)
    1764:	fe442703          	lw	a4,-28(s0)
    1768:	00f717b3          	sll	a5,a4,a5
    176c:	fef42223          	sw	a5,-28(s0)
    1770:	fe842783          	lw	a5,-24(s0)
    1774:	00179693          	slli	a3,a5,0x1
    1778:	000067b7          	lui	a5,0x6
    177c:	e147a783          	lw	a5,-492(a5) # 5e14 <SDCARD>
    1780:	fec42703          	lw	a4,-20(s0)
    1784:	00e6e733          	or	a4,a3,a4
    1788:	00e7a023          	sw	a4,0(a5)
    178c:	00100713          	li	a4,1
    1790:	fec42783          	lw	a5,-20(s0)
    1794:	40f707b3          	sub	a5,a4,a5
    1798:	fef42623          	sw	a5,-20(s0)
    179c:	fe442783          	lw	a5,-28(s0)
    17a0:	4077d793          	srai	a5,a5,0x7
    17a4:	0017f793          	andi	a5,a5,1
    17a8:	fef42423          	sw	a5,-24(s0)
    17ac:	fec42783          	lw	a5,-20(s0)
    17b0:	fe442703          	lw	a4,-28(s0)
    17b4:	00f717b3          	sll	a5,a4,a5
    17b8:	fef42223          	sw	a5,-28(s0)
    17bc:	fe842783          	lw	a5,-24(s0)
    17c0:	00179693          	slli	a3,a5,0x1
    17c4:	000067b7          	lui	a5,0x6
    17c8:	e147a783          	lw	a5,-492(a5) # 5e14 <SDCARD>
    17cc:	fec42703          	lw	a4,-20(s0)
    17d0:	00e6e733          	or	a4,a3,a4
    17d4:	00e7a023          	sw	a4,0(a5)
    17d8:	00100713          	li	a4,1
    17dc:	fec42783          	lw	a5,-20(s0)
    17e0:	40f707b3          	sub	a5,a4,a5
    17e4:	fef42623          	sw	a5,-20(s0)
    17e8:	fe442783          	lw	a5,-28(s0)
    17ec:	4077d793          	srai	a5,a5,0x7
    17f0:	0017f793          	andi	a5,a5,1
    17f4:	fef42423          	sw	a5,-24(s0)
    17f8:	fec42783          	lw	a5,-20(s0)
    17fc:	fe442703          	lw	a4,-28(s0)
    1800:	00f717b3          	sll	a5,a4,a5
    1804:	fef42223          	sw	a5,-28(s0)
    1808:	fe842783          	lw	a5,-24(s0)
    180c:	00179693          	slli	a3,a5,0x1
    1810:	000067b7          	lui	a5,0x6
    1814:	e147a783          	lw	a5,-492(a5) # 5e14 <SDCARD>
    1818:	fec42703          	lw	a4,-20(s0)
    181c:	00e6e733          	or	a4,a3,a4
    1820:	00e7a023          	sw	a4,0(a5)
    1824:	00100713          	li	a4,1
    1828:	fec42783          	lw	a5,-20(s0)
    182c:	40f707b3          	sub	a5,a4,a5
    1830:	fef42623          	sw	a5,-20(s0)
    1834:	fe442783          	lw	a5,-28(s0)
    1838:	4077d793          	srai	a5,a5,0x7
    183c:	0017f793          	andi	a5,a5,1
    1840:	fef42423          	sw	a5,-24(s0)
    1844:	fec42783          	lw	a5,-20(s0)
    1848:	fe442703          	lw	a4,-28(s0)
    184c:	00f717b3          	sll	a5,a4,a5
    1850:	fef42223          	sw	a5,-28(s0)
    1854:	fe842783          	lw	a5,-24(s0)
    1858:	00179693          	slli	a3,a5,0x1
    185c:	000067b7          	lui	a5,0x6
    1860:	e147a783          	lw	a5,-492(a5) # 5e14 <SDCARD>
    1864:	fec42703          	lw	a4,-20(s0)
    1868:	00e6e733          	or	a4,a3,a4
    186c:	00e7a023          	sw	a4,0(a5)
    1870:	00100713          	li	a4,1
    1874:	fec42783          	lw	a5,-20(s0)
    1878:	40f707b3          	sub	a5,a4,a5
    187c:	fef42623          	sw	a5,-20(s0)
    1880:	fe442783          	lw	a5,-28(s0)
    1884:	4077d793          	srai	a5,a5,0x7
    1888:	0017f793          	andi	a5,a5,1
    188c:	fef42423          	sw	a5,-24(s0)
    1890:	fec42783          	lw	a5,-20(s0)
    1894:	fe442703          	lw	a4,-28(s0)
    1898:	00f717b3          	sll	a5,a4,a5
    189c:	fef42223          	sw	a5,-28(s0)
    18a0:	fe842783          	lw	a5,-24(s0)
    18a4:	00179693          	slli	a3,a5,0x1
    18a8:	000067b7          	lui	a5,0x6
    18ac:	e147a783          	lw	a5,-492(a5) # 5e14 <SDCARD>
    18b0:	fec42703          	lw	a4,-20(s0)
    18b4:	00e6e733          	or	a4,a3,a4
    18b8:	00e7a023          	sw	a4,0(a5)
    18bc:	00100713          	li	a4,1
    18c0:	fec42783          	lw	a5,-20(s0)
    18c4:	40f707b3          	sub	a5,a4,a5
    18c8:	fef42623          	sw	a5,-20(s0)
    18cc:	fe442783          	lw	a5,-28(s0)
    18d0:	4077d793          	srai	a5,a5,0x7
    18d4:	0017f793          	andi	a5,a5,1
    18d8:	fef42423          	sw	a5,-24(s0)
    18dc:	fec42783          	lw	a5,-20(s0)
    18e0:	fe442703          	lw	a4,-28(s0)
    18e4:	00f717b3          	sll	a5,a4,a5
    18e8:	fef42223          	sw	a5,-28(s0)
    18ec:	fe842783          	lw	a5,-24(s0)
    18f0:	00179693          	slli	a3,a5,0x1
    18f4:	000067b7          	lui	a5,0x6
    18f8:	e147a783          	lw	a5,-492(a5) # 5e14 <SDCARD>
    18fc:	fec42703          	lw	a4,-20(s0)
    1900:	00e6e733          	or	a4,a3,a4
    1904:	00e7a023          	sw	a4,0(a5)
    1908:	00100713          	li	a4,1
    190c:	fec42783          	lw	a5,-20(s0)
    1910:	40f707b3          	sub	a5,a4,a5
    1914:	fef42623          	sw	a5,-20(s0)
    1918:	fe442783          	lw	a5,-28(s0)
    191c:	4077d793          	srai	a5,a5,0x7
    1920:	0017f793          	andi	a5,a5,1
    1924:	fef42423          	sw	a5,-24(s0)
    1928:	fec42783          	lw	a5,-20(s0)
    192c:	fe442703          	lw	a4,-28(s0)
    1930:	00f717b3          	sll	a5,a4,a5
    1934:	fef42223          	sw	a5,-28(s0)
    1938:	fe842783          	lw	a5,-24(s0)
    193c:	00179693          	slli	a3,a5,0x1
    1940:	000067b7          	lui	a5,0x6
    1944:	e147a783          	lw	a5,-492(a5) # 5e14 <SDCARD>
    1948:	fec42703          	lw	a4,-20(s0)
    194c:	00e6e733          	or	a4,a3,a4
    1950:	00e7a023          	sw	a4,0(a5)
    1954:	00100713          	li	a4,1
    1958:	fec42783          	lw	a5,-20(s0)
    195c:	40f707b3          	sub	a5,a4,a5
    1960:	fef42623          	sw	a5,-20(s0)
    1964:	fe442783          	lw	a5,-28(s0)
    1968:	4077d793          	srai	a5,a5,0x7
    196c:	0017f793          	andi	a5,a5,1
    1970:	fef42423          	sw	a5,-24(s0)
    1974:	fec42783          	lw	a5,-20(s0)
    1978:	fe442703          	lw	a4,-28(s0)
    197c:	00f717b3          	sll	a5,a4,a5
    1980:	fef42223          	sw	a5,-28(s0)
    1984:	fe842783          	lw	a5,-24(s0)
    1988:	00179693          	slli	a3,a5,0x1
    198c:	000067b7          	lui	a5,0x6
    1990:	e147a783          	lw	a5,-492(a5) # 5e14 <SDCARD>
    1994:	fec42703          	lw	a4,-20(s0)
    1998:	00e6e733          	or	a4,a3,a4
    199c:	00e7a023          	sw	a4,0(a5)
    19a0:	00100713          	li	a4,1
    19a4:	fec42783          	lw	a5,-20(s0)
    19a8:	40f707b3          	sub	a5,a4,a5
    19ac:	fef42623          	sw	a5,-20(s0)
    19b0:	fe442783          	lw	a5,-28(s0)
    19b4:	4077d793          	srai	a5,a5,0x7
    19b8:	0017f793          	andi	a5,a5,1
    19bc:	fef42423          	sw	a5,-24(s0)
    19c0:	fec42783          	lw	a5,-20(s0)
    19c4:	fe442703          	lw	a4,-28(s0)
    19c8:	00f717b3          	sll	a5,a4,a5
    19cc:	fef42223          	sw	a5,-28(s0)
    19d0:	fe842783          	lw	a5,-24(s0)
    19d4:	00179693          	slli	a3,a5,0x1
    19d8:	000067b7          	lui	a5,0x6
    19dc:	e147a783          	lw	a5,-492(a5) # 5e14 <SDCARD>
    19e0:	fec42703          	lw	a4,-20(s0)
    19e4:	00e6e733          	or	a4,a3,a4
    19e8:	00e7a023          	sw	a4,0(a5)
    19ec:	00100713          	li	a4,1
    19f0:	fec42783          	lw	a5,-20(s0)
    19f4:	40f707b3          	sub	a5,a4,a5
    19f8:	fef42623          	sw	a5,-20(s0)
    19fc:	000067b7          	lui	a5,0x6
    1a00:	e147a783          	lw	a5,-492(a5) # 5e14 <SDCARD>
    1a04:	00200713          	li	a4,2
    1a08:	00e7a023          	sw	a4,0(a5)
    1a0c:	000067b7          	lui	a5,0x6
    1a10:	2107a783          	lw	a5,528(a5) # 6210 <sdcard_while_loading_callback>
    1a14:	000780e7          	jalr	a5
    1a18:	00000013          	nop
    1a1c:	02c12083          	lw	ra,44(sp)
    1a20:	02812403          	lw	s0,40(sp)
    1a24:	03010113          	addi	sp,sp,48
    1a28:	00008067          	ret

00001a2c <sdcard_read>:
    1a2c:	fc010113          	addi	sp,sp,-64
    1a30:	02112e23          	sw	ra,60(sp)
    1a34:	02812c23          	sw	s0,56(sp)
    1a38:	04010413          	addi	s0,sp,64
    1a3c:	00050793          	mv	a5,a0
    1a40:	00058713          	mv	a4,a1
    1a44:	fcf407a3          	sb	a5,-49(s0)
    1a48:	00070793          	mv	a5,a4
    1a4c:	fcf40723          	sb	a5,-50(s0)
    1a50:	fce44783          	lbu	a5,-50(s0)
    1a54:	fef42223          	sw	a5,-28(s0)
    1a58:	fcf44783          	lbu	a5,-49(s0)
    1a5c:	fef42023          	sw	a5,-32(s0)
    1a60:	fe042623          	sw	zero,-20(s0)
    1a64:	0ff00793          	li	a5,255
    1a68:	fef42423          	sw	a5,-24(s0)
    1a6c:	0600006f          	j	1acc <sdcard_read+0xa0>
    1a70:	000067b7          	lui	a5,0x6
    1a74:	e147a783          	lw	a5,-492(a5) # 5e14 <SDCARD>
    1a78:	00300713          	li	a4,3
    1a7c:	00e7a023          	sw	a4,0(a5)
    1a80:	fec42783          	lw	a5,-20(s0)
    1a84:	00178793          	addi	a5,a5,1
    1a88:	fef42623          	sw	a5,-20(s0)
    1a8c:	000067b7          	lui	a5,0x6
    1a90:	e147a783          	lw	a5,-492(a5) # 5e14 <SDCARD>
    1a94:	00200713          	li	a4,2
    1a98:	00e7a023          	sw	a4,0(a5)
    1a9c:	000067b7          	lui	a5,0x6
    1aa0:	e147a783          	lw	a5,-492(a5) # 5e14 <SDCARD>
    1aa4:	0007a783          	lw	a5,0(a5)
    1aa8:	fcf42e23          	sw	a5,-36(s0)
    1aac:	fe842783          	lw	a5,-24(s0)
    1ab0:	00179793          	slli	a5,a5,0x1
    1ab4:	fdc42703          	lw	a4,-36(s0)
    1ab8:	00f767b3          	or	a5,a4,a5
    1abc:	fef42423          	sw	a5,-24(s0)
    1ac0:	000067b7          	lui	a5,0x6
    1ac4:	2107a783          	lw	a5,528(a5) # 6210 <sdcard_while_loading_callback>
    1ac8:	000780e7          	jalr	a5
    1acc:	fe442783          	lw	a5,-28(s0)
    1ad0:	00078e63          	beqz	a5,1aec <sdcard_read+0xc0>
    1ad4:	fe042783          	lw	a5,-32(s0)
    1ad8:	fff78793          	addi	a5,a5,-1
    1adc:	fe842703          	lw	a4,-24(s0)
    1ae0:	40f757b3          	sra	a5,a4,a5
    1ae4:	0017f793          	andi	a5,a5,1
    1ae8:	f80794e3          	bnez	a5,1a70 <sdcard_read+0x44>
    1aec:	fe442783          	lw	a5,-28(s0)
    1af0:	00079863          	bnez	a5,1b00 <sdcard_read+0xd4>
    1af4:	fec42703          	lw	a4,-20(s0)
    1af8:	fe042783          	lw	a5,-32(s0)
    1afc:	f6f74ae3          	blt	a4,a5,1a70 <sdcard_read+0x44>
    1b00:	fe842783          	lw	a5,-24(s0)
    1b04:	0ff7f793          	zext.b	a5,a5
    1b08:	00078513          	mv	a0,a5
    1b0c:	03c12083          	lw	ra,60(sp)
    1b10:	03812403          	lw	s0,56(sp)
    1b14:	04010113          	addi	sp,sp,64
    1b18:	00008067          	ret

00001b1c <sdcard_get>:
    1b1c:	fd010113          	addi	sp,sp,-48
    1b20:	02112623          	sw	ra,44(sp)
    1b24:	02812423          	sw	s0,40(sp)
    1b28:	03010413          	addi	s0,sp,48
    1b2c:	00050793          	mv	a5,a0
    1b30:	00058713          	mv	a4,a1
    1b34:	fcf40fa3          	sb	a5,-33(s0)
    1b38:	00070793          	mv	a5,a4
    1b3c:	fcf40f23          	sb	a5,-34(s0)
    1b40:	00000097          	auipc	ra,0x0
    1b44:	4e4080e7          	jalr	1252(ra) # 2024 <sdcard_select>
    1b48:	fde44703          	lbu	a4,-34(s0)
    1b4c:	fdf44783          	lbu	a5,-33(s0)
    1b50:	00070593          	mv	a1,a4
    1b54:	00078513          	mv	a0,a5
    1b58:	00000097          	auipc	ra,0x0
    1b5c:	ed4080e7          	jalr	-300(ra) # 1a2c <sdcard_read>
    1b60:	00050793          	mv	a5,a0
    1b64:	fef407a3          	sb	a5,-17(s0)
    1b68:	00100793          	li	a5,1
    1b6c:	fef42423          	sw	a5,-24(s0)
    1b70:	0280006f          	j	1b98 <sdcard_get+0x7c>
    1b74:	00000593          	li	a1,0
    1b78:	00800513          	li	a0,8
    1b7c:	00000097          	auipc	ra,0x0
    1b80:	eb0080e7          	jalr	-336(ra) # 1a2c <sdcard_read>
    1b84:	00050793          	mv	a5,a0
    1b88:	fef407a3          	sb	a5,-17(s0)
    1b8c:	fe842783          	lw	a5,-24(s0)
    1b90:	00178793          	addi	a5,a5,1
    1b94:	fef42423          	sw	a5,-24(s0)
    1b98:	fdf44783          	lbu	a5,-33(s0)
    1b9c:	0037d793          	srli	a5,a5,0x3
    1ba0:	0ff7f793          	zext.b	a5,a5
    1ba4:	00078713          	mv	a4,a5
    1ba8:	fe842783          	lw	a5,-24(s0)
    1bac:	fce7c4e3          	blt	a5,a4,1b74 <sdcard_get+0x58>
    1bb0:	00000097          	auipc	ra,0x0
    1bb4:	488080e7          	jalr	1160(ra) # 2038 <sdcard_unselect>
    1bb8:	fef44783          	lbu	a5,-17(s0)
    1bbc:	00078513          	mv	a0,a5
    1bc0:	02c12083          	lw	ra,44(sp)
    1bc4:	02812403          	lw	s0,40(sp)
    1bc8:	03010113          	addi	sp,sp,48
    1bcc:	00008067          	ret

00001bd0 <sdcard_cmd>:
    1bd0:	fd010113          	addi	sp,sp,-48
    1bd4:	02112623          	sw	ra,44(sp)
    1bd8:	02812423          	sw	s0,40(sp)
    1bdc:	03010413          	addi	s0,sp,48
    1be0:	fca42e23          	sw	a0,-36(s0)
    1be4:	00000097          	auipc	ra,0x0
    1be8:	440080e7          	jalr	1088(ra) # 2024 <sdcard_select>
    1bec:	fe042623          	sw	zero,-20(s0)
    1bf0:	02c0006f          	j	1c1c <sdcard_cmd+0x4c>
    1bf4:	fec42783          	lw	a5,-20(s0)
    1bf8:	fdc42703          	lw	a4,-36(s0)
    1bfc:	00f707b3          	add	a5,a4,a5
    1c00:	0007c783          	lbu	a5,0(a5)
    1c04:	00078513          	mv	a0,a5
    1c08:	00000097          	auipc	ra,0x0
    1c0c:	910080e7          	jalr	-1776(ra) # 1518 <sdcard_send>
    1c10:	fec42783          	lw	a5,-20(s0)
    1c14:	00178793          	addi	a5,a5,1
    1c18:	fef42623          	sw	a5,-20(s0)
    1c1c:	fec42703          	lw	a4,-20(s0)
    1c20:	00500793          	li	a5,5
    1c24:	fce7d8e3          	bge	a5,a4,1bf4 <sdcard_cmd+0x24>
    1c28:	00000097          	auipc	ra,0x0
    1c2c:	410080e7          	jalr	1040(ra) # 2038 <sdcard_unselect>
    1c30:	00000013          	nop
    1c34:	02c12083          	lw	ra,44(sp)
    1c38:	02812403          	lw	s0,40(sp)
    1c3c:	03010113          	addi	sp,sp,48
    1c40:	00008067          	ret

00001c44 <sdcard_start_sector>:
    1c44:	fe010113          	addi	sp,sp,-32
    1c48:	00112e23          	sw	ra,28(sp)
    1c4c:	00812c23          	sw	s0,24(sp)
    1c50:	02010413          	addi	s0,sp,32
    1c54:	fea42623          	sw	a0,-20(s0)
    1c58:	00000097          	auipc	ra,0x0
    1c5c:	3cc080e7          	jalr	972(ra) # 2024 <sdcard_select>
    1c60:	05100793          	li	a5,81
    1c64:	00078513          	mv	a0,a5
    1c68:	00000097          	auipc	ra,0x0
    1c6c:	8b0080e7          	jalr	-1872(ra) # 1518 <sdcard_send>
    1c70:	fec42783          	lw	a5,-20(s0)
    1c74:	0187d793          	srli	a5,a5,0x18
    1c78:	00078513          	mv	a0,a5
    1c7c:	00000097          	auipc	ra,0x0
    1c80:	89c080e7          	jalr	-1892(ra) # 1518 <sdcard_send>
    1c84:	fec42783          	lw	a5,-20(s0)
    1c88:	4107d793          	srai	a5,a5,0x10
    1c8c:	0ff7f793          	zext.b	a5,a5
    1c90:	00078513          	mv	a0,a5
    1c94:	00000097          	auipc	ra,0x0
    1c98:	884080e7          	jalr	-1916(ra) # 1518 <sdcard_send>
    1c9c:	fec42783          	lw	a5,-20(s0)
    1ca0:	4087d793          	srai	a5,a5,0x8
    1ca4:	0ff7f793          	zext.b	a5,a5
    1ca8:	00078513          	mv	a0,a5
    1cac:	00000097          	auipc	ra,0x0
    1cb0:	86c080e7          	jalr	-1940(ra) # 1518 <sdcard_send>
    1cb4:	fec42783          	lw	a5,-20(s0)
    1cb8:	0ff7f793          	zext.b	a5,a5
    1cbc:	00078513          	mv	a0,a5
    1cc0:	00000097          	auipc	ra,0x0
    1cc4:	858080e7          	jalr	-1960(ra) # 1518 <sdcard_send>
    1cc8:	05500793          	li	a5,85
    1ccc:	00078513          	mv	a0,a5
    1cd0:	00000097          	auipc	ra,0x0
    1cd4:	848080e7          	jalr	-1976(ra) # 1518 <sdcard_send>
    1cd8:	00000097          	auipc	ra,0x0
    1cdc:	360080e7          	jalr	864(ra) # 2038 <sdcard_unselect>
    1ce0:	fffff097          	auipc	ra,0xfffff
    1ce4:	7cc080e7          	jalr	1996(ra) # 14ac <sdcard_ponder>
    1ce8:	00100593          	li	a1,1
    1cec:	00800513          	li	a0,8
    1cf0:	00000097          	auipc	ra,0x0
    1cf4:	e2c080e7          	jalr	-468(ra) # 1b1c <sdcard_get>
    1cf8:	00050793          	mv	a5,a0
    1cfc:	00078513          	mv	a0,a5
    1d00:	01c12083          	lw	ra,28(sp)
    1d04:	01812403          	lw	s0,24(sp)
    1d08:	02010113          	addi	sp,sp,32
    1d0c:	00008067          	ret

00001d10 <sdcard_read_sector>:
    1d10:	fd010113          	addi	sp,sp,-48
    1d14:	02112623          	sw	ra,44(sp)
    1d18:	02812423          	sw	s0,40(sp)
    1d1c:	03010413          	addi	s0,sp,48
    1d20:	fca42e23          	sw	a0,-36(s0)
    1d24:	fcb42c23          	sw	a1,-40(s0)
    1d28:	fdc42503          	lw	a0,-36(s0)
    1d2c:	00000097          	auipc	ra,0x0
    1d30:	f18080e7          	jalr	-232(ra) # 1c44 <sdcard_start_sector>
    1d34:	00050793          	mv	a5,a0
    1d38:	fef405a3          	sb	a5,-21(s0)
    1d3c:	feb44783          	lbu	a5,-21(s0)
    1d40:	00078663          	beqz	a5,1d4c <sdcard_read_sector+0x3c>
    1d44:	fd842783          	lw	a5,-40(s0)
    1d48:	08c0006f          	j	1dd4 <sdcard_read_sector+0xc4>
    1d4c:	00100593          	li	a1,1
    1d50:	00100513          	li	a0,1
    1d54:	00000097          	auipc	ra,0x0
    1d58:	dc8080e7          	jalr	-568(ra) # 1b1c <sdcard_get>
    1d5c:	fe042623          	sw	zero,-20(s0)
    1d60:	03c0006f          	j	1d9c <sdcard_read_sector+0x8c>
    1d64:	00000593          	li	a1,0
    1d68:	00800513          	li	a0,8
    1d6c:	00000097          	auipc	ra,0x0
    1d70:	db0080e7          	jalr	-592(ra) # 1b1c <sdcard_get>
    1d74:	00050793          	mv	a5,a0
    1d78:	fef401a3          	sb	a5,-29(s0)
    1d7c:	fd842783          	lw	a5,-40(s0)
    1d80:	00178713          	addi	a4,a5,1
    1d84:	fce42c23          	sw	a4,-40(s0)
    1d88:	fe344703          	lbu	a4,-29(s0)
    1d8c:	00e78023          	sb	a4,0(a5)
    1d90:	fec42783          	lw	a5,-20(s0)
    1d94:	00178793          	addi	a5,a5,1
    1d98:	fef42623          	sw	a5,-20(s0)
    1d9c:	fec42703          	lw	a4,-20(s0)
    1da0:	1ff00793          	li	a5,511
    1da4:	fce7d0e3          	bge	a5,a4,1d64 <sdcard_read_sector+0x54>
    1da8:	00000593          	li	a1,0
    1dac:	01000513          	li	a0,16
    1db0:	00000097          	auipc	ra,0x0
    1db4:	d6c080e7          	jalr	-660(ra) # 1b1c <sdcard_get>
    1db8:	00050793          	mv	a5,a0
    1dbc:	fef42223          	sw	a5,-28(s0)
    1dc0:	00000097          	auipc	ra,0x0
    1dc4:	278080e7          	jalr	632(ra) # 2038 <sdcard_unselect>
    1dc8:	fffff097          	auipc	ra,0xfffff
    1dcc:	6e4080e7          	jalr	1764(ra) # 14ac <sdcard_ponder>
    1dd0:	fd842783          	lw	a5,-40(s0)
    1dd4:	00078513          	mv	a0,a5
    1dd8:	02c12083          	lw	ra,44(sp)
    1ddc:	02812403          	lw	s0,40(sp)
    1de0:	03010113          	addi	sp,sp,48
    1de4:	00008067          	ret

00001de8 <sdcard_preinit>:
    1de8:	fe010113          	addi	sp,sp,-32
    1dec:	00112e23          	sw	ra,28(sp)
    1df0:	00812c23          	sw	s0,24(sp)
    1df4:	02010413          	addi	s0,sp,32
    1df8:	000067b7          	lui	a5,0x6
    1dfc:	e147a783          	lw	a5,-492(a5) # 5e14 <SDCARD>
    1e00:	00600713          	li	a4,6
    1e04:	00e7a023          	sw	a4,0(a5)
    1e08:	013137b7          	lui	a5,0x1313
    1e0c:	d0078513          	addi	a0,a5,-768 # 1312d00 <__stacktop+0x1302d00>
    1e10:	00000097          	auipc	ra,0x0
    1e14:	1fc080e7          	jalr	508(ra) # 200c <pause>
    1e18:	fe042623          	sw	zero,-20(s0)
    1e1c:	fe042423          	sw	zero,-24(s0)
    1e20:	0340006f          	j	1e54 <sdcard_preinit+0x6c>
    1e24:	000067b7          	lui	a5,0x6
    1e28:	e147a783          	lw	a5,-492(a5) # 5e14 <SDCARD>
    1e2c:	fec42703          	lw	a4,-20(s0)
    1e30:	00676713          	ori	a4,a4,6
    1e34:	00e7a023          	sw	a4,0(a5)
    1e38:	00100713          	li	a4,1
    1e3c:	fec42783          	lw	a5,-20(s0)
    1e40:	40f707b3          	sub	a5,a4,a5
    1e44:	fef42623          	sw	a5,-20(s0)
    1e48:	fe842783          	lw	a5,-24(s0)
    1e4c:	00178793          	addi	a5,a5,1
    1e50:	fef42423          	sw	a5,-24(s0)
    1e54:	fe842703          	lw	a4,-24(s0)
    1e58:	09f00793          	li	a5,159
    1e5c:	fce7d4e3          	bge	a5,a4,1e24 <sdcard_preinit+0x3c>
    1e60:	000067b7          	lui	a5,0x6
    1e64:	e147a783          	lw	a5,-492(a5) # 5e14 <SDCARD>
    1e68:	00600713          	li	a4,6
    1e6c:	00e7a023          	sw	a4,0(a5)
    1e70:	00000013          	nop
    1e74:	01c12083          	lw	ra,28(sp)
    1e78:	01812403          	lw	s0,24(sp)
    1e7c:	02010113          	addi	sp,sp,32
    1e80:	00008067          	ret

00001e84 <sdcard_init>:
    1e84:	fe010113          	addi	sp,sp,-32
    1e88:	00112e23          	sw	ra,28(sp)
    1e8c:	00812c23          	sw	s0,24(sp)
    1e90:	02010413          	addi	s0,sp,32
    1e94:	000067b7          	lui	a5,0x6
    1e98:	00002737          	lui	a4,0x2
    1e9c:	02070713          	addi	a4,a4,32 # 2020 <sdcard_idle>
    1ea0:	20e7a823          	sw	a4,528(a5) # 6210 <sdcard_while_loading_callback>
    1ea4:	00000097          	auipc	ra,0x0
    1ea8:	f44080e7          	jalr	-188(ra) # 1de8 <sdcard_preinit>
    1eac:	000067b7          	lui	a5,0x6
    1eb0:	df878513          	addi	a0,a5,-520 # 5df8 <cmd0>
    1eb4:	00000097          	auipc	ra,0x0
    1eb8:	d1c080e7          	jalr	-740(ra) # 1bd0 <sdcard_cmd>
    1ebc:	00100593          	li	a1,1
    1ec0:	00800513          	li	a0,8
    1ec4:	00000097          	auipc	ra,0x0
    1ec8:	c58080e7          	jalr	-936(ra) # 1b1c <sdcard_get>
    1ecc:	00050793          	mv	a5,a0
    1ed0:	fef407a3          	sb	a5,-17(s0)
    1ed4:	fffff097          	auipc	ra,0xfffff
    1ed8:	5d8080e7          	jalr	1496(ra) # 14ac <sdcard_ponder>
    1edc:	fef44703          	lbu	a4,-17(s0)
    1ee0:	0ff00793          	li	a5,255
    1ee4:	00f71c63          	bne	a4,a5,1efc <sdcard_init+0x78>
    1ee8:	013137b7          	lui	a5,0x1313
    1eec:	d0078513          	addi	a0,a5,-768 # 1312d00 <__stacktop+0x1302d00>
    1ef0:	00000097          	auipc	ra,0x0
    1ef4:	11c080e7          	jalr	284(ra) # 200c <pause>
    1ef8:	fadff06f          	j	1ea4 <sdcard_init+0x20>
    1efc:	00000013          	nop
    1f00:	000067b7          	lui	a5,0x6
    1f04:	df078513          	addi	a0,a5,-528 # 5df0 <cmd8>
    1f08:	00000097          	auipc	ra,0x0
    1f0c:	cc8080e7          	jalr	-824(ra) # 1bd0 <sdcard_cmd>
    1f10:	00100593          	li	a1,1
    1f14:	02800513          	li	a0,40
    1f18:	00000097          	auipc	ra,0x0
    1f1c:	c04080e7          	jalr	-1020(ra) # 1b1c <sdcard_get>
    1f20:	00050793          	mv	a5,a0
    1f24:	fef407a3          	sb	a5,-17(s0)
    1f28:	fffff097          	auipc	ra,0xfffff
    1f2c:	584080e7          	jalr	1412(ra) # 14ac <sdcard_ponder>
    1f30:	000067b7          	lui	a5,0x6
    1f34:	de878513          	addi	a0,a5,-536 # 5de8 <cmd55>
    1f38:	00000097          	auipc	ra,0x0
    1f3c:	c98080e7          	jalr	-872(ra) # 1bd0 <sdcard_cmd>
    1f40:	00100593          	li	a1,1
    1f44:	00800513          	li	a0,8
    1f48:	00000097          	auipc	ra,0x0
    1f4c:	bd4080e7          	jalr	-1068(ra) # 1b1c <sdcard_get>
    1f50:	00050793          	mv	a5,a0
    1f54:	fef407a3          	sb	a5,-17(s0)
    1f58:	fffff097          	auipc	ra,0xfffff
    1f5c:	554080e7          	jalr	1364(ra) # 14ac <sdcard_ponder>
    1f60:	000067b7          	lui	a5,0x6
    1f64:	de078513          	addi	a0,a5,-544 # 5de0 <acmd41>
    1f68:	00000097          	auipc	ra,0x0
    1f6c:	c68080e7          	jalr	-920(ra) # 1bd0 <sdcard_cmd>
    1f70:	00100593          	li	a1,1
    1f74:	00800513          	li	a0,8
    1f78:	00000097          	auipc	ra,0x0
    1f7c:	ba4080e7          	jalr	-1116(ra) # 1b1c <sdcard_get>
    1f80:	00050793          	mv	a5,a0
    1f84:	fef407a3          	sb	a5,-17(s0)
    1f88:	fffff097          	auipc	ra,0xfffff
    1f8c:	524080e7          	jalr	1316(ra) # 14ac <sdcard_ponder>
    1f90:	fef44783          	lbu	a5,-17(s0)
    1f94:	02078863          	beqz	a5,1fc4 <sdcard_init+0x140>
    1f98:	00000097          	auipc	ra,0x0
    1f9c:	0a0080e7          	jalr	160(ra) # 2038 <sdcard_unselect>
    1fa0:	fffff097          	auipc	ra,0xfffff
    1fa4:	50c080e7          	jalr	1292(ra) # 14ac <sdcard_ponder>
    1fa8:	001e87b7          	lui	a5,0x1e8
    1fac:	48078513          	addi	a0,a5,1152 # 1e8480 <__stacktop+0x1d8480>
    1fb0:	00000097          	auipc	ra,0x0
    1fb4:	05c080e7          	jalr	92(ra) # 200c <pause>
    1fb8:	00000097          	auipc	ra,0x0
    1fbc:	06c080e7          	jalr	108(ra) # 2024 <sdcard_select>
    1fc0:	f71ff06f          	j	1f30 <sdcard_init+0xac>
    1fc4:	00000013          	nop
    1fc8:	000067b7          	lui	a5,0x6
    1fcc:	dd878513          	addi	a0,a5,-552 # 5dd8 <cmd16>
    1fd0:	00000097          	auipc	ra,0x0
    1fd4:	c00080e7          	jalr	-1024(ra) # 1bd0 <sdcard_cmd>
    1fd8:	00100593          	li	a1,1
    1fdc:	00800513          	li	a0,8
    1fe0:	00000097          	auipc	ra,0x0
    1fe4:	b3c080e7          	jalr	-1220(ra) # 1b1c <sdcard_get>
    1fe8:	00050793          	mv	a5,a0
    1fec:	fef407a3          	sb	a5,-17(s0)
    1ff0:	fffff097          	auipc	ra,0xfffff
    1ff4:	4bc080e7          	jalr	1212(ra) # 14ac <sdcard_ponder>
    1ff8:	00000013          	nop
    1ffc:	01c12083          	lw	ra,28(sp)
    2000:	01812403          	lw	s0,24(sp)
    2004:	02010113          	addi	sp,sp,32
    2008:	00008067          	ret

0000200c <pause>:
    200c:	c0002773          	rdcycle	a4
    2010:	c00027f3          	rdcycle	a5
    2014:	40e787b3          	sub	a5,a5,a4
    2018:	fea7ece3          	bltu	a5,a0,2010 <pause+0x4>
    201c:	00008067          	ret

00002020 <sdcard_idle>:
    2020:	00008067          	ret

00002024 <sdcard_select>:
    2024:	000067b7          	lui	a5,0x6
    2028:	e147a783          	lw	a5,-492(a5) # 5e14 <SDCARD>
    202c:	00200713          	li	a4,2
    2030:	00e7a023          	sw	a4,0(a5)
    2034:	00008067          	ret

00002038 <sdcard_unselect>:
    2038:	000067b7          	lui	a5,0x6
    203c:	e147a783          	lw	a5,-492(a5) # 5e14 <SDCARD>
    2040:	00600713          	li	a4,6
    2044:	00e7a023          	sw	a4,0(a5)
    2048:	00008067          	ret

0000204c <sdcard_readsector>:
    204c:	04060663          	beqz	a2,2098 <sdcard_readsector+0x4c>
    2050:	ff010113          	addi	sp,sp,-16
    2054:	00912423          	sw	s1,8(sp)
    2058:	01212223          	sw	s2,4(sp)
    205c:	00112623          	sw	ra,12(sp)
    2060:	00050493          	mv	s1,a0
    2064:	00a60933          	add	s2,a2,a0
    2068:	00048513          	mv	a0,s1
    206c:	00000097          	auipc	ra,0x0
    2070:	ca4080e7          	jalr	-860(ra) # 1d10 <sdcard_read_sector>
    2074:	00148493          	addi	s1,s1,1
    2078:	00050593          	mv	a1,a0
    207c:	fe9916e3          	bne	s2,s1,2068 <sdcard_readsector+0x1c>
    2080:	00c12083          	lw	ra,12(sp)
    2084:	00812483          	lw	s1,8(sp)
    2088:	00412903          	lw	s2,4(sp)
    208c:	00100513          	li	a0,1
    2090:	01010113          	addi	sp,sp,16
    2094:	00008067          	ret
    2098:	00000513          	li	a0,0
    209c:	00008067          	ret

000020a0 <sdcard_writesector>:
    20a0:	00000513          	li	a0,0
    20a4:	00008067          	ret

000020a8 <__divsi3>:
    20a8:	06054063          	bltz	a0,2108 <__umodsi3+0x10>
    20ac:	0605c663          	bltz	a1,2118 <__umodsi3+0x20>

000020b0 <__udivsi3>:
    20b0:	00058613          	mv	a2,a1
    20b4:	00050593          	mv	a1,a0
    20b8:	fff00513          	li	a0,-1
    20bc:	02060c63          	beqz	a2,20f4 <__udivsi3+0x44>
    20c0:	00100693          	li	a3,1
    20c4:	00b67a63          	bgeu	a2,a1,20d8 <__udivsi3+0x28>
    20c8:	00c05863          	blez	a2,20d8 <__udivsi3+0x28>
    20cc:	00161613          	slli	a2,a2,0x1
    20d0:	00169693          	slli	a3,a3,0x1
    20d4:	feb66ae3          	bltu	a2,a1,20c8 <__udivsi3+0x18>
    20d8:	00000513          	li	a0,0
    20dc:	00c5e663          	bltu	a1,a2,20e8 <__udivsi3+0x38>
    20e0:	40c585b3          	sub	a1,a1,a2
    20e4:	00d56533          	or	a0,a0,a3
    20e8:	0016d693          	srli	a3,a3,0x1
    20ec:	00165613          	srli	a2,a2,0x1
    20f0:	fe0696e3          	bnez	a3,20dc <__udivsi3+0x2c>
    20f4:	00008067          	ret

000020f8 <__umodsi3>:
    20f8:	00008293          	mv	t0,ra
    20fc:	fb5ff0ef          	jal	20b0 <__udivsi3>
    2100:	00058513          	mv	a0,a1
    2104:	00028067          	jr	t0
    2108:	40a00533          	neg	a0,a0
    210c:	0005d863          	bgez	a1,211c <__umodsi3+0x24>
    2110:	40b005b3          	neg	a1,a1
    2114:	f95ff06f          	j	20a8 <__divsi3>
    2118:	40b005b3          	neg	a1,a1
    211c:	00008293          	mv	t0,ra
    2120:	f89ff0ef          	jal	20a8 <__divsi3>
    2124:	40a00533          	neg	a0,a0
    2128:	00028067          	jr	t0

0000212c <__modsi3>:
    212c:	00008293          	mv	t0,ra
    2130:	0005ca63          	bltz	a1,2144 <__modsi3+0x18>
    2134:	00054c63          	bltz	a0,214c <__modsi3+0x20>
    2138:	f79ff0ef          	jal	20b0 <__udivsi3>
    213c:	00058513          	mv	a0,a1
    2140:	00028067          	jr	t0
    2144:	40b005b3          	neg	a1,a1
    2148:	fe0558e3          	bgez	a0,2138 <__modsi3+0xc>
    214c:	40a00533          	neg	a0,a0
    2150:	f61ff0ef          	jal	20b0 <__udivsi3>
    2154:	40b00533          	neg	a0,a1
    2158:	00028067          	jr	t0

0000215c <memset>:
    215c:	00c50633          	add	a2,a0,a2
    2160:	00050793          	mv	a5,a0
    2164:	00c79463          	bne	a5,a2,216c <memset+0x10>
    2168:	00008067          	ret
    216c:	00178793          	addi	a5,a5,1
    2170:	feb78fa3          	sb	a1,-1(a5)
    2174:	ff1ff06f          	j	2164 <memset+0x8>

00002178 <memcpy>:
    2178:	00000793          	li	a5,0
    217c:	00c79463          	bne	a5,a2,2184 <memcpy+0xc>
    2180:	00008067          	ret
    2184:	00f58733          	add	a4,a1,a5
    2188:	00074683          	lbu	a3,0(a4)
    218c:	00f50733          	add	a4,a0,a5
    2190:	00178793          	addi	a5,a5,1
    2194:	00d70023          	sb	a3,0(a4)
    2198:	fe5ff06f          	j	217c <memcpy+0x4>

0000219c <strlen>:
    219c:	00050793          	mv	a5,a0
    21a0:	00000513          	li	a0,0
    21a4:	00a78733          	add	a4,a5,a0
    21a8:	00074703          	lbu	a4,0(a4)
    21ac:	00071463          	bnez	a4,21b4 <strlen+0x18>
    21b0:	00008067          	ret
    21b4:	00150513          	addi	a0,a0,1
    21b8:	fedff06f          	j	21a4 <strlen+0x8>

000021bc <strncmp>:
    21bc:	00000793          	li	a5,0
    21c0:	00c79663          	bne	a5,a2,21cc <strncmp+0x10>
    21c4:	00000513          	li	a0,0
    21c8:	00008067          	ret
    21cc:	00f50733          	add	a4,a0,a5
    21d0:	00074683          	lbu	a3,0(a4)
    21d4:	00f58733          	add	a4,a1,a5
    21d8:	00074703          	lbu	a4,0(a4)
    21dc:	00e6e863          	bltu	a3,a4,21ec <strncmp+0x30>
    21e0:	00d76a63          	bltu	a4,a3,21f4 <strncmp+0x38>
    21e4:	00178793          	addi	a5,a5,1
    21e8:	fd9ff06f          	j	21c0 <strncmp+0x4>
    21ec:	fff00513          	li	a0,-1
    21f0:	00008067          	ret
    21f4:	00100513          	li	a0,1
    21f8:	00008067          	ret

000021fc <strncpy>:
    21fc:	00000793          	li	a5,0
    2200:	00c79463          	bne	a5,a2,2208 <strncpy+0xc>
    2204:	00008067          	ret
    2208:	00f58733          	add	a4,a1,a5
    220c:	00074683          	lbu	a3,0(a4)
    2210:	00f50733          	add	a4,a0,a5
    2214:	00178793          	addi	a5,a5,1
    2218:	00d70023          	sb	a3,0(a4)
    221c:	fe5ff06f          	j	2200 <strncpy+0x4>

00002220 <oled_wait>:
    2220:	00000013          	nop
    2224:	00000013          	nop
    2228:	00000013          	nop
    222c:	00000013          	nop
    2230:	00000013          	nop
    2234:	00000013          	nop
    2238:	00000013          	nop
    223c:	00008067          	ret

00002240 <oled_init_mode>:
    2240:	000067b7          	lui	a5,0x6
    2244:	e187a703          	lw	a4,-488(a5) # 5e18 <OLED_RST>
    2248:	ff010113          	addi	sp,sp,-16
    224c:	00912223          	sw	s1,4(sp)
    2250:	00112623          	sw	ra,12(sp)
    2254:	00812423          	sw	s0,8(sp)
    2258:	00072023          	sw	zero,0(a4)
    225c:	00050493          	mv	s1,a0
    2260:	00040737          	lui	a4,0x40
    2264:	00000013          	nop
    2268:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    226c:	fe071ce3          	bnez	a4,2264 <oled_init_mode+0x24>
    2270:	e187a703          	lw	a4,-488(a5)
    2274:	00100693          	li	a3,1
    2278:	00d72023          	sw	a3,0(a4)
    227c:	00040737          	lui	a4,0x40
    2280:	00000013          	nop
    2284:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    2288:	fe071ce3          	bnez	a4,2280 <oled_init_mode+0x40>
    228c:	e187a783          	lw	a5,-488(a5)
    2290:	0007a023          	sw	zero,0(a5)
    2294:	000407b7          	lui	a5,0x40
    2298:	00000013          	nop
    229c:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    22a0:	fe079ce3          	bnez	a5,2298 <oled_init_mode+0x58>
    22a4:	00006737          	lui	a4,0x6
    22a8:	e1c72783          	lw	a5,-484(a4) # 5e1c <OLED>
    22ac:	2af00693          	li	a3,687
    22b0:	00d7a023          	sw	a3,0(a5)
    22b4:	000407b7          	lui	a5,0x40
    22b8:	00000013          	nop
    22bc:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    22c0:	fe079ce3          	bnez	a5,22b8 <oled_init_mode+0x78>
    22c4:	e1c72403          	lw	s0,-484(a4)
    22c8:	2a000793          	li	a5,672
    22cc:	00f42023          	sw	a5,0(s0)
    22d0:	00000097          	auipc	ra,0x0
    22d4:	f50080e7          	jalr	-176(ra) # 2220 <oled_wait>
    22d8:	4a000793          	li	a5,1184
    22dc:	00048463          	beqz	s1,22e4 <oled_init_mode+0xa4>
    22e0:	42000793          	li	a5,1056
    22e4:	00f42023          	sw	a5,0(s0)
    22e8:	00000097          	auipc	ra,0x0
    22ec:	f38080e7          	jalr	-200(ra) # 2220 <oled_wait>
    22f0:	2fd00793          	li	a5,765
    22f4:	00f42023          	sw	a5,0(s0)
    22f8:	00000097          	auipc	ra,0x0
    22fc:	f28080e7          	jalr	-216(ra) # 2220 <oled_wait>
    2300:	4b100793          	li	a5,1201
    2304:	00f42023          	sw	a5,0(s0)
    2308:	00000097          	auipc	ra,0x0
    230c:	f18080e7          	jalr	-232(ra) # 2220 <oled_wait>
    2310:	2a200793          	li	a5,674
    2314:	00f42023          	sw	a5,0(s0)
    2318:	00000097          	auipc	ra,0x0
    231c:	f08080e7          	jalr	-248(ra) # 2220 <oled_wait>
    2320:	40000793          	li	a5,1024
    2324:	00f42023          	sw	a5,0(s0)
    2328:	00812403          	lw	s0,8(sp)
    232c:	00c12083          	lw	ra,12(sp)
    2330:	00412483          	lw	s1,4(sp)
    2334:	01010113          	addi	sp,sp,16
    2338:	00000317          	auipc	t1,0x0
    233c:	ee830067          	jr	-280(t1) # 2220 <oled_wait>

00002340 <oled_init>:
    2340:	00000513          	li	a0,0
    2344:	00000317          	auipc	t1,0x0
    2348:	efc30067          	jr	-260(t1) # 2240 <oled_init_mode>

0000234c <oled_fullscreen>:
    234c:	ff010113          	addi	sp,sp,-16
    2350:	000067b7          	lui	a5,0x6
    2354:	00812423          	sw	s0,8(sp)
    2358:	e1c7a403          	lw	s0,-484(a5) # 5e1c <OLED>
    235c:	00112623          	sw	ra,12(sp)
    2360:	00912223          	sw	s1,4(sp)
    2364:	01212023          	sw	s2,0(sp)
    2368:	21500793          	li	a5,533
    236c:	00f42023          	sw	a5,0(s0)
    2370:	40000913          	li	s2,1024
    2374:	00000097          	auipc	ra,0x0
    2378:	eac080e7          	jalr	-340(ra) # 2220 <oled_wait>
    237c:	47f00493          	li	s1,1151
    2380:	01242023          	sw	s2,0(s0)
    2384:	00000097          	auipc	ra,0x0
    2388:	e9c080e7          	jalr	-356(ra) # 2220 <oled_wait>
    238c:	00942023          	sw	s1,0(s0)
    2390:	00000097          	auipc	ra,0x0
    2394:	e90080e7          	jalr	-368(ra) # 2220 <oled_wait>
    2398:	27500793          	li	a5,629
    239c:	00f42023          	sw	a5,0(s0)
    23a0:	00000097          	auipc	ra,0x0
    23a4:	e80080e7          	jalr	-384(ra) # 2220 <oled_wait>
    23a8:	01242023          	sw	s2,0(s0)
    23ac:	00000097          	auipc	ra,0x0
    23b0:	e74080e7          	jalr	-396(ra) # 2220 <oled_wait>
    23b4:	00942023          	sw	s1,0(s0)
    23b8:	00000097          	auipc	ra,0x0
    23bc:	e68080e7          	jalr	-408(ra) # 2220 <oled_wait>
    23c0:	25c00793          	li	a5,604
    23c4:	00f42023          	sw	a5,0(s0)
    23c8:	00812403          	lw	s0,8(sp)
    23cc:	00c12083          	lw	ra,12(sp)
    23d0:	00412483          	lw	s1,4(sp)
    23d4:	00012903          	lw	s2,0(sp)
    23d8:	01010113          	addi	sp,sp,16
    23dc:	00000317          	auipc	t1,0x0
    23e0:	e4430067          	jr	-444(t1) # 2220 <oled_wait>

000023e4 <oled_clear>:
    23e4:	fe010113          	addi	sp,sp,-32
    23e8:	000067b7          	lui	a5,0x6
    23ec:	01312623          	sw	s3,12(sp)
    23f0:	e1c7a983          	lw	s3,-484(a5) # 5e1c <OLED>
    23f4:	00812c23          	sw	s0,24(sp)
    23f8:	01212823          	sw	s2,16(sp)
    23fc:	00112e23          	sw	ra,28(sp)
    2400:	00912a23          	sw	s1,20(sp)
    2404:	08000913          	li	s2,128
    2408:	40056413          	ori	s0,a0,1024
    240c:	08000493          	li	s1,128
    2410:	0089a023          	sw	s0,0(s3)
    2414:	00000097          	auipc	ra,0x0
    2418:	e0c080e7          	jalr	-500(ra) # 2220 <oled_wait>
    241c:	0089a023          	sw	s0,0(s3)
    2420:	00000097          	auipc	ra,0x0
    2424:	e00080e7          	jalr	-512(ra) # 2220 <oled_wait>
    2428:	fff48493          	addi	s1,s1,-1
    242c:	0089a023          	sw	s0,0(s3)
    2430:	00000097          	auipc	ra,0x0
    2434:	df0080e7          	jalr	-528(ra) # 2220 <oled_wait>
    2438:	fc049ce3          	bnez	s1,2410 <oled_clear+0x2c>
    243c:	fff90913          	addi	s2,s2,-1
    2440:	fc0916e3          	bnez	s2,240c <oled_clear+0x28>
    2444:	01c12083          	lw	ra,28(sp)
    2448:	01812403          	lw	s0,24(sp)
    244c:	01412483          	lw	s1,20(sp)
    2450:	01012903          	lw	s2,16(sp)
    2454:	00c12983          	lw	s3,12(sp)
    2458:	02010113          	addi	sp,sp,32
    245c:	00008067          	ret

00002460 <display_framebuffer>:
    2460:	000067b7          	lui	a5,0x6
    2464:	e047a503          	lw	a0,-508(a5) # 5e04 <DISPLAY>
    2468:	00008067          	ret

0000246c <display_set_cursor>:
    246c:	000067b7          	lui	a5,0x6
    2470:	20a7ae23          	sw	a0,540(a5) # 621c <cursor_x>
    2474:	000067b7          	lui	a5,0x6
    2478:	20b7ac23          	sw	a1,536(a5) # 6218 <cursor_y>
    247c:	00008067          	ret

00002480 <display_set_front_back_color>:
    2480:	000067b7          	lui	a5,0x6
    2484:	20a78aa3          	sb	a0,533(a5) # 6215 <front_color>
    2488:	000067b7          	lui	a5,0x6
    248c:	20b78a23          	sb	a1,532(a5) # 6214 <back_color>
    2490:	00008067          	ret

00002494 <display_putchar>:
    2494:	00a00793          	li	a5,10
    2498:	00006737          	lui	a4,0x6
    249c:	02f51663          	bne	a0,a5,24c8 <display_putchar+0x34>
    24a0:	20072e23          	sw	zero,540(a4) # 621c <cursor_x>
    24a4:	00006737          	lui	a4,0x6
    24a8:	21872783          	lw	a5,536(a4) # 6218 <cursor_y>
    24ac:	00878793          	addi	a5,a5,8
    24b0:	20f72c23          	sw	a5,536(a4)
    24b4:	07f00713          	li	a4,127
    24b8:	00f75663          	bge	a4,a5,24c4 <display_putchar+0x30>
    24bc:	000067b7          	lui	a5,0x6
    24c0:	2007ac23          	sw	zero,536(a5) # 6218 <cursor_y>
    24c4:	00008067          	ret
    24c8:	ff010113          	addi	sp,sp,-16
    24cc:	00812623          	sw	s0,12(sp)
    24d0:	00912423          	sw	s1,8(sp)
    24d4:	01f00793          	li	a5,31
    24d8:	0ea7d263          	bge	a5,a0,25bc <display_putchar+0x128>
    24dc:	00006f37          	lui	t5,0x6
    24e0:	218f2783          	lw	a5,536(t5) # 6218 <cursor_y>
    24e4:	08000593          	li	a1,128
    24e8:	40f585b3          	sub	a1,a1,a5
    24ec:	00800793          	li	a5,8
    24f0:	00b7d463          	bge	a5,a1,24f8 <display_putchar+0x64>
    24f4:	00800593          	li	a1,8
    24f8:	21c72783          	lw	a5,540(a4)
    24fc:	08000813          	li	a6,128
    2500:	40f80833          	sub	a6,a6,a5
    2504:	00500793          	li	a5,5
    2508:	0107d463          	bge	a5,a6,2510 <display_putchar+0x7c>
    250c:	00500813          	li	a6,5
    2510:	000067b7          	lui	a5,0x6
    2514:	e087ae03          	lw	t3,-504(a5) # 5e08 <RGBSEL>
    2518:	000067b7          	lui	a5,0x6
    251c:	e047a283          	lw	t0,-508(a5) # 5e04 <DISPLAY>
    2520:	00251693          	slli	a3,a0,0x2
    2524:	000067b7          	lui	a5,0x6
    2528:	00a686b3          	add	a3,a3,a0
    252c:	fec78793          	addi	a5,a5,-20 # 5fec <font>
    2530:	00f686b3          	add	a3,a3,a5
    2534:	00000613          	li	a2,0
    2538:	00100e93          	li	t4,1
    253c:	000063b7          	lui	t2,0x6
    2540:	00006437          	lui	s0,0x6
    2544:	00200493          	li	s1,2
    2548:	06b65a63          	bge	a2,a1,25bc <display_putchar+0x128>
    254c:	00ce9fb3          	sll	t6,t4,a2
    2550:	00068313          	mv	t1,a3
    2554:	00000893          	li	a7,0
    2558:	04c0006f          	j	25a4 <display_putchar+0x110>
    255c:	218f2783          	lw	a5,536(t5)
    2560:	00a88533          	add	a0,a7,a0
    2564:	00751513          	slli	a0,a0,0x7
    2568:	00f607b3          	add	a5,a2,a5
    256c:	00a787b3          	add	a5,a5,a0
    2570:	f6034503          	lbu	a0,-160(t1)
    2574:	01f57533          	and	a0,a0,t6
    2578:	02050e63          	beqz	a0,25b4 <display_putchar+0x120>
    257c:	21544503          	lbu	a0,533(s0) # 6215 <front_color>
    2580:	000e2023          	sw	zero,0(t3)
    2584:	00f287b3          	add	a5,t0,a5
    2588:	00a78023          	sb	a0,0(a5)
    258c:	01de2023          	sw	t4,0(t3)
    2590:	00a78023          	sb	a0,0(a5)
    2594:	009e2023          	sw	s1,0(t3)
    2598:	00a78023          	sb	a0,0(a5)
    259c:	00188893          	addi	a7,a7,1
    25a0:	00130313          	addi	t1,t1,1
    25a4:	21c72503          	lw	a0,540(a4)
    25a8:	fb08cae3          	blt	a7,a6,255c <display_putchar+0xc8>
    25ac:	00160613          	addi	a2,a2,1
    25b0:	f99ff06f          	j	2548 <display_putchar+0xb4>
    25b4:	2143c503          	lbu	a0,532(t2) # 6214 <back_color>
    25b8:	fc9ff06f          	j	2580 <display_putchar+0xec>
    25bc:	21c72783          	lw	a5,540(a4)
    25c0:	07f00693          	li	a3,127
    25c4:	00578793          	addi	a5,a5,5
    25c8:	00f6c663          	blt	a3,a5,25d4 <display_putchar+0x140>
    25cc:	20f72e23          	sw	a5,540(a4)
    25d0:	0240006f          	j	25f4 <display_putchar+0x160>
    25d4:	20072e23          	sw	zero,540(a4)
    25d8:	00006737          	lui	a4,0x6
    25dc:	21872783          	lw	a5,536(a4) # 6218 <cursor_y>
    25e0:	00878793          	addi	a5,a5,8
    25e4:	20f72c23          	sw	a5,536(a4)
    25e8:	00f6d663          	bge	a3,a5,25f4 <display_putchar+0x160>
    25ec:	000067b7          	lui	a5,0x6
    25f0:	2007ac23          	sw	zero,536(a5) # 6218 <cursor_y>
    25f4:	00c12403          	lw	s0,12(sp)
    25f8:	00812483          	lw	s1,8(sp)
    25fc:	01010113          	addi	sp,sp,16
    2600:	00008067          	ret

00002604 <display_refresh>:
    2604:	00008067          	ret

00002608 <print_string>:
    2608:	ff010113          	addi	sp,sp,-16
    260c:	00812423          	sw	s0,8(sp)
    2610:	00912223          	sw	s1,4(sp)
    2614:	00112623          	sw	ra,12(sp)
    2618:	00050413          	mv	s0,a0
    261c:	000064b7          	lui	s1,0x6
    2620:	00044503          	lbu	a0,0(s0)
    2624:	00051c63          	bnez	a0,263c <print_string+0x34>
    2628:	00c12083          	lw	ra,12(sp)
    262c:	00812403          	lw	s0,8(sp)
    2630:	00412483          	lw	s1,4(sp)
    2634:	01010113          	addi	sp,sp,16
    2638:	00008067          	ret
    263c:	2204a783          	lw	a5,544(s1) # 6220 <f_putchar>
    2640:	00140413          	addi	s0,s0,1
    2644:	000780e7          	jalr	a5
    2648:	fd9ff06f          	j	2620 <print_string+0x18>

0000264c <print_dec>:
    264c:	ef010113          	addi	sp,sp,-272
    2650:	10812423          	sw	s0,264(sp)
    2654:	10912223          	sw	s1,260(sp)
    2658:	10112623          	sw	ra,268(sp)
    265c:	11212023          	sw	s2,256(sp)
    2660:	00050413          	mv	s0,a0
    2664:	000064b7          	lui	s1,0x6
    2668:	08045063          	bgez	s0,26e8 <print_dec+0x9c>
    266c:	2204a783          	lw	a5,544(s1) # 6220 <f_putchar>
    2670:	02d00513          	li	a0,45
    2674:	40800433          	neg	s0,s0
    2678:	000780e7          	jalr	a5
    267c:	fedff06f          	j	2668 <print_dec+0x1c>
    2680:	00040513          	mv	a0,s0
    2684:	00a00593          	li	a1,10
    2688:	00000097          	auipc	ra,0x0
    268c:	a20080e7          	jalr	-1504(ra) # 20a8 <__divsi3>
    2690:	00251793          	slli	a5,a0,0x2
    2694:	00f507b3          	add	a5,a0,a5
    2698:	00179793          	slli	a5,a5,0x1
    269c:	40f40433          	sub	s0,s0,a5
    26a0:	00148493          	addi	s1,s1,1
    26a4:	fe848fa3          	sb	s0,-1(s1)
    26a8:	00050413          	mv	s0,a0
    26ac:	fc041ae3          	bnez	s0,2680 <print_dec+0x34>
    26b0:	fd2488e3          	beq	s1,s2,2680 <print_dec+0x34>
    26b4:	00006437          	lui	s0,0x6
    26b8:	fff4c503          	lbu	a0,-1(s1)
    26bc:	22042783          	lw	a5,544(s0) # 6220 <f_putchar>
    26c0:	fff48493          	addi	s1,s1,-1
    26c4:	03050513          	addi	a0,a0,48
    26c8:	000780e7          	jalr	a5
    26cc:	ff2496e3          	bne	s1,s2,26b8 <print_dec+0x6c>
    26d0:	10c12083          	lw	ra,268(sp)
    26d4:	10812403          	lw	s0,264(sp)
    26d8:	10412483          	lw	s1,260(sp)
    26dc:	10012903          	lw	s2,256(sp)
    26e0:	11010113          	addi	sp,sp,272
    26e4:	00008067          	ret
    26e8:	00010493          	mv	s1,sp
    26ec:	00048913          	mv	s2,s1
    26f0:	fbdff06f          	j	26ac <print_dec+0x60>

000026f4 <print_hex_digits>:
    26f4:	fe010113          	addi	sp,sp,-32
    26f8:	00812c23          	sw	s0,24(sp)
    26fc:	01212823          	sw	s2,16(sp)
    2700:	fff58413          	addi	s0,a1,-1
    2704:	00006937          	lui	s2,0x6
    2708:	00912a23          	sw	s1,20(sp)
    270c:	01312623          	sw	s3,12(sp)
    2710:	00112e23          	sw	ra,28(sp)
    2714:	00050493          	mv	s1,a0
    2718:	00241413          	slli	s0,s0,0x2
    271c:	f8490913          	addi	s2,s2,-124 # 5f84 <LEDS+0x164>
    2720:	000069b7          	lui	s3,0x6
    2724:	02045063          	bgez	s0,2744 <print_hex_digits+0x50>
    2728:	01c12083          	lw	ra,28(sp)
    272c:	01812403          	lw	s0,24(sp)
    2730:	01412483          	lw	s1,20(sp)
    2734:	01012903          	lw	s2,16(sp)
    2738:	00c12983          	lw	s3,12(sp)
    273c:	02010113          	addi	sp,sp,32
    2740:	00008067          	ret
    2744:	0084d7b3          	srl	a5,s1,s0
    2748:	00f7f793          	andi	a5,a5,15
    274c:	00f907b3          	add	a5,s2,a5
    2750:	2209a703          	lw	a4,544(s3) # 6220 <f_putchar>
    2754:	0007c503          	lbu	a0,0(a5)
    2758:	ffc40413          	addi	s0,s0,-4
    275c:	000700e7          	jalr	a4
    2760:	fc5ff06f          	j	2724 <print_hex_digits+0x30>

00002764 <print_hex>:
    2764:	00800593          	li	a1,8
    2768:	00000317          	auipc	t1,0x0
    276c:	f8c30067          	jr	-116(t1) # 26f4 <print_hex_digits>

00002770 <printf>:
    2770:	fb010113          	addi	sp,sp,-80
    2774:	04f12223          	sw	a5,68(sp)
    2778:	03410793          	addi	a5,sp,52
    277c:	02812423          	sw	s0,40(sp)
    2780:	02912223          	sw	s1,36(sp)
    2784:	03212023          	sw	s2,32(sp)
    2788:	01312e23          	sw	s3,28(sp)
    278c:	01412c23          	sw	s4,24(sp)
    2790:	01512a23          	sw	s5,20(sp)
    2794:	01612823          	sw	s6,16(sp)
    2798:	02112623          	sw	ra,44(sp)
    279c:	00050413          	mv	s0,a0
    27a0:	02b12a23          	sw	a1,52(sp)
    27a4:	02c12c23          	sw	a2,56(sp)
    27a8:	02d12e23          	sw	a3,60(sp)
    27ac:	04e12023          	sw	a4,64(sp)
    27b0:	05012423          	sw	a6,72(sp)
    27b4:	05112623          	sw	a7,76(sp)
    27b8:	00f12623          	sw	a5,12(sp)
    27bc:	02500913          	li	s2,37
    27c0:	000064b7          	lui	s1,0x6
    27c4:	07300993          	li	s3,115
    27c8:	07800a13          	li	s4,120
    27cc:	06400a93          	li	s5,100
    27d0:	06300b13          	li	s6,99
    27d4:	00044503          	lbu	a0,0(s0)
    27d8:	02051663          	bnez	a0,2804 <printf+0x94>
    27dc:	02c12083          	lw	ra,44(sp)
    27e0:	02812403          	lw	s0,40(sp)
    27e4:	02412483          	lw	s1,36(sp)
    27e8:	02012903          	lw	s2,32(sp)
    27ec:	01c12983          	lw	s3,28(sp)
    27f0:	01812a03          	lw	s4,24(sp)
    27f4:	01412a83          	lw	s5,20(sp)
    27f8:	01012b03          	lw	s6,16(sp)
    27fc:	05010113          	addi	sp,sp,80
    2800:	00008067          	ret
    2804:	09251863          	bne	a0,s2,2894 <printf+0x124>
    2808:	00144503          	lbu	a0,1(s0)
    280c:	03351463          	bne	a0,s3,2834 <printf+0xc4>
    2810:	00c12783          	lw	a5,12(sp)
    2814:	0007a503          	lw	a0,0(a5)
    2818:	00478713          	addi	a4,a5,4
    281c:	00e12623          	sw	a4,12(sp)
    2820:	00000097          	auipc	ra,0x0
    2824:	de8080e7          	jalr	-536(ra) # 2608 <print_string>
    2828:	00140413          	addi	s0,s0,1
    282c:	00140413          	addi	s0,s0,1
    2830:	fa5ff06f          	j	27d4 <printf+0x64>
    2834:	03451063          	bne	a0,s4,2854 <printf+0xe4>
    2838:	00c12783          	lw	a5,12(sp)
    283c:	0007a503          	lw	a0,0(a5)
    2840:	00478713          	addi	a4,a5,4
    2844:	00e12623          	sw	a4,12(sp)
    2848:	00000097          	auipc	ra,0x0
    284c:	f1c080e7          	jalr	-228(ra) # 2764 <print_hex>
    2850:	fd9ff06f          	j	2828 <printf+0xb8>
    2854:	03551063          	bne	a0,s5,2874 <printf+0x104>
    2858:	00c12783          	lw	a5,12(sp)
    285c:	0007a503          	lw	a0,0(a5)
    2860:	00478713          	addi	a4,a5,4
    2864:	00e12623          	sw	a4,12(sp)
    2868:	00000097          	auipc	ra,0x0
    286c:	de4080e7          	jalr	-540(ra) # 264c <print_dec>
    2870:	fb9ff06f          	j	2828 <printf+0xb8>
    2874:	2204a783          	lw	a5,544(s1) # 6220 <f_putchar>
    2878:	01651a63          	bne	a0,s6,288c <printf+0x11c>
    287c:	00c12703          	lw	a4,12(sp)
    2880:	00072503          	lw	a0,0(a4)
    2884:	00470693          	addi	a3,a4,4
    2888:	00d12623          	sw	a3,12(sp)
    288c:	000780e7          	jalr	a5
    2890:	f99ff06f          	j	2828 <printf+0xb8>
    2894:	2204a783          	lw	a5,544(s1)
    2898:	000780e7          	jalr	a5
    289c:	f91ff06f          	j	282c <printf+0xbc>

000028a0 <__mulsi3>:
    28a0:	00050793          	mv	a5,a0
    28a4:	00000513          	li	a0,0
    28a8:	00079463          	bnez	a5,28b0 <__mulsi3+0x10>
    28ac:	00008067          	ret
    28b0:	0017f713          	andi	a4,a5,1
    28b4:	00070463          	beqz	a4,28bc <__mulsi3+0x1c>
    28b8:	00b50533          	add	a0,a0,a1
    28bc:	0017d793          	srli	a5,a5,0x1
    28c0:	00159593          	slli	a1,a1,0x1
    28c4:	fe5ff06f          	j	28a8 <__mulsi3+0x8>

000028c8 <fat_list_insert_last>:
    28c8:	00452783          	lw	a5,4(a0)
    28cc:	04079263          	bnez	a5,2910 <fat_list_insert_last+0x48>
    28d0:	00052783          	lw	a5,0(a0)
    28d4:	00079c63          	bnez	a5,28ec <fat_list_insert_last+0x24>
    28d8:	00b52023          	sw	a1,0(a0)
    28dc:	00b52223          	sw	a1,4(a0)
    28e0:	0005a023          	sw	zero,0(a1)
    28e4:	0005a223          	sw	zero,4(a1)
    28e8:	00008067          	ret
    28ec:	0007a703          	lw	a4,0(a5)
    28f0:	00f5a223          	sw	a5,4(a1)
    28f4:	00e5a023          	sw	a4,0(a1)
    28f8:	00071863          	bnez	a4,2908 <fat_list_insert_last+0x40>
    28fc:	00b52023          	sw	a1,0(a0)
    2900:	00b7a023          	sw	a1,0(a5)
    2904:	00008067          	ret
    2908:	00b72223          	sw	a1,4(a4)
    290c:	ff5ff06f          	j	2900 <fat_list_insert_last+0x38>
    2910:	0047a703          	lw	a4,4(a5)
    2914:	00f5a023          	sw	a5,0(a1)
    2918:	00e5a223          	sw	a4,4(a1)
    291c:	00071863          	bnez	a4,292c <fat_list_insert_last+0x64>
    2920:	00b52223          	sw	a1,4(a0)
    2924:	00b7a223          	sw	a1,4(a5)
    2928:	00008067          	ret
    292c:	00b72023          	sw	a1,0(a4)
    2930:	ff5ff06f          	j	2924 <fat_list_insert_last+0x5c>

00002934 <FileString_StrCmpNoCase>:
    2934:	00050313          	mv	t1,a0
    2938:	00000793          	li	a5,0
    293c:	01900e13          	li	t3,25
    2940:	00c79663          	bne	a5,a2,294c <FileString_StrCmpNoCase+0x18>
    2944:	00000513          	li	a0,0
    2948:	00008067          	ret
    294c:	00f30733          	add	a4,t1,a5
    2950:	00074883          	lbu	a7,0(a4)
    2954:	00f58733          	add	a4,a1,a5
    2958:	00074803          	lbu	a6,0(a4)
    295c:	fbf88713          	addi	a4,a7,-65
    2960:	0ff77713          	zext.b	a4,a4
    2964:	00088693          	mv	a3,a7
    2968:	00ee6663          	bltu	t3,a4,2974 <FileString_StrCmpNoCase+0x40>
    296c:	02088693          	addi	a3,a7,32
    2970:	0ff6f693          	zext.b	a3,a3
    2974:	fbf80513          	addi	a0,a6,-65
    2978:	0ff57513          	zext.b	a0,a0
    297c:	00080713          	mv	a4,a6
    2980:	00ae6663          	bltu	t3,a0,298c <FileString_StrCmpNoCase+0x58>
    2984:	02080713          	addi	a4,a6,32
    2988:	0ff77713          	zext.b	a4,a4
    298c:	40e68533          	sub	a0,a3,a4
    2990:	00e69863          	bne	a3,a4,29a0 <FileString_StrCmpNoCase+0x6c>
    2994:	00088663          	beqz	a7,29a0 <FileString_StrCmpNoCase+0x6c>
    2998:	00178793          	addi	a5,a5,1
    299c:	fa0812e3          	bnez	a6,2940 <FileString_StrCmpNoCase+0xc>
    29a0:	00008067          	ret

000029a4 <FileString_GetExtension>:
    29a4:	00050713          	mv	a4,a0
    29a8:	00050793          	mv	a5,a0
    29ac:	02e00613          	li	a2,46
    29b0:	fff00513          	li	a0,-1
    29b4:	0007c683          	lbu	a3,0(a5)
    29b8:	00069463          	bnez	a3,29c0 <FileString_GetExtension+0x1c>
    29bc:	00008067          	ret
    29c0:	00c69463          	bne	a3,a2,29c8 <FileString_GetExtension+0x24>
    29c4:	40e78533          	sub	a0,a5,a4
    29c8:	00178793          	addi	a5,a5,1
    29cc:	fe9ff06f          	j	29b4 <FileString_GetExtension+0x10>

000029d0 <fatfs_fat_writeback>:
    29d0:	00059663          	bnez	a1,29dc <fatfs_fat_writeback+0xc>
    29d4:	00000513          	li	a0,0
    29d8:	00008067          	ret
    29dc:	2045a703          	lw	a4,516(a1)
    29e0:	ff010113          	addi	sp,sp,-16
    29e4:	00812423          	sw	s0,8(sp)
    29e8:	00112623          	sw	ra,12(sp)
    29ec:	00058413          	mv	s0,a1
    29f0:	00070a63          	beqz	a4,2a04 <fatfs_fat_writeback+0x34>
    29f4:	03852683          	lw	a3,56(a0)
    29f8:	00050793          	mv	a5,a0
    29fc:	00069863          	bnez	a3,2a0c <fatfs_fat_writeback+0x3c>
    2a00:	20042223          	sw	zero,516(s0)
    2a04:	00100513          	li	a0,1
    2a08:	0380006f          	j	2a40 <fatfs_fat_writeback+0x70>
    2a0c:	2005a503          	lw	a0,512(a1)
    2a10:	0147a703          	lw	a4,20(a5)
    2a14:	0207a583          	lw	a1,32(a5)
    2a18:	00100613          	li	a2,1
    2a1c:	40e507b3          	sub	a5,a0,a4
    2a20:	00178793          	addi	a5,a5,1
    2a24:	00f5f663          	bgeu	a1,a5,2a30 <fatfs_fat_writeback+0x60>
    2a28:	00b70733          	add	a4,a4,a1
    2a2c:	40a70633          	sub	a2,a4,a0
    2a30:	00040593          	mv	a1,s0
    2a34:	000680e7          	jalr	a3
    2a38:	fc0514e3          	bnez	a0,2a00 <fatfs_fat_writeback+0x30>
    2a3c:	00000513          	li	a0,0
    2a40:	00c12083          	lw	ra,12(sp)
    2a44:	00812403          	lw	s0,8(sp)
    2a48:	01010113          	addi	sp,sp,16
    2a4c:	00008067          	ret

00002a50 <fatfs_fat_read_sector>:
    2a50:	fe010113          	addi	sp,sp,-32
    2a54:	01212823          	sw	s2,16(sp)
    2a58:	25452903          	lw	s2,596(a0)
    2a5c:	00812c23          	sw	s0,24(sp)
    2a60:	00912a23          	sw	s1,20(sp)
    2a64:	01312623          	sw	s3,12(sp)
    2a68:	00112e23          	sw	ra,28(sp)
    2a6c:	00050993          	mv	s3,a0
    2a70:	00058493          	mv	s1,a1
    2a74:	00000413          	li	s0,0
    2a78:	04091063          	bnez	s2,2ab8 <fatfs_fat_read_sector+0x68>
    2a7c:	2549a783          	lw	a5,596(s3)
    2a80:	20f42623          	sw	a5,524(s0)
    2a84:	20442783          	lw	a5,516(s0)
    2a88:	2489aa23          	sw	s0,596(s3)
    2a8c:	08079863          	bnez	a5,2b1c <fatfs_fat_read_sector+0xcc>
    2a90:	0349a783          	lw	a5,52(s3)
    2a94:	20942023          	sw	s1,512(s0)
    2a98:	00100613          	li	a2,1
    2a9c:	00040593          	mv	a1,s0
    2aa0:	00048513          	mv	a0,s1
    2aa4:	000780e7          	jalr	a5
    2aa8:	08051663          	bnez	a0,2b34 <fatfs_fat_read_sector+0xe4>
    2aac:	fff00793          	li	a5,-1
    2ab0:	20f42023          	sw	a5,512(s0)
    2ab4:	0480006f          	j	2afc <fatfs_fat_read_sector+0xac>
    2ab8:	20092783          	lw	a5,512(s2)
    2abc:	00f4e663          	bltu	s1,a5,2ac8 <fatfs_fat_read_sector+0x78>
    2ac0:	00178713          	addi	a4,a5,1
    2ac4:	02e4e463          	bltu	s1,a4,2aec <fatfs_fat_read_sector+0x9c>
    2ac8:	20c92783          	lw	a5,524(s2)
    2acc:	00079663          	bnez	a5,2ad8 <fatfs_fat_read_sector+0x88>
    2ad0:	00040a63          	beqz	s0,2ae4 <fatfs_fat_read_sector+0x94>
    2ad4:	20042623          	sw	zero,524(s0)
    2ad8:	00090413          	mv	s0,s2
    2adc:	20c92903          	lw	s2,524(s2)
    2ae0:	f99ff06f          	j	2a78 <fatfs_fat_read_sector+0x28>
    2ae4:	2409aa23          	sw	zero,596(s3)
    2ae8:	ff1ff06f          	j	2ad8 <fatfs_fat_read_sector+0x88>
    2aec:	40f484b3          	sub	s1,s1,a5
    2af0:	00949493          	slli	s1,s1,0x9
    2af4:	009904b3          	add	s1,s2,s1
    2af8:	20992423          	sw	s1,520(s2)
    2afc:	01c12083          	lw	ra,28(sp)
    2b00:	01812403          	lw	s0,24(sp)
    2b04:	01412483          	lw	s1,20(sp)
    2b08:	00c12983          	lw	s3,12(sp)
    2b0c:	00090513          	mv	a0,s2
    2b10:	01012903          	lw	s2,16(sp)
    2b14:	02010113          	addi	sp,sp,32
    2b18:	00008067          	ret
    2b1c:	00040593          	mv	a1,s0
    2b20:	00098513          	mv	a0,s3
    2b24:	00000097          	auipc	ra,0x0
    2b28:	eac080e7          	jalr	-340(ra) # 29d0 <fatfs_fat_writeback>
    2b2c:	f60512e3          	bnez	a0,2a90 <fatfs_fat_read_sector+0x40>
    2b30:	fcdff06f          	j	2afc <fatfs_fat_read_sector+0xac>
    2b34:	20842423          	sw	s0,520(s0)
    2b38:	00040913          	mv	s2,s0
    2b3c:	fc1ff06f          	j	2afc <fatfs_fat_read_sector+0xac>

00002b40 <_allocate_file>:
    2b40:	ff010113          	addi	sp,sp,-16
    2b44:	000067b7          	lui	a5,0x6
    2b48:	00812423          	sw	s0,8(sp)
    2b4c:	2247a403          	lw	s0,548(a5) # 6224 <_free_file_list>
    2b50:	00112623          	sw	ra,12(sp)
    2b54:	02040e63          	beqz	s0,2b90 <_allocate_file+0x50>
    2b58:	00042703          	lw	a4,0(s0)
    2b5c:	00442683          	lw	a3,4(s0)
    2b60:	22478793          	addi	a5,a5,548
    2b64:	04071063          	bnez	a4,2ba4 <_allocate_file+0x64>
    2b68:	00d7a023          	sw	a3,0(a5)
    2b6c:	00442683          	lw	a3,4(s0)
    2b70:	02069e63          	bnez	a3,2bac <_allocate_file+0x6c>
    2b74:	00e7a223          	sw	a4,4(a5)
    2b78:	00006537          	lui	a0,0x6
    2b7c:	00040593          	mv	a1,s0
    2b80:	22c50513          	addi	a0,a0,556 # 622c <_open_file_list>
    2b84:	00000097          	auipc	ra,0x0
    2b88:	d44080e7          	jalr	-700(ra) # 28c8 <fat_list_insert_last>
    2b8c:	bc440413          	addi	s0,s0,-1084
    2b90:	00c12083          	lw	ra,12(sp)
    2b94:	00040513          	mv	a0,s0
    2b98:	00812403          	lw	s0,8(sp)
    2b9c:	01010113          	addi	sp,sp,16
    2ba0:	00008067          	ret
    2ba4:	00d72223          	sw	a3,4(a4)
    2ba8:	fc5ff06f          	j	2b6c <_allocate_file+0x2c>
    2bac:	00e6a023          	sw	a4,0(a3)
    2bb0:	fc9ff06f          	j	2b78 <_allocate_file+0x38>

00002bb4 <_free_file>:
    2bb4:	43c52783          	lw	a5,1084(a0)
    2bb8:	44052703          	lw	a4,1088(a0)
    2bbc:	43c50593          	addi	a1,a0,1084
    2bc0:	02079663          	bnez	a5,2bec <_free_file+0x38>
    2bc4:	000066b7          	lui	a3,0x6
    2bc8:	22e6a623          	sw	a4,556(a3) # 622c <_open_file_list>
    2bcc:	44052703          	lw	a4,1088(a0)
    2bd0:	02071263          	bnez	a4,2bf4 <_free_file+0x40>
    2bd4:	00006737          	lui	a4,0x6
    2bd8:	22f72823          	sw	a5,560(a4) # 6230 <_open_file_list+0x4>
    2bdc:	00006537          	lui	a0,0x6
    2be0:	22450513          	addi	a0,a0,548 # 6224 <_free_file_list>
    2be4:	00000317          	auipc	t1,0x0
    2be8:	ce430067          	jr	-796(t1) # 28c8 <fat_list_insert_last>
    2bec:	00e7a223          	sw	a4,4(a5)
    2bf0:	fddff06f          	j	2bcc <_free_file+0x18>
    2bf4:	00f72023          	sw	a5,0(a4)
    2bf8:	fe5ff06f          	j	2bdc <_free_file+0x28>

00002bfc <fatfs_lba_of_cluster>:
    2bfc:	ff010113          	addi	sp,sp,-16
    2c00:	00812423          	sw	s0,8(sp)
    2c04:	00112623          	sw	ra,12(sp)
    2c08:	00050413          	mv	s0,a0
    2c0c:	00058513          	mv	a0,a1
    2c10:	00044583          	lbu	a1,0(s0)
    2c14:	ffe50513          	addi	a0,a0,-2
    2c18:	00000097          	auipc	ra,0x0
    2c1c:	c88080e7          	jalr	-888(ra) # 28a0 <__mulsi3>
    2c20:	00442783          	lw	a5,4(s0)
    2c24:	00f50533          	add	a0,a0,a5
    2c28:	03042783          	lw	a5,48(s0)
    2c2c:	00079863          	bnez	a5,2c3c <fatfs_lba_of_cluster+0x40>
    2c30:	02845783          	lhu	a5,40(s0)
    2c34:	4047d793          	srai	a5,a5,0x4
    2c38:	00f50533          	add	a0,a0,a5
    2c3c:	00c12083          	lw	ra,12(sp)
    2c40:	00812403          	lw	s0,8(sp)
    2c44:	01010113          	addi	sp,sp,16
    2c48:	00008067          	ret

00002c4c <fatfs_sector_read>:
    2c4c:	03452783          	lw	a5,52(a0)
    2c50:	00058713          	mv	a4,a1
    2c54:	00070513          	mv	a0,a4
    2c58:	00060593          	mv	a1,a2
    2c5c:	00068613          	mv	a2,a3
    2c60:	00078067          	jr	a5

00002c64 <fatfs_sector_write>:
    2c64:	03852783          	lw	a5,56(a0)
    2c68:	00058713          	mv	a4,a1
    2c6c:	00070513          	mv	a0,a4
    2c70:	00060593          	mv	a1,a2
    2c74:	00068613          	mv	a2,a3
    2c78:	00078067          	jr	a5

00002c7c <fatfs_write_sector>:
    2c7c:	03852783          	lw	a5,56(a0)
    2c80:	0a078863          	beqz	a5,2d30 <fatfs_write_sector+0xb4>
    2c84:	fe010113          	addi	sp,sp,-32
    2c88:	01212823          	sw	s2,16(sp)
    2c8c:	00068913          	mv	s2,a3
    2c90:	03052683          	lw	a3,48(a0)
    2c94:	00812c23          	sw	s0,24(sp)
    2c98:	00912a23          	sw	s1,20(sp)
    2c9c:	00112e23          	sw	ra,28(sp)
    2ca0:	00d5e733          	or	a4,a1,a3
    2ca4:	00050413          	mv	s0,a0
    2ca8:	00060493          	mv	s1,a2
    2cac:	04071063          	bnez	a4,2cec <fatfs_write_sector+0x70>
    2cb0:	01052703          	lw	a4,16(a0)
    2cb4:	06e67063          	bgeu	a2,a4,2d14 <fatfs_write_sector+0x98>
    2cb8:	01c52503          	lw	a0,28(a0)
    2cbc:	00c42703          	lw	a4,12(s0)
    2cc0:	00e50533          	add	a0,a0,a4
    2cc4:	00c50533          	add	a0,a0,a2
    2cc8:	02090e63          	beqz	s2,2d04 <fatfs_write_sector+0x88>
    2ccc:	00100613          	li	a2,1
    2cd0:	00090593          	mv	a1,s2
    2cd4:	01812403          	lw	s0,24(sp)
    2cd8:	01c12083          	lw	ra,28(sp)
    2cdc:	01412483          	lw	s1,20(sp)
    2ce0:	01012903          	lw	s2,16(sp)
    2ce4:	02010113          	addi	sp,sp,32
    2ce8:	00078067          	jr	a5
    2cec:	00f12623          	sw	a5,12(sp)
    2cf0:	00000097          	auipc	ra,0x0
    2cf4:	f0c080e7          	jalr	-244(ra) # 2bfc <fatfs_lba_of_cluster>
    2cf8:	00c12783          	lw	a5,12(sp)
    2cfc:	00a48533          	add	a0,s1,a0
    2d00:	fc9ff06f          	j	2cc8 <fatfs_write_sector+0x4c>
    2d04:	24a42223          	sw	a0,580(s0)
    2d08:	00100613          	li	a2,1
    2d0c:	04440593          	addi	a1,s0,68
    2d10:	fc5ff06f          	j	2cd4 <fatfs_write_sector+0x58>
    2d14:	01c12083          	lw	ra,28(sp)
    2d18:	01812403          	lw	s0,24(sp)
    2d1c:	01412483          	lw	s1,20(sp)
    2d20:	01012903          	lw	s2,16(sp)
    2d24:	00000513          	li	a0,0
    2d28:	02010113          	addi	sp,sp,32
    2d2c:	00008067          	ret
    2d30:	00000513          	li	a0,0
    2d34:	00008067          	ret

00002d38 <fl_init>:
    2d38:	ff010113          	addi	sp,sp,-16
    2d3c:	00812423          	sw	s0,8(sp)
    2d40:	00006437          	lui	s0,0x6
    2d44:	00112623          	sw	ra,12(sp)
    2d48:	22440793          	addi	a5,s0,548 # 6224 <_free_file_list>
    2d4c:	0007a223          	sw	zero,4(a5)
    2d50:	0007a023          	sw	zero,0(a5)
    2d54:	000075b7          	lui	a1,0x7
    2d58:	000067b7          	lui	a5,0x6
    2d5c:	22c78793          	addi	a5,a5,556 # 622c <_open_file_list>
    2d60:	22440513          	addi	a0,s0,548
    2d64:	2e058593          	addi	a1,a1,736 # 72e0 <_files+0x43c>
    2d68:	0007a223          	sw	zero,4(a5)
    2d6c:	0007a023          	sw	zero,0(a5)
    2d70:	00000097          	auipc	ra,0x0
    2d74:	b58080e7          	jalr	-1192(ra) # 28c8 <fat_list_insert_last>
    2d78:	000075b7          	lui	a1,0x7
    2d7c:	22440513          	addi	a0,s0,548
    2d80:	72458593          	addi	a1,a1,1828 # 7724 <_files+0x880>
    2d84:	00000097          	auipc	ra,0x0
    2d88:	b44080e7          	jalr	-1212(ra) # 28c8 <fat_list_insert_last>
    2d8c:	00c12083          	lw	ra,12(sp)
    2d90:	00812403          	lw	s0,8(sp)
    2d94:	000067b7          	lui	a5,0x6
    2d98:	00100713          	li	a4,1
    2d9c:	22e7ac23          	sw	a4,568(a5) # 6238 <_filelib_init>
    2da0:	01010113          	addi	sp,sp,16
    2da4:	00008067          	ret

00002da8 <fl_fseek>:
    2da8:	000067b7          	lui	a5,0x6
    2dac:	2387a783          	lw	a5,568(a5) # 6238 <_filelib_init>
    2db0:	fd010113          	addi	sp,sp,-48
    2db4:	02812423          	sw	s0,40(sp)
    2db8:	02912223          	sw	s1,36(sp)
    2dbc:	03212023          	sw	s2,32(sp)
    2dc0:	02112623          	sw	ra,44(sp)
    2dc4:	01312e23          	sw	s3,28(sp)
    2dc8:	00050413          	mv	s0,a0
    2dcc:	00058493          	mv	s1,a1
    2dd0:	00060913          	mv	s2,a2
    2dd4:	00079663          	bnez	a5,2de0 <fl_fseek+0x38>
    2dd8:	00000097          	auipc	ra,0x0
    2ddc:	f60080e7          	jalr	-160(ra) # 2d38 <fl_init>
    2de0:	fff00513          	li	a0,-1
    2de4:	08040463          	beqz	s0,2e6c <fl_fseek+0xc4>
    2de8:	00200793          	li	a5,2
    2dec:	00f91463          	bne	s2,a5,2df4 <fl_fseek+0x4c>
    2df0:	06049e63          	bnez	s1,2e6c <fl_fseek+0xc4>
    2df4:	000077b7          	lui	a5,0x7
    2df8:	a3c78713          	addi	a4,a5,-1476 # 6a3c <_fs>
    2dfc:	03c72703          	lw	a4,60(a4)
    2e00:	a3c78993          	addi	s3,a5,-1476
    2e04:	00070463          	beqz	a4,2e0c <fl_fseek+0x64>
    2e08:	000700e7          	jalr	a4
    2e0c:	fff00793          	li	a5,-1
    2e10:	42f42823          	sw	a5,1072(s0)
    2e14:	42042a23          	sw	zero,1076(s0)
    2e18:	00091c63          	bnez	s2,2e30 <fl_fseek+0x88>
    2e1c:	00c42783          	lw	a5,12(s0)
    2e20:	00942423          	sw	s1,8(s0)
    2e24:	0297f863          	bgeu	a5,s1,2e54 <fl_fseek+0xac>
    2e28:	00f42423          	sw	a5,8(s0)
    2e2c:	0280006f          	j	2e54 <fl_fseek+0xac>
    2e30:	00100793          	li	a5,1
    2e34:	06f91063          	bne	s2,a5,2e94 <fl_fseek+0xec>
    2e38:	00842783          	lw	a5,8(s0)
    2e3c:	0004c663          	bltz	s1,2e48 <fl_fseek+0xa0>
    2e40:	00f484b3          	add	s1,s1,a5
    2e44:	fd9ff06f          	j	2e1c <fl_fseek+0x74>
    2e48:	40900733          	neg	a4,s1
    2e4c:	02e7fe63          	bgeu	a5,a4,2e88 <fl_fseek+0xe0>
    2e50:	00042423          	sw	zero,8(s0)
    2e54:	00000513          	li	a0,0
    2e58:	0409a783          	lw	a5,64(s3)
    2e5c:	00078863          	beqz	a5,2e6c <fl_fseek+0xc4>
    2e60:	00a12623          	sw	a0,12(sp)
    2e64:	000780e7          	jalr	a5
    2e68:	00c12503          	lw	a0,12(sp)
    2e6c:	02c12083          	lw	ra,44(sp)
    2e70:	02812403          	lw	s0,40(sp)
    2e74:	02412483          	lw	s1,36(sp)
    2e78:	02012903          	lw	s2,32(sp)
    2e7c:	01c12983          	lw	s3,28(sp)
    2e80:	03010113          	addi	sp,sp,48
    2e84:	00008067          	ret
    2e88:	00f484b3          	add	s1,s1,a5
    2e8c:	00942423          	sw	s1,8(s0)
    2e90:	fc5ff06f          	j	2e54 <fl_fseek+0xac>
    2e94:	00200793          	li	a5,2
    2e98:	fff00513          	li	a0,-1
    2e9c:	faf91ee3          	bne	s2,a5,2e58 <fl_fseek+0xb0>
    2ea0:	00c42783          	lw	a5,12(s0)
    2ea4:	f85ff06f          	j	2e28 <fl_fseek+0x80>

00002ea8 <fl_fgetpos>:
    2ea8:	06050663          	beqz	a0,2f14 <fl_fgetpos+0x6c>
    2eac:	000077b7          	lui	a5,0x7
    2eb0:	a3c78713          	addi	a4,a5,-1476 # 6a3c <_fs>
    2eb4:	03c72703          	lw	a4,60(a4)
    2eb8:	ff010113          	addi	sp,sp,-16
    2ebc:	00812423          	sw	s0,8(sp)
    2ec0:	00912223          	sw	s1,4(sp)
    2ec4:	01212023          	sw	s2,0(sp)
    2ec8:	00112623          	sw	ra,12(sp)
    2ecc:	00050493          	mv	s1,a0
    2ed0:	00058913          	mv	s2,a1
    2ed4:	a3c78413          	addi	s0,a5,-1476
    2ed8:	00070463          	beqz	a4,2ee0 <fl_fgetpos+0x38>
    2edc:	000700e7          	jalr	a4
    2ee0:	0084a783          	lw	a5,8(s1)
    2ee4:	00f92023          	sw	a5,0(s2)
    2ee8:	04042783          	lw	a5,64(s0)
    2eec:	02079063          	bnez	a5,2f0c <fl_fgetpos+0x64>
    2ef0:	00c12083          	lw	ra,12(sp)
    2ef4:	00812403          	lw	s0,8(sp)
    2ef8:	00412483          	lw	s1,4(sp)
    2efc:	00012903          	lw	s2,0(sp)
    2f00:	00000513          	li	a0,0
    2f04:	01010113          	addi	sp,sp,16
    2f08:	00008067          	ret
    2f0c:	000780e7          	jalr	a5
    2f10:	fe1ff06f          	j	2ef0 <fl_fgetpos+0x48>
    2f14:	fff00513          	li	a0,-1
    2f18:	00008067          	ret

00002f1c <fl_ftell>:
    2f1c:	fe010113          	addi	sp,sp,-32
    2f20:	00c10593          	addi	a1,sp,12
    2f24:	00112e23          	sw	ra,28(sp)
    2f28:	00012623          	sw	zero,12(sp)
    2f2c:	00000097          	auipc	ra,0x0
    2f30:	f7c080e7          	jalr	-132(ra) # 2ea8 <fl_fgetpos>
    2f34:	01c12083          	lw	ra,28(sp)
    2f38:	00c12503          	lw	a0,12(sp)
    2f3c:	02010113          	addi	sp,sp,32
    2f40:	00008067          	ret

00002f44 <fl_closedir>:
    2f44:	00000513          	li	a0,0
    2f48:	00008067          	ret

00002f4c <fatfs_lfn_cache_entry>:
    2f4c:	0005c783          	lbu	a5,0(a1)
    2f50:	01300693          	li	a3,19
    2f54:	01f7f793          	andi	a5,a5,31
    2f58:	fff78713          	addi	a4,a5,-1
    2f5c:	0ff77613          	zext.b	a2,a4
    2f60:	0ac6ea63          	bltu	a3,a2,3014 <fatfs_lfn_cache_entry+0xc8>
    2f64:	10554683          	lbu	a3,261(a0)
    2f68:	00069463          	bnez	a3,2f70 <fatfs_lfn_cache_entry+0x24>
    2f6c:	10f502a3          	sb	a5,261(a0)
    2f70:	00171793          	slli	a5,a4,0x1
    2f74:	00e787b3          	add	a5,a5,a4
    2f78:	0015c683          	lbu	a3,1(a1)
    2f7c:	00279793          	slli	a5,a5,0x2
    2f80:	00e787b3          	add	a5,a5,a4
    2f84:	00f50533          	add	a0,a0,a5
    2f88:	00d50023          	sb	a3,0(a0)
    2f8c:	0035c783          	lbu	a5,3(a1)
    2f90:	0ff00713          	li	a4,255
    2f94:	02000693          	li	a3,32
    2f98:	00f500a3          	sb	a5,1(a0)
    2f9c:	0055c783          	lbu	a5,5(a1)
    2fa0:	00f50123          	sb	a5,2(a0)
    2fa4:	0075c783          	lbu	a5,7(a1)
    2fa8:	00f501a3          	sb	a5,3(a0)
    2fac:	0095c783          	lbu	a5,9(a1)
    2fb0:	00f50223          	sb	a5,4(a0)
    2fb4:	00e5c783          	lbu	a5,14(a1)
    2fb8:	00f502a3          	sb	a5,5(a0)
    2fbc:	0105c783          	lbu	a5,16(a1)
    2fc0:	00f50323          	sb	a5,6(a0)
    2fc4:	0125c783          	lbu	a5,18(a1)
    2fc8:	00f503a3          	sb	a5,7(a0)
    2fcc:	0145c783          	lbu	a5,20(a1)
    2fd0:	00f50423          	sb	a5,8(a0)
    2fd4:	0165c783          	lbu	a5,22(a1)
    2fd8:	00f504a3          	sb	a5,9(a0)
    2fdc:	0185c783          	lbu	a5,24(a1)
    2fe0:	00f50523          	sb	a5,10(a0)
    2fe4:	01c5c783          	lbu	a5,28(a1)
    2fe8:	00f505a3          	sb	a5,11(a0)
    2fec:	01e5c783          	lbu	a5,30(a1)
    2ff0:	00f50623          	sb	a5,12(a0)
    2ff4:	00d00793          	li	a5,13
    2ff8:	00054603          	lbu	a2,0(a0)
    2ffc:	00e61463          	bne	a2,a4,3004 <fatfs_lfn_cache_entry+0xb8>
    3000:	00d50023          	sb	a3,0(a0)
    3004:	fff78793          	addi	a5,a5,-1
    3008:	0ff7f793          	zext.b	a5,a5
    300c:	00150513          	addi	a0,a0,1
    3010:	fe0794e3          	bnez	a5,2ff8 <fatfs_lfn_cache_entry+0xac>
    3014:	00008067          	ret

00003018 <fatfs_lfn_cache_get>:
    3018:	10554703          	lbu	a4,261(a0)
    301c:	01400793          	li	a5,20
    3020:	00f71663          	bne	a4,a5,302c <fatfs_lfn_cache_get+0x14>
    3024:	10050223          	sb	zero,260(a0)
    3028:	00008067          	ret
    302c:	02070063          	beqz	a4,304c <fatfs_lfn_cache_get+0x34>
    3030:	00171793          	slli	a5,a4,0x1
    3034:	00e787b3          	add	a5,a5,a4
    3038:	00279793          	slli	a5,a5,0x2
    303c:	00e787b3          	add	a5,a5,a4
    3040:	00f507b3          	add	a5,a0,a5
    3044:	00078023          	sb	zero,0(a5)
    3048:	00008067          	ret
    304c:	00050023          	sb	zero,0(a0)
    3050:	00008067          	ret

00003054 <fatfs_entry_lfn_text>:
    3054:	00b54503          	lbu	a0,11(a0)
    3058:	00f57513          	andi	a0,a0,15
    305c:	ff150513          	addi	a0,a0,-15
    3060:	00153513          	seqz	a0,a0
    3064:	00008067          	ret

00003068 <fatfs_entry_lfn_invalid>:
    3068:	00054703          	lbu	a4,0(a0)
    306c:	00050793          	mv	a5,a0
    3070:	02070463          	beqz	a4,3098 <fatfs_entry_lfn_invalid+0x30>
    3074:	0e500693          	li	a3,229
    3078:	00100513          	li	a0,1
    307c:	02d70063          	beq	a4,a3,309c <fatfs_entry_lfn_invalid+0x34>
    3080:	00b7c783          	lbu	a5,11(a5)
    3084:	00800713          	li	a4,8
    3088:	00e78a63          	beq	a5,a4,309c <fatfs_entry_lfn_invalid+0x34>
    308c:	0067f793          	andi	a5,a5,6
    3090:	00f03533          	snez	a0,a5
    3094:	00008067          	ret
    3098:	00100513          	li	a0,1
    309c:	00008067          	ret

000030a0 <fatfs_entry_lfn_exists>:
    30a0:	00b5c783          	lbu	a5,11(a1)
    30a4:	00f00693          	li	a3,15
    30a8:	00050713          	mv	a4,a0
    30ac:	02d78a63          	beq	a5,a3,30e0 <fatfs_entry_lfn_exists+0x40>
    30b0:	0005c683          	lbu	a3,0(a1)
    30b4:	00000513          	li	a0,0
    30b8:	02068663          	beqz	a3,30e4 <fatfs_entry_lfn_exists+0x44>
    30bc:	0e500613          	li	a2,229
    30c0:	02c68263          	beq	a3,a2,30e4 <fatfs_entry_lfn_exists+0x44>
    30c4:	00800693          	li	a3,8
    30c8:	00d78e63          	beq	a5,a3,30e4 <fatfs_entry_lfn_exists+0x44>
    30cc:	0067f793          	andi	a5,a5,6
    30d0:	00079a63          	bnez	a5,30e4 <fatfs_entry_lfn_exists+0x44>
    30d4:	10574503          	lbu	a0,261(a4)
    30d8:	00a03533          	snez	a0,a0
    30dc:	00008067          	ret
    30e0:	00000513          	li	a0,0
    30e4:	00008067          	ret

000030e8 <fatfs_entry_sfn_only>:
    30e8:	00b54783          	lbu	a5,11(a0)
    30ec:	00f00713          	li	a4,15
    30f0:	02e78663          	beq	a5,a4,311c <fatfs_entry_sfn_only+0x34>
    30f4:	00054703          	lbu	a4,0(a0)
    30f8:	00000513          	li	a0,0
    30fc:	02070263          	beqz	a4,3120 <fatfs_entry_sfn_only+0x38>
    3100:	0e500693          	li	a3,229
    3104:	00d70e63          	beq	a4,a3,3120 <fatfs_entry_sfn_only+0x38>
    3108:	00800713          	li	a4,8
    310c:	00e78a63          	beq	a5,a4,3120 <fatfs_entry_sfn_only+0x38>
    3110:	0067f793          	andi	a5,a5,6
    3114:	0017b513          	seqz	a0,a5
    3118:	00008067          	ret
    311c:	00000513          	li	a0,0
    3120:	00008067          	ret

00003124 <fatfs_entry_is_dir>:
    3124:	00b54503          	lbu	a0,11(a0)
    3128:	00455513          	srli	a0,a0,0x4
    312c:	00157513          	andi	a0,a0,1
    3130:	00008067          	ret

00003134 <fatfs_entry_is_file>:
    3134:	00b54503          	lbu	a0,11(a0)
    3138:	00555513          	srli	a0,a0,0x5
    313c:	00157513          	andi	a0,a0,1
    3140:	00008067          	ret

00003144 <fatfs_lfn_entries_required>:
    3144:	ff010113          	addi	sp,sp,-16
    3148:	00112623          	sw	ra,12(sp)
    314c:	fffff097          	auipc	ra,0xfffff
    3150:	050080e7          	jalr	80(ra) # 219c <strlen>
    3154:	00050a63          	beqz	a0,3168 <fatfs_lfn_entries_required+0x24>
    3158:	00d00593          	li	a1,13
    315c:	00c50513          	addi	a0,a0,12
    3160:	fffff097          	auipc	ra,0xfffff
    3164:	f48080e7          	jalr	-184(ra) # 20a8 <__divsi3>
    3168:	00c12083          	lw	ra,12(sp)
    316c:	01010113          	addi	sp,sp,16
    3170:	00008067          	ret

00003174 <fatfs_filename_to_lfn>:
    3174:	fa010113          	addi	sp,sp,-96
    3178:	04912a23          	sw	s1,84(sp)
    317c:	00058493          	mv	s1,a1
    3180:	000065b7          	lui	a1,0x6
    3184:	1cc58593          	addi	a1,a1,460 # 61cc <font+0x1e0>
    3188:	05212823          	sw	s2,80(sp)
    318c:	05312623          	sw	s3,76(sp)
    3190:	00060913          	mv	s2,a2
    3194:	00050993          	mv	s3,a0
    3198:	03400613          	li	a2,52
    319c:	00c10513          	addi	a0,sp,12
    31a0:	04112e23          	sw	ra,92(sp)
    31a4:	04812c23          	sw	s0,88(sp)
    31a8:	05412423          	sw	s4,72(sp)
    31ac:	05512223          	sw	s5,68(sp)
    31b0:	05612023          	sw	s6,64(sp)
    31b4:	00068b13          	mv	s6,a3
    31b8:	fffff097          	auipc	ra,0xfffff
    31bc:	fc0080e7          	jalr	-64(ra) # 2178 <memcpy>
    31c0:	00098513          	mv	a0,s3
    31c4:	fffff097          	auipc	ra,0xfffff
    31c8:	fd8080e7          	jalr	-40(ra) # 219c <strlen>
    31cc:	00050a93          	mv	s5,a0
    31d0:	00098513          	mv	a0,s3
    31d4:	00000097          	auipc	ra,0x0
    31d8:	f70080e7          	jalr	-144(ra) # 3144 <fatfs_lfn_entries_required>
    31dc:	00191793          	slli	a5,s2,0x1
    31e0:	012787b3          	add	a5,a5,s2
    31e4:	00279793          	slli	a5,a5,0x2
    31e8:	00050a13          	mv	s4,a0
    31ec:	02000613          	li	a2,32
    31f0:	00000593          	li	a1,0
    31f4:	00048513          	mv	a0,s1
    31f8:	01278433          	add	s0,a5,s2
    31fc:	fffff097          	auipc	ra,0xfffff
    3200:	f60080e7          	jalr	-160(ra) # 215c <memset>
    3204:	00190793          	addi	a5,s2,1
    3208:	fffa0a13          	addi	s4,s4,-1
    320c:	0ff7f793          	zext.b	a5,a5
    3210:	012a1463          	bne	s4,s2,3218 <fatfs_filename_to_lfn+0xa4>
    3214:	0407e793          	ori	a5,a5,64
    3218:	00f48023          	sb	a5,0(s1)
    321c:	00f00793          	li	a5,15
    3220:	00f485a3          	sb	a5,11(s1)
    3224:	016486a3          	sb	s6,13(s1)
    3228:	00c10713          	addi	a4,sp,12
    322c:	00040793          	mv	a5,s0
    3230:	fff00613          	li	a2,-1
    3234:	00072683          	lw	a3,0(a4)
    3238:	00d486b3          	add	a3,s1,a3
    323c:	0557d463          	bge	a5,s5,3284 <fatfs_filename_to_lfn+0x110>
    3240:	00f985b3          	add	a1,s3,a5
    3244:	0005c583          	lbu	a1,0(a1)
    3248:	00b68023          	sb	a1,0(a3)
    324c:	00470713          	addi	a4,a4,4
    3250:	04010693          	addi	a3,sp,64
    3254:	00178793          	addi	a5,a5,1
    3258:	fcd71ee3          	bne	a4,a3,3234 <fatfs_filename_to_lfn+0xc0>
    325c:	05c12083          	lw	ra,92(sp)
    3260:	05812403          	lw	s0,88(sp)
    3264:	05412483          	lw	s1,84(sp)
    3268:	05012903          	lw	s2,80(sp)
    326c:	04c12983          	lw	s3,76(sp)
    3270:	04812a03          	lw	s4,72(sp)
    3274:	04412a83          	lw	s5,68(sp)
    3278:	04012b03          	lw	s6,64(sp)
    327c:	06010113          	addi	sp,sp,96
    3280:	00008067          	ret
    3284:	01579663          	bne	a5,s5,3290 <fatfs_filename_to_lfn+0x11c>
    3288:	00068023          	sb	zero,0(a3)
    328c:	fc1ff06f          	j	324c <fatfs_filename_to_lfn+0xd8>
    3290:	00c68023          	sb	a2,0(a3)
    3294:	00c680a3          	sb	a2,1(a3)
    3298:	fb5ff06f          	j	324c <fatfs_filename_to_lfn+0xd8>

0000329c <fatfs_sfn_create_entry>:
    329c:	00000793          	li	a5,0
    32a0:	00b00813          	li	a6,11
    32a4:	00f508b3          	add	a7,a0,a5
    32a8:	0008c303          	lbu	t1,0(a7)
    32ac:	00f688b3          	add	a7,a3,a5
    32b0:	00178793          	addi	a5,a5,1
    32b4:	00688023          	sb	t1,0(a7)
    32b8:	ff0796e3          	bne	a5,a6,32a4 <fatfs_sfn_create_entry+0x8>
    32bc:	02000793          	li	a5,32
    32c0:	00f68823          	sb	a5,16(a3)
    32c4:	00f68923          	sb	a5,18(a3)
    32c8:	00f68c23          	sb	a5,24(a3)
    32cc:	000686a3          	sb	zero,13(a3)
    32d0:	00068723          	sb	zero,14(a3)
    32d4:	000687a3          	sb	zero,15(a3)
    32d8:	000688a3          	sb	zero,17(a3)
    32dc:	000689a3          	sb	zero,19(a3)
    32e0:	00068b23          	sb	zero,22(a3)
    32e4:	00068ba3          	sb	zero,23(a3)
    32e8:	00068ca3          	sb	zero,25(a3)
    32ec:	01000793          	li	a5,16
    32f0:	00071463          	bnez	a4,32f8 <fatfs_sfn_create_entry+0x5c>
    32f4:	02000793          	li	a5,32
    32f8:	00f685a3          	sb	a5,11(a3)
    32fc:	01065793          	srli	a5,a2,0x10
    3300:	00f68a23          	sb	a5,20(a3)
    3304:	0087d793          	srli	a5,a5,0x8
    3308:	00f68aa3          	sb	a5,21(a3)
    330c:	01061793          	slli	a5,a2,0x10
    3310:	0107d793          	srli	a5,a5,0x10
    3314:	0087d793          	srli	a5,a5,0x8
    3318:	00f68da3          	sb	a5,27(a3)
    331c:	0085d793          	srli	a5,a1,0x8
    3320:	00b68e23          	sb	a1,28(a3)
    3324:	00f68ea3          	sb	a5,29(a3)
    3328:	0105d793          	srli	a5,a1,0x10
    332c:	0185d593          	srli	a1,a1,0x18
    3330:	00068623          	sb	zero,12(a3)
    3334:	00c68d23          	sb	a2,26(a3)
    3338:	00f68f23          	sb	a5,30(a3)
    333c:	00b68fa3          	sb	a1,31(a3)
    3340:	00008067          	ret

00003344 <fatfs_lfn_create_sfn>:
    3344:	0005c703          	lbu	a4,0(a1)
    3348:	02e00793          	li	a5,46
    334c:	16f70663          	beq	a4,a5,34b8 <fatfs_lfn_create_sfn+0x174>
    3350:	fe010113          	addi	sp,sp,-32
    3354:	00912a23          	sw	s1,20(sp)
    3358:	00050493          	mv	s1,a0
    335c:	00058513          	mv	a0,a1
    3360:	00112e23          	sw	ra,28(sp)
    3364:	00812c23          	sw	s0,24(sp)
    3368:	01212823          	sw	s2,16(sp)
    336c:	00058413          	mv	s0,a1
    3370:	fffff097          	auipc	ra,0xfffff
    3374:	e2c080e7          	jalr	-468(ra) # 219c <strlen>
    3378:	00b00613          	li	a2,11
    337c:	02000593          	li	a1,32
    3380:	00050913          	mv	s2,a0
    3384:	00048513          	mv	a0,s1
    3388:	fffff097          	auipc	ra,0xfffff
    338c:	dd4080e7          	jalr	-556(ra) # 215c <memset>
    3390:	00300613          	li	a2,3
    3394:	02000593          	li	a1,32
    3398:	00c10513          	addi	a0,sp,12
    339c:	fffff097          	auipc	ra,0xfffff
    33a0:	dc0080e7          	jalr	-576(ra) # 215c <memset>
    33a4:	fff00713          	li	a4,-1
    33a8:	00000793          	li	a5,0
    33ac:	02e00693          	li	a3,46
    33b0:	0d27c263          	blt	a5,s2,3474 <fatfs_lfn_create_sfn+0x130>
    33b4:	fff00793          	li	a5,-1
    33b8:	0ef70863          	beq	a4,a5,34a8 <fatfs_lfn_create_sfn+0x164>
    33bc:	00170793          	addi	a5,a4,1
    33c0:	00c10693          	addi	a3,sp,12
    33c4:	00470613          	addi	a2,a4,4
    33c8:	0cf61263          	bne	a2,a5,348c <fatfs_lfn_create_sfn+0x148>
    33cc:	00000613          	li	a2,0
    33d0:	00000693          	li	a3,0
    33d4:	02000513          	li	a0,32
    33d8:	02e00813          	li	a6,46
    33dc:	01900893          	li	a7,25
    33e0:	00800313          	li	t1,8
    33e4:	02e6dc63          	bge	a3,a4,341c <fatfs_lfn_create_sfn+0xd8>
    33e8:	00d407b3          	add	a5,s0,a3
    33ec:	0007c783          	lbu	a5,0(a5)
    33f0:	0ca78063          	beq	a5,a0,34b0 <fatfs_lfn_create_sfn+0x16c>
    33f4:	0b078e63          	beq	a5,a6,34b0 <fatfs_lfn_create_sfn+0x16c>
    33f8:	f9f78593          	addi	a1,a5,-97
    33fc:	0ff5f593          	zext.b	a1,a1
    3400:	00c48e33          	add	t3,s1,a2
    3404:	00160613          	addi	a2,a2,1
    3408:	00b8e663          	bltu	a7,a1,3414 <fatfs_lfn_create_sfn+0xd0>
    340c:	fe078793          	addi	a5,a5,-32
    3410:	0ff7f793          	zext.b	a5,a5
    3414:	00fe0023          	sb	a5,0(t3)
    3418:	08661c63          	bne	a2,t1,34b0 <fatfs_lfn_create_sfn+0x16c>
    341c:	00c10793          	addi	a5,sp,12
    3420:	00800693          	li	a3,8
    3424:	01900513          	li	a0,25
    3428:	00b00593          	li	a1,11
    342c:	0007c703          	lbu	a4,0(a5)
    3430:	f9f70613          	addi	a2,a4,-97
    3434:	0ff67613          	zext.b	a2,a2
    3438:	00c56663          	bltu	a0,a2,3444 <fatfs_lfn_create_sfn+0x100>
    343c:	fe070713          	addi	a4,a4,-32
    3440:	0ff77713          	zext.b	a4,a4
    3444:	00d48633          	add	a2,s1,a3
    3448:	00e60023          	sb	a4,0(a2)
    344c:	00168693          	addi	a3,a3,1
    3450:	00178793          	addi	a5,a5,1
    3454:	fcb69ce3          	bne	a3,a1,342c <fatfs_lfn_create_sfn+0xe8>
    3458:	01c12083          	lw	ra,28(sp)
    345c:	01812403          	lw	s0,24(sp)
    3460:	01412483          	lw	s1,20(sp)
    3464:	01012903          	lw	s2,16(sp)
    3468:	00100513          	li	a0,1
    346c:	02010113          	addi	sp,sp,32
    3470:	00008067          	ret
    3474:	00f40633          	add	a2,s0,a5
    3478:	00064603          	lbu	a2,0(a2)
    347c:	00d61463          	bne	a2,a3,3484 <fatfs_lfn_create_sfn+0x140>
    3480:	00078713          	mv	a4,a5
    3484:	00178793          	addi	a5,a5,1
    3488:	f29ff06f          	j	33b0 <fatfs_lfn_create_sfn+0x6c>
    348c:	0127d863          	bge	a5,s2,349c <fatfs_lfn_create_sfn+0x158>
    3490:	00f405b3          	add	a1,s0,a5
    3494:	0005c583          	lbu	a1,0(a1)
    3498:	00b68023          	sb	a1,0(a3)
    349c:	00178793          	addi	a5,a5,1
    34a0:	00168693          	addi	a3,a3,1
    34a4:	f25ff06f          	j	33c8 <fatfs_lfn_create_sfn+0x84>
    34a8:	00090713          	mv	a4,s2
    34ac:	f21ff06f          	j	33cc <fatfs_lfn_create_sfn+0x88>
    34b0:	00168693          	addi	a3,a3,1
    34b4:	f31ff06f          	j	33e4 <fatfs_lfn_create_sfn+0xa0>
    34b8:	00000513          	li	a0,0
    34bc:	00008067          	ret

000034c0 <fatfs_lfn_generate_tail>:
    34c0:	000187b7          	lui	a5,0x18
    34c4:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    34c8:	16c7e463          	bltu	a5,a2,3630 <fatfs_lfn_generate_tail+0x170>
    34cc:	fa010113          	addi	sp,sp,-96
    34d0:	04812c23          	sw	s0,88(sp)
    34d4:	04912a23          	sw	s1,84(sp)
    34d8:	05412423          	sw	s4,72(sp)
    34dc:	00050493          	mv	s1,a0
    34e0:	00058a13          	mv	s4,a1
    34e4:	00060413          	mv	s0,a2
    34e8:	00000593          	li	a1,0
    34ec:	00c00613          	li	a2,12
    34f0:	00410513          	addi	a0,sp,4
    34f4:	04112e23          	sw	ra,92(sp)
    34f8:	05312623          	sw	s3,76(sp)
    34fc:	05512223          	sw	s5,68(sp)
    3500:	03712e23          	sw	s7,60(sp)
    3504:	05212823          	sw	s2,80(sp)
    3508:	05612023          	sw	s6,64(sp)
    350c:	fffff097          	auipc	ra,0xfffff
    3510:	c50080e7          	jalr	-944(ra) # 215c <memset>
    3514:	000065b7          	lui	a1,0x6
    3518:	07e00793          	li	a5,126
    351c:	01100613          	li	a2,17
    3520:	f8458593          	addi	a1,a1,-124 # 5f84 <LEDS+0x164>
    3524:	01c10513          	addi	a0,sp,28
    3528:	01010993          	addi	s3,sp,16
    352c:	00f10223          	sb	a5,4(sp)
    3530:	00098a93          	mv	s5,s3
    3534:	fffff097          	auipc	ra,0xfffff
    3538:	c44080e7          	jalr	-956(ra) # 2178 <memcpy>
    353c:	00900b93          	li	s7,9
    3540:	00a00593          	li	a1,10
    3544:	00040513          	mv	a0,s0
    3548:	fffff097          	auipc	ra,0xfffff
    354c:	bb0080e7          	jalr	-1104(ra) # 20f8 <__umodsi3>
    3550:	03050793          	addi	a5,a0,48
    3554:	00278533          	add	a0,a5,sp
    3558:	fec54783          	lbu	a5,-20(a0)
    355c:	00098913          	mv	s2,s3
    3560:	00040513          	mv	a0,s0
    3564:	00a00593          	li	a1,10
    3568:	00f98023          	sb	a5,0(s3)
    356c:	00040b13          	mv	s6,s0
    3570:	fffff097          	auipc	ra,0xfffff
    3574:	b40080e7          	jalr	-1216(ra) # 20b0 <__udivsi3>
    3578:	00198993          	addi	s3,s3,1
    357c:	00050413          	mv	s0,a0
    3580:	fd6be0e3          	bltu	s7,s6,3540 <fatfs_lfn_generate_tail+0x80>
    3584:	00098023          	sb	zero,0(s3)
    3588:	00410713          	addi	a4,sp,4
    358c:	00090793          	mv	a5,s2
    3590:	00170713          	addi	a4,a4,1
    3594:	0957f663          	bgeu	a5,s5,3620 <fatfs_lfn_generate_tail+0x160>
    3598:	00f10713          	addi	a4,sp,15
    359c:	00000793          	li	a5,0
    35a0:	00e96663          	bltu	s2,a4,35ac <fatfs_lfn_generate_tail+0xec>
    35a4:	41590933          	sub	s2,s2,s5
    35a8:	00190793          	addi	a5,s2,1
    35ac:	03078793          	addi	a5,a5,48
    35b0:	002787b3          	add	a5,a5,sp
    35b4:	000a0593          	mv	a1,s4
    35b8:	fc078aa3          	sb	zero,-43(a5)
    35bc:	00b00613          	li	a2,11
    35c0:	00048513          	mv	a0,s1
    35c4:	fffff097          	auipc	ra,0xfffff
    35c8:	bb4080e7          	jalr	-1100(ra) # 2178 <memcpy>
    35cc:	00410513          	addi	a0,sp,4
    35d0:	fffff097          	auipc	ra,0xfffff
    35d4:	bcc080e7          	jalr	-1076(ra) # 219c <strlen>
    35d8:	40a484b3          	sub	s1,s1,a0
    35dc:	00050613          	mv	a2,a0
    35e0:	00410593          	addi	a1,sp,4
    35e4:	00848513          	addi	a0,s1,8
    35e8:	fffff097          	auipc	ra,0xfffff
    35ec:	b90080e7          	jalr	-1136(ra) # 2178 <memcpy>
    35f0:	05c12083          	lw	ra,92(sp)
    35f4:	05812403          	lw	s0,88(sp)
    35f8:	05412483          	lw	s1,84(sp)
    35fc:	05012903          	lw	s2,80(sp)
    3600:	04c12983          	lw	s3,76(sp)
    3604:	04812a03          	lw	s4,72(sp)
    3608:	04412a83          	lw	s5,68(sp)
    360c:	04012b03          	lw	s6,64(sp)
    3610:	03c12b83          	lw	s7,60(sp)
    3614:	00100513          	li	a0,1
    3618:	06010113          	addi	sp,sp,96
    361c:	00008067          	ret
    3620:	0007c683          	lbu	a3,0(a5)
    3624:	fff78793          	addi	a5,a5,-1
    3628:	00d70023          	sb	a3,0(a4)
    362c:	f65ff06f          	j	3590 <fatfs_lfn_generate_tail+0xd0>
    3630:	00000513          	li	a0,0
    3634:	00008067          	ret

00003638 <fatfs_total_path_levels>:
    3638:	00050793          	mv	a5,a0
    363c:	06050463          	beqz	a0,36a4 <fatfs_total_path_levels+0x6c>
    3640:	00054703          	lbu	a4,0(a0)
    3644:	02f00693          	li	a3,47
    3648:	00d71863          	bne	a4,a3,3658 <fatfs_total_path_levels+0x20>
    364c:	00150793          	addi	a5,a0,1
    3650:	00000513          	li	a0,0
    3654:	0400006f          	j	3694 <fatfs_total_path_levels+0x5c>
    3658:	00154683          	lbu	a3,1(a0)
    365c:	03a00713          	li	a4,58
    3660:	00e68a63          	beq	a3,a4,3674 <fatfs_total_path_levels+0x3c>
    3664:	00254683          	lbu	a3,2(a0)
    3668:	05c00713          	li	a4,92
    366c:	fff00513          	li	a0,-1
    3670:	02e69c63          	bne	a3,a4,36a8 <fatfs_total_path_levels+0x70>
    3674:	00378793          	addi	a5,a5,3
    3678:	05c00713          	li	a4,92
    367c:	fd5ff06f          	j	3650 <fatfs_total_path_levels+0x18>
    3680:	00178793          	addi	a5,a5,1
    3684:	00e68663          	beq	a3,a4,3690 <fatfs_total_path_levels+0x58>
    3688:	0007c683          	lbu	a3,0(a5)
    368c:	fe069ae3          	bnez	a3,3680 <fatfs_total_path_levels+0x48>
    3690:	00150513          	addi	a0,a0,1
    3694:	0007c683          	lbu	a3,0(a5)
    3698:	fe0698e3          	bnez	a3,3688 <fatfs_total_path_levels+0x50>
    369c:	fff50513          	addi	a0,a0,-1
    36a0:	00008067          	ret
    36a4:	fff00513          	li	a0,-1
    36a8:	00008067          	ret

000036ac <fatfs_get_substring>:
    36ac:	0c050c63          	beqz	a0,3784 <fatfs_get_substring+0xd8>
    36b0:	fe010113          	addi	sp,sp,-32
    36b4:	00912a23          	sw	s1,20(sp)
    36b8:	00112e23          	sw	ra,28(sp)
    36bc:	00812c23          	sw	s0,24(sp)
    36c0:	01212823          	sw	s2,16(sp)
    36c4:	01312623          	sw	s3,12(sp)
    36c8:	01412423          	sw	s4,8(sp)
    36cc:	00050793          	mv	a5,a0
    36d0:	00068493          	mv	s1,a3
    36d4:	fff00513          	li	a0,-1
    36d8:	06d05a63          	blez	a3,374c <fatfs_get_substring+0xa0>
    36dc:	0007c983          	lbu	s3,0(a5)
    36e0:	02f00713          	li	a4,47
    36e4:	00058a13          	mv	s4,a1
    36e8:	00060913          	mv	s2,a2
    36ec:	00178413          	addi	s0,a5,1
    36f0:	02e98463          	beq	s3,a4,3718 <fatfs_get_substring+0x6c>
    36f4:	0017c683          	lbu	a3,1(a5)
    36f8:	03a00713          	li	a4,58
    36fc:	00e68a63          	beq	a3,a4,3710 <fatfs_get_substring+0x64>
    3700:	0027c683          	lbu	a3,2(a5)
    3704:	05c00713          	li	a4,92
    3708:	fff00513          	li	a0,-1
    370c:	04e69063          	bne	a3,a4,374c <fatfs_get_substring+0xa0>
    3710:	00378413          	addi	s0,a5,3
    3714:	05c00993          	li	s3,92
    3718:	00040513          	mv	a0,s0
    371c:	fffff097          	auipc	ra,0xfffff
    3720:	a80080e7          	jalr	-1408(ra) # 219c <strlen>
    3724:	00000713          	li	a4,0
    3728:	00000693          	li	a3,0
    372c:	00000793          	li	a5,0
    3730:	fff48493          	addi	s1,s1,-1
    3734:	00e905b3          	add	a1,s2,a4
    3738:	02a7ca63          	blt	a5,a0,376c <fatfs_get_substring+0xc0>
    373c:	00058023          	sb	zero,0(a1)
    3740:	00094503          	lbu	a0,0(s2)
    3744:	00153513          	seqz	a0,a0
    3748:	40a00533          	neg	a0,a0
    374c:	01c12083          	lw	ra,28(sp)
    3750:	01812403          	lw	s0,24(sp)
    3754:	01412483          	lw	s1,20(sp)
    3758:	01012903          	lw	s2,16(sp)
    375c:	00c12983          	lw	s3,12(sp)
    3760:	00812a03          	lw	s4,8(sp)
    3764:	02010113          	addi	sp,sp,32
    3768:	00008067          	ret
    376c:	00f40633          	add	a2,s0,a5
    3770:	00064603          	lbu	a2,0(a2)
    3774:	01361c63          	bne	a2,s3,378c <fatfs_get_substring+0xe0>
    3778:	00168693          	addi	a3,a3,1
    377c:	00178793          	addi	a5,a5,1
    3780:	fb5ff06f          	j	3734 <fatfs_get_substring+0x88>
    3784:	fff00513          	li	a0,-1
    3788:	00008067          	ret
    378c:	ff4698e3          	bne	a3,s4,377c <fatfs_get_substring+0xd0>
    3790:	fe9756e3          	bge	a4,s1,377c <fatfs_get_substring+0xd0>
    3794:	00170713          	addi	a4,a4,1
    3798:	00c58023          	sb	a2,0(a1)
    379c:	fe1ff06f          	j	377c <fatfs_get_substring+0xd0>

000037a0 <fatfs_split_path>:
    37a0:	fd010113          	addi	sp,sp,-48
    37a4:	02912223          	sw	s1,36(sp)
    37a8:	01312e23          	sw	s3,28(sp)
    37ac:	01412c23          	sw	s4,24(sp)
    37b0:	01512a23          	sw	s5,20(sp)
    37b4:	02112623          	sw	ra,44(sp)
    37b8:	00068a93          	mv	s5,a3
    37bc:	02812423          	sw	s0,40(sp)
    37c0:	03212023          	sw	s2,32(sp)
    37c4:	00050993          	mv	s3,a0
    37c8:	00058493          	mv	s1,a1
    37cc:	00060a13          	mv	s4,a2
    37d0:	00e12623          	sw	a4,12(sp)
    37d4:	00000097          	auipc	ra,0x0
    37d8:	e64080e7          	jalr	-412(ra) # 3638 <fatfs_total_path_levels>
    37dc:	fff00793          	li	a5,-1
    37e0:	00c12683          	lw	a3,12(sp)
    37e4:	02f51863          	bne	a0,a5,3814 <fatfs_split_path+0x74>
    37e8:	fff00913          	li	s2,-1
    37ec:	02c12083          	lw	ra,44(sp)
    37f0:	02812403          	lw	s0,40(sp)
    37f4:	02412483          	lw	s1,36(sp)
    37f8:	01c12983          	lw	s3,28(sp)
    37fc:	01812a03          	lw	s4,24(sp)
    3800:	01412a83          	lw	s5,20(sp)
    3804:	00090513          	mv	a0,s2
    3808:	02012903          	lw	s2,32(sp)
    380c:	03010113          	addi	sp,sp,48
    3810:	00008067          	ret
    3814:	00050593          	mv	a1,a0
    3818:	00050413          	mv	s0,a0
    381c:	000a8613          	mv	a2,s5
    3820:	00098513          	mv	a0,s3
    3824:	00000097          	auipc	ra,0x0
    3828:	e88080e7          	jalr	-376(ra) # 36ac <fatfs_get_substring>
    382c:	00050913          	mv	s2,a0
    3830:	fa051ce3          	bnez	a0,37e8 <fatfs_split_path+0x48>
    3834:	00041663          	bnez	s0,3840 <fatfs_split_path+0xa0>
    3838:	00048023          	sb	zero,0(s1)
    383c:	fb1ff06f          	j	37ec <fatfs_split_path+0x4c>
    3840:	00098513          	mv	a0,s3
    3844:	fffff097          	auipc	ra,0xfffff
    3848:	958080e7          	jalr	-1704(ra) # 219c <strlen>
    384c:	00050413          	mv	s0,a0
    3850:	000a8513          	mv	a0,s5
    3854:	fffff097          	auipc	ra,0xfffff
    3858:	948080e7          	jalr	-1720(ra) # 219c <strlen>
    385c:	40a40433          	sub	s0,s0,a0
    3860:	008a5463          	bge	s4,s0,3868 <fatfs_split_path+0xc8>
    3864:	000a0413          	mv	s0,s4
    3868:	00048513          	mv	a0,s1
    386c:	00040613          	mv	a2,s0
    3870:	00098593          	mv	a1,s3
    3874:	008484b3          	add	s1,s1,s0
    3878:	fffff097          	auipc	ra,0xfffff
    387c:	900080e7          	jalr	-1792(ra) # 2178 <memcpy>
    3880:	fe048fa3          	sb	zero,-1(s1)
    3884:	f69ff06f          	j	37ec <fatfs_split_path+0x4c>

00003888 <fatfs_compare_names>:
    3888:	fd010113          	addi	sp,sp,-48
    388c:	02112623          	sw	ra,44(sp)
    3890:	02812423          	sw	s0,40(sp)
    3894:	02912223          	sw	s1,36(sp)
    3898:	03212023          	sw	s2,32(sp)
    389c:	01312e23          	sw	s3,28(sp)
    38a0:	00058913          	mv	s2,a1
    38a4:	01412c23          	sw	s4,24(sp)
    38a8:	01512a23          	sw	s5,20(sp)
    38ac:	01612823          	sw	s6,16(sp)
    38b0:	00050a13          	mv	s4,a0
    38b4:	fffff097          	auipc	ra,0xfffff
    38b8:	0f0080e7          	jalr	240(ra) # 29a4 <FileString_GetExtension>
    38bc:	00050493          	mv	s1,a0
    38c0:	00090513          	mv	a0,s2
    38c4:	fffff097          	auipc	ra,0xfffff
    38c8:	0e0080e7          	jalr	224(ra) # 29a4 <FileString_GetExtension>
    38cc:	fff00793          	li	a5,-1
    38d0:	00050413          	mv	s0,a0
    38d4:	00000993          	li	s3,0
    38d8:	08f49a63          	bne	s1,a5,396c <fatfs_compare_names+0xe4>
    38dc:	0c951e63          	bne	a0,s1,39b8 <fatfs_compare_names+0x130>
    38e0:	000a0513          	mv	a0,s4
    38e4:	fffff097          	auipc	ra,0xfffff
    38e8:	8b8080e7          	jalr	-1864(ra) # 219c <strlen>
    38ec:	00050493          	mv	s1,a0
    38f0:	00090513          	mv	a0,s2
    38f4:	fffff097          	auipc	ra,0xfffff
    38f8:	8a8080e7          	jalr	-1880(ra) # 219c <strlen>
    38fc:	00050413          	mv	s0,a0
    3900:	fff48793          	addi	a5,s1,-1
    3904:	00fa07b3          	add	a5,s4,a5
    3908:	40978733          	sub	a4,a5,s1
    390c:	02000613          	li	a2,32
    3910:	00078693          	mv	a3,a5
    3914:	00e78863          	beq	a5,a4,3924 <fatfs_compare_names+0x9c>
    3918:	0007c583          	lbu	a1,0(a5)
    391c:	fff78793          	addi	a5,a5,-1
    3920:	0cc58263          	beq	a1,a2,39e4 <fatfs_compare_names+0x15c>
    3924:	fff40793          	addi	a5,s0,-1
    3928:	00f907b3          	add	a5,s2,a5
    392c:	40878733          	sub	a4,a5,s0
    3930:	02000613          	li	a2,32
    3934:	00078693          	mv	a3,a5
    3938:	00e78863          	beq	a5,a4,3948 <fatfs_compare_names+0xc0>
    393c:	0007c583          	lbu	a1,0(a5)
    3940:	fff78793          	addi	a5,a5,-1
    3944:	0ac58463          	beq	a1,a2,39ec <fatfs_compare_names+0x164>
    3948:	00000993          	li	s3,0
    394c:	06941663          	bne	s0,s1,39b8 <fatfs_compare_names+0x130>
    3950:	00040613          	mv	a2,s0
    3954:	00090593          	mv	a1,s2
    3958:	000a0513          	mv	a0,s4
    395c:	fffff097          	auipc	ra,0xfffff
    3960:	fd8080e7          	jalr	-40(ra) # 2934 <FileString_StrCmpNoCase>
    3964:	00153993          	seqz	s3,a0
    3968:	0500006f          	j	39b8 <fatfs_compare_names+0x130>
    396c:	04f50663          	beq	a0,a5,39b8 <fatfs_compare_names+0x130>
    3970:	00148a93          	addi	s5,s1,1
    3974:	015a0ab3          	add	s5,s4,s5
    3978:	00150b13          	addi	s6,a0,1
    397c:	000a8513          	mv	a0,s5
    3980:	fffff097          	auipc	ra,0xfffff
    3984:	81c080e7          	jalr	-2020(ra) # 219c <strlen>
    3988:	01690b33          	add	s6,s2,s6
    398c:	00a12623          	sw	a0,12(sp)
    3990:	000b0513          	mv	a0,s6
    3994:	fffff097          	auipc	ra,0xfffff
    3998:	808080e7          	jalr	-2040(ra) # 219c <strlen>
    399c:	00c12603          	lw	a2,12(sp)
    39a0:	00a61c63          	bne	a2,a0,39b8 <fatfs_compare_names+0x130>
    39a4:	000b0593          	mv	a1,s6
    39a8:	000a8513          	mv	a0,s5
    39ac:	fffff097          	auipc	ra,0xfffff
    39b0:	f88080e7          	jalr	-120(ra) # 2934 <FileString_StrCmpNoCase>
    39b4:	f40506e3          	beqz	a0,3900 <fatfs_compare_names+0x78>
    39b8:	02c12083          	lw	ra,44(sp)
    39bc:	02812403          	lw	s0,40(sp)
    39c0:	02412483          	lw	s1,36(sp)
    39c4:	02012903          	lw	s2,32(sp)
    39c8:	01812a03          	lw	s4,24(sp)
    39cc:	01412a83          	lw	s5,20(sp)
    39d0:	01012b03          	lw	s6,16(sp)
    39d4:	00098513          	mv	a0,s3
    39d8:	01c12983          	lw	s3,28(sp)
    39dc:	03010113          	addi	sp,sp,48
    39e0:	00008067          	ret
    39e4:	414684b3          	sub	s1,a3,s4
    39e8:	f29ff06f          	j	3910 <fatfs_compare_names+0x88>
    39ec:	41268433          	sub	s0,a3,s2
    39f0:	f45ff06f          	j	3934 <fatfs_compare_names+0xac>

000039f4 <_check_file_open>:
    39f4:	fe010113          	addi	sp,sp,-32
    39f8:	000067b7          	lui	a5,0x6
    39fc:	00812c23          	sw	s0,24(sp)
    3a00:	22c7a403          	lw	s0,556(a5) # 622c <_open_file_list>
    3a04:	00912a23          	sw	s1,20(sp)
    3a08:	01212823          	sw	s2,16(sp)
    3a0c:	01312623          	sw	s3,12(sp)
    3a10:	00112e23          	sw	ra,28(sp)
    3a14:	00050493          	mv	s1,a0
    3a18:	01450913          	addi	s2,a0,20
    3a1c:	11850993          	addi	s3,a0,280
    3a20:	02041263          	bnez	s0,3a44 <_check_file_open+0x50>
    3a24:	00000513          	li	a0,0
    3a28:	01c12083          	lw	ra,28(sp)
    3a2c:	01812403          	lw	s0,24(sp)
    3a30:	01412483          	lw	s1,20(sp)
    3a34:	01012903          	lw	s2,16(sp)
    3a38:	00c12983          	lw	s3,12(sp)
    3a3c:	02010113          	addi	sp,sp,32
    3a40:	00008067          	ret
    3a44:	bc440793          	addi	a5,s0,-1084
    3a48:	02f48663          	beq	s1,a5,3a74 <_check_file_open+0x80>
    3a4c:	00090593          	mv	a1,s2
    3a50:	bd840513          	addi	a0,s0,-1064
    3a54:	00000097          	auipc	ra,0x0
    3a58:	e34080e7          	jalr	-460(ra) # 3888 <fatfs_compare_names>
    3a5c:	00050c63          	beqz	a0,3a74 <_check_file_open+0x80>
    3a60:	00098593          	mv	a1,s3
    3a64:	cdc40513          	addi	a0,s0,-804
    3a68:	00000097          	auipc	ra,0x0
    3a6c:	e20080e7          	jalr	-480(ra) # 3888 <fatfs_compare_names>
    3a70:	00051663          	bnez	a0,3a7c <_check_file_open+0x88>
    3a74:	00442403          	lw	s0,4(s0)
    3a78:	fa9ff06f          	j	3a20 <_check_file_open+0x2c>
    3a7c:	00100513          	li	a0,1
    3a80:	fa9ff06f          	j	3a28 <_check_file_open+0x34>

00003a84 <fatfs_get_sfn_display_name>:
    3a84:	00000713          	li	a4,0
    3a88:	00c00613          	li	a2,12
    3a8c:	02000813          	li	a6,32
    3a90:	01900893          	li	a7,25
    3a94:	0005c783          	lbu	a5,0(a1)
    3a98:	00078463          	beqz	a5,3aa0 <fatfs_get_sfn_display_name+0x1c>
    3a9c:	00c71863          	bne	a4,a2,3aac <fatfs_get_sfn_display_name+0x28>
    3aa0:	00050023          	sb	zero,0(a0)
    3aa4:	00100513          	li	a0,1
    3aa8:	00008067          	ret
    3aac:	00158593          	addi	a1,a1,1
    3ab0:	ff0782e3          	beq	a5,a6,3a94 <fatfs_get_sfn_display_name+0x10>
    3ab4:	fbf78693          	addi	a3,a5,-65
    3ab8:	0ff6f693          	zext.b	a3,a3
    3abc:	00d8e663          	bltu	a7,a3,3ac8 <fatfs_get_sfn_display_name+0x44>
    3ac0:	02078793          	addi	a5,a5,32
    3ac4:	0ff7f793          	zext.b	a5,a5
    3ac8:	00f50023          	sb	a5,0(a0)
    3acc:	00170713          	addi	a4,a4,1
    3ad0:	00150513          	addi	a0,a0,1
    3ad4:	fc1ff06f          	j	3a94 <fatfs_get_sfn_display_name+0x10>

00003ad8 <fatfs_fat_init>:
    3ad8:	ff010113          	addi	sp,sp,-16
    3adc:	00812423          	sw	s0,8(sp)
    3ae0:	00912223          	sw	s1,4(sp)
    3ae4:	00112623          	sw	ra,12(sp)
    3ae8:	fff00793          	li	a5,-1
    3aec:	25850493          	addi	s1,a0,600
    3af0:	00050413          	mv	s0,a0
    3af4:	44f52c23          	sw	a5,1112(a0)
    3af8:	24052a23          	sw	zero,596(a0)
    3afc:	44052e23          	sw	zero,1116(a0)
    3b00:	20000613          	li	a2,512
    3b04:	00048513          	mv	a0,s1
    3b08:	00000593          	li	a1,0
    3b0c:	ffffe097          	auipc	ra,0xffffe
    3b10:	650080e7          	jalr	1616(ra) # 215c <memset>
    3b14:	25442783          	lw	a5,596(s0)
    3b18:	00c12083          	lw	ra,12(sp)
    3b1c:	24942a23          	sw	s1,596(s0)
    3b20:	46042023          	sw	zero,1120(s0)
    3b24:	46f42223          	sw	a5,1124(s0)
    3b28:	00812403          	lw	s0,8(sp)
    3b2c:	00412483          	lw	s1,4(sp)
    3b30:	01010113          	addi	sp,sp,16
    3b34:	00008067          	ret

00003b38 <fatfs_init>:
    3b38:	fd010113          	addi	sp,sp,-48
    3b3c:	02812423          	sw	s0,40(sp)
    3b40:	02112623          	sw	ra,44(sp)
    3b44:	02912223          	sw	s1,36(sp)
    3b48:	03212023          	sw	s2,32(sp)
    3b4c:	01312e23          	sw	s3,28(sp)
    3b50:	fff00793          	li	a5,-1
    3b54:	24f52223          	sw	a5,580(a0)
    3b58:	24052423          	sw	zero,584(a0)
    3b5c:	02052223          	sw	zero,36(a0)
    3b60:	00050413          	mv	s0,a0
    3b64:	00000097          	auipc	ra,0x0
    3b68:	f74080e7          	jalr	-140(ra) # 3ad8 <fatfs_fat_init>
    3b6c:	03442783          	lw	a5,52(s0)
    3b70:	02079263          	bnez	a5,3b94 <fatfs_init+0x5c>
    3b74:	fff00513          	li	a0,-1
    3b78:	02c12083          	lw	ra,44(sp)
    3b7c:	02812403          	lw	s0,40(sp)
    3b80:	02412483          	lw	s1,36(sp)
    3b84:	02012903          	lw	s2,32(sp)
    3b88:	01c12983          	lw	s3,28(sp)
    3b8c:	03010113          	addi	sp,sp,48
    3b90:	00008067          	ret
    3b94:	04440593          	addi	a1,s0,68
    3b98:	00100613          	li	a2,1
    3b9c:	00000513          	li	a0,0
    3ba0:	00b12623          	sw	a1,12(sp)
    3ba4:	000780e7          	jalr	a5
    3ba8:	fc0506e3          	beqz	a0,3b74 <fatfs_init+0x3c>
    3bac:	24042703          	lw	a4,576(s0)
    3bb0:	ffff07b7          	lui	a5,0xffff0
    3bb4:	00c12583          	lw	a1,12(sp)
    3bb8:	00e7f7b3          	and	a5,a5,a4
    3bbc:	aa550737          	lui	a4,0xaa550
    3bc0:	00e78663          	beq	a5,a4,3bcc <fatfs_init+0x94>
    3bc4:	ffd00513          	li	a0,-3
    3bc8:	fb1ff06f          	j	3b78 <fatfs_init+0x40>
    3bcc:	24245703          	lhu	a4,578(s0)
    3bd0:	0000b7b7          	lui	a5,0xb
    3bd4:	a5578793          	addi	a5,a5,-1451 # aa55 <_files+0x3bb1>
    3bd8:	ffc00513          	li	a0,-4
    3bdc:	f8f71ee3          	bne	a4,a5,3b78 <fatfs_init+0x40>
    3be0:	20644783          	lbu	a5,518(s0)
    3be4:	00600713          	li	a4,6
    3be8:	02f76463          	bltu	a4,a5,3c10 <fatfs_init+0xd8>
    3bec:	00400713          	li	a4,4
    3bf0:	00f76663          	bltu	a4,a5,3bfc <fatfs_init+0xc4>
    3bf4:	00000513          	li	a0,0
    3bf8:	02078663          	beqz	a5,3c24 <fatfs_init+0xec>
    3bfc:	20c45503          	lhu	a0,524(s0)
    3c00:	20a45783          	lhu	a5,522(s0)
    3c04:	01051513          	slli	a0,a0,0x10
    3c08:	00f56533          	or	a0,a0,a5
    3c0c:	0180006f          	j	3c24 <fatfs_init+0xec>
    3c10:	00c00713          	li	a4,12
    3c14:	12f76a63          	bltu	a4,a5,3d48 <fatfs_init+0x210>
    3c18:	00a00713          	li	a4,10
    3c1c:	00000513          	li	a0,0
    3c20:	fcf76ee3          	bltu	a4,a5,3bfc <fatfs_init+0xc4>
    3c24:	03442783          	lw	a5,52(s0)
    3c28:	00a42e23          	sw	a0,28(s0)
    3c2c:	00100613          	li	a2,1
    3c30:	000780e7          	jalr	a5
    3c34:	f40500e3          	beqz	a0,3b74 <fatfs_init+0x3c>
    3c38:	05044783          	lbu	a5,80(s0)
    3c3c:	04f44703          	lbu	a4,79(s0)
    3c40:	ffe00513          	li	a0,-2
    3c44:	00879793          	slli	a5,a5,0x8
    3c48:	00e7e7b3          	or	a5,a5,a4
    3c4c:	20000713          	li	a4,512
    3c50:	f2e794e3          	bne	a5,a4,3b78 <fatfs_init+0x40>
    3c54:	05644483          	lbu	s1,86(s0)
    3c58:	05544783          	lbu	a5,85(s0)
    3c5c:	05144983          	lbu	s3,81(s0)
    3c60:	00849493          	slli	s1,s1,0x8
    3c64:	05a45583          	lhu	a1,90(s0)
    3c68:	00f4e4b3          	or	s1,s1,a5
    3c6c:	01340023          	sb	s3,0(s0)
    3c70:	02941423          	sh	s1,40(s0)
    3c74:	05245903          	lhu	s2,82(s0)
    3c78:	05444503          	lbu	a0,84(s0)
    3c7c:	00059463          	bnez	a1,3c84 <fatfs_init+0x14c>
    3c80:	06842583          	lw	a1,104(s0)
    3c84:	07042783          	lw	a5,112(s0)
    3c88:	02b42023          	sw	a1,32(s0)
    3c8c:	00549493          	slli	s1,s1,0x5
    3c90:	00f42423          	sw	a5,8(s0)
    3c94:	07445783          	lhu	a5,116(s0)
    3c98:	1ff48493          	addi	s1,s1,511
    3c9c:	4094d493          	srai	s1,s1,0x9
    3ca0:	00f41c23          	sh	a5,24(s0)
    3ca4:	fffff097          	auipc	ra,0xfffff
    3ca8:	bfc080e7          	jalr	-1028(ra) # 28a0 <__mulsi3>
    3cac:	00a907b3          	add	a5,s2,a0
    3cb0:	00f42623          	sw	a5,12(s0)
    3cb4:	01c42783          	lw	a5,28(s0)
    3cb8:	24245703          	lhu	a4,578(s0)
    3cbc:	00942823          	sw	s1,16(s0)
    3cc0:	00f907b3          	add	a5,s2,a5
    3cc4:	00f42a23          	sw	a5,20(s0)
    3cc8:	00f507b3          	add	a5,a0,a5
    3ccc:	00f42223          	sw	a5,4(s0)
    3cd0:	0000b7b7          	lui	a5,0xb
    3cd4:	a5578793          	addi	a5,a5,-1451 # aa55 <_files+0x3bb1>
    3cd8:	eef716e3          	bne	a4,a5,3bc4 <fatfs_init+0x8c>
    3cdc:	05844783          	lbu	a5,88(s0)
    3ce0:	05744703          	lbu	a4,87(s0)
    3ce4:	00879793          	slli	a5,a5,0x8
    3ce8:	00e7e7b3          	or	a5,a5,a4
    3cec:	00079463          	bnez	a5,3cf4 <fatfs_init+0x1bc>
    3cf0:	06442783          	lw	a5,100(s0)
    3cf4:	00990933          	add	s2,s2,s1
    3cf8:	00a90533          	add	a0,s2,a0
    3cfc:	40a787b3          	sub	a5,a5,a0
    3d00:	ffb00513          	li	a0,-5
    3d04:	e6098ae3          	beqz	s3,3b78 <fatfs_init+0x40>
    3d08:	00078513          	mv	a0,a5
    3d0c:	00098593          	mv	a1,s3
    3d10:	ffffe097          	auipc	ra,0xffffe
    3d14:	3a0080e7          	jalr	928(ra) # 20b0 <__udivsi3>
    3d18:	00001737          	lui	a4,0x1
    3d1c:	00050793          	mv	a5,a0
    3d20:	ff470713          	addi	a4,a4,-12 # ff4 <play_file+0x76c>
    3d24:	ffb00513          	li	a0,-5
    3d28:	e4f778e3          	bgeu	a4,a5,3b78 <fatfs_init+0x40>
    3d2c:	00010737          	lui	a4,0x10
    3d30:	ff470713          	addi	a4,a4,-12 # fff4 <_files+0x9150>
    3d34:	02f76663          	bltu	a4,a5,3d60 <fatfs_init+0x228>
    3d38:	00042423          	sw	zero,8(s0)
    3d3c:	02042823          	sw	zero,48(s0)
    3d40:	00000513          	li	a0,0
    3d44:	e35ff06f          	j	3b78 <fatfs_init+0x40>
    3d48:	ff278793          	addi	a5,a5,-14
    3d4c:	0ff7f793          	zext.b	a5,a5
    3d50:	00100713          	li	a4,1
    3d54:	00000513          	li	a0,0
    3d58:	eaf772e3          	bgeu	a4,a5,3bfc <fatfs_init+0xc4>
    3d5c:	ec9ff06f          	j	3c24 <fatfs_init+0xec>
    3d60:	00100793          	li	a5,1
    3d64:	02f42823          	sw	a5,48(s0)
    3d68:	fd9ff06f          	j	3d40 <fatfs_init+0x208>

00003d6c <fl_attach_media>:
    3d6c:	000067b7          	lui	a5,0x6
    3d70:	2387a783          	lw	a5,568(a5) # 6238 <_filelib_init>
    3d74:	ff010113          	addi	sp,sp,-16
    3d78:	00812423          	sw	s0,8(sp)
    3d7c:	00912223          	sw	s1,4(sp)
    3d80:	00112623          	sw	ra,12(sp)
    3d84:	00050493          	mv	s1,a0
    3d88:	00058413          	mv	s0,a1
    3d8c:	00079663          	bnez	a5,3d98 <fl_attach_media+0x2c>
    3d90:	fffff097          	auipc	ra,0xfffff
    3d94:	fa8080e7          	jalr	-88(ra) # 2d38 <fl_init>
    3d98:	00007537          	lui	a0,0x7
    3d9c:	a3c50793          	addi	a5,a0,-1476 # 6a3c <_fs>
    3da0:	a3c50513          	addi	a0,a0,-1476
    3da4:	0287ac23          	sw	s0,56(a5)
    3da8:	0297aa23          	sw	s1,52(a5)
    3dac:	00000097          	auipc	ra,0x0
    3db0:	d8c080e7          	jalr	-628(ra) # 3b38 <fatfs_init>
    3db4:	00050413          	mv	s0,a0
    3db8:	02050863          	beqz	a0,3de8 <fl_attach_media+0x7c>
    3dbc:	00050593          	mv	a1,a0
    3dc0:	00006537          	lui	a0,0x6
    3dc4:	f9850513          	addi	a0,a0,-104 # 5f98 <LEDS+0x178>
    3dc8:	fffff097          	auipc	ra,0xfffff
    3dcc:	9a8080e7          	jalr	-1624(ra) # 2770 <printf>
    3dd0:	00c12083          	lw	ra,12(sp)
    3dd4:	00040513          	mv	a0,s0
    3dd8:	00812403          	lw	s0,8(sp)
    3ddc:	00412483          	lw	s1,4(sp)
    3de0:	01010113          	addi	sp,sp,16
    3de4:	00008067          	ret
    3de8:	000067b7          	lui	a5,0x6
    3dec:	00100713          	li	a4,1
    3df0:	22e7aa23          	sw	a4,564(a5) # 6234 <_filelib_valid>
    3df4:	fddff06f          	j	3dd0 <fl_attach_media+0x64>

00003df8 <fatfs_fat_purge>:
    3df8:	ff010113          	addi	sp,sp,-16
    3dfc:	00812423          	sw	s0,8(sp)
    3e00:	25452403          	lw	s0,596(a0)
    3e04:	00912223          	sw	s1,4(sp)
    3e08:	00112623          	sw	ra,12(sp)
    3e0c:	00050493          	mv	s1,a0
    3e10:	00041663          	bnez	s0,3e1c <fatfs_fat_purge+0x24>
    3e14:	00100513          	li	a0,1
    3e18:	0280006f          	j	3e40 <fatfs_fat_purge+0x48>
    3e1c:	20442783          	lw	a5,516(s0)
    3e20:	00079663          	bnez	a5,3e2c <fatfs_fat_purge+0x34>
    3e24:	20c42403          	lw	s0,524(s0)
    3e28:	fe9ff06f          	j	3e10 <fatfs_fat_purge+0x18>
    3e2c:	00040593          	mv	a1,s0
    3e30:	00048513          	mv	a0,s1
    3e34:	fffff097          	auipc	ra,0xfffff
    3e38:	b9c080e7          	jalr	-1124(ra) # 29d0 <fatfs_fat_writeback>
    3e3c:	fe0514e3          	bnez	a0,3e24 <fatfs_fat_purge+0x2c>
    3e40:	00c12083          	lw	ra,12(sp)
    3e44:	00812403          	lw	s0,8(sp)
    3e48:	00412483          	lw	s1,4(sp)
    3e4c:	01010113          	addi	sp,sp,16
    3e50:	00008067          	ret

00003e54 <fatfs_find_next_cluster>:
    3e54:	ff010113          	addi	sp,sp,-16
    3e58:	00812423          	sw	s0,8(sp)
    3e5c:	01212023          	sw	s2,0(sp)
    3e60:	00112623          	sw	ra,12(sp)
    3e64:	00912223          	sw	s1,4(sp)
    3e68:	00050913          	mv	s2,a0
    3e6c:	00200413          	li	s0,2
    3e70:	00058463          	beqz	a1,3e78 <fatfs_find_next_cluster+0x24>
    3e74:	00058413          	mv	s0,a1
    3e78:	03092783          	lw	a5,48(s2)
    3e7c:	00745493          	srli	s1,s0,0x7
    3e80:	00079463          	bnez	a5,3e88 <fatfs_find_next_cluster+0x34>
    3e84:	00845493          	srli	s1,s0,0x8
    3e88:	01492583          	lw	a1,20(s2)
    3e8c:	00090513          	mv	a0,s2
    3e90:	00b485b3          	add	a1,s1,a1
    3e94:	fffff097          	auipc	ra,0xfffff
    3e98:	bbc080e7          	jalr	-1092(ra) # 2a50 <fatfs_fat_read_sector>
    3e9c:	00050793          	mv	a5,a0
    3ea0:	fff00513          	li	a0,-1
    3ea4:	04078a63          	beqz	a5,3ef8 <fatfs_find_next_cluster+0xa4>
    3ea8:	03092703          	lw	a4,48(s2)
    3eac:	2087a783          	lw	a5,520(a5)
    3eb0:	06071063          	bnez	a4,3f10 <fatfs_find_next_cluster+0xbc>
    3eb4:	00849493          	slli	s1,s1,0x8
    3eb8:	40940433          	sub	s0,s0,s1
    3ebc:	00010737          	lui	a4,0x10
    3ec0:	00141413          	slli	s0,s0,0x1
    3ec4:	ffe70713          	addi	a4,a4,-2 # fffe <_files+0x915a>
    3ec8:	00e47433          	and	s0,s0,a4
    3ecc:	008787b3          	add	a5,a5,s0
    3ed0:	0017c503          	lbu	a0,1(a5)
    3ed4:	0007c783          	lbu	a5,0(a5)
    3ed8:	00851513          	slli	a0,a0,0x8
    3edc:	00f50533          	add	a0,a0,a5
    3ee0:	ffff07b7          	lui	a5,0xffff0
    3ee4:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    3ee8:	00f507b3          	add	a5,a0,a5
    3eec:	00700713          	li	a4,7
    3ef0:	00f76463          	bltu	a4,a5,3ef8 <fatfs_find_next_cluster+0xa4>
    3ef4:	fff00513          	li	a0,-1
    3ef8:	00c12083          	lw	ra,12(sp)
    3efc:	00812403          	lw	s0,8(sp)
    3f00:	00412483          	lw	s1,4(sp)
    3f04:	00012903          	lw	s2,0(sp)
    3f08:	01010113          	addi	sp,sp,16
    3f0c:	00008067          	ret
    3f10:	00749493          	slli	s1,s1,0x7
    3f14:	40940433          	sub	s0,s0,s1
    3f18:	00010737          	lui	a4,0x10
    3f1c:	ffc70713          	addi	a4,a4,-4 # fffc <_files+0x9158>
    3f20:	00241413          	slli	s0,s0,0x2
    3f24:	00e47433          	and	s0,s0,a4
    3f28:	008787b3          	add	a5,a5,s0
    3f2c:	0037c503          	lbu	a0,3(a5)
    3f30:	0027c703          	lbu	a4,2(a5)
    3f34:	01851513          	slli	a0,a0,0x18
    3f38:	01071713          	slli	a4,a4,0x10
    3f3c:	00e50533          	add	a0,a0,a4
    3f40:	0007c703          	lbu	a4,0(a5)
    3f44:	0017c783          	lbu	a5,1(a5)
    3f48:	00e50533          	add	a0,a0,a4
    3f4c:	00879793          	slli	a5,a5,0x8
    3f50:	00f50533          	add	a0,a0,a5
    3f54:	00451513          	slli	a0,a0,0x4
    3f58:	00455513          	srli	a0,a0,0x4
    3f5c:	f00007b7          	lui	a5,0xf0000
    3f60:	f85ff06f          	j	3ee4 <fatfs_find_next_cluster+0x90>

00003f64 <fatfs_sector_reader>:
    3f64:	03052783          	lw	a5,48(a0)
    3f68:	fd010113          	addi	sp,sp,-48
    3f6c:	02812423          	sw	s0,40(sp)
    3f70:	03212023          	sw	s2,32(sp)
    3f74:	01312e23          	sw	s3,28(sp)
    3f78:	02112623          	sw	ra,44(sp)
    3f7c:	02912223          	sw	s1,36(sp)
    3f80:	01412c23          	sw	s4,24(sp)
    3f84:	01512a23          	sw	s5,20(sp)
    3f88:	00f5e7b3          	or	a5,a1,a5
    3f8c:	00050413          	mv	s0,a0
    3f90:	00060913          	mv	s2,a2
    3f94:	00068993          	mv	s3,a3
    3f98:	06079c63          	bnez	a5,4010 <fatfs_sector_reader+0xac>
    3f9c:	01052783          	lw	a5,16(a0)
    3fa0:	02f66663          	bltu	a2,a5,3fcc <fatfs_sector_reader+0x68>
    3fa4:	00000513          	li	a0,0
    3fa8:	02c12083          	lw	ra,44(sp)
    3fac:	02812403          	lw	s0,40(sp)
    3fb0:	02412483          	lw	s1,36(sp)
    3fb4:	02012903          	lw	s2,32(sp)
    3fb8:	01c12983          	lw	s3,28(sp)
    3fbc:	01812a03          	lw	s4,24(sp)
    3fc0:	01412a83          	lw	s5,20(sp)
    3fc4:	03010113          	addi	sp,sp,48
    3fc8:	00008067          	ret
    3fcc:	01c52503          	lw	a0,28(a0)
    3fd0:	00c42783          	lw	a5,12(s0)
    3fd4:	00f50533          	add	a0,a0,a5
    3fd8:	01250533          	add	a0,a0,s2
    3fdc:	0a098263          	beqz	s3,4080 <fatfs_sector_reader+0x11c>
    3fe0:	03442783          	lw	a5,52(s0)
    3fe4:	00100613          	li	a2,1
    3fe8:	00098593          	mv	a1,s3
    3fec:	02812403          	lw	s0,40(sp)
    3ff0:	02c12083          	lw	ra,44(sp)
    3ff4:	02412483          	lw	s1,36(sp)
    3ff8:	02012903          	lw	s2,32(sp)
    3ffc:	01c12983          	lw	s3,28(sp)
    4000:	01812a03          	lw	s4,24(sp)
    4004:	01412a83          	lw	s5,20(sp)
    4008:	03010113          	addi	sp,sp,48
    400c:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    4010:	00058493          	mv	s1,a1
    4014:	00054583          	lbu	a1,0(a0)
    4018:	00060513          	mv	a0,a2
    401c:	00000a93          	li	s5,0
    4020:	00b12623          	sw	a1,12(sp)
    4024:	ffffe097          	auipc	ra,0xffffe
    4028:	08c080e7          	jalr	140(ra) # 20b0 <__udivsi3>
    402c:	00c12583          	lw	a1,12(sp)
    4030:	00050a13          	mv	s4,a0
    4034:	00090513          	mv	a0,s2
    4038:	ffffe097          	auipc	ra,0xffffe
    403c:	0c0080e7          	jalr	192(ra) # 20f8 <__umodsi3>
    4040:	00050913          	mv	s2,a0
    4044:	034a9063          	bne	s5,s4,4064 <fatfs_sector_reader+0x100>
    4048:	fff00793          	li	a5,-1
    404c:	f4f48ce3          	beq	s1,a5,3fa4 <fatfs_sector_reader+0x40>
    4050:	00048593          	mv	a1,s1
    4054:	00040513          	mv	a0,s0
    4058:	fffff097          	auipc	ra,0xfffff
    405c:	ba4080e7          	jalr	-1116(ra) # 2bfc <fatfs_lba_of_cluster>
    4060:	f79ff06f          	j	3fd8 <fatfs_sector_reader+0x74>
    4064:	00048593          	mv	a1,s1
    4068:	00040513          	mv	a0,s0
    406c:	00000097          	auipc	ra,0x0
    4070:	de8080e7          	jalr	-536(ra) # 3e54 <fatfs_find_next_cluster>
    4074:	00050493          	mv	s1,a0
    4078:	001a8a93          	addi	s5,s5,1
    407c:	fc9ff06f          	j	4044 <fatfs_sector_reader+0xe0>
    4080:	24442783          	lw	a5,580(s0)
    4084:	00a78c63          	beq	a5,a0,409c <fatfs_sector_reader+0x138>
    4088:	03442783          	lw	a5,52(s0)
    408c:	24a42223          	sw	a0,580(s0)
    4090:	00100613          	li	a2,1
    4094:	04440593          	addi	a1,s0,68
    4098:	f55ff06f          	j	3fec <fatfs_sector_reader+0x88>
    409c:	00100513          	li	a0,1
    40a0:	f09ff06f          	j	3fa8 <fatfs_sector_reader+0x44>

000040a4 <fatfs_get_file_entry>:
    40a4:	eb010113          	addi	sp,sp,-336
    40a8:	14812423          	sw	s0,328(sp)
    40ac:	01810413          	addi	s0,sp,24
    40b0:	14912223          	sw	s1,324(sp)
    40b4:	15212023          	sw	s2,320(sp)
    40b8:	13312e23          	sw	s3,316(sp)
    40bc:	13412c23          	sw	s4,312(sp)
    40c0:	13512a23          	sw	s5,308(sp)
    40c4:	13612823          	sw	s6,304(sp)
    40c8:	14112623          	sw	ra,332(sp)
    40cc:	13712623          	sw	s7,300(sp)
    40d0:	13812423          	sw	s8,296(sp)
    40d4:	13912223          	sw	s9,292(sp)
    40d8:	13a12023          	sw	s10,288(sp)
    40dc:	00050493          	mv	s1,a0
    40e0:	00058a93          	mv	s5,a1
    40e4:	00060913          	mv	s2,a2
    40e8:	00068993          	mv	s3,a3
    40ec:	10010ea3          	sb	zero,285(sp)
    40f0:	11c10a13          	addi	s4,sp,284
    40f4:	00040b13          	mv	s6,s0
    40f8:	00040513          	mv	a0,s0
    40fc:	00d00613          	li	a2,13
    4100:	00000593          	li	a1,0
    4104:	00d40413          	addi	s0,s0,13
    4108:	ffffe097          	auipc	ra,0xffffe
    410c:	054080e7          	jalr	84(ra) # 215c <memset>
    4110:	ff4414e3          	bne	s0,s4,40f8 <fatfs_get_file_entry+0x54>
    4114:	00000a13          	li	s4,0
    4118:	24448c13          	addi	s8,s1,580
    411c:	00800c93          	li	s9,8
    4120:	02000b93          	li	s7,32
    4124:	02e00d13          	li	s10,46
    4128:	00000693          	li	a3,0
    412c:	000a0613          	mv	a2,s4
    4130:	000a8593          	mv	a1,s5
    4134:	00048513          	mv	a0,s1
    4138:	00000097          	auipc	ra,0x0
    413c:	e2c080e7          	jalr	-468(ra) # 3f64 <fatfs_sector_reader>
    4140:	16050463          	beqz	a0,42a8 <fatfs_get_file_entry+0x204>
    4144:	04448413          	addi	s0,s1,68
    4148:	00040513          	mv	a0,s0
    414c:	fffff097          	auipc	ra,0xfffff
    4150:	f08080e7          	jalr	-248(ra) # 3054 <fatfs_entry_lfn_text>
    4154:	02050263          	beqz	a0,4178 <fatfs_get_file_entry+0xd4>
    4158:	00040593          	mv	a1,s0
    415c:	000b0513          	mv	a0,s6
    4160:	fffff097          	auipc	ra,0xfffff
    4164:	dec080e7          	jalr	-532(ra) # 2f4c <fatfs_lfn_cache_entry>
    4168:	02040413          	addi	s0,s0,32
    416c:	fd841ee3          	bne	s0,s8,4148 <fatfs_get_file_entry+0xa4>
    4170:	001a0a13          	addi	s4,s4,1
    4174:	fb5ff06f          	j	4128 <fatfs_get_file_entry+0x84>
    4178:	00040513          	mv	a0,s0
    417c:	fffff097          	auipc	ra,0xfffff
    4180:	eec080e7          	jalr	-276(ra) # 3068 <fatfs_entry_lfn_invalid>
    4184:	00050663          	beqz	a0,4190 <fatfs_get_file_entry+0xec>
    4188:	10010ea3          	sb	zero,285(sp)
    418c:	fddff06f          	j	4168 <fatfs_get_file_entry+0xc4>
    4190:	00040593          	mv	a1,s0
    4194:	000b0513          	mv	a0,s6
    4198:	fffff097          	auipc	ra,0xfffff
    419c:	f08080e7          	jalr	-248(ra) # 30a0 <fatfs_entry_lfn_exists>
    41a0:	06050863          	beqz	a0,4210 <fatfs_get_file_entry+0x16c>
    41a4:	000b0513          	mv	a0,s6
    41a8:	fffff097          	auipc	ra,0xfffff
    41ac:	e70080e7          	jalr	-400(ra) # 3018 <fatfs_lfn_cache_get>
    41b0:	00090593          	mv	a1,s2
    41b4:	fffff097          	auipc	ra,0xfffff
    41b8:	6d4080e7          	jalr	1748(ra) # 3888 <fatfs_compare_names>
    41bc:	fc0506e3          	beqz	a0,4188 <fatfs_get_file_entry+0xe4>
    41c0:	02000613          	li	a2,32
    41c4:	00040593          	mv	a1,s0
    41c8:	00098513          	mv	a0,s3
    41cc:	ffffe097          	auipc	ra,0xffffe
    41d0:	fac080e7          	jalr	-84(ra) # 2178 <memcpy>
    41d4:	00100513          	li	a0,1
    41d8:	14c12083          	lw	ra,332(sp)
    41dc:	14812403          	lw	s0,328(sp)
    41e0:	14412483          	lw	s1,324(sp)
    41e4:	14012903          	lw	s2,320(sp)
    41e8:	13c12983          	lw	s3,316(sp)
    41ec:	13812a03          	lw	s4,312(sp)
    41f0:	13412a83          	lw	s5,308(sp)
    41f4:	13012b03          	lw	s6,304(sp)
    41f8:	12c12b83          	lw	s7,300(sp)
    41fc:	12812c03          	lw	s8,296(sp)
    4200:	12412c83          	lw	s9,292(sp)
    4204:	12012d03          	lw	s10,288(sp)
    4208:	15010113          	addi	sp,sp,336
    420c:	00008067          	ret
    4210:	00040513          	mv	a0,s0
    4214:	fffff097          	auipc	ra,0xfffff
    4218:	ed4080e7          	jalr	-300(ra) # 30e8 <fatfs_entry_sfn_only>
    421c:	f40506e3          	beqz	a0,4168 <fatfs_get_file_entry+0xc4>
    4220:	00d00613          	li	a2,13
    4224:	00000593          	li	a1,0
    4228:	00810513          	addi	a0,sp,8
    422c:	ffffe097          	auipc	ra,0xffffe
    4230:	f30080e7          	jalr	-208(ra) # 215c <memset>
    4234:	00000793          	li	a5,0
    4238:	00f406b3          	add	a3,s0,a5
    423c:	0006c683          	lbu	a3,0(a3)
    4240:	00810713          	addi	a4,sp,8
    4244:	00f70733          	add	a4,a4,a5
    4248:	00d70023          	sb	a3,0(a4)
    424c:	00178793          	addi	a5,a5,1
    4250:	ff9794e3          	bne	a5,s9,4238 <fatfs_get_file_entry+0x194>
    4254:	00844783          	lbu	a5,8(s0)
    4258:	00944683          	lbu	a3,9(s0)
    425c:	00100713          	li	a4,1
    4260:	00f108a3          	sb	a5,17(sp)
    4264:	00d10923          	sb	a3,18(sp)
    4268:	01769663          	bne	a3,s7,4274 <fatfs_get_file_entry+0x1d0>
    426c:	fe078793          	addi	a5,a5,-32
    4270:	00f03733          	snez	a4,a5
    4274:	00a44783          	lbu	a5,10(s0)
    4278:	00f109a3          	sb	a5,19(sp)
    427c:	01779663          	bne	a5,s7,4288 <fatfs_get_file_entry+0x1e4>
    4280:	02000793          	li	a5,32
    4284:	00070a63          	beqz	a4,4298 <fatfs_get_file_entry+0x1f4>
    4288:	00814703          	lbu	a4,8(sp)
    428c:	02e00793          	li	a5,46
    4290:	01a71463          	bne	a4,s10,4298 <fatfs_get_file_entry+0x1f4>
    4294:	02000793          	li	a5,32
    4298:	00f10823          	sb	a5,16(sp)
    429c:	00090593          	mv	a1,s2
    42a0:	00810513          	addi	a0,sp,8
    42a4:	f11ff06f          	j	41b4 <fatfs_get_file_entry+0x110>
    42a8:	00000513          	li	a0,0
    42ac:	f2dff06f          	j	41d8 <fatfs_get_file_entry+0x134>

000042b0 <_open_directory>:
    42b0:	eb010113          	addi	sp,sp,-336
    42b4:	13512a23          	sw	s5,308(sp)
    42b8:	00007ab7          	lui	s5,0x7
    42bc:	a3ca8793          	addi	a5,s5,-1476 # 6a3c <_fs>
    42c0:	14812423          	sw	s0,328(sp)
    42c4:	14912223          	sw	s1,324(sp)
    42c8:	15212023          	sw	s2,320(sp)
    42cc:	13312e23          	sw	s3,316(sp)
    42d0:	13412c23          	sw	s4,312(sp)
    42d4:	13612823          	sw	s6,304(sp)
    42d8:	0087a403          	lw	s0,8(a5)
    42dc:	14112623          	sw	ra,332(sp)
    42e0:	00050a13          	mv	s4,a0
    42e4:	00058913          	mv	s2,a1
    42e8:	fffff097          	auipc	ra,0xfffff
    42ec:	350080e7          	jalr	848(ra) # 3638 <fatfs_total_path_levels>
    42f0:	00050993          	mv	s3,a0
    42f4:	00000493          	li	s1,0
    42f8:	fff00b13          	li	s6,-1
    42fc:	0099d863          	bge	s3,s1,430c <_open_directory+0x5c>
    4300:	00892023          	sw	s0,0(s2)
    4304:	00100513          	li	a0,1
    4308:	0240006f          	j	432c <_open_directory+0x7c>
    430c:	10400693          	li	a3,260
    4310:	02c10613          	addi	a2,sp,44
    4314:	00048593          	mv	a1,s1
    4318:	000a0513          	mv	a0,s4
    431c:	fffff097          	auipc	ra,0xfffff
    4320:	390080e7          	jalr	912(ra) # 36ac <fatfs_get_substring>
    4324:	03651863          	bne	a0,s6,4354 <_open_directory+0xa4>
    4328:	00000513          	li	a0,0
    432c:	14c12083          	lw	ra,332(sp)
    4330:	14812403          	lw	s0,328(sp)
    4334:	14412483          	lw	s1,324(sp)
    4338:	14012903          	lw	s2,320(sp)
    433c:	13c12983          	lw	s3,316(sp)
    4340:	13812a03          	lw	s4,312(sp)
    4344:	13412a83          	lw	s5,308(sp)
    4348:	13012b03          	lw	s6,304(sp)
    434c:	15010113          	addi	sp,sp,336
    4350:	00008067          	ret
    4354:	00c10693          	addi	a3,sp,12
    4358:	02c10613          	addi	a2,sp,44
    435c:	00040593          	mv	a1,s0
    4360:	a3ca8513          	addi	a0,s5,-1476
    4364:	00000097          	auipc	ra,0x0
    4368:	d40080e7          	jalr	-704(ra) # 40a4 <fatfs_get_file_entry>
    436c:	fa050ee3          	beqz	a0,4328 <_open_directory+0x78>
    4370:	00c10513          	addi	a0,sp,12
    4374:	fffff097          	auipc	ra,0xfffff
    4378:	db0080e7          	jalr	-592(ra) # 3124 <fatfs_entry_is_dir>
    437c:	fa0506e3          	beqz	a0,4328 <_open_directory+0x78>
    4380:	02015403          	lhu	s0,32(sp)
    4384:	02615783          	lhu	a5,38(sp)
    4388:	00148493          	addi	s1,s1,1
    438c:	01041413          	slli	s0,s0,0x10
    4390:	00f40433          	add	s0,s0,a5
    4394:	f69ff06f          	j	42fc <_open_directory+0x4c>

00004398 <fl_opendir>:
    4398:	fe010113          	addi	sp,sp,-32
    439c:	fff00793          	li	a5,-1
    43a0:	00f12623          	sw	a5,12(sp)
    43a4:	000067b7          	lui	a5,0x6
    43a8:	2387a783          	lw	a5,568(a5) # 6238 <_filelib_init>
    43ac:	00812c23          	sw	s0,24(sp)
    43b0:	01212823          	sw	s2,16(sp)
    43b4:	00112e23          	sw	ra,28(sp)
    43b8:	00912a23          	sw	s1,20(sp)
    43bc:	00050913          	mv	s2,a0
    43c0:	00058413          	mv	s0,a1
    43c4:	00079663          	bnez	a5,43d0 <fl_opendir+0x38>
    43c8:	fffff097          	auipc	ra,0xfffff
    43cc:	970080e7          	jalr	-1680(ra) # 2d38 <fl_init>
    43d0:	000074b7          	lui	s1,0x7
    43d4:	a3c48793          	addi	a5,s1,-1476 # 6a3c <_fs>
    43d8:	03c7a783          	lw	a5,60(a5)
    43dc:	a3c48493          	addi	s1,s1,-1476
    43e0:	00078463          	beqz	a5,43e8 <fl_opendir+0x50>
    43e4:	000780e7          	jalr	a5
    43e8:	00090513          	mv	a0,s2
    43ec:	fffff097          	auipc	ra,0xfffff
    43f0:	24c080e7          	jalr	588(ra) # 3638 <fatfs_total_path_levels>
    43f4:	fff00793          	li	a5,-1
    43f8:	02f51063          	bne	a0,a5,4418 <fl_opendir+0x80>
    43fc:	0084a783          	lw	a5,8(s1)
    4400:	00f12623          	sw	a5,12(sp)
    4404:	00c12783          	lw	a5,12(sp)
    4408:	00042023          	sw	zero,0(s0)
    440c:	00040423          	sb	zero,8(s0)
    4410:	00f42223          	sw	a5,4(s0)
    4414:	0180006f          	j	442c <fl_opendir+0x94>
    4418:	00c10593          	addi	a1,sp,12
    441c:	00090513          	mv	a0,s2
    4420:	00000097          	auipc	ra,0x0
    4424:	e90080e7          	jalr	-368(ra) # 42b0 <_open_directory>
    4428:	fc051ee3          	bnez	a0,4404 <fl_opendir+0x6c>
    442c:	0404a783          	lw	a5,64(s1)
    4430:	00078463          	beqz	a5,4438 <fl_opendir+0xa0>
    4434:	000780e7          	jalr	a5
    4438:	00c12703          	lw	a4,12(sp)
    443c:	fff00793          	li	a5,-1
    4440:	00f71463          	bne	a4,a5,4448 <fl_opendir+0xb0>
    4444:	00000413          	li	s0,0
    4448:	01c12083          	lw	ra,28(sp)
    444c:	00040513          	mv	a0,s0
    4450:	01812403          	lw	s0,24(sp)
    4454:	01412483          	lw	s1,20(sp)
    4458:	01012903          	lw	s2,16(sp)
    445c:	02010113          	addi	sp,sp,32
    4460:	00008067          	ret

00004464 <_open_file>:
    4464:	fc010113          	addi	sp,sp,-64
    4468:	03312623          	sw	s3,44(sp)
    446c:	02112e23          	sw	ra,60(sp)
    4470:	02812c23          	sw	s0,56(sp)
    4474:	02912a23          	sw	s1,52(sp)
    4478:	03212823          	sw	s2,48(sp)
    447c:	00050993          	mv	s3,a0
    4480:	ffffe097          	auipc	ra,0xffffe
    4484:	6c0080e7          	jalr	1728(ra) # 2b40 <_allocate_file>
    4488:	06050463          	beqz	a0,44f0 <_open_file+0x8c>
    448c:	01450913          	addi	s2,a0,20
    4490:	00050413          	mv	s0,a0
    4494:	10400613          	li	a2,260
    4498:	00000593          	li	a1,0
    449c:	00090513          	mv	a0,s2
    44a0:	ffffe097          	auipc	ra,0xffffe
    44a4:	cbc080e7          	jalr	-836(ra) # 215c <memset>
    44a8:	11840493          	addi	s1,s0,280
    44ac:	10400613          	li	a2,260
    44b0:	00000593          	li	a1,0
    44b4:	00048513          	mv	a0,s1
    44b8:	ffffe097          	auipc	ra,0xffffe
    44bc:	ca4080e7          	jalr	-860(ra) # 215c <memset>
    44c0:	10400713          	li	a4,260
    44c4:	00048693          	mv	a3,s1
    44c8:	10400613          	li	a2,260
    44cc:	00090593          	mv	a1,s2
    44d0:	00098513          	mv	a0,s3
    44d4:	fffff097          	auipc	ra,0xfffff
    44d8:	2cc080e7          	jalr	716(ra) # 37a0 <fatfs_split_path>
    44dc:	fff00793          	li	a5,-1
    44e0:	02f51a63          	bne	a0,a5,4514 <_open_file+0xb0>
    44e4:	00040513          	mv	a0,s0
    44e8:	ffffe097          	auipc	ra,0xffffe
    44ec:	6cc080e7          	jalr	1740(ra) # 2bb4 <_free_file>
    44f0:	00000413          	li	s0,0
    44f4:	03c12083          	lw	ra,60(sp)
    44f8:	00040513          	mv	a0,s0
    44fc:	03812403          	lw	s0,56(sp)
    4500:	03412483          	lw	s1,52(sp)
    4504:	03012903          	lw	s2,48(sp)
    4508:	02c12983          	lw	s3,44(sp)
    450c:	04010113          	addi	sp,sp,64
    4510:	00008067          	ret
    4514:	00040513          	mv	a0,s0
    4518:	fffff097          	auipc	ra,0xfffff
    451c:	4dc080e7          	jalr	1244(ra) # 39f4 <_check_file_open>
    4520:	fc0512e3          	bnez	a0,44e4 <_open_file+0x80>
    4524:	01444783          	lbu	a5,20(s0)
    4528:	08079e63          	bnez	a5,45c4 <_open_file+0x160>
    452c:	000077b7          	lui	a5,0x7
    4530:	a447a783          	lw	a5,-1468(a5) # 6a44 <_fs+0x8>
    4534:	00f42023          	sw	a5,0(s0)
    4538:	00042583          	lw	a1,0(s0)
    453c:	00048613          	mv	a2,s1
    4540:	000074b7          	lui	s1,0x7
    4544:	00010693          	mv	a3,sp
    4548:	a3c48513          	addi	a0,s1,-1476 # 6a3c <_fs>
    454c:	00000097          	auipc	ra,0x0
    4550:	b58080e7          	jalr	-1192(ra) # 40a4 <fatfs_get_file_entry>
    4554:	f80508e3          	beqz	a0,44e4 <_open_file+0x80>
    4558:	00010513          	mv	a0,sp
    455c:	fffff097          	auipc	ra,0xfffff
    4560:	bd8080e7          	jalr	-1064(ra) # 3134 <fatfs_entry_is_file>
    4564:	f80500e3          	beqz	a0,44e4 <_open_file+0x80>
    4568:	00b00613          	li	a2,11
    456c:	00010593          	mv	a1,sp
    4570:	21c40513          	addi	a0,s0,540
    4574:	ffffe097          	auipc	ra,0xffffe
    4578:	c04080e7          	jalr	-1020(ra) # 2178 <memcpy>
    457c:	01c12783          	lw	a5,28(sp)
    4580:	01a15703          	lhu	a4,26(sp)
    4584:	00042423          	sw	zero,8(s0)
    4588:	00f42623          	sw	a5,12(s0)
    458c:	01415783          	lhu	a5,20(sp)
    4590:	42042a23          	sw	zero,1076(s0)
    4594:	00042823          	sw	zero,16(s0)
    4598:	01079793          	slli	a5,a5,0x10
    459c:	00e787b3          	add	a5,a5,a4
    45a0:	00f42223          	sw	a5,4(s0)
    45a4:	fff00793          	li	a5,-1
    45a8:	42f42823          	sw	a5,1072(s0)
    45ac:	22f42423          	sw	a5,552(s0)
    45b0:	22f42623          	sw	a5,556(s0)
    45b4:	a3c48513          	addi	a0,s1,-1476
    45b8:	00000097          	auipc	ra,0x0
    45bc:	840080e7          	jalr	-1984(ra) # 3df8 <fatfs_fat_purge>
    45c0:	f35ff06f          	j	44f4 <_open_file+0x90>
    45c4:	00040593          	mv	a1,s0
    45c8:	00090513          	mv	a0,s2
    45cc:	00000097          	auipc	ra,0x0
    45d0:	ce4080e7          	jalr	-796(ra) # 42b0 <_open_directory>
    45d4:	f60512e3          	bnez	a0,4538 <_open_file+0xd4>
    45d8:	f0dff06f          	j	44e4 <_open_file+0x80>

000045dc <fatfs_sfn_exists>:
    45dc:	fe010113          	addi	sp,sp,-32
    45e0:	00912a23          	sw	s1,20(sp)
    45e4:	01212823          	sw	s2,16(sp)
    45e8:	01312623          	sw	s3,12(sp)
    45ec:	01412423          	sw	s4,8(sp)
    45f0:	01512223          	sw	s5,4(sp)
    45f4:	00112e23          	sw	ra,28(sp)
    45f8:	00812c23          	sw	s0,24(sp)
    45fc:	00050493          	mv	s1,a0
    4600:	00058993          	mv	s3,a1
    4604:	00060a13          	mv	s4,a2
    4608:	00000913          	li	s2,0
    460c:	24450a93          	addi	s5,a0,580
    4610:	00000693          	li	a3,0
    4614:	00090613          	mv	a2,s2
    4618:	00098593          	mv	a1,s3
    461c:	00048513          	mv	a0,s1
    4620:	00000097          	auipc	ra,0x0
    4624:	944080e7          	jalr	-1724(ra) # 3f64 <fatfs_sector_reader>
    4628:	06050263          	beqz	a0,468c <fatfs_sfn_exists+0xb0>
    462c:	04448413          	addi	s0,s1,68
    4630:	00040513          	mv	a0,s0
    4634:	fffff097          	auipc	ra,0xfffff
    4638:	a20080e7          	jalr	-1504(ra) # 3054 <fatfs_entry_lfn_text>
    463c:	02051e63          	bnez	a0,4678 <fatfs_sfn_exists+0x9c>
    4640:	00040513          	mv	a0,s0
    4644:	fffff097          	auipc	ra,0xfffff
    4648:	a24080e7          	jalr	-1500(ra) # 3068 <fatfs_entry_lfn_invalid>
    464c:	02051663          	bnez	a0,4678 <fatfs_sfn_exists+0x9c>
    4650:	00040513          	mv	a0,s0
    4654:	fffff097          	auipc	ra,0xfffff
    4658:	a94080e7          	jalr	-1388(ra) # 30e8 <fatfs_entry_sfn_only>
    465c:	00050e63          	beqz	a0,4678 <fatfs_sfn_exists+0x9c>
    4660:	00b00613          	li	a2,11
    4664:	000a0593          	mv	a1,s4
    4668:	00040513          	mv	a0,s0
    466c:	ffffe097          	auipc	ra,0xffffe
    4670:	b50080e7          	jalr	-1200(ra) # 21bc <strncmp>
    4674:	00050a63          	beqz	a0,4688 <fatfs_sfn_exists+0xac>
    4678:	02040413          	addi	s0,s0,32
    467c:	fb541ae3          	bne	s0,s5,4630 <fatfs_sfn_exists+0x54>
    4680:	00190913          	addi	s2,s2,1
    4684:	f8dff06f          	j	4610 <fatfs_sfn_exists+0x34>
    4688:	00100513          	li	a0,1
    468c:	01c12083          	lw	ra,28(sp)
    4690:	01812403          	lw	s0,24(sp)
    4694:	01412483          	lw	s1,20(sp)
    4698:	01012903          	lw	s2,16(sp)
    469c:	00c12983          	lw	s3,12(sp)
    46a0:	00812a03          	lw	s4,8(sp)
    46a4:	00412a83          	lw	s5,4(sp)
    46a8:	02010113          	addi	sp,sp,32
    46ac:	00008067          	ret

000046b0 <fatfs_update_file_length>:
    46b0:	03852783          	lw	a5,56(a0)
    46b4:	14078e63          	beqz	a5,4810 <fatfs_update_file_length+0x160>
    46b8:	fd010113          	addi	sp,sp,-48
    46bc:	02912223          	sw	s1,36(sp)
    46c0:	03212023          	sw	s2,32(sp)
    46c4:	01312e23          	sw	s3,28(sp)
    46c8:	01412c23          	sw	s4,24(sp)
    46cc:	01512a23          	sw	s5,20(sp)
    46d0:	01612823          	sw	s6,16(sp)
    46d4:	01712623          	sw	s7,12(sp)
    46d8:	02112623          	sw	ra,44(sp)
    46dc:	02812423          	sw	s0,40(sp)
    46e0:	00050493          	mv	s1,a0
    46e4:	00058a13          	mv	s4,a1
    46e8:	00060a93          	mv	s5,a2
    46ec:	00068913          	mv	s2,a3
    46f0:	00000993          	li	s3,0
    46f4:	04450b93          	addi	s7,a0,68
    46f8:	24450b13          	addi	s6,a0,580
    46fc:	00000693          	li	a3,0
    4700:	00098613          	mv	a2,s3
    4704:	000a0593          	mv	a1,s4
    4708:	00048513          	mv	a0,s1
    470c:	00000097          	auipc	ra,0x0
    4710:	858080e7          	jalr	-1960(ra) # 3f64 <fatfs_sector_reader>
    4714:	0c050663          	beqz	a0,47e0 <fatfs_update_file_length+0x130>
    4718:	000b8413          	mv	s0,s7
    471c:	00040513          	mv	a0,s0
    4720:	fffff097          	auipc	ra,0xfffff
    4724:	934080e7          	jalr	-1740(ra) # 3054 <fatfs_entry_lfn_text>
    4728:	0a051463          	bnez	a0,47d0 <fatfs_update_file_length+0x120>
    472c:	00040513          	mv	a0,s0
    4730:	fffff097          	auipc	ra,0xfffff
    4734:	938080e7          	jalr	-1736(ra) # 3068 <fatfs_entry_lfn_invalid>
    4738:	08051c63          	bnez	a0,47d0 <fatfs_update_file_length+0x120>
    473c:	00040513          	mv	a0,s0
    4740:	fffff097          	auipc	ra,0xfffff
    4744:	9a8080e7          	jalr	-1624(ra) # 30e8 <fatfs_entry_sfn_only>
    4748:	08050463          	beqz	a0,47d0 <fatfs_update_file_length+0x120>
    474c:	00b00613          	li	a2,11
    4750:	000a8593          	mv	a1,s5
    4754:	00040513          	mv	a0,s0
    4758:	ffffe097          	auipc	ra,0xffffe
    475c:	a64080e7          	jalr	-1436(ra) # 21bc <strncmp>
    4760:	06051863          	bnez	a0,47d0 <fatfs_update_file_length+0x120>
    4764:	00895793          	srli	a5,s2,0x8
    4768:	01240e23          	sb	s2,28(s0)
    476c:	00f40ea3          	sb	a5,29(s0)
    4770:	01095793          	srli	a5,s2,0x10
    4774:	01895913          	srli	s2,s2,0x18
    4778:	00f40f23          	sb	a5,30(s0)
    477c:	01240fa3          	sb	s2,31(s0)
    4780:	00040593          	mv	a1,s0
    4784:	02000613          	li	a2,32
    4788:	00040513          	mv	a0,s0
    478c:	ffffe097          	auipc	ra,0xffffe
    4790:	9ec080e7          	jalr	-1556(ra) # 2178 <memcpy>
    4794:	02812403          	lw	s0,40(sp)
    4798:	0384a783          	lw	a5,56(s1)
    479c:	2444a503          	lw	a0,580(s1)
    47a0:	02c12083          	lw	ra,44(sp)
    47a4:	02412483          	lw	s1,36(sp)
    47a8:	02012903          	lw	s2,32(sp)
    47ac:	01c12983          	lw	s3,28(sp)
    47b0:	01812a03          	lw	s4,24(sp)
    47b4:	01412a83          	lw	s5,20(sp)
    47b8:	01012b03          	lw	s6,16(sp)
    47bc:	000b8593          	mv	a1,s7
    47c0:	00c12b83          	lw	s7,12(sp)
    47c4:	00100613          	li	a2,1
    47c8:	03010113          	addi	sp,sp,48
    47cc:	00078067          	jr	a5
    47d0:	02040413          	addi	s0,s0,32
    47d4:	f56414e3          	bne	s0,s6,471c <fatfs_update_file_length+0x6c>
    47d8:	00198993          	addi	s3,s3,1
    47dc:	f21ff06f          	j	46fc <fatfs_update_file_length+0x4c>
    47e0:	02c12083          	lw	ra,44(sp)
    47e4:	02812403          	lw	s0,40(sp)
    47e8:	02412483          	lw	s1,36(sp)
    47ec:	02012903          	lw	s2,32(sp)
    47f0:	01c12983          	lw	s3,28(sp)
    47f4:	01812a03          	lw	s4,24(sp)
    47f8:	01412a83          	lw	s5,20(sp)
    47fc:	01012b03          	lw	s6,16(sp)
    4800:	00c12b83          	lw	s7,12(sp)
    4804:	00000513          	li	a0,0
    4808:	03010113          	addi	sp,sp,48
    480c:	00008067          	ret
    4810:	00000513          	li	a0,0
    4814:	00008067          	ret

00004818 <fatfs_list_directory_next>:
    4818:	ec010113          	addi	sp,sp,-320
    481c:	13212823          	sw	s2,304(sp)
    4820:	13312623          	sw	s3,300(sp)
    4824:	13412423          	sw	s4,296(sp)
    4828:	13512223          	sw	s5,292(sp)
    482c:	12112e23          	sw	ra,316(sp)
    4830:	12812c23          	sw	s0,312(sp)
    4834:	12912a23          	sw	s1,308(sp)
    4838:	00050a13          	mv	s4,a0
    483c:	00058913          	mv	s2,a1
    4840:	00060993          	mv	s3,a2
    4844:	10010ea3          	sb	zero,285(sp)
    4848:	00f00a93          	li	s5,15
    484c:	00092603          	lw	a2,0(s2)
    4850:	00492583          	lw	a1,4(s2)
    4854:	00000693          	li	a3,0
    4858:	000a0513          	mv	a0,s4
    485c:	fffff097          	auipc	ra,0xfffff
    4860:	708080e7          	jalr	1800(ra) # 3f64 <fatfs_sector_reader>
    4864:	12050263          	beqz	a0,4988 <fatfs_list_directory_next+0x170>
    4868:	00894483          	lbu	s1,8(s2)
    486c:	00549413          	slli	s0,s1,0x5
    4870:	04440413          	addi	s0,s0,68
    4874:	008a0433          	add	s0,s4,s0
    4878:	009afc63          	bgeu	s5,s1,4890 <fatfs_list_directory_next+0x78>
    487c:	00092783          	lw	a5,0(s2)
    4880:	00090423          	sb	zero,8(s2)
    4884:	00178793          	addi	a5,a5,1
    4888:	00f92023          	sw	a5,0(s2)
    488c:	fc1ff06f          	j	484c <fatfs_list_directory_next+0x34>
    4890:	00040513          	mv	a0,s0
    4894:	ffffe097          	auipc	ra,0xffffe
    4898:	7c0080e7          	jalr	1984(ra) # 3054 <fatfs_entry_lfn_text>
    489c:	02050263          	beqz	a0,48c0 <fatfs_list_directory_next+0xa8>
    48a0:	00040593          	mv	a1,s0
    48a4:	01810513          	addi	a0,sp,24
    48a8:	ffffe097          	auipc	ra,0xffffe
    48ac:	6a4080e7          	jalr	1700(ra) # 2f4c <fatfs_lfn_cache_entry>
    48b0:	00148493          	addi	s1,s1,1
    48b4:	0ff4f493          	zext.b	s1,s1
    48b8:	02040413          	addi	s0,s0,32
    48bc:	fbdff06f          	j	4878 <fatfs_list_directory_next+0x60>
    48c0:	00040513          	mv	a0,s0
    48c4:	ffffe097          	auipc	ra,0xffffe
    48c8:	7a4080e7          	jalr	1956(ra) # 3068 <fatfs_entry_lfn_invalid>
    48cc:	00050663          	beqz	a0,48d8 <fatfs_list_directory_next+0xc0>
    48d0:	10010ea3          	sb	zero,285(sp)
    48d4:	fddff06f          	j	48b0 <fatfs_list_directory_next+0x98>
    48d8:	00040593          	mv	a1,s0
    48dc:	01810513          	addi	a0,sp,24
    48e0:	ffffe097          	auipc	ra,0xffffe
    48e4:	7c0080e7          	jalr	1984(ra) # 30a0 <fatfs_entry_lfn_exists>
    48e8:	0c050263          	beqz	a0,49ac <fatfs_list_directory_next+0x194>
    48ec:	01810513          	addi	a0,sp,24
    48f0:	ffffe097          	auipc	ra,0xffffe
    48f4:	728080e7          	jalr	1832(ra) # 3018 <fatfs_lfn_cache_get>
    48f8:	00050593          	mv	a1,a0
    48fc:	10300613          	li	a2,259
    4900:	00098513          	mv	a0,s3
    4904:	ffffe097          	auipc	ra,0xffffe
    4908:	8f8080e7          	jalr	-1800(ra) # 21fc <strncpy>
    490c:	00040513          	mv	a0,s0
    4910:	fffff097          	auipc	ra,0xfffff
    4914:	814080e7          	jalr	-2028(ra) # 3124 <fatfs_entry_is_dir>
    4918:	00a03533          	snez	a0,a0
    491c:	10a98223          	sb	a0,260(s3)
    4920:	01d44783          	lbu	a5,29(s0)
    4924:	01c44703          	lbu	a4,28(s0)
    4928:	00148493          	addi	s1,s1,1
    492c:	00879793          	slli	a5,a5,0x8
    4930:	00e7e7b3          	or	a5,a5,a4
    4934:	01e44703          	lbu	a4,30(s0)
    4938:	0ff4f493          	zext.b	s1,s1
    493c:	00100513          	li	a0,1
    4940:	01071713          	slli	a4,a4,0x10
    4944:	00f76733          	or	a4,a4,a5
    4948:	01f44783          	lbu	a5,31(s0)
    494c:	01879793          	slli	a5,a5,0x18
    4950:	00e7e7b3          	or	a5,a5,a4
    4954:	10f9a623          	sw	a5,268(s3)
    4958:	01544783          	lbu	a5,21(s0)
    495c:	01444703          	lbu	a4,20(s0)
    4960:	01a44683          	lbu	a3,26(s0)
    4964:	00879793          	slli	a5,a5,0x8
    4968:	00e7e7b3          	or	a5,a5,a4
    496c:	01b44703          	lbu	a4,27(s0)
    4970:	01079793          	slli	a5,a5,0x10
    4974:	00871713          	slli	a4,a4,0x8
    4978:	00d76733          	or	a4,a4,a3
    497c:	00e7e7b3          	or	a5,a5,a4
    4980:	10f9a423          	sw	a5,264(s3)
    4984:	00990423          	sb	s1,8(s2)
    4988:	13c12083          	lw	ra,316(sp)
    498c:	13812403          	lw	s0,312(sp)
    4990:	13412483          	lw	s1,308(sp)
    4994:	13012903          	lw	s2,304(sp)
    4998:	12c12983          	lw	s3,300(sp)
    499c:	12812a03          	lw	s4,296(sp)
    49a0:	12412a83          	lw	s5,292(sp)
    49a4:	14010113          	addi	sp,sp,320
    49a8:	00008067          	ret
    49ac:	00040513          	mv	a0,s0
    49b0:	ffffe097          	auipc	ra,0xffffe
    49b4:	738080e7          	jalr	1848(ra) # 30e8 <fatfs_entry_sfn_only>
    49b8:	ee050ce3          	beqz	a0,48b0 <fatfs_list_directory_next+0x98>
    49bc:	00d00613          	li	a2,13
    49c0:	00000593          	li	a1,0
    49c4:	00810513          	addi	a0,sp,8
    49c8:	10010ea3          	sb	zero,285(sp)
    49cc:	ffffd097          	auipc	ra,0xffffd
    49d0:	790080e7          	jalr	1936(ra) # 215c <memset>
    49d4:	00000793          	li	a5,0
    49d8:	00800713          	li	a4,8
    49dc:	00f40633          	add	a2,s0,a5
    49e0:	00064603          	lbu	a2,0(a2)
    49e4:	00810693          	addi	a3,sp,8
    49e8:	00f686b3          	add	a3,a3,a5
    49ec:	00c68023          	sb	a2,0(a3)
    49f0:	00178793          	addi	a5,a5,1
    49f4:	fee794e3          	bne	a5,a4,49dc <fatfs_list_directory_next+0x1c4>
    49f8:	00844783          	lbu	a5,8(s0)
    49fc:	00944683          	lbu	a3,9(s0)
    4a00:	02000613          	li	a2,32
    4a04:	00f108a3          	sb	a5,17(sp)
    4a08:	00d10923          	sb	a3,18(sp)
    4a0c:	00100713          	li	a4,1
    4a10:	00c69663          	bne	a3,a2,4a1c <fatfs_list_directory_next+0x204>
    4a14:	fe078793          	addi	a5,a5,-32
    4a18:	00f03733          	snez	a4,a5
    4a1c:	00a44783          	lbu	a5,10(s0)
    4a20:	02000693          	li	a3,32
    4a24:	00f109a3          	sb	a5,19(sp)
    4a28:	00d79663          	bne	a5,a3,4a34 <fatfs_list_directory_next+0x21c>
    4a2c:	02000793          	li	a5,32
    4a30:	00070a63          	beqz	a4,4a44 <fatfs_list_directory_next+0x22c>
    4a34:	00814703          	lbu	a4,8(sp)
    4a38:	02e00793          	li	a5,46
    4a3c:	00f71463          	bne	a4,a5,4a44 <fatfs_list_directory_next+0x22c>
    4a40:	02000793          	li	a5,32
    4a44:	00810593          	addi	a1,sp,8
    4a48:	00098513          	mv	a0,s3
    4a4c:	00f10823          	sb	a5,16(sp)
    4a50:	fffff097          	auipc	ra,0xfffff
    4a54:	034080e7          	jalr	52(ra) # 3a84 <fatfs_get_sfn_display_name>
    4a58:	eb5ff06f          	j	490c <fatfs_list_directory_next+0xf4>

00004a5c <fl_readdir>:
    4a5c:	000067b7          	lui	a5,0x6
    4a60:	2387a783          	lw	a5,568(a5) # 6238 <_filelib_init>
    4a64:	fe010113          	addi	sp,sp,-32
    4a68:	00912a23          	sw	s1,20(sp)
    4a6c:	01212823          	sw	s2,16(sp)
    4a70:	00112e23          	sw	ra,28(sp)
    4a74:	00812c23          	sw	s0,24(sp)
    4a78:	01312623          	sw	s3,12(sp)
    4a7c:	00050493          	mv	s1,a0
    4a80:	00058913          	mv	s2,a1
    4a84:	00079663          	bnez	a5,4a90 <fl_readdir+0x34>
    4a88:	ffffe097          	auipc	ra,0xffffe
    4a8c:	2b0080e7          	jalr	688(ra) # 2d38 <fl_init>
    4a90:	00007437          	lui	s0,0x7
    4a94:	a3c40793          	addi	a5,s0,-1476 # 6a3c <_fs>
    4a98:	03c7a783          	lw	a5,60(a5)
    4a9c:	a3c40993          	addi	s3,s0,-1476
    4aa0:	00078463          	beqz	a5,4aa8 <fl_readdir+0x4c>
    4aa4:	000780e7          	jalr	a5
    4aa8:	a3c40513          	addi	a0,s0,-1476
    4aac:	00090613          	mv	a2,s2
    4ab0:	00048593          	mv	a1,s1
    4ab4:	00000097          	auipc	ra,0x0
    4ab8:	d64080e7          	jalr	-668(ra) # 4818 <fatfs_list_directory_next>
    4abc:	0409a783          	lw	a5,64(s3)
    4ac0:	00050413          	mv	s0,a0
    4ac4:	00078463          	beqz	a5,4acc <fl_readdir+0x70>
    4ac8:	000780e7          	jalr	a5
    4acc:	01c12083          	lw	ra,28(sp)
    4ad0:	00143513          	seqz	a0,s0
    4ad4:	01812403          	lw	s0,24(sp)
    4ad8:	01412483          	lw	s1,20(sp)
    4adc:	01012903          	lw	s2,16(sp)
    4ae0:	00c12983          	lw	s3,12(sp)
    4ae4:	40a00533          	neg	a0,a0
    4ae8:	02010113          	addi	sp,sp,32
    4aec:	00008067          	ret

00004af0 <_read_sectors>:
    4af0:	fd010113          	addi	sp,sp,-48
    4af4:	01612823          	sw	s6,16(sp)
    4af8:	00007b37          	lui	s6,0x7
    4afc:	01512a23          	sw	s5,20(sp)
    4b00:	a3cb4a83          	lbu	s5,-1476(s6) # 6a3c <_fs>
    4b04:	01412c23          	sw	s4,24(sp)
    4b08:	00058a13          	mv	s4,a1
    4b0c:	02912223          	sw	s1,36(sp)
    4b10:	000a8593          	mv	a1,s5
    4b14:	00050493          	mv	s1,a0
    4b18:	000a0513          	mv	a0,s4
    4b1c:	02112623          	sw	ra,44(sp)
    4b20:	02812423          	sw	s0,40(sp)
    4b24:	03212023          	sw	s2,32(sp)
    4b28:	00068413          	mv	s0,a3
    4b2c:	01712623          	sw	s7,12(sp)
    4b30:	01812423          	sw	s8,8(sp)
    4b34:	01312e23          	sw	s3,28(sp)
    4b38:	00060c13          	mv	s8,a2
    4b3c:	ffffd097          	auipc	ra,0xffffd
    4b40:	574080e7          	jalr	1396(ra) # 20b0 <__udivsi3>
    4b44:	00050913          	mv	s2,a0
    4b48:	000a8593          	mv	a1,s5
    4b4c:	000a0513          	mv	a0,s4
    4b50:	ffffd097          	auipc	ra,0xffffd
    4b54:	5a8080e7          	jalr	1448(ra) # 20f8 <__umodsi3>
    4b58:	00a407b3          	add	a5,s0,a0
    4b5c:	00050b93          	mv	s7,a0
    4b60:	00fafe63          	bgeu	s5,a5,4b7c <_read_sectors+0x8c>
    4b64:	00090593          	mv	a1,s2
    4b68:	000a8513          	mv	a0,s5
    4b6c:	ffffe097          	auipc	ra,0xffffe
    4b70:	d34080e7          	jalr	-716(ra) # 28a0 <__mulsi3>
    4b74:	414a87b3          	sub	a5,s5,s4
    4b78:	00f50433          	add	s0,a0,a5
    4b7c:	2284a983          	lw	s3,552(s1)
    4b80:	07299863          	bne	s3,s2,4bf0 <_read_sectors+0x100>
    4b84:	22c4a583          	lw	a1,556(s1)
    4b88:	fff00793          	li	a5,-1
    4b8c:	02f58663          	beq	a1,a5,4bb8 <_read_sectors+0xc8>
    4b90:	a3cb0513          	addi	a0,s6,-1476
    4b94:	ffffe097          	auipc	ra,0xffffe
    4b98:	068080e7          	jalr	104(ra) # 2bfc <fatfs_lba_of_cluster>
    4b9c:	017505b3          	add	a1,a0,s7
    4ba0:	00040693          	mv	a3,s0
    4ba4:	000c0613          	mv	a2,s8
    4ba8:	a3cb0513          	addi	a0,s6,-1476
    4bac:	ffffe097          	auipc	ra,0xffffe
    4bb0:	0a0080e7          	jalr	160(ra) # 2c4c <fatfs_sector_read>
    4bb4:	00051463          	bnez	a0,4bbc <_read_sectors+0xcc>
    4bb8:	00000413          	li	s0,0
    4bbc:	02c12083          	lw	ra,44(sp)
    4bc0:	00040513          	mv	a0,s0
    4bc4:	02812403          	lw	s0,40(sp)
    4bc8:	02412483          	lw	s1,36(sp)
    4bcc:	02012903          	lw	s2,32(sp)
    4bd0:	01c12983          	lw	s3,28(sp)
    4bd4:	01812a03          	lw	s4,24(sp)
    4bd8:	01412a83          	lw	s5,20(sp)
    4bdc:	01012b03          	lw	s6,16(sp)
    4be0:	00c12b83          	lw	s7,12(sp)
    4be4:	00812c03          	lw	s8,8(sp)
    4be8:	03010113          	addi	sp,sp,48
    4bec:	00008067          	ret
    4bf0:	035a6463          	bltu	s4,s5,4c18 <_read_sectors+0x128>
    4bf4:	00198793          	addi	a5,s3,1
    4bf8:	03279063          	bne	a5,s2,4c18 <_read_sectors+0x128>
    4bfc:	22c4a583          	lw	a1,556(s1)
    4c00:	0329e263          	bltu	s3,s2,4c24 <_read_sectors+0x134>
    4c04:	fff00793          	li	a5,-1
    4c08:	faf588e3          	beq	a1,a5,4bb8 <_read_sectors+0xc8>
    4c0c:	22b4a623          	sw	a1,556(s1)
    4c10:	2324a423          	sw	s2,552(s1)
    4c14:	f7dff06f          	j	4b90 <_read_sectors+0xa0>
    4c18:	0044a583          	lw	a1,4(s1)
    4c1c:	00000993          	li	s3,0
    4c20:	fe1ff06f          	j	4c00 <_read_sectors+0x110>
    4c24:	a3cb0513          	addi	a0,s6,-1476
    4c28:	fffff097          	auipc	ra,0xfffff
    4c2c:	22c080e7          	jalr	556(ra) # 3e54 <fatfs_find_next_cluster>
    4c30:	00050593          	mv	a1,a0
    4c34:	00198993          	addi	s3,s3,1
    4c38:	fc9ff06f          	j	4c00 <_read_sectors+0x110>

00004c3c <fatfs_set_fs_info_next_free_cluster>:
    4c3c:	03052783          	lw	a5,48(a0)
    4c40:	0a078863          	beqz	a5,4cf0 <fatfs_set_fs_info_next_free_cluster+0xb4>
    4c44:	ff010113          	addi	sp,sp,-16
    4c48:	01c52783          	lw	a5,28(a0)
    4c4c:	01212023          	sw	s2,0(sp)
    4c50:	00058913          	mv	s2,a1
    4c54:	01855583          	lhu	a1,24(a0)
    4c58:	00812423          	sw	s0,8(sp)
    4c5c:	00912223          	sw	s1,4(sp)
    4c60:	00f585b3          	add	a1,a1,a5
    4c64:	00112623          	sw	ra,12(sp)
    4c68:	00050493          	mv	s1,a0
    4c6c:	ffffe097          	auipc	ra,0xffffe
    4c70:	de4080e7          	jalr	-540(ra) # 2a50 <fatfs_fat_read_sector>
    4c74:	00050413          	mv	s0,a0
    4c78:	06050063          	beqz	a0,4cd8 <fatfs_set_fs_info_next_free_cluster+0x9c>
    4c7c:	20852783          	lw	a5,520(a0)
    4c80:	00895713          	srli	a4,s2,0x8
    4c84:	1f278623          	sb	s2,492(a5)
    4c88:	20852783          	lw	a5,520(a0)
    4c8c:	1ee786a3          	sb	a4,493(a5)
    4c90:	20852783          	lw	a5,520(a0)
    4c94:	01095713          	srli	a4,s2,0x10
    4c98:	1ee78723          	sb	a4,494(a5)
    4c9c:	20852783          	lw	a5,520(a0)
    4ca0:	01895713          	srli	a4,s2,0x18
    4ca4:	1ee787a3          	sb	a4,495(a5)
    4ca8:	00100793          	li	a5,1
    4cac:	20f52223          	sw	a5,516(a0)
    4cb0:	0384a783          	lw	a5,56(s1)
    4cb4:	0324a223          	sw	s2,36(s1)
    4cb8:	00078a63          	beqz	a5,4ccc <fatfs_set_fs_info_next_free_cluster+0x90>
    4cbc:	00050593          	mv	a1,a0
    4cc0:	20052503          	lw	a0,512(a0)
    4cc4:	00100613          	li	a2,1
    4cc8:	000780e7          	jalr	a5
    4ccc:	fff00793          	li	a5,-1
    4cd0:	20f42023          	sw	a5,512(s0)
    4cd4:	20042223          	sw	zero,516(s0)
    4cd8:	00c12083          	lw	ra,12(sp)
    4cdc:	00812403          	lw	s0,8(sp)
    4ce0:	00412483          	lw	s1,4(sp)
    4ce4:	00012903          	lw	s2,0(sp)
    4ce8:	01010113          	addi	sp,sp,16
    4cec:	00008067          	ret
    4cf0:	00008067          	ret

00004cf4 <fatfs_find_blank_cluster>:
    4cf4:	fe010113          	addi	sp,sp,-32
    4cf8:	01312623          	sw	s3,12(sp)
    4cfc:	01512223          	sw	s5,4(sp)
    4d00:	000109b7          	lui	s3,0x10
    4d04:	10000ab7          	lui	s5,0x10000
    4d08:	00912a23          	sw	s1,20(sp)
    4d0c:	01212823          	sw	s2,16(sp)
    4d10:	01412423          	sw	s4,8(sp)
    4d14:	00112e23          	sw	ra,28(sp)
    4d18:	00812c23          	sw	s0,24(sp)
    4d1c:	00050913          	mv	s2,a0
    4d20:	00058493          	mv	s1,a1
    4d24:	00060a13          	mv	s4,a2
    4d28:	fff98993          	addi	s3,s3,-1 # ffff <_files+0x915b>
    4d2c:	fffa8a93          	addi	s5,s5,-1 # fffffff <__stacktop+0xffeffff>
    4d30:	03092783          	lw	a5,48(s2)
    4d34:	0074d413          	srli	s0,s1,0x7
    4d38:	00079463          	bnez	a5,4d40 <fatfs_find_blank_cluster+0x4c>
    4d3c:	0084d413          	srli	s0,s1,0x8
    4d40:	02092783          	lw	a5,32(s2)
    4d44:	0cf47463          	bgeu	s0,a5,4e0c <fatfs_find_blank_cluster+0x118>
    4d48:	01492583          	lw	a1,20(s2)
    4d4c:	00090513          	mv	a0,s2
    4d50:	00b405b3          	add	a1,s0,a1
    4d54:	ffffe097          	auipc	ra,0xffffe
    4d58:	cfc080e7          	jalr	-772(ra) # 2a50 <fatfs_fat_read_sector>
    4d5c:	0a050863          	beqz	a0,4e0c <fatfs_find_blank_cluster+0x118>
    4d60:	03092783          	lw	a5,48(s2)
    4d64:	20852703          	lw	a4,520(a0)
    4d68:	04079c63          	bnez	a5,4dc0 <fatfs_find_blank_cluster+0xcc>
    4d6c:	00841413          	slli	s0,s0,0x8
    4d70:	40848433          	sub	s0,s1,s0
    4d74:	00141413          	slli	s0,s0,0x1
    4d78:	01347433          	and	s0,s0,s3
    4d7c:	00870733          	add	a4,a4,s0
    4d80:	00174783          	lbu	a5,1(a4)
    4d84:	00074703          	lbu	a4,0(a4)
    4d88:	00879793          	slli	a5,a5,0x8
    4d8c:	00e787b3          	add	a5,a5,a4
    4d90:	06079a63          	bnez	a5,4e04 <fatfs_find_blank_cluster+0x110>
    4d94:	009a2023          	sw	s1,0(s4)
    4d98:	00100513          	li	a0,1
    4d9c:	01c12083          	lw	ra,28(sp)
    4da0:	01812403          	lw	s0,24(sp)
    4da4:	01412483          	lw	s1,20(sp)
    4da8:	01012903          	lw	s2,16(sp)
    4dac:	00c12983          	lw	s3,12(sp)
    4db0:	00812a03          	lw	s4,8(sp)
    4db4:	00412a83          	lw	s5,4(sp)
    4db8:	02010113          	addi	sp,sp,32
    4dbc:	00008067          	ret
    4dc0:	00741413          	slli	s0,s0,0x7
    4dc4:	40848433          	sub	s0,s1,s0
    4dc8:	00241413          	slli	s0,s0,0x2
    4dcc:	01347433          	and	s0,s0,s3
    4dd0:	00870733          	add	a4,a4,s0
    4dd4:	00374783          	lbu	a5,3(a4)
    4dd8:	00274683          	lbu	a3,2(a4)
    4ddc:	01879793          	slli	a5,a5,0x18
    4de0:	01069693          	slli	a3,a3,0x10
    4de4:	00d787b3          	add	a5,a5,a3
    4de8:	00074683          	lbu	a3,0(a4)
    4dec:	00174703          	lbu	a4,1(a4)
    4df0:	00d787b3          	add	a5,a5,a3
    4df4:	00871713          	slli	a4,a4,0x8
    4df8:	00e787b3          	add	a5,a5,a4
    4dfc:	0157f7b3          	and	a5,a5,s5
    4e00:	f91ff06f          	j	4d90 <fatfs_find_blank_cluster+0x9c>
    4e04:	00148493          	addi	s1,s1,1
    4e08:	f29ff06f          	j	4d30 <fatfs_find_blank_cluster+0x3c>
    4e0c:	00000513          	li	a0,0
    4e10:	f8dff06f          	j	4d9c <fatfs_find_blank_cluster+0xa8>

00004e14 <fatfs_fat_set_cluster>:
    4e14:	03052783          	lw	a5,48(a0)
    4e18:	fe010113          	addi	sp,sp,-32
    4e1c:	00812c23          	sw	s0,24(sp)
    4e20:	00912a23          	sw	s1,20(sp)
    4e24:	01212823          	sw	s2,16(sp)
    4e28:	01312623          	sw	s3,12(sp)
    4e2c:	00112e23          	sw	ra,28(sp)
    4e30:	00050993          	mv	s3,a0
    4e34:	00058413          	mv	s0,a1
    4e38:	00060493          	mv	s1,a2
    4e3c:	0085d913          	srli	s2,a1,0x8
    4e40:	00078463          	beqz	a5,4e48 <fatfs_fat_set_cluster+0x34>
    4e44:	0075d913          	srli	s2,a1,0x7
    4e48:	0149a583          	lw	a1,20(s3)
    4e4c:	00098513          	mv	a0,s3
    4e50:	00b905b3          	add	a1,s2,a1
    4e54:	ffffe097          	auipc	ra,0xffffe
    4e58:	bfc080e7          	jalr	-1028(ra) # 2a50 <fatfs_fat_read_sector>
    4e5c:	00050693          	mv	a3,a0
    4e60:	00000513          	li	a0,0
    4e64:	04068c63          	beqz	a3,4ebc <fatfs_fat_set_cluster+0xa8>
    4e68:	0309a703          	lw	a4,48(s3)
    4e6c:	2086a783          	lw	a5,520(a3)
    4e70:	0ff4f613          	zext.b	a2,s1
    4e74:	06071263          	bnez	a4,4ed8 <fatfs_fat_set_cluster+0xc4>
    4e78:	00891913          	slli	s2,s2,0x8
    4e7c:	41240433          	sub	s0,s0,s2
    4e80:	00010737          	lui	a4,0x10
    4e84:	00141413          	slli	s0,s0,0x1
    4e88:	ffe70713          	addi	a4,a4,-2 # fffe <_files+0x915a>
    4e8c:	00e47433          	and	s0,s0,a4
    4e90:	008787b3          	add	a5,a5,s0
    4e94:	00c78023          	sb	a2,0(a5)
    4e98:	2086a783          	lw	a5,520(a3)
    4e9c:	01049493          	slli	s1,s1,0x10
    4ea0:	0104d493          	srli	s1,s1,0x10
    4ea4:	008787b3          	add	a5,a5,s0
    4ea8:	0084d493          	srli	s1,s1,0x8
    4eac:	009780a3          	sb	s1,1(a5)
    4eb0:	00100793          	li	a5,1
    4eb4:	20f6a223          	sw	a5,516(a3)
    4eb8:	00100513          	li	a0,1
    4ebc:	01c12083          	lw	ra,28(sp)
    4ec0:	01812403          	lw	s0,24(sp)
    4ec4:	01412483          	lw	s1,20(sp)
    4ec8:	01012903          	lw	s2,16(sp)
    4ecc:	00c12983          	lw	s3,12(sp)
    4ed0:	02010113          	addi	sp,sp,32
    4ed4:	00008067          	ret
    4ed8:	00791913          	slli	s2,s2,0x7
    4edc:	41240433          	sub	s0,s0,s2
    4ee0:	00010737          	lui	a4,0x10
    4ee4:	ffc70713          	addi	a4,a4,-4 # fffc <_files+0x9158>
    4ee8:	00241413          	slli	s0,s0,0x2
    4eec:	00e47433          	and	s0,s0,a4
    4ef0:	008787b3          	add	a5,a5,s0
    4ef4:	00c78023          	sb	a2,0(a5)
    4ef8:	2086a783          	lw	a5,520(a3)
    4efc:	0084d713          	srli	a4,s1,0x8
    4f00:	008787b3          	add	a5,a5,s0
    4f04:	00e780a3          	sb	a4,1(a5)
    4f08:	2086a783          	lw	a5,520(a3)
    4f0c:	0104d713          	srli	a4,s1,0x10
    4f10:	0184d493          	srli	s1,s1,0x18
    4f14:	008787b3          	add	a5,a5,s0
    4f18:	00e78123          	sb	a4,2(a5)
    4f1c:	2086a783          	lw	a5,520(a3)
    4f20:	008787b3          	add	a5,a5,s0
    4f24:	009781a3          	sb	s1,3(a5)
    4f28:	f89ff06f          	j	4eb0 <fatfs_fat_set_cluster+0x9c>

00004f2c <fatfs_free_cluster_chain>:
    4f2c:	fe010113          	addi	sp,sp,-32
    4f30:	00812c23          	sw	s0,24(sp)
    4f34:	01212823          	sw	s2,16(sp)
    4f38:	00112e23          	sw	ra,28(sp)
    4f3c:	00912a23          	sw	s1,20(sp)
    4f40:	00050413          	mv	s0,a0
    4f44:	ffd00913          	li	s2,-3
    4f48:	fff58793          	addi	a5,a1,-1
    4f4c:	02f97063          	bgeu	s2,a5,4f6c <fatfs_free_cluster_chain+0x40>
    4f50:	01c12083          	lw	ra,28(sp)
    4f54:	01812403          	lw	s0,24(sp)
    4f58:	01412483          	lw	s1,20(sp)
    4f5c:	01012903          	lw	s2,16(sp)
    4f60:	00100513          	li	a0,1
    4f64:	02010113          	addi	sp,sp,32
    4f68:	00008067          	ret
    4f6c:	00040513          	mv	a0,s0
    4f70:	00b12623          	sw	a1,12(sp)
    4f74:	fffff097          	auipc	ra,0xfffff
    4f78:	ee0080e7          	jalr	-288(ra) # 3e54 <fatfs_find_next_cluster>
    4f7c:	00c12583          	lw	a1,12(sp)
    4f80:	00050493          	mv	s1,a0
    4f84:	00000613          	li	a2,0
    4f88:	00040513          	mv	a0,s0
    4f8c:	00000097          	auipc	ra,0x0
    4f90:	e88080e7          	jalr	-376(ra) # 4e14 <fatfs_fat_set_cluster>
    4f94:	00048593          	mv	a1,s1
    4f98:	fb1ff06f          	j	4f48 <fatfs_free_cluster_chain+0x1c>

00004f9c <fatfs_fat_add_cluster_to_chain>:
    4f9c:	fff00793          	li	a5,-1
    4fa0:	02f59463          	bne	a1,a5,4fc8 <fatfs_fat_add_cluster_to_chain+0x2c>
    4fa4:	00000513          	li	a0,0
    4fa8:	00008067          	ret
    4fac:	00000513          	li	a0,0
    4fb0:	01c12083          	lw	ra,28(sp)
    4fb4:	01812403          	lw	s0,24(sp)
    4fb8:	01412483          	lw	s1,20(sp)
    4fbc:	01012903          	lw	s2,16(sp)
    4fc0:	02010113          	addi	sp,sp,32
    4fc4:	00008067          	ret
    4fc8:	fe010113          	addi	sp,sp,-32
    4fcc:	00812c23          	sw	s0,24(sp)
    4fd0:	00912a23          	sw	s1,20(sp)
    4fd4:	01212823          	sw	s2,16(sp)
    4fd8:	00050413          	mv	s0,a0
    4fdc:	00112e23          	sw	ra,28(sp)
    4fe0:	00058513          	mv	a0,a1
    4fe4:	00060493          	mv	s1,a2
    4fe8:	fff00913          	li	s2,-1
    4fec:	00050593          	mv	a1,a0
    4ff0:	00a12623          	sw	a0,12(sp)
    4ff4:	00040513          	mv	a0,s0
    4ff8:	fffff097          	auipc	ra,0xfffff
    4ffc:	e5c080e7          	jalr	-420(ra) # 3e54 <fatfs_find_next_cluster>
    5000:	fa0506e3          	beqz	a0,4fac <fatfs_fat_add_cluster_to_chain+0x10>
    5004:	00c12583          	lw	a1,12(sp)
    5008:	ff2512e3          	bne	a0,s2,4fec <fatfs_fat_add_cluster_to_chain+0x50>
    500c:	00048613          	mv	a2,s1
    5010:	00040513          	mv	a0,s0
    5014:	00000097          	auipc	ra,0x0
    5018:	e00080e7          	jalr	-512(ra) # 4e14 <fatfs_fat_set_cluster>
    501c:	fff00613          	li	a2,-1
    5020:	00048593          	mv	a1,s1
    5024:	00040513          	mv	a0,s0
    5028:	00000097          	auipc	ra,0x0
    502c:	dec080e7          	jalr	-532(ra) # 4e14 <fatfs_fat_set_cluster>
    5030:	00100513          	li	a0,1
    5034:	f7dff06f          	j	4fb0 <fatfs_fat_add_cluster_to_chain+0x14>

00005038 <fatfs_add_free_space>:
    5038:	02452703          	lw	a4,36(a0)
    503c:	fd010113          	addi	sp,sp,-48
    5040:	02812423          	sw	s0,40(sp)
    5044:	03212023          	sw	s2,32(sp)
    5048:	01412c23          	sw	s4,24(sp)
    504c:	01512a23          	sw	s5,20(sp)
    5050:	02112623          	sw	ra,44(sp)
    5054:	02912223          	sw	s1,36(sp)
    5058:	01312e23          	sw	s3,28(sp)
    505c:	fff00793          	li	a5,-1
    5060:	0005aa83          	lw	s5,0(a1)
    5064:	00050413          	mv	s0,a0
    5068:	00058913          	mv	s2,a1
    506c:	00060a13          	mv	s4,a2
    5070:	00f70863          	beq	a4,a5,5080 <fatfs_add_free_space+0x48>
    5074:	fff00593          	li	a1,-1
    5078:	00000097          	auipc	ra,0x0
    507c:	bc4080e7          	jalr	-1084(ra) # 4c3c <fatfs_set_fs_info_next_free_cluster>
    5080:	00000493          	li	s1,0
    5084:	03449663          	bne	s1,s4,50b0 <fatfs_add_free_space+0x78>
    5088:	00100513          	li	a0,1
    508c:	02c12083          	lw	ra,44(sp)
    5090:	02812403          	lw	s0,40(sp)
    5094:	02412483          	lw	s1,36(sp)
    5098:	02012903          	lw	s2,32(sp)
    509c:	01c12983          	lw	s3,28(sp)
    50a0:	01812a03          	lw	s4,24(sp)
    50a4:	01412a83          	lw	s5,20(sp)
    50a8:	03010113          	addi	sp,sp,48
    50ac:	00008067          	ret
    50b0:	00842583          	lw	a1,8(s0)
    50b4:	00c10613          	addi	a2,sp,12
    50b8:	00040513          	mv	a0,s0
    50bc:	00000097          	auipc	ra,0x0
    50c0:	c38080e7          	jalr	-968(ra) # 4cf4 <fatfs_find_blank_cluster>
    50c4:	fc0504e3          	beqz	a0,508c <fatfs_add_free_space+0x54>
    50c8:	00c12983          	lw	s3,12(sp)
    50cc:	000a8593          	mv	a1,s5
    50d0:	00040513          	mv	a0,s0
    50d4:	00098613          	mv	a2,s3
    50d8:	00000097          	auipc	ra,0x0
    50dc:	d3c080e7          	jalr	-708(ra) # 4e14 <fatfs_fat_set_cluster>
    50e0:	fff00613          	li	a2,-1
    50e4:	00098593          	mv	a1,s3
    50e8:	00040513          	mv	a0,s0
    50ec:	00000097          	auipc	ra,0x0
    50f0:	d28080e7          	jalr	-728(ra) # 4e14 <fatfs_fat_set_cluster>
    50f4:	00049463          	bnez	s1,50fc <fatfs_add_free_space+0xc4>
    50f8:	01392023          	sw	s3,0(s2)
    50fc:	00148493          	addi	s1,s1,1
    5100:	00098a93          	mv	s5,s3
    5104:	f81ff06f          	j	5084 <fatfs_add_free_space+0x4c>

00005108 <_write_sectors>:
    5108:	fb010113          	addi	sp,sp,-80
    510c:	03312e23          	sw	s3,60(sp)
    5110:	000079b7          	lui	s3,0x7
    5114:	03612823          	sw	s6,48(sp)
    5118:	a3c9cb03          	lbu	s6,-1476(s3) # 6a3c <_fs>
    511c:	03512a23          	sw	s5,52(sp)
    5120:	00058a93          	mv	s5,a1
    5124:	fff00793          	li	a5,-1
    5128:	04812423          	sw	s0,72(sp)
    512c:	000b0593          	mv	a1,s6
    5130:	00050413          	mv	s0,a0
    5134:	000a8513          	mv	a0,s5
    5138:	00f12e23          	sw	a5,28(sp)
    513c:	04112623          	sw	ra,76(sp)
    5140:	04912223          	sw	s1,68(sp)
    5144:	05212023          	sw	s2,64(sp)
    5148:	03712623          	sw	s7,44(sp)
    514c:	03812423          	sw	s8,40(sp)
    5150:	00068b93          	mv	s7,a3
    5154:	03912223          	sw	s9,36(sp)
    5158:	03a12023          	sw	s10,32(sp)
    515c:	00060c93          	mv	s9,a2
    5160:	03412c23          	sw	s4,56(sp)
    5164:	ffffd097          	auipc	ra,0xffffd
    5168:	f4c080e7          	jalr	-180(ra) # 20b0 <__udivsi3>
    516c:	00050493          	mv	s1,a0
    5170:	000b0593          	mv	a1,s6
    5174:	000a8513          	mv	a0,s5
    5178:	ffffd097          	auipc	ra,0xffffd
    517c:	f80080e7          	jalr	-128(ra) # 20f8 <__umodsi3>
    5180:	00ab87b3          	add	a5,s7,a0
    5184:	00050c13          	mv	s8,a0
    5188:	a3c98d13          	addi	s10,s3,-1476
    518c:	000b8913          	mv	s2,s7
    5190:	00fb7e63          	bgeu	s6,a5,51ac <_write_sectors+0xa4>
    5194:	00048593          	mv	a1,s1
    5198:	000b0513          	mv	a0,s6
    519c:	ffffd097          	auipc	ra,0xffffd
    51a0:	704080e7          	jalr	1796(ra) # 28a0 <__mulsi3>
    51a4:	415b07b3          	sub	a5,s6,s5
    51a8:	00f50933          	add	s2,a0,a5
    51ac:	22842a03          	lw	s4,552(s0)
    51b0:	029a1a63          	bne	s4,s1,51e4 <_write_sectors+0xdc>
    51b4:	22c42583          	lw	a1,556(s0)
    51b8:	a3c98513          	addi	a0,s3,-1476
    51bc:	ffffe097          	auipc	ra,0xffffe
    51c0:	a40080e7          	jalr	-1472(ra) # 2bfc <fatfs_lba_of_cluster>
    51c4:	018505b3          	add	a1,a0,s8
    51c8:	00090693          	mv	a3,s2
    51cc:	000c8613          	mv	a2,s9
    51d0:	a3c98513          	addi	a0,s3,-1476
    51d4:	ffffe097          	auipc	ra,0xffffe
    51d8:	a90080e7          	jalr	-1392(ra) # 2c64 <fatfs_sector_write>
    51dc:	04050a63          	beqz	a0,5230 <_write_sectors+0x128>
    51e0:	0540006f          	j	5234 <_write_sectors+0x12c>
    51e4:	096ae663          	bltu	s5,s6,5270 <_write_sectors+0x168>
    51e8:	001a0793          	addi	a5,s4,1
    51ec:	08979263          	bne	a5,s1,5270 <_write_sectors+0x168>
    51f0:	22c42583          	lw	a1,556(s0)
    51f4:	fff00a93          	li	s5,-1
    51f8:	089a6263          	bltu	s4,s1,527c <_write_sectors+0x174>
    51fc:	fff00793          	li	a5,-1
    5200:	0af59463          	bne	a1,a5,52a8 <_write_sectors+0x1a0>
    5204:	000d4583          	lbu	a1,0(s10)
    5208:	fff58513          	addi	a0,a1,-1
    520c:	01750533          	add	a0,a0,s7
    5210:	ffffd097          	auipc	ra,0xffffd
    5214:	ea0080e7          	jalr	-352(ra) # 20b0 <__udivsi3>
    5218:	00050613          	mv	a2,a0
    521c:	01c10593          	addi	a1,sp,28
    5220:	a3c98513          	addi	a0,s3,-1476
    5224:	00000097          	auipc	ra,0x0
    5228:	e14080e7          	jalr	-492(ra) # 5038 <fatfs_add_free_space>
    522c:	06051c63          	bnez	a0,52a4 <_write_sectors+0x19c>
    5230:	00000913          	li	s2,0
    5234:	04c12083          	lw	ra,76(sp)
    5238:	04812403          	lw	s0,72(sp)
    523c:	04412483          	lw	s1,68(sp)
    5240:	03c12983          	lw	s3,60(sp)
    5244:	03812a03          	lw	s4,56(sp)
    5248:	03412a83          	lw	s5,52(sp)
    524c:	03012b03          	lw	s6,48(sp)
    5250:	02c12b83          	lw	s7,44(sp)
    5254:	02812c03          	lw	s8,40(sp)
    5258:	02412c83          	lw	s9,36(sp)
    525c:	02012d03          	lw	s10,32(sp)
    5260:	00090513          	mv	a0,s2
    5264:	04012903          	lw	s2,64(sp)
    5268:	05010113          	addi	sp,sp,80
    526c:	00008067          	ret
    5270:	00442583          	lw	a1,4(s0)
    5274:	00000a13          	li	s4,0
    5278:	f7dff06f          	j	51f4 <_write_sectors+0xec>
    527c:	a3c98513          	addi	a0,s3,-1476
    5280:	00b12623          	sw	a1,12(sp)
    5284:	fffff097          	auipc	ra,0xfffff
    5288:	bd0080e7          	jalr	-1072(ra) # 3e54 <fatfs_find_next_cluster>
    528c:	00c12583          	lw	a1,12(sp)
    5290:	00b12e23          	sw	a1,28(sp)
    5294:	f75508e3          	beq	a0,s5,5204 <_write_sectors+0xfc>
    5298:	001a0a13          	addi	s4,s4,1
    529c:	00050593          	mv	a1,a0
    52a0:	f59ff06f          	j	51f8 <_write_sectors+0xf0>
    52a4:	01c12583          	lw	a1,28(sp)
    52a8:	22b42623          	sw	a1,556(s0)
    52ac:	22942423          	sw	s1,552(s0)
    52b0:	f09ff06f          	j	51b8 <_write_sectors+0xb0>

000052b4 <fl_fflush>:
    52b4:	000067b7          	lui	a5,0x6
    52b8:	2387a783          	lw	a5,568(a5) # 6238 <_filelib_init>
    52bc:	ff010113          	addi	sp,sp,-16
    52c0:	00812423          	sw	s0,8(sp)
    52c4:	00112623          	sw	ra,12(sp)
    52c8:	00912223          	sw	s1,4(sp)
    52cc:	00050413          	mv	s0,a0
    52d0:	00079663          	bnez	a5,52dc <fl_fflush+0x28>
    52d4:	ffffe097          	auipc	ra,0xffffe
    52d8:	a64080e7          	jalr	-1436(ra) # 2d38 <fl_init>
    52dc:	04040863          	beqz	s0,532c <fl_fflush+0x78>
    52e0:	000077b7          	lui	a5,0x7
    52e4:	a3c78713          	addi	a4,a5,-1476 # 6a3c <_fs>
    52e8:	03c72703          	lw	a4,60(a4)
    52ec:	a3c78493          	addi	s1,a5,-1476
    52f0:	00070463          	beqz	a4,52f8 <fl_fflush+0x44>
    52f4:	000700e7          	jalr	a4
    52f8:	43442783          	lw	a5,1076(s0)
    52fc:	02078263          	beqz	a5,5320 <fl_fflush+0x6c>
    5300:	43042583          	lw	a1,1072(s0)
    5304:	00100693          	li	a3,1
    5308:	23040613          	addi	a2,s0,560
    530c:	00040513          	mv	a0,s0
    5310:	00000097          	auipc	ra,0x0
    5314:	df8080e7          	jalr	-520(ra) # 5108 <_write_sectors>
    5318:	00050463          	beqz	a0,5320 <fl_fflush+0x6c>
    531c:	42042a23          	sw	zero,1076(s0)
    5320:	0404a783          	lw	a5,64(s1)
    5324:	00078463          	beqz	a5,532c <fl_fflush+0x78>
    5328:	000780e7          	jalr	a5
    532c:	00c12083          	lw	ra,12(sp)
    5330:	00812403          	lw	s0,8(sp)
    5334:	00412483          	lw	s1,4(sp)
    5338:	00000513          	li	a0,0
    533c:	01010113          	addi	sp,sp,16
    5340:	00008067          	ret

00005344 <fl_fclose>:
    5344:	000067b7          	lui	a5,0x6
    5348:	2387a783          	lw	a5,568(a5) # 6238 <_filelib_init>
    534c:	ff010113          	addi	sp,sp,-16
    5350:	00812423          	sw	s0,8(sp)
    5354:	00112623          	sw	ra,12(sp)
    5358:	00912223          	sw	s1,4(sp)
    535c:	01212023          	sw	s2,0(sp)
    5360:	00050413          	mv	s0,a0
    5364:	00079663          	bnez	a5,5370 <fl_fclose+0x2c>
    5368:	ffffe097          	auipc	ra,0xffffe
    536c:	9d0080e7          	jalr	-1584(ra) # 2d38 <fl_init>
    5370:	08040e63          	beqz	s0,540c <fl_fclose+0xc8>
    5374:	000074b7          	lui	s1,0x7
    5378:	a3c48793          	addi	a5,s1,-1476 # 6a3c <_fs>
    537c:	03c7a783          	lw	a5,60(a5)
    5380:	a3c48913          	addi	s2,s1,-1476
    5384:	00078463          	beqz	a5,538c <fl_fclose+0x48>
    5388:	000780e7          	jalr	a5
    538c:	00040513          	mv	a0,s0
    5390:	00000097          	auipc	ra,0x0
    5394:	f24080e7          	jalr	-220(ra) # 52b4 <fl_fflush>
    5398:	01042783          	lw	a5,16(s0)
    539c:	00078e63          	beqz	a5,53b8 <fl_fclose+0x74>
    53a0:	00c42683          	lw	a3,12(s0)
    53a4:	00042583          	lw	a1,0(s0)
    53a8:	21c40613          	addi	a2,s0,540
    53ac:	a3c48513          	addi	a0,s1,-1476
    53b0:	fffff097          	auipc	ra,0xfffff
    53b4:	300080e7          	jalr	768(ra) # 46b0 <fatfs_update_file_length>
    53b8:	fff00793          	li	a5,-1
    53bc:	42f42823          	sw	a5,1072(s0)
    53c0:	00040513          	mv	a0,s0
    53c4:	00042423          	sw	zero,8(s0)
    53c8:	00042623          	sw	zero,12(s0)
    53cc:	00042223          	sw	zero,4(s0)
    53d0:	42042a23          	sw	zero,1076(s0)
    53d4:	00042823          	sw	zero,16(s0)
    53d8:	ffffd097          	auipc	ra,0xffffd
    53dc:	7dc080e7          	jalr	2012(ra) # 2bb4 <_free_file>
    53e0:	a3c48513          	addi	a0,s1,-1476
    53e4:	fffff097          	auipc	ra,0xfffff
    53e8:	a14080e7          	jalr	-1516(ra) # 3df8 <fatfs_fat_purge>
    53ec:	04092783          	lw	a5,64(s2)
    53f0:	00078e63          	beqz	a5,540c <fl_fclose+0xc8>
    53f4:	00812403          	lw	s0,8(sp)
    53f8:	00c12083          	lw	ra,12(sp)
    53fc:	00412483          	lw	s1,4(sp)
    5400:	00012903          	lw	s2,0(sp)
    5404:	01010113          	addi	sp,sp,16
    5408:	00078067          	jr	a5
    540c:	00c12083          	lw	ra,12(sp)
    5410:	00812403          	lw	s0,8(sp)
    5414:	00412483          	lw	s1,4(sp)
    5418:	00012903          	lw	s2,0(sp)
    541c:	01010113          	addi	sp,sp,16
    5420:	00008067          	ret

00005424 <fl_fread>:
    5424:	fd010113          	addi	sp,sp,-48
    5428:	01612823          	sw	s6,16(sp)
    542c:	00050b13          	mv	s6,a0
    5430:	00058513          	mv	a0,a1
    5434:	00060593          	mv	a1,a2
    5438:	02812423          	sw	s0,40(sp)
    543c:	02912223          	sw	s1,36(sp)
    5440:	02112623          	sw	ra,44(sp)
    5444:	03212023          	sw	s2,32(sp)
    5448:	01312e23          	sw	s3,28(sp)
    544c:	01412c23          	sw	s4,24(sp)
    5450:	01512a23          	sw	s5,20(sp)
    5454:	01712623          	sw	s7,12(sp)
    5458:	01812423          	sw	s8,8(sp)
    545c:	01912223          	sw	s9,4(sp)
    5460:	00068413          	mv	s0,a3
    5464:	ffffd097          	auipc	ra,0xffffd
    5468:	43c080e7          	jalr	1084(ra) # 28a0 <__mulsi3>
    546c:	000067b7          	lui	a5,0x6
    5470:	2387a783          	lw	a5,568(a5) # 6238 <_filelib_init>
    5474:	00050493          	mv	s1,a0
    5478:	00079663          	bnez	a5,5484 <fl_fread+0x60>
    547c:	ffffe097          	auipc	ra,0xffffe
    5480:	8bc080e7          	jalr	-1860(ra) # 2d38 <fl_init>
    5484:	120b0e63          	beqz	s6,55c0 <fl_fread+0x19c>
    5488:	12040c63          	beqz	s0,55c0 <fl_fread+0x19c>
    548c:	43844783          	lbu	a5,1080(s0)
    5490:	0017f793          	andi	a5,a5,1
    5494:	12078663          	beqz	a5,55c0 <fl_fread+0x19c>
    5498:	0a048e63          	beqz	s1,5554 <fl_fread+0x130>
    549c:	00842583          	lw	a1,8(s0)
    54a0:	00c42783          	lw	a5,12(s0)
    54a4:	10f5fe63          	bgeu	a1,a5,55c0 <fl_fread+0x19c>
    54a8:	00b48733          	add	a4,s1,a1
    54ac:	00e7f463          	bgeu	a5,a4,54b4 <fl_fread+0x90>
    54b0:	40b784b3          	sub	s1,a5,a1
    54b4:	0095da13          	srli	s4,a1,0x9
    54b8:	1ff5f913          	andi	s2,a1,511
    54bc:	00000993          	li	s3,0
    54c0:	23040b93          	addi	s7,s0,560
    54c4:	20000c13          	li	s8,512
    54c8:	1ff00c93          	li	s9,511
    54cc:	0899d263          	bge	s3,s1,5550 <fl_fread+0x12c>
    54d0:	04091463          	bnez	s2,5518 <fl_fread+0xf4>
    54d4:	413486b3          	sub	a3,s1,s3
    54d8:	04dcd063          	bge	s9,a3,5518 <fl_fread+0xf4>
    54dc:	4096d693          	srai	a3,a3,0x9
    54e0:	013b0633          	add	a2,s6,s3
    54e4:	000a0593          	mv	a1,s4
    54e8:	00040513          	mv	a0,s0
    54ec:	fffff097          	auipc	ra,0xfffff
    54f0:	604080e7          	jalr	1540(ra) # 4af0 <_read_sectors>
    54f4:	04050e63          	beqz	a0,5550 <fl_fread+0x12c>
    54f8:	00951a93          	slli	s5,a0,0x9
    54fc:	00aa0a33          	add	s4,s4,a0
    5500:	00842783          	lw	a5,8(s0)
    5504:	015989b3          	add	s3,s3,s5
    5508:	00000913          	li	s2,0
    550c:	015787b3          	add	a5,a5,s5
    5510:	00f42423          	sw	a5,8(s0)
    5514:	fb9ff06f          	j	54cc <fl_fread+0xa8>
    5518:	43042783          	lw	a5,1072(s0)
    551c:	07478c63          	beq	a5,s4,5594 <fl_fread+0x170>
    5520:	43442783          	lw	a5,1076(s0)
    5524:	00078863          	beqz	a5,5534 <fl_fread+0x110>
    5528:	00040513          	mv	a0,s0
    552c:	00000097          	auipc	ra,0x0
    5530:	d88080e7          	jalr	-632(ra) # 52b4 <fl_fflush>
    5534:	00100693          	li	a3,1
    5538:	000b8613          	mv	a2,s7
    553c:	000a0593          	mv	a1,s4
    5540:	00040513          	mv	a0,s0
    5544:	fffff097          	auipc	ra,0xfffff
    5548:	5ac080e7          	jalr	1452(ra) # 4af0 <_read_sectors>
    554c:	04051063          	bnez	a0,558c <fl_fread+0x168>
    5550:	00098493          	mv	s1,s3
    5554:	02c12083          	lw	ra,44(sp)
    5558:	02812403          	lw	s0,40(sp)
    555c:	02012903          	lw	s2,32(sp)
    5560:	01c12983          	lw	s3,28(sp)
    5564:	01812a03          	lw	s4,24(sp)
    5568:	01412a83          	lw	s5,20(sp)
    556c:	01012b03          	lw	s6,16(sp)
    5570:	00c12b83          	lw	s7,12(sp)
    5574:	00812c03          	lw	s8,8(sp)
    5578:	00412c83          	lw	s9,4(sp)
    557c:	00048513          	mv	a0,s1
    5580:	02412483          	lw	s1,36(sp)
    5584:	03010113          	addi	sp,sp,48
    5588:	00008067          	ret
    558c:	43442823          	sw	s4,1072(s0)
    5590:	42042a23          	sw	zero,1076(s0)
    5594:	412c07b3          	sub	a5,s8,s2
    5598:	41348ab3          	sub	s5,s1,s3
    559c:	0157d463          	bge	a5,s5,55a4 <fl_fread+0x180>
    55a0:	00078a93          	mv	s5,a5
    55a4:	000a8613          	mv	a2,s5
    55a8:	012b85b3          	add	a1,s7,s2
    55ac:	013b0533          	add	a0,s6,s3
    55b0:	ffffd097          	auipc	ra,0xffffd
    55b4:	bc8080e7          	jalr	-1080(ra) # 2178 <memcpy>
    55b8:	001a0a13          	addi	s4,s4,1
    55bc:	f45ff06f          	j	5500 <fl_fread+0xdc>
    55c0:	fff00493          	li	s1,-1
    55c4:	f91ff06f          	j	5554 <fl_fread+0x130>

000055c8 <fatfs_allocate_free_space>:
    55c8:	02069a63          	bnez	a3,55fc <fatfs_allocate_free_space+0x34>
    55cc:	00000513          	li	a0,0
    55d0:	00008067          	ret
    55d4:	00000513          	li	a0,0
    55d8:	02c12083          	lw	ra,44(sp)
    55dc:	02812403          	lw	s0,40(sp)
    55e0:	02412483          	lw	s1,36(sp)
    55e4:	02012903          	lw	s2,32(sp)
    55e8:	01c12983          	lw	s3,28(sp)
    55ec:	01812a03          	lw	s4,24(sp)
    55f0:	01412a83          	lw	s5,20(sp)
    55f4:	03010113          	addi	sp,sp,48
    55f8:	00008067          	ret
    55fc:	02452703          	lw	a4,36(a0)
    5600:	fd010113          	addi	sp,sp,-48
    5604:	02812423          	sw	s0,40(sp)
    5608:	03212023          	sw	s2,32(sp)
    560c:	01312e23          	sw	s3,28(sp)
    5610:	01512a23          	sw	s5,20(sp)
    5614:	02112623          	sw	ra,44(sp)
    5618:	02912223          	sw	s1,36(sp)
    561c:	01412c23          	sw	s4,24(sp)
    5620:	fff00793          	li	a5,-1
    5624:	00050413          	mv	s0,a0
    5628:	00058a93          	mv	s5,a1
    562c:	00060993          	mv	s3,a2
    5630:	00068913          	mv	s2,a3
    5634:	00f70863          	beq	a4,a5,5644 <fatfs_allocate_free_space+0x7c>
    5638:	fff00593          	li	a1,-1
    563c:	fffff097          	auipc	ra,0xfffff
    5640:	600080e7          	jalr	1536(ra) # 4c3c <fatfs_set_fs_info_next_free_cluster>
    5644:	00044a03          	lbu	s4,0(s0)
    5648:	00090513          	mv	a0,s2
    564c:	009a1a13          	slli	s4,s4,0x9
    5650:	000a0593          	mv	a1,s4
    5654:	ffffd097          	auipc	ra,0xffffd
    5658:	a5c080e7          	jalr	-1444(ra) # 20b0 <__udivsi3>
    565c:	00050493          	mv	s1,a0
    5660:	00050593          	mv	a1,a0
    5664:	000a0513          	mv	a0,s4
    5668:	ffffd097          	auipc	ra,0xffffd
    566c:	238080e7          	jalr	568(ra) # 28a0 <__mulsi3>
    5670:	01250463          	beq	a0,s2,5678 <fatfs_allocate_free_space+0xb0>
    5674:	00148493          	addi	s1,s1,1
    5678:	040a8463          	beqz	s5,56c0 <fatfs_allocate_free_space+0xf8>
    567c:	00842583          	lw	a1,8(s0)
    5680:	00c10613          	addi	a2,sp,12
    5684:	00040513          	mv	a0,s0
    5688:	fffff097          	auipc	ra,0xfffff
    568c:	66c080e7          	jalr	1644(ra) # 4cf4 <fatfs_find_blank_cluster>
    5690:	f40502e3          	beqz	a0,55d4 <fatfs_allocate_free_space+0xc>
    5694:	00100793          	li	a5,1
    5698:	02f49863          	bne	s1,a5,56c8 <fatfs_allocate_free_space+0x100>
    569c:	00c12483          	lw	s1,12(sp)
    56a0:	fff00613          	li	a2,-1
    56a4:	00040513          	mv	a0,s0
    56a8:	00048593          	mv	a1,s1
    56ac:	fffff097          	auipc	ra,0xfffff
    56b0:	768080e7          	jalr	1896(ra) # 4e14 <fatfs_fat_set_cluster>
    56b4:	00100513          	li	a0,1
    56b8:	0099a023          	sw	s1,0(s3)
    56bc:	f1dff06f          	j	55d8 <fatfs_allocate_free_space+0x10>
    56c0:	0009a783          	lw	a5,0(s3)
    56c4:	00f12623          	sw	a5,12(sp)
    56c8:	00048613          	mv	a2,s1
    56cc:	00c10593          	addi	a1,sp,12
    56d0:	00040513          	mv	a0,s0
    56d4:	00000097          	auipc	ra,0x0
    56d8:	964080e7          	jalr	-1692(ra) # 5038 <fatfs_add_free_space>
    56dc:	00a03533          	snez	a0,a0
    56e0:	ef9ff06f          	j	55d8 <fatfs_allocate_free_space+0x10>

000056e4 <fatfs_add_file_entry>:
    56e4:	f8010113          	addi	sp,sp,-128
    56e8:	00f12a23          	sw	a5,20(sp)
    56ec:	03852783          	lw	a5,56(a0)
    56f0:	06112e23          	sw	ra,124(sp)
    56f4:	06812c23          	sw	s0,120(sp)
    56f8:	06912a23          	sw	s1,116(sp)
    56fc:	07212823          	sw	s2,112(sp)
    5700:	07312623          	sw	s3,108(sp)
    5704:	07412423          	sw	s4,104(sp)
    5708:	07512223          	sw	s5,100(sp)
    570c:	07612023          	sw	s6,96(sp)
    5710:	05712e23          	sw	s7,92(sp)
    5714:	05812c23          	sw	s8,88(sp)
    5718:	05912a23          	sw	s9,84(sp)
    571c:	05a12823          	sw	s10,80(sp)
    5720:	05b12623          	sw	s11,76(sp)
    5724:	00b12423          	sw	a1,8(sp)
    5728:	00c12623          	sw	a2,12(sp)
    572c:	00e12823          	sw	a4,16(sp)
    5730:	01012c23          	sw	a6,24(sp)
    5734:	04079263          	bnez	a5,5778 <fatfs_add_file_entry+0x94>
    5738:	00000513          	li	a0,0
    573c:	07c12083          	lw	ra,124(sp)
    5740:	07812403          	lw	s0,120(sp)
    5744:	07412483          	lw	s1,116(sp)
    5748:	07012903          	lw	s2,112(sp)
    574c:	06c12983          	lw	s3,108(sp)
    5750:	06812a03          	lw	s4,104(sp)
    5754:	06412a83          	lw	s5,100(sp)
    5758:	06012b03          	lw	s6,96(sp)
    575c:	05c12b83          	lw	s7,92(sp)
    5760:	05812c03          	lw	s8,88(sp)
    5764:	05412c83          	lw	s9,84(sp)
    5768:	05012d03          	lw	s10,80(sp)
    576c:	04c12d83          	lw	s11,76(sp)
    5770:	08010113          	addi	sp,sp,128
    5774:	00008067          	ret
    5778:	00050413          	mv	s0,a0
    577c:	00c12503          	lw	a0,12(sp)
    5780:	00068a93          	mv	s5,a3
    5784:	ffffe097          	auipc	ra,0xffffe
    5788:	9c0080e7          	jalr	-1600(ra) # 3144 <fatfs_lfn_entries_required>
    578c:	00150713          	addi	a4,a0,1
    5790:	00100793          	li	a5,1
    5794:	00050493          	mv	s1,a0
    5798:	fae7f0e3          	bgeu	a5,a4,5738 <fatfs_add_file_entry+0x54>
    579c:	00000913          	li	s2,0
    57a0:	00000a13          	li	s4,0
    57a4:	00000993          	li	s3,0
    57a8:	00000b13          	li	s6,0
    57ac:	00000d93          	li	s11,0
    57b0:	0e500b93          	li	s7,229
    57b4:	01000c13          	li	s8,16
    57b8:	00812583          	lw	a1,8(sp)
    57bc:	00000693          	li	a3,0
    57c0:	00090613          	mv	a2,s2
    57c4:	00040513          	mv	a0,s0
    57c8:	ffffe097          	auipc	ra,0xffffe
    57cc:	79c080e7          	jalr	1948(ra) # 3f64 <fatfs_sector_reader>
    57d0:	14050463          	beqz	a0,5918 <fatfs_add_file_entry+0x234>
    57d4:	04440d13          	addi	s10,s0,68
    57d8:	000d8793          	mv	a5,s11
    57dc:	00000c93          	li	s9,0
    57e0:	000d0513          	mv	a0,s10
    57e4:	00f12e23          	sw	a5,28(sp)
    57e8:	ffffe097          	auipc	ra,0xffffe
    57ec:	86c080e7          	jalr	-1940(ra) # 3054 <fatfs_entry_lfn_text>
    57f0:	01c12783          	lw	a5,28(sp)
    57f4:	00050d93          	mv	s11,a0
    57f8:	02050c63          	beqz	a0,5830 <fatfs_add_file_entry+0x14c>
    57fc:	00079863          	bnez	a5,580c <fatfs_add_file_entry+0x128>
    5800:	000c8a13          	mv	s4,s9
    5804:	00090993          	mv	s3,s2
    5808:	00100b13          	li	s6,1
    580c:	00178d93          	addi	s11,a5,1
    5810:	001c8713          	addi	a4,s9,1
    5814:	0ff77c93          	zext.b	s9,a4
    5818:	020d0d13          	addi	s10,s10,32
    581c:	018c9663          	bne	s9,s8,5828 <fatfs_add_file_entry+0x144>
    5820:	00190913          	addi	s2,s2,1
    5824:	f95ff06f          	j	57b8 <fatfs_add_file_entry+0xd4>
    5828:	000d8793          	mv	a5,s11
    582c:	fb5ff06f          	j	57e0 <fatfs_add_file_entry+0xfc>
    5830:	000d4603          	lbu	a2,0(s10)
    5834:	0d761c63          	bne	a2,s7,590c <fatfs_add_file_entry+0x228>
    5838:	00079863          	bnez	a5,5848 <fatfs_add_file_entry+0x164>
    583c:	000c8a13          	mv	s4,s9
    5840:	00090993          	mv	s3,s2
    5844:	00100b13          	li	s6,1
    5848:	00178d93          	addi	s11,a5,1
    584c:	fc97c2e3          	blt	a5,s1,5810 <fatfs_add_file_entry+0x12c>
    5850:	00ba8693          	addi	a3,s5,11
    5854:	000a8713          	mv	a4,s5
    5858:	00000913          	li	s2,0
    585c:	00074603          	lbu	a2,0(a4)
    5860:	00195793          	srli	a5,s2,0x1
    5864:	00791913          	slli	s2,s2,0x7
    5868:	0127e7b3          	or	a5,a5,s2
    586c:	00170713          	addi	a4,a4,1
    5870:	00c787b3          	add	a5,a5,a2
    5874:	0ff7f913          	zext.b	s2,a5
    5878:	fed712e3          	bne	a4,a3,585c <fatfs_add_file_entry+0x178>
    587c:	00098b13          	mv	s6,s3
    5880:	00000d93          	li	s11,0
    5884:	04440c13          	addi	s8,s0,68
    5888:	01000c93          	li	s9,16
    588c:	00812583          	lw	a1,8(sp)
    5890:	00000693          	li	a3,0
    5894:	000b0613          	mv	a2,s6
    5898:	00040513          	mv	a0,s0
    589c:	ffffe097          	auipc	ra,0xffffe
    58a0:	6c8080e7          	jalr	1736(ra) # 3f64 <fatfs_sector_reader>
    58a4:	e8050ae3          	beqz	a0,5738 <fatfs_add_file_entry+0x54>
    58a8:	000c0b93          	mv	s7,s8
    58ac:	00000713          	li	a4,0
    58b0:	00000d13          	li	s10,0
    58b4:	000d9663          	bnez	s11,58c0 <fatfs_add_file_entry+0x1dc>
    58b8:	11699863          	bne	s3,s6,59c8 <fatfs_add_file_entry+0x2e4>
    58bc:	114d1663          	bne	s10,s4,59c8 <fatfs_add_file_entry+0x2e4>
    58c0:	0e049263          	bnez	s1,59a4 <fatfs_add_file_entry+0x2c0>
    58c4:	01812703          	lw	a4,24(sp)
    58c8:	01012603          	lw	a2,16(sp)
    58cc:	01412583          	lw	a1,20(sp)
    58d0:	02010693          	addi	a3,sp,32
    58d4:	000a8513          	mv	a0,s5
    58d8:	ffffe097          	auipc	ra,0xffffe
    58dc:	9c4080e7          	jalr	-1596(ra) # 329c <fatfs_sfn_create_entry>
    58e0:	02010593          	addi	a1,sp,32
    58e4:	02000613          	li	a2,32
    58e8:	000b8513          	mv	a0,s7
    58ec:	ffffd097          	auipc	ra,0xffffd
    58f0:	88c080e7          	jalr	-1908(ra) # 2178 <memcpy>
    58f4:	03842783          	lw	a5,56(s0)
    58f8:	24442503          	lw	a0,580(s0)
    58fc:	00100613          	li	a2,1
    5900:	000c0593          	mv	a1,s8
    5904:	000780e7          	jalr	a5
    5908:	e35ff06f          	j	573c <fatfs_add_file_entry+0x58>
    590c:	f20606e3          	beqz	a2,5838 <fatfs_add_file_entry+0x154>
    5910:	00000b13          	li	s6,0
    5914:	efdff06f          	j	5810 <fatfs_add_file_entry+0x12c>
    5918:	00842583          	lw	a1,8(s0)
    591c:	02010613          	addi	a2,sp,32
    5920:	00040513          	mv	a0,s0
    5924:	fffff097          	auipc	ra,0xfffff
    5928:	3d0080e7          	jalr	976(ra) # 4cf4 <fatfs_find_blank_cluster>
    592c:	e00506e3          	beqz	a0,5738 <fatfs_add_file_entry+0x54>
    5930:	02012b83          	lw	s7,32(sp)
    5934:	00812583          	lw	a1,8(sp)
    5938:	00040513          	mv	a0,s0
    593c:	000b8613          	mv	a2,s7
    5940:	fffff097          	auipc	ra,0xfffff
    5944:	65c080e7          	jalr	1628(ra) # 4f9c <fatfs_fat_add_cluster_to_chain>
    5948:	de0508e3          	beqz	a0,5738 <fatfs_add_file_entry+0x54>
    594c:	20000613          	li	a2,512
    5950:	00000593          	li	a1,0
    5954:	04440513          	addi	a0,s0,68
    5958:	ffffd097          	auipc	ra,0xffffd
    595c:	804080e7          	jalr	-2044(ra) # 215c <memset>
    5960:	00000c13          	li	s8,0
    5964:	00044783          	lbu	a5,0(s0)
    5968:	00fc6a63          	bltu	s8,a5,597c <fatfs_add_file_entry+0x298>
    596c:	ee0b12e3          	bnez	s6,5850 <fatfs_add_file_entry+0x16c>
    5970:	00090993          	mv	s3,s2
    5974:	00000a13          	li	s4,0
    5978:	ed9ff06f          	j	5850 <fatfs_add_file_entry+0x16c>
    597c:	00000693          	li	a3,0
    5980:	000c0613          	mv	a2,s8
    5984:	000b8593          	mv	a1,s7
    5988:	00040513          	mv	a0,s0
    598c:	ffffd097          	auipc	ra,0xffffd
    5990:	2f0080e7          	jalr	752(ra) # 2c7c <fatfs_write_sector>
    5994:	da0502e3          	beqz	a0,5738 <fatfs_add_file_entry+0x54>
    5998:	001c0c13          	addi	s8,s8,1
    599c:	0ffc7c13          	zext.b	s8,s8
    59a0:	fc5ff06f          	j	5964 <fatfs_add_file_entry+0x280>
    59a4:	00c12503          	lw	a0,12(sp)
    59a8:	fff48493          	addi	s1,s1,-1
    59ac:	00090693          	mv	a3,s2
    59b0:	00048613          	mv	a2,s1
    59b4:	000b8593          	mv	a1,s7
    59b8:	ffffd097          	auipc	ra,0xffffd
    59bc:	7bc080e7          	jalr	1980(ra) # 3174 <fatfs_filename_to_lfn>
    59c0:	00100d93          	li	s11,1
    59c4:	00100713          	li	a4,1
    59c8:	001d0793          	addi	a5,s10,1
    59cc:	0ff7fd13          	zext.b	s10,a5
    59d0:	020b8b93          	addi	s7,s7,32
    59d4:	ef9d10e3          	bne	s10,s9,58b4 <fatfs_add_file_entry+0x1d0>
    59d8:	00070e63          	beqz	a4,59f4 <fatfs_add_file_entry+0x310>
    59dc:	03842783          	lw	a5,56(s0)
    59e0:	24442503          	lw	a0,580(s0)
    59e4:	00100613          	li	a2,1
    59e8:	000c0593          	mv	a1,s8
    59ec:	000780e7          	jalr	a5
    59f0:	d40504e3          	beqz	a0,5738 <fatfs_add_file_entry+0x54>
    59f4:	001b0b13          	addi	s6,s6,1
    59f8:	e95ff06f          	j	588c <fatfs_add_file_entry+0x1a8>

000059fc <fl_fopen>:
    59fc:	000067b7          	lui	a5,0x6
    5a00:	2387a783          	lw	a5,568(a5) # 6238 <_filelib_init>
    5a04:	fa010113          	addi	sp,sp,-96
    5a08:	04812c23          	sw	s0,88(sp)
    5a0c:	05412423          	sw	s4,72(sp)
    5a10:	04112e23          	sw	ra,92(sp)
    5a14:	04912a23          	sw	s1,84(sp)
    5a18:	05212823          	sw	s2,80(sp)
    5a1c:	05312623          	sw	s3,76(sp)
    5a20:	05512223          	sw	s5,68(sp)
    5a24:	05612023          	sw	s6,64(sp)
    5a28:	03712e23          	sw	s7,60(sp)
    5a2c:	03812c23          	sw	s8,56(sp)
    5a30:	03912a23          	sw	s9,52(sp)
    5a34:	00050a13          	mv	s4,a0
    5a38:	00058413          	mv	s0,a1
    5a3c:	00079663          	bnez	a5,5a48 <fl_fopen+0x4c>
    5a40:	ffffd097          	auipc	ra,0xffffd
    5a44:	2f8080e7          	jalr	760(ra) # 2d38 <fl_init>
    5a48:	000067b7          	lui	a5,0x6
    5a4c:	2347a783          	lw	a5,564(a5) # 6234 <_filelib_valid>
    5a50:	36078c63          	beqz	a5,5dc8 <fl_fopen+0x3cc>
    5a54:	360a0a63          	beqz	s4,5dc8 <fl_fopen+0x3cc>
    5a58:	10040863          	beqz	s0,5b68 <fl_fopen+0x16c>
    5a5c:	00040513          	mv	a0,s0
    5a60:	ffffc097          	auipc	ra,0xffffc
    5a64:	73c080e7          	jalr	1852(ra) # 219c <strlen>
    5a68:	00000493          	li	s1,0
    5a6c:	00000713          	li	a4,0
    5a70:	05700693          	li	a3,87
    5a74:	07200613          	li	a2,114
    5a78:	07700813          	li	a6,119
    5a7c:	06100893          	li	a7,97
    5a80:	06200313          	li	t1,98
    5a84:	04100593          	li	a1,65
    5a88:	04200e13          	li	t3,66
    5a8c:	05200e93          	li	t4,82
    5a90:	02b00f13          	li	t5,43
    5a94:	10a74663          	blt	a4,a0,5ba0 <fl_fopen+0x1a4>
    5a98:	00007937          	lui	s2,0x7
    5a9c:	a3c90793          	addi	a5,s2,-1476 # 6a3c <_fs>
    5aa0:	0387a783          	lw	a5,56(a5)
    5aa4:	a3c90b13          	addi	s6,s2,-1476
    5aa8:	00079463          	bnez	a5,5ab0 <fl_fopen+0xb4>
    5aac:	0d94f493          	andi	s1,s1,217
    5ab0:	03cb2783          	lw	a5,60(s6)
    5ab4:	00078463          	beqz	a5,5abc <fl_fopen+0xc0>
    5ab8:	000780e7          	jalr	a5
    5abc:	0014fc93          	andi	s9,s1,1
    5ac0:	160c9863          	bnez	s9,5c30 <fl_fopen+0x234>
    5ac4:	0204f793          	andi	a5,s1,32
    5ac8:	08078863          	beqz	a5,5b58 <fl_fopen+0x15c>
    5acc:	038b2783          	lw	a5,56(s6)
    5ad0:	06078a63          	beqz	a5,5b44 <fl_fopen+0x148>
    5ad4:	ffffd097          	auipc	ra,0xffffd
    5ad8:	06c080e7          	jalr	108(ra) # 2b40 <_allocate_file>
    5adc:	00050413          	mv	s0,a0
    5ae0:	06050263          	beqz	a0,5b44 <fl_fopen+0x148>
    5ae4:	01450b93          	addi	s7,a0,20
    5ae8:	10400613          	li	a2,260
    5aec:	00000593          	li	a1,0
    5af0:	000b8513          	mv	a0,s7
    5af4:	ffffc097          	auipc	ra,0xffffc
    5af8:	668080e7          	jalr	1640(ra) # 215c <memset>
    5afc:	11840a93          	addi	s5,s0,280
    5b00:	10400613          	li	a2,260
    5b04:	00000593          	li	a1,0
    5b08:	000a8513          	mv	a0,s5
    5b0c:	ffffc097          	auipc	ra,0xffffc
    5b10:	650080e7          	jalr	1616(ra) # 215c <memset>
    5b14:	10400713          	li	a4,260
    5b18:	000a8693          	mv	a3,s5
    5b1c:	10400613          	li	a2,260
    5b20:	000b8593          	mv	a1,s7
    5b24:	000a0513          	mv	a0,s4
    5b28:	ffffe097          	auipc	ra,0xffffe
    5b2c:	c78080e7          	jalr	-904(ra) # 37a0 <fatfs_split_path>
    5b30:	fff00793          	li	a5,-1
    5b34:	10f51c63          	bne	a0,a5,5c4c <fl_fopen+0x250>
    5b38:	00040513          	mv	a0,s0
    5b3c:	ffffd097          	auipc	ra,0xffffd
    5b40:	078080e7          	jalr	120(ra) # 2bb4 <_free_file>
    5b44:	00000413          	li	s0,0
    5b48:	260c9c63          	bnez	s9,5dc0 <fl_fopen+0x3c4>
    5b4c:	0e041c63          	bnez	s0,5c44 <fl_fopen+0x248>
    5b50:	0064f793          	andi	a5,s1,6
    5b54:	24079e63          	bnez	a5,5db0 <fl_fopen+0x3b4>
    5b58:	00000413          	li	s0,0
    5b5c:	040b2783          	lw	a5,64(s6)
    5b60:	00078463          	beqz	a5,5b68 <fl_fopen+0x16c>
    5b64:	000780e7          	jalr	a5
    5b68:	05c12083          	lw	ra,92(sp)
    5b6c:	00040513          	mv	a0,s0
    5b70:	05812403          	lw	s0,88(sp)
    5b74:	05412483          	lw	s1,84(sp)
    5b78:	05012903          	lw	s2,80(sp)
    5b7c:	04c12983          	lw	s3,76(sp)
    5b80:	04812a03          	lw	s4,72(sp)
    5b84:	04412a83          	lw	s5,68(sp)
    5b88:	04012b03          	lw	s6,64(sp)
    5b8c:	03c12b83          	lw	s7,60(sp)
    5b90:	03812c03          	lw	s8,56(sp)
    5b94:	03412c83          	lw	s9,52(sp)
    5b98:	06010113          	addi	sp,sp,96
    5b9c:	00008067          	ret
    5ba0:	00e407b3          	add	a5,s0,a4
    5ba4:	0007c783          	lbu	a5,0(a5)
    5ba8:	04d78463          	beq	a5,a3,5bf0 <fl_fopen+0x1f4>
    5bac:	02f6e463          	bltu	a3,a5,5bd4 <fl_fopen+0x1d8>
    5bb0:	04b78463          	beq	a5,a1,5bf8 <fl_fopen+0x1fc>
    5bb4:	00f5e863          	bltu	a1,a5,5bc4 <fl_fopen+0x1c8>
    5bb8:	05e78463          	beq	a5,t5,5c00 <fl_fopen+0x204>
    5bbc:	00170713          	addi	a4,a4,1
    5bc0:	ed5ff06f          	j	5a94 <fl_fopen+0x98>
    5bc4:	03c78063          	beq	a5,t3,5be4 <fl_fopen+0x1e8>
    5bc8:	ffd79ae3          	bne	a5,t4,5bbc <fl_fopen+0x1c0>
    5bcc:	0014e493          	ori	s1,s1,1
    5bd0:	fedff06f          	j	5bbc <fl_fopen+0x1c0>
    5bd4:	fec78ce3          	beq	a5,a2,5bcc <fl_fopen+0x1d0>
    5bd8:	00f66a63          	bltu	a2,a5,5bec <fl_fopen+0x1f0>
    5bdc:	01178e63          	beq	a5,a7,5bf8 <fl_fopen+0x1fc>
    5be0:	fc679ee3          	bne	a5,t1,5bbc <fl_fopen+0x1c0>
    5be4:	0084e493          	ori	s1,s1,8
    5be8:	fd5ff06f          	j	5bbc <fl_fopen+0x1c0>
    5bec:	fd0798e3          	bne	a5,a6,5bbc <fl_fopen+0x1c0>
    5bf0:	0324e493          	ori	s1,s1,50
    5bf4:	fc9ff06f          	j	5bbc <fl_fopen+0x1c0>
    5bf8:	0264e493          	ori	s1,s1,38
    5bfc:	fc1ff06f          	j	5bbc <fl_fopen+0x1c0>
    5c00:	0014f793          	andi	a5,s1,1
    5c04:	00078663          	beqz	a5,5c10 <fl_fopen+0x214>
    5c08:	0024e493          	ori	s1,s1,2
    5c0c:	fb1ff06f          	j	5bbc <fl_fopen+0x1c0>
    5c10:	0024f793          	andi	a5,s1,2
    5c14:	00078663          	beqz	a5,5c20 <fl_fopen+0x224>
    5c18:	0314e493          	ori	s1,s1,49
    5c1c:	fa1ff06f          	j	5bbc <fl_fopen+0x1c0>
    5c20:	0044f793          	andi	a5,s1,4
    5c24:	f8078ce3          	beqz	a5,5bbc <fl_fopen+0x1c0>
    5c28:	0274e493          	ori	s1,s1,39
    5c2c:	f91ff06f          	j	5bbc <fl_fopen+0x1c0>
    5c30:	000a0513          	mv	a0,s4
    5c34:	fffff097          	auipc	ra,0xfffff
    5c38:	830080e7          	jalr	-2000(ra) # 4464 <_open_file>
    5c3c:	00050413          	mv	s0,a0
    5c40:	e80502e3          	beqz	a0,5ac4 <fl_fopen+0xc8>
    5c44:	42940c23          	sb	s1,1080(s0)
    5c48:	f15ff06f          	j	5b5c <fl_fopen+0x160>
    5c4c:	00040513          	mv	a0,s0
    5c50:	ffffe097          	auipc	ra,0xffffe
    5c54:	da4080e7          	jalr	-604(ra) # 39f4 <_check_file_open>
    5c58:	00050993          	mv	s3,a0
    5c5c:	ec051ee3          	bnez	a0,5b38 <fl_fopen+0x13c>
    5c60:	01444783          	lbu	a5,20(s0)
    5c64:	0e079663          	bnez	a5,5d50 <fl_fopen+0x354>
    5c68:	008b2783          	lw	a5,8(s6)
    5c6c:	00f42023          	sw	a5,0(s0)
    5c70:	00042583          	lw	a1,0(s0)
    5c74:	01010693          	addi	a3,sp,16
    5c78:	000a8613          	mv	a2,s5
    5c7c:	a3c90513          	addi	a0,s2,-1476
    5c80:	ffffe097          	auipc	ra,0xffffe
    5c84:	424080e7          	jalr	1060(ra) # 40a4 <fatfs_get_file_entry>
    5c88:	00100793          	li	a5,1
    5c8c:	eaf506e3          	beq	a0,a5,5b38 <fl_fopen+0x13c>
    5c90:	00042223          	sw	zero,4(s0)
    5c94:	00100693          	li	a3,1
    5c98:	00440613          	addi	a2,s0,4
    5c9c:	00100593          	li	a1,1
    5ca0:	a3c90513          	addi	a0,s2,-1476
    5ca4:	00000097          	auipc	ra,0x0
    5ca8:	924080e7          	jalr	-1756(ra) # 55c8 <fatfs_allocate_free_space>
    5cac:	e80506e3          	beqz	a0,5b38 <fl_fopen+0x13c>
    5cb0:	00002c37          	lui	s8,0x2
    5cb4:	21c40b93          	addi	s7,s0,540
    5cb8:	70fc0c13          	addi	s8,s8,1807 # 270f <print_hex_digits+0x1b>
    5cbc:	000a8593          	mv	a1,s5
    5cc0:	00410513          	addi	a0,sp,4
    5cc4:	ffffd097          	auipc	ra,0xffffd
    5cc8:	680080e7          	jalr	1664(ra) # 3344 <fatfs_lfn_create_sfn>
    5ccc:	08098e63          	beqz	s3,5d68 <fl_fopen+0x36c>
    5cd0:	00098613          	mv	a2,s3
    5cd4:	00410593          	addi	a1,sp,4
    5cd8:	000b8513          	mv	a0,s7
    5cdc:	ffffd097          	auipc	ra,0xffffd
    5ce0:	7e4080e7          	jalr	2020(ra) # 34c0 <fatfs_lfn_generate_tail>
    5ce4:	00042583          	lw	a1,0(s0)
    5ce8:	000b8613          	mv	a2,s7
    5cec:	a3c90513          	addi	a0,s2,-1476
    5cf0:	fffff097          	auipc	ra,0xfffff
    5cf4:	8ec080e7          	jalr	-1812(ra) # 45dc <fatfs_sfn_exists>
    5cf8:	00050663          	beqz	a0,5d04 <fl_fopen+0x308>
    5cfc:	00198993          	addi	s3,s3,1
    5d00:	fb899ee3          	bne	s3,s8,5cbc <fl_fopen+0x2c0>
    5d04:	00442703          	lw	a4,4(s0)
    5d08:	000027b7          	lui	a5,0x2
    5d0c:	70f78793          	addi	a5,a5,1807 # 270f <print_hex_digits+0x1b>
    5d10:	00070593          	mv	a1,a4
    5d14:	02f98663          	beq	s3,a5,5d40 <fl_fopen+0x344>
    5d18:	00042583          	lw	a1,0(s0)
    5d1c:	00000813          	li	a6,0
    5d20:	00000793          	li	a5,0
    5d24:	000b8693          	mv	a3,s7
    5d28:	000a8613          	mv	a2,s5
    5d2c:	a3c90513          	addi	a0,s2,-1476
    5d30:	00000097          	auipc	ra,0x0
    5d34:	9b4080e7          	jalr	-1612(ra) # 56e4 <fatfs_add_file_entry>
    5d38:	04051463          	bnez	a0,5d80 <fl_fopen+0x384>
    5d3c:	00442583          	lw	a1,4(s0)
    5d40:	a3c90513          	addi	a0,s2,-1476
    5d44:	fffff097          	auipc	ra,0xfffff
    5d48:	1e8080e7          	jalr	488(ra) # 4f2c <fatfs_free_cluster_chain>
    5d4c:	dedff06f          	j	5b38 <fl_fopen+0x13c>
    5d50:	00040593          	mv	a1,s0
    5d54:	000b8513          	mv	a0,s7
    5d58:	ffffe097          	auipc	ra,0xffffe
    5d5c:	558080e7          	jalr	1368(ra) # 42b0 <_open_directory>
    5d60:	f00518e3          	bnez	a0,5c70 <fl_fopen+0x274>
    5d64:	dd5ff06f          	j	5b38 <fl_fopen+0x13c>
    5d68:	00b00613          	li	a2,11
    5d6c:	00410593          	addi	a1,sp,4
    5d70:	000b8513          	mv	a0,s7
    5d74:	ffffc097          	auipc	ra,0xffffc
    5d78:	404080e7          	jalr	1028(ra) # 2178 <memcpy>
    5d7c:	f69ff06f          	j	5ce4 <fl_fopen+0x2e8>
    5d80:	fff00793          	li	a5,-1
    5d84:	00042623          	sw	zero,12(s0)
    5d88:	00042423          	sw	zero,8(s0)
    5d8c:	42f42823          	sw	a5,1072(s0)
    5d90:	42042a23          	sw	zero,1076(s0)
    5d94:	00042823          	sw	zero,16(s0)
    5d98:	22f42423          	sw	a5,552(s0)
    5d9c:	22f42623          	sw	a5,556(s0)
    5da0:	a3c90513          	addi	a0,s2,-1476
    5da4:	ffffe097          	auipc	ra,0xffffe
    5da8:	054080e7          	jalr	84(ra) # 3df8 <fatfs_fat_purge>
    5dac:	d9dff06f          	j	5b48 <fl_fopen+0x14c>
    5db0:	000a0513          	mv	a0,s4
    5db4:	ffffe097          	auipc	ra,0xffffe
    5db8:	6b0080e7          	jalr	1712(ra) # 4464 <_open_file>
    5dbc:	00050413          	mv	s0,a0
    5dc0:	e80412e3          	bnez	s0,5c44 <fl_fopen+0x248>
    5dc4:	d95ff06f          	j	5b58 <fl_fopen+0x15c>
    5dc8:	00000413          	li	s0,0
    5dcc:	d9dff06f          	j	5b68 <fl_fopen+0x16c>

00005dd0 <g_last_progress>:
    5dd0:	ffffffff                                ....

00005dd4 <g_volume>:
    5dd4:	00000004                                ....

00005dd8 <cmd16>:
    5dd8:	02000050 00001500                       P.......

00005de0 <acmd41>:
    5de0:	00004069 00000100                       i@......

00005de8 <cmd55>:
    5de8:	00000077 00000100                       w.......

00005df0 <cmd8>:
    5df0:	01000048 000087aa                       H.......

00005df8 <cmd0>:
    5df8:	00000040 00009500                       @.......

00005e00 <AUDIO>:
    5e00:	00018000                                ....

00005e04 <DISPLAY>:
    5e04:	00014000                                .@..

00005e08 <RGBSEL>:
    5e08:	00012000                                . ..

00005e0c <VOLUME>:
    5e0c:	00011000                                ....

00005e10 <BUTTONS>:
    5e10:	00010100                                ....

00005e14 <SDCARD>:
    5e14:	00010080                                ....

00005e18 <OLED_RST>:
    5e18:	00010010                                ....

00005e1c <OLED>:
    5e1c:	00010008                                ....

00005e20 <LEDS>:
    5e20:	00010004 3d3d3d2b 00002b3d 3a3a287c     ....+====+..|(::
    5e30:	00007c29 2829207c 00007c20 2e2e287c     )|..| )( |..|(..
    5e40:	00007c29 20203c20 7c202020 2020207c     )|.. <     ||   
    5e50:	203e2020 00000000 20203c20 7c202020       > .... <     |
    5e60:	2020203e 203e2020 00000000 3142203c     >     > ....< B1
    5e70:	00000000 00007325 20203542 42202020     ....%s..B5     B
    5e80:	20202032 36422020 00000000 73756d2f     2     B6..../mus
    5e90:	00006369 6b636972 6c6c6f72 7761722e     ic..rickroll.raw
    5ea0:	00000000 00006272 2073250a 20746f6e     ....rb...%s not 
    5eb0:	6e756f66 00000a64 676d692f 676d692f     found.../img/img
    5ec0:	7761722e 00000000 656e6f64 00000a2e     .raw....done....
    5ed0:	20202020 3d3d3d3d 616c7020 20726579         ==== player 
    5ee0:	3d3d3d3d 20202020 00000a0a 2e206f6e     ====    ....no .
    5ef0:	20776172 2f206e69 6973756d 00000a63     raw in /music...
    5f00:	203e6425 000a7325 2e202020 2e2d222d     %d> %s..   .-"-.
    5f10:	00000000 3d272e20 3d5e3d5e 00002e27     .... .'=^=^='...
    5f20:	3d5e3d2f 3d5e3d5e 005c3d5e 45203d5e     /=^=^=^=^=\.^= E
    5f30:	45545341 5e3d2052 00000000 20205e7c     ASTER =^....|^  
    5f40:	21474745 5e202020 0000007c 5e3d5e3a     EGG!   ^|...:^=^
    5f50:	5e3d5e3d 5e3d5e3d 0000003a 5e3d5c20     =^=^=^=^:... \=^
    5f60:	5e3d5e3d 2f3d5e3d 00000000 2e602020     =^=^=^=/....  `.
    5f70:	3d3d3d3d 00272e3d 20202020 7e7e7e60     =====.'.    `~~~
    5f80:	00000060 33323130 37363534 42413938     `...0123456789AB
    5f90:	46454443 00000000 5f544146 203a5346     CDEF....FAT_FS: 
    5fa0:	6f727245 6f632072 20646c75 20746f6e     Error could not 
    5fb0:	64616f6c 54414620 74656420 736c6961     load FAT details
    5fc0:	64252820 0a0d2129 00000000               (%d)!......

00005fcc <seq.0>:
    5fcc:	00000003 00000003 00000004 00000004     ................
    5fdc:	00000005 00000006 00000005 00000006     ................

00005fec <font>:
    5fec:	00000000 00002f00 00030000 14000003     ...../..........
    5ffc:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    600c:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    601c:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    602c:	00080800 00200000 20000000 02040810     ...... .... ....
    603c:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    604c:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    605c:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    606c:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    607c:	00141400 0a110000 01000004 0007052d     ............-...
    608c:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    609c:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    60ac:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    60bc:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    60cc:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    60dc:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    60ec:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    60fc:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    610c:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    611c:	003f2102 01020000 20000201 00000020     .!?........  ...
    612c:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    613c:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    614c:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    615c:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    616c:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    617c:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    618c:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    619c:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    61ac:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    61bc:	043f2100 02010000 00000102 00000000     .!?.............
    61cc:	00000001 00000003 00000005 00000007     ................
    61dc:	00000009 0000000e 00000010 00000012     ................
    61ec:	00000014 00000016 00000018 0000001c     ................
    61fc:	0000001e                                ....

00006200 <idx.1>:
    6200:	00000000                                ....

00006204 <idle.2>:
    6204:	00000000                                ....

00006208 <g_skip_image>:
    6208:	00000000                                ....

0000620c <file_count>:
    620c:	00000000                                ....

00006210 <sdcard_while_loading_callback>:
    6210:	00000000                                ....

00006214 <back_color>:
	...

00006215 <front_color>:
    6215:	                                         ...

00006218 <cursor_y>:
    6218:	00000000                                ....

0000621c <cursor_x>:
    621c:	00000000                                ....

00006220 <f_putchar>:
    6220:	00000000                                ....

00006224 <_free_file_list>:
	...

0000622c <_open_file_list>:
	...

00006234 <_filelib_valid>:
    6234:	00000000                                ....

00006238 <_filelib_init>:
    6238:	00000000                                ....
