
code.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00001097          	auipc	ra,0x1
       8:	548080e7          	jalr	1352(ra) # 154c <main>
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
      40:	3987a783          	lw	a5,920(a5) # 6398 <LEDS>
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
      6c:	ff010113          	addi	sp,sp,-16 # fff0 <_files+0x8780>
      70:	00000593          	li	a1,0
      74:	0ff00513          	li	a0,255
      78:	00112623          	sw	ra,12(sp)
      7c:	00812423          	sw	s0,8(sp)
      80:	00003097          	auipc	ra,0x3
      84:	978080e7          	jalr	-1672(ra) # 29f8 <display_set_front_back_color>
      88:	02c00593          	li	a1,44
      8c:	03100513          	li	a0,49
      90:	00003097          	auipc	ra,0x3
      94:	954080e7          	jalr	-1708(ra) # 29e4 <display_set_cursor>
      98:	00006437          	lui	s0,0x6
      9c:	39c40513          	addi	a0,s0,924 # 639c <LEDS+0x4>
      a0:	00003097          	auipc	ra,0x3
      a4:	c48080e7          	jalr	-952(ra) # 2ce8 <printf>
      a8:	03400593          	li	a1,52
      ac:	03100513          	li	a0,49
      b0:	00003097          	auipc	ra,0x3
      b4:	934080e7          	jalr	-1740(ra) # 29e4 <display_set_cursor>
      b8:	00006537          	lui	a0,0x6
      bc:	3a450513          	addi	a0,a0,932 # 63a4 <LEDS+0xc>
      c0:	00003097          	auipc	ra,0x3
      c4:	c28080e7          	jalr	-984(ra) # 2ce8 <printf>
      c8:	03c00593          	li	a1,60
      cc:	03100513          	li	a0,49
      d0:	00003097          	auipc	ra,0x3
      d4:	914080e7          	jalr	-1772(ra) # 29e4 <display_set_cursor>
      d8:	00006537          	lui	a0,0x6
      dc:	3ac50513          	addi	a0,a0,940 # 63ac <LEDS+0x14>
      e0:	00003097          	auipc	ra,0x3
      e4:	c08080e7          	jalr	-1016(ra) # 2ce8 <printf>
      e8:	04400593          	li	a1,68
      ec:	03100513          	li	a0,49
      f0:	00003097          	auipc	ra,0x3
      f4:	8f4080e7          	jalr	-1804(ra) # 29e4 <display_set_cursor>
      f8:	00006537          	lui	a0,0x6
      fc:	3b450513          	addi	a0,a0,948 # 63b4 <LEDS+0x1c>
     100:	00003097          	auipc	ra,0x3
     104:	be8080e7          	jalr	-1048(ra) # 2ce8 <printf>
     108:	04c00593          	li	a1,76
     10c:	03100513          	li	a0,49
     110:	00003097          	auipc	ra,0x3
     114:	8d4080e7          	jalr	-1836(ra) # 29e4 <display_set_cursor>
     118:	39c40513          	addi	a0,s0,924
     11c:	00003097          	auipc	ra,0x3
     120:	bcc080e7          	jalr	-1076(ra) # 2ce8 <printf>
     124:	00812403          	lw	s0,8(sp)
     128:	00c12083          	lw	ra,12(sp)
     12c:	01010113          	addi	sp,sp,16
     130:	00003317          	auipc	t1,0x3
     134:	a4c30067          	jr	-1460(t1) # 2b7c <display_refresh>

00000138 <clear_audio>:
     138:	ff010113          	addi	sp,sp,-16
     13c:	000067b7          	lui	a5,0x6
     140:	00812423          	sw	s0,8(sp)
     144:	3787a403          	lw	s0,888(a5) # 6378 <AUDIO>
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
     170:	568080e7          	jalr	1384(ra) # 26d4 <memset>
     174:	00042783          	lw	a5,0(s0)
     178:	fef48ee3          	beq	s1,a5,174 <clear_audio+0x3c>
     17c:	00042483          	lw	s1,0(s0)
     180:	20000613          	li	a2,512
     184:	00000593          	li	a1,0
     188:	00048513          	mv	a0,s1
     18c:	00002097          	auipc	ra,0x2
     190:	548080e7          	jalr	1352(ra) # 26d4 <memset>
     194:	00042783          	lw	a5,0(s0)
     198:	fef48ee3          	beq	s1,a5,194 <clear_audio+0x5c>
     19c:	00c12083          	lw	ra,12(sp)
     1a0:	00812403          	lw	s0,8(sp)
     1a4:	00412483          	lw	s1,4(sp)
     1a8:	01010113          	addi	sp,sp,16
     1ac:	00008067          	ret

000001b0 <clear_screen>:
     1b0:	000067b7          	lui	a5,0x6
     1b4:	3807a783          	lw	a5,896(a5) # 6380 <RGBSEL>
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
     1e0:	7fc080e7          	jalr	2044(ra) # 29d8 <display_framebuffer>
     1e4:	00004637          	lui	a2,0x4
     1e8:	00000593          	li	a1,0
     1ec:	00140413          	addi	s0,s0,1
     1f0:	00002097          	auipc	ra,0x2
     1f4:	4e4080e7          	jalr	1252(ra) # 26d4 <memset>
     1f8:	fe9410e3          	bne	s0,s1,1d8 <clear_screen+0x28>
     1fc:	00812403          	lw	s0,8(sp)
     200:	00c12083          	lw	ra,12(sp)
     204:	00412483          	lw	s1,4(sp)
     208:	00012903          	lw	s2,0(sp)
     20c:	01010113          	addi	sp,sp,16
     210:	00003317          	auipc	t1,0x3
     214:	96c30067          	jr	-1684(t1) # 2b7c <display_refresh>

00000218 <file_size>:
     218:	ff010113          	addi	sp,sp,-16
     21c:	00200613          	li	a2,2
     220:	00000593          	li	a1,0
     224:	00112623          	sw	ra,12(sp)
     228:	00812423          	sw	s0,8(sp)
     22c:	00912223          	sw	s1,4(sp)
     230:	00050413          	mv	s0,a0
     234:	00003097          	auipc	ra,0x3
     238:	0ec080e7          	jalr	236(ra) # 3320 <fl_fseek>
     23c:	00040513          	mv	a0,s0
     240:	00003097          	auipc	ra,0x3
     244:	254080e7          	jalr	596(ra) # 3494 <fl_ftell>
     248:	00050493          	mv	s1,a0
     24c:	00000613          	li	a2,0
     250:	00040513          	mv	a0,s0
     254:	00000593          	li	a1,0
     258:	00003097          	auipc	ra,0x3
     25c:	0c8080e7          	jalr	200(ra) # 3320 <fl_fseek>
     260:	00c12083          	lw	ra,12(sp)
     264:	00812403          	lw	s0,8(sp)
     268:	00048513          	mv	a0,s1
     26c:	00412483          	lw	s1,4(sp)
     270:	01010113          	addi	sp,sp,16
     274:	00008067          	ret

00000278 <set_pixel_gray>:
     278:	00b56733          	or	a4,a0,a1
     27c:	07f00793          	li	a5,127
     280:	06e7ee63          	bltu	a5,a4,2fc <set_pixel_gray+0x84>
     284:	000067b7          	lui	a5,0x6
     288:	3807a783          	lw	a5,896(a5) # 6380 <RGBSEL>
     28c:	fe010113          	addi	sp,sp,-32
     290:	00751513          	slli	a0,a0,0x7
     294:	00812c23          	sw	s0,24(sp)
     298:	00912a23          	sw	s1,20(sp)
     29c:	01212823          	sw	s2,16(sp)
     2a0:	01312623          	sw	s3,12(sp)
     2a4:	01412423          	sw	s4,8(sp)
     2a8:	00112e23          	sw	ra,28(sp)
     2ac:	00060913          	mv	s2,a2
     2b0:	00b50433          	add	s0,a0,a1
     2b4:	00000493          	li	s1,0
     2b8:	00078a13          	mv	s4,a5
     2bc:	00300993          	li	s3,3
     2c0:	009a2023          	sw	s1,0(s4)
     2c4:	00002097          	auipc	ra,0x2
     2c8:	714080e7          	jalr	1812(ra) # 29d8 <display_framebuffer>
     2cc:	00850533          	add	a0,a0,s0
     2d0:	01250023          	sb	s2,0(a0)
     2d4:	00148493          	addi	s1,s1,1
     2d8:	ff3494e3          	bne	s1,s3,2c0 <set_pixel_gray+0x48>
     2dc:	01c12083          	lw	ra,28(sp)
     2e0:	01812403          	lw	s0,24(sp)
     2e4:	01412483          	lw	s1,20(sp)
     2e8:	01012903          	lw	s2,16(sp)
     2ec:	00c12983          	lw	s3,12(sp)
     2f0:	00812a03          	lw	s4,8(sp)
     2f4:	02010113          	addi	sp,sp,32
     2f8:	00008067          	ret
     2fc:	00008067          	ret

00000300 <fill_rect_gray>:
     300:	fe010113          	addi	sp,sp,-32
     304:	00812c23          	sw	s0,24(sp)
     308:	01212823          	sw	s2,16(sp)
     30c:	01312623          	sw	s3,12(sp)
     310:	01412423          	sw	s4,8(sp)
     314:	01512223          	sw	s5,4(sp)
     318:	00112e23          	sw	ra,28(sp)
     31c:	00912a23          	sw	s1,20(sp)
     320:	00050913          	mv	s2,a0
     324:	00070a93          	mv	s5,a4
     328:	00058413          	mv	s0,a1
     32c:	00b68a33          	add	s4,a3,a1
     330:	00a609b3          	add	s3,a2,a0
     334:	00090493          	mv	s1,s2
     338:	01c0006f          	j	354 <fill_rect_gray+0x54>
     33c:	00048513          	mv	a0,s1
     340:	000a8613          	mv	a2,s5
     344:	00040593          	mv	a1,s0
     348:	00000097          	auipc	ra,0x0
     34c:	f30080e7          	jalr	-208(ra) # 278 <set_pixel_gray>
     350:	00148493          	addi	s1,s1,1
     354:	ff3494e3          	bne	s1,s3,33c <fill_rect_gray+0x3c>
     358:	00140413          	addi	s0,s0,1
     35c:	fd441ce3          	bne	s0,s4,334 <fill_rect_gray+0x34>
     360:	01c12083          	lw	ra,28(sp)
     364:	01812403          	lw	s0,24(sp)
     368:	01412483          	lw	s1,20(sp)
     36c:	01012903          	lw	s2,16(sp)
     370:	00c12983          	lw	s3,12(sp)
     374:	00812a03          	lw	s4,8(sp)
     378:	00412a83          	lw	s5,4(sp)
     37c:	02010113          	addi	sp,sp,32
     380:	00008067          	ret

00000384 <draw_progress_bar>:
     384:	0eb05063          	blez	a1,464 <draw_progress_bar+0xe0>
     388:	00351793          	slli	a5,a0,0x3
     38c:	40a787b3          	sub	a5,a5,a0
     390:	00279793          	slli	a5,a5,0x2
     394:	40a78533          	sub	a0,a5,a0
     398:	ff010113          	addi	sp,sp,-16
     39c:	00251513          	slli	a0,a0,0x2
     3a0:	00812423          	sw	s0,8(sp)
     3a4:	00112623          	sw	ra,12(sp)
     3a8:	00912223          	sw	s1,4(sp)
     3ac:	00002097          	auipc	ra,0x2
     3b0:	274080e7          	jalr	628(ra) # 2620 <__divsi3>
     3b4:	06c00793          	li	a5,108
     3b8:	00050413          	mv	s0,a0
     3bc:	06a7d263          	bge	a5,a0,420 <draw_progress_bar+0x9c>
     3c0:	06c00413          	li	s0,108
     3c4:	000064b7          	lui	s1,0x6
     3c8:	3484a503          	lw	a0,840(s1) # 6348 <g_last_progress>
     3cc:	06055063          	bgez	a0,42c <draw_progress_bar+0xa8>
     3d0:	00000713          	li	a4,0
     3d4:	00300693          	li	a3,3
     3d8:	06c00613          	li	a2,108
     3dc:	06400593          	li	a1,100
     3e0:	00a00513          	li	a0,10
     3e4:	00000097          	auipc	ra,0x0
     3e8:	f1c080e7          	jalr	-228(ra) # 300 <fill_rect_gray>
     3ec:	0ff00713          	li	a4,255
     3f0:	00300693          	li	a3,3
     3f4:	00040613          	mv	a2,s0
     3f8:	06400593          	li	a1,100
     3fc:	00a00513          	li	a0,10
     400:	00000097          	auipc	ra,0x0
     404:	f00080e7          	jalr	-256(ra) # 300 <fill_rect_gray>
     408:	3484a423          	sw	s0,840(s1)
     40c:	00c12083          	lw	ra,12(sp)
     410:	00812403          	lw	s0,8(sp)
     414:	00412483          	lw	s1,4(sp)
     418:	01010113          	addi	sp,sp,16
     41c:	00008067          	ret
     420:	fa0552e3          	bgez	a0,3c4 <draw_progress_bar+0x40>
     424:	00000413          	li	s0,0
     428:	f9dff06f          	j	3c4 <draw_progress_bar+0x40>
     42c:	fc850ee3          	beq	a0,s0,408 <draw_progress_bar+0x84>
     430:	00855e63          	bge	a0,s0,44c <draw_progress_bar+0xc8>
     434:	40a40633          	sub	a2,s0,a0
     438:	0ff00713          	li	a4,255
     43c:	00300693          	li	a3,3
     440:	06400593          	li	a1,100
     444:	00a50513          	addi	a0,a0,10
     448:	fb9ff06f          	j	400 <draw_progress_bar+0x7c>
     44c:	40850633          	sub	a2,a0,s0
     450:	00000713          	li	a4,0
     454:	00300693          	li	a3,3
     458:	06400593          	li	a1,100
     45c:	00a40513          	addi	a0,s0,10
     460:	fa1ff06f          	j	400 <draw_progress_bar+0x7c>
     464:	00008067          	ret

00000468 <draw_icon_12.constprop.0>:
     468:	fd010113          	addi	sp,sp,-48
     46c:	02912223          	sw	s1,36(sp)
     470:	03212023          	sw	s2,32(sp)
     474:	01312e23          	sw	s3,28(sp)
     478:	01412c23          	sw	s4,24(sp)
     47c:	01612823          	sw	s6,16(sp)
     480:	01712623          	sw	s7,12(sp)
     484:	02112623          	sw	ra,44(sp)
     488:	02812423          	sw	s0,40(sp)
     48c:	01512a23          	sw	s5,20(sp)
     490:	00050a13          	mv	s4,a0
     494:	00058913          	mv	s2,a1
     498:	00000493          	li	s1,0
     49c:	06800993          	li	s3,104
     4a0:	00c00b13          	li	s6,12
     4a4:	09000b93          	li	s7,144
     4a8:	00000413          	li	s0,0
     4ac:	00990ab3          	add	s5,s2,s1
     4b0:	008a87b3          	add	a5,s5,s0
     4b4:	0007c783          	lbu	a5,0(a5)
     4b8:	00078c63          	beqz	a5,4d0 <draw_icon_12.constprop.0+0x68>
     4bc:	0ff00613          	li	a2,255
     4c0:	00098593          	mv	a1,s3
     4c4:	008a0533          	add	a0,s4,s0
     4c8:	00000097          	auipc	ra,0x0
     4cc:	db0080e7          	jalr	-592(ra) # 278 <set_pixel_gray>
     4d0:	00140413          	addi	s0,s0,1
     4d4:	fd641ee3          	bne	s0,s6,4b0 <draw_icon_12.constprop.0+0x48>
     4d8:	00c48493          	addi	s1,s1,12
     4dc:	00198993          	addi	s3,s3,1
     4e0:	fd7494e3          	bne	s1,s7,4a8 <draw_icon_12.constprop.0+0x40>
     4e4:	02c12083          	lw	ra,44(sp)
     4e8:	02812403          	lw	s0,40(sp)
     4ec:	02412483          	lw	s1,36(sp)
     4f0:	02012903          	lw	s2,32(sp)
     4f4:	01c12983          	lw	s3,28(sp)
     4f8:	01812a03          	lw	s4,24(sp)
     4fc:	01412a83          	lw	s5,20(sp)
     500:	01012b03          	lw	s6,16(sp)
     504:	00c12b83          	lw	s7,12(sp)
     508:	03010113          	addi	sp,sp,48
     50c:	00008067          	ret

00000510 <draw_controls>:
     510:	ff010113          	addi	sp,sp,-16
     514:	00812423          	sw	s0,8(sp)
     518:	00912223          	sw	s1,4(sp)
     51c:	01212023          	sw	s2,0(sp)
     520:	00058493          	mv	s1,a1
     524:	00050913          	mv	s2,a0
     528:	00060413          	mv	s0,a2
     52c:	00000713          	li	a4,0
     530:	00c00693          	li	a3,12
     534:	08000613          	li	a2,128
     538:	06800593          	li	a1,104
     53c:	00000513          	li	a0,0
     540:	00112623          	sw	ra,12(sp)
     544:	00000097          	auipc	ra,0x0
     548:	dbc080e7          	jalr	-580(ra) # 300 <fill_rect_gray>
     54c:	00200793          	li	a5,2
     550:	06f48c63          	beq	s1,a5,5c8 <draw_controls+0xb8>
     554:	00100793          	li	a5,1
     558:	06f49e63          	bne	s1,a5,5d4 <draw_controls+0xc4>
     55c:	000065b7          	lui	a1,0x6
     560:	6e458593          	addi	a1,a1,1764 # 66e4 <ICON_LEFT2_12>
     564:	00200793          	li	a5,2
     568:	06f40c63          	beq	s0,a5,5e0 <draw_controls+0xd0>
     56c:	00100793          	li	a5,1
     570:	06f41e63          	bne	s0,a5,5ec <draw_controls+0xdc>
     574:	00006437          	lui	s0,0x6
     578:	65440413          	addi	s0,s0,1620 # 6654 <ICON_RIGHT2_12>
     57c:	06090e63          	beqz	s2,5f8 <draw_controls+0xe8>
     580:	000074b7          	lui	s1,0x7
     584:	89448493          	addi	s1,s1,-1900 # 6894 <ICON_PAUSE_12>
     588:	01500513          	li	a0,21
     58c:	00000097          	auipc	ra,0x0
     590:	edc080e7          	jalr	-292(ra) # 468 <draw_icon_12.constprop.0>
     594:	00048593          	mv	a1,s1
     598:	03a00513          	li	a0,58
     59c:	00000097          	auipc	ra,0x0
     5a0:	ecc080e7          	jalr	-308(ra) # 468 <draw_icon_12.constprop.0>
     5a4:	00040593          	mv	a1,s0
     5a8:	00812403          	lw	s0,8(sp)
     5ac:	00c12083          	lw	ra,12(sp)
     5b0:	00412483          	lw	s1,4(sp)
     5b4:	00012903          	lw	s2,0(sp)
     5b8:	05f00513          	li	a0,95
     5bc:	01010113          	addi	sp,sp,16
     5c0:	00000317          	auipc	t1,0x0
     5c4:	ea830067          	jr	-344(t1) # 468 <draw_icon_12.constprop.0>
     5c8:	000065b7          	lui	a1,0x6
     5cc:	5c458593          	addi	a1,a1,1476 # 65c4 <ICON_LEFT3_12>
     5d0:	f95ff06f          	j	564 <draw_controls+0x54>
     5d4:	000075b7          	lui	a1,0x7
     5d8:	80458593          	addi	a1,a1,-2044 # 6804 <ICON_LEFT_12>
     5dc:	f89ff06f          	j	564 <draw_controls+0x54>
     5e0:	00006437          	lui	s0,0x6
     5e4:	53440413          	addi	s0,s0,1332 # 6534 <ICON_RIGHT3_12>
     5e8:	f95ff06f          	j	57c <draw_controls+0x6c>
     5ec:	00006437          	lui	s0,0x6
     5f0:	77440413          	addi	s0,s0,1908 # 6774 <ICON_RIGHT_12>
     5f4:	f89ff06f          	j	57c <draw_controls+0x6c>
     5f8:	000074b7          	lui	s1,0x7
     5fc:	92448493          	addi	s1,s1,-1756 # 6924 <ICON_PLAY_12>
     600:	f89ff06f          	j	588 <draw_controls+0x78>

00000604 <update_ui>:
     604:	fe010113          	addi	sp,sp,-32
     608:	00812c23          	sw	s0,24(sp)
     60c:	00912a23          	sw	s1,20(sp)
     610:	01212823          	sw	s2,16(sp)
     614:	01412423          	sw	s4,8(sp)
     618:	01512223          	sw	s5,4(sp)
     61c:	00050413          	mv	s0,a0
     620:	00058a13          	mv	s4,a1
     624:	00000513          	li	a0,0
     628:	06000593          	li	a1,96
     62c:	00060a93          	mv	s5,a2
     630:	00068493          	mv	s1,a3
     634:	08000613          	li	a2,128
     638:	02000693          	li	a3,32
     63c:	00070913          	mv	s2,a4
     640:	00000713          	li	a4,0
     644:	00112e23          	sw	ra,28(sp)
     648:	01312623          	sw	s3,12(sp)
     64c:	00078993          	mv	s3,a5
     650:	00000097          	auipc	ra,0x0
     654:	cb0080e7          	jalr	-848(ra) # 300 <fill_rect_gray>
     658:	000067b7          	lui	a5,0x6
     65c:	fff00713          	li	a4,-1
     660:	00000593          	li	a1,0
     664:	0ff00513          	li	a0,255
     668:	34e7a423          	sw	a4,840(a5) # 6348 <g_last_progress>
     66c:	00002097          	auipc	ra,0x2
     670:	38c080e7          	jalr	908(ra) # 29f8 <display_set_front_back_color>
     674:	00000593          	li	a1,0
     678:	00000513          	li	a0,0
     67c:	00002097          	auipc	ra,0x2
     680:	368080e7          	jalr	872(ra) # 29e4 <display_set_cursor>
     684:	00006537          	lui	a0,0x6
     688:	3bc50513          	addi	a0,a0,956 # 63bc <LEDS+0x24>
     68c:	00002097          	auipc	ra,0x2
     690:	65c080e7          	jalr	1628(ra) # 2ce8 <printf>
     694:	00000593          	li	a1,0
     698:	0ff00513          	li	a0,255
     69c:	00002097          	auipc	ra,0x2
     6a0:	35c080e7          	jalr	860(ra) # 29f8 <display_set_front_back_color>
     6a4:	00000813          	li	a6,0
     6a8:	010407b3          	add	a5,s0,a6
     6ac:	0007c783          	lbu	a5,0(a5)
     6b0:	10079263          	bnez	a5,7b4 <update_ui+0x1b0>
     6b4:	00281793          	slli	a5,a6,0x2
     6b8:	010787b3          	add	a5,a5,a6
     6bc:	08000893          	li	a7,128
     6c0:	40f888b3          	sub	a7,a7,a5
     6c4:	fff00793          	li	a5,-1
     6c8:	00000513          	li	a0,0
     6cc:	00f8c863          	blt	a7,a5,6dc <update_ui+0xd8>
     6d0:	01f8d813          	srli	a6,a7,0x1f
     6d4:	01180833          	add	a6,a6,a7
     6d8:	40185513          	srai	a0,a6,0x1
     6dc:	00800593          	li	a1,8
     6e0:	00002097          	auipc	ra,0x2
     6e4:	304080e7          	jalr	772(ra) # 29e4 <display_set_cursor>
     6e8:	00040593          	mv	a1,s0
     6ec:	00006437          	lui	s0,0x6
     6f0:	3c440513          	addi	a0,s0,964 # 63c4 <LEDS+0x2c>
     6f4:	00002097          	auipc	ra,0x2
     6f8:	5f4080e7          	jalr	1524(ra) # 2ce8 <printf>
     6fc:	000a8593          	mv	a1,s5
     700:	000a0513          	mv	a0,s4
     704:	00000097          	auipc	ra,0x0
     708:	c80080e7          	jalr	-896(ra) # 384 <draw_progress_bar>
     70c:	00048513          	mv	a0,s1
     710:	00098613          	mv	a2,s3
     714:	00090593          	mv	a1,s2
     718:	00000097          	auipc	ra,0x0
     71c:	df8080e7          	jalr	-520(ra) # 510 <draw_controls>
     720:	00000593          	li	a1,0
     724:	0ff00513          	li	a0,255
     728:	00002097          	auipc	ra,0x2
     72c:	2d0080e7          	jalr	720(ra) # 29f8 <display_set_front_back_color>
     730:	000064b7          	lui	s1,0x6
     734:	00000793          	li	a5,0
     738:	3c848693          	addi	a3,s1,968 # 63c8 <LEDS+0x30>
     73c:	00d78733          	add	a4,a5,a3
     740:	00074703          	lbu	a4,0(a4)
     744:	06071c63          	bnez	a4,7bc <update_ui+0x1b8>
     748:	00279713          	slli	a4,a5,0x2
     74c:	00f70733          	add	a4,a4,a5
     750:	08000793          	li	a5,128
     754:	40e787b3          	sub	a5,a5,a4
     758:	fff00713          	li	a4,-1
     75c:	00000513          	li	a0,0
     760:	00e7c863          	blt	a5,a4,770 <update_ui+0x16c>
     764:	01f7d513          	srli	a0,a5,0x1f
     768:	00f50533          	add	a0,a0,a5
     76c:	40155513          	srai	a0,a0,0x1
     770:	07600593          	li	a1,118
     774:	00002097          	auipc	ra,0x2
     778:	270080e7          	jalr	624(ra) # 29e4 <display_set_cursor>
     77c:	3c848593          	addi	a1,s1,968
     780:	3c440513          	addi	a0,s0,964
     784:	00002097          	auipc	ra,0x2
     788:	564080e7          	jalr	1380(ra) # 2ce8 <printf>
     78c:	01812403          	lw	s0,24(sp)
     790:	01c12083          	lw	ra,28(sp)
     794:	01412483          	lw	s1,20(sp)
     798:	01012903          	lw	s2,16(sp)
     79c:	00c12983          	lw	s3,12(sp)
     7a0:	00812a03          	lw	s4,8(sp)
     7a4:	00412a83          	lw	s5,4(sp)
     7a8:	02010113          	addi	sp,sp,32
     7ac:	00002317          	auipc	t1,0x2
     7b0:	3d030067          	jr	976(t1) # 2b7c <display_refresh>
     7b4:	00180813          	addi	a6,a6,1
     7b8:	ef1ff06f          	j	6a8 <update_ui+0xa4>
     7bc:	00178793          	addi	a5,a5,1
     7c0:	f7dff06f          	j	73c <update_ui+0x138>

000007c4 <streq.constprop.0>:
     7c4:	00006737          	lui	a4,0x6
     7c8:	3dc70713          	addi	a4,a4,988 # 63dc <LEDS+0x44>
     7cc:	00054683          	lbu	a3,0(a0)
     7d0:	00074783          	lbu	a5,0(a4)
     7d4:	00068463          	beqz	a3,7dc <streq.constprop.0+0x18>
     7d8:	00079863          	bnez	a5,7e8 <streq.constprop.0+0x24>
     7dc:	40d78533          	sub	a0,a5,a3
     7e0:	00153513          	seqz	a0,a0
     7e4:	00008067          	ret
     7e8:	00150513          	addi	a0,a0,1
     7ec:	00170713          	addi	a4,a4,1
     7f0:	fcf68ee3          	beq	a3,a5,7cc <streq.constprop.0+0x8>
     7f4:	00000513          	li	a0,0
     7f8:	00008067          	ret

000007fc <scan_files>:
     7fc:	ec010113          	addi	sp,sp,-320
     800:	00006537          	lui	a0,0x6
     804:	13212823          	sw	s2,304(sp)
     808:	00410593          	addi	a1,sp,4
     80c:	00007937          	lui	s2,0x7
     810:	3ec50513          	addi	a0,a0,1004 # 63ec <LEDS+0x54>
     814:	12112e23          	sw	ra,316(sp)
     818:	12812c23          	sw	s0,312(sp)
     81c:	12912a23          	sw	s1,308(sp)
     820:	13312623          	sw	s3,300(sp)
     824:	13412423          	sw	s4,296(sp)
     828:	13512223          	sw	s5,292(sp)
     82c:	bc092c23          	sw	zero,-1064(s2) # 6bd8 <file_count>
     830:	00004097          	auipc	ra,0x4
     834:	0e0080e7          	jalr	224(ra) # 4910 <fl_opendir>
     838:	02050863          	beqz	a0,868 <scan_files+0x6c>
     83c:	01f00993          	li	s3,31
     840:	00300a13          	li	s4,3
     844:	02e00a93          	li	s5,46
     848:	01010593          	addi	a1,sp,16
     84c:	00410513          	addi	a0,sp,4
     850:	00004097          	auipc	ra,0x4
     854:	784080e7          	jalr	1924(ra) # 4fd4 <fl_readdir>
     858:	02050a63          	beqz	a0,88c <scan_files+0x90>
     85c:	00410513          	addi	a0,sp,4
     860:	00003097          	auipc	ra,0x3
     864:	c5c080e7          	jalr	-932(ra) # 34bc <fl_closedir>
     868:	13c12083          	lw	ra,316(sp)
     86c:	13812403          	lw	s0,312(sp)
     870:	13412483          	lw	s1,308(sp)
     874:	13012903          	lw	s2,304(sp)
     878:	12c12983          	lw	s3,300(sp)
     87c:	12812a03          	lw	s4,296(sp)
     880:	12412a83          	lw	s5,292(sp)
     884:	14010113          	addi	sp,sp,320
     888:	00008067          	ret
     88c:	bd892403          	lw	s0,-1064(s2)
     890:	fc89c6e3          	blt	s3,s0,85c <scan_files+0x60>
     894:	11414783          	lbu	a5,276(sp)
     898:	fa0798e3          	bnez	a5,848 <scan_files+0x4c>
     89c:	01010513          	addi	a0,sp,16
     8a0:	00000097          	auipc	ra,0x0
     8a4:	f24080e7          	jalr	-220(ra) # 7c4 <streq.constprop.0>
     8a8:	fa0510e3          	bnez	a0,848 <scan_files+0x4c>
     8ac:	01010513          	addi	a0,sp,16
     8b0:	00002097          	auipc	ra,0x2
     8b4:	e64080e7          	jalr	-412(ra) # 2714 <strlen>
     8b8:	f8aa58e3          	bge	s4,a0,848 <scan_files+0x4c>
     8bc:	12050793          	addi	a5,a0,288
     8c0:	00278533          	add	a0,a5,sp
     8c4:	eec54783          	lbu	a5,-276(a0)
     8c8:	f95790e3          	bne	a5,s5,848 <scan_files+0x4c>
     8cc:	eed54783          	lbu	a5,-275(a0)
     8d0:	05200713          	li	a4,82
     8d4:	0df7f793          	andi	a5,a5,223
     8d8:	f6e798e3          	bne	a5,a4,848 <scan_files+0x4c>
     8dc:	eee54783          	lbu	a5,-274(a0)
     8e0:	04100713          	li	a4,65
     8e4:	0df7f793          	andi	a5,a5,223
     8e8:	f6e790e3          	bne	a5,a4,848 <scan_files+0x4c>
     8ec:	eef54783          	lbu	a5,-273(a0)
     8f0:	05700713          	li	a4,87
     8f4:	0df7f793          	andi	a5,a5,223
     8f8:	f4e798e3          	bne	a5,a4,848 <scan_files+0x4c>
     8fc:	000077b7          	lui	a5,0x7
     900:	00641493          	slli	s1,s0,0x6
     904:	c0878793          	addi	a5,a5,-1016 # 6c08 <files>
     908:	00f484b3          	add	s1,s1,a5
     90c:	03f00613          	li	a2,63
     910:	01010593          	addi	a1,sp,16
     914:	00048513          	mv	a0,s1
     918:	00140413          	addi	s0,s0,1
     91c:	00002097          	auipc	ra,0x2
     920:	e58080e7          	jalr	-424(ra) # 2774 <strncpy>
     924:	02048fa3          	sb	zero,63(s1)
     928:	bc892c23          	sw	s0,-1064(s2)
     92c:	f1dff06f          	j	848 <scan_files+0x4c>

00000930 <play_file>:
     930:	d0010113          	addi	sp,sp,-768
     934:	2e812c23          	sw	s0,760(sp)
     938:	2e112e23          	sw	ra,764(sp)
     93c:	2e912a23          	sw	s1,756(sp)
     940:	2f212823          	sw	s2,752(sp)
     944:	2f312623          	sw	s3,748(sp)
     948:	2f412423          	sw	s4,744(sp)
     94c:	2f512223          	sw	s5,740(sp)
     950:	2f612023          	sw	s6,736(sp)
     954:	2d712e23          	sw	s7,732(sp)
     958:	2d812c23          	sw	s8,728(sp)
     95c:	2d912a23          	sw	s9,724(sp)
     960:	2da12823          	sw	s10,720(sp)
     964:	2db12623          	sw	s11,716(sp)
     968:	00050413          	mv	s0,a0
     96c:	00000097          	auipc	ra,0x0
     970:	e58080e7          	jalr	-424(ra) # 7c4 <streq.constprop.0>
     974:	000077b7          	lui	a5,0x7
     978:	00a03533          	snez	a0,a0
     97c:	bca7a823          	sw	a0,-1072(a5) # 6bd0 <g_last_was_easter>
     980:	737577b7          	lui	a5,0x73757
     984:	d2f78793          	addi	a5,a5,-721 # 73756d2f <__stacktop+0x73746d2f>
     988:	06f12a23          	sw	a5,116(sp)
     98c:	000067b7          	lui	a5,0x6
     990:	36978793          	addi	a5,a5,873 # 6369 <cmd8+0x1>
     994:	06f11c23          	sh	a5,120(sp)
     998:	02f00793          	li	a5,47
     99c:	06f10d23          	sb	a5,122(sp)
     9a0:	04900693          	li	a3,73
     9a4:	00700793          	li	a5,7
     9a8:	00f40733          	add	a4,s0,a5
     9ac:	ff974703          	lbu	a4,-7(a4)
     9b0:	00070663          	beqz	a4,9bc <play_file+0x8c>
     9b4:	16d79663          	bne	a5,a3,b20 <play_file+0x1f0>
     9b8:	04900793          	li	a5,73
     9bc:	05010713          	addi	a4,sp,80
     9c0:	27078793          	addi	a5,a5,624
     9c4:	00006937          	lui	s2,0x6
     9c8:	00e787b3          	add	a5,a5,a4
     9cc:	3f490593          	addi	a1,s2,1012 # 63f4 <LEDS+0x5c>
     9d0:	07410513          	addi	a0,sp,116
     9d4:	da078a23          	sb	zero,-588(a5)
     9d8:	00005097          	auipc	ra,0x5
     9dc:	59c080e7          	jalr	1436(ra) # 5f74 <fl_fopen>
     9e0:	00a12623          	sw	a0,12(sp)
     9e4:	00000793          	li	a5,0
     9e8:	14050663          	beqz	a0,b34 <play_file+0x204>
     9ec:	01900693          	li	a3,25
     9f0:	02e00613          	li	a2,46
     9f4:	05f00593          	li	a1,95
     9f8:	00f40733          	add	a4,s0,a5
     9fc:	00074703          	lbu	a4,0(a4)
     a00:	00070463          	beqz	a4,a08 <play_file+0xd8>
     a04:	16d79263          	bne	a5,a3,b68 <play_file+0x238>
     a08:	05010713          	addi	a4,sp,80
     a0c:	27078793          	addi	a5,a5,624
     a10:	00e787b3          	add	a5,a5,a4
     a14:	d8078c23          	sb	zero,-616(a5)
     a18:	000077b7          	lui	a5,0x7
     a1c:	bd47a703          	lw	a4,-1068(a5) # 6bd4 <g_skip_image>
     a20:	bc07aa23          	sw	zero,-1068(a5)
     a24:	00e12823          	sw	a4,16(sp)
     a28:	4a071663          	bnez	a4,ed4 <play_file+0x5a4>
     a2c:	fffff097          	auipc	ra,0xfffff
     a30:	784080e7          	jalr	1924(ra) # 1b0 <clear_screen>
     a34:	676d77b7          	lui	a5,0x676d7
     a38:	92f78793          	addi	a5,a5,-1745 # 676d692f <__stacktop+0x676c692f>
     a3c:	0cf12023          	sw	a5,192(sp)
     a40:	02f00793          	li	a5,47
     a44:	0cf10223          	sb	a5,196(sp)
     a48:	04400693          	li	a3,68
     a4c:	00500793          	li	a5,5
     a50:	00f40733          	add	a4,s0,a5
     a54:	ffb74703          	lbu	a4,-5(a4)
     a58:	00070663          	beqz	a4,a64 <play_file+0x134>
     a5c:	12d79663          	bne	a5,a3,b88 <play_file+0x258>
     a60:	04400793          	li	a5,68
     a64:	05010713          	addi	a4,sp,80
     a68:	27078793          	addi	a5,a5,624
     a6c:	00e787b3          	add	a5,a5,a4
     a70:	05f00713          	li	a4,95
     a74:	dee78e23          	sb	a4,-516(a5)
     a78:	06900713          	li	a4,105
     a7c:	dee78ea3          	sb	a4,-515(a5)
     a80:	06d00713          	li	a4,109
     a84:	dee78f23          	sb	a4,-514(a5)
     a88:	06700713          	li	a4,103
     a8c:	dee78fa3          	sb	a4,-513(a5)
     a90:	02e00713          	li	a4,46
     a94:	e0e78023          	sb	a4,-512(a5)
     a98:	07200713          	li	a4,114
     a9c:	e0e780a3          	sb	a4,-511(a5)
     aa0:	06100713          	li	a4,97
     aa4:	e0e78123          	sb	a4,-510(a5)
     aa8:	07700713          	li	a4,119
     aac:	e0e781a3          	sb	a4,-509(a5)
     ab0:	e0078223          	sb	zero,-508(a5)
     ab4:	3f490593          	addi	a1,s2,1012
     ab8:	0c010513          	addi	a0,sp,192
     abc:	00005097          	auipc	ra,0x5
     ac0:	4b8080e7          	jalr	1208(ra) # 5f74 <fl_fopen>
     ac4:	00050413          	mv	s0,a0
     ac8:	02051063          	bnez	a0,ae8 <play_file+0x1b8>
     acc:	00006537          	lui	a0,0x6
     ad0:	3f490593          	addi	a1,s2,1012
     ad4:	40850513          	addi	a0,a0,1032 # 6408 <LEDS+0x70>
     ad8:	00005097          	auipc	ra,0x5
     adc:	49c080e7          	jalr	1180(ra) # 5f74 <fl_fopen>
     ae0:	00050413          	mv	s0,a0
     ae4:	02050a63          	beqz	a0,b18 <play_file+0x1e8>
     ae8:	00040513          	mv	a0,s0
     aec:	fffff097          	auipc	ra,0xfffff
     af0:	72c080e7          	jalr	1836(ra) # 218 <file_size>
     af4:	000107b7          	lui	a5,0x10
     af8:	0af55263          	bge	a0,a5,b9c <play_file+0x26c>
     afc:	0000c7b7          	lui	a5,0xc
     b00:	3cf55263          	bge	a0,a5,ec4 <play_file+0x594>
     b04:	000047b7          	lui	a5,0x4
     b08:	3cf55263          	bge	a0,a5,ecc <play_file+0x59c>
     b0c:	00040513          	mv	a0,s0
     b10:	00005097          	auipc	ra,0x5
     b14:	dac080e7          	jalr	-596(ra) # 58bc <fl_fclose>
     b18:	00000413          	li	s0,0
     b1c:	0880006f          	j	ba4 <play_file+0x274>
     b20:	07410613          	addi	a2,sp,116
     b24:	00f60633          	add	a2,a2,a5
     b28:	00e60023          	sb	a4,0(a2) # 4000 <fatfs_get_sfn_display_name+0x4>
     b2c:	00178793          	addi	a5,a5,1 # 4001 <fatfs_get_sfn_display_name+0x5>
     b30:	e79ff06f          	j	9a8 <play_file+0x78>
     b34:	00000593          	li	a1,0
     b38:	0ff00513          	li	a0,255
     b3c:	00002097          	auipc	ra,0x2
     b40:	ebc080e7          	jalr	-324(ra) # 29f8 <display_set_front_back_color>
     b44:	00006537          	lui	a0,0x6
     b48:	00040593          	mv	a1,s0
     b4c:	3f850513          	addi	a0,a0,1016 # 63f8 <LEDS+0x60>
     b50:	00002097          	auipc	ra,0x2
     b54:	198080e7          	jalr	408(ra) # 2ce8 <printf>
     b58:	00002097          	auipc	ra,0x2
     b5c:	024080e7          	jalr	36(ra) # 2b7c <display_refresh>
     b60:	00000513          	li	a0,0
     b64:	49c0006f          	j	1000 <play_file+0x6d0>
     b68:	eac700e3          	beq	a4,a2,a08 <play_file+0xd8>
     b6c:	00b71463          	bne	a4,a1,b74 <play_file+0x244>
     b70:	02000713          	li	a4,32
     b74:	05810513          	addi	a0,sp,88
     b78:	00f50533          	add	a0,a0,a5
     b7c:	00e50023          	sb	a4,0(a0)
     b80:	00178793          	addi	a5,a5,1
     b84:	e75ff06f          	j	9f8 <play_file+0xc8>
     b88:	0c010613          	addi	a2,sp,192
     b8c:	00f60633          	add	a2,a2,a5
     b90:	00e60023          	sb	a4,0(a2)
     b94:	00178793          	addi	a5,a5,1
     b98:	eb9ff06f          	j	a50 <play_file+0x120>
     b9c:	00400793          	li	a5,4
     ba0:	00f12823          	sw	a5,16(sp)
     ba4:	fffff097          	auipc	ra,0xfffff
     ba8:	594080e7          	jalr	1428(ra) # 138 <clear_audio>
     bac:	000067b7          	lui	a5,0x6
     bb0:	3847a783          	lw	a5,900(a5) # 6384 <VOLUME>
     bb4:	02f12023          	sw	a5,32(sp)
     bb8:	000067b7          	lui	a5,0x6
     bbc:	34c7a503          	lw	a0,844(a5) # 634c <g_volume>
     bc0:	02012783          	lw	a5,32(sp)
     bc4:	00a7a023          	sw	a0,0(a5)
     bc8:	fffff097          	auipc	ra,0xfffff
     bcc:	454080e7          	jalr	1108(ra) # 1c <set_volume_leds>
     bd0:	00c12503          	lw	a0,12(sp)
     bd4:	fffff097          	auipc	ra,0xfffff
     bd8:	644080e7          	jalr	1604(ra) # 218 <file_size>
     bdc:	00a12a23          	sw	a0,20(sp)
     be0:	00050613          	mv	a2,a0
     be4:	00000793          	li	a5,0
     be8:	00000713          	li	a4,0
     bec:	00000693          	li	a3,0
     bf0:	00000593          	li	a1,0
     bf4:	05810513          	addi	a0,sp,88
     bf8:	00000097          	auipc	ra,0x0
     bfc:	a0c080e7          	jalr	-1524(ra) # 604 <update_ui>
     c00:	0a040c63          	beqz	s0,cb8 <play_file+0x388>
     c04:	00000593          	li	a1,0
     c08:	0ff00513          	li	a0,255
     c0c:	00002097          	auipc	ra,0x2
     c10:	dec080e7          	jalr	-532(ra) # 29f8 <display_set_front_back_color>
     c14:	02400593          	li	a1,36
     c18:	03100513          	li	a0,49
     c1c:	00002097          	auipc	ra,0x2
     c20:	dc8080e7          	jalr	-568(ra) # 29e4 <display_set_cursor>
     c24:	00006937          	lui	s2,0x6
     c28:	39c90513          	addi	a0,s2,924 # 639c <LEDS+0x4>
     c2c:	00002097          	auipc	ra,0x2
     c30:	0bc080e7          	jalr	188(ra) # 2ce8 <printf>
     c34:	02c00593          	li	a1,44
     c38:	03100513          	li	a0,49
     c3c:	00002097          	auipc	ra,0x2
     c40:	da8080e7          	jalr	-600(ra) # 29e4 <display_set_cursor>
     c44:	00006537          	lui	a0,0x6
     c48:	3a450513          	addi	a0,a0,932 # 63a4 <LEDS+0xc>
     c4c:	00002097          	auipc	ra,0x2
     c50:	09c080e7          	jalr	156(ra) # 2ce8 <printf>
     c54:	03400593          	li	a1,52
     c58:	03100513          	li	a0,49
     c5c:	00002097          	auipc	ra,0x2
     c60:	d88080e7          	jalr	-632(ra) # 29e4 <display_set_cursor>
     c64:	00006537          	lui	a0,0x6
     c68:	3ac50513          	addi	a0,a0,940 # 63ac <LEDS+0x14>
     c6c:	00002097          	auipc	ra,0x2
     c70:	07c080e7          	jalr	124(ra) # 2ce8 <printf>
     c74:	03c00593          	li	a1,60
     c78:	03100513          	li	a0,49
     c7c:	00002097          	auipc	ra,0x2
     c80:	d68080e7          	jalr	-664(ra) # 29e4 <display_set_cursor>
     c84:	00006537          	lui	a0,0x6
     c88:	3b450513          	addi	a0,a0,948 # 63b4 <LEDS+0x1c>
     c8c:	00002097          	auipc	ra,0x2
     c90:	05c080e7          	jalr	92(ra) # 2ce8 <printf>
     c94:	04400593          	li	a1,68
     c98:	03100513          	li	a0,49
     c9c:	00002097          	auipc	ra,0x2
     ca0:	d48080e7          	jalr	-696(ra) # 29e4 <display_set_cursor>
     ca4:	39c90513          	addi	a0,s2,924
     ca8:	00002097          	auipc	ra,0x2
     cac:	040080e7          	jalr	64(ra) # 2ce8 <printf>
     cb0:	00002097          	auipc	ra,0x2
     cb4:	ecc080e7          	jalr	-308(ra) # 2b7c <display_refresh>
     cb8:	00006737          	lui	a4,0x6
     cbc:	37872703          	lw	a4,888(a4) # 6378 <AUDIO>
     cc0:	000067b7          	lui	a5,0x6
     cc4:	3887a783          	lw	a5,904(a5) # 6388 <BUTTONS>
     cc8:	02e12823          	sw	a4,48(sp)
     ccc:	00001737          	lui	a4,0x1
     cd0:	0007a903          	lw	s2,0(a5)
     cd4:	f9f70713          	addi	a4,a4,-97 # f9f <play_file+0x66f>
     cd8:	04e12223          	sw	a4,68(sp)
     cdc:	00004737          	lui	a4,0x4
     ce0:	04f12023          	sw	a5,64(sp)
     ce4:	e7f70713          	addi	a4,a4,-385 # 3e7f <fatfs_compare_names+0x7f>
     ce8:	fff00793          	li	a5,-1
     cec:	02f12c23          	sw	a5,56(sp)
     cf0:	02f12a23          	sw	a5,52(sp)
     cf4:	07e97913          	andi	s2,s2,126
     cf8:	fff00d13          	li	s10,-1
     cfc:	00000c93          	li	s9,0
     d00:	02012623          	sw	zero,44(sp)
     d04:	00000a13          	li	s4,0
     d08:	00000993          	li	s3,0
     d0c:	00012e23          	sw	zero,28(sp)
     d10:	00012c23          	sw	zero,24(sp)
     d14:	02012e23          	sw	zero,60(sp)
     d18:	00000b93          	li	s7,0
     d1c:	fff00493          	li	s1,-1
     d20:	00000a93          	li	s5,0
     d24:	00000c13          	li	s8,0
     d28:	00000793          	li	a5,0
     d2c:	00012423          	sw	zero,8(sp)
     d30:	04e12423          	sw	a4,72(sp)
     d34:	03012703          	lw	a4,48(sp)
     d38:	00072d83          	lw	s11,0(a4)
     d3c:	1c078863          	beqz	a5,f0c <play_file+0x5dc>
     d40:	00000713          	li	a4,0
     d44:	f8000593          	li	a1,-128
     d48:	20000693          	li	a3,512
     d4c:	00ed8633          	add	a2,s11,a4
     d50:	00b60023          	sb	a1,0(a2)
     d54:	00170713          	addi	a4,a4,1
     d58:	fed71ae3          	bne	a4,a3,d4c <play_file+0x41c>
     d5c:	03412423          	sw	s4,40(sp)
     d60:	02912223          	sw	s1,36(sp)
     d64:	00098a13          	mv	s4,s3
     d68:	00078493          	mv	s1,a5
     d6c:	03012783          	lw	a5,48(sp)
     d70:	0007a783          	lw	a5,0(a5)
     d74:	1efd8263          	beq	s11,a5,f58 <play_file+0x628>
     d78:	00897b13          	andi	s6,s2,8
     d7c:	420b0a63          	beqz	s6,11b0 <play_file+0x880>
     d80:	000017b7          	lui	a5,0x1
     d84:	200b8b13          	addi	s6,s7,512
     d88:	a6978793          	addi	a5,a5,-1431 # a69 <play_file+0x139>
     d8c:	0367d263          	bge	a5,s6,db0 <play_file+0x480>
     d90:	01812783          	lw	a5,24(sp)
     d94:	31f00a93          	li	s5,799
     d98:	000069b7          	lui	s3,0x6
     d9c:	20078793          	addi	a5,a5,512
     da0:	00f12c23          	sw	a5,24(sp)
     da4:	00700b93          	li	s7,7
     da8:	01812783          	lw	a5,24(sp)
     dac:	3cfac863          	blt	s5,a5,117c <play_file+0x84c>
     db0:	01097b93          	andi	s7,s2,16
     db4:	420b8c63          	beqz	s7,11ec <play_file+0x8bc>
     db8:	03c12783          	lw	a5,60(sp)
     dbc:	20078b93          	addi	s7,a5,512
     dc0:	000017b7          	lui	a5,0x1
     dc4:	a6978793          	addi	a5,a5,-1431 # a69 <play_file+0x139>
     dc8:	0377d063          	bge	a5,s7,de8 <play_file+0x4b8>
     dcc:	01c12783          	lw	a5,28(sp)
     dd0:	31f00a93          	li	s5,799
     dd4:	000069b7          	lui	s3,0x6
     dd8:	20078793          	addi	a5,a5,512
     ddc:	00f12e23          	sw	a5,28(sp)
     de0:	01c12783          	lw	a5,28(sp)
     de4:	3cfaca63          	blt	s5,a5,11b8 <play_file+0x888>
     de8:	02097993          	andi	s3,s2,32
     dec:	00098463          	beqz	s3,df4 <play_file+0x4c4>
     df0:	200a0993          	addi	s3,s4,512
     df4:	04097a13          	andi	s4,s2,64
     df8:	000a0663          	beqz	s4,e04 <play_file+0x4d4>
     dfc:	02812783          	lw	a5,40(sp)
     e00:	20078a13          	addi	s4,a5,512
     e04:	40049c63          	bnez	s1,121c <play_file+0x8ec>
     e08:	000017b7          	lui	a5,0x1
     e0c:	f9f78793          	addi	a5,a5,-97 # f9f <play_file+0x66f>
     e10:	3f37d263          	bge	a5,s3,11f4 <play_file+0x8c4>
     e14:	000047b7          	lui	a5,0x4
     e18:	e7f78793          	addi	a5,a5,-385 # 3e7f <fatfs_compare_names+0x7f>
     e1c:	00000a93          	li	s5,0
     e20:	7137c263          	blt	a5,s3,1524 <play_file+0xbf4>
     e24:	00001537          	lui	a0,0x1
     e28:	fa050513          	addi	a0,a0,-96 # fa0 <play_file+0x670>
     e2c:	fff00593          	li	a1,-1
     e30:	00100c13          	li	s8,1
     e34:	00002097          	auipc	ra,0x2
     e38:	fe4080e7          	jalr	-28(ra) # 2e18 <__mulsi3>
     e3c:	00812783          	lw	a5,8(sp)
     e40:	00f50533          	add	a0,a0,a5
     e44:	00055463          	bgez	a0,e4c <play_file+0x51c>
     e48:	00000513          	li	a0,0
     e4c:	01412703          	lw	a4,20(sp)
     e50:	00a12423          	sw	a0,8(sp)
     e54:	00a75463          	bge	a4,a0,e5c <play_file+0x52c>
     e58:	00e12423          	sw	a4,8(sp)
     e5c:	00812583          	lw	a1,8(sp)
     e60:	00c12503          	lw	a0,12(sp)
     e64:	00000613          	li	a2,0
     e68:	00002097          	auipc	ra,0x2
     e6c:	4b8080e7          	jalr	1208(ra) # 3320 <fl_fseek>
     e70:	00000793          	li	a5,0
     e74:	f8000693          	li	a3,-128
     e78:	20000713          	li	a4,512
     e7c:	00fd8633          	add	a2,s11,a5
     e80:	00d60023          	sb	a3,0(a2)
     e84:	00178793          	addi	a5,a5,1
     e88:	fee79ae3          	bne	a5,a4,e7c <play_file+0x54c>
     e8c:	01412583          	lw	a1,20(sp)
     e90:	00812503          	lw	a0,8(sp)
     e94:	fffff097          	auipc	ra,0xfffff
     e98:	4f0080e7          	jalr	1264(ra) # 384 <draw_progress_bar>
     e9c:	00002097          	auipc	ra,0x2
     ea0:	ce0080e7          	jalr	-800(ra) # 2b7c <display_refresh>
     ea4:	000a8613          	mv	a2,s5
     ea8:	000c0593          	mv	a1,s8
     eac:	00000513          	li	a0,0
     eb0:	fffff097          	auipc	ra,0xfffff
     eb4:	660080e7          	jalr	1632(ra) # 510 <draw_controls>
     eb8:	00002097          	auipc	ra,0x2
     ebc:	cc4080e7          	jalr	-828(ra) # 2b7c <display_refresh>
     ec0:	0440006f          	j	f04 <play_file+0x5d4>
     ec4:	00300793          	li	a5,3
     ec8:	cd9ff06f          	j	ba0 <play_file+0x270>
     ecc:	00100793          	li	a5,1
     ed0:	cd1ff06f          	j	ba0 <play_file+0x270>
     ed4:	00012823          	sw	zero,16(sp)
     ed8:	c41ff06f          	j	b18 <play_file+0x1e8>
     edc:	00048793          	mv	a5,s1
     ee0:	00000a93          	li	s5,0
     ee4:	00000c13          	li	s8,0
     ee8:	03712e23          	sw	s7,60(sp)
     eec:	03512c23          	sw	s5,56(sp)
     ef0:	000b0b93          	mv	s7,s6
     ef4:	03812a23          	sw	s8,52(sp)
     ef8:	e3dff06f          	j	d34 <play_file+0x404>
     efc:	00000a93          	li	s5,0
     f00:	00000c13          	li	s8,0
     f04:	00000793          	li	a5,0
     f08:	fe1ff06f          	j	ee8 <play_file+0x5b8>
     f0c:	00c12683          	lw	a3,12(sp)
     f10:	20000613          	li	a2,512
     f14:	00100593          	li	a1,1
     f18:	000d8513          	mv	a0,s11
     f1c:	02f12223          	sw	a5,36(sp)
     f20:	00005097          	auipc	ra,0x5
     f24:	a7c080e7          	jalr	-1412(ra) # 599c <fl_fread>
     f28:	5ca05463          	blez	a0,14f0 <play_file+0xbc0>
     f2c:	00812783          	lw	a5,8(sp)
     f30:	1ff00713          	li	a4,511
     f34:	f8000693          	li	a3,-128
     f38:	00a787b3          	add	a5,a5,a0
     f3c:	00f12423          	sw	a5,8(sp)
     f40:	02412783          	lw	a5,36(sp)
     f44:	e0a74ce3          	blt	a4,a0,d5c <play_file+0x42c>
     f48:	01b50633          	add	a2,a0,s11
     f4c:	00d60023          	sb	a3,0(a2)
     f50:	00150513          	addi	a0,a0,1
     f54:	ff1ff06f          	j	f44 <play_file+0x614>
     f58:	04012783          	lw	a5,64(sp)
     f5c:	fff94993          	not	s3,s2
     f60:	0007a783          	lw	a5,0(a5)
     f64:	07e7fb13          	andi	s6,a5,126
     f68:	fffb4793          	not	a5,s6
     f6c:	0169f9b3          	and	s3,s3,s6
     f70:	0127f933          	and	s2,a5,s2
     f74:	0049f793          	andi	a5,s3,4
     f78:	02078e63          	beqz	a5,fb4 <play_file+0x684>
     f7c:	0014c793          	xori	a5,s1,1
     f80:	02f12223          	sw	a5,36(sp)
     f84:	00049663          	bnez	s1,f90 <play_file+0x660>
     f88:	fffff097          	auipc	ra,0xfffff
     f8c:	1b0080e7          	jalr	432(ra) # 138 <clear_audio>
     f90:	02412683          	lw	a3,36(sp)
     f94:	01412603          	lw	a2,20(sp)
     f98:	00812583          	lw	a1,8(sp)
     f9c:	000a8793          	mv	a5,s5
     fa0:	000c0713          	mv	a4,s8
     fa4:	05810513          	addi	a0,sp,88
     fa8:	fffff097          	auipc	ra,0xfffff
     fac:	65c080e7          	jalr	1628(ra) # 604 <update_ui>
     fb0:	02412483          	lw	s1,36(sp)
     fb4:	02097793          	andi	a5,s2,32
     fb8:	0c078263          	beqz	a5,107c <play_file+0x74c>
     fbc:	04412783          	lw	a5,68(sp)
     fc0:	1147c263          	blt	a5,s4,10c4 <play_file+0x794>
     fc4:	00812783          	lw	a5,8(sp)
     fc8:	04812703          	lw	a4,72(sp)
     fcc:	06f74863          	blt	a4,a5,103c <play_file+0x70c>
     fd0:	00c12503          	lw	a0,12(sp)
     fd4:	00005097          	auipc	ra,0x5
     fd8:	8e8080e7          	jalr	-1816(ra) # 58bc <fl_fclose>
     fdc:	00040863          	beqz	s0,fec <play_file+0x6bc>
     fe0:	00040513          	mv	a0,s0
     fe4:	00005097          	auipc	ra,0x5
     fe8:	8d8080e7          	jalr	-1832(ra) # 58bc <fl_fclose>
     fec:	fffff097          	auipc	ra,0xfffff
     ff0:	14c080e7          	jalr	332(ra) # 138 <clear_audio>
     ff4:	fffff097          	auipc	ra,0xfffff
     ff8:	1bc080e7          	jalr	444(ra) # 1b0 <clear_screen>
     ffc:	fff00513          	li	a0,-1
    1000:	2fc12083          	lw	ra,764(sp)
    1004:	2f812403          	lw	s0,760(sp)
    1008:	2f412483          	lw	s1,756(sp)
    100c:	2f012903          	lw	s2,752(sp)
    1010:	2ec12983          	lw	s3,748(sp)
    1014:	2e812a03          	lw	s4,744(sp)
    1018:	2e412a83          	lw	s5,740(sp)
    101c:	2e012b03          	lw	s6,736(sp)
    1020:	2dc12b83          	lw	s7,732(sp)
    1024:	2d812c03          	lw	s8,728(sp)
    1028:	2d412c83          	lw	s9,724(sp)
    102c:	2d012d03          	lw	s10,720(sp)
    1030:	2cc12d83          	lw	s11,716(sp)
    1034:	30010113          	addi	sp,sp,768
    1038:	00008067          	ret
    103c:	00c12503          	lw	a0,12(sp)
    1040:	00000613          	li	a2,0
    1044:	00000593          	li	a1,0
    1048:	00002097          	auipc	ra,0x2
    104c:	2d8080e7          	jalr	728(ra) # 3320 <fl_fseek>
    1050:	01412603          	lw	a2,20(sp)
    1054:	000a8793          	mv	a5,s5
    1058:	000c0713          	mv	a4,s8
    105c:	00048693          	mv	a3,s1
    1060:	00000593          	li	a1,0
    1064:	05810513          	addi	a0,sp,88
    1068:	fffff097          	auipc	ra,0xfffff
    106c:	59c080e7          	jalr	1436(ra) # 604 <update_ui>
    1070:	00000a13          	li	s4,0
    1074:	02912223          	sw	s1,36(sp)
    1078:	00012423          	sw	zero,8(sp)
    107c:	04097913          	andi	s2,s2,64
    1080:	04090863          	beqz	s2,10d0 <play_file+0x7a0>
    1084:	02812783          	lw	a5,40(sp)
    1088:	04412703          	lw	a4,68(sp)
    108c:	04f74063          	blt	a4,a5,10cc <play_file+0x79c>
    1090:	00c12503          	lw	a0,12(sp)
    1094:	00005097          	auipc	ra,0x5
    1098:	828080e7          	jalr	-2008(ra) # 58bc <fl_fclose>
    109c:	00040863          	beqz	s0,10ac <play_file+0x77c>
    10a0:	00040513          	mv	a0,s0
    10a4:	00005097          	auipc	ra,0x5
    10a8:	818080e7          	jalr	-2024(ra) # 58bc <fl_fclose>
    10ac:	fffff097          	auipc	ra,0xfffff
    10b0:	08c080e7          	jalr	140(ra) # 138 <clear_audio>
    10b4:	fffff097          	auipc	ra,0xfffff
    10b8:	0fc080e7          	jalr	252(ra) # 1b0 <clear_screen>
    10bc:	00100513          	li	a0,1
    10c0:	f41ff06f          	j	1000 <play_file+0x6d0>
    10c4:	00000a13          	li	s4,0
    10c8:	fb5ff06f          	j	107c <play_file+0x74c>
    10cc:	02012423          	sw	zero,40(sp)
    10d0:	0089f793          	andi	a5,s3,8
    10d4:	02078a63          	beqz	a5,1108 <play_file+0x7d8>
    10d8:	00006737          	lui	a4,0x6
    10dc:	34c72783          	lw	a5,844(a4) # 634c <g_volume>
    10e0:	00700693          	li	a3,7
    10e4:	00f6c663          	blt	a3,a5,10f0 <play_file+0x7c0>
    10e8:	00178793          	addi	a5,a5,1
    10ec:	34f72623          	sw	a5,844(a4)
    10f0:	000067b7          	lui	a5,0x6
    10f4:	34c7a503          	lw	a0,844(a5) # 634c <g_volume>
    10f8:	02012783          	lw	a5,32(sp)
    10fc:	00a7a023          	sw	a0,0(a5)
    1100:	fffff097          	auipc	ra,0xfffff
    1104:	f1c080e7          	jalr	-228(ra) # 1c <set_volume_leds>
    1108:	0109f793          	andi	a5,s3,16
    110c:	02078863          	beqz	a5,113c <play_file+0x80c>
    1110:	00006737          	lui	a4,0x6
    1114:	34c72783          	lw	a5,844(a4) # 634c <g_volume>
    1118:	00f05663          	blez	a5,1124 <play_file+0x7f4>
    111c:	fff78793          	addi	a5,a5,-1
    1120:	34f72623          	sw	a5,844(a4)
    1124:	000067b7          	lui	a5,0x6
    1128:	34c7a503          	lw	a0,844(a5) # 634c <g_volume>
    112c:	02012783          	lw	a5,32(sp)
    1130:	00a7a023          	sw	a0,0(a5)
    1134:	fffff097          	auipc	ra,0xfffff
    1138:	ee8080e7          	jalr	-280(ra) # 1c <set_volume_leds>
    113c:	0029f993          	andi	s3,s3,2
    1140:	02098a63          	beqz	s3,1174 <play_file+0x844>
    1144:	00c12503          	lw	a0,12(sp)
    1148:	00004097          	auipc	ra,0x4
    114c:	774080e7          	jalr	1908(ra) # 58bc <fl_fclose>
    1150:	00040863          	beqz	s0,1160 <play_file+0x830>
    1154:	00040513          	mv	a0,s0
    1158:	00004097          	auipc	ra,0x4
    115c:	764080e7          	jalr	1892(ra) # 58bc <fl_fclose>
    1160:	fffff097          	auipc	ra,0xfffff
    1164:	fd8080e7          	jalr	-40(ra) # 138 <clear_audio>
    1168:	fffff097          	auipc	ra,0xfffff
    116c:	048080e7          	jalr	72(ra) # 1b0 <clear_screen>
    1170:	9f1ff06f          	j	b60 <play_file+0x230>
    1174:	000b0913          	mv	s2,s6
    1178:	bf5ff06f          	j	d6c <play_file+0x43c>
    117c:	34c9a783          	lw	a5,844(s3) # 634c <g_volume>
    1180:	00fbc663          	blt	s7,a5,118c <play_file+0x85c>
    1184:	00178793          	addi	a5,a5,1
    1188:	34f9a623          	sw	a5,844(s3)
    118c:	02012783          	lw	a5,32(sp)
    1190:	34c9a503          	lw	a0,844(s3)
    1194:	00a7a023          	sw	a0,0(a5)
    1198:	fffff097          	auipc	ra,0xfffff
    119c:	e84080e7          	jalr	-380(ra) # 1c <set_volume_leds>
    11a0:	01812783          	lw	a5,24(sp)
    11a4:	ce078793          	addi	a5,a5,-800
    11a8:	00f12c23          	sw	a5,24(sp)
    11ac:	bfdff06f          	j	da8 <play_file+0x478>
    11b0:	00012c23          	sw	zero,24(sp)
    11b4:	bfdff06f          	j	db0 <play_file+0x480>
    11b8:	34c9a783          	lw	a5,844(s3)
    11bc:	00f05663          	blez	a5,11c8 <play_file+0x898>
    11c0:	fff78793          	addi	a5,a5,-1
    11c4:	34f9a623          	sw	a5,844(s3)
    11c8:	02012783          	lw	a5,32(sp)
    11cc:	34c9a503          	lw	a0,844(s3)
    11d0:	00a7a023          	sw	a0,0(a5)
    11d4:	fffff097          	auipc	ra,0xfffff
    11d8:	e48080e7          	jalr	-440(ra) # 1c <set_volume_leds>
    11dc:	01c12783          	lw	a5,28(sp)
    11e0:	ce078793          	addi	a5,a5,-800
    11e4:	00f12e23          	sw	a5,28(sp)
    11e8:	bf9ff06f          	j	de0 <play_file+0x4b0>
    11ec:	00012e23          	sw	zero,28(sp)
    11f0:	bf9ff06f          	j	de8 <play_file+0x4b8>
    11f4:	0347d463          	bge	a5,s4,121c <play_file+0x8ec>
    11f8:	000047b7          	lui	a5,0x4
    11fc:	e7f78793          	addi	a5,a5,-385 # 3e7f <fatfs_compare_names+0x7f>
    1200:	00000c13          	li	s8,0
    1204:	3347da63          	bge	a5,s4,1538 <play_file+0xc08>
    1208:	00004537          	lui	a0,0x4
    120c:	e8050513          	addi	a0,a0,-384 # 3e80 <fatfs_compare_names+0x80>
    1210:	00100593          	li	a1,1
    1214:	00200a93          	li	s5,2
    1218:	c1dff06f          	j	e34 <play_file+0x504>
    121c:	03412783          	lw	a5,52(sp)
    1220:	03812703          	lw	a4,56(sp)
    1224:	00e7e7b3          	or	a5,a5,a4
    1228:	00079663          	bnez	a5,1234 <play_file+0x904>
    122c:	02412783          	lw	a5,36(sp)
    1230:	02f48063          	beq	s1,a5,1250 <play_file+0x920>
    1234:	00000613          	li	a2,0
    1238:	00000593          	li	a1,0
    123c:	00048513          	mv	a0,s1
    1240:	fffff097          	auipc	ra,0xfffff
    1244:	2d0080e7          	jalr	720(ra) # 510 <draw_controls>
    1248:	00002097          	auipc	ra,0x2
    124c:	934080e7          	jalr	-1740(ra) # 2b7c <display_refresh>
    1250:	10040a63          	beqz	s0,1364 <play_file+0xa34>
    1254:	01012783          	lw	a5,16(sp)
    1258:	00100713          	li	a4,1
    125c:	ffd78793          	addi	a5,a5,-3
    1260:	14f77463          	bgeu	a4,a5,13a8 <play_file+0xa78>
    1264:	07f00793          	li	a5,127
    1268:	0f97c663          	blt	a5,s9,1354 <play_file+0xa24>
    126c:	00040693          	mv	a3,s0
    1270:	08000613          	li	a2,128
    1274:	00100593          	li	a1,1
    1278:	0c010513          	addi	a0,sp,192
    127c:	00004097          	auipc	ra,0x4
    1280:	720080e7          	jalr	1824(ra) # 599c <fl_fread>
    1284:	08000793          	li	a5,128
    1288:	0cf51663          	bne	a0,a5,1354 <play_file+0xa24>
    128c:	002c9793          	slli	a5,s9,0x2
    1290:	019787b3          	add	a5,a5,s9
    1294:	00479793          	slli	a5,a5,0x4
    1298:	41f7dd93          	srai	s11,a5,0x1f
    129c:	07fdfd93          	andi	s11,s11,127
    12a0:	00fd8db3          	add	s11,s11,a5
    12a4:	407ddd93          	srai	s11,s11,0x7
    12a8:	09bd0e63          	beq	s10,s11,1344 <play_file+0xa14>
    12ac:	04f00793          	li	a5,79
    12b0:	09b7ea63          	bltu	a5,s11,1344 <play_file+0xa14>
    12b4:	000067b7          	lui	a5,0x6
    12b8:	3807a783          	lw	a5,896(a5) # 6380 <RGBSEL>
    12bc:	00001ab7          	lui	s5,0x1
    12c0:	c10a8a93          	addi	s5,s5,-1008 # c10 <play_file+0x2e0>
    12c4:	00003c37          	lui	s8,0x3
    12c8:	00000d13          	li	s10,0
    12cc:	015d8ab3          	add	s5,s11,s5
    12d0:	02f12223          	sw	a5,36(sp)
    12d4:	800c0c13          	addi	s8,s8,-2048 # 2800 <oled_init_mode+0x48>
    12d8:	05000593          	li	a1,80
    12dc:	000d0513          	mv	a0,s10
    12e0:	00001097          	auipc	ra,0x1
    12e4:	340080e7          	jalr	832(ra) # 2620 <__divsi3>
    12e8:	27050793          	addi	a5,a0,624
    12ec:	05010713          	addi	a4,sp,80
    12f0:	00e78533          	add	a0,a5,a4
    12f4:	e0054683          	lbu	a3,-512(a0)
    12f8:	01aa8633          	add	a2,s5,s10
    12fc:	00000793          	li	a5,0
    1300:	02412703          	lw	a4,36(sp)
    1304:	02d12c23          	sw	a3,56(sp)
    1308:	02c12a23          	sw	a2,52(sp)
    130c:	00f72023          	sw	a5,0(a4)
    1310:	02f12423          	sw	a5,40(sp)
    1314:	00001097          	auipc	ra,0x1
    1318:	6c4080e7          	jalr	1732(ra) # 29d8 <display_framebuffer>
    131c:	03412603          	lw	a2,52(sp)
    1320:	03812683          	lw	a3,56(sp)
    1324:	02812783          	lw	a5,40(sp)
    1328:	00c50533          	add	a0,a0,a2
    132c:	00d50023          	sb	a3,0(a0)
    1330:	00178793          	addi	a5,a5,1
    1334:	00300713          	li	a4,3
    1338:	fce794e3          	bne	a5,a4,1300 <play_file+0x9d0>
    133c:	080d0d13          	addi	s10,s10,128
    1340:	f98d1ce3          	bne	s10,s8,12d8 <play_file+0x9a8>
    1344:	001c8c93          	addi	s9,s9,1
    1348:	000d8d13          	mv	s10,s11
    134c:	08000793          	li	a5,128
    1350:	00fc9a63          	bne	s9,a5,1364 <play_file+0xa34>
    1354:	00040513          	mv	a0,s0
    1358:	00004097          	auipc	ra,0x4
    135c:	564080e7          	jalr	1380(ra) # 58bc <fl_fclose>
    1360:	00000413          	li	s0,0
    1364:	02c12783          	lw	a5,44(sp)
    1368:	00178793          	addi	a5,a5,1
    136c:	02f12623          	sw	a5,44(sp)
    1370:	b60496e3          	bnez	s1,edc <play_file+0x5ac>
    1374:	0037f793          	andi	a5,a5,3
    1378:	b80792e3          	bnez	a5,efc <play_file+0x5cc>
    137c:	01412583          	lw	a1,20(sp)
    1380:	00812503          	lw	a0,8(sp)
    1384:	02f12223          	sw	a5,36(sp)
    1388:	00000a93          	li	s5,0
    138c:	fffff097          	auipc	ra,0xfffff
    1390:	ff8080e7          	jalr	-8(ra) # 384 <draw_progress_bar>
    1394:	00001097          	auipc	ra,0x1
    1398:	7e8080e7          	jalr	2024(ra) # 2b7c <display_refresh>
    139c:	02412783          	lw	a5,36(sp)
    13a0:	00000c13          	li	s8,0
    13a4:	b45ff06f          	j	ee8 <play_file+0x5b8>
    13a8:	07f00793          	li	a5,127
    13ac:	fb97c4e3          	blt	a5,s9,1354 <play_file+0xa24>
    13b0:	01012703          	lw	a4,16(sp)
    13b4:	00400793          	li	a5,4
    13b8:	18000a93          	li	s5,384
    13bc:	00f71463          	bne	a4,a5,13c4 <play_file+0xa94>
    13c0:	20000a93          	li	s5,512
    13c4:	00040693          	mv	a3,s0
    13c8:	000a8613          	mv	a2,s5
    13cc:	00100593          	li	a1,1
    13d0:	0c010513          	addi	a0,sp,192
    13d4:	00004097          	auipc	ra,0x4
    13d8:	5c8080e7          	jalr	1480(ra) # 599c <fl_fread>
    13dc:	f7551ce3          	bne	a0,s5,1354 <play_file+0xa24>
    13e0:	002c9713          	slli	a4,s9,0x2
    13e4:	01970733          	add	a4,a4,s9
    13e8:	00471713          	slli	a4,a4,0x4
    13ec:	41f75793          	srai	a5,a4,0x1f
    13f0:	07f7f793          	andi	a5,a5,127
    13f4:	00e787b3          	add	a5,a5,a4
    13f8:	4077d793          	srai	a5,a5,0x7
    13fc:	0fa78663          	beq	a5,s10,14e8 <play_file+0xbb8>
    1400:	04f00713          	li	a4,79
    1404:	0ef76063          	bltu	a4,a5,14e4 <play_file+0xbb4>
    1408:	000066b7          	lui	a3,0x6
    140c:	3806a703          	lw	a4,896(a3) # 6380 <RGBSEL>
    1410:	00001ab7          	lui	s5,0x1
    1414:	c10a8a93          	addi	s5,s5,-1008 # c10 <play_file+0x2e0>
    1418:	000036b7          	lui	a3,0x3
    141c:	00000d13          	li	s10,0
    1420:	01578ab3          	add	s5,a5,s5
    1424:	02e12223          	sw	a4,36(sp)
    1428:	00100d93          	li	s11,1
    142c:	80068693          	addi	a3,a3,-2048 # 2800 <oled_init_mode+0x48>
    1430:	05000593          	li	a1,80
    1434:	000d0513          	mv	a0,s10
    1438:	04d12623          	sw	a3,76(sp)
    143c:	02f12e23          	sw	a5,60(sp)
    1440:	00001097          	auipc	ra,0x1
    1444:	1e0080e7          	jalr	480(ra) # 2620 <__divsi3>
    1448:	01012583          	lw	a1,16(sp)
    144c:	01aa8c33          	add	s8,s5,s10
    1450:	080d0d13          	addi	s10,s10,128
    1454:	00002097          	auipc	ra,0x2
    1458:	9c4080e7          	jalr	-1596(ra) # 2e18 <__mulsi3>
    145c:	05010713          	addi	a4,sp,80
    1460:	27050793          	addi	a5,a0,624
    1464:	00e78533          	add	a0,a5,a4
    1468:	02412783          	lw	a5,36(sp)
    146c:	e0154603          	lbu	a2,-511(a0)
    1470:	e0254583          	lbu	a1,-510(a0)
    1474:	e0054803          	lbu	a6,-512(a0)
    1478:	0007a023          	sw	zero,0(a5)
    147c:	02c12423          	sw	a2,40(sp)
    1480:	02b12a23          	sw	a1,52(sp)
    1484:	03012c23          	sw	a6,56(sp)
    1488:	00001097          	auipc	ra,0x1
    148c:	550080e7          	jalr	1360(ra) # 29d8 <display_framebuffer>
    1490:	03812803          	lw	a6,56(sp)
    1494:	02412783          	lw	a5,36(sp)
    1498:	01850533          	add	a0,a0,s8
    149c:	01050023          	sb	a6,0(a0)
    14a0:	01b7a023          	sw	s11,0(a5)
    14a4:	00001097          	auipc	ra,0x1
    14a8:	534080e7          	jalr	1332(ra) # 29d8 <display_framebuffer>
    14ac:	03412583          	lw	a1,52(sp)
    14b0:	02412783          	lw	a5,36(sp)
    14b4:	01850533          	add	a0,a0,s8
    14b8:	00b50023          	sb	a1,0(a0)
    14bc:	00200713          	li	a4,2
    14c0:	00e7a023          	sw	a4,0(a5)
    14c4:	00001097          	auipc	ra,0x1
    14c8:	514080e7          	jalr	1300(ra) # 29d8 <display_framebuffer>
    14cc:	02812603          	lw	a2,40(sp)
    14d0:	04c12683          	lw	a3,76(sp)
    14d4:	01850533          	add	a0,a0,s8
    14d8:	00c50023          	sb	a2,0(a0)
    14dc:	03c12783          	lw	a5,60(sp)
    14e0:	f4dd18e3          	bne	s10,a3,1430 <play_file+0xb00>
    14e4:	00078d13          	mv	s10,a5
    14e8:	001c8c93          	addi	s9,s9,1
    14ec:	e61ff06f          	j	134c <play_file+0xa1c>
    14f0:	00c12503          	lw	a0,12(sp)
    14f4:	00004097          	auipc	ra,0x4
    14f8:	3c8080e7          	jalr	968(ra) # 58bc <fl_fclose>
    14fc:	00040863          	beqz	s0,150c <play_file+0xbdc>
    1500:	00040513          	mv	a0,s0
    1504:	00004097          	auipc	ra,0x4
    1508:	3b8080e7          	jalr	952(ra) # 58bc <fl_fclose>
    150c:	fffff097          	auipc	ra,0xfffff
    1510:	c2c080e7          	jalr	-980(ra) # 138 <clear_audio>
    1514:	fffff097          	auipc	ra,0xfffff
    1518:	c9c080e7          	jalr	-868(ra) # 1b0 <clear_screen>
    151c:	00200513          	li	a0,2
    1520:	ae1ff06f          	j	1000 <play_file+0x6d0>
    1524:	00004537          	lui	a0,0x4
    1528:	e8050513          	addi	a0,a0,-384 # 3e80 <fatfs_compare_names+0x80>
    152c:	fff00593          	li	a1,-1
    1530:	00200c13          	li	s8,2
    1534:	901ff06f          	j	e34 <play_file+0x504>
    1538:	00001537          	lui	a0,0x1
    153c:	fa050513          	addi	a0,a0,-96 # fa0 <play_file+0x670>
    1540:	00100593          	li	a1,1
    1544:	00100a93          	li	s5,1
    1548:	8edff06f          	j	e34 <play_file+0x504>

0000154c <main>:
    154c:	000067b7          	lui	a5,0x6
    1550:	3987a783          	lw	a5,920(a5) # 6398 <LEDS>
    1554:	fd010113          	addi	sp,sp,-48
    1558:	02112623          	sw	ra,44(sp)
    155c:	02812423          	sw	s0,40(sp)
    1560:	02912223          	sw	s1,36(sp)
    1564:	03212023          	sw	s2,32(sp)
    1568:	01312e23          	sw	s3,28(sp)
    156c:	01412c23          	sw	s4,24(sp)
    1570:	01512a23          	sw	s5,20(sp)
    1574:	01612823          	sw	s6,16(sp)
    1578:	01712623          	sw	s7,12(sp)
    157c:	01812423          	sw	s8,8(sp)
    1580:	01912223          	sw	s9,4(sp)
    1584:	01a12023          	sw	s10,0(sp)
    1588:	0007a023          	sw	zero,0(a5)
    158c:	000067b7          	lui	a5,0x6
    1590:	34c7a703          	lw	a4,844(a5) # 634c <g_volume>
    1594:	000067b7          	lui	a5,0x6
    1598:	3847a783          	lw	a5,900(a5) # 6384 <VOLUME>
    159c:	00000413          	li	s0,0
    15a0:	00002937          	lui	s2,0x2
    15a4:	00e7a023          	sw	a4,0(a5)
    15a8:	000037b7          	lui	a5,0x3
    15ac:	00007737          	lui	a4,0x7
    15b0:	a0c78793          	addi	a5,a5,-1524 # 2a0c <display_putchar>
    15b4:	bef72623          	sw	a5,-1044(a4) # 6bec <f_putchar>
    15b8:	00001097          	auipc	ra,0x1
    15bc:	300080e7          	jalr	768(ra) # 28b8 <oled_init>
    15c0:	00001097          	auipc	ra,0x1
    15c4:	304080e7          	jalr	772(ra) # 28c4 <oled_fullscreen>
    15c8:	00000513          	li	a0,0
    15cc:	00001097          	auipc	ra,0x1
    15d0:	390080e7          	jalr	912(ra) # 295c <oled_clear>
    15d4:	000024b7          	lui	s1,0x2
    15d8:	00001097          	auipc	ra,0x1
    15dc:	e24080e7          	jalr	-476(ra) # 23fc <sdcard_init>
    15e0:	00002097          	auipc	ra,0x2
    15e4:	cd0080e7          	jalr	-816(ra) # 32b0 <fl_init>
    15e8:	fffff097          	auipc	ra,0xfffff
    15ec:	bc8080e7          	jalr	-1080(ra) # 1b0 <clear_screen>
    15f0:	fffff097          	auipc	ra,0xfffff
    15f4:	a7c080e7          	jalr	-1412(ra) # 6c <show_hourglass>
    15f8:	61890593          	addi	a1,s2,1560 # 2618 <sdcard_writesector>
    15fc:	5c448513          	addi	a0,s1,1476 # 25c4 <sdcard_readsector>
    1600:	00003097          	auipc	ra,0x3
    1604:	ce4080e7          	jalr	-796(ra) # 42e4 <fl_attach_media>
    1608:	0e051063          	bnez	a0,16e8 <main+0x19c>
    160c:	fffff097          	auipc	ra,0xfffff
    1610:	b2c080e7          	jalr	-1236(ra) # 138 <clear_audio>
    1614:	fffff097          	auipc	ra,0xfffff
    1618:	1e8080e7          	jalr	488(ra) # 7fc <scan_files>
    161c:	000067b7          	lui	a5,0x6
    1620:	3887ab03          	lw	s6,904(a5) # 6388 <BUTTONS>
    1624:	00007bb7          	lui	s7,0x7
    1628:	00006ab7          	lui	s5,0x6
    162c:	000b2483          	lw	s1,0(s6)
    1630:	00000413          	li	s0,0
    1634:	00100793          	li	a5,1
    1638:	07e4f493          	andi	s1,s1,126
    163c:	00006c37          	lui	s8,0x6
    1640:	c08b8a13          	addi	s4,s7,-1016 # 6c08 <files>
    1644:	00007cb7          	lui	s9,0x7
    1648:	514a8a93          	addi	s5,s5,1300 # 6514 <seq.0>
    164c:	00078663          	beqz	a5,1658 <main+0x10c>
    1650:	fffff097          	auipc	ra,0xfffff
    1654:	b60080e7          	jalr	-1184(ra) # 1b0 <clear_screen>
    1658:	00000593          	li	a1,0
    165c:	00000513          	li	a0,0
    1660:	00001097          	auipc	ra,0x1
    1664:	384080e7          	jalr	900(ra) # 29e4 <display_set_cursor>
    1668:	0ff00593          	li	a1,255
    166c:	00000513          	li	a0,0
    1670:	00001097          	auipc	ra,0x1
    1674:	388080e7          	jalr	904(ra) # 29f8 <display_set_front_back_color>
    1678:	00006537          	lui	a0,0x6
    167c:	41850513          	addi	a0,a0,1048 # 6418 <LEDS+0x80>
    1680:	00001097          	auipc	ra,0x1
    1684:	668080e7          	jalr	1640(ra) # 2ce8 <printf>
    1688:	00000593          	li	a1,0
    168c:	0ff00513          	li	a0,255
    1690:	00001097          	auipc	ra,0x1
    1694:	368080e7          	jalr	872(ra) # 29f8 <display_set_front_back_color>
    1698:	00007937          	lui	s2,0x7
    169c:	bd892783          	lw	a5,-1064(s2) # 6bd8 <file_count>
    16a0:	06078063          	beqz	a5,1700 <main+0x1b4>
    16a4:	c08b8d13          	addi	s10,s7,-1016
    16a8:	00000993          	li	s3,0
    16ac:	bd892783          	lw	a5,-1064(s2)
    16b0:	06f9d063          	bge	s3,a5,1710 <main+0x1c4>
    16b4:	13341e63          	bne	s0,s3,17f0 <main+0x2a4>
    16b8:	0ff00593          	li	a1,255
    16bc:	00000513          	li	a0,0
    16c0:	00001097          	auipc	ra,0x1
    16c4:	338080e7          	jalr	824(ra) # 29f8 <display_set_front_back_color>
    16c8:	000d0613          	mv	a2,s10
    16cc:	00098593          	mv	a1,s3
    16d0:	448c0513          	addi	a0,s8,1096 # 6448 <LEDS+0xb0>
    16d4:	00001097          	auipc	ra,0x1
    16d8:	614080e7          	jalr	1556(ra) # 2ce8 <printf>
    16dc:	00198993          	addi	s3,s3,1
    16e0:	040d0d13          	addi	s10,s10,64
    16e4:	fc9ff06f          	j	16ac <main+0x160>
    16e8:	3ff47793          	andi	a5,s0,1023
    16ec:	00079663          	bnez	a5,16f8 <main+0x1ac>
    16f0:	fffff097          	auipc	ra,0xfffff
    16f4:	97c080e7          	jalr	-1668(ra) # 6c <show_hourglass>
    16f8:	00140413          	addi	s0,s0,1
    16fc:	efdff06f          	j	15f8 <main+0xac>
    1700:	00006537          	lui	a0,0x6
    1704:	43450513          	addi	a0,a0,1076 # 6434 <LEDS+0x9c>
    1708:	00001097          	auipc	ra,0x1
    170c:	5e0080e7          	jalr	1504(ra) # 2ce8 <printf>
    1710:	00001097          	auipc	ra,0x1
    1714:	46c080e7          	jalr	1132(ra) # 2b7c <display_refresh>
    1718:	000b2983          	lw	s3,0(s6)
    171c:	fff4c493          	not	s1,s1
    1720:	00007737          	lui	a4,0x7
    1724:	07e9f993          	andi	s3,s3,126
    1728:	0134f4b3          	and	s1,s1,s3
    172c:	0084f613          	andi	a2,s1,8
    1730:	00300793          	li	a5,3
    1734:	0c061463          	bnez	a2,17fc <main+0x2b0>
    1738:	0104f693          	andi	a3,s1,16
    173c:	00400793          	li	a5,4
    1740:	0a069e63          	bnez	a3,17fc <main+0x2b0>
    1744:	0204f693          	andi	a3,s1,32
    1748:	00500793          	li	a5,5
    174c:	0a069863          	bnez	a3,17fc <main+0x2b0>
    1750:	0404f693          	andi	a3,s1,64
    1754:	00600793          	li	a5,6
    1758:	0a069263          	bnez	a3,17fc <main+0x2b0>
    175c:	bcc72783          	lw	a5,-1076(a4) # 6bcc <idle.2>
    1760:	000016b7          	lui	a3,0x1
    1764:	fa068693          	addi	a3,a3,-96 # fa0 <play_file+0x670>
    1768:	00178793          	addi	a5,a5,1
    176c:	bcf72623          	sw	a5,-1076(a4)
    1770:	00f6d863          	bge	a3,a5,1780 <main+0x234>
    1774:	000077b7          	lui	a5,0x7
    1778:	bc07a423          	sw	zero,-1080(a5) # 6bc8 <idx.1>
    177c:	bc072623          	sw	zero,-1076(a4)
    1780:	0024f793          	andi	a5,s1,2
    1784:	28078c63          	beqz	a5,1a1c <main+0x4d0>
    1788:	bd892703          	lw	a4,-1064(s2)
    178c:	00000793          	li	a5,0
    1790:	28e05663          	blez	a4,1a1c <main+0x4d0>
    1794:	00641513          	slli	a0,s0,0x6
    1798:	00aa0533          	add	a0,s4,a0
    179c:	fffff097          	auipc	ra,0xfffff
    17a0:	194080e7          	jalr	404(ra) # 930 <play_file>
    17a4:	00100493          	li	s1,1
    17a8:	00150793          	addi	a5,a0,1
    17ac:	ffd7f793          	andi	a5,a5,-3
    17b0:	26078063          	beqz	a5,1a10 <main+0x4c4>
    17b4:	00200493          	li	s1,2
    17b8:	26951063          	bne	a0,s1,1a18 <main+0x4cc>
    17bc:	bd0ca783          	lw	a5,-1072(s9) # 6bd0 <g_last_was_easter>
    17c0:	24079c63          	bnez	a5,1a18 <main+0x4cc>
    17c4:	bd892583          	lw	a1,-1064(s2)
    17c8:	24b05a63          	blez	a1,1a1c <main+0x4d0>
    17cc:	00140513          	addi	a0,s0,1
    17d0:	00001097          	auipc	ra,0x1
    17d4:	ed4080e7          	jalr	-300(ra) # 26a4 <__modsi3>
    17d8:	00050413          	mv	s0,a0
    17dc:	00651513          	slli	a0,a0,0x6
    17e0:	00aa0533          	add	a0,s4,a0
    17e4:	fffff097          	auipc	ra,0xfffff
    17e8:	14c080e7          	jalr	332(ra) # 930 <play_file>
    17ec:	fcdff06f          	j	17b8 <main+0x26c>
    17f0:	00000593          	li	a1,0
    17f4:	0ff00513          	li	a0,255
    17f8:	ec9ff06f          	j	16c0 <main+0x174>
    17fc:	bc072623          	sw	zero,-1076(a4)
    1800:	00007737          	lui	a4,0x7
    1804:	bc872583          	lw	a1,-1080(a4) # 6bc8 <idx.1>
    1808:	00259693          	slli	a3,a1,0x2
    180c:	00da86b3          	add	a3,s5,a3
    1810:	0006a683          	lw	a3,0(a3)
    1814:	16f69c63          	bne	a3,a5,198c <main+0x440>
    1818:	00158793          	addi	a5,a1,1
    181c:	00800693          	li	a3,8
    1820:	16d79a63          	bne	a5,a3,1994 <main+0x448>
    1824:	000077b7          	lui	a5,0x7
    1828:	bc072423          	sw	zero,-1080(a4)
    182c:	00100713          	li	a4,1
    1830:	bce7aa23          	sw	a4,-1068(a5) # 6bd4 <g_skip_image>
    1834:	fffff097          	auipc	ra,0xfffff
    1838:	97c080e7          	jalr	-1668(ra) # 1b0 <clear_screen>
    183c:	00000593          	li	a1,0
    1840:	0ff00513          	li	a0,255
    1844:	00001097          	auipc	ra,0x1
    1848:	1b4080e7          	jalr	436(ra) # 29f8 <display_set_front_back_color>
    184c:	01400593          	li	a1,20
    1850:	02200513          	li	a0,34
    1854:	00001097          	auipc	ra,0x1
    1858:	190080e7          	jalr	400(ra) # 29e4 <display_set_cursor>
    185c:	00006537          	lui	a0,0x6
    1860:	45050513          	addi	a0,a0,1104 # 6450 <LEDS+0xb8>
    1864:	00001097          	auipc	ra,0x1
    1868:	484080e7          	jalr	1156(ra) # 2ce8 <printf>
    186c:	01c00593          	li	a1,28
    1870:	02200513          	li	a0,34
    1874:	00001097          	auipc	ra,0x1
    1878:	170080e7          	jalr	368(ra) # 29e4 <display_set_cursor>
    187c:	00006537          	lui	a0,0x6
    1880:	45c50513          	addi	a0,a0,1116 # 645c <LEDS+0xc4>
    1884:	00001097          	auipc	ra,0x1
    1888:	464080e7          	jalr	1124(ra) # 2ce8 <printf>
    188c:	02400593          	li	a1,36
    1890:	02200513          	li	a0,34
    1894:	00001097          	auipc	ra,0x1
    1898:	150080e7          	jalr	336(ra) # 29e4 <display_set_cursor>
    189c:	00006537          	lui	a0,0x6
    18a0:	46850513          	addi	a0,a0,1128 # 6468 <LEDS+0xd0>
    18a4:	00001097          	auipc	ra,0x1
    18a8:	444080e7          	jalr	1092(ra) # 2ce8 <printf>
    18ac:	02c00593          	li	a1,44
    18b0:	02200513          	li	a0,34
    18b4:	00001097          	auipc	ra,0x1
    18b8:	130080e7          	jalr	304(ra) # 29e4 <display_set_cursor>
    18bc:	00006537          	lui	a0,0x6
    18c0:	47450513          	addi	a0,a0,1140 # 6474 <LEDS+0xdc>
    18c4:	00001097          	auipc	ra,0x1
    18c8:	424080e7          	jalr	1060(ra) # 2ce8 <printf>
    18cc:	03400593          	li	a1,52
    18d0:	02200513          	li	a0,34
    18d4:	00001097          	auipc	ra,0x1
    18d8:	110080e7          	jalr	272(ra) # 29e4 <display_set_cursor>
    18dc:	00006537          	lui	a0,0x6
    18e0:	48450513          	addi	a0,a0,1156 # 6484 <LEDS+0xec>
    18e4:	00001097          	auipc	ra,0x1
    18e8:	404080e7          	jalr	1028(ra) # 2ce8 <printf>
    18ec:	03c00593          	li	a1,60
    18f0:	02200513          	li	a0,34
    18f4:	00001097          	auipc	ra,0x1
    18f8:	0f0080e7          	jalr	240(ra) # 29e4 <display_set_cursor>
    18fc:	00006537          	lui	a0,0x6
    1900:	49450513          	addi	a0,a0,1172 # 6494 <LEDS+0xfc>
    1904:	00001097          	auipc	ra,0x1
    1908:	3e4080e7          	jalr	996(ra) # 2ce8 <printf>
    190c:	04400593          	li	a1,68
    1910:	02200513          	li	a0,34
    1914:	00001097          	auipc	ra,0x1
    1918:	0d0080e7          	jalr	208(ra) # 29e4 <display_set_cursor>
    191c:	00006537          	lui	a0,0x6
    1920:	4a450513          	addi	a0,a0,1188 # 64a4 <LEDS+0x10c>
    1924:	00001097          	auipc	ra,0x1
    1928:	3c4080e7          	jalr	964(ra) # 2ce8 <printf>
    192c:	04c00593          	li	a1,76
    1930:	02200513          	li	a0,34
    1934:	00001097          	auipc	ra,0x1
    1938:	0b0080e7          	jalr	176(ra) # 29e4 <display_set_cursor>
    193c:	00006537          	lui	a0,0x6
    1940:	4b450513          	addi	a0,a0,1204 # 64b4 <LEDS+0x11c>
    1944:	00001097          	auipc	ra,0x1
    1948:	3a4080e7          	jalr	932(ra) # 2ce8 <printf>
    194c:	05400593          	li	a1,84
    1950:	02200513          	li	a0,34
    1954:	00001097          	auipc	ra,0x1
    1958:	090080e7          	jalr	144(ra) # 29e4 <display_set_cursor>
    195c:	00006537          	lui	a0,0x6
    1960:	4c050513          	addi	a0,a0,1216 # 64c0 <LEDS+0x128>
    1964:	00001097          	auipc	ra,0x1
    1968:	384080e7          	jalr	900(ra) # 2ce8 <printf>
    196c:	00001097          	auipc	ra,0x1
    1970:	210080e7          	jalr	528(ra) # 2b7c <display_refresh>
    1974:	00006537          	lui	a0,0x6
    1978:	3dc50513          	addi	a0,a0,988 # 63dc <LEDS+0x44>
    197c:	fffff097          	auipc	ra,0xfffff
    1980:	fb4080e7          	jalr	-76(ra) # 930 <play_file>
    1984:	00100793          	li	a5,1
    1988:	0940006f          	j	1a1c <main+0x4d0>
    198c:	ffd78793          	addi	a5,a5,-3
    1990:	0017b793          	seqz	a5,a5
    1994:	bcf72423          	sw	a5,-1080(a4)
    1998:	02060063          	beqz	a2,19b8 <main+0x46c>
    199c:	bd892583          	lw	a1,-1064(s2)
    19a0:	00058c63          	beqz	a1,19b8 <main+0x46c>
    19a4:	fff40513          	addi	a0,s0,-1
    19a8:	00b50533          	add	a0,a0,a1
    19ac:	00001097          	auipc	ra,0x1
    19b0:	cf8080e7          	jalr	-776(ra) # 26a4 <__modsi3>
    19b4:	00050413          	mv	s0,a0
    19b8:	0104f793          	andi	a5,s1,16
    19bc:	dc0782e3          	beqz	a5,1780 <main+0x234>
    19c0:	bd892583          	lw	a1,-1064(s2)
    19c4:	da058ee3          	beqz	a1,1780 <main+0x234>
    19c8:	00140513          	addi	a0,s0,1
    19cc:	00001097          	auipc	ra,0x1
    19d0:	cd8080e7          	jalr	-808(ra) # 26a4 <__modsi3>
    19d4:	00050413          	mv	s0,a0
    19d8:	da9ff06f          	j	1780 <main+0x234>
    19dc:	02951463          	bne	a0,s1,1a04 <main+0x4b8>
    19e0:	00140513          	addi	a0,s0,1
    19e4:	00001097          	auipc	ra,0x1
    19e8:	cc0080e7          	jalr	-832(ra) # 26a4 <__modsi3>
    19ec:	00050413          	mv	s0,a0
    19f0:	00651513          	slli	a0,a0,0x6
    19f4:	00aa0533          	add	a0,s4,a0
    19f8:	fffff097          	auipc	ra,0xfffff
    19fc:	f38080e7          	jalr	-200(ra) # 930 <play_file>
    1a00:	da9ff06f          	j	17a8 <main+0x25c>
    1a04:	fff40513          	addi	a0,s0,-1
    1a08:	00b50533          	add	a0,a0,a1
    1a0c:	fd9ff06f          	j	19e4 <main+0x498>
    1a10:	bd892583          	lw	a1,-1064(s2)
    1a14:	fcb044e3          	bgtz	a1,19dc <main+0x490>
    1a18:	00000793          	li	a5,0
    1a1c:	00098493          	mv	s1,s3
    1a20:	c2dff06f          	j	164c <main+0x100>

00001a24 <sdcard_ponder>:
    1a24:	fe010113          	addi	sp,sp,-32
    1a28:	00812e23          	sw	s0,28(sp)
    1a2c:	02010413          	addi	s0,sp,32
    1a30:	fe042623          	sw	zero,-20(s0)
    1a34:	fe042423          	sw	zero,-24(s0)
    1a38:	0380006f          	j	1a70 <sdcard_ponder+0x4c>
    1a3c:	000067b7          	lui	a5,0x6
    1a40:	38c7a783          	lw	a5,908(a5) # 638c <SDCARD>
    1a44:	fec42703          	lw	a4,-20(s0)
    1a48:	00676713          	ori	a4,a4,6
    1a4c:	00e7a023          	sw	a4,0(a5)
    1a50:	00100713          	li	a4,1
    1a54:	fec42783          	lw	a5,-20(s0)
    1a58:	40f707b3          	sub	a5,a4,a5
    1a5c:	fef42623          	sw	a5,-20(s0)
    1a60:	00000013          	nop
    1a64:	fe842783          	lw	a5,-24(s0)
    1a68:	00178793          	addi	a5,a5,1
    1a6c:	fef42423          	sw	a5,-24(s0)
    1a70:	fe842703          	lw	a4,-24(s0)
    1a74:	00f00793          	li	a5,15
    1a78:	fce7d2e3          	bge	a5,a4,1a3c <sdcard_ponder+0x18>
    1a7c:	00000013          	nop
    1a80:	00000013          	nop
    1a84:	01c12403          	lw	s0,28(sp)
    1a88:	02010113          	addi	sp,sp,32
    1a8c:	00008067          	ret

00001a90 <sdcard_send>:
    1a90:	fd010113          	addi	sp,sp,-48
    1a94:	02112623          	sw	ra,44(sp)
    1a98:	02812423          	sw	s0,40(sp)
    1a9c:	03010413          	addi	s0,sp,48
    1aa0:	fca42e23          	sw	a0,-36(s0)
    1aa4:	fe042623          	sw	zero,-20(s0)
    1aa8:	fe042423          	sw	zero,-24(s0)
    1aac:	fdc42783          	lw	a5,-36(s0)
    1ab0:	fef42223          	sw	a5,-28(s0)
    1ab4:	fe442783          	lw	a5,-28(s0)
    1ab8:	4077d793          	srai	a5,a5,0x7
    1abc:	0017f793          	andi	a5,a5,1
    1ac0:	fef42423          	sw	a5,-24(s0)
    1ac4:	fec42783          	lw	a5,-20(s0)
    1ac8:	fe442703          	lw	a4,-28(s0)
    1acc:	00f717b3          	sll	a5,a4,a5
    1ad0:	fef42223          	sw	a5,-28(s0)
    1ad4:	fe842783          	lw	a5,-24(s0)
    1ad8:	00179693          	slli	a3,a5,0x1
    1adc:	000067b7          	lui	a5,0x6
    1ae0:	38c7a783          	lw	a5,908(a5) # 638c <SDCARD>
    1ae4:	fec42703          	lw	a4,-20(s0)
    1ae8:	00e6e733          	or	a4,a3,a4
    1aec:	00e7a023          	sw	a4,0(a5)
    1af0:	00100713          	li	a4,1
    1af4:	fec42783          	lw	a5,-20(s0)
    1af8:	40f707b3          	sub	a5,a4,a5
    1afc:	fef42623          	sw	a5,-20(s0)
    1b00:	fe442783          	lw	a5,-28(s0)
    1b04:	4077d793          	srai	a5,a5,0x7
    1b08:	0017f793          	andi	a5,a5,1
    1b0c:	fef42423          	sw	a5,-24(s0)
    1b10:	fec42783          	lw	a5,-20(s0)
    1b14:	fe442703          	lw	a4,-28(s0)
    1b18:	00f717b3          	sll	a5,a4,a5
    1b1c:	fef42223          	sw	a5,-28(s0)
    1b20:	fe842783          	lw	a5,-24(s0)
    1b24:	00179693          	slli	a3,a5,0x1
    1b28:	000067b7          	lui	a5,0x6
    1b2c:	38c7a783          	lw	a5,908(a5) # 638c <SDCARD>
    1b30:	fec42703          	lw	a4,-20(s0)
    1b34:	00e6e733          	or	a4,a3,a4
    1b38:	00e7a023          	sw	a4,0(a5)
    1b3c:	00100713          	li	a4,1
    1b40:	fec42783          	lw	a5,-20(s0)
    1b44:	40f707b3          	sub	a5,a4,a5
    1b48:	fef42623          	sw	a5,-20(s0)
    1b4c:	fe442783          	lw	a5,-28(s0)
    1b50:	4077d793          	srai	a5,a5,0x7
    1b54:	0017f793          	andi	a5,a5,1
    1b58:	fef42423          	sw	a5,-24(s0)
    1b5c:	fec42783          	lw	a5,-20(s0)
    1b60:	fe442703          	lw	a4,-28(s0)
    1b64:	00f717b3          	sll	a5,a4,a5
    1b68:	fef42223          	sw	a5,-28(s0)
    1b6c:	fe842783          	lw	a5,-24(s0)
    1b70:	00179693          	slli	a3,a5,0x1
    1b74:	000067b7          	lui	a5,0x6
    1b78:	38c7a783          	lw	a5,908(a5) # 638c <SDCARD>
    1b7c:	fec42703          	lw	a4,-20(s0)
    1b80:	00e6e733          	or	a4,a3,a4
    1b84:	00e7a023          	sw	a4,0(a5)
    1b88:	00100713          	li	a4,1
    1b8c:	fec42783          	lw	a5,-20(s0)
    1b90:	40f707b3          	sub	a5,a4,a5
    1b94:	fef42623          	sw	a5,-20(s0)
    1b98:	fe442783          	lw	a5,-28(s0)
    1b9c:	4077d793          	srai	a5,a5,0x7
    1ba0:	0017f793          	andi	a5,a5,1
    1ba4:	fef42423          	sw	a5,-24(s0)
    1ba8:	fec42783          	lw	a5,-20(s0)
    1bac:	fe442703          	lw	a4,-28(s0)
    1bb0:	00f717b3          	sll	a5,a4,a5
    1bb4:	fef42223          	sw	a5,-28(s0)
    1bb8:	fe842783          	lw	a5,-24(s0)
    1bbc:	00179693          	slli	a3,a5,0x1
    1bc0:	000067b7          	lui	a5,0x6
    1bc4:	38c7a783          	lw	a5,908(a5) # 638c <SDCARD>
    1bc8:	fec42703          	lw	a4,-20(s0)
    1bcc:	00e6e733          	or	a4,a3,a4
    1bd0:	00e7a023          	sw	a4,0(a5)
    1bd4:	00100713          	li	a4,1
    1bd8:	fec42783          	lw	a5,-20(s0)
    1bdc:	40f707b3          	sub	a5,a4,a5
    1be0:	fef42623          	sw	a5,-20(s0)
    1be4:	fe442783          	lw	a5,-28(s0)
    1be8:	4077d793          	srai	a5,a5,0x7
    1bec:	0017f793          	andi	a5,a5,1
    1bf0:	fef42423          	sw	a5,-24(s0)
    1bf4:	fec42783          	lw	a5,-20(s0)
    1bf8:	fe442703          	lw	a4,-28(s0)
    1bfc:	00f717b3          	sll	a5,a4,a5
    1c00:	fef42223          	sw	a5,-28(s0)
    1c04:	fe842783          	lw	a5,-24(s0)
    1c08:	00179693          	slli	a3,a5,0x1
    1c0c:	000067b7          	lui	a5,0x6
    1c10:	38c7a783          	lw	a5,908(a5) # 638c <SDCARD>
    1c14:	fec42703          	lw	a4,-20(s0)
    1c18:	00e6e733          	or	a4,a3,a4
    1c1c:	00e7a023          	sw	a4,0(a5)
    1c20:	00100713          	li	a4,1
    1c24:	fec42783          	lw	a5,-20(s0)
    1c28:	40f707b3          	sub	a5,a4,a5
    1c2c:	fef42623          	sw	a5,-20(s0)
    1c30:	fe442783          	lw	a5,-28(s0)
    1c34:	4077d793          	srai	a5,a5,0x7
    1c38:	0017f793          	andi	a5,a5,1
    1c3c:	fef42423          	sw	a5,-24(s0)
    1c40:	fec42783          	lw	a5,-20(s0)
    1c44:	fe442703          	lw	a4,-28(s0)
    1c48:	00f717b3          	sll	a5,a4,a5
    1c4c:	fef42223          	sw	a5,-28(s0)
    1c50:	fe842783          	lw	a5,-24(s0)
    1c54:	00179693          	slli	a3,a5,0x1
    1c58:	000067b7          	lui	a5,0x6
    1c5c:	38c7a783          	lw	a5,908(a5) # 638c <SDCARD>
    1c60:	fec42703          	lw	a4,-20(s0)
    1c64:	00e6e733          	or	a4,a3,a4
    1c68:	00e7a023          	sw	a4,0(a5)
    1c6c:	00100713          	li	a4,1
    1c70:	fec42783          	lw	a5,-20(s0)
    1c74:	40f707b3          	sub	a5,a4,a5
    1c78:	fef42623          	sw	a5,-20(s0)
    1c7c:	fe442783          	lw	a5,-28(s0)
    1c80:	4077d793          	srai	a5,a5,0x7
    1c84:	0017f793          	andi	a5,a5,1
    1c88:	fef42423          	sw	a5,-24(s0)
    1c8c:	fec42783          	lw	a5,-20(s0)
    1c90:	fe442703          	lw	a4,-28(s0)
    1c94:	00f717b3          	sll	a5,a4,a5
    1c98:	fef42223          	sw	a5,-28(s0)
    1c9c:	fe842783          	lw	a5,-24(s0)
    1ca0:	00179693          	slli	a3,a5,0x1
    1ca4:	000067b7          	lui	a5,0x6
    1ca8:	38c7a783          	lw	a5,908(a5) # 638c <SDCARD>
    1cac:	fec42703          	lw	a4,-20(s0)
    1cb0:	00e6e733          	or	a4,a3,a4
    1cb4:	00e7a023          	sw	a4,0(a5)
    1cb8:	00100713          	li	a4,1
    1cbc:	fec42783          	lw	a5,-20(s0)
    1cc0:	40f707b3          	sub	a5,a4,a5
    1cc4:	fef42623          	sw	a5,-20(s0)
    1cc8:	fe442783          	lw	a5,-28(s0)
    1ccc:	4077d793          	srai	a5,a5,0x7
    1cd0:	0017f793          	andi	a5,a5,1
    1cd4:	fef42423          	sw	a5,-24(s0)
    1cd8:	fec42783          	lw	a5,-20(s0)
    1cdc:	fe442703          	lw	a4,-28(s0)
    1ce0:	00f717b3          	sll	a5,a4,a5
    1ce4:	fef42223          	sw	a5,-28(s0)
    1ce8:	fe842783          	lw	a5,-24(s0)
    1cec:	00179693          	slli	a3,a5,0x1
    1cf0:	000067b7          	lui	a5,0x6
    1cf4:	38c7a783          	lw	a5,908(a5) # 638c <SDCARD>
    1cf8:	fec42703          	lw	a4,-20(s0)
    1cfc:	00e6e733          	or	a4,a3,a4
    1d00:	00e7a023          	sw	a4,0(a5)
    1d04:	00100713          	li	a4,1
    1d08:	fec42783          	lw	a5,-20(s0)
    1d0c:	40f707b3          	sub	a5,a4,a5
    1d10:	fef42623          	sw	a5,-20(s0)
    1d14:	fe442783          	lw	a5,-28(s0)
    1d18:	4077d793          	srai	a5,a5,0x7
    1d1c:	0017f793          	andi	a5,a5,1
    1d20:	fef42423          	sw	a5,-24(s0)
    1d24:	fec42783          	lw	a5,-20(s0)
    1d28:	fe442703          	lw	a4,-28(s0)
    1d2c:	00f717b3          	sll	a5,a4,a5
    1d30:	fef42223          	sw	a5,-28(s0)
    1d34:	fe842783          	lw	a5,-24(s0)
    1d38:	00179693          	slli	a3,a5,0x1
    1d3c:	000067b7          	lui	a5,0x6
    1d40:	38c7a783          	lw	a5,908(a5) # 638c <SDCARD>
    1d44:	fec42703          	lw	a4,-20(s0)
    1d48:	00e6e733          	or	a4,a3,a4
    1d4c:	00e7a023          	sw	a4,0(a5)
    1d50:	00100713          	li	a4,1
    1d54:	fec42783          	lw	a5,-20(s0)
    1d58:	40f707b3          	sub	a5,a4,a5
    1d5c:	fef42623          	sw	a5,-20(s0)
    1d60:	fe442783          	lw	a5,-28(s0)
    1d64:	4077d793          	srai	a5,a5,0x7
    1d68:	0017f793          	andi	a5,a5,1
    1d6c:	fef42423          	sw	a5,-24(s0)
    1d70:	fec42783          	lw	a5,-20(s0)
    1d74:	fe442703          	lw	a4,-28(s0)
    1d78:	00f717b3          	sll	a5,a4,a5
    1d7c:	fef42223          	sw	a5,-28(s0)
    1d80:	fe842783          	lw	a5,-24(s0)
    1d84:	00179693          	slli	a3,a5,0x1
    1d88:	000067b7          	lui	a5,0x6
    1d8c:	38c7a783          	lw	a5,908(a5) # 638c <SDCARD>
    1d90:	fec42703          	lw	a4,-20(s0)
    1d94:	00e6e733          	or	a4,a3,a4
    1d98:	00e7a023          	sw	a4,0(a5)
    1d9c:	00100713          	li	a4,1
    1da0:	fec42783          	lw	a5,-20(s0)
    1da4:	40f707b3          	sub	a5,a4,a5
    1da8:	fef42623          	sw	a5,-20(s0)
    1dac:	fe442783          	lw	a5,-28(s0)
    1db0:	4077d793          	srai	a5,a5,0x7
    1db4:	0017f793          	andi	a5,a5,1
    1db8:	fef42423          	sw	a5,-24(s0)
    1dbc:	fec42783          	lw	a5,-20(s0)
    1dc0:	fe442703          	lw	a4,-28(s0)
    1dc4:	00f717b3          	sll	a5,a4,a5
    1dc8:	fef42223          	sw	a5,-28(s0)
    1dcc:	fe842783          	lw	a5,-24(s0)
    1dd0:	00179693          	slli	a3,a5,0x1
    1dd4:	000067b7          	lui	a5,0x6
    1dd8:	38c7a783          	lw	a5,908(a5) # 638c <SDCARD>
    1ddc:	fec42703          	lw	a4,-20(s0)
    1de0:	00e6e733          	or	a4,a3,a4
    1de4:	00e7a023          	sw	a4,0(a5)
    1de8:	00100713          	li	a4,1
    1dec:	fec42783          	lw	a5,-20(s0)
    1df0:	40f707b3          	sub	a5,a4,a5
    1df4:	fef42623          	sw	a5,-20(s0)
    1df8:	fe442783          	lw	a5,-28(s0)
    1dfc:	4077d793          	srai	a5,a5,0x7
    1e00:	0017f793          	andi	a5,a5,1
    1e04:	fef42423          	sw	a5,-24(s0)
    1e08:	fec42783          	lw	a5,-20(s0)
    1e0c:	fe442703          	lw	a4,-28(s0)
    1e10:	00f717b3          	sll	a5,a4,a5
    1e14:	fef42223          	sw	a5,-28(s0)
    1e18:	fe842783          	lw	a5,-24(s0)
    1e1c:	00179693          	slli	a3,a5,0x1
    1e20:	000067b7          	lui	a5,0x6
    1e24:	38c7a783          	lw	a5,908(a5) # 638c <SDCARD>
    1e28:	fec42703          	lw	a4,-20(s0)
    1e2c:	00e6e733          	or	a4,a3,a4
    1e30:	00e7a023          	sw	a4,0(a5)
    1e34:	00100713          	li	a4,1
    1e38:	fec42783          	lw	a5,-20(s0)
    1e3c:	40f707b3          	sub	a5,a4,a5
    1e40:	fef42623          	sw	a5,-20(s0)
    1e44:	fe442783          	lw	a5,-28(s0)
    1e48:	4077d793          	srai	a5,a5,0x7
    1e4c:	0017f793          	andi	a5,a5,1
    1e50:	fef42423          	sw	a5,-24(s0)
    1e54:	fec42783          	lw	a5,-20(s0)
    1e58:	fe442703          	lw	a4,-28(s0)
    1e5c:	00f717b3          	sll	a5,a4,a5
    1e60:	fef42223          	sw	a5,-28(s0)
    1e64:	fe842783          	lw	a5,-24(s0)
    1e68:	00179693          	slli	a3,a5,0x1
    1e6c:	000067b7          	lui	a5,0x6
    1e70:	38c7a783          	lw	a5,908(a5) # 638c <SDCARD>
    1e74:	fec42703          	lw	a4,-20(s0)
    1e78:	00e6e733          	or	a4,a3,a4
    1e7c:	00e7a023          	sw	a4,0(a5)
    1e80:	00100713          	li	a4,1
    1e84:	fec42783          	lw	a5,-20(s0)
    1e88:	40f707b3          	sub	a5,a4,a5
    1e8c:	fef42623          	sw	a5,-20(s0)
    1e90:	fe442783          	lw	a5,-28(s0)
    1e94:	4077d793          	srai	a5,a5,0x7
    1e98:	0017f793          	andi	a5,a5,1
    1e9c:	fef42423          	sw	a5,-24(s0)
    1ea0:	fec42783          	lw	a5,-20(s0)
    1ea4:	fe442703          	lw	a4,-28(s0)
    1ea8:	00f717b3          	sll	a5,a4,a5
    1eac:	fef42223          	sw	a5,-28(s0)
    1eb0:	fe842783          	lw	a5,-24(s0)
    1eb4:	00179693          	slli	a3,a5,0x1
    1eb8:	000067b7          	lui	a5,0x6
    1ebc:	38c7a783          	lw	a5,908(a5) # 638c <SDCARD>
    1ec0:	fec42703          	lw	a4,-20(s0)
    1ec4:	00e6e733          	or	a4,a3,a4
    1ec8:	00e7a023          	sw	a4,0(a5)
    1ecc:	00100713          	li	a4,1
    1ed0:	fec42783          	lw	a5,-20(s0)
    1ed4:	40f707b3          	sub	a5,a4,a5
    1ed8:	fef42623          	sw	a5,-20(s0)
    1edc:	fe442783          	lw	a5,-28(s0)
    1ee0:	4077d793          	srai	a5,a5,0x7
    1ee4:	0017f793          	andi	a5,a5,1
    1ee8:	fef42423          	sw	a5,-24(s0)
    1eec:	fec42783          	lw	a5,-20(s0)
    1ef0:	fe442703          	lw	a4,-28(s0)
    1ef4:	00f717b3          	sll	a5,a4,a5
    1ef8:	fef42223          	sw	a5,-28(s0)
    1efc:	fe842783          	lw	a5,-24(s0)
    1f00:	00179693          	slli	a3,a5,0x1
    1f04:	000067b7          	lui	a5,0x6
    1f08:	38c7a783          	lw	a5,908(a5) # 638c <SDCARD>
    1f0c:	fec42703          	lw	a4,-20(s0)
    1f10:	00e6e733          	or	a4,a3,a4
    1f14:	00e7a023          	sw	a4,0(a5)
    1f18:	00100713          	li	a4,1
    1f1c:	fec42783          	lw	a5,-20(s0)
    1f20:	40f707b3          	sub	a5,a4,a5
    1f24:	fef42623          	sw	a5,-20(s0)
    1f28:	fe442783          	lw	a5,-28(s0)
    1f2c:	4077d793          	srai	a5,a5,0x7
    1f30:	0017f793          	andi	a5,a5,1
    1f34:	fef42423          	sw	a5,-24(s0)
    1f38:	fec42783          	lw	a5,-20(s0)
    1f3c:	fe442703          	lw	a4,-28(s0)
    1f40:	00f717b3          	sll	a5,a4,a5
    1f44:	fef42223          	sw	a5,-28(s0)
    1f48:	fe842783          	lw	a5,-24(s0)
    1f4c:	00179693          	slli	a3,a5,0x1
    1f50:	000067b7          	lui	a5,0x6
    1f54:	38c7a783          	lw	a5,908(a5) # 638c <SDCARD>
    1f58:	fec42703          	lw	a4,-20(s0)
    1f5c:	00e6e733          	or	a4,a3,a4
    1f60:	00e7a023          	sw	a4,0(a5)
    1f64:	00100713          	li	a4,1
    1f68:	fec42783          	lw	a5,-20(s0)
    1f6c:	40f707b3          	sub	a5,a4,a5
    1f70:	fef42623          	sw	a5,-20(s0)
    1f74:	000067b7          	lui	a5,0x6
    1f78:	38c7a783          	lw	a5,908(a5) # 638c <SDCARD>
    1f7c:	00200713          	li	a4,2
    1f80:	00e7a023          	sw	a4,0(a5)
    1f84:	000077b7          	lui	a5,0x7
    1f88:	bdc7a783          	lw	a5,-1060(a5) # 6bdc <sdcard_while_loading_callback>
    1f8c:	000780e7          	jalr	a5
    1f90:	00000013          	nop
    1f94:	02c12083          	lw	ra,44(sp)
    1f98:	02812403          	lw	s0,40(sp)
    1f9c:	03010113          	addi	sp,sp,48
    1fa0:	00008067          	ret

00001fa4 <sdcard_read>:
    1fa4:	fc010113          	addi	sp,sp,-64
    1fa8:	02112e23          	sw	ra,60(sp)
    1fac:	02812c23          	sw	s0,56(sp)
    1fb0:	04010413          	addi	s0,sp,64
    1fb4:	00050793          	mv	a5,a0
    1fb8:	00058713          	mv	a4,a1
    1fbc:	fcf407a3          	sb	a5,-49(s0)
    1fc0:	00070793          	mv	a5,a4
    1fc4:	fcf40723          	sb	a5,-50(s0)
    1fc8:	fce44783          	lbu	a5,-50(s0)
    1fcc:	fef42223          	sw	a5,-28(s0)
    1fd0:	fcf44783          	lbu	a5,-49(s0)
    1fd4:	fef42023          	sw	a5,-32(s0)
    1fd8:	fe042623          	sw	zero,-20(s0)
    1fdc:	0ff00793          	li	a5,255
    1fe0:	fef42423          	sw	a5,-24(s0)
    1fe4:	0600006f          	j	2044 <sdcard_read+0xa0>
    1fe8:	000067b7          	lui	a5,0x6
    1fec:	38c7a783          	lw	a5,908(a5) # 638c <SDCARD>
    1ff0:	00300713          	li	a4,3
    1ff4:	00e7a023          	sw	a4,0(a5)
    1ff8:	fec42783          	lw	a5,-20(s0)
    1ffc:	00178793          	addi	a5,a5,1
    2000:	fef42623          	sw	a5,-20(s0)
    2004:	000067b7          	lui	a5,0x6
    2008:	38c7a783          	lw	a5,908(a5) # 638c <SDCARD>
    200c:	00200713          	li	a4,2
    2010:	00e7a023          	sw	a4,0(a5)
    2014:	000067b7          	lui	a5,0x6
    2018:	38c7a783          	lw	a5,908(a5) # 638c <SDCARD>
    201c:	0007a783          	lw	a5,0(a5)
    2020:	fcf42e23          	sw	a5,-36(s0)
    2024:	fe842783          	lw	a5,-24(s0)
    2028:	00179793          	slli	a5,a5,0x1
    202c:	fdc42703          	lw	a4,-36(s0)
    2030:	00f767b3          	or	a5,a4,a5
    2034:	fef42423          	sw	a5,-24(s0)
    2038:	000077b7          	lui	a5,0x7
    203c:	bdc7a783          	lw	a5,-1060(a5) # 6bdc <sdcard_while_loading_callback>
    2040:	000780e7          	jalr	a5
    2044:	fe442783          	lw	a5,-28(s0)
    2048:	00078e63          	beqz	a5,2064 <sdcard_read+0xc0>
    204c:	fe042783          	lw	a5,-32(s0)
    2050:	fff78793          	addi	a5,a5,-1
    2054:	fe842703          	lw	a4,-24(s0)
    2058:	40f757b3          	sra	a5,a4,a5
    205c:	0017f793          	andi	a5,a5,1
    2060:	f80794e3          	bnez	a5,1fe8 <sdcard_read+0x44>
    2064:	fe442783          	lw	a5,-28(s0)
    2068:	00079863          	bnez	a5,2078 <sdcard_read+0xd4>
    206c:	fec42703          	lw	a4,-20(s0)
    2070:	fe042783          	lw	a5,-32(s0)
    2074:	f6f74ae3          	blt	a4,a5,1fe8 <sdcard_read+0x44>
    2078:	fe842783          	lw	a5,-24(s0)
    207c:	0ff7f793          	zext.b	a5,a5
    2080:	00078513          	mv	a0,a5
    2084:	03c12083          	lw	ra,60(sp)
    2088:	03812403          	lw	s0,56(sp)
    208c:	04010113          	addi	sp,sp,64
    2090:	00008067          	ret

00002094 <sdcard_get>:
    2094:	fd010113          	addi	sp,sp,-48
    2098:	02112623          	sw	ra,44(sp)
    209c:	02812423          	sw	s0,40(sp)
    20a0:	03010413          	addi	s0,sp,48
    20a4:	00050793          	mv	a5,a0
    20a8:	00058713          	mv	a4,a1
    20ac:	fcf40fa3          	sb	a5,-33(s0)
    20b0:	00070793          	mv	a5,a4
    20b4:	fcf40f23          	sb	a5,-34(s0)
    20b8:	00000097          	auipc	ra,0x0
    20bc:	4e4080e7          	jalr	1252(ra) # 259c <sdcard_select>
    20c0:	fde44703          	lbu	a4,-34(s0)
    20c4:	fdf44783          	lbu	a5,-33(s0)
    20c8:	00070593          	mv	a1,a4
    20cc:	00078513          	mv	a0,a5
    20d0:	00000097          	auipc	ra,0x0
    20d4:	ed4080e7          	jalr	-300(ra) # 1fa4 <sdcard_read>
    20d8:	00050793          	mv	a5,a0
    20dc:	fef407a3          	sb	a5,-17(s0)
    20e0:	00100793          	li	a5,1
    20e4:	fef42423          	sw	a5,-24(s0)
    20e8:	0280006f          	j	2110 <sdcard_get+0x7c>
    20ec:	00000593          	li	a1,0
    20f0:	00800513          	li	a0,8
    20f4:	00000097          	auipc	ra,0x0
    20f8:	eb0080e7          	jalr	-336(ra) # 1fa4 <sdcard_read>
    20fc:	00050793          	mv	a5,a0
    2100:	fef407a3          	sb	a5,-17(s0)
    2104:	fe842783          	lw	a5,-24(s0)
    2108:	00178793          	addi	a5,a5,1
    210c:	fef42423          	sw	a5,-24(s0)
    2110:	fdf44783          	lbu	a5,-33(s0)
    2114:	0037d793          	srli	a5,a5,0x3
    2118:	0ff7f793          	zext.b	a5,a5
    211c:	00078713          	mv	a4,a5
    2120:	fe842783          	lw	a5,-24(s0)
    2124:	fce7c4e3          	blt	a5,a4,20ec <sdcard_get+0x58>
    2128:	00000097          	auipc	ra,0x0
    212c:	488080e7          	jalr	1160(ra) # 25b0 <sdcard_unselect>
    2130:	fef44783          	lbu	a5,-17(s0)
    2134:	00078513          	mv	a0,a5
    2138:	02c12083          	lw	ra,44(sp)
    213c:	02812403          	lw	s0,40(sp)
    2140:	03010113          	addi	sp,sp,48
    2144:	00008067          	ret

00002148 <sdcard_cmd>:
    2148:	fd010113          	addi	sp,sp,-48
    214c:	02112623          	sw	ra,44(sp)
    2150:	02812423          	sw	s0,40(sp)
    2154:	03010413          	addi	s0,sp,48
    2158:	fca42e23          	sw	a0,-36(s0)
    215c:	00000097          	auipc	ra,0x0
    2160:	440080e7          	jalr	1088(ra) # 259c <sdcard_select>
    2164:	fe042623          	sw	zero,-20(s0)
    2168:	02c0006f          	j	2194 <sdcard_cmd+0x4c>
    216c:	fec42783          	lw	a5,-20(s0)
    2170:	fdc42703          	lw	a4,-36(s0)
    2174:	00f707b3          	add	a5,a4,a5
    2178:	0007c783          	lbu	a5,0(a5)
    217c:	00078513          	mv	a0,a5
    2180:	00000097          	auipc	ra,0x0
    2184:	910080e7          	jalr	-1776(ra) # 1a90 <sdcard_send>
    2188:	fec42783          	lw	a5,-20(s0)
    218c:	00178793          	addi	a5,a5,1
    2190:	fef42623          	sw	a5,-20(s0)
    2194:	fec42703          	lw	a4,-20(s0)
    2198:	00500793          	li	a5,5
    219c:	fce7d8e3          	bge	a5,a4,216c <sdcard_cmd+0x24>
    21a0:	00000097          	auipc	ra,0x0
    21a4:	410080e7          	jalr	1040(ra) # 25b0 <sdcard_unselect>
    21a8:	00000013          	nop
    21ac:	02c12083          	lw	ra,44(sp)
    21b0:	02812403          	lw	s0,40(sp)
    21b4:	03010113          	addi	sp,sp,48
    21b8:	00008067          	ret

000021bc <sdcard_start_sector>:
    21bc:	fe010113          	addi	sp,sp,-32
    21c0:	00112e23          	sw	ra,28(sp)
    21c4:	00812c23          	sw	s0,24(sp)
    21c8:	02010413          	addi	s0,sp,32
    21cc:	fea42623          	sw	a0,-20(s0)
    21d0:	00000097          	auipc	ra,0x0
    21d4:	3cc080e7          	jalr	972(ra) # 259c <sdcard_select>
    21d8:	05100793          	li	a5,81
    21dc:	00078513          	mv	a0,a5
    21e0:	00000097          	auipc	ra,0x0
    21e4:	8b0080e7          	jalr	-1872(ra) # 1a90 <sdcard_send>
    21e8:	fec42783          	lw	a5,-20(s0)
    21ec:	0187d793          	srli	a5,a5,0x18
    21f0:	00078513          	mv	a0,a5
    21f4:	00000097          	auipc	ra,0x0
    21f8:	89c080e7          	jalr	-1892(ra) # 1a90 <sdcard_send>
    21fc:	fec42783          	lw	a5,-20(s0)
    2200:	4107d793          	srai	a5,a5,0x10
    2204:	0ff7f793          	zext.b	a5,a5
    2208:	00078513          	mv	a0,a5
    220c:	00000097          	auipc	ra,0x0
    2210:	884080e7          	jalr	-1916(ra) # 1a90 <sdcard_send>
    2214:	fec42783          	lw	a5,-20(s0)
    2218:	4087d793          	srai	a5,a5,0x8
    221c:	0ff7f793          	zext.b	a5,a5
    2220:	00078513          	mv	a0,a5
    2224:	00000097          	auipc	ra,0x0
    2228:	86c080e7          	jalr	-1940(ra) # 1a90 <sdcard_send>
    222c:	fec42783          	lw	a5,-20(s0)
    2230:	0ff7f793          	zext.b	a5,a5
    2234:	00078513          	mv	a0,a5
    2238:	00000097          	auipc	ra,0x0
    223c:	858080e7          	jalr	-1960(ra) # 1a90 <sdcard_send>
    2240:	05500793          	li	a5,85
    2244:	00078513          	mv	a0,a5
    2248:	00000097          	auipc	ra,0x0
    224c:	848080e7          	jalr	-1976(ra) # 1a90 <sdcard_send>
    2250:	00000097          	auipc	ra,0x0
    2254:	360080e7          	jalr	864(ra) # 25b0 <sdcard_unselect>
    2258:	fffff097          	auipc	ra,0xfffff
    225c:	7cc080e7          	jalr	1996(ra) # 1a24 <sdcard_ponder>
    2260:	00100593          	li	a1,1
    2264:	00800513          	li	a0,8
    2268:	00000097          	auipc	ra,0x0
    226c:	e2c080e7          	jalr	-468(ra) # 2094 <sdcard_get>
    2270:	00050793          	mv	a5,a0
    2274:	00078513          	mv	a0,a5
    2278:	01c12083          	lw	ra,28(sp)
    227c:	01812403          	lw	s0,24(sp)
    2280:	02010113          	addi	sp,sp,32
    2284:	00008067          	ret

00002288 <sdcard_read_sector>:
    2288:	fd010113          	addi	sp,sp,-48
    228c:	02112623          	sw	ra,44(sp)
    2290:	02812423          	sw	s0,40(sp)
    2294:	03010413          	addi	s0,sp,48
    2298:	fca42e23          	sw	a0,-36(s0)
    229c:	fcb42c23          	sw	a1,-40(s0)
    22a0:	fdc42503          	lw	a0,-36(s0)
    22a4:	00000097          	auipc	ra,0x0
    22a8:	f18080e7          	jalr	-232(ra) # 21bc <sdcard_start_sector>
    22ac:	00050793          	mv	a5,a0
    22b0:	fef405a3          	sb	a5,-21(s0)
    22b4:	feb44783          	lbu	a5,-21(s0)
    22b8:	00078663          	beqz	a5,22c4 <sdcard_read_sector+0x3c>
    22bc:	fd842783          	lw	a5,-40(s0)
    22c0:	08c0006f          	j	234c <sdcard_read_sector+0xc4>
    22c4:	00100593          	li	a1,1
    22c8:	00100513          	li	a0,1
    22cc:	00000097          	auipc	ra,0x0
    22d0:	dc8080e7          	jalr	-568(ra) # 2094 <sdcard_get>
    22d4:	fe042623          	sw	zero,-20(s0)
    22d8:	03c0006f          	j	2314 <sdcard_read_sector+0x8c>
    22dc:	00000593          	li	a1,0
    22e0:	00800513          	li	a0,8
    22e4:	00000097          	auipc	ra,0x0
    22e8:	db0080e7          	jalr	-592(ra) # 2094 <sdcard_get>
    22ec:	00050793          	mv	a5,a0
    22f0:	fef401a3          	sb	a5,-29(s0)
    22f4:	fd842783          	lw	a5,-40(s0)
    22f8:	00178713          	addi	a4,a5,1
    22fc:	fce42c23          	sw	a4,-40(s0)
    2300:	fe344703          	lbu	a4,-29(s0)
    2304:	00e78023          	sb	a4,0(a5)
    2308:	fec42783          	lw	a5,-20(s0)
    230c:	00178793          	addi	a5,a5,1
    2310:	fef42623          	sw	a5,-20(s0)
    2314:	fec42703          	lw	a4,-20(s0)
    2318:	1ff00793          	li	a5,511
    231c:	fce7d0e3          	bge	a5,a4,22dc <sdcard_read_sector+0x54>
    2320:	00000593          	li	a1,0
    2324:	01000513          	li	a0,16
    2328:	00000097          	auipc	ra,0x0
    232c:	d6c080e7          	jalr	-660(ra) # 2094 <sdcard_get>
    2330:	00050793          	mv	a5,a0
    2334:	fef42223          	sw	a5,-28(s0)
    2338:	00000097          	auipc	ra,0x0
    233c:	278080e7          	jalr	632(ra) # 25b0 <sdcard_unselect>
    2340:	fffff097          	auipc	ra,0xfffff
    2344:	6e4080e7          	jalr	1764(ra) # 1a24 <sdcard_ponder>
    2348:	fd842783          	lw	a5,-40(s0)
    234c:	00078513          	mv	a0,a5
    2350:	02c12083          	lw	ra,44(sp)
    2354:	02812403          	lw	s0,40(sp)
    2358:	03010113          	addi	sp,sp,48
    235c:	00008067          	ret

00002360 <sdcard_preinit>:
    2360:	fe010113          	addi	sp,sp,-32
    2364:	00112e23          	sw	ra,28(sp)
    2368:	00812c23          	sw	s0,24(sp)
    236c:	02010413          	addi	s0,sp,32
    2370:	000067b7          	lui	a5,0x6
    2374:	38c7a783          	lw	a5,908(a5) # 638c <SDCARD>
    2378:	00600713          	li	a4,6
    237c:	00e7a023          	sw	a4,0(a5)
    2380:	013137b7          	lui	a5,0x1313
    2384:	d0078513          	addi	a0,a5,-768 # 1312d00 <__stacktop+0x1302d00>
    2388:	00000097          	auipc	ra,0x0
    238c:	1fc080e7          	jalr	508(ra) # 2584 <pause>
    2390:	fe042623          	sw	zero,-20(s0)
    2394:	fe042423          	sw	zero,-24(s0)
    2398:	0340006f          	j	23cc <sdcard_preinit+0x6c>
    239c:	000067b7          	lui	a5,0x6
    23a0:	38c7a783          	lw	a5,908(a5) # 638c <SDCARD>
    23a4:	fec42703          	lw	a4,-20(s0)
    23a8:	00676713          	ori	a4,a4,6
    23ac:	00e7a023          	sw	a4,0(a5)
    23b0:	00100713          	li	a4,1
    23b4:	fec42783          	lw	a5,-20(s0)
    23b8:	40f707b3          	sub	a5,a4,a5
    23bc:	fef42623          	sw	a5,-20(s0)
    23c0:	fe842783          	lw	a5,-24(s0)
    23c4:	00178793          	addi	a5,a5,1
    23c8:	fef42423          	sw	a5,-24(s0)
    23cc:	fe842703          	lw	a4,-24(s0)
    23d0:	09f00793          	li	a5,159
    23d4:	fce7d4e3          	bge	a5,a4,239c <sdcard_preinit+0x3c>
    23d8:	000067b7          	lui	a5,0x6
    23dc:	38c7a783          	lw	a5,908(a5) # 638c <SDCARD>
    23e0:	00600713          	li	a4,6
    23e4:	00e7a023          	sw	a4,0(a5)
    23e8:	00000013          	nop
    23ec:	01c12083          	lw	ra,28(sp)
    23f0:	01812403          	lw	s0,24(sp)
    23f4:	02010113          	addi	sp,sp,32
    23f8:	00008067          	ret

000023fc <sdcard_init>:
    23fc:	fe010113          	addi	sp,sp,-32
    2400:	00112e23          	sw	ra,28(sp)
    2404:	00812c23          	sw	s0,24(sp)
    2408:	02010413          	addi	s0,sp,32
    240c:	000077b7          	lui	a5,0x7
    2410:	00002737          	lui	a4,0x2
    2414:	59870713          	addi	a4,a4,1432 # 2598 <sdcard_idle>
    2418:	bce7ae23          	sw	a4,-1060(a5) # 6bdc <sdcard_while_loading_callback>
    241c:	00000097          	auipc	ra,0x0
    2420:	f44080e7          	jalr	-188(ra) # 2360 <sdcard_preinit>
    2424:	000067b7          	lui	a5,0x6
    2428:	37078513          	addi	a0,a5,880 # 6370 <cmd0>
    242c:	00000097          	auipc	ra,0x0
    2430:	d1c080e7          	jalr	-740(ra) # 2148 <sdcard_cmd>
    2434:	00100593          	li	a1,1
    2438:	00800513          	li	a0,8
    243c:	00000097          	auipc	ra,0x0
    2440:	c58080e7          	jalr	-936(ra) # 2094 <sdcard_get>
    2444:	00050793          	mv	a5,a0
    2448:	fef407a3          	sb	a5,-17(s0)
    244c:	fffff097          	auipc	ra,0xfffff
    2450:	5d8080e7          	jalr	1496(ra) # 1a24 <sdcard_ponder>
    2454:	fef44703          	lbu	a4,-17(s0)
    2458:	0ff00793          	li	a5,255
    245c:	00f71c63          	bne	a4,a5,2474 <sdcard_init+0x78>
    2460:	013137b7          	lui	a5,0x1313
    2464:	d0078513          	addi	a0,a5,-768 # 1312d00 <__stacktop+0x1302d00>
    2468:	00000097          	auipc	ra,0x0
    246c:	11c080e7          	jalr	284(ra) # 2584 <pause>
    2470:	fadff06f          	j	241c <sdcard_init+0x20>
    2474:	00000013          	nop
    2478:	000067b7          	lui	a5,0x6
    247c:	36878513          	addi	a0,a5,872 # 6368 <cmd8>
    2480:	00000097          	auipc	ra,0x0
    2484:	cc8080e7          	jalr	-824(ra) # 2148 <sdcard_cmd>
    2488:	00100593          	li	a1,1
    248c:	02800513          	li	a0,40
    2490:	00000097          	auipc	ra,0x0
    2494:	c04080e7          	jalr	-1020(ra) # 2094 <sdcard_get>
    2498:	00050793          	mv	a5,a0
    249c:	fef407a3          	sb	a5,-17(s0)
    24a0:	fffff097          	auipc	ra,0xfffff
    24a4:	584080e7          	jalr	1412(ra) # 1a24 <sdcard_ponder>
    24a8:	000067b7          	lui	a5,0x6
    24ac:	36078513          	addi	a0,a5,864 # 6360 <cmd55>
    24b0:	00000097          	auipc	ra,0x0
    24b4:	c98080e7          	jalr	-872(ra) # 2148 <sdcard_cmd>
    24b8:	00100593          	li	a1,1
    24bc:	00800513          	li	a0,8
    24c0:	00000097          	auipc	ra,0x0
    24c4:	bd4080e7          	jalr	-1068(ra) # 2094 <sdcard_get>
    24c8:	00050793          	mv	a5,a0
    24cc:	fef407a3          	sb	a5,-17(s0)
    24d0:	fffff097          	auipc	ra,0xfffff
    24d4:	554080e7          	jalr	1364(ra) # 1a24 <sdcard_ponder>
    24d8:	000067b7          	lui	a5,0x6
    24dc:	35878513          	addi	a0,a5,856 # 6358 <acmd41>
    24e0:	00000097          	auipc	ra,0x0
    24e4:	c68080e7          	jalr	-920(ra) # 2148 <sdcard_cmd>
    24e8:	00100593          	li	a1,1
    24ec:	00800513          	li	a0,8
    24f0:	00000097          	auipc	ra,0x0
    24f4:	ba4080e7          	jalr	-1116(ra) # 2094 <sdcard_get>
    24f8:	00050793          	mv	a5,a0
    24fc:	fef407a3          	sb	a5,-17(s0)
    2500:	fffff097          	auipc	ra,0xfffff
    2504:	524080e7          	jalr	1316(ra) # 1a24 <sdcard_ponder>
    2508:	fef44783          	lbu	a5,-17(s0)
    250c:	02078863          	beqz	a5,253c <sdcard_init+0x140>
    2510:	00000097          	auipc	ra,0x0
    2514:	0a0080e7          	jalr	160(ra) # 25b0 <sdcard_unselect>
    2518:	fffff097          	auipc	ra,0xfffff
    251c:	50c080e7          	jalr	1292(ra) # 1a24 <sdcard_ponder>
    2520:	001e87b7          	lui	a5,0x1e8
    2524:	48078513          	addi	a0,a5,1152 # 1e8480 <__stacktop+0x1d8480>
    2528:	00000097          	auipc	ra,0x0
    252c:	05c080e7          	jalr	92(ra) # 2584 <pause>
    2530:	00000097          	auipc	ra,0x0
    2534:	06c080e7          	jalr	108(ra) # 259c <sdcard_select>
    2538:	f71ff06f          	j	24a8 <sdcard_init+0xac>
    253c:	00000013          	nop
    2540:	000067b7          	lui	a5,0x6
    2544:	35078513          	addi	a0,a5,848 # 6350 <cmd16>
    2548:	00000097          	auipc	ra,0x0
    254c:	c00080e7          	jalr	-1024(ra) # 2148 <sdcard_cmd>
    2550:	00100593          	li	a1,1
    2554:	00800513          	li	a0,8
    2558:	00000097          	auipc	ra,0x0
    255c:	b3c080e7          	jalr	-1220(ra) # 2094 <sdcard_get>
    2560:	00050793          	mv	a5,a0
    2564:	fef407a3          	sb	a5,-17(s0)
    2568:	fffff097          	auipc	ra,0xfffff
    256c:	4bc080e7          	jalr	1212(ra) # 1a24 <sdcard_ponder>
    2570:	00000013          	nop
    2574:	01c12083          	lw	ra,28(sp)
    2578:	01812403          	lw	s0,24(sp)
    257c:	02010113          	addi	sp,sp,32
    2580:	00008067          	ret

00002584 <pause>:
    2584:	c0002773          	rdcycle	a4
    2588:	c00027f3          	rdcycle	a5
    258c:	40e787b3          	sub	a5,a5,a4
    2590:	fea7ece3          	bltu	a5,a0,2588 <pause+0x4>
    2594:	00008067          	ret

00002598 <sdcard_idle>:
    2598:	00008067          	ret

0000259c <sdcard_select>:
    259c:	000067b7          	lui	a5,0x6
    25a0:	38c7a783          	lw	a5,908(a5) # 638c <SDCARD>
    25a4:	00200713          	li	a4,2
    25a8:	00e7a023          	sw	a4,0(a5)
    25ac:	00008067          	ret

000025b0 <sdcard_unselect>:
    25b0:	000067b7          	lui	a5,0x6
    25b4:	38c7a783          	lw	a5,908(a5) # 638c <SDCARD>
    25b8:	00600713          	li	a4,6
    25bc:	00e7a023          	sw	a4,0(a5)
    25c0:	00008067          	ret

000025c4 <sdcard_readsector>:
    25c4:	04060663          	beqz	a2,2610 <sdcard_readsector+0x4c>
    25c8:	ff010113          	addi	sp,sp,-16
    25cc:	00912423          	sw	s1,8(sp)
    25d0:	01212223          	sw	s2,4(sp)
    25d4:	00112623          	sw	ra,12(sp)
    25d8:	00050493          	mv	s1,a0
    25dc:	00a60933          	add	s2,a2,a0
    25e0:	00048513          	mv	a0,s1
    25e4:	00000097          	auipc	ra,0x0
    25e8:	ca4080e7          	jalr	-860(ra) # 2288 <sdcard_read_sector>
    25ec:	00148493          	addi	s1,s1,1
    25f0:	00050593          	mv	a1,a0
    25f4:	fe9916e3          	bne	s2,s1,25e0 <sdcard_readsector+0x1c>
    25f8:	00c12083          	lw	ra,12(sp)
    25fc:	00812483          	lw	s1,8(sp)
    2600:	00412903          	lw	s2,4(sp)
    2604:	00100513          	li	a0,1
    2608:	01010113          	addi	sp,sp,16
    260c:	00008067          	ret
    2610:	00000513          	li	a0,0
    2614:	00008067          	ret

00002618 <sdcard_writesector>:
    2618:	00000513          	li	a0,0
    261c:	00008067          	ret

00002620 <__divsi3>:
    2620:	06054063          	bltz	a0,2680 <__umodsi3+0x10>
    2624:	0605c663          	bltz	a1,2690 <__umodsi3+0x20>

00002628 <__udivsi3>:
    2628:	00058613          	mv	a2,a1
    262c:	00050593          	mv	a1,a0
    2630:	fff00513          	li	a0,-1
    2634:	02060c63          	beqz	a2,266c <__udivsi3+0x44>
    2638:	00100693          	li	a3,1
    263c:	00b67a63          	bgeu	a2,a1,2650 <__udivsi3+0x28>
    2640:	00c05863          	blez	a2,2650 <__udivsi3+0x28>
    2644:	00161613          	slli	a2,a2,0x1
    2648:	00169693          	slli	a3,a3,0x1
    264c:	feb66ae3          	bltu	a2,a1,2640 <__udivsi3+0x18>
    2650:	00000513          	li	a0,0
    2654:	00c5e663          	bltu	a1,a2,2660 <__udivsi3+0x38>
    2658:	40c585b3          	sub	a1,a1,a2
    265c:	00d56533          	or	a0,a0,a3
    2660:	0016d693          	srli	a3,a3,0x1
    2664:	00165613          	srli	a2,a2,0x1
    2668:	fe0696e3          	bnez	a3,2654 <__udivsi3+0x2c>
    266c:	00008067          	ret

00002670 <__umodsi3>:
    2670:	00008293          	mv	t0,ra
    2674:	fb5ff0ef          	jal	2628 <__udivsi3>
    2678:	00058513          	mv	a0,a1
    267c:	00028067          	jr	t0
    2680:	40a00533          	neg	a0,a0
    2684:	0005d863          	bgez	a1,2694 <__umodsi3+0x24>
    2688:	40b005b3          	neg	a1,a1
    268c:	f95ff06f          	j	2620 <__divsi3>
    2690:	40b005b3          	neg	a1,a1
    2694:	00008293          	mv	t0,ra
    2698:	f89ff0ef          	jal	2620 <__divsi3>
    269c:	40a00533          	neg	a0,a0
    26a0:	00028067          	jr	t0

000026a4 <__modsi3>:
    26a4:	00008293          	mv	t0,ra
    26a8:	0005ca63          	bltz	a1,26bc <__modsi3+0x18>
    26ac:	00054c63          	bltz	a0,26c4 <__modsi3+0x20>
    26b0:	f79ff0ef          	jal	2628 <__udivsi3>
    26b4:	00058513          	mv	a0,a1
    26b8:	00028067          	jr	t0
    26bc:	40b005b3          	neg	a1,a1
    26c0:	fe0558e3          	bgez	a0,26b0 <__modsi3+0xc>
    26c4:	40a00533          	neg	a0,a0
    26c8:	f61ff0ef          	jal	2628 <__udivsi3>
    26cc:	40b00533          	neg	a0,a1
    26d0:	00028067          	jr	t0

000026d4 <memset>:
    26d4:	00c50633          	add	a2,a0,a2
    26d8:	00050793          	mv	a5,a0
    26dc:	00c79463          	bne	a5,a2,26e4 <memset+0x10>
    26e0:	00008067          	ret
    26e4:	00178793          	addi	a5,a5,1
    26e8:	feb78fa3          	sb	a1,-1(a5)
    26ec:	ff1ff06f          	j	26dc <memset+0x8>

000026f0 <memcpy>:
    26f0:	00000793          	li	a5,0
    26f4:	00c79463          	bne	a5,a2,26fc <memcpy+0xc>
    26f8:	00008067          	ret
    26fc:	00f58733          	add	a4,a1,a5
    2700:	00074683          	lbu	a3,0(a4)
    2704:	00f50733          	add	a4,a0,a5
    2708:	00178793          	addi	a5,a5,1
    270c:	00d70023          	sb	a3,0(a4)
    2710:	fe5ff06f          	j	26f4 <memcpy+0x4>

00002714 <strlen>:
    2714:	00050793          	mv	a5,a0
    2718:	00000513          	li	a0,0
    271c:	00a78733          	add	a4,a5,a0
    2720:	00074703          	lbu	a4,0(a4)
    2724:	00071463          	bnez	a4,272c <strlen+0x18>
    2728:	00008067          	ret
    272c:	00150513          	addi	a0,a0,1
    2730:	fedff06f          	j	271c <strlen+0x8>

00002734 <strncmp>:
    2734:	00000793          	li	a5,0
    2738:	00c79663          	bne	a5,a2,2744 <strncmp+0x10>
    273c:	00000513          	li	a0,0
    2740:	00008067          	ret
    2744:	00f50733          	add	a4,a0,a5
    2748:	00074683          	lbu	a3,0(a4)
    274c:	00f58733          	add	a4,a1,a5
    2750:	00074703          	lbu	a4,0(a4)
    2754:	00e6e863          	bltu	a3,a4,2764 <strncmp+0x30>
    2758:	00d76a63          	bltu	a4,a3,276c <strncmp+0x38>
    275c:	00178793          	addi	a5,a5,1
    2760:	fd9ff06f          	j	2738 <strncmp+0x4>
    2764:	fff00513          	li	a0,-1
    2768:	00008067          	ret
    276c:	00100513          	li	a0,1
    2770:	00008067          	ret

00002774 <strncpy>:
    2774:	00000793          	li	a5,0
    2778:	00c79463          	bne	a5,a2,2780 <strncpy+0xc>
    277c:	00008067          	ret
    2780:	00f58733          	add	a4,a1,a5
    2784:	00074683          	lbu	a3,0(a4)
    2788:	00f50733          	add	a4,a0,a5
    278c:	00178793          	addi	a5,a5,1
    2790:	00d70023          	sb	a3,0(a4)
    2794:	fe5ff06f          	j	2778 <strncpy+0x4>

00002798 <oled_wait>:
    2798:	00000013          	nop
    279c:	00000013          	nop
    27a0:	00000013          	nop
    27a4:	00000013          	nop
    27a8:	00000013          	nop
    27ac:	00000013          	nop
    27b0:	00000013          	nop
    27b4:	00008067          	ret

000027b8 <oled_init_mode>:
    27b8:	000067b7          	lui	a5,0x6
    27bc:	3907a703          	lw	a4,912(a5) # 6390 <OLED_RST>
    27c0:	ff010113          	addi	sp,sp,-16
    27c4:	00912223          	sw	s1,4(sp)
    27c8:	00112623          	sw	ra,12(sp)
    27cc:	00812423          	sw	s0,8(sp)
    27d0:	00072023          	sw	zero,0(a4)
    27d4:	00050493          	mv	s1,a0
    27d8:	00040737          	lui	a4,0x40
    27dc:	00000013          	nop
    27e0:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    27e4:	fe071ce3          	bnez	a4,27dc <oled_init_mode+0x24>
    27e8:	3907a703          	lw	a4,912(a5)
    27ec:	00100693          	li	a3,1
    27f0:	00d72023          	sw	a3,0(a4)
    27f4:	00040737          	lui	a4,0x40
    27f8:	00000013          	nop
    27fc:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    2800:	fe071ce3          	bnez	a4,27f8 <oled_init_mode+0x40>
    2804:	3907a783          	lw	a5,912(a5)
    2808:	0007a023          	sw	zero,0(a5)
    280c:	000407b7          	lui	a5,0x40
    2810:	00000013          	nop
    2814:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    2818:	fe079ce3          	bnez	a5,2810 <oled_init_mode+0x58>
    281c:	00006737          	lui	a4,0x6
    2820:	39472783          	lw	a5,916(a4) # 6394 <OLED>
    2824:	2af00693          	li	a3,687
    2828:	00d7a023          	sw	a3,0(a5)
    282c:	000407b7          	lui	a5,0x40
    2830:	00000013          	nop
    2834:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    2838:	fe079ce3          	bnez	a5,2830 <oled_init_mode+0x78>
    283c:	39472403          	lw	s0,916(a4)
    2840:	2a000793          	li	a5,672
    2844:	00f42023          	sw	a5,0(s0)
    2848:	00000097          	auipc	ra,0x0
    284c:	f50080e7          	jalr	-176(ra) # 2798 <oled_wait>
    2850:	4a000793          	li	a5,1184
    2854:	00048463          	beqz	s1,285c <oled_init_mode+0xa4>
    2858:	42000793          	li	a5,1056
    285c:	00f42023          	sw	a5,0(s0)
    2860:	00000097          	auipc	ra,0x0
    2864:	f38080e7          	jalr	-200(ra) # 2798 <oled_wait>
    2868:	2fd00793          	li	a5,765
    286c:	00f42023          	sw	a5,0(s0)
    2870:	00000097          	auipc	ra,0x0
    2874:	f28080e7          	jalr	-216(ra) # 2798 <oled_wait>
    2878:	4b100793          	li	a5,1201
    287c:	00f42023          	sw	a5,0(s0)
    2880:	00000097          	auipc	ra,0x0
    2884:	f18080e7          	jalr	-232(ra) # 2798 <oled_wait>
    2888:	2a200793          	li	a5,674
    288c:	00f42023          	sw	a5,0(s0)
    2890:	00000097          	auipc	ra,0x0
    2894:	f08080e7          	jalr	-248(ra) # 2798 <oled_wait>
    2898:	40000793          	li	a5,1024
    289c:	00f42023          	sw	a5,0(s0)
    28a0:	00812403          	lw	s0,8(sp)
    28a4:	00c12083          	lw	ra,12(sp)
    28a8:	00412483          	lw	s1,4(sp)
    28ac:	01010113          	addi	sp,sp,16
    28b0:	00000317          	auipc	t1,0x0
    28b4:	ee830067          	jr	-280(t1) # 2798 <oled_wait>

000028b8 <oled_init>:
    28b8:	00000513          	li	a0,0
    28bc:	00000317          	auipc	t1,0x0
    28c0:	efc30067          	jr	-260(t1) # 27b8 <oled_init_mode>

000028c4 <oled_fullscreen>:
    28c4:	ff010113          	addi	sp,sp,-16
    28c8:	000067b7          	lui	a5,0x6
    28cc:	00812423          	sw	s0,8(sp)
    28d0:	3947a403          	lw	s0,916(a5) # 6394 <OLED>
    28d4:	00112623          	sw	ra,12(sp)
    28d8:	00912223          	sw	s1,4(sp)
    28dc:	01212023          	sw	s2,0(sp)
    28e0:	21500793          	li	a5,533
    28e4:	00f42023          	sw	a5,0(s0)
    28e8:	40000913          	li	s2,1024
    28ec:	00000097          	auipc	ra,0x0
    28f0:	eac080e7          	jalr	-340(ra) # 2798 <oled_wait>
    28f4:	47f00493          	li	s1,1151
    28f8:	01242023          	sw	s2,0(s0)
    28fc:	00000097          	auipc	ra,0x0
    2900:	e9c080e7          	jalr	-356(ra) # 2798 <oled_wait>
    2904:	00942023          	sw	s1,0(s0)
    2908:	00000097          	auipc	ra,0x0
    290c:	e90080e7          	jalr	-368(ra) # 2798 <oled_wait>
    2910:	27500793          	li	a5,629
    2914:	00f42023          	sw	a5,0(s0)
    2918:	00000097          	auipc	ra,0x0
    291c:	e80080e7          	jalr	-384(ra) # 2798 <oled_wait>
    2920:	01242023          	sw	s2,0(s0)
    2924:	00000097          	auipc	ra,0x0
    2928:	e74080e7          	jalr	-396(ra) # 2798 <oled_wait>
    292c:	00942023          	sw	s1,0(s0)
    2930:	00000097          	auipc	ra,0x0
    2934:	e68080e7          	jalr	-408(ra) # 2798 <oled_wait>
    2938:	25c00793          	li	a5,604
    293c:	00f42023          	sw	a5,0(s0)
    2940:	00812403          	lw	s0,8(sp)
    2944:	00c12083          	lw	ra,12(sp)
    2948:	00412483          	lw	s1,4(sp)
    294c:	00012903          	lw	s2,0(sp)
    2950:	01010113          	addi	sp,sp,16
    2954:	00000317          	auipc	t1,0x0
    2958:	e4430067          	jr	-444(t1) # 2798 <oled_wait>

0000295c <oled_clear>:
    295c:	fe010113          	addi	sp,sp,-32
    2960:	000067b7          	lui	a5,0x6
    2964:	01312623          	sw	s3,12(sp)
    2968:	3947a983          	lw	s3,916(a5) # 6394 <OLED>
    296c:	00812c23          	sw	s0,24(sp)
    2970:	01212823          	sw	s2,16(sp)
    2974:	00112e23          	sw	ra,28(sp)
    2978:	00912a23          	sw	s1,20(sp)
    297c:	08000913          	li	s2,128
    2980:	40056413          	ori	s0,a0,1024
    2984:	08000493          	li	s1,128
    2988:	0089a023          	sw	s0,0(s3)
    298c:	00000097          	auipc	ra,0x0
    2990:	e0c080e7          	jalr	-500(ra) # 2798 <oled_wait>
    2994:	0089a023          	sw	s0,0(s3)
    2998:	00000097          	auipc	ra,0x0
    299c:	e00080e7          	jalr	-512(ra) # 2798 <oled_wait>
    29a0:	fff48493          	addi	s1,s1,-1
    29a4:	0089a023          	sw	s0,0(s3)
    29a8:	00000097          	auipc	ra,0x0
    29ac:	df0080e7          	jalr	-528(ra) # 2798 <oled_wait>
    29b0:	fc049ce3          	bnez	s1,2988 <oled_clear+0x2c>
    29b4:	fff90913          	addi	s2,s2,-1
    29b8:	fc0916e3          	bnez	s2,2984 <oled_clear+0x28>
    29bc:	01c12083          	lw	ra,28(sp)
    29c0:	01812403          	lw	s0,24(sp)
    29c4:	01412483          	lw	s1,20(sp)
    29c8:	01012903          	lw	s2,16(sp)
    29cc:	00c12983          	lw	s3,12(sp)
    29d0:	02010113          	addi	sp,sp,32
    29d4:	00008067          	ret

000029d8 <display_framebuffer>:
    29d8:	000067b7          	lui	a5,0x6
    29dc:	37c7a503          	lw	a0,892(a5) # 637c <DISPLAY>
    29e0:	00008067          	ret

000029e4 <display_set_cursor>:
    29e4:	000077b7          	lui	a5,0x7
    29e8:	bea7a423          	sw	a0,-1048(a5) # 6be8 <cursor_x>
    29ec:	000077b7          	lui	a5,0x7
    29f0:	beb7a223          	sw	a1,-1052(a5) # 6be4 <cursor_y>
    29f4:	00008067          	ret

000029f8 <display_set_front_back_color>:
    29f8:	000077b7          	lui	a5,0x7
    29fc:	bea780a3          	sb	a0,-1055(a5) # 6be1 <front_color>
    2a00:	000077b7          	lui	a5,0x7
    2a04:	beb78023          	sb	a1,-1056(a5) # 6be0 <back_color>
    2a08:	00008067          	ret

00002a0c <display_putchar>:
    2a0c:	00a00793          	li	a5,10
    2a10:	00007737          	lui	a4,0x7
    2a14:	02f51663          	bne	a0,a5,2a40 <display_putchar+0x34>
    2a18:	be072423          	sw	zero,-1048(a4) # 6be8 <cursor_x>
    2a1c:	00007737          	lui	a4,0x7
    2a20:	be472783          	lw	a5,-1052(a4) # 6be4 <cursor_y>
    2a24:	00878793          	addi	a5,a5,8
    2a28:	bef72223          	sw	a5,-1052(a4)
    2a2c:	07f00713          	li	a4,127
    2a30:	00f75663          	bge	a4,a5,2a3c <display_putchar+0x30>
    2a34:	000077b7          	lui	a5,0x7
    2a38:	be07a223          	sw	zero,-1052(a5) # 6be4 <cursor_y>
    2a3c:	00008067          	ret
    2a40:	ff010113          	addi	sp,sp,-16
    2a44:	00812623          	sw	s0,12(sp)
    2a48:	00912423          	sw	s1,8(sp)
    2a4c:	01f00793          	li	a5,31
    2a50:	0ea7d263          	bge	a5,a0,2b34 <display_putchar+0x128>
    2a54:	00007f37          	lui	t5,0x7
    2a58:	be4f2783          	lw	a5,-1052(t5) # 6be4 <cursor_y>
    2a5c:	08000593          	li	a1,128
    2a60:	40f585b3          	sub	a1,a1,a5
    2a64:	00800793          	li	a5,8
    2a68:	00b7d463          	bge	a5,a1,2a70 <display_putchar+0x64>
    2a6c:	00800593          	li	a1,8
    2a70:	be872783          	lw	a5,-1048(a4)
    2a74:	08000813          	li	a6,128
    2a78:	40f80833          	sub	a6,a6,a5
    2a7c:	00500793          	li	a5,5
    2a80:	0107d463          	bge	a5,a6,2a88 <display_putchar+0x7c>
    2a84:	00500813          	li	a6,5
    2a88:	000067b7          	lui	a5,0x6
    2a8c:	3807ae03          	lw	t3,896(a5) # 6380 <RGBSEL>
    2a90:	000067b7          	lui	a5,0x6
    2a94:	37c7a283          	lw	t0,892(a5) # 637c <DISPLAY>
    2a98:	00251693          	slli	a3,a0,0x2
    2a9c:	000077b7          	lui	a5,0x7
    2aa0:	00a686b3          	add	a3,a3,a0
    2aa4:	9b478793          	addi	a5,a5,-1612 # 69b4 <font>
    2aa8:	00f686b3          	add	a3,a3,a5
    2aac:	00000613          	li	a2,0
    2ab0:	00100e93          	li	t4,1
    2ab4:	000073b7          	lui	t2,0x7
    2ab8:	00007437          	lui	s0,0x7
    2abc:	00200493          	li	s1,2
    2ac0:	06b65a63          	bge	a2,a1,2b34 <display_putchar+0x128>
    2ac4:	00ce9fb3          	sll	t6,t4,a2
    2ac8:	00068313          	mv	t1,a3
    2acc:	00000893          	li	a7,0
    2ad0:	04c0006f          	j	2b1c <display_putchar+0x110>
    2ad4:	be4f2783          	lw	a5,-1052(t5)
    2ad8:	00a88533          	add	a0,a7,a0
    2adc:	00751513          	slli	a0,a0,0x7
    2ae0:	00f607b3          	add	a5,a2,a5
    2ae4:	00a787b3          	add	a5,a5,a0
    2ae8:	f6034503          	lbu	a0,-160(t1)
    2aec:	01f57533          	and	a0,a0,t6
    2af0:	02050e63          	beqz	a0,2b2c <display_putchar+0x120>
    2af4:	be144503          	lbu	a0,-1055(s0) # 6be1 <front_color>
    2af8:	000e2023          	sw	zero,0(t3)
    2afc:	00f287b3          	add	a5,t0,a5
    2b00:	00a78023          	sb	a0,0(a5)
    2b04:	01de2023          	sw	t4,0(t3)
    2b08:	00a78023          	sb	a0,0(a5)
    2b0c:	009e2023          	sw	s1,0(t3)
    2b10:	00a78023          	sb	a0,0(a5)
    2b14:	00188893          	addi	a7,a7,1
    2b18:	00130313          	addi	t1,t1,1
    2b1c:	be872503          	lw	a0,-1048(a4)
    2b20:	fb08cae3          	blt	a7,a6,2ad4 <display_putchar+0xc8>
    2b24:	00160613          	addi	a2,a2,1
    2b28:	f99ff06f          	j	2ac0 <display_putchar+0xb4>
    2b2c:	be03c503          	lbu	a0,-1056(t2) # 6be0 <back_color>
    2b30:	fc9ff06f          	j	2af8 <display_putchar+0xec>
    2b34:	be872783          	lw	a5,-1048(a4)
    2b38:	07f00693          	li	a3,127
    2b3c:	00578793          	addi	a5,a5,5
    2b40:	00f6c663          	blt	a3,a5,2b4c <display_putchar+0x140>
    2b44:	bef72423          	sw	a5,-1048(a4)
    2b48:	0240006f          	j	2b6c <display_putchar+0x160>
    2b4c:	be072423          	sw	zero,-1048(a4)
    2b50:	00007737          	lui	a4,0x7
    2b54:	be472783          	lw	a5,-1052(a4) # 6be4 <cursor_y>
    2b58:	00878793          	addi	a5,a5,8
    2b5c:	bef72223          	sw	a5,-1052(a4)
    2b60:	00f6d663          	bge	a3,a5,2b6c <display_putchar+0x160>
    2b64:	000077b7          	lui	a5,0x7
    2b68:	be07a223          	sw	zero,-1052(a5) # 6be4 <cursor_y>
    2b6c:	00c12403          	lw	s0,12(sp)
    2b70:	00812483          	lw	s1,8(sp)
    2b74:	01010113          	addi	sp,sp,16
    2b78:	00008067          	ret

00002b7c <display_refresh>:
    2b7c:	00008067          	ret

00002b80 <print_string>:
    2b80:	ff010113          	addi	sp,sp,-16
    2b84:	00812423          	sw	s0,8(sp)
    2b88:	00912223          	sw	s1,4(sp)
    2b8c:	00112623          	sw	ra,12(sp)
    2b90:	00050413          	mv	s0,a0
    2b94:	000074b7          	lui	s1,0x7
    2b98:	00044503          	lbu	a0,0(s0)
    2b9c:	00051c63          	bnez	a0,2bb4 <print_string+0x34>
    2ba0:	00c12083          	lw	ra,12(sp)
    2ba4:	00812403          	lw	s0,8(sp)
    2ba8:	00412483          	lw	s1,4(sp)
    2bac:	01010113          	addi	sp,sp,16
    2bb0:	00008067          	ret
    2bb4:	bec4a783          	lw	a5,-1044(s1) # 6bec <f_putchar>
    2bb8:	00140413          	addi	s0,s0,1
    2bbc:	000780e7          	jalr	a5
    2bc0:	fd9ff06f          	j	2b98 <print_string+0x18>

00002bc4 <print_dec>:
    2bc4:	ef010113          	addi	sp,sp,-272
    2bc8:	10812423          	sw	s0,264(sp)
    2bcc:	10912223          	sw	s1,260(sp)
    2bd0:	10112623          	sw	ra,268(sp)
    2bd4:	11212023          	sw	s2,256(sp)
    2bd8:	00050413          	mv	s0,a0
    2bdc:	000074b7          	lui	s1,0x7
    2be0:	08045063          	bgez	s0,2c60 <print_dec+0x9c>
    2be4:	bec4a783          	lw	a5,-1044(s1) # 6bec <f_putchar>
    2be8:	02d00513          	li	a0,45
    2bec:	40800433          	neg	s0,s0
    2bf0:	000780e7          	jalr	a5
    2bf4:	fedff06f          	j	2be0 <print_dec+0x1c>
    2bf8:	00040513          	mv	a0,s0
    2bfc:	00a00593          	li	a1,10
    2c00:	00000097          	auipc	ra,0x0
    2c04:	a20080e7          	jalr	-1504(ra) # 2620 <__divsi3>
    2c08:	00251793          	slli	a5,a0,0x2
    2c0c:	00f507b3          	add	a5,a0,a5
    2c10:	00179793          	slli	a5,a5,0x1
    2c14:	40f40433          	sub	s0,s0,a5
    2c18:	00148493          	addi	s1,s1,1
    2c1c:	fe848fa3          	sb	s0,-1(s1)
    2c20:	00050413          	mv	s0,a0
    2c24:	fc041ae3          	bnez	s0,2bf8 <print_dec+0x34>
    2c28:	fd2488e3          	beq	s1,s2,2bf8 <print_dec+0x34>
    2c2c:	00007437          	lui	s0,0x7
    2c30:	fff4c503          	lbu	a0,-1(s1)
    2c34:	bec42783          	lw	a5,-1044(s0) # 6bec <f_putchar>
    2c38:	fff48493          	addi	s1,s1,-1
    2c3c:	03050513          	addi	a0,a0,48
    2c40:	000780e7          	jalr	a5
    2c44:	ff2496e3          	bne	s1,s2,2c30 <print_dec+0x6c>
    2c48:	10c12083          	lw	ra,268(sp)
    2c4c:	10812403          	lw	s0,264(sp)
    2c50:	10412483          	lw	s1,260(sp)
    2c54:	10012903          	lw	s2,256(sp)
    2c58:	11010113          	addi	sp,sp,272
    2c5c:	00008067          	ret
    2c60:	00010493          	mv	s1,sp
    2c64:	00048913          	mv	s2,s1
    2c68:	fbdff06f          	j	2c24 <print_dec+0x60>

00002c6c <print_hex_digits>:
    2c6c:	fe010113          	addi	sp,sp,-32
    2c70:	00812c23          	sw	s0,24(sp)
    2c74:	01212823          	sw	s2,16(sp)
    2c78:	fff58413          	addi	s0,a1,-1
    2c7c:	00006937          	lui	s2,0x6
    2c80:	00912a23          	sw	s1,20(sp)
    2c84:	01312623          	sw	s3,12(sp)
    2c88:	00112e23          	sw	ra,28(sp)
    2c8c:	00050493          	mv	s1,a0
    2c90:	00241413          	slli	s0,s0,0x2
    2c94:	4cc90913          	addi	s2,s2,1228 # 64cc <LEDS+0x134>
    2c98:	000079b7          	lui	s3,0x7
    2c9c:	02045063          	bgez	s0,2cbc <print_hex_digits+0x50>
    2ca0:	01c12083          	lw	ra,28(sp)
    2ca4:	01812403          	lw	s0,24(sp)
    2ca8:	01412483          	lw	s1,20(sp)
    2cac:	01012903          	lw	s2,16(sp)
    2cb0:	00c12983          	lw	s3,12(sp)
    2cb4:	02010113          	addi	sp,sp,32
    2cb8:	00008067          	ret
    2cbc:	0084d7b3          	srl	a5,s1,s0
    2cc0:	00f7f793          	andi	a5,a5,15
    2cc4:	00f907b3          	add	a5,s2,a5
    2cc8:	bec9a703          	lw	a4,-1044(s3) # 6bec <f_putchar>
    2ccc:	0007c503          	lbu	a0,0(a5)
    2cd0:	ffc40413          	addi	s0,s0,-4
    2cd4:	000700e7          	jalr	a4
    2cd8:	fc5ff06f          	j	2c9c <print_hex_digits+0x30>

00002cdc <print_hex>:
    2cdc:	00800593          	li	a1,8
    2ce0:	00000317          	auipc	t1,0x0
    2ce4:	f8c30067          	jr	-116(t1) # 2c6c <print_hex_digits>

00002ce8 <printf>:
    2ce8:	fb010113          	addi	sp,sp,-80
    2cec:	04f12223          	sw	a5,68(sp)
    2cf0:	03410793          	addi	a5,sp,52
    2cf4:	02812423          	sw	s0,40(sp)
    2cf8:	02912223          	sw	s1,36(sp)
    2cfc:	03212023          	sw	s2,32(sp)
    2d00:	01312e23          	sw	s3,28(sp)
    2d04:	01412c23          	sw	s4,24(sp)
    2d08:	01512a23          	sw	s5,20(sp)
    2d0c:	01612823          	sw	s6,16(sp)
    2d10:	02112623          	sw	ra,44(sp)
    2d14:	00050413          	mv	s0,a0
    2d18:	02b12a23          	sw	a1,52(sp)
    2d1c:	02c12c23          	sw	a2,56(sp)
    2d20:	02d12e23          	sw	a3,60(sp)
    2d24:	04e12023          	sw	a4,64(sp)
    2d28:	05012423          	sw	a6,72(sp)
    2d2c:	05112623          	sw	a7,76(sp)
    2d30:	00f12623          	sw	a5,12(sp)
    2d34:	02500913          	li	s2,37
    2d38:	000074b7          	lui	s1,0x7
    2d3c:	07300993          	li	s3,115
    2d40:	07800a13          	li	s4,120
    2d44:	06400a93          	li	s5,100
    2d48:	06300b13          	li	s6,99
    2d4c:	00044503          	lbu	a0,0(s0)
    2d50:	02051663          	bnez	a0,2d7c <printf+0x94>
    2d54:	02c12083          	lw	ra,44(sp)
    2d58:	02812403          	lw	s0,40(sp)
    2d5c:	02412483          	lw	s1,36(sp)
    2d60:	02012903          	lw	s2,32(sp)
    2d64:	01c12983          	lw	s3,28(sp)
    2d68:	01812a03          	lw	s4,24(sp)
    2d6c:	01412a83          	lw	s5,20(sp)
    2d70:	01012b03          	lw	s6,16(sp)
    2d74:	05010113          	addi	sp,sp,80
    2d78:	00008067          	ret
    2d7c:	09251863          	bne	a0,s2,2e0c <printf+0x124>
    2d80:	00144503          	lbu	a0,1(s0)
    2d84:	03351463          	bne	a0,s3,2dac <printf+0xc4>
    2d88:	00c12783          	lw	a5,12(sp)
    2d8c:	0007a503          	lw	a0,0(a5)
    2d90:	00478713          	addi	a4,a5,4
    2d94:	00e12623          	sw	a4,12(sp)
    2d98:	00000097          	auipc	ra,0x0
    2d9c:	de8080e7          	jalr	-536(ra) # 2b80 <print_string>
    2da0:	00140413          	addi	s0,s0,1
    2da4:	00140413          	addi	s0,s0,1
    2da8:	fa5ff06f          	j	2d4c <printf+0x64>
    2dac:	03451063          	bne	a0,s4,2dcc <printf+0xe4>
    2db0:	00c12783          	lw	a5,12(sp)
    2db4:	0007a503          	lw	a0,0(a5)
    2db8:	00478713          	addi	a4,a5,4
    2dbc:	00e12623          	sw	a4,12(sp)
    2dc0:	00000097          	auipc	ra,0x0
    2dc4:	f1c080e7          	jalr	-228(ra) # 2cdc <print_hex>
    2dc8:	fd9ff06f          	j	2da0 <printf+0xb8>
    2dcc:	03551063          	bne	a0,s5,2dec <printf+0x104>
    2dd0:	00c12783          	lw	a5,12(sp)
    2dd4:	0007a503          	lw	a0,0(a5)
    2dd8:	00478713          	addi	a4,a5,4
    2ddc:	00e12623          	sw	a4,12(sp)
    2de0:	00000097          	auipc	ra,0x0
    2de4:	de4080e7          	jalr	-540(ra) # 2bc4 <print_dec>
    2de8:	fb9ff06f          	j	2da0 <printf+0xb8>
    2dec:	bec4a783          	lw	a5,-1044(s1) # 6bec <f_putchar>
    2df0:	01651a63          	bne	a0,s6,2e04 <printf+0x11c>
    2df4:	00c12703          	lw	a4,12(sp)
    2df8:	00072503          	lw	a0,0(a4)
    2dfc:	00470693          	addi	a3,a4,4
    2e00:	00d12623          	sw	a3,12(sp)
    2e04:	000780e7          	jalr	a5
    2e08:	f99ff06f          	j	2da0 <printf+0xb8>
    2e0c:	bec4a783          	lw	a5,-1044(s1)
    2e10:	000780e7          	jalr	a5
    2e14:	f91ff06f          	j	2da4 <printf+0xbc>

00002e18 <__mulsi3>:
    2e18:	00050793          	mv	a5,a0
    2e1c:	00000513          	li	a0,0
    2e20:	00079463          	bnez	a5,2e28 <__mulsi3+0x10>
    2e24:	00008067          	ret
    2e28:	0017f713          	andi	a4,a5,1
    2e2c:	00070463          	beqz	a4,2e34 <__mulsi3+0x1c>
    2e30:	00b50533          	add	a0,a0,a1
    2e34:	0017d793          	srli	a5,a5,0x1
    2e38:	00159593          	slli	a1,a1,0x1
    2e3c:	fe5ff06f          	j	2e20 <__mulsi3+0x8>

00002e40 <fat_list_insert_last>:
    2e40:	00452783          	lw	a5,4(a0)
    2e44:	04079263          	bnez	a5,2e88 <fat_list_insert_last+0x48>
    2e48:	00052783          	lw	a5,0(a0)
    2e4c:	00079c63          	bnez	a5,2e64 <fat_list_insert_last+0x24>
    2e50:	00b52023          	sw	a1,0(a0)
    2e54:	00b52223          	sw	a1,4(a0)
    2e58:	0005a023          	sw	zero,0(a1)
    2e5c:	0005a223          	sw	zero,4(a1)
    2e60:	00008067          	ret
    2e64:	0007a703          	lw	a4,0(a5)
    2e68:	00f5a223          	sw	a5,4(a1)
    2e6c:	00e5a023          	sw	a4,0(a1)
    2e70:	00071863          	bnez	a4,2e80 <fat_list_insert_last+0x40>
    2e74:	00b52023          	sw	a1,0(a0)
    2e78:	00b7a023          	sw	a1,0(a5)
    2e7c:	00008067          	ret
    2e80:	00b72223          	sw	a1,4(a4)
    2e84:	ff5ff06f          	j	2e78 <fat_list_insert_last+0x38>
    2e88:	0047a703          	lw	a4,4(a5)
    2e8c:	00f5a023          	sw	a5,0(a1)
    2e90:	00e5a223          	sw	a4,4(a1)
    2e94:	00071863          	bnez	a4,2ea4 <fat_list_insert_last+0x64>
    2e98:	00b52223          	sw	a1,4(a0)
    2e9c:	00b7a223          	sw	a1,4(a5)
    2ea0:	00008067          	ret
    2ea4:	00b72023          	sw	a1,0(a4)
    2ea8:	ff5ff06f          	j	2e9c <fat_list_insert_last+0x5c>

00002eac <FileString_StrCmpNoCase>:
    2eac:	00050313          	mv	t1,a0
    2eb0:	00000793          	li	a5,0
    2eb4:	01900e13          	li	t3,25
    2eb8:	00c79663          	bne	a5,a2,2ec4 <FileString_StrCmpNoCase+0x18>
    2ebc:	00000513          	li	a0,0
    2ec0:	00008067          	ret
    2ec4:	00f30733          	add	a4,t1,a5
    2ec8:	00074883          	lbu	a7,0(a4)
    2ecc:	00f58733          	add	a4,a1,a5
    2ed0:	00074803          	lbu	a6,0(a4)
    2ed4:	fbf88713          	addi	a4,a7,-65
    2ed8:	0ff77713          	zext.b	a4,a4
    2edc:	00088693          	mv	a3,a7
    2ee0:	00ee6663          	bltu	t3,a4,2eec <FileString_StrCmpNoCase+0x40>
    2ee4:	02088693          	addi	a3,a7,32
    2ee8:	0ff6f693          	zext.b	a3,a3
    2eec:	fbf80513          	addi	a0,a6,-65
    2ef0:	0ff57513          	zext.b	a0,a0
    2ef4:	00080713          	mv	a4,a6
    2ef8:	00ae6663          	bltu	t3,a0,2f04 <FileString_StrCmpNoCase+0x58>
    2efc:	02080713          	addi	a4,a6,32
    2f00:	0ff77713          	zext.b	a4,a4
    2f04:	40e68533          	sub	a0,a3,a4
    2f08:	00e69863          	bne	a3,a4,2f18 <FileString_StrCmpNoCase+0x6c>
    2f0c:	00088663          	beqz	a7,2f18 <FileString_StrCmpNoCase+0x6c>
    2f10:	00178793          	addi	a5,a5,1
    2f14:	fa0812e3          	bnez	a6,2eb8 <FileString_StrCmpNoCase+0xc>
    2f18:	00008067          	ret

00002f1c <FileString_GetExtension>:
    2f1c:	00050713          	mv	a4,a0
    2f20:	00050793          	mv	a5,a0
    2f24:	02e00613          	li	a2,46
    2f28:	fff00513          	li	a0,-1
    2f2c:	0007c683          	lbu	a3,0(a5)
    2f30:	00069463          	bnez	a3,2f38 <FileString_GetExtension+0x1c>
    2f34:	00008067          	ret
    2f38:	00c69463          	bne	a3,a2,2f40 <FileString_GetExtension+0x24>
    2f3c:	40e78533          	sub	a0,a5,a4
    2f40:	00178793          	addi	a5,a5,1
    2f44:	fe9ff06f          	j	2f2c <FileString_GetExtension+0x10>

00002f48 <fatfs_fat_writeback>:
    2f48:	00059663          	bnez	a1,2f54 <fatfs_fat_writeback+0xc>
    2f4c:	00000513          	li	a0,0
    2f50:	00008067          	ret
    2f54:	2045a703          	lw	a4,516(a1)
    2f58:	ff010113          	addi	sp,sp,-16
    2f5c:	00812423          	sw	s0,8(sp)
    2f60:	00112623          	sw	ra,12(sp)
    2f64:	00058413          	mv	s0,a1
    2f68:	00070a63          	beqz	a4,2f7c <fatfs_fat_writeback+0x34>
    2f6c:	03852683          	lw	a3,56(a0)
    2f70:	00050793          	mv	a5,a0
    2f74:	00069863          	bnez	a3,2f84 <fatfs_fat_writeback+0x3c>
    2f78:	20042223          	sw	zero,516(s0)
    2f7c:	00100513          	li	a0,1
    2f80:	0380006f          	j	2fb8 <fatfs_fat_writeback+0x70>
    2f84:	2005a503          	lw	a0,512(a1)
    2f88:	0147a703          	lw	a4,20(a5)
    2f8c:	0207a583          	lw	a1,32(a5)
    2f90:	00100613          	li	a2,1
    2f94:	40e507b3          	sub	a5,a0,a4
    2f98:	00178793          	addi	a5,a5,1
    2f9c:	00f5f663          	bgeu	a1,a5,2fa8 <fatfs_fat_writeback+0x60>
    2fa0:	00b70733          	add	a4,a4,a1
    2fa4:	40a70633          	sub	a2,a4,a0
    2fa8:	00040593          	mv	a1,s0
    2fac:	000680e7          	jalr	a3
    2fb0:	fc0514e3          	bnez	a0,2f78 <fatfs_fat_writeback+0x30>
    2fb4:	00000513          	li	a0,0
    2fb8:	00c12083          	lw	ra,12(sp)
    2fbc:	00812403          	lw	s0,8(sp)
    2fc0:	01010113          	addi	sp,sp,16
    2fc4:	00008067          	ret

00002fc8 <fatfs_fat_read_sector>:
    2fc8:	fe010113          	addi	sp,sp,-32
    2fcc:	01212823          	sw	s2,16(sp)
    2fd0:	25452903          	lw	s2,596(a0)
    2fd4:	00812c23          	sw	s0,24(sp)
    2fd8:	00912a23          	sw	s1,20(sp)
    2fdc:	01312623          	sw	s3,12(sp)
    2fe0:	00112e23          	sw	ra,28(sp)
    2fe4:	00050993          	mv	s3,a0
    2fe8:	00058493          	mv	s1,a1
    2fec:	00000413          	li	s0,0
    2ff0:	04091063          	bnez	s2,3030 <fatfs_fat_read_sector+0x68>
    2ff4:	2549a783          	lw	a5,596(s3)
    2ff8:	20f42623          	sw	a5,524(s0)
    2ffc:	20442783          	lw	a5,516(s0)
    3000:	2489aa23          	sw	s0,596(s3)
    3004:	08079863          	bnez	a5,3094 <fatfs_fat_read_sector+0xcc>
    3008:	0349a783          	lw	a5,52(s3)
    300c:	20942023          	sw	s1,512(s0)
    3010:	00100613          	li	a2,1
    3014:	00040593          	mv	a1,s0
    3018:	00048513          	mv	a0,s1
    301c:	000780e7          	jalr	a5
    3020:	08051663          	bnez	a0,30ac <fatfs_fat_read_sector+0xe4>
    3024:	fff00793          	li	a5,-1
    3028:	20f42023          	sw	a5,512(s0)
    302c:	0480006f          	j	3074 <fatfs_fat_read_sector+0xac>
    3030:	20092783          	lw	a5,512(s2)
    3034:	00f4e663          	bltu	s1,a5,3040 <fatfs_fat_read_sector+0x78>
    3038:	00178713          	addi	a4,a5,1
    303c:	02e4e463          	bltu	s1,a4,3064 <fatfs_fat_read_sector+0x9c>
    3040:	20c92783          	lw	a5,524(s2)
    3044:	00079663          	bnez	a5,3050 <fatfs_fat_read_sector+0x88>
    3048:	00040a63          	beqz	s0,305c <fatfs_fat_read_sector+0x94>
    304c:	20042623          	sw	zero,524(s0)
    3050:	00090413          	mv	s0,s2
    3054:	20c92903          	lw	s2,524(s2)
    3058:	f99ff06f          	j	2ff0 <fatfs_fat_read_sector+0x28>
    305c:	2409aa23          	sw	zero,596(s3)
    3060:	ff1ff06f          	j	3050 <fatfs_fat_read_sector+0x88>
    3064:	40f484b3          	sub	s1,s1,a5
    3068:	00949493          	slli	s1,s1,0x9
    306c:	009904b3          	add	s1,s2,s1
    3070:	20992423          	sw	s1,520(s2)
    3074:	01c12083          	lw	ra,28(sp)
    3078:	01812403          	lw	s0,24(sp)
    307c:	01412483          	lw	s1,20(sp)
    3080:	00c12983          	lw	s3,12(sp)
    3084:	00090513          	mv	a0,s2
    3088:	01012903          	lw	s2,16(sp)
    308c:	02010113          	addi	sp,sp,32
    3090:	00008067          	ret
    3094:	00040593          	mv	a1,s0
    3098:	00098513          	mv	a0,s3
    309c:	00000097          	auipc	ra,0x0
    30a0:	eac080e7          	jalr	-340(ra) # 2f48 <fatfs_fat_writeback>
    30a4:	f60512e3          	bnez	a0,3008 <fatfs_fat_read_sector+0x40>
    30a8:	fcdff06f          	j	3074 <fatfs_fat_read_sector+0xac>
    30ac:	20842423          	sw	s0,520(s0)
    30b0:	00040913          	mv	s2,s0
    30b4:	fc1ff06f          	j	3074 <fatfs_fat_read_sector+0xac>

000030b8 <_allocate_file>:
    30b8:	ff010113          	addi	sp,sp,-16
    30bc:	000077b7          	lui	a5,0x7
    30c0:	00812423          	sw	s0,8(sp)
    30c4:	bf07a403          	lw	s0,-1040(a5) # 6bf0 <_free_file_list>
    30c8:	00112623          	sw	ra,12(sp)
    30cc:	02040e63          	beqz	s0,3108 <_allocate_file+0x50>
    30d0:	00042703          	lw	a4,0(s0)
    30d4:	00442683          	lw	a3,4(s0)
    30d8:	bf078793          	addi	a5,a5,-1040
    30dc:	04071063          	bnez	a4,311c <_allocate_file+0x64>
    30e0:	00d7a023          	sw	a3,0(a5)
    30e4:	00442683          	lw	a3,4(s0)
    30e8:	02069e63          	bnez	a3,3124 <_allocate_file+0x6c>
    30ec:	00e7a223          	sw	a4,4(a5)
    30f0:	00007537          	lui	a0,0x7
    30f4:	00040593          	mv	a1,s0
    30f8:	bf850513          	addi	a0,a0,-1032 # 6bf8 <_open_file_list>
    30fc:	00000097          	auipc	ra,0x0
    3100:	d44080e7          	jalr	-700(ra) # 2e40 <fat_list_insert_last>
    3104:	bc440413          	addi	s0,s0,-1084
    3108:	00c12083          	lw	ra,12(sp)
    310c:	00040513          	mv	a0,s0
    3110:	00812403          	lw	s0,8(sp)
    3114:	01010113          	addi	sp,sp,16
    3118:	00008067          	ret
    311c:	00d72223          	sw	a3,4(a4)
    3120:	fc5ff06f          	j	30e4 <_allocate_file+0x2c>
    3124:	00e6a023          	sw	a4,0(a3)
    3128:	fc9ff06f          	j	30f0 <_allocate_file+0x38>

0000312c <_free_file>:
    312c:	43c52783          	lw	a5,1084(a0)
    3130:	44052703          	lw	a4,1088(a0)
    3134:	43c50593          	addi	a1,a0,1084
    3138:	02079663          	bnez	a5,3164 <_free_file+0x38>
    313c:	000076b7          	lui	a3,0x7
    3140:	bee6ac23          	sw	a4,-1032(a3) # 6bf8 <_open_file_list>
    3144:	44052703          	lw	a4,1088(a0)
    3148:	02071263          	bnez	a4,316c <_free_file+0x40>
    314c:	00007737          	lui	a4,0x7
    3150:	bef72e23          	sw	a5,-1028(a4) # 6bfc <_open_file_list+0x4>
    3154:	00007537          	lui	a0,0x7
    3158:	bf050513          	addi	a0,a0,-1040 # 6bf0 <_free_file_list>
    315c:	00000317          	auipc	t1,0x0
    3160:	ce430067          	jr	-796(t1) # 2e40 <fat_list_insert_last>
    3164:	00e7a223          	sw	a4,4(a5)
    3168:	fddff06f          	j	3144 <_free_file+0x18>
    316c:	00f72023          	sw	a5,0(a4)
    3170:	fe5ff06f          	j	3154 <_free_file+0x28>

00003174 <fatfs_lba_of_cluster>:
    3174:	ff010113          	addi	sp,sp,-16
    3178:	00812423          	sw	s0,8(sp)
    317c:	00112623          	sw	ra,12(sp)
    3180:	00050413          	mv	s0,a0
    3184:	00058513          	mv	a0,a1
    3188:	00044583          	lbu	a1,0(s0)
    318c:	ffe50513          	addi	a0,a0,-2
    3190:	00000097          	auipc	ra,0x0
    3194:	c88080e7          	jalr	-888(ra) # 2e18 <__mulsi3>
    3198:	00442783          	lw	a5,4(s0)
    319c:	00f50533          	add	a0,a0,a5
    31a0:	03042783          	lw	a5,48(s0)
    31a4:	00079863          	bnez	a5,31b4 <fatfs_lba_of_cluster+0x40>
    31a8:	02845783          	lhu	a5,40(s0)
    31ac:	4047d793          	srai	a5,a5,0x4
    31b0:	00f50533          	add	a0,a0,a5
    31b4:	00c12083          	lw	ra,12(sp)
    31b8:	00812403          	lw	s0,8(sp)
    31bc:	01010113          	addi	sp,sp,16
    31c0:	00008067          	ret

000031c4 <fatfs_sector_read>:
    31c4:	03452783          	lw	a5,52(a0)
    31c8:	00058713          	mv	a4,a1
    31cc:	00070513          	mv	a0,a4
    31d0:	00060593          	mv	a1,a2
    31d4:	00068613          	mv	a2,a3
    31d8:	00078067          	jr	a5

000031dc <fatfs_sector_write>:
    31dc:	03852783          	lw	a5,56(a0)
    31e0:	00058713          	mv	a4,a1
    31e4:	00070513          	mv	a0,a4
    31e8:	00060593          	mv	a1,a2
    31ec:	00068613          	mv	a2,a3
    31f0:	00078067          	jr	a5

000031f4 <fatfs_write_sector>:
    31f4:	03852783          	lw	a5,56(a0)
    31f8:	0a078863          	beqz	a5,32a8 <fatfs_write_sector+0xb4>
    31fc:	fe010113          	addi	sp,sp,-32
    3200:	01212823          	sw	s2,16(sp)
    3204:	00068913          	mv	s2,a3
    3208:	03052683          	lw	a3,48(a0)
    320c:	00812c23          	sw	s0,24(sp)
    3210:	00912a23          	sw	s1,20(sp)
    3214:	00112e23          	sw	ra,28(sp)
    3218:	00d5e733          	or	a4,a1,a3
    321c:	00050413          	mv	s0,a0
    3220:	00060493          	mv	s1,a2
    3224:	04071063          	bnez	a4,3264 <fatfs_write_sector+0x70>
    3228:	01052703          	lw	a4,16(a0)
    322c:	06e67063          	bgeu	a2,a4,328c <fatfs_write_sector+0x98>
    3230:	01c52503          	lw	a0,28(a0)
    3234:	00c42703          	lw	a4,12(s0)
    3238:	00e50533          	add	a0,a0,a4
    323c:	00c50533          	add	a0,a0,a2
    3240:	02090e63          	beqz	s2,327c <fatfs_write_sector+0x88>
    3244:	00100613          	li	a2,1
    3248:	00090593          	mv	a1,s2
    324c:	01812403          	lw	s0,24(sp)
    3250:	01c12083          	lw	ra,28(sp)
    3254:	01412483          	lw	s1,20(sp)
    3258:	01012903          	lw	s2,16(sp)
    325c:	02010113          	addi	sp,sp,32
    3260:	00078067          	jr	a5
    3264:	00f12623          	sw	a5,12(sp)
    3268:	00000097          	auipc	ra,0x0
    326c:	f0c080e7          	jalr	-244(ra) # 3174 <fatfs_lba_of_cluster>
    3270:	00c12783          	lw	a5,12(sp)
    3274:	00a48533          	add	a0,s1,a0
    3278:	fc9ff06f          	j	3240 <fatfs_write_sector+0x4c>
    327c:	24a42223          	sw	a0,580(s0)
    3280:	00100613          	li	a2,1
    3284:	04440593          	addi	a1,s0,68
    3288:	fc5ff06f          	j	324c <fatfs_write_sector+0x58>
    328c:	01c12083          	lw	ra,28(sp)
    3290:	01812403          	lw	s0,24(sp)
    3294:	01412483          	lw	s1,20(sp)
    3298:	01012903          	lw	s2,16(sp)
    329c:	00000513          	li	a0,0
    32a0:	02010113          	addi	sp,sp,32
    32a4:	00008067          	ret
    32a8:	00000513          	li	a0,0
    32ac:	00008067          	ret

000032b0 <fl_init>:
    32b0:	ff010113          	addi	sp,sp,-16
    32b4:	00812423          	sw	s0,8(sp)
    32b8:	00007437          	lui	s0,0x7
    32bc:	00112623          	sw	ra,12(sp)
    32c0:	bf040793          	addi	a5,s0,-1040 # 6bf0 <_free_file_list>
    32c4:	0007a223          	sw	zero,4(a5)
    32c8:	0007a023          	sw	zero,0(a5)
    32cc:	000085b7          	lui	a1,0x8
    32d0:	000077b7          	lui	a5,0x7
    32d4:	bf878793          	addi	a5,a5,-1032 # 6bf8 <_open_file_list>
    32d8:	bf040513          	addi	a0,s0,-1040
    32dc:	cac58593          	addi	a1,a1,-852 # 7cac <_files+0x43c>
    32e0:	0007a223          	sw	zero,4(a5)
    32e4:	0007a023          	sw	zero,0(a5)
    32e8:	00000097          	auipc	ra,0x0
    32ec:	b58080e7          	jalr	-1192(ra) # 2e40 <fat_list_insert_last>
    32f0:	000085b7          	lui	a1,0x8
    32f4:	bf040513          	addi	a0,s0,-1040
    32f8:	0f058593          	addi	a1,a1,240 # 80f0 <_files+0x880>
    32fc:	00000097          	auipc	ra,0x0
    3300:	b44080e7          	jalr	-1212(ra) # 2e40 <fat_list_insert_last>
    3304:	00c12083          	lw	ra,12(sp)
    3308:	00812403          	lw	s0,8(sp)
    330c:	000077b7          	lui	a5,0x7
    3310:	00100713          	li	a4,1
    3314:	c0e7a223          	sw	a4,-1020(a5) # 6c04 <_filelib_init>
    3318:	01010113          	addi	sp,sp,16
    331c:	00008067          	ret

00003320 <fl_fseek>:
    3320:	000077b7          	lui	a5,0x7
    3324:	c047a783          	lw	a5,-1020(a5) # 6c04 <_filelib_init>
    3328:	fd010113          	addi	sp,sp,-48
    332c:	02812423          	sw	s0,40(sp)
    3330:	02912223          	sw	s1,36(sp)
    3334:	03212023          	sw	s2,32(sp)
    3338:	02112623          	sw	ra,44(sp)
    333c:	01312e23          	sw	s3,28(sp)
    3340:	00050413          	mv	s0,a0
    3344:	00058493          	mv	s1,a1
    3348:	00060913          	mv	s2,a2
    334c:	00079663          	bnez	a5,3358 <fl_fseek+0x38>
    3350:	00000097          	auipc	ra,0x0
    3354:	f60080e7          	jalr	-160(ra) # 32b0 <fl_init>
    3358:	fff00513          	li	a0,-1
    335c:	08040463          	beqz	s0,33e4 <fl_fseek+0xc4>
    3360:	00200793          	li	a5,2
    3364:	00f91463          	bne	s2,a5,336c <fl_fseek+0x4c>
    3368:	06049e63          	bnez	s1,33e4 <fl_fseek+0xc4>
    336c:	000077b7          	lui	a5,0x7
    3370:	40878713          	addi	a4,a5,1032 # 7408 <_fs>
    3374:	03c72703          	lw	a4,60(a4)
    3378:	40878993          	addi	s3,a5,1032
    337c:	00070463          	beqz	a4,3384 <fl_fseek+0x64>
    3380:	000700e7          	jalr	a4
    3384:	fff00793          	li	a5,-1
    3388:	42f42823          	sw	a5,1072(s0)
    338c:	42042a23          	sw	zero,1076(s0)
    3390:	00091c63          	bnez	s2,33a8 <fl_fseek+0x88>
    3394:	00c42783          	lw	a5,12(s0)
    3398:	00942423          	sw	s1,8(s0)
    339c:	0297f863          	bgeu	a5,s1,33cc <fl_fseek+0xac>
    33a0:	00f42423          	sw	a5,8(s0)
    33a4:	0280006f          	j	33cc <fl_fseek+0xac>
    33a8:	00100793          	li	a5,1
    33ac:	06f91063          	bne	s2,a5,340c <fl_fseek+0xec>
    33b0:	00842783          	lw	a5,8(s0)
    33b4:	0004c663          	bltz	s1,33c0 <fl_fseek+0xa0>
    33b8:	00f484b3          	add	s1,s1,a5
    33bc:	fd9ff06f          	j	3394 <fl_fseek+0x74>
    33c0:	40900733          	neg	a4,s1
    33c4:	02e7fe63          	bgeu	a5,a4,3400 <fl_fseek+0xe0>
    33c8:	00042423          	sw	zero,8(s0)
    33cc:	00000513          	li	a0,0
    33d0:	0409a783          	lw	a5,64(s3)
    33d4:	00078863          	beqz	a5,33e4 <fl_fseek+0xc4>
    33d8:	00a12623          	sw	a0,12(sp)
    33dc:	000780e7          	jalr	a5
    33e0:	00c12503          	lw	a0,12(sp)
    33e4:	02c12083          	lw	ra,44(sp)
    33e8:	02812403          	lw	s0,40(sp)
    33ec:	02412483          	lw	s1,36(sp)
    33f0:	02012903          	lw	s2,32(sp)
    33f4:	01c12983          	lw	s3,28(sp)
    33f8:	03010113          	addi	sp,sp,48
    33fc:	00008067          	ret
    3400:	00f484b3          	add	s1,s1,a5
    3404:	00942423          	sw	s1,8(s0)
    3408:	fc5ff06f          	j	33cc <fl_fseek+0xac>
    340c:	00200793          	li	a5,2
    3410:	fff00513          	li	a0,-1
    3414:	faf91ee3          	bne	s2,a5,33d0 <fl_fseek+0xb0>
    3418:	00c42783          	lw	a5,12(s0)
    341c:	f85ff06f          	j	33a0 <fl_fseek+0x80>

00003420 <fl_fgetpos>:
    3420:	06050663          	beqz	a0,348c <fl_fgetpos+0x6c>
    3424:	000077b7          	lui	a5,0x7
    3428:	40878713          	addi	a4,a5,1032 # 7408 <_fs>
    342c:	03c72703          	lw	a4,60(a4)
    3430:	ff010113          	addi	sp,sp,-16
    3434:	00812423          	sw	s0,8(sp)
    3438:	00912223          	sw	s1,4(sp)
    343c:	01212023          	sw	s2,0(sp)
    3440:	00112623          	sw	ra,12(sp)
    3444:	00050493          	mv	s1,a0
    3448:	00058913          	mv	s2,a1
    344c:	40878413          	addi	s0,a5,1032
    3450:	00070463          	beqz	a4,3458 <fl_fgetpos+0x38>
    3454:	000700e7          	jalr	a4
    3458:	0084a783          	lw	a5,8(s1)
    345c:	00f92023          	sw	a5,0(s2)
    3460:	04042783          	lw	a5,64(s0)
    3464:	02079063          	bnez	a5,3484 <fl_fgetpos+0x64>
    3468:	00c12083          	lw	ra,12(sp)
    346c:	00812403          	lw	s0,8(sp)
    3470:	00412483          	lw	s1,4(sp)
    3474:	00012903          	lw	s2,0(sp)
    3478:	00000513          	li	a0,0
    347c:	01010113          	addi	sp,sp,16
    3480:	00008067          	ret
    3484:	000780e7          	jalr	a5
    3488:	fe1ff06f          	j	3468 <fl_fgetpos+0x48>
    348c:	fff00513          	li	a0,-1
    3490:	00008067          	ret

00003494 <fl_ftell>:
    3494:	fe010113          	addi	sp,sp,-32
    3498:	00c10593          	addi	a1,sp,12
    349c:	00112e23          	sw	ra,28(sp)
    34a0:	00012623          	sw	zero,12(sp)
    34a4:	00000097          	auipc	ra,0x0
    34a8:	f7c080e7          	jalr	-132(ra) # 3420 <fl_fgetpos>
    34ac:	01c12083          	lw	ra,28(sp)
    34b0:	00c12503          	lw	a0,12(sp)
    34b4:	02010113          	addi	sp,sp,32
    34b8:	00008067          	ret

000034bc <fl_closedir>:
    34bc:	00000513          	li	a0,0
    34c0:	00008067          	ret

000034c4 <fatfs_lfn_cache_entry>:
    34c4:	0005c783          	lbu	a5,0(a1)
    34c8:	01300693          	li	a3,19
    34cc:	01f7f793          	andi	a5,a5,31
    34d0:	fff78713          	addi	a4,a5,-1
    34d4:	0ff77613          	zext.b	a2,a4
    34d8:	0ac6ea63          	bltu	a3,a2,358c <fatfs_lfn_cache_entry+0xc8>
    34dc:	10554683          	lbu	a3,261(a0)
    34e0:	00069463          	bnez	a3,34e8 <fatfs_lfn_cache_entry+0x24>
    34e4:	10f502a3          	sb	a5,261(a0)
    34e8:	00171793          	slli	a5,a4,0x1
    34ec:	00e787b3          	add	a5,a5,a4
    34f0:	0015c683          	lbu	a3,1(a1)
    34f4:	00279793          	slli	a5,a5,0x2
    34f8:	00e787b3          	add	a5,a5,a4
    34fc:	00f50533          	add	a0,a0,a5
    3500:	00d50023          	sb	a3,0(a0)
    3504:	0035c783          	lbu	a5,3(a1)
    3508:	0ff00713          	li	a4,255
    350c:	02000693          	li	a3,32
    3510:	00f500a3          	sb	a5,1(a0)
    3514:	0055c783          	lbu	a5,5(a1)
    3518:	00f50123          	sb	a5,2(a0)
    351c:	0075c783          	lbu	a5,7(a1)
    3520:	00f501a3          	sb	a5,3(a0)
    3524:	0095c783          	lbu	a5,9(a1)
    3528:	00f50223          	sb	a5,4(a0)
    352c:	00e5c783          	lbu	a5,14(a1)
    3530:	00f502a3          	sb	a5,5(a0)
    3534:	0105c783          	lbu	a5,16(a1)
    3538:	00f50323          	sb	a5,6(a0)
    353c:	0125c783          	lbu	a5,18(a1)
    3540:	00f503a3          	sb	a5,7(a0)
    3544:	0145c783          	lbu	a5,20(a1)
    3548:	00f50423          	sb	a5,8(a0)
    354c:	0165c783          	lbu	a5,22(a1)
    3550:	00f504a3          	sb	a5,9(a0)
    3554:	0185c783          	lbu	a5,24(a1)
    3558:	00f50523          	sb	a5,10(a0)
    355c:	01c5c783          	lbu	a5,28(a1)
    3560:	00f505a3          	sb	a5,11(a0)
    3564:	01e5c783          	lbu	a5,30(a1)
    3568:	00f50623          	sb	a5,12(a0)
    356c:	00d00793          	li	a5,13
    3570:	00054603          	lbu	a2,0(a0)
    3574:	00e61463          	bne	a2,a4,357c <fatfs_lfn_cache_entry+0xb8>
    3578:	00d50023          	sb	a3,0(a0)
    357c:	fff78793          	addi	a5,a5,-1
    3580:	0ff7f793          	zext.b	a5,a5
    3584:	00150513          	addi	a0,a0,1
    3588:	fe0794e3          	bnez	a5,3570 <fatfs_lfn_cache_entry+0xac>
    358c:	00008067          	ret

00003590 <fatfs_lfn_cache_get>:
    3590:	10554703          	lbu	a4,261(a0)
    3594:	01400793          	li	a5,20
    3598:	00f71663          	bne	a4,a5,35a4 <fatfs_lfn_cache_get+0x14>
    359c:	10050223          	sb	zero,260(a0)
    35a0:	00008067          	ret
    35a4:	02070063          	beqz	a4,35c4 <fatfs_lfn_cache_get+0x34>
    35a8:	00171793          	slli	a5,a4,0x1
    35ac:	00e787b3          	add	a5,a5,a4
    35b0:	00279793          	slli	a5,a5,0x2
    35b4:	00e787b3          	add	a5,a5,a4
    35b8:	00f507b3          	add	a5,a0,a5
    35bc:	00078023          	sb	zero,0(a5)
    35c0:	00008067          	ret
    35c4:	00050023          	sb	zero,0(a0)
    35c8:	00008067          	ret

000035cc <fatfs_entry_lfn_text>:
    35cc:	00b54503          	lbu	a0,11(a0)
    35d0:	00f57513          	andi	a0,a0,15
    35d4:	ff150513          	addi	a0,a0,-15
    35d8:	00153513          	seqz	a0,a0
    35dc:	00008067          	ret

000035e0 <fatfs_entry_lfn_invalid>:
    35e0:	00054703          	lbu	a4,0(a0)
    35e4:	00050793          	mv	a5,a0
    35e8:	02070463          	beqz	a4,3610 <fatfs_entry_lfn_invalid+0x30>
    35ec:	0e500693          	li	a3,229
    35f0:	00100513          	li	a0,1
    35f4:	02d70063          	beq	a4,a3,3614 <fatfs_entry_lfn_invalid+0x34>
    35f8:	00b7c783          	lbu	a5,11(a5)
    35fc:	00800713          	li	a4,8
    3600:	00e78a63          	beq	a5,a4,3614 <fatfs_entry_lfn_invalid+0x34>
    3604:	0067f793          	andi	a5,a5,6
    3608:	00f03533          	snez	a0,a5
    360c:	00008067          	ret
    3610:	00100513          	li	a0,1
    3614:	00008067          	ret

00003618 <fatfs_entry_lfn_exists>:
    3618:	00b5c783          	lbu	a5,11(a1)
    361c:	00f00693          	li	a3,15
    3620:	00050713          	mv	a4,a0
    3624:	02d78a63          	beq	a5,a3,3658 <fatfs_entry_lfn_exists+0x40>
    3628:	0005c683          	lbu	a3,0(a1)
    362c:	00000513          	li	a0,0
    3630:	02068663          	beqz	a3,365c <fatfs_entry_lfn_exists+0x44>
    3634:	0e500613          	li	a2,229
    3638:	02c68263          	beq	a3,a2,365c <fatfs_entry_lfn_exists+0x44>
    363c:	00800693          	li	a3,8
    3640:	00d78e63          	beq	a5,a3,365c <fatfs_entry_lfn_exists+0x44>
    3644:	0067f793          	andi	a5,a5,6
    3648:	00079a63          	bnez	a5,365c <fatfs_entry_lfn_exists+0x44>
    364c:	10574503          	lbu	a0,261(a4)
    3650:	00a03533          	snez	a0,a0
    3654:	00008067          	ret
    3658:	00000513          	li	a0,0
    365c:	00008067          	ret

00003660 <fatfs_entry_sfn_only>:
    3660:	00b54783          	lbu	a5,11(a0)
    3664:	00f00713          	li	a4,15
    3668:	02e78663          	beq	a5,a4,3694 <fatfs_entry_sfn_only+0x34>
    366c:	00054703          	lbu	a4,0(a0)
    3670:	00000513          	li	a0,0
    3674:	02070263          	beqz	a4,3698 <fatfs_entry_sfn_only+0x38>
    3678:	0e500693          	li	a3,229
    367c:	00d70e63          	beq	a4,a3,3698 <fatfs_entry_sfn_only+0x38>
    3680:	00800713          	li	a4,8
    3684:	00e78a63          	beq	a5,a4,3698 <fatfs_entry_sfn_only+0x38>
    3688:	0067f793          	andi	a5,a5,6
    368c:	0017b513          	seqz	a0,a5
    3690:	00008067          	ret
    3694:	00000513          	li	a0,0
    3698:	00008067          	ret

0000369c <fatfs_entry_is_dir>:
    369c:	00b54503          	lbu	a0,11(a0)
    36a0:	00455513          	srli	a0,a0,0x4
    36a4:	00157513          	andi	a0,a0,1
    36a8:	00008067          	ret

000036ac <fatfs_entry_is_file>:
    36ac:	00b54503          	lbu	a0,11(a0)
    36b0:	00555513          	srli	a0,a0,0x5
    36b4:	00157513          	andi	a0,a0,1
    36b8:	00008067          	ret

000036bc <fatfs_lfn_entries_required>:
    36bc:	ff010113          	addi	sp,sp,-16
    36c0:	00112623          	sw	ra,12(sp)
    36c4:	fffff097          	auipc	ra,0xfffff
    36c8:	050080e7          	jalr	80(ra) # 2714 <strlen>
    36cc:	00050a63          	beqz	a0,36e0 <fatfs_lfn_entries_required+0x24>
    36d0:	00d00593          	li	a1,13
    36d4:	00c50513          	addi	a0,a0,12
    36d8:	fffff097          	auipc	ra,0xfffff
    36dc:	f48080e7          	jalr	-184(ra) # 2620 <__divsi3>
    36e0:	00c12083          	lw	ra,12(sp)
    36e4:	01010113          	addi	sp,sp,16
    36e8:	00008067          	ret

000036ec <fatfs_filename_to_lfn>:
    36ec:	fa010113          	addi	sp,sp,-96
    36f0:	04912a23          	sw	s1,84(sp)
    36f4:	00058493          	mv	s1,a1
    36f8:	000075b7          	lui	a1,0x7
    36fc:	b9458593          	addi	a1,a1,-1132 # 6b94 <font+0x1e0>
    3700:	05212823          	sw	s2,80(sp)
    3704:	05312623          	sw	s3,76(sp)
    3708:	00060913          	mv	s2,a2
    370c:	00050993          	mv	s3,a0
    3710:	03400613          	li	a2,52
    3714:	00c10513          	addi	a0,sp,12
    3718:	04112e23          	sw	ra,92(sp)
    371c:	04812c23          	sw	s0,88(sp)
    3720:	05412423          	sw	s4,72(sp)
    3724:	05512223          	sw	s5,68(sp)
    3728:	05612023          	sw	s6,64(sp)
    372c:	00068b13          	mv	s6,a3
    3730:	fffff097          	auipc	ra,0xfffff
    3734:	fc0080e7          	jalr	-64(ra) # 26f0 <memcpy>
    3738:	00098513          	mv	a0,s3
    373c:	fffff097          	auipc	ra,0xfffff
    3740:	fd8080e7          	jalr	-40(ra) # 2714 <strlen>
    3744:	00050a93          	mv	s5,a0
    3748:	00098513          	mv	a0,s3
    374c:	00000097          	auipc	ra,0x0
    3750:	f70080e7          	jalr	-144(ra) # 36bc <fatfs_lfn_entries_required>
    3754:	00191793          	slli	a5,s2,0x1
    3758:	012787b3          	add	a5,a5,s2
    375c:	00279793          	slli	a5,a5,0x2
    3760:	00050a13          	mv	s4,a0
    3764:	02000613          	li	a2,32
    3768:	00000593          	li	a1,0
    376c:	00048513          	mv	a0,s1
    3770:	01278433          	add	s0,a5,s2
    3774:	fffff097          	auipc	ra,0xfffff
    3778:	f60080e7          	jalr	-160(ra) # 26d4 <memset>
    377c:	00190793          	addi	a5,s2,1
    3780:	fffa0a13          	addi	s4,s4,-1
    3784:	0ff7f793          	zext.b	a5,a5
    3788:	012a1463          	bne	s4,s2,3790 <fatfs_filename_to_lfn+0xa4>
    378c:	0407e793          	ori	a5,a5,64
    3790:	00f48023          	sb	a5,0(s1)
    3794:	00f00793          	li	a5,15
    3798:	00f485a3          	sb	a5,11(s1)
    379c:	016486a3          	sb	s6,13(s1)
    37a0:	00c10713          	addi	a4,sp,12
    37a4:	00040793          	mv	a5,s0
    37a8:	fff00613          	li	a2,-1
    37ac:	00072683          	lw	a3,0(a4)
    37b0:	00d486b3          	add	a3,s1,a3
    37b4:	0557d463          	bge	a5,s5,37fc <fatfs_filename_to_lfn+0x110>
    37b8:	00f985b3          	add	a1,s3,a5
    37bc:	0005c583          	lbu	a1,0(a1)
    37c0:	00b68023          	sb	a1,0(a3)
    37c4:	00470713          	addi	a4,a4,4
    37c8:	04010693          	addi	a3,sp,64
    37cc:	00178793          	addi	a5,a5,1
    37d0:	fcd71ee3          	bne	a4,a3,37ac <fatfs_filename_to_lfn+0xc0>
    37d4:	05c12083          	lw	ra,92(sp)
    37d8:	05812403          	lw	s0,88(sp)
    37dc:	05412483          	lw	s1,84(sp)
    37e0:	05012903          	lw	s2,80(sp)
    37e4:	04c12983          	lw	s3,76(sp)
    37e8:	04812a03          	lw	s4,72(sp)
    37ec:	04412a83          	lw	s5,68(sp)
    37f0:	04012b03          	lw	s6,64(sp)
    37f4:	06010113          	addi	sp,sp,96
    37f8:	00008067          	ret
    37fc:	01579663          	bne	a5,s5,3808 <fatfs_filename_to_lfn+0x11c>
    3800:	00068023          	sb	zero,0(a3)
    3804:	fc1ff06f          	j	37c4 <fatfs_filename_to_lfn+0xd8>
    3808:	00c68023          	sb	a2,0(a3)
    380c:	00c680a3          	sb	a2,1(a3)
    3810:	fb5ff06f          	j	37c4 <fatfs_filename_to_lfn+0xd8>

00003814 <fatfs_sfn_create_entry>:
    3814:	00000793          	li	a5,0
    3818:	00b00813          	li	a6,11
    381c:	00f508b3          	add	a7,a0,a5
    3820:	0008c303          	lbu	t1,0(a7)
    3824:	00f688b3          	add	a7,a3,a5
    3828:	00178793          	addi	a5,a5,1
    382c:	00688023          	sb	t1,0(a7)
    3830:	ff0796e3          	bne	a5,a6,381c <fatfs_sfn_create_entry+0x8>
    3834:	02000793          	li	a5,32
    3838:	00f68823          	sb	a5,16(a3)
    383c:	00f68923          	sb	a5,18(a3)
    3840:	00f68c23          	sb	a5,24(a3)
    3844:	000686a3          	sb	zero,13(a3)
    3848:	00068723          	sb	zero,14(a3)
    384c:	000687a3          	sb	zero,15(a3)
    3850:	000688a3          	sb	zero,17(a3)
    3854:	000689a3          	sb	zero,19(a3)
    3858:	00068b23          	sb	zero,22(a3)
    385c:	00068ba3          	sb	zero,23(a3)
    3860:	00068ca3          	sb	zero,25(a3)
    3864:	01000793          	li	a5,16
    3868:	00071463          	bnez	a4,3870 <fatfs_sfn_create_entry+0x5c>
    386c:	02000793          	li	a5,32
    3870:	00f685a3          	sb	a5,11(a3)
    3874:	01065793          	srli	a5,a2,0x10
    3878:	00f68a23          	sb	a5,20(a3)
    387c:	0087d793          	srli	a5,a5,0x8
    3880:	00f68aa3          	sb	a5,21(a3)
    3884:	01061793          	slli	a5,a2,0x10
    3888:	0107d793          	srli	a5,a5,0x10
    388c:	0087d793          	srli	a5,a5,0x8
    3890:	00f68da3          	sb	a5,27(a3)
    3894:	0085d793          	srli	a5,a1,0x8
    3898:	00b68e23          	sb	a1,28(a3)
    389c:	00f68ea3          	sb	a5,29(a3)
    38a0:	0105d793          	srli	a5,a1,0x10
    38a4:	0185d593          	srli	a1,a1,0x18
    38a8:	00068623          	sb	zero,12(a3)
    38ac:	00c68d23          	sb	a2,26(a3)
    38b0:	00f68f23          	sb	a5,30(a3)
    38b4:	00b68fa3          	sb	a1,31(a3)
    38b8:	00008067          	ret

000038bc <fatfs_lfn_create_sfn>:
    38bc:	0005c703          	lbu	a4,0(a1)
    38c0:	02e00793          	li	a5,46
    38c4:	16f70663          	beq	a4,a5,3a30 <fatfs_lfn_create_sfn+0x174>
    38c8:	fe010113          	addi	sp,sp,-32
    38cc:	00912a23          	sw	s1,20(sp)
    38d0:	00050493          	mv	s1,a0
    38d4:	00058513          	mv	a0,a1
    38d8:	00112e23          	sw	ra,28(sp)
    38dc:	00812c23          	sw	s0,24(sp)
    38e0:	01212823          	sw	s2,16(sp)
    38e4:	00058413          	mv	s0,a1
    38e8:	fffff097          	auipc	ra,0xfffff
    38ec:	e2c080e7          	jalr	-468(ra) # 2714 <strlen>
    38f0:	00b00613          	li	a2,11
    38f4:	02000593          	li	a1,32
    38f8:	00050913          	mv	s2,a0
    38fc:	00048513          	mv	a0,s1
    3900:	fffff097          	auipc	ra,0xfffff
    3904:	dd4080e7          	jalr	-556(ra) # 26d4 <memset>
    3908:	00300613          	li	a2,3
    390c:	02000593          	li	a1,32
    3910:	00c10513          	addi	a0,sp,12
    3914:	fffff097          	auipc	ra,0xfffff
    3918:	dc0080e7          	jalr	-576(ra) # 26d4 <memset>
    391c:	fff00713          	li	a4,-1
    3920:	00000793          	li	a5,0
    3924:	02e00693          	li	a3,46
    3928:	0d27c263          	blt	a5,s2,39ec <fatfs_lfn_create_sfn+0x130>
    392c:	fff00793          	li	a5,-1
    3930:	0ef70863          	beq	a4,a5,3a20 <fatfs_lfn_create_sfn+0x164>
    3934:	00170793          	addi	a5,a4,1
    3938:	00c10693          	addi	a3,sp,12
    393c:	00470613          	addi	a2,a4,4
    3940:	0cf61263          	bne	a2,a5,3a04 <fatfs_lfn_create_sfn+0x148>
    3944:	00000613          	li	a2,0
    3948:	00000693          	li	a3,0
    394c:	02000513          	li	a0,32
    3950:	02e00813          	li	a6,46
    3954:	01900893          	li	a7,25
    3958:	00800313          	li	t1,8
    395c:	02e6dc63          	bge	a3,a4,3994 <fatfs_lfn_create_sfn+0xd8>
    3960:	00d407b3          	add	a5,s0,a3
    3964:	0007c783          	lbu	a5,0(a5)
    3968:	0ca78063          	beq	a5,a0,3a28 <fatfs_lfn_create_sfn+0x16c>
    396c:	0b078e63          	beq	a5,a6,3a28 <fatfs_lfn_create_sfn+0x16c>
    3970:	f9f78593          	addi	a1,a5,-97
    3974:	0ff5f593          	zext.b	a1,a1
    3978:	00c48e33          	add	t3,s1,a2
    397c:	00160613          	addi	a2,a2,1
    3980:	00b8e663          	bltu	a7,a1,398c <fatfs_lfn_create_sfn+0xd0>
    3984:	fe078793          	addi	a5,a5,-32
    3988:	0ff7f793          	zext.b	a5,a5
    398c:	00fe0023          	sb	a5,0(t3)
    3990:	08661c63          	bne	a2,t1,3a28 <fatfs_lfn_create_sfn+0x16c>
    3994:	00c10793          	addi	a5,sp,12
    3998:	00800693          	li	a3,8
    399c:	01900513          	li	a0,25
    39a0:	00b00593          	li	a1,11
    39a4:	0007c703          	lbu	a4,0(a5)
    39a8:	f9f70613          	addi	a2,a4,-97
    39ac:	0ff67613          	zext.b	a2,a2
    39b0:	00c56663          	bltu	a0,a2,39bc <fatfs_lfn_create_sfn+0x100>
    39b4:	fe070713          	addi	a4,a4,-32
    39b8:	0ff77713          	zext.b	a4,a4
    39bc:	00d48633          	add	a2,s1,a3
    39c0:	00e60023          	sb	a4,0(a2)
    39c4:	00168693          	addi	a3,a3,1
    39c8:	00178793          	addi	a5,a5,1
    39cc:	fcb69ce3          	bne	a3,a1,39a4 <fatfs_lfn_create_sfn+0xe8>
    39d0:	01c12083          	lw	ra,28(sp)
    39d4:	01812403          	lw	s0,24(sp)
    39d8:	01412483          	lw	s1,20(sp)
    39dc:	01012903          	lw	s2,16(sp)
    39e0:	00100513          	li	a0,1
    39e4:	02010113          	addi	sp,sp,32
    39e8:	00008067          	ret
    39ec:	00f40633          	add	a2,s0,a5
    39f0:	00064603          	lbu	a2,0(a2)
    39f4:	00d61463          	bne	a2,a3,39fc <fatfs_lfn_create_sfn+0x140>
    39f8:	00078713          	mv	a4,a5
    39fc:	00178793          	addi	a5,a5,1
    3a00:	f29ff06f          	j	3928 <fatfs_lfn_create_sfn+0x6c>
    3a04:	0127d863          	bge	a5,s2,3a14 <fatfs_lfn_create_sfn+0x158>
    3a08:	00f405b3          	add	a1,s0,a5
    3a0c:	0005c583          	lbu	a1,0(a1)
    3a10:	00b68023          	sb	a1,0(a3)
    3a14:	00178793          	addi	a5,a5,1
    3a18:	00168693          	addi	a3,a3,1
    3a1c:	f25ff06f          	j	3940 <fatfs_lfn_create_sfn+0x84>
    3a20:	00090713          	mv	a4,s2
    3a24:	f21ff06f          	j	3944 <fatfs_lfn_create_sfn+0x88>
    3a28:	00168693          	addi	a3,a3,1
    3a2c:	f31ff06f          	j	395c <fatfs_lfn_create_sfn+0xa0>
    3a30:	00000513          	li	a0,0
    3a34:	00008067          	ret

00003a38 <fatfs_lfn_generate_tail>:
    3a38:	000187b7          	lui	a5,0x18
    3a3c:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    3a40:	16c7e463          	bltu	a5,a2,3ba8 <fatfs_lfn_generate_tail+0x170>
    3a44:	fa010113          	addi	sp,sp,-96
    3a48:	04812c23          	sw	s0,88(sp)
    3a4c:	04912a23          	sw	s1,84(sp)
    3a50:	05412423          	sw	s4,72(sp)
    3a54:	00050493          	mv	s1,a0
    3a58:	00058a13          	mv	s4,a1
    3a5c:	00060413          	mv	s0,a2
    3a60:	00000593          	li	a1,0
    3a64:	00c00613          	li	a2,12
    3a68:	00410513          	addi	a0,sp,4
    3a6c:	04112e23          	sw	ra,92(sp)
    3a70:	05312623          	sw	s3,76(sp)
    3a74:	05512223          	sw	s5,68(sp)
    3a78:	03712e23          	sw	s7,60(sp)
    3a7c:	05212823          	sw	s2,80(sp)
    3a80:	05612023          	sw	s6,64(sp)
    3a84:	fffff097          	auipc	ra,0xfffff
    3a88:	c50080e7          	jalr	-944(ra) # 26d4 <memset>
    3a8c:	000065b7          	lui	a1,0x6
    3a90:	07e00793          	li	a5,126
    3a94:	01100613          	li	a2,17
    3a98:	4cc58593          	addi	a1,a1,1228 # 64cc <LEDS+0x134>
    3a9c:	01c10513          	addi	a0,sp,28
    3aa0:	01010993          	addi	s3,sp,16
    3aa4:	00f10223          	sb	a5,4(sp)
    3aa8:	00098a93          	mv	s5,s3
    3aac:	fffff097          	auipc	ra,0xfffff
    3ab0:	c44080e7          	jalr	-956(ra) # 26f0 <memcpy>
    3ab4:	00900b93          	li	s7,9
    3ab8:	00a00593          	li	a1,10
    3abc:	00040513          	mv	a0,s0
    3ac0:	fffff097          	auipc	ra,0xfffff
    3ac4:	bb0080e7          	jalr	-1104(ra) # 2670 <__umodsi3>
    3ac8:	03050793          	addi	a5,a0,48
    3acc:	00278533          	add	a0,a5,sp
    3ad0:	fec54783          	lbu	a5,-20(a0)
    3ad4:	00098913          	mv	s2,s3
    3ad8:	00040513          	mv	a0,s0
    3adc:	00a00593          	li	a1,10
    3ae0:	00f98023          	sb	a5,0(s3)
    3ae4:	00040b13          	mv	s6,s0
    3ae8:	fffff097          	auipc	ra,0xfffff
    3aec:	b40080e7          	jalr	-1216(ra) # 2628 <__udivsi3>
    3af0:	00198993          	addi	s3,s3,1
    3af4:	00050413          	mv	s0,a0
    3af8:	fd6be0e3          	bltu	s7,s6,3ab8 <fatfs_lfn_generate_tail+0x80>
    3afc:	00098023          	sb	zero,0(s3)
    3b00:	00410713          	addi	a4,sp,4
    3b04:	00090793          	mv	a5,s2
    3b08:	00170713          	addi	a4,a4,1
    3b0c:	0957f663          	bgeu	a5,s5,3b98 <fatfs_lfn_generate_tail+0x160>
    3b10:	00f10713          	addi	a4,sp,15
    3b14:	00000793          	li	a5,0
    3b18:	00e96663          	bltu	s2,a4,3b24 <fatfs_lfn_generate_tail+0xec>
    3b1c:	41590933          	sub	s2,s2,s5
    3b20:	00190793          	addi	a5,s2,1
    3b24:	03078793          	addi	a5,a5,48
    3b28:	002787b3          	add	a5,a5,sp
    3b2c:	000a0593          	mv	a1,s4
    3b30:	fc078aa3          	sb	zero,-43(a5)
    3b34:	00b00613          	li	a2,11
    3b38:	00048513          	mv	a0,s1
    3b3c:	fffff097          	auipc	ra,0xfffff
    3b40:	bb4080e7          	jalr	-1100(ra) # 26f0 <memcpy>
    3b44:	00410513          	addi	a0,sp,4
    3b48:	fffff097          	auipc	ra,0xfffff
    3b4c:	bcc080e7          	jalr	-1076(ra) # 2714 <strlen>
    3b50:	40a484b3          	sub	s1,s1,a0
    3b54:	00050613          	mv	a2,a0
    3b58:	00410593          	addi	a1,sp,4
    3b5c:	00848513          	addi	a0,s1,8
    3b60:	fffff097          	auipc	ra,0xfffff
    3b64:	b90080e7          	jalr	-1136(ra) # 26f0 <memcpy>
    3b68:	05c12083          	lw	ra,92(sp)
    3b6c:	05812403          	lw	s0,88(sp)
    3b70:	05412483          	lw	s1,84(sp)
    3b74:	05012903          	lw	s2,80(sp)
    3b78:	04c12983          	lw	s3,76(sp)
    3b7c:	04812a03          	lw	s4,72(sp)
    3b80:	04412a83          	lw	s5,68(sp)
    3b84:	04012b03          	lw	s6,64(sp)
    3b88:	03c12b83          	lw	s7,60(sp)
    3b8c:	00100513          	li	a0,1
    3b90:	06010113          	addi	sp,sp,96
    3b94:	00008067          	ret
    3b98:	0007c683          	lbu	a3,0(a5)
    3b9c:	fff78793          	addi	a5,a5,-1
    3ba0:	00d70023          	sb	a3,0(a4)
    3ba4:	f65ff06f          	j	3b08 <fatfs_lfn_generate_tail+0xd0>
    3ba8:	00000513          	li	a0,0
    3bac:	00008067          	ret

00003bb0 <fatfs_total_path_levels>:
    3bb0:	00050793          	mv	a5,a0
    3bb4:	06050463          	beqz	a0,3c1c <fatfs_total_path_levels+0x6c>
    3bb8:	00054703          	lbu	a4,0(a0)
    3bbc:	02f00693          	li	a3,47
    3bc0:	00d71863          	bne	a4,a3,3bd0 <fatfs_total_path_levels+0x20>
    3bc4:	00150793          	addi	a5,a0,1
    3bc8:	00000513          	li	a0,0
    3bcc:	0400006f          	j	3c0c <fatfs_total_path_levels+0x5c>
    3bd0:	00154683          	lbu	a3,1(a0)
    3bd4:	03a00713          	li	a4,58
    3bd8:	00e68a63          	beq	a3,a4,3bec <fatfs_total_path_levels+0x3c>
    3bdc:	00254683          	lbu	a3,2(a0)
    3be0:	05c00713          	li	a4,92
    3be4:	fff00513          	li	a0,-1
    3be8:	02e69c63          	bne	a3,a4,3c20 <fatfs_total_path_levels+0x70>
    3bec:	00378793          	addi	a5,a5,3
    3bf0:	05c00713          	li	a4,92
    3bf4:	fd5ff06f          	j	3bc8 <fatfs_total_path_levels+0x18>
    3bf8:	00178793          	addi	a5,a5,1
    3bfc:	00e68663          	beq	a3,a4,3c08 <fatfs_total_path_levels+0x58>
    3c00:	0007c683          	lbu	a3,0(a5)
    3c04:	fe069ae3          	bnez	a3,3bf8 <fatfs_total_path_levels+0x48>
    3c08:	00150513          	addi	a0,a0,1
    3c0c:	0007c683          	lbu	a3,0(a5)
    3c10:	fe0698e3          	bnez	a3,3c00 <fatfs_total_path_levels+0x50>
    3c14:	fff50513          	addi	a0,a0,-1
    3c18:	00008067          	ret
    3c1c:	fff00513          	li	a0,-1
    3c20:	00008067          	ret

00003c24 <fatfs_get_substring>:
    3c24:	0c050c63          	beqz	a0,3cfc <fatfs_get_substring+0xd8>
    3c28:	fe010113          	addi	sp,sp,-32
    3c2c:	00912a23          	sw	s1,20(sp)
    3c30:	00112e23          	sw	ra,28(sp)
    3c34:	00812c23          	sw	s0,24(sp)
    3c38:	01212823          	sw	s2,16(sp)
    3c3c:	01312623          	sw	s3,12(sp)
    3c40:	01412423          	sw	s4,8(sp)
    3c44:	00050793          	mv	a5,a0
    3c48:	00068493          	mv	s1,a3
    3c4c:	fff00513          	li	a0,-1
    3c50:	06d05a63          	blez	a3,3cc4 <fatfs_get_substring+0xa0>
    3c54:	0007c983          	lbu	s3,0(a5)
    3c58:	02f00713          	li	a4,47
    3c5c:	00058a13          	mv	s4,a1
    3c60:	00060913          	mv	s2,a2
    3c64:	00178413          	addi	s0,a5,1
    3c68:	02e98463          	beq	s3,a4,3c90 <fatfs_get_substring+0x6c>
    3c6c:	0017c683          	lbu	a3,1(a5)
    3c70:	03a00713          	li	a4,58
    3c74:	00e68a63          	beq	a3,a4,3c88 <fatfs_get_substring+0x64>
    3c78:	0027c683          	lbu	a3,2(a5)
    3c7c:	05c00713          	li	a4,92
    3c80:	fff00513          	li	a0,-1
    3c84:	04e69063          	bne	a3,a4,3cc4 <fatfs_get_substring+0xa0>
    3c88:	00378413          	addi	s0,a5,3
    3c8c:	05c00993          	li	s3,92
    3c90:	00040513          	mv	a0,s0
    3c94:	fffff097          	auipc	ra,0xfffff
    3c98:	a80080e7          	jalr	-1408(ra) # 2714 <strlen>
    3c9c:	00000713          	li	a4,0
    3ca0:	00000693          	li	a3,0
    3ca4:	00000793          	li	a5,0
    3ca8:	fff48493          	addi	s1,s1,-1
    3cac:	00e905b3          	add	a1,s2,a4
    3cb0:	02a7ca63          	blt	a5,a0,3ce4 <fatfs_get_substring+0xc0>
    3cb4:	00058023          	sb	zero,0(a1)
    3cb8:	00094503          	lbu	a0,0(s2)
    3cbc:	00153513          	seqz	a0,a0
    3cc0:	40a00533          	neg	a0,a0
    3cc4:	01c12083          	lw	ra,28(sp)
    3cc8:	01812403          	lw	s0,24(sp)
    3ccc:	01412483          	lw	s1,20(sp)
    3cd0:	01012903          	lw	s2,16(sp)
    3cd4:	00c12983          	lw	s3,12(sp)
    3cd8:	00812a03          	lw	s4,8(sp)
    3cdc:	02010113          	addi	sp,sp,32
    3ce0:	00008067          	ret
    3ce4:	00f40633          	add	a2,s0,a5
    3ce8:	00064603          	lbu	a2,0(a2)
    3cec:	01361c63          	bne	a2,s3,3d04 <fatfs_get_substring+0xe0>
    3cf0:	00168693          	addi	a3,a3,1
    3cf4:	00178793          	addi	a5,a5,1
    3cf8:	fb5ff06f          	j	3cac <fatfs_get_substring+0x88>
    3cfc:	fff00513          	li	a0,-1
    3d00:	00008067          	ret
    3d04:	ff4698e3          	bne	a3,s4,3cf4 <fatfs_get_substring+0xd0>
    3d08:	fe9756e3          	bge	a4,s1,3cf4 <fatfs_get_substring+0xd0>
    3d0c:	00170713          	addi	a4,a4,1
    3d10:	00c58023          	sb	a2,0(a1)
    3d14:	fe1ff06f          	j	3cf4 <fatfs_get_substring+0xd0>

00003d18 <fatfs_split_path>:
    3d18:	fd010113          	addi	sp,sp,-48
    3d1c:	02912223          	sw	s1,36(sp)
    3d20:	01312e23          	sw	s3,28(sp)
    3d24:	01412c23          	sw	s4,24(sp)
    3d28:	01512a23          	sw	s5,20(sp)
    3d2c:	02112623          	sw	ra,44(sp)
    3d30:	00068a93          	mv	s5,a3
    3d34:	02812423          	sw	s0,40(sp)
    3d38:	03212023          	sw	s2,32(sp)
    3d3c:	00050993          	mv	s3,a0
    3d40:	00058493          	mv	s1,a1
    3d44:	00060a13          	mv	s4,a2
    3d48:	00e12623          	sw	a4,12(sp)
    3d4c:	00000097          	auipc	ra,0x0
    3d50:	e64080e7          	jalr	-412(ra) # 3bb0 <fatfs_total_path_levels>
    3d54:	fff00793          	li	a5,-1
    3d58:	00c12683          	lw	a3,12(sp)
    3d5c:	02f51863          	bne	a0,a5,3d8c <fatfs_split_path+0x74>
    3d60:	fff00913          	li	s2,-1
    3d64:	02c12083          	lw	ra,44(sp)
    3d68:	02812403          	lw	s0,40(sp)
    3d6c:	02412483          	lw	s1,36(sp)
    3d70:	01c12983          	lw	s3,28(sp)
    3d74:	01812a03          	lw	s4,24(sp)
    3d78:	01412a83          	lw	s5,20(sp)
    3d7c:	00090513          	mv	a0,s2
    3d80:	02012903          	lw	s2,32(sp)
    3d84:	03010113          	addi	sp,sp,48
    3d88:	00008067          	ret
    3d8c:	00050593          	mv	a1,a0
    3d90:	00050413          	mv	s0,a0
    3d94:	000a8613          	mv	a2,s5
    3d98:	00098513          	mv	a0,s3
    3d9c:	00000097          	auipc	ra,0x0
    3da0:	e88080e7          	jalr	-376(ra) # 3c24 <fatfs_get_substring>
    3da4:	00050913          	mv	s2,a0
    3da8:	fa051ce3          	bnez	a0,3d60 <fatfs_split_path+0x48>
    3dac:	00041663          	bnez	s0,3db8 <fatfs_split_path+0xa0>
    3db0:	00048023          	sb	zero,0(s1)
    3db4:	fb1ff06f          	j	3d64 <fatfs_split_path+0x4c>
    3db8:	00098513          	mv	a0,s3
    3dbc:	fffff097          	auipc	ra,0xfffff
    3dc0:	958080e7          	jalr	-1704(ra) # 2714 <strlen>
    3dc4:	00050413          	mv	s0,a0
    3dc8:	000a8513          	mv	a0,s5
    3dcc:	fffff097          	auipc	ra,0xfffff
    3dd0:	948080e7          	jalr	-1720(ra) # 2714 <strlen>
    3dd4:	40a40433          	sub	s0,s0,a0
    3dd8:	008a5463          	bge	s4,s0,3de0 <fatfs_split_path+0xc8>
    3ddc:	000a0413          	mv	s0,s4
    3de0:	00048513          	mv	a0,s1
    3de4:	00040613          	mv	a2,s0
    3de8:	00098593          	mv	a1,s3
    3dec:	008484b3          	add	s1,s1,s0
    3df0:	fffff097          	auipc	ra,0xfffff
    3df4:	900080e7          	jalr	-1792(ra) # 26f0 <memcpy>
    3df8:	fe048fa3          	sb	zero,-1(s1)
    3dfc:	f69ff06f          	j	3d64 <fatfs_split_path+0x4c>

00003e00 <fatfs_compare_names>:
    3e00:	fd010113          	addi	sp,sp,-48
    3e04:	02112623          	sw	ra,44(sp)
    3e08:	02812423          	sw	s0,40(sp)
    3e0c:	02912223          	sw	s1,36(sp)
    3e10:	03212023          	sw	s2,32(sp)
    3e14:	01312e23          	sw	s3,28(sp)
    3e18:	00058913          	mv	s2,a1
    3e1c:	01412c23          	sw	s4,24(sp)
    3e20:	01512a23          	sw	s5,20(sp)
    3e24:	01612823          	sw	s6,16(sp)
    3e28:	00050a13          	mv	s4,a0
    3e2c:	fffff097          	auipc	ra,0xfffff
    3e30:	0f0080e7          	jalr	240(ra) # 2f1c <FileString_GetExtension>
    3e34:	00050493          	mv	s1,a0
    3e38:	00090513          	mv	a0,s2
    3e3c:	fffff097          	auipc	ra,0xfffff
    3e40:	0e0080e7          	jalr	224(ra) # 2f1c <FileString_GetExtension>
    3e44:	fff00793          	li	a5,-1
    3e48:	00050413          	mv	s0,a0
    3e4c:	00000993          	li	s3,0
    3e50:	08f49a63          	bne	s1,a5,3ee4 <fatfs_compare_names+0xe4>
    3e54:	0c951e63          	bne	a0,s1,3f30 <fatfs_compare_names+0x130>
    3e58:	000a0513          	mv	a0,s4
    3e5c:	fffff097          	auipc	ra,0xfffff
    3e60:	8b8080e7          	jalr	-1864(ra) # 2714 <strlen>
    3e64:	00050493          	mv	s1,a0
    3e68:	00090513          	mv	a0,s2
    3e6c:	fffff097          	auipc	ra,0xfffff
    3e70:	8a8080e7          	jalr	-1880(ra) # 2714 <strlen>
    3e74:	00050413          	mv	s0,a0
    3e78:	fff48793          	addi	a5,s1,-1
    3e7c:	00fa07b3          	add	a5,s4,a5
    3e80:	40978733          	sub	a4,a5,s1
    3e84:	02000613          	li	a2,32
    3e88:	00078693          	mv	a3,a5
    3e8c:	00e78863          	beq	a5,a4,3e9c <fatfs_compare_names+0x9c>
    3e90:	0007c583          	lbu	a1,0(a5)
    3e94:	fff78793          	addi	a5,a5,-1
    3e98:	0cc58263          	beq	a1,a2,3f5c <fatfs_compare_names+0x15c>
    3e9c:	fff40793          	addi	a5,s0,-1
    3ea0:	00f907b3          	add	a5,s2,a5
    3ea4:	40878733          	sub	a4,a5,s0
    3ea8:	02000613          	li	a2,32
    3eac:	00078693          	mv	a3,a5
    3eb0:	00e78863          	beq	a5,a4,3ec0 <fatfs_compare_names+0xc0>
    3eb4:	0007c583          	lbu	a1,0(a5)
    3eb8:	fff78793          	addi	a5,a5,-1
    3ebc:	0ac58463          	beq	a1,a2,3f64 <fatfs_compare_names+0x164>
    3ec0:	00000993          	li	s3,0
    3ec4:	06941663          	bne	s0,s1,3f30 <fatfs_compare_names+0x130>
    3ec8:	00040613          	mv	a2,s0
    3ecc:	00090593          	mv	a1,s2
    3ed0:	000a0513          	mv	a0,s4
    3ed4:	fffff097          	auipc	ra,0xfffff
    3ed8:	fd8080e7          	jalr	-40(ra) # 2eac <FileString_StrCmpNoCase>
    3edc:	00153993          	seqz	s3,a0
    3ee0:	0500006f          	j	3f30 <fatfs_compare_names+0x130>
    3ee4:	04f50663          	beq	a0,a5,3f30 <fatfs_compare_names+0x130>
    3ee8:	00148a93          	addi	s5,s1,1
    3eec:	015a0ab3          	add	s5,s4,s5
    3ef0:	00150b13          	addi	s6,a0,1
    3ef4:	000a8513          	mv	a0,s5
    3ef8:	fffff097          	auipc	ra,0xfffff
    3efc:	81c080e7          	jalr	-2020(ra) # 2714 <strlen>
    3f00:	01690b33          	add	s6,s2,s6
    3f04:	00a12623          	sw	a0,12(sp)
    3f08:	000b0513          	mv	a0,s6
    3f0c:	fffff097          	auipc	ra,0xfffff
    3f10:	808080e7          	jalr	-2040(ra) # 2714 <strlen>
    3f14:	00c12603          	lw	a2,12(sp)
    3f18:	00a61c63          	bne	a2,a0,3f30 <fatfs_compare_names+0x130>
    3f1c:	000b0593          	mv	a1,s6
    3f20:	000a8513          	mv	a0,s5
    3f24:	fffff097          	auipc	ra,0xfffff
    3f28:	f88080e7          	jalr	-120(ra) # 2eac <FileString_StrCmpNoCase>
    3f2c:	f40506e3          	beqz	a0,3e78 <fatfs_compare_names+0x78>
    3f30:	02c12083          	lw	ra,44(sp)
    3f34:	02812403          	lw	s0,40(sp)
    3f38:	02412483          	lw	s1,36(sp)
    3f3c:	02012903          	lw	s2,32(sp)
    3f40:	01812a03          	lw	s4,24(sp)
    3f44:	01412a83          	lw	s5,20(sp)
    3f48:	01012b03          	lw	s6,16(sp)
    3f4c:	00098513          	mv	a0,s3
    3f50:	01c12983          	lw	s3,28(sp)
    3f54:	03010113          	addi	sp,sp,48
    3f58:	00008067          	ret
    3f5c:	414684b3          	sub	s1,a3,s4
    3f60:	f29ff06f          	j	3e88 <fatfs_compare_names+0x88>
    3f64:	41268433          	sub	s0,a3,s2
    3f68:	f45ff06f          	j	3eac <fatfs_compare_names+0xac>

00003f6c <_check_file_open>:
    3f6c:	fe010113          	addi	sp,sp,-32
    3f70:	000077b7          	lui	a5,0x7
    3f74:	00812c23          	sw	s0,24(sp)
    3f78:	bf87a403          	lw	s0,-1032(a5) # 6bf8 <_open_file_list>
    3f7c:	00912a23          	sw	s1,20(sp)
    3f80:	01212823          	sw	s2,16(sp)
    3f84:	01312623          	sw	s3,12(sp)
    3f88:	00112e23          	sw	ra,28(sp)
    3f8c:	00050493          	mv	s1,a0
    3f90:	01450913          	addi	s2,a0,20
    3f94:	11850993          	addi	s3,a0,280
    3f98:	02041263          	bnez	s0,3fbc <_check_file_open+0x50>
    3f9c:	00000513          	li	a0,0
    3fa0:	01c12083          	lw	ra,28(sp)
    3fa4:	01812403          	lw	s0,24(sp)
    3fa8:	01412483          	lw	s1,20(sp)
    3fac:	01012903          	lw	s2,16(sp)
    3fb0:	00c12983          	lw	s3,12(sp)
    3fb4:	02010113          	addi	sp,sp,32
    3fb8:	00008067          	ret
    3fbc:	bc440793          	addi	a5,s0,-1084
    3fc0:	02f48663          	beq	s1,a5,3fec <_check_file_open+0x80>
    3fc4:	00090593          	mv	a1,s2
    3fc8:	bd840513          	addi	a0,s0,-1064
    3fcc:	00000097          	auipc	ra,0x0
    3fd0:	e34080e7          	jalr	-460(ra) # 3e00 <fatfs_compare_names>
    3fd4:	00050c63          	beqz	a0,3fec <_check_file_open+0x80>
    3fd8:	00098593          	mv	a1,s3
    3fdc:	cdc40513          	addi	a0,s0,-804
    3fe0:	00000097          	auipc	ra,0x0
    3fe4:	e20080e7          	jalr	-480(ra) # 3e00 <fatfs_compare_names>
    3fe8:	00051663          	bnez	a0,3ff4 <_check_file_open+0x88>
    3fec:	00442403          	lw	s0,4(s0)
    3ff0:	fa9ff06f          	j	3f98 <_check_file_open+0x2c>
    3ff4:	00100513          	li	a0,1
    3ff8:	fa9ff06f          	j	3fa0 <_check_file_open+0x34>

00003ffc <fatfs_get_sfn_display_name>:
    3ffc:	00000713          	li	a4,0
    4000:	00c00613          	li	a2,12
    4004:	02000813          	li	a6,32
    4008:	01900893          	li	a7,25
    400c:	0005c783          	lbu	a5,0(a1)
    4010:	00078463          	beqz	a5,4018 <fatfs_get_sfn_display_name+0x1c>
    4014:	00c71863          	bne	a4,a2,4024 <fatfs_get_sfn_display_name+0x28>
    4018:	00050023          	sb	zero,0(a0)
    401c:	00100513          	li	a0,1
    4020:	00008067          	ret
    4024:	00158593          	addi	a1,a1,1
    4028:	ff0782e3          	beq	a5,a6,400c <fatfs_get_sfn_display_name+0x10>
    402c:	fbf78693          	addi	a3,a5,-65
    4030:	0ff6f693          	zext.b	a3,a3
    4034:	00d8e663          	bltu	a7,a3,4040 <fatfs_get_sfn_display_name+0x44>
    4038:	02078793          	addi	a5,a5,32
    403c:	0ff7f793          	zext.b	a5,a5
    4040:	00f50023          	sb	a5,0(a0)
    4044:	00170713          	addi	a4,a4,1
    4048:	00150513          	addi	a0,a0,1
    404c:	fc1ff06f          	j	400c <fatfs_get_sfn_display_name+0x10>

00004050 <fatfs_fat_init>:
    4050:	ff010113          	addi	sp,sp,-16
    4054:	00812423          	sw	s0,8(sp)
    4058:	00912223          	sw	s1,4(sp)
    405c:	00112623          	sw	ra,12(sp)
    4060:	fff00793          	li	a5,-1
    4064:	25850493          	addi	s1,a0,600
    4068:	00050413          	mv	s0,a0
    406c:	44f52c23          	sw	a5,1112(a0)
    4070:	24052a23          	sw	zero,596(a0)
    4074:	44052e23          	sw	zero,1116(a0)
    4078:	20000613          	li	a2,512
    407c:	00048513          	mv	a0,s1
    4080:	00000593          	li	a1,0
    4084:	ffffe097          	auipc	ra,0xffffe
    4088:	650080e7          	jalr	1616(ra) # 26d4 <memset>
    408c:	25442783          	lw	a5,596(s0)
    4090:	00c12083          	lw	ra,12(sp)
    4094:	24942a23          	sw	s1,596(s0)
    4098:	46042023          	sw	zero,1120(s0)
    409c:	46f42223          	sw	a5,1124(s0)
    40a0:	00812403          	lw	s0,8(sp)
    40a4:	00412483          	lw	s1,4(sp)
    40a8:	01010113          	addi	sp,sp,16
    40ac:	00008067          	ret

000040b0 <fatfs_init>:
    40b0:	fd010113          	addi	sp,sp,-48
    40b4:	02812423          	sw	s0,40(sp)
    40b8:	02112623          	sw	ra,44(sp)
    40bc:	02912223          	sw	s1,36(sp)
    40c0:	03212023          	sw	s2,32(sp)
    40c4:	01312e23          	sw	s3,28(sp)
    40c8:	fff00793          	li	a5,-1
    40cc:	24f52223          	sw	a5,580(a0)
    40d0:	24052423          	sw	zero,584(a0)
    40d4:	02052223          	sw	zero,36(a0)
    40d8:	00050413          	mv	s0,a0
    40dc:	00000097          	auipc	ra,0x0
    40e0:	f74080e7          	jalr	-140(ra) # 4050 <fatfs_fat_init>
    40e4:	03442783          	lw	a5,52(s0)
    40e8:	02079263          	bnez	a5,410c <fatfs_init+0x5c>
    40ec:	fff00513          	li	a0,-1
    40f0:	02c12083          	lw	ra,44(sp)
    40f4:	02812403          	lw	s0,40(sp)
    40f8:	02412483          	lw	s1,36(sp)
    40fc:	02012903          	lw	s2,32(sp)
    4100:	01c12983          	lw	s3,28(sp)
    4104:	03010113          	addi	sp,sp,48
    4108:	00008067          	ret
    410c:	04440593          	addi	a1,s0,68
    4110:	00100613          	li	a2,1
    4114:	00000513          	li	a0,0
    4118:	00b12623          	sw	a1,12(sp)
    411c:	000780e7          	jalr	a5
    4120:	fc0506e3          	beqz	a0,40ec <fatfs_init+0x3c>
    4124:	24042703          	lw	a4,576(s0)
    4128:	ffff07b7          	lui	a5,0xffff0
    412c:	00c12583          	lw	a1,12(sp)
    4130:	00e7f7b3          	and	a5,a5,a4
    4134:	aa550737          	lui	a4,0xaa550
    4138:	00e78663          	beq	a5,a4,4144 <fatfs_init+0x94>
    413c:	ffd00513          	li	a0,-3
    4140:	fb1ff06f          	j	40f0 <fatfs_init+0x40>
    4144:	24245703          	lhu	a4,578(s0)
    4148:	0000b7b7          	lui	a5,0xb
    414c:	a5578793          	addi	a5,a5,-1451 # aa55 <_files+0x31e5>
    4150:	ffc00513          	li	a0,-4
    4154:	f8f71ee3          	bne	a4,a5,40f0 <fatfs_init+0x40>
    4158:	20644783          	lbu	a5,518(s0)
    415c:	00600713          	li	a4,6
    4160:	02f76463          	bltu	a4,a5,4188 <fatfs_init+0xd8>
    4164:	00400713          	li	a4,4
    4168:	00f76663          	bltu	a4,a5,4174 <fatfs_init+0xc4>
    416c:	00000513          	li	a0,0
    4170:	02078663          	beqz	a5,419c <fatfs_init+0xec>
    4174:	20c45503          	lhu	a0,524(s0)
    4178:	20a45783          	lhu	a5,522(s0)
    417c:	01051513          	slli	a0,a0,0x10
    4180:	00f56533          	or	a0,a0,a5
    4184:	0180006f          	j	419c <fatfs_init+0xec>
    4188:	00c00713          	li	a4,12
    418c:	12f76a63          	bltu	a4,a5,42c0 <fatfs_init+0x210>
    4190:	00a00713          	li	a4,10
    4194:	00000513          	li	a0,0
    4198:	fcf76ee3          	bltu	a4,a5,4174 <fatfs_init+0xc4>
    419c:	03442783          	lw	a5,52(s0)
    41a0:	00a42e23          	sw	a0,28(s0)
    41a4:	00100613          	li	a2,1
    41a8:	000780e7          	jalr	a5
    41ac:	f40500e3          	beqz	a0,40ec <fatfs_init+0x3c>
    41b0:	05044783          	lbu	a5,80(s0)
    41b4:	04f44703          	lbu	a4,79(s0)
    41b8:	ffe00513          	li	a0,-2
    41bc:	00879793          	slli	a5,a5,0x8
    41c0:	00e7e7b3          	or	a5,a5,a4
    41c4:	20000713          	li	a4,512
    41c8:	f2e794e3          	bne	a5,a4,40f0 <fatfs_init+0x40>
    41cc:	05644483          	lbu	s1,86(s0)
    41d0:	05544783          	lbu	a5,85(s0)
    41d4:	05144983          	lbu	s3,81(s0)
    41d8:	00849493          	slli	s1,s1,0x8
    41dc:	05a45583          	lhu	a1,90(s0)
    41e0:	00f4e4b3          	or	s1,s1,a5
    41e4:	01340023          	sb	s3,0(s0)
    41e8:	02941423          	sh	s1,40(s0)
    41ec:	05245903          	lhu	s2,82(s0)
    41f0:	05444503          	lbu	a0,84(s0)
    41f4:	00059463          	bnez	a1,41fc <fatfs_init+0x14c>
    41f8:	06842583          	lw	a1,104(s0)
    41fc:	07042783          	lw	a5,112(s0)
    4200:	02b42023          	sw	a1,32(s0)
    4204:	00549493          	slli	s1,s1,0x5
    4208:	00f42423          	sw	a5,8(s0)
    420c:	07445783          	lhu	a5,116(s0)
    4210:	1ff48493          	addi	s1,s1,511
    4214:	4094d493          	srai	s1,s1,0x9
    4218:	00f41c23          	sh	a5,24(s0)
    421c:	fffff097          	auipc	ra,0xfffff
    4220:	bfc080e7          	jalr	-1028(ra) # 2e18 <__mulsi3>
    4224:	00a907b3          	add	a5,s2,a0
    4228:	00f42623          	sw	a5,12(s0)
    422c:	01c42783          	lw	a5,28(s0)
    4230:	24245703          	lhu	a4,578(s0)
    4234:	00942823          	sw	s1,16(s0)
    4238:	00f907b3          	add	a5,s2,a5
    423c:	00f42a23          	sw	a5,20(s0)
    4240:	00f507b3          	add	a5,a0,a5
    4244:	00f42223          	sw	a5,4(s0)
    4248:	0000b7b7          	lui	a5,0xb
    424c:	a5578793          	addi	a5,a5,-1451 # aa55 <_files+0x31e5>
    4250:	eef716e3          	bne	a4,a5,413c <fatfs_init+0x8c>
    4254:	05844783          	lbu	a5,88(s0)
    4258:	05744703          	lbu	a4,87(s0)
    425c:	00879793          	slli	a5,a5,0x8
    4260:	00e7e7b3          	or	a5,a5,a4
    4264:	00079463          	bnez	a5,426c <fatfs_init+0x1bc>
    4268:	06442783          	lw	a5,100(s0)
    426c:	00990933          	add	s2,s2,s1
    4270:	00a90533          	add	a0,s2,a0
    4274:	40a787b3          	sub	a5,a5,a0
    4278:	ffb00513          	li	a0,-5
    427c:	e6098ae3          	beqz	s3,40f0 <fatfs_init+0x40>
    4280:	00078513          	mv	a0,a5
    4284:	00098593          	mv	a1,s3
    4288:	ffffe097          	auipc	ra,0xffffe
    428c:	3a0080e7          	jalr	928(ra) # 2628 <__udivsi3>
    4290:	00001737          	lui	a4,0x1
    4294:	00050793          	mv	a5,a0
    4298:	ff470713          	addi	a4,a4,-12 # ff4 <play_file+0x6c4>
    429c:	ffb00513          	li	a0,-5
    42a0:	e4f778e3          	bgeu	a4,a5,40f0 <fatfs_init+0x40>
    42a4:	00010737          	lui	a4,0x10
    42a8:	ff470713          	addi	a4,a4,-12 # fff4 <_files+0x8784>
    42ac:	02f76663          	bltu	a4,a5,42d8 <fatfs_init+0x228>
    42b0:	00042423          	sw	zero,8(s0)
    42b4:	02042823          	sw	zero,48(s0)
    42b8:	00000513          	li	a0,0
    42bc:	e35ff06f          	j	40f0 <fatfs_init+0x40>
    42c0:	ff278793          	addi	a5,a5,-14
    42c4:	0ff7f793          	zext.b	a5,a5
    42c8:	00100713          	li	a4,1
    42cc:	00000513          	li	a0,0
    42d0:	eaf772e3          	bgeu	a4,a5,4174 <fatfs_init+0xc4>
    42d4:	ec9ff06f          	j	419c <fatfs_init+0xec>
    42d8:	00100793          	li	a5,1
    42dc:	02f42823          	sw	a5,48(s0)
    42e0:	fd9ff06f          	j	42b8 <fatfs_init+0x208>

000042e4 <fl_attach_media>:
    42e4:	000077b7          	lui	a5,0x7
    42e8:	c047a783          	lw	a5,-1020(a5) # 6c04 <_filelib_init>
    42ec:	ff010113          	addi	sp,sp,-16
    42f0:	00812423          	sw	s0,8(sp)
    42f4:	00912223          	sw	s1,4(sp)
    42f8:	00112623          	sw	ra,12(sp)
    42fc:	00050493          	mv	s1,a0
    4300:	00058413          	mv	s0,a1
    4304:	00079663          	bnez	a5,4310 <fl_attach_media+0x2c>
    4308:	fffff097          	auipc	ra,0xfffff
    430c:	fa8080e7          	jalr	-88(ra) # 32b0 <fl_init>
    4310:	00007537          	lui	a0,0x7
    4314:	40850793          	addi	a5,a0,1032 # 7408 <_fs>
    4318:	40850513          	addi	a0,a0,1032
    431c:	0287ac23          	sw	s0,56(a5)
    4320:	0297aa23          	sw	s1,52(a5)
    4324:	00000097          	auipc	ra,0x0
    4328:	d8c080e7          	jalr	-628(ra) # 40b0 <fatfs_init>
    432c:	00050413          	mv	s0,a0
    4330:	02050863          	beqz	a0,4360 <fl_attach_media+0x7c>
    4334:	00050593          	mv	a1,a0
    4338:	00006537          	lui	a0,0x6
    433c:	4e050513          	addi	a0,a0,1248 # 64e0 <LEDS+0x148>
    4340:	fffff097          	auipc	ra,0xfffff
    4344:	9a8080e7          	jalr	-1624(ra) # 2ce8 <printf>
    4348:	00c12083          	lw	ra,12(sp)
    434c:	00040513          	mv	a0,s0
    4350:	00812403          	lw	s0,8(sp)
    4354:	00412483          	lw	s1,4(sp)
    4358:	01010113          	addi	sp,sp,16
    435c:	00008067          	ret
    4360:	000077b7          	lui	a5,0x7
    4364:	00100713          	li	a4,1
    4368:	c0e7a023          	sw	a4,-1024(a5) # 6c00 <_filelib_valid>
    436c:	fddff06f          	j	4348 <fl_attach_media+0x64>

00004370 <fatfs_fat_purge>:
    4370:	ff010113          	addi	sp,sp,-16
    4374:	00812423          	sw	s0,8(sp)
    4378:	25452403          	lw	s0,596(a0)
    437c:	00912223          	sw	s1,4(sp)
    4380:	00112623          	sw	ra,12(sp)
    4384:	00050493          	mv	s1,a0
    4388:	00041663          	bnez	s0,4394 <fatfs_fat_purge+0x24>
    438c:	00100513          	li	a0,1
    4390:	0280006f          	j	43b8 <fatfs_fat_purge+0x48>
    4394:	20442783          	lw	a5,516(s0)
    4398:	00079663          	bnez	a5,43a4 <fatfs_fat_purge+0x34>
    439c:	20c42403          	lw	s0,524(s0)
    43a0:	fe9ff06f          	j	4388 <fatfs_fat_purge+0x18>
    43a4:	00040593          	mv	a1,s0
    43a8:	00048513          	mv	a0,s1
    43ac:	fffff097          	auipc	ra,0xfffff
    43b0:	b9c080e7          	jalr	-1124(ra) # 2f48 <fatfs_fat_writeback>
    43b4:	fe0514e3          	bnez	a0,439c <fatfs_fat_purge+0x2c>
    43b8:	00c12083          	lw	ra,12(sp)
    43bc:	00812403          	lw	s0,8(sp)
    43c0:	00412483          	lw	s1,4(sp)
    43c4:	01010113          	addi	sp,sp,16
    43c8:	00008067          	ret

000043cc <fatfs_find_next_cluster>:
    43cc:	ff010113          	addi	sp,sp,-16
    43d0:	00812423          	sw	s0,8(sp)
    43d4:	01212023          	sw	s2,0(sp)
    43d8:	00112623          	sw	ra,12(sp)
    43dc:	00912223          	sw	s1,4(sp)
    43e0:	00050913          	mv	s2,a0
    43e4:	00200413          	li	s0,2
    43e8:	00058463          	beqz	a1,43f0 <fatfs_find_next_cluster+0x24>
    43ec:	00058413          	mv	s0,a1
    43f0:	03092783          	lw	a5,48(s2)
    43f4:	00745493          	srli	s1,s0,0x7
    43f8:	00079463          	bnez	a5,4400 <fatfs_find_next_cluster+0x34>
    43fc:	00845493          	srli	s1,s0,0x8
    4400:	01492583          	lw	a1,20(s2)
    4404:	00090513          	mv	a0,s2
    4408:	00b485b3          	add	a1,s1,a1
    440c:	fffff097          	auipc	ra,0xfffff
    4410:	bbc080e7          	jalr	-1092(ra) # 2fc8 <fatfs_fat_read_sector>
    4414:	00050793          	mv	a5,a0
    4418:	fff00513          	li	a0,-1
    441c:	04078a63          	beqz	a5,4470 <fatfs_find_next_cluster+0xa4>
    4420:	03092703          	lw	a4,48(s2)
    4424:	2087a783          	lw	a5,520(a5)
    4428:	06071063          	bnez	a4,4488 <fatfs_find_next_cluster+0xbc>
    442c:	00849493          	slli	s1,s1,0x8
    4430:	40940433          	sub	s0,s0,s1
    4434:	00010737          	lui	a4,0x10
    4438:	00141413          	slli	s0,s0,0x1
    443c:	ffe70713          	addi	a4,a4,-2 # fffe <_files+0x878e>
    4440:	00e47433          	and	s0,s0,a4
    4444:	008787b3          	add	a5,a5,s0
    4448:	0017c503          	lbu	a0,1(a5)
    444c:	0007c783          	lbu	a5,0(a5)
    4450:	00851513          	slli	a0,a0,0x8
    4454:	00f50533          	add	a0,a0,a5
    4458:	ffff07b7          	lui	a5,0xffff0
    445c:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    4460:	00f507b3          	add	a5,a0,a5
    4464:	00700713          	li	a4,7
    4468:	00f76463          	bltu	a4,a5,4470 <fatfs_find_next_cluster+0xa4>
    446c:	fff00513          	li	a0,-1
    4470:	00c12083          	lw	ra,12(sp)
    4474:	00812403          	lw	s0,8(sp)
    4478:	00412483          	lw	s1,4(sp)
    447c:	00012903          	lw	s2,0(sp)
    4480:	01010113          	addi	sp,sp,16
    4484:	00008067          	ret
    4488:	00749493          	slli	s1,s1,0x7
    448c:	40940433          	sub	s0,s0,s1
    4490:	00010737          	lui	a4,0x10
    4494:	ffc70713          	addi	a4,a4,-4 # fffc <_files+0x878c>
    4498:	00241413          	slli	s0,s0,0x2
    449c:	00e47433          	and	s0,s0,a4
    44a0:	008787b3          	add	a5,a5,s0
    44a4:	0037c503          	lbu	a0,3(a5)
    44a8:	0027c703          	lbu	a4,2(a5)
    44ac:	01851513          	slli	a0,a0,0x18
    44b0:	01071713          	slli	a4,a4,0x10
    44b4:	00e50533          	add	a0,a0,a4
    44b8:	0007c703          	lbu	a4,0(a5)
    44bc:	0017c783          	lbu	a5,1(a5)
    44c0:	00e50533          	add	a0,a0,a4
    44c4:	00879793          	slli	a5,a5,0x8
    44c8:	00f50533          	add	a0,a0,a5
    44cc:	00451513          	slli	a0,a0,0x4
    44d0:	00455513          	srli	a0,a0,0x4
    44d4:	f00007b7          	lui	a5,0xf0000
    44d8:	f85ff06f          	j	445c <fatfs_find_next_cluster+0x90>

000044dc <fatfs_sector_reader>:
    44dc:	03052783          	lw	a5,48(a0)
    44e0:	fd010113          	addi	sp,sp,-48
    44e4:	02812423          	sw	s0,40(sp)
    44e8:	03212023          	sw	s2,32(sp)
    44ec:	01312e23          	sw	s3,28(sp)
    44f0:	02112623          	sw	ra,44(sp)
    44f4:	02912223          	sw	s1,36(sp)
    44f8:	01412c23          	sw	s4,24(sp)
    44fc:	01512a23          	sw	s5,20(sp)
    4500:	00f5e7b3          	or	a5,a1,a5
    4504:	00050413          	mv	s0,a0
    4508:	00060913          	mv	s2,a2
    450c:	00068993          	mv	s3,a3
    4510:	06079c63          	bnez	a5,4588 <fatfs_sector_reader+0xac>
    4514:	01052783          	lw	a5,16(a0)
    4518:	02f66663          	bltu	a2,a5,4544 <fatfs_sector_reader+0x68>
    451c:	00000513          	li	a0,0
    4520:	02c12083          	lw	ra,44(sp)
    4524:	02812403          	lw	s0,40(sp)
    4528:	02412483          	lw	s1,36(sp)
    452c:	02012903          	lw	s2,32(sp)
    4530:	01c12983          	lw	s3,28(sp)
    4534:	01812a03          	lw	s4,24(sp)
    4538:	01412a83          	lw	s5,20(sp)
    453c:	03010113          	addi	sp,sp,48
    4540:	00008067          	ret
    4544:	01c52503          	lw	a0,28(a0)
    4548:	00c42783          	lw	a5,12(s0)
    454c:	00f50533          	add	a0,a0,a5
    4550:	01250533          	add	a0,a0,s2
    4554:	0a098263          	beqz	s3,45f8 <fatfs_sector_reader+0x11c>
    4558:	03442783          	lw	a5,52(s0)
    455c:	00100613          	li	a2,1
    4560:	00098593          	mv	a1,s3
    4564:	02812403          	lw	s0,40(sp)
    4568:	02c12083          	lw	ra,44(sp)
    456c:	02412483          	lw	s1,36(sp)
    4570:	02012903          	lw	s2,32(sp)
    4574:	01c12983          	lw	s3,28(sp)
    4578:	01812a03          	lw	s4,24(sp)
    457c:	01412a83          	lw	s5,20(sp)
    4580:	03010113          	addi	sp,sp,48
    4584:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    4588:	00058493          	mv	s1,a1
    458c:	00054583          	lbu	a1,0(a0)
    4590:	00060513          	mv	a0,a2
    4594:	00000a93          	li	s5,0
    4598:	00b12623          	sw	a1,12(sp)
    459c:	ffffe097          	auipc	ra,0xffffe
    45a0:	08c080e7          	jalr	140(ra) # 2628 <__udivsi3>
    45a4:	00c12583          	lw	a1,12(sp)
    45a8:	00050a13          	mv	s4,a0
    45ac:	00090513          	mv	a0,s2
    45b0:	ffffe097          	auipc	ra,0xffffe
    45b4:	0c0080e7          	jalr	192(ra) # 2670 <__umodsi3>
    45b8:	00050913          	mv	s2,a0
    45bc:	034a9063          	bne	s5,s4,45dc <fatfs_sector_reader+0x100>
    45c0:	fff00793          	li	a5,-1
    45c4:	f4f48ce3          	beq	s1,a5,451c <fatfs_sector_reader+0x40>
    45c8:	00048593          	mv	a1,s1
    45cc:	00040513          	mv	a0,s0
    45d0:	fffff097          	auipc	ra,0xfffff
    45d4:	ba4080e7          	jalr	-1116(ra) # 3174 <fatfs_lba_of_cluster>
    45d8:	f79ff06f          	j	4550 <fatfs_sector_reader+0x74>
    45dc:	00048593          	mv	a1,s1
    45e0:	00040513          	mv	a0,s0
    45e4:	00000097          	auipc	ra,0x0
    45e8:	de8080e7          	jalr	-536(ra) # 43cc <fatfs_find_next_cluster>
    45ec:	00050493          	mv	s1,a0
    45f0:	001a8a93          	addi	s5,s5,1
    45f4:	fc9ff06f          	j	45bc <fatfs_sector_reader+0xe0>
    45f8:	24442783          	lw	a5,580(s0)
    45fc:	00a78c63          	beq	a5,a0,4614 <fatfs_sector_reader+0x138>
    4600:	03442783          	lw	a5,52(s0)
    4604:	24a42223          	sw	a0,580(s0)
    4608:	00100613          	li	a2,1
    460c:	04440593          	addi	a1,s0,68
    4610:	f55ff06f          	j	4564 <fatfs_sector_reader+0x88>
    4614:	00100513          	li	a0,1
    4618:	f09ff06f          	j	4520 <fatfs_sector_reader+0x44>

0000461c <fatfs_get_file_entry>:
    461c:	eb010113          	addi	sp,sp,-336
    4620:	14812423          	sw	s0,328(sp)
    4624:	01810413          	addi	s0,sp,24
    4628:	14912223          	sw	s1,324(sp)
    462c:	15212023          	sw	s2,320(sp)
    4630:	13312e23          	sw	s3,316(sp)
    4634:	13412c23          	sw	s4,312(sp)
    4638:	13512a23          	sw	s5,308(sp)
    463c:	13612823          	sw	s6,304(sp)
    4640:	14112623          	sw	ra,332(sp)
    4644:	13712623          	sw	s7,300(sp)
    4648:	13812423          	sw	s8,296(sp)
    464c:	13912223          	sw	s9,292(sp)
    4650:	13a12023          	sw	s10,288(sp)
    4654:	00050493          	mv	s1,a0
    4658:	00058a93          	mv	s5,a1
    465c:	00060913          	mv	s2,a2
    4660:	00068993          	mv	s3,a3
    4664:	10010ea3          	sb	zero,285(sp)
    4668:	11c10a13          	addi	s4,sp,284
    466c:	00040b13          	mv	s6,s0
    4670:	00040513          	mv	a0,s0
    4674:	00d00613          	li	a2,13
    4678:	00000593          	li	a1,0
    467c:	00d40413          	addi	s0,s0,13
    4680:	ffffe097          	auipc	ra,0xffffe
    4684:	054080e7          	jalr	84(ra) # 26d4 <memset>
    4688:	ff4414e3          	bne	s0,s4,4670 <fatfs_get_file_entry+0x54>
    468c:	00000a13          	li	s4,0
    4690:	24448c13          	addi	s8,s1,580
    4694:	00800c93          	li	s9,8
    4698:	02000b93          	li	s7,32
    469c:	02e00d13          	li	s10,46
    46a0:	00000693          	li	a3,0
    46a4:	000a0613          	mv	a2,s4
    46a8:	000a8593          	mv	a1,s5
    46ac:	00048513          	mv	a0,s1
    46b0:	00000097          	auipc	ra,0x0
    46b4:	e2c080e7          	jalr	-468(ra) # 44dc <fatfs_sector_reader>
    46b8:	16050463          	beqz	a0,4820 <fatfs_get_file_entry+0x204>
    46bc:	04448413          	addi	s0,s1,68
    46c0:	00040513          	mv	a0,s0
    46c4:	fffff097          	auipc	ra,0xfffff
    46c8:	f08080e7          	jalr	-248(ra) # 35cc <fatfs_entry_lfn_text>
    46cc:	02050263          	beqz	a0,46f0 <fatfs_get_file_entry+0xd4>
    46d0:	00040593          	mv	a1,s0
    46d4:	000b0513          	mv	a0,s6
    46d8:	fffff097          	auipc	ra,0xfffff
    46dc:	dec080e7          	jalr	-532(ra) # 34c4 <fatfs_lfn_cache_entry>
    46e0:	02040413          	addi	s0,s0,32
    46e4:	fd841ee3          	bne	s0,s8,46c0 <fatfs_get_file_entry+0xa4>
    46e8:	001a0a13          	addi	s4,s4,1
    46ec:	fb5ff06f          	j	46a0 <fatfs_get_file_entry+0x84>
    46f0:	00040513          	mv	a0,s0
    46f4:	fffff097          	auipc	ra,0xfffff
    46f8:	eec080e7          	jalr	-276(ra) # 35e0 <fatfs_entry_lfn_invalid>
    46fc:	00050663          	beqz	a0,4708 <fatfs_get_file_entry+0xec>
    4700:	10010ea3          	sb	zero,285(sp)
    4704:	fddff06f          	j	46e0 <fatfs_get_file_entry+0xc4>
    4708:	00040593          	mv	a1,s0
    470c:	000b0513          	mv	a0,s6
    4710:	fffff097          	auipc	ra,0xfffff
    4714:	f08080e7          	jalr	-248(ra) # 3618 <fatfs_entry_lfn_exists>
    4718:	06050863          	beqz	a0,4788 <fatfs_get_file_entry+0x16c>
    471c:	000b0513          	mv	a0,s6
    4720:	fffff097          	auipc	ra,0xfffff
    4724:	e70080e7          	jalr	-400(ra) # 3590 <fatfs_lfn_cache_get>
    4728:	00090593          	mv	a1,s2
    472c:	fffff097          	auipc	ra,0xfffff
    4730:	6d4080e7          	jalr	1748(ra) # 3e00 <fatfs_compare_names>
    4734:	fc0506e3          	beqz	a0,4700 <fatfs_get_file_entry+0xe4>
    4738:	02000613          	li	a2,32
    473c:	00040593          	mv	a1,s0
    4740:	00098513          	mv	a0,s3
    4744:	ffffe097          	auipc	ra,0xffffe
    4748:	fac080e7          	jalr	-84(ra) # 26f0 <memcpy>
    474c:	00100513          	li	a0,1
    4750:	14c12083          	lw	ra,332(sp)
    4754:	14812403          	lw	s0,328(sp)
    4758:	14412483          	lw	s1,324(sp)
    475c:	14012903          	lw	s2,320(sp)
    4760:	13c12983          	lw	s3,316(sp)
    4764:	13812a03          	lw	s4,312(sp)
    4768:	13412a83          	lw	s5,308(sp)
    476c:	13012b03          	lw	s6,304(sp)
    4770:	12c12b83          	lw	s7,300(sp)
    4774:	12812c03          	lw	s8,296(sp)
    4778:	12412c83          	lw	s9,292(sp)
    477c:	12012d03          	lw	s10,288(sp)
    4780:	15010113          	addi	sp,sp,336
    4784:	00008067          	ret
    4788:	00040513          	mv	a0,s0
    478c:	fffff097          	auipc	ra,0xfffff
    4790:	ed4080e7          	jalr	-300(ra) # 3660 <fatfs_entry_sfn_only>
    4794:	f40506e3          	beqz	a0,46e0 <fatfs_get_file_entry+0xc4>
    4798:	00d00613          	li	a2,13
    479c:	00000593          	li	a1,0
    47a0:	00810513          	addi	a0,sp,8
    47a4:	ffffe097          	auipc	ra,0xffffe
    47a8:	f30080e7          	jalr	-208(ra) # 26d4 <memset>
    47ac:	00000793          	li	a5,0
    47b0:	00f406b3          	add	a3,s0,a5
    47b4:	0006c683          	lbu	a3,0(a3)
    47b8:	00810713          	addi	a4,sp,8
    47bc:	00f70733          	add	a4,a4,a5
    47c0:	00d70023          	sb	a3,0(a4)
    47c4:	00178793          	addi	a5,a5,1
    47c8:	ff9794e3          	bne	a5,s9,47b0 <fatfs_get_file_entry+0x194>
    47cc:	00844783          	lbu	a5,8(s0)
    47d0:	00944683          	lbu	a3,9(s0)
    47d4:	00100713          	li	a4,1
    47d8:	00f108a3          	sb	a5,17(sp)
    47dc:	00d10923          	sb	a3,18(sp)
    47e0:	01769663          	bne	a3,s7,47ec <fatfs_get_file_entry+0x1d0>
    47e4:	fe078793          	addi	a5,a5,-32
    47e8:	00f03733          	snez	a4,a5
    47ec:	00a44783          	lbu	a5,10(s0)
    47f0:	00f109a3          	sb	a5,19(sp)
    47f4:	01779663          	bne	a5,s7,4800 <fatfs_get_file_entry+0x1e4>
    47f8:	02000793          	li	a5,32
    47fc:	00070a63          	beqz	a4,4810 <fatfs_get_file_entry+0x1f4>
    4800:	00814703          	lbu	a4,8(sp)
    4804:	02e00793          	li	a5,46
    4808:	01a71463          	bne	a4,s10,4810 <fatfs_get_file_entry+0x1f4>
    480c:	02000793          	li	a5,32
    4810:	00f10823          	sb	a5,16(sp)
    4814:	00090593          	mv	a1,s2
    4818:	00810513          	addi	a0,sp,8
    481c:	f11ff06f          	j	472c <fatfs_get_file_entry+0x110>
    4820:	00000513          	li	a0,0
    4824:	f2dff06f          	j	4750 <fatfs_get_file_entry+0x134>

00004828 <_open_directory>:
    4828:	eb010113          	addi	sp,sp,-336
    482c:	13512a23          	sw	s5,308(sp)
    4830:	00007ab7          	lui	s5,0x7
    4834:	408a8793          	addi	a5,s5,1032 # 7408 <_fs>
    4838:	14812423          	sw	s0,328(sp)
    483c:	14912223          	sw	s1,324(sp)
    4840:	15212023          	sw	s2,320(sp)
    4844:	13312e23          	sw	s3,316(sp)
    4848:	13412c23          	sw	s4,312(sp)
    484c:	13612823          	sw	s6,304(sp)
    4850:	0087a403          	lw	s0,8(a5)
    4854:	14112623          	sw	ra,332(sp)
    4858:	00050a13          	mv	s4,a0
    485c:	00058913          	mv	s2,a1
    4860:	fffff097          	auipc	ra,0xfffff
    4864:	350080e7          	jalr	848(ra) # 3bb0 <fatfs_total_path_levels>
    4868:	00050993          	mv	s3,a0
    486c:	00000493          	li	s1,0
    4870:	fff00b13          	li	s6,-1
    4874:	0099d863          	bge	s3,s1,4884 <_open_directory+0x5c>
    4878:	00892023          	sw	s0,0(s2)
    487c:	00100513          	li	a0,1
    4880:	0240006f          	j	48a4 <_open_directory+0x7c>
    4884:	10400693          	li	a3,260
    4888:	02c10613          	addi	a2,sp,44
    488c:	00048593          	mv	a1,s1
    4890:	000a0513          	mv	a0,s4
    4894:	fffff097          	auipc	ra,0xfffff
    4898:	390080e7          	jalr	912(ra) # 3c24 <fatfs_get_substring>
    489c:	03651863          	bne	a0,s6,48cc <_open_directory+0xa4>
    48a0:	00000513          	li	a0,0
    48a4:	14c12083          	lw	ra,332(sp)
    48a8:	14812403          	lw	s0,328(sp)
    48ac:	14412483          	lw	s1,324(sp)
    48b0:	14012903          	lw	s2,320(sp)
    48b4:	13c12983          	lw	s3,316(sp)
    48b8:	13812a03          	lw	s4,312(sp)
    48bc:	13412a83          	lw	s5,308(sp)
    48c0:	13012b03          	lw	s6,304(sp)
    48c4:	15010113          	addi	sp,sp,336
    48c8:	00008067          	ret
    48cc:	00c10693          	addi	a3,sp,12
    48d0:	02c10613          	addi	a2,sp,44
    48d4:	00040593          	mv	a1,s0
    48d8:	408a8513          	addi	a0,s5,1032
    48dc:	00000097          	auipc	ra,0x0
    48e0:	d40080e7          	jalr	-704(ra) # 461c <fatfs_get_file_entry>
    48e4:	fa050ee3          	beqz	a0,48a0 <_open_directory+0x78>
    48e8:	00c10513          	addi	a0,sp,12
    48ec:	fffff097          	auipc	ra,0xfffff
    48f0:	db0080e7          	jalr	-592(ra) # 369c <fatfs_entry_is_dir>
    48f4:	fa0506e3          	beqz	a0,48a0 <_open_directory+0x78>
    48f8:	02015403          	lhu	s0,32(sp)
    48fc:	02615783          	lhu	a5,38(sp)
    4900:	00148493          	addi	s1,s1,1
    4904:	01041413          	slli	s0,s0,0x10
    4908:	00f40433          	add	s0,s0,a5
    490c:	f69ff06f          	j	4874 <_open_directory+0x4c>

00004910 <fl_opendir>:
    4910:	fe010113          	addi	sp,sp,-32
    4914:	fff00793          	li	a5,-1
    4918:	00f12623          	sw	a5,12(sp)
    491c:	000077b7          	lui	a5,0x7
    4920:	c047a783          	lw	a5,-1020(a5) # 6c04 <_filelib_init>
    4924:	00812c23          	sw	s0,24(sp)
    4928:	01212823          	sw	s2,16(sp)
    492c:	00112e23          	sw	ra,28(sp)
    4930:	00912a23          	sw	s1,20(sp)
    4934:	00050913          	mv	s2,a0
    4938:	00058413          	mv	s0,a1
    493c:	00079663          	bnez	a5,4948 <fl_opendir+0x38>
    4940:	fffff097          	auipc	ra,0xfffff
    4944:	970080e7          	jalr	-1680(ra) # 32b0 <fl_init>
    4948:	000074b7          	lui	s1,0x7
    494c:	40848793          	addi	a5,s1,1032 # 7408 <_fs>
    4950:	03c7a783          	lw	a5,60(a5)
    4954:	40848493          	addi	s1,s1,1032
    4958:	00078463          	beqz	a5,4960 <fl_opendir+0x50>
    495c:	000780e7          	jalr	a5
    4960:	00090513          	mv	a0,s2
    4964:	fffff097          	auipc	ra,0xfffff
    4968:	24c080e7          	jalr	588(ra) # 3bb0 <fatfs_total_path_levels>
    496c:	fff00793          	li	a5,-1
    4970:	02f51063          	bne	a0,a5,4990 <fl_opendir+0x80>
    4974:	0084a783          	lw	a5,8(s1)
    4978:	00f12623          	sw	a5,12(sp)
    497c:	00c12783          	lw	a5,12(sp)
    4980:	00042023          	sw	zero,0(s0)
    4984:	00040423          	sb	zero,8(s0)
    4988:	00f42223          	sw	a5,4(s0)
    498c:	0180006f          	j	49a4 <fl_opendir+0x94>
    4990:	00c10593          	addi	a1,sp,12
    4994:	00090513          	mv	a0,s2
    4998:	00000097          	auipc	ra,0x0
    499c:	e90080e7          	jalr	-368(ra) # 4828 <_open_directory>
    49a0:	fc051ee3          	bnez	a0,497c <fl_opendir+0x6c>
    49a4:	0404a783          	lw	a5,64(s1)
    49a8:	00078463          	beqz	a5,49b0 <fl_opendir+0xa0>
    49ac:	000780e7          	jalr	a5
    49b0:	00c12703          	lw	a4,12(sp)
    49b4:	fff00793          	li	a5,-1
    49b8:	00f71463          	bne	a4,a5,49c0 <fl_opendir+0xb0>
    49bc:	00000413          	li	s0,0
    49c0:	01c12083          	lw	ra,28(sp)
    49c4:	00040513          	mv	a0,s0
    49c8:	01812403          	lw	s0,24(sp)
    49cc:	01412483          	lw	s1,20(sp)
    49d0:	01012903          	lw	s2,16(sp)
    49d4:	02010113          	addi	sp,sp,32
    49d8:	00008067          	ret

000049dc <_open_file>:
    49dc:	fc010113          	addi	sp,sp,-64
    49e0:	03312623          	sw	s3,44(sp)
    49e4:	02112e23          	sw	ra,60(sp)
    49e8:	02812c23          	sw	s0,56(sp)
    49ec:	02912a23          	sw	s1,52(sp)
    49f0:	03212823          	sw	s2,48(sp)
    49f4:	00050993          	mv	s3,a0
    49f8:	ffffe097          	auipc	ra,0xffffe
    49fc:	6c0080e7          	jalr	1728(ra) # 30b8 <_allocate_file>
    4a00:	06050463          	beqz	a0,4a68 <_open_file+0x8c>
    4a04:	01450913          	addi	s2,a0,20
    4a08:	00050413          	mv	s0,a0
    4a0c:	10400613          	li	a2,260
    4a10:	00000593          	li	a1,0
    4a14:	00090513          	mv	a0,s2
    4a18:	ffffe097          	auipc	ra,0xffffe
    4a1c:	cbc080e7          	jalr	-836(ra) # 26d4 <memset>
    4a20:	11840493          	addi	s1,s0,280
    4a24:	10400613          	li	a2,260
    4a28:	00000593          	li	a1,0
    4a2c:	00048513          	mv	a0,s1
    4a30:	ffffe097          	auipc	ra,0xffffe
    4a34:	ca4080e7          	jalr	-860(ra) # 26d4 <memset>
    4a38:	10400713          	li	a4,260
    4a3c:	00048693          	mv	a3,s1
    4a40:	10400613          	li	a2,260
    4a44:	00090593          	mv	a1,s2
    4a48:	00098513          	mv	a0,s3
    4a4c:	fffff097          	auipc	ra,0xfffff
    4a50:	2cc080e7          	jalr	716(ra) # 3d18 <fatfs_split_path>
    4a54:	fff00793          	li	a5,-1
    4a58:	02f51a63          	bne	a0,a5,4a8c <_open_file+0xb0>
    4a5c:	00040513          	mv	a0,s0
    4a60:	ffffe097          	auipc	ra,0xffffe
    4a64:	6cc080e7          	jalr	1740(ra) # 312c <_free_file>
    4a68:	00000413          	li	s0,0
    4a6c:	03c12083          	lw	ra,60(sp)
    4a70:	00040513          	mv	a0,s0
    4a74:	03812403          	lw	s0,56(sp)
    4a78:	03412483          	lw	s1,52(sp)
    4a7c:	03012903          	lw	s2,48(sp)
    4a80:	02c12983          	lw	s3,44(sp)
    4a84:	04010113          	addi	sp,sp,64
    4a88:	00008067          	ret
    4a8c:	00040513          	mv	a0,s0
    4a90:	fffff097          	auipc	ra,0xfffff
    4a94:	4dc080e7          	jalr	1244(ra) # 3f6c <_check_file_open>
    4a98:	fc0512e3          	bnez	a0,4a5c <_open_file+0x80>
    4a9c:	01444783          	lbu	a5,20(s0)
    4aa0:	08079e63          	bnez	a5,4b3c <_open_file+0x160>
    4aa4:	000077b7          	lui	a5,0x7
    4aa8:	4107a783          	lw	a5,1040(a5) # 7410 <_fs+0x8>
    4aac:	00f42023          	sw	a5,0(s0)
    4ab0:	00042583          	lw	a1,0(s0)
    4ab4:	00048613          	mv	a2,s1
    4ab8:	000074b7          	lui	s1,0x7
    4abc:	00010693          	mv	a3,sp
    4ac0:	40848513          	addi	a0,s1,1032 # 7408 <_fs>
    4ac4:	00000097          	auipc	ra,0x0
    4ac8:	b58080e7          	jalr	-1192(ra) # 461c <fatfs_get_file_entry>
    4acc:	f80508e3          	beqz	a0,4a5c <_open_file+0x80>
    4ad0:	00010513          	mv	a0,sp
    4ad4:	fffff097          	auipc	ra,0xfffff
    4ad8:	bd8080e7          	jalr	-1064(ra) # 36ac <fatfs_entry_is_file>
    4adc:	f80500e3          	beqz	a0,4a5c <_open_file+0x80>
    4ae0:	00b00613          	li	a2,11
    4ae4:	00010593          	mv	a1,sp
    4ae8:	21c40513          	addi	a0,s0,540
    4aec:	ffffe097          	auipc	ra,0xffffe
    4af0:	c04080e7          	jalr	-1020(ra) # 26f0 <memcpy>
    4af4:	01c12783          	lw	a5,28(sp)
    4af8:	01a15703          	lhu	a4,26(sp)
    4afc:	00042423          	sw	zero,8(s0)
    4b00:	00f42623          	sw	a5,12(s0)
    4b04:	01415783          	lhu	a5,20(sp)
    4b08:	42042a23          	sw	zero,1076(s0)
    4b0c:	00042823          	sw	zero,16(s0)
    4b10:	01079793          	slli	a5,a5,0x10
    4b14:	00e787b3          	add	a5,a5,a4
    4b18:	00f42223          	sw	a5,4(s0)
    4b1c:	fff00793          	li	a5,-1
    4b20:	42f42823          	sw	a5,1072(s0)
    4b24:	22f42423          	sw	a5,552(s0)
    4b28:	22f42623          	sw	a5,556(s0)
    4b2c:	40848513          	addi	a0,s1,1032
    4b30:	00000097          	auipc	ra,0x0
    4b34:	840080e7          	jalr	-1984(ra) # 4370 <fatfs_fat_purge>
    4b38:	f35ff06f          	j	4a6c <_open_file+0x90>
    4b3c:	00040593          	mv	a1,s0
    4b40:	00090513          	mv	a0,s2
    4b44:	00000097          	auipc	ra,0x0
    4b48:	ce4080e7          	jalr	-796(ra) # 4828 <_open_directory>
    4b4c:	f60512e3          	bnez	a0,4ab0 <_open_file+0xd4>
    4b50:	f0dff06f          	j	4a5c <_open_file+0x80>

00004b54 <fatfs_sfn_exists>:
    4b54:	fe010113          	addi	sp,sp,-32
    4b58:	00912a23          	sw	s1,20(sp)
    4b5c:	01212823          	sw	s2,16(sp)
    4b60:	01312623          	sw	s3,12(sp)
    4b64:	01412423          	sw	s4,8(sp)
    4b68:	01512223          	sw	s5,4(sp)
    4b6c:	00112e23          	sw	ra,28(sp)
    4b70:	00812c23          	sw	s0,24(sp)
    4b74:	00050493          	mv	s1,a0
    4b78:	00058993          	mv	s3,a1
    4b7c:	00060a13          	mv	s4,a2
    4b80:	00000913          	li	s2,0
    4b84:	24450a93          	addi	s5,a0,580
    4b88:	00000693          	li	a3,0
    4b8c:	00090613          	mv	a2,s2
    4b90:	00098593          	mv	a1,s3
    4b94:	00048513          	mv	a0,s1
    4b98:	00000097          	auipc	ra,0x0
    4b9c:	944080e7          	jalr	-1724(ra) # 44dc <fatfs_sector_reader>
    4ba0:	06050263          	beqz	a0,4c04 <fatfs_sfn_exists+0xb0>
    4ba4:	04448413          	addi	s0,s1,68
    4ba8:	00040513          	mv	a0,s0
    4bac:	fffff097          	auipc	ra,0xfffff
    4bb0:	a20080e7          	jalr	-1504(ra) # 35cc <fatfs_entry_lfn_text>
    4bb4:	02051e63          	bnez	a0,4bf0 <fatfs_sfn_exists+0x9c>
    4bb8:	00040513          	mv	a0,s0
    4bbc:	fffff097          	auipc	ra,0xfffff
    4bc0:	a24080e7          	jalr	-1500(ra) # 35e0 <fatfs_entry_lfn_invalid>
    4bc4:	02051663          	bnez	a0,4bf0 <fatfs_sfn_exists+0x9c>
    4bc8:	00040513          	mv	a0,s0
    4bcc:	fffff097          	auipc	ra,0xfffff
    4bd0:	a94080e7          	jalr	-1388(ra) # 3660 <fatfs_entry_sfn_only>
    4bd4:	00050e63          	beqz	a0,4bf0 <fatfs_sfn_exists+0x9c>
    4bd8:	00b00613          	li	a2,11
    4bdc:	000a0593          	mv	a1,s4
    4be0:	00040513          	mv	a0,s0
    4be4:	ffffe097          	auipc	ra,0xffffe
    4be8:	b50080e7          	jalr	-1200(ra) # 2734 <strncmp>
    4bec:	00050a63          	beqz	a0,4c00 <fatfs_sfn_exists+0xac>
    4bf0:	02040413          	addi	s0,s0,32
    4bf4:	fb541ae3          	bne	s0,s5,4ba8 <fatfs_sfn_exists+0x54>
    4bf8:	00190913          	addi	s2,s2,1
    4bfc:	f8dff06f          	j	4b88 <fatfs_sfn_exists+0x34>
    4c00:	00100513          	li	a0,1
    4c04:	01c12083          	lw	ra,28(sp)
    4c08:	01812403          	lw	s0,24(sp)
    4c0c:	01412483          	lw	s1,20(sp)
    4c10:	01012903          	lw	s2,16(sp)
    4c14:	00c12983          	lw	s3,12(sp)
    4c18:	00812a03          	lw	s4,8(sp)
    4c1c:	00412a83          	lw	s5,4(sp)
    4c20:	02010113          	addi	sp,sp,32
    4c24:	00008067          	ret

00004c28 <fatfs_update_file_length>:
    4c28:	03852783          	lw	a5,56(a0)
    4c2c:	14078e63          	beqz	a5,4d88 <fatfs_update_file_length+0x160>
    4c30:	fd010113          	addi	sp,sp,-48
    4c34:	02912223          	sw	s1,36(sp)
    4c38:	03212023          	sw	s2,32(sp)
    4c3c:	01312e23          	sw	s3,28(sp)
    4c40:	01412c23          	sw	s4,24(sp)
    4c44:	01512a23          	sw	s5,20(sp)
    4c48:	01612823          	sw	s6,16(sp)
    4c4c:	01712623          	sw	s7,12(sp)
    4c50:	02112623          	sw	ra,44(sp)
    4c54:	02812423          	sw	s0,40(sp)
    4c58:	00050493          	mv	s1,a0
    4c5c:	00058a13          	mv	s4,a1
    4c60:	00060a93          	mv	s5,a2
    4c64:	00068913          	mv	s2,a3
    4c68:	00000993          	li	s3,0
    4c6c:	04450b93          	addi	s7,a0,68
    4c70:	24450b13          	addi	s6,a0,580
    4c74:	00000693          	li	a3,0
    4c78:	00098613          	mv	a2,s3
    4c7c:	000a0593          	mv	a1,s4
    4c80:	00048513          	mv	a0,s1
    4c84:	00000097          	auipc	ra,0x0
    4c88:	858080e7          	jalr	-1960(ra) # 44dc <fatfs_sector_reader>
    4c8c:	0c050663          	beqz	a0,4d58 <fatfs_update_file_length+0x130>
    4c90:	000b8413          	mv	s0,s7
    4c94:	00040513          	mv	a0,s0
    4c98:	fffff097          	auipc	ra,0xfffff
    4c9c:	934080e7          	jalr	-1740(ra) # 35cc <fatfs_entry_lfn_text>
    4ca0:	0a051463          	bnez	a0,4d48 <fatfs_update_file_length+0x120>
    4ca4:	00040513          	mv	a0,s0
    4ca8:	fffff097          	auipc	ra,0xfffff
    4cac:	938080e7          	jalr	-1736(ra) # 35e0 <fatfs_entry_lfn_invalid>
    4cb0:	08051c63          	bnez	a0,4d48 <fatfs_update_file_length+0x120>
    4cb4:	00040513          	mv	a0,s0
    4cb8:	fffff097          	auipc	ra,0xfffff
    4cbc:	9a8080e7          	jalr	-1624(ra) # 3660 <fatfs_entry_sfn_only>
    4cc0:	08050463          	beqz	a0,4d48 <fatfs_update_file_length+0x120>
    4cc4:	00b00613          	li	a2,11
    4cc8:	000a8593          	mv	a1,s5
    4ccc:	00040513          	mv	a0,s0
    4cd0:	ffffe097          	auipc	ra,0xffffe
    4cd4:	a64080e7          	jalr	-1436(ra) # 2734 <strncmp>
    4cd8:	06051863          	bnez	a0,4d48 <fatfs_update_file_length+0x120>
    4cdc:	00895793          	srli	a5,s2,0x8
    4ce0:	01240e23          	sb	s2,28(s0)
    4ce4:	00f40ea3          	sb	a5,29(s0)
    4ce8:	01095793          	srli	a5,s2,0x10
    4cec:	01895913          	srli	s2,s2,0x18
    4cf0:	00f40f23          	sb	a5,30(s0)
    4cf4:	01240fa3          	sb	s2,31(s0)
    4cf8:	00040593          	mv	a1,s0
    4cfc:	02000613          	li	a2,32
    4d00:	00040513          	mv	a0,s0
    4d04:	ffffe097          	auipc	ra,0xffffe
    4d08:	9ec080e7          	jalr	-1556(ra) # 26f0 <memcpy>
    4d0c:	02812403          	lw	s0,40(sp)
    4d10:	0384a783          	lw	a5,56(s1)
    4d14:	2444a503          	lw	a0,580(s1)
    4d18:	02c12083          	lw	ra,44(sp)
    4d1c:	02412483          	lw	s1,36(sp)
    4d20:	02012903          	lw	s2,32(sp)
    4d24:	01c12983          	lw	s3,28(sp)
    4d28:	01812a03          	lw	s4,24(sp)
    4d2c:	01412a83          	lw	s5,20(sp)
    4d30:	01012b03          	lw	s6,16(sp)
    4d34:	000b8593          	mv	a1,s7
    4d38:	00c12b83          	lw	s7,12(sp)
    4d3c:	00100613          	li	a2,1
    4d40:	03010113          	addi	sp,sp,48
    4d44:	00078067          	jr	a5
    4d48:	02040413          	addi	s0,s0,32
    4d4c:	f56414e3          	bne	s0,s6,4c94 <fatfs_update_file_length+0x6c>
    4d50:	00198993          	addi	s3,s3,1
    4d54:	f21ff06f          	j	4c74 <fatfs_update_file_length+0x4c>
    4d58:	02c12083          	lw	ra,44(sp)
    4d5c:	02812403          	lw	s0,40(sp)
    4d60:	02412483          	lw	s1,36(sp)
    4d64:	02012903          	lw	s2,32(sp)
    4d68:	01c12983          	lw	s3,28(sp)
    4d6c:	01812a03          	lw	s4,24(sp)
    4d70:	01412a83          	lw	s5,20(sp)
    4d74:	01012b03          	lw	s6,16(sp)
    4d78:	00c12b83          	lw	s7,12(sp)
    4d7c:	00000513          	li	a0,0
    4d80:	03010113          	addi	sp,sp,48
    4d84:	00008067          	ret
    4d88:	00000513          	li	a0,0
    4d8c:	00008067          	ret

00004d90 <fatfs_list_directory_next>:
    4d90:	ec010113          	addi	sp,sp,-320
    4d94:	13212823          	sw	s2,304(sp)
    4d98:	13312623          	sw	s3,300(sp)
    4d9c:	13412423          	sw	s4,296(sp)
    4da0:	13512223          	sw	s5,292(sp)
    4da4:	12112e23          	sw	ra,316(sp)
    4da8:	12812c23          	sw	s0,312(sp)
    4dac:	12912a23          	sw	s1,308(sp)
    4db0:	00050a13          	mv	s4,a0
    4db4:	00058913          	mv	s2,a1
    4db8:	00060993          	mv	s3,a2
    4dbc:	10010ea3          	sb	zero,285(sp)
    4dc0:	00f00a93          	li	s5,15
    4dc4:	00092603          	lw	a2,0(s2)
    4dc8:	00492583          	lw	a1,4(s2)
    4dcc:	00000693          	li	a3,0
    4dd0:	000a0513          	mv	a0,s4
    4dd4:	fffff097          	auipc	ra,0xfffff
    4dd8:	708080e7          	jalr	1800(ra) # 44dc <fatfs_sector_reader>
    4ddc:	12050263          	beqz	a0,4f00 <fatfs_list_directory_next+0x170>
    4de0:	00894483          	lbu	s1,8(s2)
    4de4:	00549413          	slli	s0,s1,0x5
    4de8:	04440413          	addi	s0,s0,68
    4dec:	008a0433          	add	s0,s4,s0
    4df0:	009afc63          	bgeu	s5,s1,4e08 <fatfs_list_directory_next+0x78>
    4df4:	00092783          	lw	a5,0(s2)
    4df8:	00090423          	sb	zero,8(s2)
    4dfc:	00178793          	addi	a5,a5,1
    4e00:	00f92023          	sw	a5,0(s2)
    4e04:	fc1ff06f          	j	4dc4 <fatfs_list_directory_next+0x34>
    4e08:	00040513          	mv	a0,s0
    4e0c:	ffffe097          	auipc	ra,0xffffe
    4e10:	7c0080e7          	jalr	1984(ra) # 35cc <fatfs_entry_lfn_text>
    4e14:	02050263          	beqz	a0,4e38 <fatfs_list_directory_next+0xa8>
    4e18:	00040593          	mv	a1,s0
    4e1c:	01810513          	addi	a0,sp,24
    4e20:	ffffe097          	auipc	ra,0xffffe
    4e24:	6a4080e7          	jalr	1700(ra) # 34c4 <fatfs_lfn_cache_entry>
    4e28:	00148493          	addi	s1,s1,1
    4e2c:	0ff4f493          	zext.b	s1,s1
    4e30:	02040413          	addi	s0,s0,32
    4e34:	fbdff06f          	j	4df0 <fatfs_list_directory_next+0x60>
    4e38:	00040513          	mv	a0,s0
    4e3c:	ffffe097          	auipc	ra,0xffffe
    4e40:	7a4080e7          	jalr	1956(ra) # 35e0 <fatfs_entry_lfn_invalid>
    4e44:	00050663          	beqz	a0,4e50 <fatfs_list_directory_next+0xc0>
    4e48:	10010ea3          	sb	zero,285(sp)
    4e4c:	fddff06f          	j	4e28 <fatfs_list_directory_next+0x98>
    4e50:	00040593          	mv	a1,s0
    4e54:	01810513          	addi	a0,sp,24
    4e58:	ffffe097          	auipc	ra,0xffffe
    4e5c:	7c0080e7          	jalr	1984(ra) # 3618 <fatfs_entry_lfn_exists>
    4e60:	0c050263          	beqz	a0,4f24 <fatfs_list_directory_next+0x194>
    4e64:	01810513          	addi	a0,sp,24
    4e68:	ffffe097          	auipc	ra,0xffffe
    4e6c:	728080e7          	jalr	1832(ra) # 3590 <fatfs_lfn_cache_get>
    4e70:	00050593          	mv	a1,a0
    4e74:	10300613          	li	a2,259
    4e78:	00098513          	mv	a0,s3
    4e7c:	ffffe097          	auipc	ra,0xffffe
    4e80:	8f8080e7          	jalr	-1800(ra) # 2774 <strncpy>
    4e84:	00040513          	mv	a0,s0
    4e88:	fffff097          	auipc	ra,0xfffff
    4e8c:	814080e7          	jalr	-2028(ra) # 369c <fatfs_entry_is_dir>
    4e90:	00a03533          	snez	a0,a0
    4e94:	10a98223          	sb	a0,260(s3)
    4e98:	01d44783          	lbu	a5,29(s0)
    4e9c:	01c44703          	lbu	a4,28(s0)
    4ea0:	00148493          	addi	s1,s1,1
    4ea4:	00879793          	slli	a5,a5,0x8
    4ea8:	00e7e7b3          	or	a5,a5,a4
    4eac:	01e44703          	lbu	a4,30(s0)
    4eb0:	0ff4f493          	zext.b	s1,s1
    4eb4:	00100513          	li	a0,1
    4eb8:	01071713          	slli	a4,a4,0x10
    4ebc:	00f76733          	or	a4,a4,a5
    4ec0:	01f44783          	lbu	a5,31(s0)
    4ec4:	01879793          	slli	a5,a5,0x18
    4ec8:	00e7e7b3          	or	a5,a5,a4
    4ecc:	10f9a623          	sw	a5,268(s3)
    4ed0:	01544783          	lbu	a5,21(s0)
    4ed4:	01444703          	lbu	a4,20(s0)
    4ed8:	01a44683          	lbu	a3,26(s0)
    4edc:	00879793          	slli	a5,a5,0x8
    4ee0:	00e7e7b3          	or	a5,a5,a4
    4ee4:	01b44703          	lbu	a4,27(s0)
    4ee8:	01079793          	slli	a5,a5,0x10
    4eec:	00871713          	slli	a4,a4,0x8
    4ef0:	00d76733          	or	a4,a4,a3
    4ef4:	00e7e7b3          	or	a5,a5,a4
    4ef8:	10f9a423          	sw	a5,264(s3)
    4efc:	00990423          	sb	s1,8(s2)
    4f00:	13c12083          	lw	ra,316(sp)
    4f04:	13812403          	lw	s0,312(sp)
    4f08:	13412483          	lw	s1,308(sp)
    4f0c:	13012903          	lw	s2,304(sp)
    4f10:	12c12983          	lw	s3,300(sp)
    4f14:	12812a03          	lw	s4,296(sp)
    4f18:	12412a83          	lw	s5,292(sp)
    4f1c:	14010113          	addi	sp,sp,320
    4f20:	00008067          	ret
    4f24:	00040513          	mv	a0,s0
    4f28:	ffffe097          	auipc	ra,0xffffe
    4f2c:	738080e7          	jalr	1848(ra) # 3660 <fatfs_entry_sfn_only>
    4f30:	ee050ce3          	beqz	a0,4e28 <fatfs_list_directory_next+0x98>
    4f34:	00d00613          	li	a2,13
    4f38:	00000593          	li	a1,0
    4f3c:	00810513          	addi	a0,sp,8
    4f40:	10010ea3          	sb	zero,285(sp)
    4f44:	ffffd097          	auipc	ra,0xffffd
    4f48:	790080e7          	jalr	1936(ra) # 26d4 <memset>
    4f4c:	00000793          	li	a5,0
    4f50:	00800713          	li	a4,8
    4f54:	00f40633          	add	a2,s0,a5
    4f58:	00064603          	lbu	a2,0(a2)
    4f5c:	00810693          	addi	a3,sp,8
    4f60:	00f686b3          	add	a3,a3,a5
    4f64:	00c68023          	sb	a2,0(a3)
    4f68:	00178793          	addi	a5,a5,1
    4f6c:	fee794e3          	bne	a5,a4,4f54 <fatfs_list_directory_next+0x1c4>
    4f70:	00844783          	lbu	a5,8(s0)
    4f74:	00944683          	lbu	a3,9(s0)
    4f78:	02000613          	li	a2,32
    4f7c:	00f108a3          	sb	a5,17(sp)
    4f80:	00d10923          	sb	a3,18(sp)
    4f84:	00100713          	li	a4,1
    4f88:	00c69663          	bne	a3,a2,4f94 <fatfs_list_directory_next+0x204>
    4f8c:	fe078793          	addi	a5,a5,-32
    4f90:	00f03733          	snez	a4,a5
    4f94:	00a44783          	lbu	a5,10(s0)
    4f98:	02000693          	li	a3,32
    4f9c:	00f109a3          	sb	a5,19(sp)
    4fa0:	00d79663          	bne	a5,a3,4fac <fatfs_list_directory_next+0x21c>
    4fa4:	02000793          	li	a5,32
    4fa8:	00070a63          	beqz	a4,4fbc <fatfs_list_directory_next+0x22c>
    4fac:	00814703          	lbu	a4,8(sp)
    4fb0:	02e00793          	li	a5,46
    4fb4:	00f71463          	bne	a4,a5,4fbc <fatfs_list_directory_next+0x22c>
    4fb8:	02000793          	li	a5,32
    4fbc:	00810593          	addi	a1,sp,8
    4fc0:	00098513          	mv	a0,s3
    4fc4:	00f10823          	sb	a5,16(sp)
    4fc8:	fffff097          	auipc	ra,0xfffff
    4fcc:	034080e7          	jalr	52(ra) # 3ffc <fatfs_get_sfn_display_name>
    4fd0:	eb5ff06f          	j	4e84 <fatfs_list_directory_next+0xf4>

00004fd4 <fl_readdir>:
    4fd4:	000077b7          	lui	a5,0x7
    4fd8:	c047a783          	lw	a5,-1020(a5) # 6c04 <_filelib_init>
    4fdc:	fe010113          	addi	sp,sp,-32
    4fe0:	00912a23          	sw	s1,20(sp)
    4fe4:	01212823          	sw	s2,16(sp)
    4fe8:	00112e23          	sw	ra,28(sp)
    4fec:	00812c23          	sw	s0,24(sp)
    4ff0:	01312623          	sw	s3,12(sp)
    4ff4:	00050493          	mv	s1,a0
    4ff8:	00058913          	mv	s2,a1
    4ffc:	00079663          	bnez	a5,5008 <fl_readdir+0x34>
    5000:	ffffe097          	auipc	ra,0xffffe
    5004:	2b0080e7          	jalr	688(ra) # 32b0 <fl_init>
    5008:	00007437          	lui	s0,0x7
    500c:	40840793          	addi	a5,s0,1032 # 7408 <_fs>
    5010:	03c7a783          	lw	a5,60(a5)
    5014:	40840993          	addi	s3,s0,1032
    5018:	00078463          	beqz	a5,5020 <fl_readdir+0x4c>
    501c:	000780e7          	jalr	a5
    5020:	40840513          	addi	a0,s0,1032
    5024:	00090613          	mv	a2,s2
    5028:	00048593          	mv	a1,s1
    502c:	00000097          	auipc	ra,0x0
    5030:	d64080e7          	jalr	-668(ra) # 4d90 <fatfs_list_directory_next>
    5034:	0409a783          	lw	a5,64(s3)
    5038:	00050413          	mv	s0,a0
    503c:	00078463          	beqz	a5,5044 <fl_readdir+0x70>
    5040:	000780e7          	jalr	a5
    5044:	01c12083          	lw	ra,28(sp)
    5048:	00143513          	seqz	a0,s0
    504c:	01812403          	lw	s0,24(sp)
    5050:	01412483          	lw	s1,20(sp)
    5054:	01012903          	lw	s2,16(sp)
    5058:	00c12983          	lw	s3,12(sp)
    505c:	40a00533          	neg	a0,a0
    5060:	02010113          	addi	sp,sp,32
    5064:	00008067          	ret

00005068 <_read_sectors>:
    5068:	fd010113          	addi	sp,sp,-48
    506c:	01612823          	sw	s6,16(sp)
    5070:	00007b37          	lui	s6,0x7
    5074:	01512a23          	sw	s5,20(sp)
    5078:	408b4a83          	lbu	s5,1032(s6) # 7408 <_fs>
    507c:	01412c23          	sw	s4,24(sp)
    5080:	00058a13          	mv	s4,a1
    5084:	02912223          	sw	s1,36(sp)
    5088:	000a8593          	mv	a1,s5
    508c:	00050493          	mv	s1,a0
    5090:	000a0513          	mv	a0,s4
    5094:	02112623          	sw	ra,44(sp)
    5098:	02812423          	sw	s0,40(sp)
    509c:	03212023          	sw	s2,32(sp)
    50a0:	00068413          	mv	s0,a3
    50a4:	01712623          	sw	s7,12(sp)
    50a8:	01812423          	sw	s8,8(sp)
    50ac:	01312e23          	sw	s3,28(sp)
    50b0:	00060c13          	mv	s8,a2
    50b4:	ffffd097          	auipc	ra,0xffffd
    50b8:	574080e7          	jalr	1396(ra) # 2628 <__udivsi3>
    50bc:	00050913          	mv	s2,a0
    50c0:	000a8593          	mv	a1,s5
    50c4:	000a0513          	mv	a0,s4
    50c8:	ffffd097          	auipc	ra,0xffffd
    50cc:	5a8080e7          	jalr	1448(ra) # 2670 <__umodsi3>
    50d0:	00a407b3          	add	a5,s0,a0
    50d4:	00050b93          	mv	s7,a0
    50d8:	00fafe63          	bgeu	s5,a5,50f4 <_read_sectors+0x8c>
    50dc:	00090593          	mv	a1,s2
    50e0:	000a8513          	mv	a0,s5
    50e4:	ffffe097          	auipc	ra,0xffffe
    50e8:	d34080e7          	jalr	-716(ra) # 2e18 <__mulsi3>
    50ec:	414a87b3          	sub	a5,s5,s4
    50f0:	00f50433          	add	s0,a0,a5
    50f4:	2284a983          	lw	s3,552(s1)
    50f8:	07299863          	bne	s3,s2,5168 <_read_sectors+0x100>
    50fc:	22c4a583          	lw	a1,556(s1)
    5100:	fff00793          	li	a5,-1
    5104:	02f58663          	beq	a1,a5,5130 <_read_sectors+0xc8>
    5108:	408b0513          	addi	a0,s6,1032
    510c:	ffffe097          	auipc	ra,0xffffe
    5110:	068080e7          	jalr	104(ra) # 3174 <fatfs_lba_of_cluster>
    5114:	017505b3          	add	a1,a0,s7
    5118:	00040693          	mv	a3,s0
    511c:	000c0613          	mv	a2,s8
    5120:	408b0513          	addi	a0,s6,1032
    5124:	ffffe097          	auipc	ra,0xffffe
    5128:	0a0080e7          	jalr	160(ra) # 31c4 <fatfs_sector_read>
    512c:	00051463          	bnez	a0,5134 <_read_sectors+0xcc>
    5130:	00000413          	li	s0,0
    5134:	02c12083          	lw	ra,44(sp)
    5138:	00040513          	mv	a0,s0
    513c:	02812403          	lw	s0,40(sp)
    5140:	02412483          	lw	s1,36(sp)
    5144:	02012903          	lw	s2,32(sp)
    5148:	01c12983          	lw	s3,28(sp)
    514c:	01812a03          	lw	s4,24(sp)
    5150:	01412a83          	lw	s5,20(sp)
    5154:	01012b03          	lw	s6,16(sp)
    5158:	00c12b83          	lw	s7,12(sp)
    515c:	00812c03          	lw	s8,8(sp)
    5160:	03010113          	addi	sp,sp,48
    5164:	00008067          	ret
    5168:	035a6463          	bltu	s4,s5,5190 <_read_sectors+0x128>
    516c:	00198793          	addi	a5,s3,1
    5170:	03279063          	bne	a5,s2,5190 <_read_sectors+0x128>
    5174:	22c4a583          	lw	a1,556(s1)
    5178:	0329e263          	bltu	s3,s2,519c <_read_sectors+0x134>
    517c:	fff00793          	li	a5,-1
    5180:	faf588e3          	beq	a1,a5,5130 <_read_sectors+0xc8>
    5184:	22b4a623          	sw	a1,556(s1)
    5188:	2324a423          	sw	s2,552(s1)
    518c:	f7dff06f          	j	5108 <_read_sectors+0xa0>
    5190:	0044a583          	lw	a1,4(s1)
    5194:	00000993          	li	s3,0
    5198:	fe1ff06f          	j	5178 <_read_sectors+0x110>
    519c:	408b0513          	addi	a0,s6,1032
    51a0:	fffff097          	auipc	ra,0xfffff
    51a4:	22c080e7          	jalr	556(ra) # 43cc <fatfs_find_next_cluster>
    51a8:	00050593          	mv	a1,a0
    51ac:	00198993          	addi	s3,s3,1
    51b0:	fc9ff06f          	j	5178 <_read_sectors+0x110>

000051b4 <fatfs_set_fs_info_next_free_cluster>:
    51b4:	03052783          	lw	a5,48(a0)
    51b8:	0a078863          	beqz	a5,5268 <fatfs_set_fs_info_next_free_cluster+0xb4>
    51bc:	ff010113          	addi	sp,sp,-16
    51c0:	01c52783          	lw	a5,28(a0)
    51c4:	01212023          	sw	s2,0(sp)
    51c8:	00058913          	mv	s2,a1
    51cc:	01855583          	lhu	a1,24(a0)
    51d0:	00812423          	sw	s0,8(sp)
    51d4:	00912223          	sw	s1,4(sp)
    51d8:	00f585b3          	add	a1,a1,a5
    51dc:	00112623          	sw	ra,12(sp)
    51e0:	00050493          	mv	s1,a0
    51e4:	ffffe097          	auipc	ra,0xffffe
    51e8:	de4080e7          	jalr	-540(ra) # 2fc8 <fatfs_fat_read_sector>
    51ec:	00050413          	mv	s0,a0
    51f0:	06050063          	beqz	a0,5250 <fatfs_set_fs_info_next_free_cluster+0x9c>
    51f4:	20852783          	lw	a5,520(a0)
    51f8:	00895713          	srli	a4,s2,0x8
    51fc:	1f278623          	sb	s2,492(a5)
    5200:	20852783          	lw	a5,520(a0)
    5204:	1ee786a3          	sb	a4,493(a5)
    5208:	20852783          	lw	a5,520(a0)
    520c:	01095713          	srli	a4,s2,0x10
    5210:	1ee78723          	sb	a4,494(a5)
    5214:	20852783          	lw	a5,520(a0)
    5218:	01895713          	srli	a4,s2,0x18
    521c:	1ee787a3          	sb	a4,495(a5)
    5220:	00100793          	li	a5,1
    5224:	20f52223          	sw	a5,516(a0)
    5228:	0384a783          	lw	a5,56(s1)
    522c:	0324a223          	sw	s2,36(s1)
    5230:	00078a63          	beqz	a5,5244 <fatfs_set_fs_info_next_free_cluster+0x90>
    5234:	00050593          	mv	a1,a0
    5238:	20052503          	lw	a0,512(a0)
    523c:	00100613          	li	a2,1
    5240:	000780e7          	jalr	a5
    5244:	fff00793          	li	a5,-1
    5248:	20f42023          	sw	a5,512(s0)
    524c:	20042223          	sw	zero,516(s0)
    5250:	00c12083          	lw	ra,12(sp)
    5254:	00812403          	lw	s0,8(sp)
    5258:	00412483          	lw	s1,4(sp)
    525c:	00012903          	lw	s2,0(sp)
    5260:	01010113          	addi	sp,sp,16
    5264:	00008067          	ret
    5268:	00008067          	ret

0000526c <fatfs_find_blank_cluster>:
    526c:	fe010113          	addi	sp,sp,-32
    5270:	01312623          	sw	s3,12(sp)
    5274:	01512223          	sw	s5,4(sp)
    5278:	000109b7          	lui	s3,0x10
    527c:	10000ab7          	lui	s5,0x10000
    5280:	00912a23          	sw	s1,20(sp)
    5284:	01212823          	sw	s2,16(sp)
    5288:	01412423          	sw	s4,8(sp)
    528c:	00112e23          	sw	ra,28(sp)
    5290:	00812c23          	sw	s0,24(sp)
    5294:	00050913          	mv	s2,a0
    5298:	00058493          	mv	s1,a1
    529c:	00060a13          	mv	s4,a2
    52a0:	fff98993          	addi	s3,s3,-1 # ffff <_files+0x878f>
    52a4:	fffa8a93          	addi	s5,s5,-1 # fffffff <__stacktop+0xffeffff>
    52a8:	03092783          	lw	a5,48(s2)
    52ac:	0074d413          	srli	s0,s1,0x7
    52b0:	00079463          	bnez	a5,52b8 <fatfs_find_blank_cluster+0x4c>
    52b4:	0084d413          	srli	s0,s1,0x8
    52b8:	02092783          	lw	a5,32(s2)
    52bc:	0cf47463          	bgeu	s0,a5,5384 <fatfs_find_blank_cluster+0x118>
    52c0:	01492583          	lw	a1,20(s2)
    52c4:	00090513          	mv	a0,s2
    52c8:	00b405b3          	add	a1,s0,a1
    52cc:	ffffe097          	auipc	ra,0xffffe
    52d0:	cfc080e7          	jalr	-772(ra) # 2fc8 <fatfs_fat_read_sector>
    52d4:	0a050863          	beqz	a0,5384 <fatfs_find_blank_cluster+0x118>
    52d8:	03092783          	lw	a5,48(s2)
    52dc:	20852703          	lw	a4,520(a0)
    52e0:	04079c63          	bnez	a5,5338 <fatfs_find_blank_cluster+0xcc>
    52e4:	00841413          	slli	s0,s0,0x8
    52e8:	40848433          	sub	s0,s1,s0
    52ec:	00141413          	slli	s0,s0,0x1
    52f0:	01347433          	and	s0,s0,s3
    52f4:	00870733          	add	a4,a4,s0
    52f8:	00174783          	lbu	a5,1(a4)
    52fc:	00074703          	lbu	a4,0(a4)
    5300:	00879793          	slli	a5,a5,0x8
    5304:	00e787b3          	add	a5,a5,a4
    5308:	06079a63          	bnez	a5,537c <fatfs_find_blank_cluster+0x110>
    530c:	009a2023          	sw	s1,0(s4)
    5310:	00100513          	li	a0,1
    5314:	01c12083          	lw	ra,28(sp)
    5318:	01812403          	lw	s0,24(sp)
    531c:	01412483          	lw	s1,20(sp)
    5320:	01012903          	lw	s2,16(sp)
    5324:	00c12983          	lw	s3,12(sp)
    5328:	00812a03          	lw	s4,8(sp)
    532c:	00412a83          	lw	s5,4(sp)
    5330:	02010113          	addi	sp,sp,32
    5334:	00008067          	ret
    5338:	00741413          	slli	s0,s0,0x7
    533c:	40848433          	sub	s0,s1,s0
    5340:	00241413          	slli	s0,s0,0x2
    5344:	01347433          	and	s0,s0,s3
    5348:	00870733          	add	a4,a4,s0
    534c:	00374783          	lbu	a5,3(a4)
    5350:	00274683          	lbu	a3,2(a4)
    5354:	01879793          	slli	a5,a5,0x18
    5358:	01069693          	slli	a3,a3,0x10
    535c:	00d787b3          	add	a5,a5,a3
    5360:	00074683          	lbu	a3,0(a4)
    5364:	00174703          	lbu	a4,1(a4)
    5368:	00d787b3          	add	a5,a5,a3
    536c:	00871713          	slli	a4,a4,0x8
    5370:	00e787b3          	add	a5,a5,a4
    5374:	0157f7b3          	and	a5,a5,s5
    5378:	f91ff06f          	j	5308 <fatfs_find_blank_cluster+0x9c>
    537c:	00148493          	addi	s1,s1,1
    5380:	f29ff06f          	j	52a8 <fatfs_find_blank_cluster+0x3c>
    5384:	00000513          	li	a0,0
    5388:	f8dff06f          	j	5314 <fatfs_find_blank_cluster+0xa8>

0000538c <fatfs_fat_set_cluster>:
    538c:	03052783          	lw	a5,48(a0)
    5390:	fe010113          	addi	sp,sp,-32
    5394:	00812c23          	sw	s0,24(sp)
    5398:	00912a23          	sw	s1,20(sp)
    539c:	01212823          	sw	s2,16(sp)
    53a0:	01312623          	sw	s3,12(sp)
    53a4:	00112e23          	sw	ra,28(sp)
    53a8:	00050993          	mv	s3,a0
    53ac:	00058413          	mv	s0,a1
    53b0:	00060493          	mv	s1,a2
    53b4:	0085d913          	srli	s2,a1,0x8
    53b8:	00078463          	beqz	a5,53c0 <fatfs_fat_set_cluster+0x34>
    53bc:	0075d913          	srli	s2,a1,0x7
    53c0:	0149a583          	lw	a1,20(s3)
    53c4:	00098513          	mv	a0,s3
    53c8:	00b905b3          	add	a1,s2,a1
    53cc:	ffffe097          	auipc	ra,0xffffe
    53d0:	bfc080e7          	jalr	-1028(ra) # 2fc8 <fatfs_fat_read_sector>
    53d4:	00050693          	mv	a3,a0
    53d8:	00000513          	li	a0,0
    53dc:	04068c63          	beqz	a3,5434 <fatfs_fat_set_cluster+0xa8>
    53e0:	0309a703          	lw	a4,48(s3)
    53e4:	2086a783          	lw	a5,520(a3)
    53e8:	0ff4f613          	zext.b	a2,s1
    53ec:	06071263          	bnez	a4,5450 <fatfs_fat_set_cluster+0xc4>
    53f0:	00891913          	slli	s2,s2,0x8
    53f4:	41240433          	sub	s0,s0,s2
    53f8:	00010737          	lui	a4,0x10
    53fc:	00141413          	slli	s0,s0,0x1
    5400:	ffe70713          	addi	a4,a4,-2 # fffe <_files+0x878e>
    5404:	00e47433          	and	s0,s0,a4
    5408:	008787b3          	add	a5,a5,s0
    540c:	00c78023          	sb	a2,0(a5)
    5410:	2086a783          	lw	a5,520(a3)
    5414:	01049493          	slli	s1,s1,0x10
    5418:	0104d493          	srli	s1,s1,0x10
    541c:	008787b3          	add	a5,a5,s0
    5420:	0084d493          	srli	s1,s1,0x8
    5424:	009780a3          	sb	s1,1(a5)
    5428:	00100793          	li	a5,1
    542c:	20f6a223          	sw	a5,516(a3)
    5430:	00100513          	li	a0,1
    5434:	01c12083          	lw	ra,28(sp)
    5438:	01812403          	lw	s0,24(sp)
    543c:	01412483          	lw	s1,20(sp)
    5440:	01012903          	lw	s2,16(sp)
    5444:	00c12983          	lw	s3,12(sp)
    5448:	02010113          	addi	sp,sp,32
    544c:	00008067          	ret
    5450:	00791913          	slli	s2,s2,0x7
    5454:	41240433          	sub	s0,s0,s2
    5458:	00010737          	lui	a4,0x10
    545c:	ffc70713          	addi	a4,a4,-4 # fffc <_files+0x878c>
    5460:	00241413          	slli	s0,s0,0x2
    5464:	00e47433          	and	s0,s0,a4
    5468:	008787b3          	add	a5,a5,s0
    546c:	00c78023          	sb	a2,0(a5)
    5470:	2086a783          	lw	a5,520(a3)
    5474:	0084d713          	srli	a4,s1,0x8
    5478:	008787b3          	add	a5,a5,s0
    547c:	00e780a3          	sb	a4,1(a5)
    5480:	2086a783          	lw	a5,520(a3)
    5484:	0104d713          	srli	a4,s1,0x10
    5488:	0184d493          	srli	s1,s1,0x18
    548c:	008787b3          	add	a5,a5,s0
    5490:	00e78123          	sb	a4,2(a5)
    5494:	2086a783          	lw	a5,520(a3)
    5498:	008787b3          	add	a5,a5,s0
    549c:	009781a3          	sb	s1,3(a5)
    54a0:	f89ff06f          	j	5428 <fatfs_fat_set_cluster+0x9c>

000054a4 <fatfs_free_cluster_chain>:
    54a4:	fe010113          	addi	sp,sp,-32
    54a8:	00812c23          	sw	s0,24(sp)
    54ac:	01212823          	sw	s2,16(sp)
    54b0:	00112e23          	sw	ra,28(sp)
    54b4:	00912a23          	sw	s1,20(sp)
    54b8:	00050413          	mv	s0,a0
    54bc:	ffd00913          	li	s2,-3
    54c0:	fff58793          	addi	a5,a1,-1
    54c4:	02f97063          	bgeu	s2,a5,54e4 <fatfs_free_cluster_chain+0x40>
    54c8:	01c12083          	lw	ra,28(sp)
    54cc:	01812403          	lw	s0,24(sp)
    54d0:	01412483          	lw	s1,20(sp)
    54d4:	01012903          	lw	s2,16(sp)
    54d8:	00100513          	li	a0,1
    54dc:	02010113          	addi	sp,sp,32
    54e0:	00008067          	ret
    54e4:	00040513          	mv	a0,s0
    54e8:	00b12623          	sw	a1,12(sp)
    54ec:	fffff097          	auipc	ra,0xfffff
    54f0:	ee0080e7          	jalr	-288(ra) # 43cc <fatfs_find_next_cluster>
    54f4:	00c12583          	lw	a1,12(sp)
    54f8:	00050493          	mv	s1,a0
    54fc:	00000613          	li	a2,0
    5500:	00040513          	mv	a0,s0
    5504:	00000097          	auipc	ra,0x0
    5508:	e88080e7          	jalr	-376(ra) # 538c <fatfs_fat_set_cluster>
    550c:	00048593          	mv	a1,s1
    5510:	fb1ff06f          	j	54c0 <fatfs_free_cluster_chain+0x1c>

00005514 <fatfs_fat_add_cluster_to_chain>:
    5514:	fff00793          	li	a5,-1
    5518:	02f59463          	bne	a1,a5,5540 <fatfs_fat_add_cluster_to_chain+0x2c>
    551c:	00000513          	li	a0,0
    5520:	00008067          	ret
    5524:	00000513          	li	a0,0
    5528:	01c12083          	lw	ra,28(sp)
    552c:	01812403          	lw	s0,24(sp)
    5530:	01412483          	lw	s1,20(sp)
    5534:	01012903          	lw	s2,16(sp)
    5538:	02010113          	addi	sp,sp,32
    553c:	00008067          	ret
    5540:	fe010113          	addi	sp,sp,-32
    5544:	00812c23          	sw	s0,24(sp)
    5548:	00912a23          	sw	s1,20(sp)
    554c:	01212823          	sw	s2,16(sp)
    5550:	00050413          	mv	s0,a0
    5554:	00112e23          	sw	ra,28(sp)
    5558:	00058513          	mv	a0,a1
    555c:	00060493          	mv	s1,a2
    5560:	fff00913          	li	s2,-1
    5564:	00050593          	mv	a1,a0
    5568:	00a12623          	sw	a0,12(sp)
    556c:	00040513          	mv	a0,s0
    5570:	fffff097          	auipc	ra,0xfffff
    5574:	e5c080e7          	jalr	-420(ra) # 43cc <fatfs_find_next_cluster>
    5578:	fa0506e3          	beqz	a0,5524 <fatfs_fat_add_cluster_to_chain+0x10>
    557c:	00c12583          	lw	a1,12(sp)
    5580:	ff2512e3          	bne	a0,s2,5564 <fatfs_fat_add_cluster_to_chain+0x50>
    5584:	00048613          	mv	a2,s1
    5588:	00040513          	mv	a0,s0
    558c:	00000097          	auipc	ra,0x0
    5590:	e00080e7          	jalr	-512(ra) # 538c <fatfs_fat_set_cluster>
    5594:	fff00613          	li	a2,-1
    5598:	00048593          	mv	a1,s1
    559c:	00040513          	mv	a0,s0
    55a0:	00000097          	auipc	ra,0x0
    55a4:	dec080e7          	jalr	-532(ra) # 538c <fatfs_fat_set_cluster>
    55a8:	00100513          	li	a0,1
    55ac:	f7dff06f          	j	5528 <fatfs_fat_add_cluster_to_chain+0x14>

000055b0 <fatfs_add_free_space>:
    55b0:	02452703          	lw	a4,36(a0)
    55b4:	fd010113          	addi	sp,sp,-48
    55b8:	02812423          	sw	s0,40(sp)
    55bc:	03212023          	sw	s2,32(sp)
    55c0:	01412c23          	sw	s4,24(sp)
    55c4:	01512a23          	sw	s5,20(sp)
    55c8:	02112623          	sw	ra,44(sp)
    55cc:	02912223          	sw	s1,36(sp)
    55d0:	01312e23          	sw	s3,28(sp)
    55d4:	fff00793          	li	a5,-1
    55d8:	0005aa83          	lw	s5,0(a1)
    55dc:	00050413          	mv	s0,a0
    55e0:	00058913          	mv	s2,a1
    55e4:	00060a13          	mv	s4,a2
    55e8:	00f70863          	beq	a4,a5,55f8 <fatfs_add_free_space+0x48>
    55ec:	fff00593          	li	a1,-1
    55f0:	00000097          	auipc	ra,0x0
    55f4:	bc4080e7          	jalr	-1084(ra) # 51b4 <fatfs_set_fs_info_next_free_cluster>
    55f8:	00000493          	li	s1,0
    55fc:	03449663          	bne	s1,s4,5628 <fatfs_add_free_space+0x78>
    5600:	00100513          	li	a0,1
    5604:	02c12083          	lw	ra,44(sp)
    5608:	02812403          	lw	s0,40(sp)
    560c:	02412483          	lw	s1,36(sp)
    5610:	02012903          	lw	s2,32(sp)
    5614:	01c12983          	lw	s3,28(sp)
    5618:	01812a03          	lw	s4,24(sp)
    561c:	01412a83          	lw	s5,20(sp)
    5620:	03010113          	addi	sp,sp,48
    5624:	00008067          	ret
    5628:	00842583          	lw	a1,8(s0)
    562c:	00c10613          	addi	a2,sp,12
    5630:	00040513          	mv	a0,s0
    5634:	00000097          	auipc	ra,0x0
    5638:	c38080e7          	jalr	-968(ra) # 526c <fatfs_find_blank_cluster>
    563c:	fc0504e3          	beqz	a0,5604 <fatfs_add_free_space+0x54>
    5640:	00c12983          	lw	s3,12(sp)
    5644:	000a8593          	mv	a1,s5
    5648:	00040513          	mv	a0,s0
    564c:	00098613          	mv	a2,s3
    5650:	00000097          	auipc	ra,0x0
    5654:	d3c080e7          	jalr	-708(ra) # 538c <fatfs_fat_set_cluster>
    5658:	fff00613          	li	a2,-1
    565c:	00098593          	mv	a1,s3
    5660:	00040513          	mv	a0,s0
    5664:	00000097          	auipc	ra,0x0
    5668:	d28080e7          	jalr	-728(ra) # 538c <fatfs_fat_set_cluster>
    566c:	00049463          	bnez	s1,5674 <fatfs_add_free_space+0xc4>
    5670:	01392023          	sw	s3,0(s2)
    5674:	00148493          	addi	s1,s1,1
    5678:	00098a93          	mv	s5,s3
    567c:	f81ff06f          	j	55fc <fatfs_add_free_space+0x4c>

00005680 <_write_sectors>:
    5680:	fb010113          	addi	sp,sp,-80
    5684:	03312e23          	sw	s3,60(sp)
    5688:	000079b7          	lui	s3,0x7
    568c:	03612823          	sw	s6,48(sp)
    5690:	4089cb03          	lbu	s6,1032(s3) # 7408 <_fs>
    5694:	03512a23          	sw	s5,52(sp)
    5698:	00058a93          	mv	s5,a1
    569c:	fff00793          	li	a5,-1
    56a0:	04812423          	sw	s0,72(sp)
    56a4:	000b0593          	mv	a1,s6
    56a8:	00050413          	mv	s0,a0
    56ac:	000a8513          	mv	a0,s5
    56b0:	00f12e23          	sw	a5,28(sp)
    56b4:	04112623          	sw	ra,76(sp)
    56b8:	04912223          	sw	s1,68(sp)
    56bc:	05212023          	sw	s2,64(sp)
    56c0:	03712623          	sw	s7,44(sp)
    56c4:	03812423          	sw	s8,40(sp)
    56c8:	00068b93          	mv	s7,a3
    56cc:	03912223          	sw	s9,36(sp)
    56d0:	03a12023          	sw	s10,32(sp)
    56d4:	00060c93          	mv	s9,a2
    56d8:	03412c23          	sw	s4,56(sp)
    56dc:	ffffd097          	auipc	ra,0xffffd
    56e0:	f4c080e7          	jalr	-180(ra) # 2628 <__udivsi3>
    56e4:	00050493          	mv	s1,a0
    56e8:	000b0593          	mv	a1,s6
    56ec:	000a8513          	mv	a0,s5
    56f0:	ffffd097          	auipc	ra,0xffffd
    56f4:	f80080e7          	jalr	-128(ra) # 2670 <__umodsi3>
    56f8:	00ab87b3          	add	a5,s7,a0
    56fc:	00050c13          	mv	s8,a0
    5700:	40898d13          	addi	s10,s3,1032
    5704:	000b8913          	mv	s2,s7
    5708:	00fb7e63          	bgeu	s6,a5,5724 <_write_sectors+0xa4>
    570c:	00048593          	mv	a1,s1
    5710:	000b0513          	mv	a0,s6
    5714:	ffffd097          	auipc	ra,0xffffd
    5718:	704080e7          	jalr	1796(ra) # 2e18 <__mulsi3>
    571c:	415b07b3          	sub	a5,s6,s5
    5720:	00f50933          	add	s2,a0,a5
    5724:	22842a03          	lw	s4,552(s0)
    5728:	029a1a63          	bne	s4,s1,575c <_write_sectors+0xdc>
    572c:	22c42583          	lw	a1,556(s0)
    5730:	40898513          	addi	a0,s3,1032
    5734:	ffffe097          	auipc	ra,0xffffe
    5738:	a40080e7          	jalr	-1472(ra) # 3174 <fatfs_lba_of_cluster>
    573c:	018505b3          	add	a1,a0,s8
    5740:	00090693          	mv	a3,s2
    5744:	000c8613          	mv	a2,s9
    5748:	40898513          	addi	a0,s3,1032
    574c:	ffffe097          	auipc	ra,0xffffe
    5750:	a90080e7          	jalr	-1392(ra) # 31dc <fatfs_sector_write>
    5754:	04050a63          	beqz	a0,57a8 <_write_sectors+0x128>
    5758:	0540006f          	j	57ac <_write_sectors+0x12c>
    575c:	096ae663          	bltu	s5,s6,57e8 <_write_sectors+0x168>
    5760:	001a0793          	addi	a5,s4,1
    5764:	08979263          	bne	a5,s1,57e8 <_write_sectors+0x168>
    5768:	22c42583          	lw	a1,556(s0)
    576c:	fff00a93          	li	s5,-1
    5770:	089a6263          	bltu	s4,s1,57f4 <_write_sectors+0x174>
    5774:	fff00793          	li	a5,-1
    5778:	0af59463          	bne	a1,a5,5820 <_write_sectors+0x1a0>
    577c:	000d4583          	lbu	a1,0(s10)
    5780:	fff58513          	addi	a0,a1,-1
    5784:	01750533          	add	a0,a0,s7
    5788:	ffffd097          	auipc	ra,0xffffd
    578c:	ea0080e7          	jalr	-352(ra) # 2628 <__udivsi3>
    5790:	00050613          	mv	a2,a0
    5794:	01c10593          	addi	a1,sp,28
    5798:	40898513          	addi	a0,s3,1032
    579c:	00000097          	auipc	ra,0x0
    57a0:	e14080e7          	jalr	-492(ra) # 55b0 <fatfs_add_free_space>
    57a4:	06051c63          	bnez	a0,581c <_write_sectors+0x19c>
    57a8:	00000913          	li	s2,0
    57ac:	04c12083          	lw	ra,76(sp)
    57b0:	04812403          	lw	s0,72(sp)
    57b4:	04412483          	lw	s1,68(sp)
    57b8:	03c12983          	lw	s3,60(sp)
    57bc:	03812a03          	lw	s4,56(sp)
    57c0:	03412a83          	lw	s5,52(sp)
    57c4:	03012b03          	lw	s6,48(sp)
    57c8:	02c12b83          	lw	s7,44(sp)
    57cc:	02812c03          	lw	s8,40(sp)
    57d0:	02412c83          	lw	s9,36(sp)
    57d4:	02012d03          	lw	s10,32(sp)
    57d8:	00090513          	mv	a0,s2
    57dc:	04012903          	lw	s2,64(sp)
    57e0:	05010113          	addi	sp,sp,80
    57e4:	00008067          	ret
    57e8:	00442583          	lw	a1,4(s0)
    57ec:	00000a13          	li	s4,0
    57f0:	f7dff06f          	j	576c <_write_sectors+0xec>
    57f4:	40898513          	addi	a0,s3,1032
    57f8:	00b12623          	sw	a1,12(sp)
    57fc:	fffff097          	auipc	ra,0xfffff
    5800:	bd0080e7          	jalr	-1072(ra) # 43cc <fatfs_find_next_cluster>
    5804:	00c12583          	lw	a1,12(sp)
    5808:	00b12e23          	sw	a1,28(sp)
    580c:	f75508e3          	beq	a0,s5,577c <_write_sectors+0xfc>
    5810:	001a0a13          	addi	s4,s4,1
    5814:	00050593          	mv	a1,a0
    5818:	f59ff06f          	j	5770 <_write_sectors+0xf0>
    581c:	01c12583          	lw	a1,28(sp)
    5820:	22b42623          	sw	a1,556(s0)
    5824:	22942423          	sw	s1,552(s0)
    5828:	f09ff06f          	j	5730 <_write_sectors+0xb0>

0000582c <fl_fflush>:
    582c:	000077b7          	lui	a5,0x7
    5830:	c047a783          	lw	a5,-1020(a5) # 6c04 <_filelib_init>
    5834:	ff010113          	addi	sp,sp,-16
    5838:	00812423          	sw	s0,8(sp)
    583c:	00112623          	sw	ra,12(sp)
    5840:	00912223          	sw	s1,4(sp)
    5844:	00050413          	mv	s0,a0
    5848:	00079663          	bnez	a5,5854 <fl_fflush+0x28>
    584c:	ffffe097          	auipc	ra,0xffffe
    5850:	a64080e7          	jalr	-1436(ra) # 32b0 <fl_init>
    5854:	04040863          	beqz	s0,58a4 <fl_fflush+0x78>
    5858:	000077b7          	lui	a5,0x7
    585c:	40878713          	addi	a4,a5,1032 # 7408 <_fs>
    5860:	03c72703          	lw	a4,60(a4)
    5864:	40878493          	addi	s1,a5,1032
    5868:	00070463          	beqz	a4,5870 <fl_fflush+0x44>
    586c:	000700e7          	jalr	a4
    5870:	43442783          	lw	a5,1076(s0)
    5874:	02078263          	beqz	a5,5898 <fl_fflush+0x6c>
    5878:	43042583          	lw	a1,1072(s0)
    587c:	00100693          	li	a3,1
    5880:	23040613          	addi	a2,s0,560
    5884:	00040513          	mv	a0,s0
    5888:	00000097          	auipc	ra,0x0
    588c:	df8080e7          	jalr	-520(ra) # 5680 <_write_sectors>
    5890:	00050463          	beqz	a0,5898 <fl_fflush+0x6c>
    5894:	42042a23          	sw	zero,1076(s0)
    5898:	0404a783          	lw	a5,64(s1)
    589c:	00078463          	beqz	a5,58a4 <fl_fflush+0x78>
    58a0:	000780e7          	jalr	a5
    58a4:	00c12083          	lw	ra,12(sp)
    58a8:	00812403          	lw	s0,8(sp)
    58ac:	00412483          	lw	s1,4(sp)
    58b0:	00000513          	li	a0,0
    58b4:	01010113          	addi	sp,sp,16
    58b8:	00008067          	ret

000058bc <fl_fclose>:
    58bc:	000077b7          	lui	a5,0x7
    58c0:	c047a783          	lw	a5,-1020(a5) # 6c04 <_filelib_init>
    58c4:	ff010113          	addi	sp,sp,-16
    58c8:	00812423          	sw	s0,8(sp)
    58cc:	00112623          	sw	ra,12(sp)
    58d0:	00912223          	sw	s1,4(sp)
    58d4:	01212023          	sw	s2,0(sp)
    58d8:	00050413          	mv	s0,a0
    58dc:	00079663          	bnez	a5,58e8 <fl_fclose+0x2c>
    58e0:	ffffe097          	auipc	ra,0xffffe
    58e4:	9d0080e7          	jalr	-1584(ra) # 32b0 <fl_init>
    58e8:	08040e63          	beqz	s0,5984 <fl_fclose+0xc8>
    58ec:	000074b7          	lui	s1,0x7
    58f0:	40848793          	addi	a5,s1,1032 # 7408 <_fs>
    58f4:	03c7a783          	lw	a5,60(a5)
    58f8:	40848913          	addi	s2,s1,1032
    58fc:	00078463          	beqz	a5,5904 <fl_fclose+0x48>
    5900:	000780e7          	jalr	a5
    5904:	00040513          	mv	a0,s0
    5908:	00000097          	auipc	ra,0x0
    590c:	f24080e7          	jalr	-220(ra) # 582c <fl_fflush>
    5910:	01042783          	lw	a5,16(s0)
    5914:	00078e63          	beqz	a5,5930 <fl_fclose+0x74>
    5918:	00c42683          	lw	a3,12(s0)
    591c:	00042583          	lw	a1,0(s0)
    5920:	21c40613          	addi	a2,s0,540
    5924:	40848513          	addi	a0,s1,1032
    5928:	fffff097          	auipc	ra,0xfffff
    592c:	300080e7          	jalr	768(ra) # 4c28 <fatfs_update_file_length>
    5930:	fff00793          	li	a5,-1
    5934:	42f42823          	sw	a5,1072(s0)
    5938:	00040513          	mv	a0,s0
    593c:	00042423          	sw	zero,8(s0)
    5940:	00042623          	sw	zero,12(s0)
    5944:	00042223          	sw	zero,4(s0)
    5948:	42042a23          	sw	zero,1076(s0)
    594c:	00042823          	sw	zero,16(s0)
    5950:	ffffd097          	auipc	ra,0xffffd
    5954:	7dc080e7          	jalr	2012(ra) # 312c <_free_file>
    5958:	40848513          	addi	a0,s1,1032
    595c:	fffff097          	auipc	ra,0xfffff
    5960:	a14080e7          	jalr	-1516(ra) # 4370 <fatfs_fat_purge>
    5964:	04092783          	lw	a5,64(s2)
    5968:	00078e63          	beqz	a5,5984 <fl_fclose+0xc8>
    596c:	00812403          	lw	s0,8(sp)
    5970:	00c12083          	lw	ra,12(sp)
    5974:	00412483          	lw	s1,4(sp)
    5978:	00012903          	lw	s2,0(sp)
    597c:	01010113          	addi	sp,sp,16
    5980:	00078067          	jr	a5
    5984:	00c12083          	lw	ra,12(sp)
    5988:	00812403          	lw	s0,8(sp)
    598c:	00412483          	lw	s1,4(sp)
    5990:	00012903          	lw	s2,0(sp)
    5994:	01010113          	addi	sp,sp,16
    5998:	00008067          	ret

0000599c <fl_fread>:
    599c:	fd010113          	addi	sp,sp,-48
    59a0:	01612823          	sw	s6,16(sp)
    59a4:	00050b13          	mv	s6,a0
    59a8:	00058513          	mv	a0,a1
    59ac:	00060593          	mv	a1,a2
    59b0:	02812423          	sw	s0,40(sp)
    59b4:	02912223          	sw	s1,36(sp)
    59b8:	02112623          	sw	ra,44(sp)
    59bc:	03212023          	sw	s2,32(sp)
    59c0:	01312e23          	sw	s3,28(sp)
    59c4:	01412c23          	sw	s4,24(sp)
    59c8:	01512a23          	sw	s5,20(sp)
    59cc:	01712623          	sw	s7,12(sp)
    59d0:	01812423          	sw	s8,8(sp)
    59d4:	01912223          	sw	s9,4(sp)
    59d8:	00068413          	mv	s0,a3
    59dc:	ffffd097          	auipc	ra,0xffffd
    59e0:	43c080e7          	jalr	1084(ra) # 2e18 <__mulsi3>
    59e4:	000077b7          	lui	a5,0x7
    59e8:	c047a783          	lw	a5,-1020(a5) # 6c04 <_filelib_init>
    59ec:	00050493          	mv	s1,a0
    59f0:	00079663          	bnez	a5,59fc <fl_fread+0x60>
    59f4:	ffffe097          	auipc	ra,0xffffe
    59f8:	8bc080e7          	jalr	-1860(ra) # 32b0 <fl_init>
    59fc:	120b0e63          	beqz	s6,5b38 <fl_fread+0x19c>
    5a00:	12040c63          	beqz	s0,5b38 <fl_fread+0x19c>
    5a04:	43844783          	lbu	a5,1080(s0)
    5a08:	0017f793          	andi	a5,a5,1
    5a0c:	12078663          	beqz	a5,5b38 <fl_fread+0x19c>
    5a10:	0a048e63          	beqz	s1,5acc <fl_fread+0x130>
    5a14:	00842583          	lw	a1,8(s0)
    5a18:	00c42783          	lw	a5,12(s0)
    5a1c:	10f5fe63          	bgeu	a1,a5,5b38 <fl_fread+0x19c>
    5a20:	00b48733          	add	a4,s1,a1
    5a24:	00e7f463          	bgeu	a5,a4,5a2c <fl_fread+0x90>
    5a28:	40b784b3          	sub	s1,a5,a1
    5a2c:	0095da13          	srli	s4,a1,0x9
    5a30:	1ff5f913          	andi	s2,a1,511
    5a34:	00000993          	li	s3,0
    5a38:	23040b93          	addi	s7,s0,560
    5a3c:	20000c13          	li	s8,512
    5a40:	1ff00c93          	li	s9,511
    5a44:	0899d263          	bge	s3,s1,5ac8 <fl_fread+0x12c>
    5a48:	04091463          	bnez	s2,5a90 <fl_fread+0xf4>
    5a4c:	413486b3          	sub	a3,s1,s3
    5a50:	04dcd063          	bge	s9,a3,5a90 <fl_fread+0xf4>
    5a54:	4096d693          	srai	a3,a3,0x9
    5a58:	013b0633          	add	a2,s6,s3
    5a5c:	000a0593          	mv	a1,s4
    5a60:	00040513          	mv	a0,s0
    5a64:	fffff097          	auipc	ra,0xfffff
    5a68:	604080e7          	jalr	1540(ra) # 5068 <_read_sectors>
    5a6c:	04050e63          	beqz	a0,5ac8 <fl_fread+0x12c>
    5a70:	00951a93          	slli	s5,a0,0x9
    5a74:	00aa0a33          	add	s4,s4,a0
    5a78:	00842783          	lw	a5,8(s0)
    5a7c:	015989b3          	add	s3,s3,s5
    5a80:	00000913          	li	s2,0
    5a84:	015787b3          	add	a5,a5,s5
    5a88:	00f42423          	sw	a5,8(s0)
    5a8c:	fb9ff06f          	j	5a44 <fl_fread+0xa8>
    5a90:	43042783          	lw	a5,1072(s0)
    5a94:	07478c63          	beq	a5,s4,5b0c <fl_fread+0x170>
    5a98:	43442783          	lw	a5,1076(s0)
    5a9c:	00078863          	beqz	a5,5aac <fl_fread+0x110>
    5aa0:	00040513          	mv	a0,s0
    5aa4:	00000097          	auipc	ra,0x0
    5aa8:	d88080e7          	jalr	-632(ra) # 582c <fl_fflush>
    5aac:	00100693          	li	a3,1
    5ab0:	000b8613          	mv	a2,s7
    5ab4:	000a0593          	mv	a1,s4
    5ab8:	00040513          	mv	a0,s0
    5abc:	fffff097          	auipc	ra,0xfffff
    5ac0:	5ac080e7          	jalr	1452(ra) # 5068 <_read_sectors>
    5ac4:	04051063          	bnez	a0,5b04 <fl_fread+0x168>
    5ac8:	00098493          	mv	s1,s3
    5acc:	02c12083          	lw	ra,44(sp)
    5ad0:	02812403          	lw	s0,40(sp)
    5ad4:	02012903          	lw	s2,32(sp)
    5ad8:	01c12983          	lw	s3,28(sp)
    5adc:	01812a03          	lw	s4,24(sp)
    5ae0:	01412a83          	lw	s5,20(sp)
    5ae4:	01012b03          	lw	s6,16(sp)
    5ae8:	00c12b83          	lw	s7,12(sp)
    5aec:	00812c03          	lw	s8,8(sp)
    5af0:	00412c83          	lw	s9,4(sp)
    5af4:	00048513          	mv	a0,s1
    5af8:	02412483          	lw	s1,36(sp)
    5afc:	03010113          	addi	sp,sp,48
    5b00:	00008067          	ret
    5b04:	43442823          	sw	s4,1072(s0)
    5b08:	42042a23          	sw	zero,1076(s0)
    5b0c:	412c07b3          	sub	a5,s8,s2
    5b10:	41348ab3          	sub	s5,s1,s3
    5b14:	0157d463          	bge	a5,s5,5b1c <fl_fread+0x180>
    5b18:	00078a93          	mv	s5,a5
    5b1c:	000a8613          	mv	a2,s5
    5b20:	012b85b3          	add	a1,s7,s2
    5b24:	013b0533          	add	a0,s6,s3
    5b28:	ffffd097          	auipc	ra,0xffffd
    5b2c:	bc8080e7          	jalr	-1080(ra) # 26f0 <memcpy>
    5b30:	001a0a13          	addi	s4,s4,1
    5b34:	f45ff06f          	j	5a78 <fl_fread+0xdc>
    5b38:	fff00493          	li	s1,-1
    5b3c:	f91ff06f          	j	5acc <fl_fread+0x130>

00005b40 <fatfs_allocate_free_space>:
    5b40:	02069a63          	bnez	a3,5b74 <fatfs_allocate_free_space+0x34>
    5b44:	00000513          	li	a0,0
    5b48:	00008067          	ret
    5b4c:	00000513          	li	a0,0
    5b50:	02c12083          	lw	ra,44(sp)
    5b54:	02812403          	lw	s0,40(sp)
    5b58:	02412483          	lw	s1,36(sp)
    5b5c:	02012903          	lw	s2,32(sp)
    5b60:	01c12983          	lw	s3,28(sp)
    5b64:	01812a03          	lw	s4,24(sp)
    5b68:	01412a83          	lw	s5,20(sp)
    5b6c:	03010113          	addi	sp,sp,48
    5b70:	00008067          	ret
    5b74:	02452703          	lw	a4,36(a0)
    5b78:	fd010113          	addi	sp,sp,-48
    5b7c:	02812423          	sw	s0,40(sp)
    5b80:	03212023          	sw	s2,32(sp)
    5b84:	01312e23          	sw	s3,28(sp)
    5b88:	01512a23          	sw	s5,20(sp)
    5b8c:	02112623          	sw	ra,44(sp)
    5b90:	02912223          	sw	s1,36(sp)
    5b94:	01412c23          	sw	s4,24(sp)
    5b98:	fff00793          	li	a5,-1
    5b9c:	00050413          	mv	s0,a0
    5ba0:	00058a93          	mv	s5,a1
    5ba4:	00060993          	mv	s3,a2
    5ba8:	00068913          	mv	s2,a3
    5bac:	00f70863          	beq	a4,a5,5bbc <fatfs_allocate_free_space+0x7c>
    5bb0:	fff00593          	li	a1,-1
    5bb4:	fffff097          	auipc	ra,0xfffff
    5bb8:	600080e7          	jalr	1536(ra) # 51b4 <fatfs_set_fs_info_next_free_cluster>
    5bbc:	00044a03          	lbu	s4,0(s0)
    5bc0:	00090513          	mv	a0,s2
    5bc4:	009a1a13          	slli	s4,s4,0x9
    5bc8:	000a0593          	mv	a1,s4
    5bcc:	ffffd097          	auipc	ra,0xffffd
    5bd0:	a5c080e7          	jalr	-1444(ra) # 2628 <__udivsi3>
    5bd4:	00050493          	mv	s1,a0
    5bd8:	00050593          	mv	a1,a0
    5bdc:	000a0513          	mv	a0,s4
    5be0:	ffffd097          	auipc	ra,0xffffd
    5be4:	238080e7          	jalr	568(ra) # 2e18 <__mulsi3>
    5be8:	01250463          	beq	a0,s2,5bf0 <fatfs_allocate_free_space+0xb0>
    5bec:	00148493          	addi	s1,s1,1
    5bf0:	040a8463          	beqz	s5,5c38 <fatfs_allocate_free_space+0xf8>
    5bf4:	00842583          	lw	a1,8(s0)
    5bf8:	00c10613          	addi	a2,sp,12
    5bfc:	00040513          	mv	a0,s0
    5c00:	fffff097          	auipc	ra,0xfffff
    5c04:	66c080e7          	jalr	1644(ra) # 526c <fatfs_find_blank_cluster>
    5c08:	f40502e3          	beqz	a0,5b4c <fatfs_allocate_free_space+0xc>
    5c0c:	00100793          	li	a5,1
    5c10:	02f49863          	bne	s1,a5,5c40 <fatfs_allocate_free_space+0x100>
    5c14:	00c12483          	lw	s1,12(sp)
    5c18:	fff00613          	li	a2,-1
    5c1c:	00040513          	mv	a0,s0
    5c20:	00048593          	mv	a1,s1
    5c24:	fffff097          	auipc	ra,0xfffff
    5c28:	768080e7          	jalr	1896(ra) # 538c <fatfs_fat_set_cluster>
    5c2c:	00100513          	li	a0,1
    5c30:	0099a023          	sw	s1,0(s3)
    5c34:	f1dff06f          	j	5b50 <fatfs_allocate_free_space+0x10>
    5c38:	0009a783          	lw	a5,0(s3)
    5c3c:	00f12623          	sw	a5,12(sp)
    5c40:	00048613          	mv	a2,s1
    5c44:	00c10593          	addi	a1,sp,12
    5c48:	00040513          	mv	a0,s0
    5c4c:	00000097          	auipc	ra,0x0
    5c50:	964080e7          	jalr	-1692(ra) # 55b0 <fatfs_add_free_space>
    5c54:	00a03533          	snez	a0,a0
    5c58:	ef9ff06f          	j	5b50 <fatfs_allocate_free_space+0x10>

00005c5c <fatfs_add_file_entry>:
    5c5c:	f8010113          	addi	sp,sp,-128
    5c60:	00f12a23          	sw	a5,20(sp)
    5c64:	03852783          	lw	a5,56(a0)
    5c68:	06112e23          	sw	ra,124(sp)
    5c6c:	06812c23          	sw	s0,120(sp)
    5c70:	06912a23          	sw	s1,116(sp)
    5c74:	07212823          	sw	s2,112(sp)
    5c78:	07312623          	sw	s3,108(sp)
    5c7c:	07412423          	sw	s4,104(sp)
    5c80:	07512223          	sw	s5,100(sp)
    5c84:	07612023          	sw	s6,96(sp)
    5c88:	05712e23          	sw	s7,92(sp)
    5c8c:	05812c23          	sw	s8,88(sp)
    5c90:	05912a23          	sw	s9,84(sp)
    5c94:	05a12823          	sw	s10,80(sp)
    5c98:	05b12623          	sw	s11,76(sp)
    5c9c:	00b12423          	sw	a1,8(sp)
    5ca0:	00c12623          	sw	a2,12(sp)
    5ca4:	00e12823          	sw	a4,16(sp)
    5ca8:	01012c23          	sw	a6,24(sp)
    5cac:	04079263          	bnez	a5,5cf0 <fatfs_add_file_entry+0x94>
    5cb0:	00000513          	li	a0,0
    5cb4:	07c12083          	lw	ra,124(sp)
    5cb8:	07812403          	lw	s0,120(sp)
    5cbc:	07412483          	lw	s1,116(sp)
    5cc0:	07012903          	lw	s2,112(sp)
    5cc4:	06c12983          	lw	s3,108(sp)
    5cc8:	06812a03          	lw	s4,104(sp)
    5ccc:	06412a83          	lw	s5,100(sp)
    5cd0:	06012b03          	lw	s6,96(sp)
    5cd4:	05c12b83          	lw	s7,92(sp)
    5cd8:	05812c03          	lw	s8,88(sp)
    5cdc:	05412c83          	lw	s9,84(sp)
    5ce0:	05012d03          	lw	s10,80(sp)
    5ce4:	04c12d83          	lw	s11,76(sp)
    5ce8:	08010113          	addi	sp,sp,128
    5cec:	00008067          	ret
    5cf0:	00050413          	mv	s0,a0
    5cf4:	00c12503          	lw	a0,12(sp)
    5cf8:	00068a93          	mv	s5,a3
    5cfc:	ffffe097          	auipc	ra,0xffffe
    5d00:	9c0080e7          	jalr	-1600(ra) # 36bc <fatfs_lfn_entries_required>
    5d04:	00150713          	addi	a4,a0,1
    5d08:	00100793          	li	a5,1
    5d0c:	00050493          	mv	s1,a0
    5d10:	fae7f0e3          	bgeu	a5,a4,5cb0 <fatfs_add_file_entry+0x54>
    5d14:	00000913          	li	s2,0
    5d18:	00000a13          	li	s4,0
    5d1c:	00000993          	li	s3,0
    5d20:	00000b13          	li	s6,0
    5d24:	00000d93          	li	s11,0
    5d28:	0e500b93          	li	s7,229
    5d2c:	01000c13          	li	s8,16
    5d30:	00812583          	lw	a1,8(sp)
    5d34:	00000693          	li	a3,0
    5d38:	00090613          	mv	a2,s2
    5d3c:	00040513          	mv	a0,s0
    5d40:	ffffe097          	auipc	ra,0xffffe
    5d44:	79c080e7          	jalr	1948(ra) # 44dc <fatfs_sector_reader>
    5d48:	14050463          	beqz	a0,5e90 <fatfs_add_file_entry+0x234>
    5d4c:	04440d13          	addi	s10,s0,68
    5d50:	000d8793          	mv	a5,s11
    5d54:	00000c93          	li	s9,0
    5d58:	000d0513          	mv	a0,s10
    5d5c:	00f12e23          	sw	a5,28(sp)
    5d60:	ffffe097          	auipc	ra,0xffffe
    5d64:	86c080e7          	jalr	-1940(ra) # 35cc <fatfs_entry_lfn_text>
    5d68:	01c12783          	lw	a5,28(sp)
    5d6c:	00050d93          	mv	s11,a0
    5d70:	02050c63          	beqz	a0,5da8 <fatfs_add_file_entry+0x14c>
    5d74:	00079863          	bnez	a5,5d84 <fatfs_add_file_entry+0x128>
    5d78:	000c8a13          	mv	s4,s9
    5d7c:	00090993          	mv	s3,s2
    5d80:	00100b13          	li	s6,1
    5d84:	00178d93          	addi	s11,a5,1
    5d88:	001c8713          	addi	a4,s9,1
    5d8c:	0ff77c93          	zext.b	s9,a4
    5d90:	020d0d13          	addi	s10,s10,32
    5d94:	018c9663          	bne	s9,s8,5da0 <fatfs_add_file_entry+0x144>
    5d98:	00190913          	addi	s2,s2,1
    5d9c:	f95ff06f          	j	5d30 <fatfs_add_file_entry+0xd4>
    5da0:	000d8793          	mv	a5,s11
    5da4:	fb5ff06f          	j	5d58 <fatfs_add_file_entry+0xfc>
    5da8:	000d4603          	lbu	a2,0(s10)
    5dac:	0d761c63          	bne	a2,s7,5e84 <fatfs_add_file_entry+0x228>
    5db0:	00079863          	bnez	a5,5dc0 <fatfs_add_file_entry+0x164>
    5db4:	000c8a13          	mv	s4,s9
    5db8:	00090993          	mv	s3,s2
    5dbc:	00100b13          	li	s6,1
    5dc0:	00178d93          	addi	s11,a5,1
    5dc4:	fc97c2e3          	blt	a5,s1,5d88 <fatfs_add_file_entry+0x12c>
    5dc8:	00ba8693          	addi	a3,s5,11
    5dcc:	000a8713          	mv	a4,s5
    5dd0:	00000913          	li	s2,0
    5dd4:	00074603          	lbu	a2,0(a4)
    5dd8:	00195793          	srli	a5,s2,0x1
    5ddc:	00791913          	slli	s2,s2,0x7
    5de0:	0127e7b3          	or	a5,a5,s2
    5de4:	00170713          	addi	a4,a4,1
    5de8:	00c787b3          	add	a5,a5,a2
    5dec:	0ff7f913          	zext.b	s2,a5
    5df0:	fed712e3          	bne	a4,a3,5dd4 <fatfs_add_file_entry+0x178>
    5df4:	00098b13          	mv	s6,s3
    5df8:	00000d93          	li	s11,0
    5dfc:	04440c13          	addi	s8,s0,68
    5e00:	01000c93          	li	s9,16
    5e04:	00812583          	lw	a1,8(sp)
    5e08:	00000693          	li	a3,0
    5e0c:	000b0613          	mv	a2,s6
    5e10:	00040513          	mv	a0,s0
    5e14:	ffffe097          	auipc	ra,0xffffe
    5e18:	6c8080e7          	jalr	1736(ra) # 44dc <fatfs_sector_reader>
    5e1c:	e8050ae3          	beqz	a0,5cb0 <fatfs_add_file_entry+0x54>
    5e20:	000c0b93          	mv	s7,s8
    5e24:	00000713          	li	a4,0
    5e28:	00000d13          	li	s10,0
    5e2c:	000d9663          	bnez	s11,5e38 <fatfs_add_file_entry+0x1dc>
    5e30:	11699863          	bne	s3,s6,5f40 <fatfs_add_file_entry+0x2e4>
    5e34:	114d1663          	bne	s10,s4,5f40 <fatfs_add_file_entry+0x2e4>
    5e38:	0e049263          	bnez	s1,5f1c <fatfs_add_file_entry+0x2c0>
    5e3c:	01812703          	lw	a4,24(sp)
    5e40:	01012603          	lw	a2,16(sp)
    5e44:	01412583          	lw	a1,20(sp)
    5e48:	02010693          	addi	a3,sp,32
    5e4c:	000a8513          	mv	a0,s5
    5e50:	ffffe097          	auipc	ra,0xffffe
    5e54:	9c4080e7          	jalr	-1596(ra) # 3814 <fatfs_sfn_create_entry>
    5e58:	02010593          	addi	a1,sp,32
    5e5c:	02000613          	li	a2,32
    5e60:	000b8513          	mv	a0,s7
    5e64:	ffffd097          	auipc	ra,0xffffd
    5e68:	88c080e7          	jalr	-1908(ra) # 26f0 <memcpy>
    5e6c:	03842783          	lw	a5,56(s0)
    5e70:	24442503          	lw	a0,580(s0)
    5e74:	00100613          	li	a2,1
    5e78:	000c0593          	mv	a1,s8
    5e7c:	000780e7          	jalr	a5
    5e80:	e35ff06f          	j	5cb4 <fatfs_add_file_entry+0x58>
    5e84:	f20606e3          	beqz	a2,5db0 <fatfs_add_file_entry+0x154>
    5e88:	00000b13          	li	s6,0
    5e8c:	efdff06f          	j	5d88 <fatfs_add_file_entry+0x12c>
    5e90:	00842583          	lw	a1,8(s0)
    5e94:	02010613          	addi	a2,sp,32
    5e98:	00040513          	mv	a0,s0
    5e9c:	fffff097          	auipc	ra,0xfffff
    5ea0:	3d0080e7          	jalr	976(ra) # 526c <fatfs_find_blank_cluster>
    5ea4:	e00506e3          	beqz	a0,5cb0 <fatfs_add_file_entry+0x54>
    5ea8:	02012b83          	lw	s7,32(sp)
    5eac:	00812583          	lw	a1,8(sp)
    5eb0:	00040513          	mv	a0,s0
    5eb4:	000b8613          	mv	a2,s7
    5eb8:	fffff097          	auipc	ra,0xfffff
    5ebc:	65c080e7          	jalr	1628(ra) # 5514 <fatfs_fat_add_cluster_to_chain>
    5ec0:	de0508e3          	beqz	a0,5cb0 <fatfs_add_file_entry+0x54>
    5ec4:	20000613          	li	a2,512
    5ec8:	00000593          	li	a1,0
    5ecc:	04440513          	addi	a0,s0,68
    5ed0:	ffffd097          	auipc	ra,0xffffd
    5ed4:	804080e7          	jalr	-2044(ra) # 26d4 <memset>
    5ed8:	00000c13          	li	s8,0
    5edc:	00044783          	lbu	a5,0(s0)
    5ee0:	00fc6a63          	bltu	s8,a5,5ef4 <fatfs_add_file_entry+0x298>
    5ee4:	ee0b12e3          	bnez	s6,5dc8 <fatfs_add_file_entry+0x16c>
    5ee8:	00090993          	mv	s3,s2
    5eec:	00000a13          	li	s4,0
    5ef0:	ed9ff06f          	j	5dc8 <fatfs_add_file_entry+0x16c>
    5ef4:	00000693          	li	a3,0
    5ef8:	000c0613          	mv	a2,s8
    5efc:	000b8593          	mv	a1,s7
    5f00:	00040513          	mv	a0,s0
    5f04:	ffffd097          	auipc	ra,0xffffd
    5f08:	2f0080e7          	jalr	752(ra) # 31f4 <fatfs_write_sector>
    5f0c:	da0502e3          	beqz	a0,5cb0 <fatfs_add_file_entry+0x54>
    5f10:	001c0c13          	addi	s8,s8,1
    5f14:	0ffc7c13          	zext.b	s8,s8
    5f18:	fc5ff06f          	j	5edc <fatfs_add_file_entry+0x280>
    5f1c:	00c12503          	lw	a0,12(sp)
    5f20:	fff48493          	addi	s1,s1,-1
    5f24:	00090693          	mv	a3,s2
    5f28:	00048613          	mv	a2,s1
    5f2c:	000b8593          	mv	a1,s7
    5f30:	ffffd097          	auipc	ra,0xffffd
    5f34:	7bc080e7          	jalr	1980(ra) # 36ec <fatfs_filename_to_lfn>
    5f38:	00100d93          	li	s11,1
    5f3c:	00100713          	li	a4,1
    5f40:	001d0793          	addi	a5,s10,1
    5f44:	0ff7fd13          	zext.b	s10,a5
    5f48:	020b8b93          	addi	s7,s7,32
    5f4c:	ef9d10e3          	bne	s10,s9,5e2c <fatfs_add_file_entry+0x1d0>
    5f50:	00070e63          	beqz	a4,5f6c <fatfs_add_file_entry+0x310>
    5f54:	03842783          	lw	a5,56(s0)
    5f58:	24442503          	lw	a0,580(s0)
    5f5c:	00100613          	li	a2,1
    5f60:	000c0593          	mv	a1,s8
    5f64:	000780e7          	jalr	a5
    5f68:	d40504e3          	beqz	a0,5cb0 <fatfs_add_file_entry+0x54>
    5f6c:	001b0b13          	addi	s6,s6,1
    5f70:	e95ff06f          	j	5e04 <fatfs_add_file_entry+0x1a8>

00005f74 <fl_fopen>:
    5f74:	000077b7          	lui	a5,0x7
    5f78:	c047a783          	lw	a5,-1020(a5) # 6c04 <_filelib_init>
    5f7c:	fa010113          	addi	sp,sp,-96
    5f80:	04812c23          	sw	s0,88(sp)
    5f84:	05412423          	sw	s4,72(sp)
    5f88:	04112e23          	sw	ra,92(sp)
    5f8c:	04912a23          	sw	s1,84(sp)
    5f90:	05212823          	sw	s2,80(sp)
    5f94:	05312623          	sw	s3,76(sp)
    5f98:	05512223          	sw	s5,68(sp)
    5f9c:	05612023          	sw	s6,64(sp)
    5fa0:	03712e23          	sw	s7,60(sp)
    5fa4:	03812c23          	sw	s8,56(sp)
    5fa8:	03912a23          	sw	s9,52(sp)
    5fac:	00050a13          	mv	s4,a0
    5fb0:	00058413          	mv	s0,a1
    5fb4:	00079663          	bnez	a5,5fc0 <fl_fopen+0x4c>
    5fb8:	ffffd097          	auipc	ra,0xffffd
    5fbc:	2f8080e7          	jalr	760(ra) # 32b0 <fl_init>
    5fc0:	000077b7          	lui	a5,0x7
    5fc4:	c007a783          	lw	a5,-1024(a5) # 6c00 <_filelib_valid>
    5fc8:	36078c63          	beqz	a5,6340 <fl_fopen+0x3cc>
    5fcc:	360a0a63          	beqz	s4,6340 <fl_fopen+0x3cc>
    5fd0:	10040863          	beqz	s0,60e0 <fl_fopen+0x16c>
    5fd4:	00040513          	mv	a0,s0
    5fd8:	ffffc097          	auipc	ra,0xffffc
    5fdc:	73c080e7          	jalr	1852(ra) # 2714 <strlen>
    5fe0:	00000493          	li	s1,0
    5fe4:	00000713          	li	a4,0
    5fe8:	05700693          	li	a3,87
    5fec:	07200613          	li	a2,114
    5ff0:	07700813          	li	a6,119
    5ff4:	06100893          	li	a7,97
    5ff8:	06200313          	li	t1,98
    5ffc:	04100593          	li	a1,65
    6000:	04200e13          	li	t3,66
    6004:	05200e93          	li	t4,82
    6008:	02b00f13          	li	t5,43
    600c:	10a74663          	blt	a4,a0,6118 <fl_fopen+0x1a4>
    6010:	00007937          	lui	s2,0x7
    6014:	40890793          	addi	a5,s2,1032 # 7408 <_fs>
    6018:	0387a783          	lw	a5,56(a5)
    601c:	40890b13          	addi	s6,s2,1032
    6020:	00079463          	bnez	a5,6028 <fl_fopen+0xb4>
    6024:	0d94f493          	andi	s1,s1,217
    6028:	03cb2783          	lw	a5,60(s6)
    602c:	00078463          	beqz	a5,6034 <fl_fopen+0xc0>
    6030:	000780e7          	jalr	a5
    6034:	0014fc93          	andi	s9,s1,1
    6038:	160c9863          	bnez	s9,61a8 <fl_fopen+0x234>
    603c:	0204f793          	andi	a5,s1,32
    6040:	08078863          	beqz	a5,60d0 <fl_fopen+0x15c>
    6044:	038b2783          	lw	a5,56(s6)
    6048:	06078a63          	beqz	a5,60bc <fl_fopen+0x148>
    604c:	ffffd097          	auipc	ra,0xffffd
    6050:	06c080e7          	jalr	108(ra) # 30b8 <_allocate_file>
    6054:	00050413          	mv	s0,a0
    6058:	06050263          	beqz	a0,60bc <fl_fopen+0x148>
    605c:	01450b93          	addi	s7,a0,20
    6060:	10400613          	li	a2,260
    6064:	00000593          	li	a1,0
    6068:	000b8513          	mv	a0,s7
    606c:	ffffc097          	auipc	ra,0xffffc
    6070:	668080e7          	jalr	1640(ra) # 26d4 <memset>
    6074:	11840a93          	addi	s5,s0,280
    6078:	10400613          	li	a2,260
    607c:	00000593          	li	a1,0
    6080:	000a8513          	mv	a0,s5
    6084:	ffffc097          	auipc	ra,0xffffc
    6088:	650080e7          	jalr	1616(ra) # 26d4 <memset>
    608c:	10400713          	li	a4,260
    6090:	000a8693          	mv	a3,s5
    6094:	10400613          	li	a2,260
    6098:	000b8593          	mv	a1,s7
    609c:	000a0513          	mv	a0,s4
    60a0:	ffffe097          	auipc	ra,0xffffe
    60a4:	c78080e7          	jalr	-904(ra) # 3d18 <fatfs_split_path>
    60a8:	fff00793          	li	a5,-1
    60ac:	10f51c63          	bne	a0,a5,61c4 <fl_fopen+0x250>
    60b0:	00040513          	mv	a0,s0
    60b4:	ffffd097          	auipc	ra,0xffffd
    60b8:	078080e7          	jalr	120(ra) # 312c <_free_file>
    60bc:	00000413          	li	s0,0
    60c0:	260c9c63          	bnez	s9,6338 <fl_fopen+0x3c4>
    60c4:	0e041c63          	bnez	s0,61bc <fl_fopen+0x248>
    60c8:	0064f793          	andi	a5,s1,6
    60cc:	24079e63          	bnez	a5,6328 <fl_fopen+0x3b4>
    60d0:	00000413          	li	s0,0
    60d4:	040b2783          	lw	a5,64(s6)
    60d8:	00078463          	beqz	a5,60e0 <fl_fopen+0x16c>
    60dc:	000780e7          	jalr	a5
    60e0:	05c12083          	lw	ra,92(sp)
    60e4:	00040513          	mv	a0,s0
    60e8:	05812403          	lw	s0,88(sp)
    60ec:	05412483          	lw	s1,84(sp)
    60f0:	05012903          	lw	s2,80(sp)
    60f4:	04c12983          	lw	s3,76(sp)
    60f8:	04812a03          	lw	s4,72(sp)
    60fc:	04412a83          	lw	s5,68(sp)
    6100:	04012b03          	lw	s6,64(sp)
    6104:	03c12b83          	lw	s7,60(sp)
    6108:	03812c03          	lw	s8,56(sp)
    610c:	03412c83          	lw	s9,52(sp)
    6110:	06010113          	addi	sp,sp,96
    6114:	00008067          	ret
    6118:	00e407b3          	add	a5,s0,a4
    611c:	0007c783          	lbu	a5,0(a5)
    6120:	04d78463          	beq	a5,a3,6168 <fl_fopen+0x1f4>
    6124:	02f6e463          	bltu	a3,a5,614c <fl_fopen+0x1d8>
    6128:	04b78463          	beq	a5,a1,6170 <fl_fopen+0x1fc>
    612c:	00f5e863          	bltu	a1,a5,613c <fl_fopen+0x1c8>
    6130:	05e78463          	beq	a5,t5,6178 <fl_fopen+0x204>
    6134:	00170713          	addi	a4,a4,1
    6138:	ed5ff06f          	j	600c <fl_fopen+0x98>
    613c:	03c78063          	beq	a5,t3,615c <fl_fopen+0x1e8>
    6140:	ffd79ae3          	bne	a5,t4,6134 <fl_fopen+0x1c0>
    6144:	0014e493          	ori	s1,s1,1
    6148:	fedff06f          	j	6134 <fl_fopen+0x1c0>
    614c:	fec78ce3          	beq	a5,a2,6144 <fl_fopen+0x1d0>
    6150:	00f66a63          	bltu	a2,a5,6164 <fl_fopen+0x1f0>
    6154:	01178e63          	beq	a5,a7,6170 <fl_fopen+0x1fc>
    6158:	fc679ee3          	bne	a5,t1,6134 <fl_fopen+0x1c0>
    615c:	0084e493          	ori	s1,s1,8
    6160:	fd5ff06f          	j	6134 <fl_fopen+0x1c0>
    6164:	fd0798e3          	bne	a5,a6,6134 <fl_fopen+0x1c0>
    6168:	0324e493          	ori	s1,s1,50
    616c:	fc9ff06f          	j	6134 <fl_fopen+0x1c0>
    6170:	0264e493          	ori	s1,s1,38
    6174:	fc1ff06f          	j	6134 <fl_fopen+0x1c0>
    6178:	0014f793          	andi	a5,s1,1
    617c:	00078663          	beqz	a5,6188 <fl_fopen+0x214>
    6180:	0024e493          	ori	s1,s1,2
    6184:	fb1ff06f          	j	6134 <fl_fopen+0x1c0>
    6188:	0024f793          	andi	a5,s1,2
    618c:	00078663          	beqz	a5,6198 <fl_fopen+0x224>
    6190:	0314e493          	ori	s1,s1,49
    6194:	fa1ff06f          	j	6134 <fl_fopen+0x1c0>
    6198:	0044f793          	andi	a5,s1,4
    619c:	f8078ce3          	beqz	a5,6134 <fl_fopen+0x1c0>
    61a0:	0274e493          	ori	s1,s1,39
    61a4:	f91ff06f          	j	6134 <fl_fopen+0x1c0>
    61a8:	000a0513          	mv	a0,s4
    61ac:	fffff097          	auipc	ra,0xfffff
    61b0:	830080e7          	jalr	-2000(ra) # 49dc <_open_file>
    61b4:	00050413          	mv	s0,a0
    61b8:	e80502e3          	beqz	a0,603c <fl_fopen+0xc8>
    61bc:	42940c23          	sb	s1,1080(s0)
    61c0:	f15ff06f          	j	60d4 <fl_fopen+0x160>
    61c4:	00040513          	mv	a0,s0
    61c8:	ffffe097          	auipc	ra,0xffffe
    61cc:	da4080e7          	jalr	-604(ra) # 3f6c <_check_file_open>
    61d0:	00050993          	mv	s3,a0
    61d4:	ec051ee3          	bnez	a0,60b0 <fl_fopen+0x13c>
    61d8:	01444783          	lbu	a5,20(s0)
    61dc:	0e079663          	bnez	a5,62c8 <fl_fopen+0x354>
    61e0:	008b2783          	lw	a5,8(s6)
    61e4:	00f42023          	sw	a5,0(s0)
    61e8:	00042583          	lw	a1,0(s0)
    61ec:	01010693          	addi	a3,sp,16
    61f0:	000a8613          	mv	a2,s5
    61f4:	40890513          	addi	a0,s2,1032
    61f8:	ffffe097          	auipc	ra,0xffffe
    61fc:	424080e7          	jalr	1060(ra) # 461c <fatfs_get_file_entry>
    6200:	00100793          	li	a5,1
    6204:	eaf506e3          	beq	a0,a5,60b0 <fl_fopen+0x13c>
    6208:	00042223          	sw	zero,4(s0)
    620c:	00100693          	li	a3,1
    6210:	00440613          	addi	a2,s0,4
    6214:	00100593          	li	a1,1
    6218:	40890513          	addi	a0,s2,1032
    621c:	00000097          	auipc	ra,0x0
    6220:	924080e7          	jalr	-1756(ra) # 5b40 <fatfs_allocate_free_space>
    6224:	e80506e3          	beqz	a0,60b0 <fl_fopen+0x13c>
    6228:	00002c37          	lui	s8,0x2
    622c:	21c40b93          	addi	s7,s0,540
    6230:	70fc0c13          	addi	s8,s8,1807 # 270f <memcpy+0x1f>
    6234:	000a8593          	mv	a1,s5
    6238:	00410513          	addi	a0,sp,4
    623c:	ffffd097          	auipc	ra,0xffffd
    6240:	680080e7          	jalr	1664(ra) # 38bc <fatfs_lfn_create_sfn>
    6244:	08098e63          	beqz	s3,62e0 <fl_fopen+0x36c>
    6248:	00098613          	mv	a2,s3
    624c:	00410593          	addi	a1,sp,4
    6250:	000b8513          	mv	a0,s7
    6254:	ffffd097          	auipc	ra,0xffffd
    6258:	7e4080e7          	jalr	2020(ra) # 3a38 <fatfs_lfn_generate_tail>
    625c:	00042583          	lw	a1,0(s0)
    6260:	000b8613          	mv	a2,s7
    6264:	40890513          	addi	a0,s2,1032
    6268:	fffff097          	auipc	ra,0xfffff
    626c:	8ec080e7          	jalr	-1812(ra) # 4b54 <fatfs_sfn_exists>
    6270:	00050663          	beqz	a0,627c <fl_fopen+0x308>
    6274:	00198993          	addi	s3,s3,1
    6278:	fb899ee3          	bne	s3,s8,6234 <fl_fopen+0x2c0>
    627c:	00442703          	lw	a4,4(s0)
    6280:	000027b7          	lui	a5,0x2
    6284:	70f78793          	addi	a5,a5,1807 # 270f <memcpy+0x1f>
    6288:	00070593          	mv	a1,a4
    628c:	02f98663          	beq	s3,a5,62b8 <fl_fopen+0x344>
    6290:	00042583          	lw	a1,0(s0)
    6294:	00000813          	li	a6,0
    6298:	00000793          	li	a5,0
    629c:	000b8693          	mv	a3,s7
    62a0:	000a8613          	mv	a2,s5
    62a4:	40890513          	addi	a0,s2,1032
    62a8:	00000097          	auipc	ra,0x0
    62ac:	9b4080e7          	jalr	-1612(ra) # 5c5c <fatfs_add_file_entry>
    62b0:	04051463          	bnez	a0,62f8 <fl_fopen+0x384>
    62b4:	00442583          	lw	a1,4(s0)
    62b8:	40890513          	addi	a0,s2,1032
    62bc:	fffff097          	auipc	ra,0xfffff
    62c0:	1e8080e7          	jalr	488(ra) # 54a4 <fatfs_free_cluster_chain>
    62c4:	dedff06f          	j	60b0 <fl_fopen+0x13c>
    62c8:	00040593          	mv	a1,s0
    62cc:	000b8513          	mv	a0,s7
    62d0:	ffffe097          	auipc	ra,0xffffe
    62d4:	558080e7          	jalr	1368(ra) # 4828 <_open_directory>
    62d8:	f00518e3          	bnez	a0,61e8 <fl_fopen+0x274>
    62dc:	dd5ff06f          	j	60b0 <fl_fopen+0x13c>
    62e0:	00b00613          	li	a2,11
    62e4:	00410593          	addi	a1,sp,4
    62e8:	000b8513          	mv	a0,s7
    62ec:	ffffc097          	auipc	ra,0xffffc
    62f0:	404080e7          	jalr	1028(ra) # 26f0 <memcpy>
    62f4:	f69ff06f          	j	625c <fl_fopen+0x2e8>
    62f8:	fff00793          	li	a5,-1
    62fc:	00042623          	sw	zero,12(s0)
    6300:	00042423          	sw	zero,8(s0)
    6304:	42f42823          	sw	a5,1072(s0)
    6308:	42042a23          	sw	zero,1076(s0)
    630c:	00042823          	sw	zero,16(s0)
    6310:	22f42423          	sw	a5,552(s0)
    6314:	22f42623          	sw	a5,556(s0)
    6318:	40890513          	addi	a0,s2,1032
    631c:	ffffe097          	auipc	ra,0xffffe
    6320:	054080e7          	jalr	84(ra) # 4370 <fatfs_fat_purge>
    6324:	d9dff06f          	j	60c0 <fl_fopen+0x14c>
    6328:	000a0513          	mv	a0,s4
    632c:	ffffe097          	auipc	ra,0xffffe
    6330:	6b0080e7          	jalr	1712(ra) # 49dc <_open_file>
    6334:	00050413          	mv	s0,a0
    6338:	e80412e3          	bnez	s0,61bc <fl_fopen+0x248>
    633c:	d95ff06f          	j	60d0 <fl_fopen+0x15c>
    6340:	00000413          	li	s0,0
    6344:	d9dff06f          	j	60e0 <fl_fopen+0x16c>

00006348 <g_last_progress>:
    6348:	ffffffff                                ....

0000634c <g_volume>:
    634c:	00000004                                ....

00006350 <cmd16>:
    6350:	02000050 00001500                       P.......

00006358 <acmd41>:
    6358:	00004069 00000100                       i@......

00006360 <cmd55>:
    6360:	00000077 00000100                       w.......

00006368 <cmd8>:
    6368:	01000048 000087aa                       H.......

00006370 <cmd0>:
    6370:	00000040 00009500                       @.......

00006378 <AUDIO>:
    6378:	00018000                                ....

0000637c <DISPLAY>:
    637c:	00014000                                .@..

00006380 <RGBSEL>:
    6380:	00012000                                . ..

00006384 <VOLUME>:
    6384:	00011000                                ....

00006388 <BUTTONS>:
    6388:	00010100                                ....

0000638c <SDCARD>:
    638c:	00010080                                ....

00006390 <OLED_RST>:
    6390:	00010010                                ....

00006394 <OLED>:
    6394:	00010008                                ....

00006398 <LEDS>:
    6398:	00010004 3d3d3d2b 00002b3d 3a3a287c     ....+====+..|(::
    63a8:	00007c29 2829207c 00007c20 2e2e287c     )|..| )( |..|(..
    63b8:	00007c29 3142203c 00000000 00007325     )|..< B1....%s..
    63c8:	20203542 42202020 20202032 36422020     B5     B2     B6
    63d8:	00000000 6b636972 6c6c6f72 7761722e     ....rickroll.raw
    63e8:	00000000 73756d2f 00006369 00006272     ..../music..rb..
    63f8:	2073250a 20746f6e 6e756f66 00000a64     .%s not found...
    6408:	676d692f 676d692f 7761722e 00000000     /img/img.raw....
    6418:	20202020 3d3d3d3d 616c7020 20726579         ==== player 
    6428:	3d3d3d3d 20202020 00000a0a 2e206f6e     ====    ....no .
    6438:	20776172 2f206e69 6973756d 00000a63     raw in /music...
    6448:	203e6425 000a7325 2e202020 2e2d222d     %d> %s..   .-"-.
    6458:	00000000 3d272e20 3d5e3d5e 00002e27     .... .'=^=^='...
    6468:	3d5e3d2f 3d5e3d5e 005c3d5e 203d5e3a     /=^=^=^=^=\.:^= 
    6478:	54534145 3d205245 00003b5e 20205e7c     EASTER =^;..|^  
    6488:	21474745 5e202020 0000007c 5e3d5e3a     EGG!   ^|...:^=^
    6498:	5e3d5e3d 5e3d5e3d 0000003a 5e3d5c20     =^=^=^=^:... \=^
    64a8:	5e3d5e3d 2f3d5e3d 00000000 2e602020     =^=^=^=/....  `.
    64b8:	3d3d3d3d 00272e3d 20202020 7e7e7e60     =====.'.    `~~~
    64c8:	00000060 33323130 37363534 42413938     `...0123456789AB
    64d8:	46454443 00000000 5f544146 203a5346     CDEF....FAT_FS: 
    64e8:	6f727245 6f632072 20646c75 20746f6e     Error could not 
    64f8:	64616f6c 54414620 74656420 736c6961     load FAT details
    6508:	64252820 0a0d2129 00000000               (%d)!......

00006514 <seq.0>:
    6514:	00000003 00000003 00000004 00000004     ................
    6524:	00000005 00000006 00000005 00000006     ................

00006534 <ICON_RIGHT3_12>:
    6534:	00000001 00000001 00000001 00000001     ................
    6544:	00000001 00000001 00000101 00000101     ................
    6554:	00000101 00010101 00010101 00010101     ................
    6564:	01010101 01010101 01010101 01010101     ................
    6574:	01010101 01010101 01010101 01010101     ................
    6584:	01010101 00010101 00010101 00010101     ................
    6594:	00000101 00000101 00000101 00000001     ................
    65a4:	00000001 00000001 00000001 00000001     ................
    65b4:	00000001 00000000 00000000 00000000     ................

000065c4 <ICON_LEFT3_12>:
    65c4:	01000000 01000000 01000000 01000000     ................
    65d4:	01000000 01000000 01010000 01010000     ................
    65e4:	01010000 01010100 01010100 01010100     ................
    65f4:	01010101 01010101 01010101 01010101     ................
    6604:	01010101 01010101 01010101 01010101     ................
    6614:	01010101 01010100 01010100 01010100     ................
    6624:	01010000 01010000 01010000 01000000     ................
    6634:	01000000 01000000 01000000 01000000     ................
    6644:	01000000 00000000 00000000 00000000     ................

00006654 <ICON_RIGHT2_12>:
	...
    6660:	00010100 01010000 00000000 01010100     ................
    6670:	01010000 00000001 01010100 01010001     ................
    6680:	00000101 01010100 01010101 00010101     ................
    6690:	01010100 01010101 00010101 01010100     ................
    66a0:	01010101 00010101 01010100 01010001     ................
    66b0:	00000101 01010100 01010000 00000001     ................
    66c0:	00010100 01010000 00000000 00000000     ................
	...

000066e4 <ICON_LEFT2_12>:
	...
    66f4:	00000101 00010100 01000000 00000101     ................
    6704:	00010101 01010000 01000101 00010101     ................
    6714:	01010100 01010101 00010101 01010100     ................
    6724:	01010101 00010101 01010100 01010101     ................
    6734:	00010101 01010000 01000101 00010101     ................
    6744:	01000000 00000101 00010101 00000000     ................
    6754:	00000101 00010100 00000000 00000000     ................
	...

00006774 <ICON_RIGHT_12>:
    6774:	00000000 00010000 00000000 00000000     ................
    6784:	01010000 00000000 00000000 01010000     ................
    6794:	00000001 00000000 01010000 00000101     ................
    67a4:	01010100 01010101 00010101 01010100     ................
    67b4:	01010101 01010101 01010100 01010101     ................
    67c4:	01010101 01010100 01010101 00010101     ................
    67d4:	00000000 01010000 00000101 00000000     ................
    67e4:	01010000 00000001 00000000 01010000     ................
	...
    67fc:	00010000 00000000                       ........

00006804 <ICON_LEFT_12>:
    6804:	00000000 00000100 00000000 00000000     ................
    6814:	00000101 00000000 01000000 00000101     ................
    6824:	00000000 01010000 00000101 00000000     ................
    6834:	01010100 01010101 00010101 01010101     ................
    6844:	01010101 00010101 01010101 01010101     ................
    6854:	00010101 01010100 01010101 00010101     ................
    6864:	01010000 00000101 00000000 01000000     ................
    6874:	00000101 00000000 00000000 00000101     ................
	...
    688c:	00000100 00000000                       ........

00006894 <ICON_PAUSE_12>:
	...
    68a0:	01010000 00000001 00010101 01010000     ................
    68b0:	00000001 00010101 01010000 00000001     ................
    68c0:	00010101 01010000 00000001 00010101     ................
    68d0:	01010000 00000001 00010101 01010000     ................
    68e0:	00000001 00010101 01010000 00000001     ................
    68f0:	00010101 01010000 00000001 00010101     ................
    6900:	01010000 00000001 00010101 00000000     ................
	...

00006924 <ICON_PLAY_12>:
	...
    6930:	00010100 00000000 00000000 01010100     ................
    6940:	00000001 00000000 01010100 00010101     ................
    6950:	00000000 01010100 01010101 00000001     ................
    6960:	01010100 01010101 00000101 01010100     ................
    6970:	01010101 00000101 01010100 01010101     ................
    6980:	00000001 01010100 00010101 00000000     ................
    6990:	01010100 00000001 00000000 00010100     ................
	...

000069b4 <font>:
    69b4:	00000000 00002f00 00030000 14000003     ...../..........
    69c4:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    69d4:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    69e4:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    69f4:	00080800 00200000 20000000 02040810     ...... .... ....
    6a04:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    6a14:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    6a24:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    6a34:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    6a44:	00141400 0a110000 01000004 0007052d     ............-...
    6a54:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    6a64:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    6a74:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    6a84:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    6a94:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    6aa4:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    6ab4:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    6ac4:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    6ad4:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    6ae4:	003f2102 01020000 20000201 00000020     .!?........  ...
    6af4:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    6b04:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    6b14:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    6b24:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    6b34:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    6b44:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    6b54:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    6b64:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    6b74:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    6b84:	043f2100 02010000 00000102 00000000     .!?.............
    6b94:	00000001 00000003 00000005 00000007     ................
    6ba4:	00000009 0000000e 00000010 00000012     ................
    6bb4:	00000014 00000016 00000018 0000001c     ................
    6bc4:	0000001e                                ....

00006bc8 <idx.1>:
    6bc8:	00000000                                ....

00006bcc <idle.2>:
    6bcc:	00000000                                ....

00006bd0 <g_last_was_easter>:
    6bd0:	00000000                                ....

00006bd4 <g_skip_image>:
    6bd4:	00000000                                ....

00006bd8 <file_count>:
    6bd8:	00000000                                ....

00006bdc <sdcard_while_loading_callback>:
    6bdc:	00000000                                ....

00006be0 <back_color>:
	...

00006be1 <front_color>:
    6be1:	                                         ...

00006be4 <cursor_y>:
    6be4:	00000000                                ....

00006be8 <cursor_x>:
    6be8:	00000000                                ....

00006bec <f_putchar>:
    6bec:	00000000                                ....

00006bf0 <_free_file_list>:
	...

00006bf8 <_open_file_list>:
	...

00006c00 <_filelib_valid>:
    6c00:	00000000                                ....

00006c04 <_filelib_init>:
    6c04:	00000000                                ....
