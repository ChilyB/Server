
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <_ZN7CKodama5init_Ev>:
 8000188:	b510      	push	{r4, lr}
 800018a:	4604      	mov	r4, r0
 800018c:	f000 fe0e 	bl	8000dac <_ZN5CGPIO9gpio_initEv>
 8000190:	2800      	cmp	r0, #0
 8000192:	da03      	bge.n	800019c <_ZN7CKodama5init_Ev+0x14>
 8000194:	f5a0 501c 	sub.w	r0, r0, #9984	; 0x2700
 8000198:	3810      	subs	r0, #16
 800019a:	bd10      	pop	{r4, pc}
 800019c:	4620      	mov	r0, r4
 800019e:	f000 fea1 	bl	8000ee4 <_ZN9CTerminal13terminal_initEv>
 80001a2:	2800      	cmp	r0, #0
 80001a4:	da03      	bge.n	80001ae <_ZN7CKodama5init_Ev+0x26>
 80001a6:	f5a0 409c 	sub.w	r0, r0, #19968	; 0x4e00
 80001aa:	3820      	subs	r0, #32
 80001ac:	bd10      	pop	{r4, pc}
 80001ae:	480e      	ldr	r0, [pc, #56]	; (80001e8 <_ZN7CKodama5init_Ev+0x60>)
 80001b0:	f001 fcc6 	bl	8001b40 <_ZN6CTimer10timer_initEv>
 80001b4:	2800      	cmp	r0, #0
 80001b6:	da03      	bge.n	80001c0 <_ZN7CKodama5init_Ev+0x38>
 80001b8:	f5a0 40ea 	sub.w	r0, r0, #29952	; 0x7500
 80001bc:	3830      	subs	r0, #48	; 0x30
 80001be:	bd10      	pop	{r4, pc}
 80001c0:	4620      	mov	r0, r4
 80001c2:	f001 f993 	bl	80014ec <_ZN8CSensors12sensors_initEv>
 80001c6:	2800      	cmp	r0, #0
 80001c8:	da03      	bge.n	80001d2 <_ZN7CKodama5init_Ev+0x4a>
 80001ca:	f5a0 401c 	sub.w	r0, r0, #39936	; 0x9c00
 80001ce:	3840      	subs	r0, #64	; 0x40
 80001d0:	bd10      	pop	{r4, pc}
 80001d2:	f104 00c4 	add.w	r0, r4, #196	; 0xc4
 80001d6:	f000 fcb1 	bl	8000b3c <_ZN6CMotor10motor_initEv>
 80001da:	2800      	cmp	r0, #0
 80001dc:	bfbc      	itt	lt
 80001de:	f5a0 4043 	sublt.w	r0, r0, #49920	; 0xc300
 80001e2:	3850      	sublt	r0, #80	; 0x50
 80001e4:	bd10      	pop	{r4, pc}
 80001e6:	bf00      	nop
 80001e8:	20000178 	.word	0x20000178

080001ec <_ZN7CKodama4initEv>:
 80001ec:	b570      	push	{r4, r5, r6, lr}
 80001ee:	4605      	mov	r5, r0
 80001f0:	2400      	movs	r4, #0
 80001f2:	4628      	mov	r0, r5
 80001f4:	f7ff ffc8 	bl	8000188 <_ZN7CKodama5init_Ev>
 80001f8:	4606      	mov	r6, r0
 80001fa:	490a      	ldr	r1, [pc, #40]	; (8000224 <_ZN7CKodama4initEv+0x38>)
 80001fc:	4628      	mov	r0, r5
 80001fe:	4622      	mov	r2, r4
 8000200:	4633      	mov	r3, r6
 8000202:	f000 ffaf 	bl	8001164 <_ZN9CTerminal6printfEPKcz>
 8000206:	4628      	mov	r0, r5
 8000208:	b91e      	cbnz	r6, 8000212 <_ZN7CKodama4initEv+0x26>
 800020a:	4907      	ldr	r1, [pc, #28]	; (8000228 <_ZN7CKodama4initEv+0x3c>)
 800020c:	f000 ffaa 	bl	8001164 <_ZN9CTerminal6printfEPKcz>
 8000210:	e005      	b.n	800021e <_ZN7CKodama4initEv+0x32>
 8000212:	4906      	ldr	r1, [pc, #24]	; (800022c <_ZN7CKodama4initEv+0x40>)
 8000214:	3401      	adds	r4, #1
 8000216:	f000 ffa5 	bl	8001164 <_ZN9CTerminal6printfEPKcz>
 800021a:	2c08      	cmp	r4, #8
 800021c:	d1e9      	bne.n	80001f2 <_ZN7CKodama4initEv+0x6>
 800021e:	4630      	mov	r0, r6
 8000220:	bd70      	pop	{r4, r5, r6, pc}
 8000222:	bf00      	nop
 8000224:	08002f80 	.word	0x08002f80
 8000228:	08002f95 	.word	0x08002f95
 800022c:	08002f9c 	.word	0x08002f9c

08000230 <_ZN7CKodama5sleepEv>:
 8000230:	b510      	push	{r4, lr}
 8000232:	2108      	movs	r1, #8
 8000234:	4604      	mov	r4, r0
 8000236:	f000 fe19 	bl	8000e6c <_ZN5CGPIO8gpio_offEm>
 800023a:	f104 00c4 	add.w	r0, r4, #196	; 0xc4
 800023e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000242:	f000 bbdf 	b.w	8000a04 <_ZN6CMotor11motor_sleepEv>

08000246 <_ZN7CKodama6wakeupEv>:
 8000246:	b510      	push	{r4, lr}
 8000248:	2108      	movs	r1, #8
 800024a:	4604      	mov	r4, r0
 800024c:	34c4      	adds	r4, #196	; 0xc4
 800024e:	f000 fdff 	bl	8000e50 <_ZN5CGPIO7gpio_onEm>
 8000252:	2100      	movs	r1, #0
 8000254:	4620      	mov	r0, r4
 8000256:	460a      	mov	r2, r1
 8000258:	f000 fc6a 	bl	8000b30 <_ZN6CMotor9set_motorEml>
 800025c:	4620      	mov	r0, r4
 800025e:	2101      	movs	r1, #1
 8000260:	2200      	movs	r2, #0
 8000262:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000266:	f000 bc63 	b.w	8000b30 <_ZN6CMotor9set_motorEml>

0800026a <_ZN7CKodama6set_dtEl>:
 800026a:	f8c0 10cc 	str.w	r1, [r0, #204]	; 0xcc
 800026e:	4770      	bx	lr

08000270 <_ZN7CKodama12rotate_robotEllPFlvE>:
 8000270:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000274:	f100 0784 	add.w	r7, r0, #132	; 0x84
 8000278:	4681      	mov	r9, r0
 800027a:	4638      	mov	r0, r7
 800027c:	4688      	mov	r8, r1
 800027e:	469a      	mov	sl, r3
 8000280:	4693      	mov	fp, r2
 8000282:	f001 fce9 	bl	8001c58 <_ZN4CIMU8imu_readEv>
 8000286:	4638      	mov	r0, r7
 8000288:	f001 fe0a 	bl	8001ea0 <_ZN4CIMU14get_imu_resultEv>
 800028c:	6883      	ldr	r3, [r0, #8]
 800028e:	2500      	movs	r5, #0
 8000290:	4498      	add	r8, r3
 8000292:	4821      	ldr	r0, [pc, #132]	; (8000318 <_ZN7CKodama12rotate_robotEllPFlvE+0xa8>)
 8000294:	210a      	movs	r1, #10
 8000296:	f001 fcab 	bl	8001bf0 <_ZN6CTimer8delay_msEm>
 800029a:	f109 06c4 	add.w	r6, r9, #196	; 0xc4
 800029e:	f1ba 0f00 	cmp.w	sl, #0
 80002a2:	d111      	bne.n	80002c8 <_ZN7CKodama12rotate_robotEllPFlvE+0x58>
 80002a4:	4638      	mov	r0, r7
 80002a6:	f001 fcd7 	bl	8001c58 <_ZN4CIMU8imu_readEv>
 80002aa:	4638      	mov	r0, r7
 80002ac:	f001 fdf8 	bl	8001ea0 <_ZN4CIMU14get_imu_resultEv>
 80002b0:	6884      	ldr	r4, [r0, #8]
 80002b2:	ebc4 0408 	rsb	r4, r4, r8
 80002b6:	2c00      	cmp	r4, #0
 80002b8:	bfcc      	ite	gt
 80002ba:	2301      	movgt	r3, #1
 80002bc:	f04f 33ff 	movle.w	r3, #4294967295	; 0xffffffff
 80002c0:	455d      	cmp	r5, fp
 80002c2:	da15      	bge.n	80002f0 <_ZN7CKodama12rotate_robotEllPFlvE+0x80>
 80002c4:	3501      	adds	r5, #1
 80002c6:	e013      	b.n	80002f0 <_ZN7CKodama12rotate_robotEllPFlvE+0x80>
 80002c8:	47d0      	blx	sl
 80002ca:	2800      	cmp	r0, #0
 80002cc:	d0ea      	beq.n	80002a4 <_ZN7CKodama12rotate_robotEllPFlvE+0x34>
 80002ce:	2100      	movs	r1, #0
 80002d0:	4630      	mov	r0, r6
 80002d2:	460a      	mov	r2, r1
 80002d4:	f000 fc2c 	bl	8000b30 <_ZN6CMotor9set_motorEml>
 80002d8:	4630      	mov	r0, r6
 80002da:	2101      	movs	r1, #1
 80002dc:	2200      	movs	r2, #0
 80002de:	f000 fc27 	bl	8000b30 <_ZN6CMotor9set_motorEml>
 80002e2:	480d      	ldr	r0, [pc, #52]	; (8000318 <_ZN7CKodama12rotate_robotEllPFlvE+0xa8>)
 80002e4:	2114      	movs	r1, #20
 80002e6:	b003      	add	sp, #12
 80002e8:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80002ec:	f001 bc80 	b.w	8001bf0 <_ZN6CTimer8delay_msEm>
 80002f0:	fb03 f205 	mul.w	r2, r3, r5
 80002f4:	4630      	mov	r0, r6
 80002f6:	2100      	movs	r1, #0
 80002f8:	9301      	str	r3, [sp, #4]
 80002fa:	f000 fc19 	bl	8000b30 <_ZN6CMotor9set_motorEml>
 80002fe:	9b01      	ldr	r3, [sp, #4]
 8000300:	426a      	negs	r2, r5
 8000302:	4630      	mov	r0, r6
 8000304:	2101      	movs	r1, #1
 8000306:	435a      	muls	r2, r3
 8000308:	f000 fc12 	bl	8000b30 <_ZN6CMotor9set_motorEml>
 800030c:	2c00      	cmp	r4, #0
 800030e:	bfb8      	it	lt
 8000310:	4264      	neglt	r4, r4
 8000312:	2c31      	cmp	r4, #49	; 0x31
 8000314:	dcbd      	bgt.n	8000292 <_ZN7CKodama12rotate_robotEllPFlvE+0x22>
 8000316:	e7da      	b.n	80002ce <_ZN7CKodama12rotate_robotEllPFlvE+0x5e>
 8000318:	20000178 	.word	0x20000178

0800031c <_ZN5CWifiC1Ev>:
 800031c:	4770      	bx	lr

0800031e <_ZN5CWifiD1Ev>:
 800031e:	4770      	bx	lr

08000320 <_ZN5CWifi12esp8266_sendEPc>:
 8000320:	b510      	push	{r4, lr}
 8000322:	1e4c      	subs	r4, r1, #1
 8000324:	f814 1f01 	ldrb.w	r1, [r4, #1]!
 8000328:	b119      	cbz	r1, 8000332 <_ZN5CWifi12esp8266_sendEPc+0x12>
 800032a:	4802      	ldr	r0, [pc, #8]	; (8000334 <_ZN5CWifi12esp8266_sendEPc+0x14>)
 800032c:	f000 fe5a 	bl	8000fe4 <_ZN9CTerminal7putcharEc>
 8000330:	e7f8      	b.n	8000324 <_ZN5CWifi12esp8266_sendEPc+0x4>
 8000332:	bd10      	pop	{r4, pc}
 8000334:	20000038 	.word	0x20000038

08000338 <_ZN5CWifi17esp8266_send_uintEj>:
 8000338:	b530      	push	{r4, r5, lr}
 800033a:	b085      	sub	sp, #20
 800033c:	2300      	movs	r3, #0
 800033e:	f88d 300f 	strb.w	r3, [sp, #15]
 8000342:	220a      	movs	r2, #10
 8000344:	230a      	movs	r3, #10
 8000346:	ac01      	add	r4, sp, #4
 8000348:	fbb1 f5f3 	udiv	r5, r1, r3
 800034c:	fb03 1315 	mls	r3, r3, r5, r1
 8000350:	3330      	adds	r3, #48	; 0x30
 8000352:	5513      	strb	r3, [r2, r4]
 8000354:	4629      	mov	r1, r5
 8000356:	1e53      	subs	r3, r2, #1
 8000358:	b10d      	cbz	r5, 800035e <_ZN5CWifi17esp8266_send_uintEj+0x26>
 800035a:	461a      	mov	r2, r3
 800035c:	e7f2      	b.n	8000344 <_ZN5CWifi17esp8266_send_uintEj+0xc>
 800035e:	18a1      	adds	r1, r4, r2
 8000360:	f7ff ffde 	bl	8000320 <_ZN5CWifi12esp8266_sendEPc>
 8000364:	b005      	add	sp, #20
 8000366:	bd30      	pop	{r4, r5, pc}

08000368 <_ZN5CWifi19esp8266_find_streamEPcjj>:
 8000368:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800036a:	4815      	ldr	r0, [pc, #84]	; (80003c0 <_ZN5CWifi19esp8266_find_streamEPcjj+0x58>)
 800036c:	461d      	mov	r5, r3
 800036e:	460e      	mov	r6, r1
 8000370:	4617      	mov	r7, r2
 8000372:	f001 fc2f 	bl	8001bd4 <_ZN6CTimer8get_timeEv>
 8000376:	4405      	add	r5, r0
 8000378:	4812      	ldr	r0, [pc, #72]	; (80003c4 <_ZN5CWifi19esp8266_find_streamEPcjj+0x5c>)
 800037a:	f000 fda1 	bl	8000ec0 <_ZN9CTerminal12clear_bufferEv>
 800037e:	2400      	movs	r4, #0
 8000380:	4810      	ldr	r0, [pc, #64]	; (80003c4 <_ZN5CWifi19esp8266_find_streamEPcjj+0x5c>)
 8000382:	f000 fe3b 	bl	8000ffc <_ZN9CTerminal6ischarEv>
 8000386:	f64f 73ff 	movw	r3, #65535	; 0xffff
 800038a:	4298      	cmp	r0, r3
 800038c:	d00d      	beq.n	80003aa <_ZN5CWifi19esp8266_find_streamEPcjj+0x42>
 800038e:	5d33      	ldrb	r3, [r6, r4]
 8000390:	4298      	cmp	r0, r3
 8000392:	d109      	bne.n	80003a8 <_ZN5CWifi19esp8266_find_streamEPcjj+0x40>
 8000394:	1e7b      	subs	r3, r7, #1
 8000396:	429c      	cmp	r4, r3
 8000398:	d201      	bcs.n	800039e <_ZN5CWifi19esp8266_find_streamEPcjj+0x36>
 800039a:	3401      	adds	r4, #1
 800039c:	e005      	b.n	80003aa <_ZN5CWifi19esp8266_find_streamEPcjj+0x42>
 800039e:	4809      	ldr	r0, [pc, #36]	; (80003c4 <_ZN5CWifi19esp8266_find_streamEPcjj+0x5c>)
 80003a0:	f000 fd8e 	bl	8000ec0 <_ZN9CTerminal12clear_bufferEv>
 80003a4:	2001      	movs	r0, #1
 80003a6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80003a8:	2400      	movs	r4, #0
 80003aa:	4805      	ldr	r0, [pc, #20]	; (80003c0 <_ZN5CWifi19esp8266_find_streamEPcjj+0x58>)
 80003ac:	f001 fc12 	bl	8001bd4 <_ZN6CTimer8get_timeEv>
 80003b0:	42a8      	cmp	r0, r5
 80003b2:	d3e5      	bcc.n	8000380 <_ZN5CWifi19esp8266_find_streamEPcjj+0x18>
 80003b4:	4803      	ldr	r0, [pc, #12]	; (80003c4 <_ZN5CWifi19esp8266_find_streamEPcjj+0x5c>)
 80003b6:	f000 fd83 	bl	8000ec0 <_ZN9CTerminal12clear_bufferEv>
 80003ba:	2000      	movs	r0, #0
 80003bc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80003be:	bf00      	nop
 80003c0:	20000178 	.word	0x20000178
 80003c4:	20000038 	.word	0x20000038

080003c8 <_ZN5CWifi12esp8266_initEv>:
 80003c8:	b510      	push	{r4, lr}
 80003ca:	2300      	movs	r3, #0
 80003cc:	4604      	mov	r4, r0
 80003ce:	f640 31b8 	movw	r1, #3000	; 0xbb8
 80003d2:	6003      	str	r3, [r0, #0]
 80003d4:	4822      	ldr	r0, [pc, #136]	; (8000460 <_ZN5CWifi12esp8266_initEv+0x98>)
 80003d6:	f001 fc0b 	bl	8001bf0 <_ZN6CTimer8delay_msEm>
 80003da:	7923      	ldrb	r3, [r4, #4]
 80003dc:	2b01      	cmp	r3, #1
 80003de:	bf0c      	ite	eq
 80003e0:	4920      	ldreq	r1, [pc, #128]	; (8000464 <_ZN5CWifi12esp8266_initEv+0x9c>)
 80003e2:	4921      	ldrne	r1, [pc, #132]	; (8000468 <_ZN5CWifi12esp8266_initEv+0xa0>)
 80003e4:	4620      	mov	r0, r4
 80003e6:	f7ff ff9b 	bl	8000320 <_ZN5CWifi12esp8266_sendEPc>
 80003ea:	481d      	ldr	r0, [pc, #116]	; (8000460 <_ZN5CWifi12esp8266_initEv+0x98>)
 80003ec:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
 80003f0:	f001 fbfe 	bl	8001bf0 <_ZN6CTimer8delay_msEm>
 80003f4:	4620      	mov	r0, r4
 80003f6:	491d      	ldr	r1, [pc, #116]	; (800046c <_ZN5CWifi12esp8266_initEv+0xa4>)
 80003f8:	f7ff ff92 	bl	8000320 <_ZN5CWifi12esp8266_sendEPc>
 80003fc:	4818      	ldr	r0, [pc, #96]	; (8000460 <_ZN5CWifi12esp8266_initEv+0x98>)
 80003fe:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
 8000402:	f001 fbf5 	bl	8001bf0 <_ZN6CTimer8delay_msEm>
 8000406:	4620      	mov	r0, r4
 8000408:	4919      	ldr	r1, [pc, #100]	; (8000470 <_ZN5CWifi12esp8266_initEv+0xa8>)
 800040a:	f7ff ff89 	bl	8000320 <_ZN5CWifi12esp8266_sendEPc>
 800040e:	4620      	mov	r0, r4
 8000410:	4918      	ldr	r1, [pc, #96]	; (8000474 <_ZN5CWifi12esp8266_initEv+0xac>)
 8000412:	f7ff ff85 	bl	8000320 <_ZN5CWifi12esp8266_sendEPc>
 8000416:	4620      	mov	r0, r4
 8000418:	4917      	ldr	r1, [pc, #92]	; (8000478 <_ZN5CWifi12esp8266_initEv+0xb0>)
 800041a:	f7ff ff81 	bl	8000320 <_ZN5CWifi12esp8266_sendEPc>
 800041e:	4620      	mov	r0, r4
 8000420:	4916      	ldr	r1, [pc, #88]	; (800047c <_ZN5CWifi12esp8266_initEv+0xb4>)
 8000422:	f7ff ff7d 	bl	8000320 <_ZN5CWifi12esp8266_sendEPc>
 8000426:	4620      	mov	r0, r4
 8000428:	4915      	ldr	r1, [pc, #84]	; (8000480 <_ZN5CWifi12esp8266_initEv+0xb8>)
 800042a:	f7ff ff79 	bl	8000320 <_ZN5CWifi12esp8266_sendEPc>
 800042e:	4620      	mov	r0, r4
 8000430:	4914      	ldr	r1, [pc, #80]	; (8000484 <_ZN5CWifi12esp8266_initEv+0xbc>)
 8000432:	2202      	movs	r2, #2
 8000434:	f644 6320 	movw	r3, #20000	; 0x4e20
 8000438:	f7ff ff96 	bl	8000368 <_ZN5CWifi19esp8266_find_streamEPcjj>
 800043c:	b158      	cbz	r0, 8000456 <_ZN5CWifi12esp8266_initEv+0x8e>
 800043e:	7923      	ldrb	r3, [r4, #4]
 8000440:	2b01      	cmp	r3, #1
 8000442:	d10b      	bne.n	800045c <_ZN5CWifi12esp8266_initEv+0x94>
 8000444:	4620      	mov	r0, r4
 8000446:	4910      	ldr	r1, [pc, #64]	; (8000488 <_ZN5CWifi12esp8266_initEv+0xc0>)
 8000448:	f7ff ff6a 	bl	8000320 <_ZN5CWifi12esp8266_sendEPc>
 800044c:	4804      	ldr	r0, [pc, #16]	; (8000460 <_ZN5CWifi12esp8266_initEv+0x98>)
 800044e:	21c8      	movs	r1, #200	; 0xc8
 8000450:	f001 fbce 	bl	8001bf0 <_ZN6CTimer8delay_msEm>
 8000454:	e002      	b.n	800045c <_ZN5CWifi12esp8266_initEv+0x94>
 8000456:	f06f 0001 	mvn.w	r0, #1
 800045a:	bd10      	pop	{r4, pc}
 800045c:	2000      	movs	r0, #0
 800045e:	bd10      	pop	{r4, pc}
 8000460:	20000178 	.word	0x20000178
 8000464:	08002fa8 	.word	0x08002fa8
 8000468:	08002fb6 	.word	0x08002fb6
 800046c:	08002fc4 	.word	0x08002fc4
 8000470:	08002fd2 	.word	0x08002fd2
 8000474:	08002fdd 	.word	0x08002fdd
 8000478:	0800302c 	.word	0x0800302c
 800047c:	08002fe7 	.word	0x08002fe7
 8000480:	08002ff6 	.word	0x08002ff6
 8000484:	0800304e 	.word	0x0800304e
 8000488:	08002ffa 	.word	0x08002ffa

0800048c <_ZN5CWifi4initEh>:
 800048c:	b510      	push	{r4, lr}
 800048e:	2264      	movs	r2, #100	; 0x64
 8000490:	4604      	mov	r4, r0
 8000492:	7101      	strb	r1, [r0, #4]
 8000494:	4809      	ldr	r0, [pc, #36]	; (80004bc <_ZN5CWifi4initEh+0x30>)
 8000496:	2102      	movs	r1, #2
 8000498:	f001 f8ee 	bl	8001678 <_ZN5CILED9i_led_setEjj>
 800049c:	4620      	mov	r0, r4
 800049e:	f7ff ff93 	bl	80003c8 <_ZN5CWifi12esp8266_initEv>
 80004a2:	4604      	mov	r4, r0
 80004a4:	4805      	ldr	r0, [pc, #20]	; (80004bc <_ZN5CWifi4initEh+0x30>)
 80004a6:	b91c      	cbnz	r4, 80004b0 <_ZN5CWifi4initEh+0x24>
 80004a8:	2102      	movs	r1, #2
 80004aa:	f44f 7296 	mov.w	r2, #300	; 0x12c
 80004ae:	e001      	b.n	80004b4 <_ZN5CWifi4initEh+0x28>
 80004b0:	2103      	movs	r1, #3
 80004b2:	2208      	movs	r2, #8
 80004b4:	f001 f8e0 	bl	8001678 <_ZN5CILED9i_led_setEjj>
 80004b8:	4620      	mov	r0, r4
 80004ba:	bd10      	pop	{r4, pc}
 80004bc:	20000148 	.word	0x20000148

080004c0 <_ZN5CWifi23esp8266_get_nonblockingEPcjj>:
 80004c0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80004c2:	4617      	mov	r7, r2
 80004c4:	461d      	mov	r5, r3
 80004c6:	460c      	mov	r4, r1
 80004c8:	460a      	mov	r2, r1
 80004ca:	19cb      	adds	r3, r1, r7
 80004cc:	429a      	cmp	r2, r3
 80004ce:	d003      	beq.n	80004d8 <_ZN5CWifi23esp8266_get_nonblockingEPcjj+0x18>
 80004d0:	2100      	movs	r1, #0
 80004d2:	f802 1b01 	strb.w	r1, [r2], #1
 80004d6:	e7f9      	b.n	80004cc <_ZN5CWifi23esp8266_get_nonblockingEPcjj+0xc>
 80004d8:	4815      	ldr	r0, [pc, #84]	; (8000530 <_ZN5CWifi23esp8266_get_nonblockingEPcjj+0x70>)
 80004da:	f001 fb7b 	bl	8001bd4 <_ZN6CTimer8get_timeEv>
 80004de:	1946      	adds	r6, r0, r5
 80004e0:	b944      	cbnz	r4, 80004f4 <_ZN5CWifi23esp8266_get_nonblockingEPcjj+0x34>
 80004e2:	4629      	mov	r1, r5
 80004e4:	4812      	ldr	r0, [pc, #72]	; (8000530 <_ZN5CWifi23esp8266_get_nonblockingEPcjj+0x70>)
 80004e6:	f001 fb83 	bl	8001bf0 <_ZN6CTimer8delay_msEm>
 80004ea:	4812      	ldr	r0, [pc, #72]	; (8000534 <_ZN5CWifi23esp8266_get_nonblockingEPcjj+0x74>)
 80004ec:	f000 fce8 	bl	8000ec0 <_ZN9CTerminal12clear_bufferEv>
 80004f0:	4620      	mov	r0, r4
 80004f2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80004f4:	2500      	movs	r5, #0
 80004f6:	480f      	ldr	r0, [pc, #60]	; (8000534 <_ZN5CWifi23esp8266_get_nonblockingEPcjj+0x74>)
 80004f8:	f000 fd80 	bl	8000ffc <_ZN9CTerminal6ischarEv>
 80004fc:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8000500:	4298      	cmp	r0, r3
 8000502:	bf1c      	itt	ne
 8000504:	5560      	strbne	r0, [r4, r5]
 8000506:	3501      	addne	r5, #1
 8000508:	4809      	ldr	r0, [pc, #36]	; (8000530 <_ZN5CWifi23esp8266_get_nonblockingEPcjj+0x70>)
 800050a:	f001 fb63 	bl	8001bd4 <_ZN6CTimer8get_timeEv>
 800050e:	42bd      	cmp	r5, r7
 8000510:	d207      	bcs.n	8000522 <_ZN5CWifi23esp8266_get_nonblockingEPcjj+0x62>
 8000512:	4286      	cmp	r6, r0
 8000514:	d8ef      	bhi.n	80004f6 <_ZN5CWifi23esp8266_get_nonblockingEPcjj+0x36>
 8000516:	42b0      	cmp	r0, r6
 8000518:	bf94      	ite	ls
 800051a:	4628      	movls	r0, r5
 800051c:	f04f 30ff 	movhi.w	r0, #4294967295	; 0xffffffff
 8000520:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8000522:	42b0      	cmp	r0, r6
 8000524:	bf94      	ite	ls
 8000526:	f06f 0001 	mvnls.w	r0, #1
 800052a:	f04f 30ff 	movhi.w	r0, #4294967295	; 0xffffffff
 800052e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8000530:	20000178 	.word	0x20000178
 8000534:	20000038 	.word	0x20000038

08000538 <_ZN5CWifi7connectEPcjS0_jS0_j>:
 8000538:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800053c:	ae08      	add	r6, sp, #32
 800053e:	e896 01c0 	ldmia.w	r6, {r6, r7, r8}
 8000542:	4691      	mov	r9, r2
 8000544:	461d      	mov	r5, r3
 8000546:	4604      	mov	r4, r0
 8000548:	468a      	mov	sl, r1
 800054a:	463b      	mov	r3, r7
 800054c:	eb07 0208 	add.w	r2, r7, r8
 8000550:	4293      	cmp	r3, r2
 8000552:	d003      	beq.n	800055c <_ZN5CWifi7connectEPcjS0_jS0_j+0x24>
 8000554:	2100      	movs	r1, #0
 8000556:	f803 1b01 	strb.w	r1, [r3], #1
 800055a:	e7f9      	b.n	8000550 <_ZN5CWifi7connectEPcjS0_jS0_j+0x18>
 800055c:	6823      	ldr	r3, [r4, #0]
 800055e:	2b01      	cmp	r3, #1
 8000560:	d02a      	beq.n	80005b8 <_ZN5CWifi7connectEPcjS0_jS0_j+0x80>
 8000562:	4620      	mov	r0, r4
 8000564:	494b      	ldr	r1, [pc, #300]	; (8000694 <_ZN5CWifi7connectEPcjS0_jS0_j+0x15c>)
 8000566:	f7ff fedb 	bl	8000320 <_ZN5CWifi12esp8266_sendEPc>
 800056a:	484b      	ldr	r0, [pc, #300]	; (8000698 <_ZN5CWifi7connectEPcjS0_jS0_j+0x160>)
 800056c:	2164      	movs	r1, #100	; 0x64
 800056e:	f001 fb3f 	bl	8001bf0 <_ZN6CTimer8delay_msEm>
 8000572:	4620      	mov	r0, r4
 8000574:	4949      	ldr	r1, [pc, #292]	; (800069c <_ZN5CWifi7connectEPcjS0_jS0_j+0x164>)
 8000576:	f7ff fed3 	bl	8000320 <_ZN5CWifi12esp8266_sendEPc>
 800057a:	4620      	mov	r0, r4
 800057c:	4651      	mov	r1, sl
 800057e:	f7ff fecf 	bl	8000320 <_ZN5CWifi12esp8266_sendEPc>
 8000582:	4620      	mov	r0, r4
 8000584:	4946      	ldr	r1, [pc, #280]	; (80006a0 <_ZN5CWifi7connectEPcjS0_jS0_j+0x168>)
 8000586:	f7ff fecb 	bl	8000320 <_ZN5CWifi12esp8266_sendEPc>
 800058a:	4620      	mov	r0, r4
 800058c:	4649      	mov	r1, r9
 800058e:	f7ff fed3 	bl	8000338 <_ZN5CWifi17esp8266_send_uintEj>
 8000592:	4620      	mov	r0, r4
 8000594:	4943      	ldr	r1, [pc, #268]	; (80006a4 <_ZN5CWifi7connectEPcjS0_jS0_j+0x16c>)
 8000596:	f7ff fec3 	bl	8000320 <_ZN5CWifi12esp8266_sendEPc>
 800059a:	4620      	mov	r0, r4
 800059c:	4942      	ldr	r1, [pc, #264]	; (80006a8 <_ZN5CWifi7connectEPcjS0_jS0_j+0x170>)
 800059e:	2207      	movs	r2, #7
 80005a0:	f240 53dc 	movw	r3, #1500	; 0x5dc
 80005a4:	f7ff fee0 	bl	8000368 <_ZN5CWifi19esp8266_find_streamEPcjj>
 80005a8:	b920      	cbnz	r0, 80005b4 <_ZN5CWifi7connectEPcjS0_jS0_j+0x7c>
 80005aa:	6020      	str	r0, [r4, #0]
 80005ac:	f06f 0002 	mvn.w	r0, #2
 80005b0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80005b4:	2301      	movs	r3, #1
 80005b6:	6023      	str	r3, [r4, #0]
 80005b8:	4620      	mov	r0, r4
 80005ba:	493c      	ldr	r1, [pc, #240]	; (80006ac <_ZN5CWifi7connectEPcjS0_jS0_j+0x174>)
 80005bc:	f7ff feb0 	bl	8000320 <_ZN5CWifi12esp8266_sendEPc>
 80005c0:	4620      	mov	r0, r4
 80005c2:	4631      	mov	r1, r6
 80005c4:	f7ff feb8 	bl	8000338 <_ZN5CWifi17esp8266_send_uintEj>
 80005c8:	4620      	mov	r0, r4
 80005ca:	4936      	ldr	r1, [pc, #216]	; (80006a4 <_ZN5CWifi7connectEPcjS0_jS0_j+0x16c>)
 80005cc:	f7ff fea8 	bl	8000320 <_ZN5CWifi12esp8266_sendEPc>
 80005d0:	4620      	mov	r0, r4
 80005d2:	4937      	ldr	r1, [pc, #220]	; (80006b0 <_ZN5CWifi7connectEPcjS0_jS0_j+0x178>)
 80005d4:	2201      	movs	r2, #1
 80005d6:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 80005da:	f7ff fec5 	bl	8000368 <_ZN5CWifi19esp8266_find_streamEPcjj>
 80005de:	4681      	mov	r9, r0
 80005e0:	b108      	cbz	r0, 80005e6 <_ZN5CWifi7connectEPcjS0_jS0_j+0xae>
 80005e2:	442e      	add	r6, r5
 80005e4:	e00d      	b.n	8000602 <_ZN5CWifi7connectEPcjS0_jS0_j+0xca>
 80005e6:	4620      	mov	r0, r4
 80005e8:	492a      	ldr	r1, [pc, #168]	; (8000694 <_ZN5CWifi7connectEPcjS0_jS0_j+0x15c>)
 80005ea:	f7ff fe99 	bl	8000320 <_ZN5CWifi12esp8266_sendEPc>
 80005ee:	482a      	ldr	r0, [pc, #168]	; (8000698 <_ZN5CWifi7connectEPcjS0_jS0_j+0x160>)
 80005f0:	2164      	movs	r1, #100	; 0x64
 80005f2:	f001 fafd 	bl	8001bf0 <_ZN6CTimer8delay_msEm>
 80005f6:	f8c4 9000 	str.w	r9, [r4]
 80005fa:	f06f 0003 	mvn.w	r0, #3
 80005fe:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000602:	42b5      	cmp	r5, r6
 8000604:	d005      	beq.n	8000612 <_ZN5CWifi7connectEPcjS0_jS0_j+0xda>
 8000606:	482b      	ldr	r0, [pc, #172]	; (80006b4 <_ZN5CWifi7connectEPcjS0_jS0_j+0x17c>)
 8000608:	f815 1b01 	ldrb.w	r1, [r5], #1
 800060c:	f000 fcea 	bl	8000fe4 <_ZN9CTerminal7putcharEc>
 8000610:	e7f7      	b.n	8000602 <_ZN5CWifi7connectEPcjS0_jS0_j+0xca>
 8000612:	4620      	mov	r0, r4
 8000614:	4928      	ldr	r1, [pc, #160]	; (80006b8 <_ZN5CWifi7connectEPcjS0_jS0_j+0x180>)
 8000616:	2207      	movs	r2, #7
 8000618:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 800061c:	f7ff fea4 	bl	8000368 <_ZN5CWifi19esp8266_find_streamEPcjj>
 8000620:	4605      	mov	r5, r0
 8000622:	4620      	mov	r0, r4
 8000624:	b95d      	cbnz	r5, 800063e <_ZN5CWifi7connectEPcjS0_jS0_j+0x106>
 8000626:	491b      	ldr	r1, [pc, #108]	; (8000694 <_ZN5CWifi7connectEPcjS0_jS0_j+0x15c>)
 8000628:	f7ff fe7a 	bl	8000320 <_ZN5CWifi12esp8266_sendEPc>
 800062c:	481a      	ldr	r0, [pc, #104]	; (8000698 <_ZN5CWifi7connectEPcjS0_jS0_j+0x160>)
 800062e:	2164      	movs	r1, #100	; 0x64
 8000630:	f001 fade 	bl	8001bf0 <_ZN6CTimer8delay_msEm>
 8000634:	6025      	str	r5, [r4, #0]
 8000636:	f06f 0004 	mvn.w	r0, #4
 800063a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800063e:	491f      	ldr	r1, [pc, #124]	; (80006bc <_ZN5CWifi7connectEPcjS0_jS0_j+0x184>)
 8000640:	2205      	movs	r2, #5
 8000642:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8000646:	f7ff fe8f 	bl	8000368 <_ZN5CWifi19esp8266_find_streamEPcjj>
 800064a:	4605      	mov	r5, r0
 800064c:	b960      	cbnz	r0, 8000668 <_ZN5CWifi7connectEPcjS0_jS0_j+0x130>
 800064e:	4620      	mov	r0, r4
 8000650:	4910      	ldr	r1, [pc, #64]	; (8000694 <_ZN5CWifi7connectEPcjS0_jS0_j+0x15c>)
 8000652:	f7ff fe65 	bl	8000320 <_ZN5CWifi12esp8266_sendEPc>
 8000656:	4810      	ldr	r0, [pc, #64]	; (8000698 <_ZN5CWifi7connectEPcjS0_jS0_j+0x160>)
 8000658:	2164      	movs	r1, #100	; 0x64
 800065a:	f001 fac9 	bl	8001bf0 <_ZN6CTimer8delay_msEm>
 800065e:	6025      	str	r5, [r4, #0]
 8000660:	f06f 0005 	mvn.w	r0, #5
 8000664:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000668:	2500      	movs	r5, #0
 800066a:	4812      	ldr	r0, [pc, #72]	; (80006b4 <_ZN5CWifi7connectEPcjS0_jS0_j+0x17c>)
 800066c:	f000 fce2 	bl	8001034 <_ZN9CTerminal7getcharEv>
 8000670:	b2c0      	uxtb	r0, r0
 8000672:	283a      	cmp	r0, #58	; 0x3a
 8000674:	d005      	beq.n	8000682 <_ZN5CWifi7connectEPcjS0_jS0_j+0x14a>
 8000676:	230a      	movs	r3, #10
 8000678:	fb03 0005 	mla	r0, r3, r5, r0
 800067c:	f1a0 0530 	sub.w	r5, r0, #48	; 0x30
 8000680:	e7f3      	b.n	800066a <_ZN5CWifi7connectEPcjS0_jS0_j+0x132>
 8000682:	4620      	mov	r0, r4
 8000684:	4639      	mov	r1, r7
 8000686:	4642      	mov	r2, r8
 8000688:	2314      	movs	r3, #20
 800068a:	f7ff ff19 	bl	80004c0 <_ZN5CWifi23esp8266_get_nonblockingEPcjj>
 800068e:	4628      	mov	r0, r5
 8000690:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000694:	0800300e 	.word	0x0800300e
 8000698:	20000178 	.word	0x20000178
 800069c:	0800301c 	.word	0x0800301c
 80006a0:	08003030 	.word	0x08003030
 80006a4:	08002ff7 	.word	0x08002ff7
 80006a8:	08003033 	.word	0x08003033
 80006ac:	0800303b 	.word	0x0800303b
 80006b0:	08003047 	.word	0x08003047
 80006b4:	20000038 	.word	0x20000038
 80006b8:	08003049 	.word	0x08003049
 80006bc:	08003051 	.word	0x08003051

080006c0 <_ZN5CWifi17connect_send_dataEjPhj>:
 80006c0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80006c2:	4605      	mov	r5, r0
 80006c4:	b099      	sub	sp, #100	; 0x64
 80006c6:	4811      	ldr	r0, [pc, #68]	; (800070c <_ZN5CWifi17connect_send_dataEjPhj+0x4c>)
 80006c8:	460f      	mov	r7, r1
 80006ca:	461c      	mov	r4, r3
 80006cc:	4616      	mov	r6, r2
 80006ce:	f000 f987 	bl	80009e0 <_ZN9CUniqueID13get_unique_idEv>
 80006d2:	4b0f      	ldr	r3, [pc, #60]	; (8000710 <_ZN5CWifi17connect_send_dataEjPhj+0x50>)
 80006d4:	9005      	str	r0, [sp, #20]
 80006d6:	9306      	str	r3, [sp, #24]
 80006d8:	9707      	str	r7, [sp, #28]
 80006da:	2100      	movs	r1, #0
 80006dc:	42a1      	cmp	r1, r4
 80006de:	d005      	beq.n	80006ec <_ZN5CWifi17connect_send_dataEjPhj+0x2c>
 80006e0:	ab05      	add	r3, sp, #20
 80006e2:	440b      	add	r3, r1
 80006e4:	5c72      	ldrb	r2, [r6, r1]
 80006e6:	731a      	strb	r2, [r3, #12]
 80006e8:	3101      	adds	r1, #1
 80006ea:	e7f7      	b.n	80006dc <_ZN5CWifi17connect_send_dataEjPhj+0x1c>
 80006ec:	2400      	movs	r4, #0
 80006ee:	234c      	movs	r3, #76	; 0x4c
 80006f0:	e88d 0018 	stmia.w	sp, {r3, r4}
 80006f4:	9402      	str	r4, [sp, #8]
 80006f6:	4628      	mov	r0, r5
 80006f8:	4906      	ldr	r1, [pc, #24]	; (8000714 <_ZN5CWifi17connect_send_dataEjPhj+0x54>)
 80006fa:	f240 72da 	movw	r2, #2010	; 0x7da
 80006fe:	ab05      	add	r3, sp, #20
 8000700:	f7ff ff1a 	bl	8000538 <_ZN5CWifi7connectEPcjS0_jS0_j>
 8000704:	4620      	mov	r0, r4
 8000706:	b019      	add	sp, #100	; 0x64
 8000708:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800070a:	bf00      	nop
 800070c:	20000038 	.word	0x20000038
 8000710:	cafe2357 	.word	0xcafe2357
 8000714:	08003057 	.word	0x08003057

08000718 <_ZN5CWifi11client_demoEv>:
 8000718:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 800071a:	4604      	mov	r4, r0
 800071c:	4813      	ldr	r0, [pc, #76]	; (800076c <_ZN5CWifi11client_demoEv+0x54>)
 800071e:	f001 fa59 	bl	8001bd4 <_ZN6CTimer8get_timeEv>
 8000722:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8000726:	fbb0 f0f3 	udiv	r0, r0, r3
 800072a:	4b11      	ldr	r3, [pc, #68]	; (8000770 <_ZN5CWifi11client_demoEv+0x58>)
 800072c:	9001      	str	r0, [sp, #4]
 800072e:	9302      	str	r3, [sp, #8]
 8000730:	4810      	ldr	r0, [pc, #64]	; (8000774 <_ZN5CWifi11client_demoEv+0x5c>)
 8000732:	4b11      	ldr	r3, [pc, #68]	; (8000778 <_ZN5CWifi11client_demoEv+0x60>)
 8000734:	9303      	str	r3, [sp, #12]
 8000736:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 800073a:	f000 fb89 	bl	8000e50 <_ZN5CGPIO7gpio_onEm>
 800073e:	aa01      	add	r2, sp, #4
 8000740:	4620      	mov	r0, r4
 8000742:	2100      	movs	r1, #0
 8000744:	230c      	movs	r3, #12
 8000746:	f7ff ffbb 	bl	80006c0 <_ZN5CWifi17connect_send_dataEjPhj>
 800074a:	aa01      	add	r2, sp, #4
 800074c:	230c      	movs	r3, #12
 800074e:	4620      	mov	r0, r4
 8000750:	2100      	movs	r1, #0
 8000752:	f7ff ffb5 	bl	80006c0 <_ZN5CWifi17connect_send_dataEjPhj>
 8000756:	4807      	ldr	r0, [pc, #28]	; (8000774 <_ZN5CWifi11client_demoEv+0x5c>)
 8000758:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 800075c:	f000 fb86 	bl	8000e6c <_ZN5CGPIO8gpio_offEm>
 8000760:	4802      	ldr	r0, [pc, #8]	; (800076c <_ZN5CWifi11client_demoEv+0x54>)
 8000762:	2164      	movs	r1, #100	; 0x64
 8000764:	f001 fa44 	bl	8001bf0 <_ZN6CTimer8delay_msEm>
 8000768:	e7d8      	b.n	800071c <_ZN5CWifi11client_demoEv+0x4>
 800076a:	bf00      	nop
 800076c:	20000178 	.word	0x20000178
 8000770:	cafecafe 	.word	0xcafecafe
 8000774:	20000038 	.word	0x20000038
 8000778:	0004cb2f 	.word	0x0004cb2f

0800077c <_ZN4CPID4initEffff>:
 800077c:	eef0 7a00 	vmov.f32	s15, #0	; 0x40000000  2.0
 8000780:	ee70 0a20 	vadd.f32	s1, s0, s1
 8000784:	ee91 0a67 	vfnma.f32	s0, s2, s15
 8000788:	2300      	movs	r3, #0
 800078a:	6003      	str	r3, [r0, #0]
 800078c:	ee70 0a81 	vadd.f32	s1, s1, s2
 8000790:	6043      	str	r3, [r0, #4]
 8000792:	6083      	str	r3, [r0, #8]
 8000794:	edc0 0a03 	vstr	s1, [r0, #12]
 8000798:	ed80 0a04 	vstr	s0, [r0, #16]
 800079c:	ed80 1a05 	vstr	s2, [r0, #20]
 80007a0:	6183      	str	r3, [r0, #24]
 80007a2:	edc0 1a07 	vstr	s3, [r0, #28]
 80007a6:	4770      	bx	lr

080007a8 <_ZN4CPIDC1Effff>:
 80007a8:	b510      	push	{r4, lr}
 80007aa:	4604      	mov	r4, r0
 80007ac:	f7ff ffe6 	bl	800077c <_ZN4CPID4initEffff>
 80007b0:	4620      	mov	r0, r4
 80007b2:	bd10      	pop	{r4, pc}

080007b4 <_ZN4CPID7processEf>:
 80007b4:	edd0 7a00 	vldr	s15, [r0]
 80007b8:	edd0 6a04 	vldr	s13, [r0, #16]
 80007bc:	ed90 7a01 	vldr	s14, [r0, #4]
 80007c0:	edc0 7a01 	vstr	s15, [r0, #4]
 80007c4:	ee67 7aa6 	vmul.f32	s15, s15, s13
 80007c8:	edd0 6a03 	vldr	s13, [r0, #12]
 80007cc:	ed80 7a02 	vstr	s14, [r0, #8]
 80007d0:	eee6 7a80 	vfma.f32	s15, s13, s0
 80007d4:	edd0 6a05 	vldr	s13, [r0, #20]
 80007d8:	ed80 0a00 	vstr	s0, [r0]
 80007dc:	eee6 7a87 	vfma.f32	s15, s13, s14
 80007e0:	ed90 7a06 	vldr	s14, [r0, #24]
 80007e4:	ee77 7a87 	vadd.f32	s15, s15, s14
 80007e8:	ed90 7a07 	vldr	s14, [r0, #28]
 80007ec:	edc0 7a06 	vstr	s15, [r0, #24]
 80007f0:	eef4 7ac7 	vcmpe.f32	s15, s14
 80007f4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80007f8:	bfc8      	it	gt
 80007fa:	ed80 7a06 	vstrgt	s14, [r0, #24]
 80007fe:	edd0 7a06 	vldr	s15, [r0, #24]
 8000802:	eeb1 7a47 	vneg.f32	s14, s14
 8000806:	eef4 7ac7 	vcmpe.f32	s15, s14
 800080a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800080e:	bf48      	it	mi
 8000810:	ed80 7a06 	vstrmi	s14, [r0, #24]
 8000814:	ed90 0a06 	vldr	s0, [r0, #24]
 8000818:	4770      	bx	lr

0800081a <_ZN13CLinePositionC1Ev>:
 800081a:	2200      	movs	r2, #0
 800081c:	6082      	str	r2, [r0, #8]
 800081e:	60c2      	str	r2, [r0, #12]
 8000820:	6102      	str	r2, [r0, #16]
 8000822:	6142      	str	r2, [r0, #20]
 8000824:	6042      	str	r2, [r0, #4]
 8000826:	2200      	movs	r2, #0
 8000828:	7002      	strb	r2, [r0, #0]
 800082a:	4770      	bx	lr

0800082c <_ZN13CLinePosition7processEP10sRGBResult>:
 800082c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8000830:	2300      	movs	r3, #0
 8000832:	f101 0816 	add.w	r8, r1, #22
 8000836:	ed2d 8b02 	vpush	{d8}
 800083a:	460d      	mov	r5, r1
 800083c:	4604      	mov	r4, r0
 800083e:	7003      	strb	r3, [r0, #0]
 8000840:	4641      	mov	r1, r8
 8000842:	461a      	mov	r2, r3
 8000844:	f103 000c 	add.w	r0, r3, #12
 8000848:	f931 6f02 	ldrsh.w	r6, [r1, #2]!
 800084c:	f935 0010 	ldrsh.w	r0, [r5, r0, lsl #1]
 8000850:	4286      	cmp	r6, r0
 8000852:	bfb8      	it	lt
 8000854:	4613      	movlt	r3, r2
 8000856:	3201      	adds	r2, #1
 8000858:	2a04      	cmp	r2, #4
 800085a:	d1f3      	bne.n	8000844 <_ZN13CLinePosition7processEP10sRGBResult+0x18>
 800085c:	330c      	adds	r3, #12
 800085e:	eddf 7a3b 	vldr	s15, [pc, #236]	; 800094c <_ZN13CLinePosition7processEP10sRGBResult+0x120>
 8000862:	f935 3013 	ldrsh.w	r3, [r5, r3, lsl #1]
 8000866:	ee07 3a10 	vmov	s14, r3
 800086a:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 800086e:	eeb0 8a67 	vmov.f32	s16, s15
 8000872:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8000876:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800087a:	d563      	bpl.n	8000944 <_ZN13CLinePosition7processEP10sRGBResult+0x118>
 800087c:	f104 0608 	add.w	r6, r4, #8
 8000880:	eddf 8a33 	vldr	s17, [pc, #204]	; 8000950 <_ZN13CLinePosition7processEP10sRGBResult+0x124>
 8000884:	f104 0918 	add.w	r9, r4, #24
 8000888:	4637      	mov	r7, r6
 800088a:	f938 3f02 	ldrsh.w	r3, [r8, #2]!
 800088e:	4831      	ldr	r0, [pc, #196]	; (8000954 <_ZN13CLinePosition7processEP10sRGBResult+0x128>)
 8000890:	425b      	negs	r3, r3
 8000892:	ee00 3a10 	vmov	s0, r3
 8000896:	eeb8 0ac0 	vcvt.f32.s32	s0, s0
 800089a:	eca7 0a01 	vstmia	r7!, {s0}
 800089e:	f000 f862 	bl	8000966 <_ZN5CMath3absEf>
 80008a2:	eef4 8ac0 	vcmpe.f32	s17, s0
 80008a6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80008aa:	d506      	bpl.n	80008ba <_ZN13CLinePosition7processEP10sRGBResult+0x8e>
 80008ac:	4829      	ldr	r0, [pc, #164]	; (8000954 <_ZN13CLinePosition7processEP10sRGBResult+0x128>)
 80008ae:	ed17 0a01 	vldr	s0, [r7, #-4]
 80008b2:	f000 f858 	bl	8000966 <_ZN5CMath3absEf>
 80008b6:	eef0 8a40 	vmov.f32	s17, s0
 80008ba:	454f      	cmp	r7, r9
 80008bc:	d1e5      	bne.n	800088a <_ZN13CLinePosition7processEP10sRGBResult+0x5e>
 80008be:	edd6 7a00 	vldr	s15, [r6]
 80008c2:	eec7 7aa8 	vdiv.f32	s15, s15, s17
 80008c6:	ece6 7a01 	vstmia	r6!, {s15}
 80008ca:	454e      	cmp	r6, r9
 80008cc:	d1f7      	bne.n	80008be <_ZN13CLinePosition7processEP10sRGBResult+0x92>
 80008ce:	2301      	movs	r3, #1
 80008d0:	7023      	strb	r3, [r4, #0]
 80008d2:	f9b5 3018 	ldrsh.w	r3, [r5, #24]
 80008d6:	eddf 7a1d 	vldr	s15, [pc, #116]	; 800094c <_ZN13CLinePosition7processEP10sRGBResult+0x120>
 80008da:	ee07 3a10 	vmov	s14, r3
 80008de:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 80008e2:	eeb4 7ac8 	vcmpe.f32	s14, s16
 80008e6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80008ea:	d501      	bpl.n	80008f0 <_ZN13CLinePosition7processEP10sRGBResult+0xc4>
 80008ec:	4b1a      	ldr	r3, [pc, #104]	; (8000958 <_ZN13CLinePosition7processEP10sRGBResult+0x12c>)
 80008ee:	e028      	b.n	8000942 <_ZN13CLinePosition7processEP10sRGBResult+0x116>
 80008f0:	f9b5 301e 	ldrsh.w	r3, [r5, #30]
 80008f4:	ee07 3a10 	vmov	s14, r3
 80008f8:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 80008fc:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8000900:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000904:	d502      	bpl.n	800090c <_ZN13CLinePosition7processEP10sRGBResult+0xe0>
 8000906:	f04f 537e 	mov.w	r3, #1065353216	; 0x3f800000
 800090a:	e01a      	b.n	8000942 <_ZN13CLinePosition7processEP10sRGBResult+0x116>
 800090c:	f9b5 301a 	ldrsh.w	r3, [r5, #26]
 8000910:	ee07 3a10 	vmov	s14, r3
 8000914:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8000918:	eeb4 7ae7 	vcmpe.f32	s14, s15
 800091c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000920:	d502      	bpl.n	8000928 <_ZN13CLinePosition7processEP10sRGBResult+0xfc>
 8000922:	f04f 433f 	mov.w	r3, #3204448256	; 0xbf000000
 8000926:	e00c      	b.n	8000942 <_ZN13CLinePosition7processEP10sRGBResult+0x116>
 8000928:	f9b5 301c 	ldrsh.w	r3, [r5, #28]
 800092c:	ee07 3a10 	vmov	s14, r3
 8000930:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8000934:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8000938:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800093c:	d502      	bpl.n	8000944 <_ZN13CLinePosition7processEP10sRGBResult+0x118>
 800093e:	f04f 537c 	mov.w	r3, #1056964608	; 0x3f000000
 8000942:	6063      	str	r3, [r4, #4]
 8000944:	ecbd 8b02 	vpop	{d8}
 8000948:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800094c:	c2a00000 	.word	0xc2a00000
 8000950:	38d1b717 	.word	0x38d1b717
 8000954:	20000110 	.word	0x20000110
 8000958:	bf800000 	.word	0xbf800000

0800095c <_ZN13CLinePosition7on_lineEv>:
 800095c:	7800      	ldrb	r0, [r0, #0]
 800095e:	4770      	bx	lr

08000960 <_ZN13CLinePosition17get_line_positionEv>:
 8000960:	ed90 0a01 	vldr	s0, [r0, #4]
 8000964:	4770      	bx	lr

08000966 <_ZN5CMath3absEf>:
 8000966:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
 800096a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800096e:	bf48      	it	mi
 8000970:	eeb1 0a40 	vnegmi.f32	s0, s0
 8000974:	4770      	bx	lr
	...

08000978 <_ZN5CMath4randEv>:
 8000978:	6803      	ldr	r3, [r0, #0]
 800097a:	490b      	ldr	r1, [pc, #44]	; (80009a8 <_ZN5CMath4randEv+0x30>)
 800097c:	f243 0239 	movw	r2, #12345	; 0x3039
 8000980:	fb01 2203 	mla	r2, r1, r3, r2
 8000984:	6841      	ldr	r1, [r0, #4]
 8000986:	6002      	str	r2, [r0, #0]
 8000988:	f341 0300 	sbfx	r3, r1, #0, #1
 800098c:	f023 533f 	bic.w	r3, r3, #801112064	; 0x2fc00000
 8000990:	f423 137f 	bic.w	r3, r3, #4177920	; 0x3fc000
 8000994:	f423 537f 	bic.w	r3, r3, #16320	; 0x3fc0
 8000998:	f023 033e 	bic.w	r3, r3, #62	; 0x3e
 800099c:	ea83 0351 	eor.w	r3, r3, r1, lsr #1
 80009a0:	6043      	str	r3, [r0, #4]
 80009a2:	ea83 0002 	eor.w	r0, r3, r2
 80009a6:	4770      	bx	lr
 80009a8:	41c64e6d 	.word	0x41c64e6d

080009ac <_ZN5CMath3rndEv>:
 80009ac:	b508      	push	{r3, lr}
 80009ae:	f7ff ffe3 	bl	8000978 <_ZN5CMath4randEv>
 80009b2:	4b09      	ldr	r3, [pc, #36]	; (80009d8 <_ZN5CMath3rndEv+0x2c>)
 80009b4:	fbb0 f2f3 	udiv	r2, r0, r3
 80009b8:	fb02 0013 	mls	r0, r2, r3, r0
 80009bc:	ee07 0a90 	vmov	s15, r0
 80009c0:	ed9f 0a06 	vldr	s0, [pc, #24]	; 80009dc <_ZN5CMath3rndEv+0x30>
 80009c4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 80009c8:	eec7 7a80 	vdiv.f32	s15, s15, s0
 80009cc:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
 80009d0:	ee37 0ac0 	vsub.f32	s0, s15, s0
 80009d4:	bd08      	pop	{r3, pc}
 80009d6:	bf00      	nop
 80009d8:	001e8480 	.word	0x001e8480
 80009dc:	49742400 	.word	0x49742400

080009e0 <_ZN9CUniqueID13get_unique_idEv>:
 80009e0:	4b06      	ldr	r3, [pc, #24]	; (80009fc <_ZN9CUniqueID13get_unique_idEv+0x1c>)
 80009e2:	4a07      	ldr	r2, [pc, #28]	; (8000a00 <_ZN9CUniqueID13get_unique_idEv+0x20>)
 80009e4:	6818      	ldr	r0, [r3, #0]
 80009e6:	3304      	adds	r3, #4
 80009e8:	681b      	ldr	r3, [r3, #0]
 80009ea:	4403      	add	r3, r0
 80009ec:	eb03 4300 	add.w	r3, r3, r0, lsl #16
 80009f0:	6810      	ldr	r0, [r2, #0]
 80009f2:	4418      	add	r0, r3
 80009f4:	eb00 4003 	add.w	r0, r0, r3, lsl #16
 80009f8:	4770      	bx	lr
 80009fa:	bf00      	nop
 80009fc:	1ffff7ac 	.word	0x1ffff7ac
 8000a00:	1ffff7b4 	.word	0x1ffff7b4

08000a04 <_ZN6CMotor11motor_sleepEv>:
 8000a04:	b510      	push	{r4, lr}
 8000a06:	4c07      	ldr	r4, [pc, #28]	; (8000a24 <_ZN6CMotor11motor_sleepEv+0x20>)
 8000a08:	21c0      	movs	r1, #192	; 0xc0
 8000a0a:	4620      	mov	r0, r4
 8000a0c:	2200      	movs	r2, #0
 8000a0e:	2318      	movs	r3, #24
 8000a10:	f000 f966 	bl	8000ce0 <_ZN4CI2C9write_regEhhh>
 8000a14:	4620      	mov	r0, r4
 8000a16:	21c2      	movs	r1, #194	; 0xc2
 8000a18:	2200      	movs	r2, #0
 8000a1a:	2318      	movs	r3, #24
 8000a1c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000a20:	f000 b95e 	b.w	8000ce0 <_ZN4CI2C9write_regEhhh>
 8000a24:	20000118 	.word	0x20000118

08000a28 <_ZN6CMotor13motor_refreshEv>:
 8000a28:	b570      	push	{r4, r5, r6, lr}
 8000a2a:	e890 0030 	ldmia.w	r0, {r4, r5}
 8000a2e:	2c2c      	cmp	r4, #44	; 0x2c
 8000a30:	dc74      	bgt.n	8000b1c <_ZN6CMotor13motor_refreshEv+0xf4>
 8000a32:	f114 0f2c 	cmn.w	r4, #44	; 0x2c
 8000a36:	db11      	blt.n	8000a5c <_ZN6CMotor13motor_refreshEv+0x34>
 8000a38:	2d2c      	cmp	r5, #44	; 0x2c
 8000a3a:	dc5e      	bgt.n	8000afa <_ZN6CMotor13motor_refreshEv+0xd2>
 8000a3c:	f115 0f2c 	cmn.w	r5, #44	; 0x2c
 8000a40:	db33      	blt.n	8000aaa <_ZN6CMotor13motor_refreshEv+0x82>
 8000a42:	b1dc      	cbz	r4, 8000a7c <_ZN6CMotor13motor_refreshEv+0x54>
 8000a44:	e001      	b.n	8000a4a <_ZN6CMotor13motor_refreshEv+0x22>
 8000a46:	f06f 052b 	mvn.w	r5, #43	; 0x2b
 8000a4a:	2c00      	cmp	r4, #0
 8000a4c:	dd0d      	ble.n	8000a6a <_ZN6CMotor13motor_refreshEv+0x42>
 8000a4e:	2c06      	cmp	r4, #6
 8000a50:	bfb8      	it	lt
 8000a52:	2406      	movlt	r4, #6
 8000a54:	00a4      	lsls	r4, r4, #2
 8000a56:	f044 0402 	orr.w	r4, r4, #2
 8000a5a:	e00d      	b.n	8000a78 <_ZN6CMotor13motor_refreshEv+0x50>
 8000a5c:	2d2c      	cmp	r5, #44	; 0x2c
 8000a5e:	f06f 042b 	mvn.w	r4, #43	; 0x2b
 8000a62:	dc60      	bgt.n	8000b26 <_ZN6CMotor13motor_refreshEv+0xfe>
 8000a64:	42a5      	cmp	r5, r4
 8000a66:	bfb8      	it	lt
 8000a68:	4625      	movlt	r5, r4
 8000a6a:	4264      	negs	r4, r4
 8000a6c:	2c06      	cmp	r4, #6
 8000a6e:	bfb8      	it	lt
 8000a70:	2406      	movlt	r4, #6
 8000a72:	00a4      	lsls	r4, r4, #2
 8000a74:	f044 0401 	orr.w	r4, r4, #1
 8000a78:	b2e4      	uxtb	r4, r4
 8000a7a:	e000      	b.n	8000a7e <_ZN6CMotor13motor_refreshEv+0x56>
 8000a7c:	241b      	movs	r4, #27
 8000a7e:	2200      	movs	r2, #0
 8000a80:	4613      	mov	r3, r2
 8000a82:	482a      	ldr	r0, [pc, #168]	; (8000b2c <_ZN6CMotor13motor_refreshEv+0x104>)
 8000a84:	21c0      	movs	r1, #192	; 0xc0
 8000a86:	f000 f92b 	bl	8000ce0 <_ZN4CI2C9write_regEhhh>
 8000a8a:	4828      	ldr	r0, [pc, #160]	; (8000b2c <_ZN6CMotor13motor_refreshEv+0x104>)
 8000a8c:	21c0      	movs	r1, #192	; 0xc0
 8000a8e:	2200      	movs	r2, #0
 8000a90:	4623      	mov	r3, r4
 8000a92:	f000 f925 	bl	8000ce0 <_ZN4CI2C9write_regEhhh>
 8000a96:	2d00      	cmp	r5, #0
 8000a98:	d020      	beq.n	8000adc <_ZN6CMotor13motor_refreshEv+0xb4>
 8000a9a:	dd16      	ble.n	8000aca <_ZN6CMotor13motor_refreshEv+0xa2>
 8000a9c:	2d06      	cmp	r5, #6
 8000a9e:	bfb8      	it	lt
 8000aa0:	2506      	movlt	r5, #6
 8000aa2:	00ad      	lsls	r5, r5, #2
 8000aa4:	f045 0501 	orr.w	r5, r5, #1
 8000aa8:	e016      	b.n	8000ad8 <_ZN6CMotor13motor_refreshEv+0xb0>
 8000aaa:	2c00      	cmp	r4, #0
 8000aac:	d1cb      	bne.n	8000a46 <_ZN6CMotor13motor_refreshEv+0x1e>
 8000aae:	481f      	ldr	r0, [pc, #124]	; (8000b2c <_ZN6CMotor13motor_refreshEv+0x104>)
 8000ab0:	21c0      	movs	r1, #192	; 0xc0
 8000ab2:	4622      	mov	r2, r4
 8000ab4:	4623      	mov	r3, r4
 8000ab6:	f000 f913 	bl	8000ce0 <_ZN4CI2C9write_regEhhh>
 8000aba:	481c      	ldr	r0, [pc, #112]	; (8000b2c <_ZN6CMotor13motor_refreshEv+0x104>)
 8000abc:	21c0      	movs	r1, #192	; 0xc0
 8000abe:	4622      	mov	r2, r4
 8000ac0:	231b      	movs	r3, #27
 8000ac2:	f000 f90d 	bl	8000ce0 <_ZN4CI2C9write_regEhhh>
 8000ac6:	f06f 052b 	mvn.w	r5, #43	; 0x2b
 8000aca:	426d      	negs	r5, r5
 8000acc:	2d06      	cmp	r5, #6
 8000ace:	bfb8      	it	lt
 8000ad0:	2506      	movlt	r5, #6
 8000ad2:	00ad      	lsls	r5, r5, #2
 8000ad4:	f045 0502 	orr.w	r5, r5, #2
 8000ad8:	b2ed      	uxtb	r5, r5
 8000ada:	e000      	b.n	8000ade <_ZN6CMotor13motor_refreshEv+0xb6>
 8000adc:	251b      	movs	r5, #27
 8000ade:	2200      	movs	r2, #0
 8000ae0:	4613      	mov	r3, r2
 8000ae2:	4812      	ldr	r0, [pc, #72]	; (8000b2c <_ZN6CMotor13motor_refreshEv+0x104>)
 8000ae4:	21c2      	movs	r1, #194	; 0xc2
 8000ae6:	f000 f8fb 	bl	8000ce0 <_ZN4CI2C9write_regEhhh>
 8000aea:	462b      	mov	r3, r5
 8000aec:	480f      	ldr	r0, [pc, #60]	; (8000b2c <_ZN6CMotor13motor_refreshEv+0x104>)
 8000aee:	21c2      	movs	r1, #194	; 0xc2
 8000af0:	2200      	movs	r2, #0
 8000af2:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000af6:	f000 b8f3 	b.w	8000ce0 <_ZN4CI2C9write_regEhhh>
 8000afa:	b96c      	cbnz	r4, 8000b18 <_ZN6CMotor13motor_refreshEv+0xf0>
 8000afc:	480b      	ldr	r0, [pc, #44]	; (8000b2c <_ZN6CMotor13motor_refreshEv+0x104>)
 8000afe:	21c0      	movs	r1, #192	; 0xc0
 8000b00:	4622      	mov	r2, r4
 8000b02:	4623      	mov	r3, r4
 8000b04:	f000 f8ec 	bl	8000ce0 <_ZN4CI2C9write_regEhhh>
 8000b08:	4808      	ldr	r0, [pc, #32]	; (8000b2c <_ZN6CMotor13motor_refreshEv+0x104>)
 8000b0a:	21c0      	movs	r1, #192	; 0xc0
 8000b0c:	4622      	mov	r2, r4
 8000b0e:	231b      	movs	r3, #27
 8000b10:	f000 f8e6 	bl	8000ce0 <_ZN4CI2C9write_regEhhh>
 8000b14:	252c      	movs	r5, #44	; 0x2c
 8000b16:	e7c4      	b.n	8000aa2 <_ZN6CMotor13motor_refreshEv+0x7a>
 8000b18:	252c      	movs	r5, #44	; 0x2c
 8000b1a:	e796      	b.n	8000a4a <_ZN6CMotor13motor_refreshEv+0x22>
 8000b1c:	242c      	movs	r4, #44	; 0x2c
 8000b1e:	42a5      	cmp	r5, r4
 8000b20:	dd8c      	ble.n	8000a3c <_ZN6CMotor13motor_refreshEv+0x14>
 8000b22:	4625      	mov	r5, r4
 8000b24:	e796      	b.n	8000a54 <_ZN6CMotor13motor_refreshEv+0x2c>
 8000b26:	252c      	movs	r5, #44	; 0x2c
 8000b28:	e79f      	b.n	8000a6a <_ZN6CMotor13motor_refreshEv+0x42>
 8000b2a:	bf00      	nop
 8000b2c:	20000118 	.word	0x20000118

08000b30 <_ZN6CMotor9set_motorEml>:
 8000b30:	2901      	cmp	r1, #1
 8000b32:	bf98      	it	ls
 8000b34:	f840 2021 	strls.w	r2, [r0, r1, lsl #2]
 8000b38:	f7ff bf76 	b.w	8000a28 <_ZN6CMotor13motor_refreshEv>

08000b3c <_ZN6CMotor10motor_initEv>:
 8000b3c:	b510      	push	{r4, lr}
 8000b3e:	2100      	movs	r1, #0
 8000b40:	4604      	mov	r4, r0
 8000b42:	460a      	mov	r2, r1
 8000b44:	f7ff fff4 	bl	8000b30 <_ZN6CMotor9set_motorEml>
 8000b48:	4620      	mov	r0, r4
 8000b4a:	2101      	movs	r1, #1
 8000b4c:	2200      	movs	r2, #0
 8000b4e:	f7ff ffef 	bl	8000b30 <_ZN6CMotor9set_motorEml>
 8000b52:	4620      	mov	r0, r4
 8000b54:	f7ff ff68 	bl	8000a28 <_ZN6CMotor13motor_refreshEv>
 8000b58:	2000      	movs	r0, #0
 8000b5a:	bd10      	pop	{r4, pc}

08000b5c <_ZN4CI2C5delayEv>:
 8000b5c:	230b      	movs	r3, #11
 8000b5e:	3b01      	subs	r3, #1
 8000b60:	d001      	beq.n	8000b66 <_ZN4CI2C5delayEv+0xa>
 8000b62:	bf00      	nop
 8000b64:	e7fb      	b.n	8000b5e <_ZN4CI2C5delayEv+0x2>
 8000b66:	4770      	bx	lr

08000b68 <_ZN4CI2C9SetLowSDAEv>:
 8000b68:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8000b6a:	4c0c      	ldr	r4, [pc, #48]	; (8000b9c <_ZN4CI2C9SetLowSDAEv+0x34>)
 8000b6c:	2301      	movs	r3, #1
 8000b6e:	2203      	movs	r2, #3
 8000b70:	4606      	mov	r6, r0
 8000b72:	2580      	movs	r5, #128	; 0x80
 8000b74:	f88d 3004 	strb.w	r3, [sp, #4]
 8000b78:	f88d 3006 	strb.w	r3, [sp, #6]
 8000b7c:	4620      	mov	r0, r4
 8000b7e:	2300      	movs	r3, #0
 8000b80:	4669      	mov	r1, sp
 8000b82:	f88d 2005 	strb.w	r2, [sp, #5]
 8000b86:	f88d 3007 	strb.w	r3, [sp, #7]
 8000b8a:	9500      	str	r5, [sp, #0]
 8000b8c:	f002 f8ea 	bl	8002d64 <GPIO_Init>
 8000b90:	8525      	strh	r5, [r4, #40]	; 0x28
 8000b92:	4630      	mov	r0, r6
 8000b94:	f7ff ffe2 	bl	8000b5c <_ZN4CI2C5delayEv>
 8000b98:	b002      	add	sp, #8
 8000b9a:	bd70      	pop	{r4, r5, r6, pc}
 8000b9c:	48000400 	.word	0x48000400

08000ba0 <_ZN4CI2C10SetHighSDAEv>:
 8000ba0:	4b05      	ldr	r3, [pc, #20]	; (8000bb8 <_ZN4CI2C10SetHighSDAEv+0x18>)
 8000ba2:	681a      	ldr	r2, [r3, #0]
 8000ba4:	f422 4240 	bic.w	r2, r2, #49152	; 0xc000
 8000ba8:	601a      	str	r2, [r3, #0]
 8000baa:	681a      	ldr	r2, [r3, #0]
 8000bac:	601a      	str	r2, [r3, #0]
 8000bae:	2280      	movs	r2, #128	; 0x80
 8000bb0:	619a      	str	r2, [r3, #24]
 8000bb2:	f7ff bfd3 	b.w	8000b5c <_ZN4CI2C5delayEv>
 8000bb6:	bf00      	nop
 8000bb8:	48000400 	.word	0x48000400

08000bbc <_ZN4CI2C9SetLowSCLEv>:
 8000bbc:	4b02      	ldr	r3, [pc, #8]	; (8000bc8 <_ZN4CI2C9SetLowSCLEv+0xc>)
 8000bbe:	2240      	movs	r2, #64	; 0x40
 8000bc0:	851a      	strh	r2, [r3, #40]	; 0x28
 8000bc2:	f7ff bfcb 	b.w	8000b5c <_ZN4CI2C5delayEv>
 8000bc6:	bf00      	nop
 8000bc8:	48000400 	.word	0x48000400

08000bcc <_ZN4CI2C10SetHighSCLEv>:
 8000bcc:	4b02      	ldr	r3, [pc, #8]	; (8000bd8 <_ZN4CI2C10SetHighSCLEv+0xc>)
 8000bce:	2240      	movs	r2, #64	; 0x40
 8000bd0:	619a      	str	r2, [r3, #24]
 8000bd2:	f7ff bfc3 	b.w	8000b5c <_ZN4CI2C5delayEv>
 8000bd6:	bf00      	nop
 8000bd8:	48000400 	.word	0x48000400

08000bdc <_ZN4CI2C4initEv>:
 8000bdc:	b513      	push	{r0, r1, r4, lr}
 8000bde:	4604      	mov	r4, r0
 8000be0:	2101      	movs	r1, #1
 8000be2:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8000be6:	f001 ff21 	bl	8002a2c <RCC_AHBPeriphClockCmd>
 8000bea:	23c0      	movs	r3, #192	; 0xc0
 8000bec:	9300      	str	r3, [sp, #0]
 8000bee:	2301      	movs	r3, #1
 8000bf0:	2203      	movs	r2, #3
 8000bf2:	4669      	mov	r1, sp
 8000bf4:	f88d 3004 	strb.w	r3, [sp, #4]
 8000bf8:	f88d 3006 	strb.w	r3, [sp, #6]
 8000bfc:	4809      	ldr	r0, [pc, #36]	; (8000c24 <_ZN4CI2C4initEv+0x48>)
 8000bfe:	f88d 2005 	strb.w	r2, [sp, #5]
 8000c02:	2300      	movs	r3, #0
 8000c04:	f88d 3007 	strb.w	r3, [sp, #7]
 8000c08:	f002 f8ac 	bl	8002d64 <GPIO_Init>
 8000c0c:	4620      	mov	r0, r4
 8000c0e:	f7ff ffdd 	bl	8000bcc <_ZN4CI2C10SetHighSCLEv>
 8000c12:	4620      	mov	r0, r4
 8000c14:	f7ff ffa8 	bl	8000b68 <_ZN4CI2C9SetLowSDAEv>
 8000c18:	4620      	mov	r0, r4
 8000c1a:	f7ff ffc1 	bl	8000ba0 <_ZN4CI2C10SetHighSDAEv>
 8000c1e:	b002      	add	sp, #8
 8000c20:	bd10      	pop	{r4, pc}
 8000c22:	bf00      	nop
 8000c24:	48000400 	.word	0x48000400

08000c28 <_ZN4CI2C5StartEv>:
 8000c28:	b510      	push	{r4, lr}
 8000c2a:	4604      	mov	r4, r0
 8000c2c:	f7ff ffce 	bl	8000bcc <_ZN4CI2C10SetHighSCLEv>
 8000c30:	4620      	mov	r0, r4
 8000c32:	f7ff ffb5 	bl	8000ba0 <_ZN4CI2C10SetHighSDAEv>
 8000c36:	4620      	mov	r0, r4
 8000c38:	f7ff ffc8 	bl	8000bcc <_ZN4CI2C10SetHighSCLEv>
 8000c3c:	4620      	mov	r0, r4
 8000c3e:	f7ff ff93 	bl	8000b68 <_ZN4CI2C9SetLowSDAEv>
 8000c42:	4620      	mov	r0, r4
 8000c44:	f7ff ffba 	bl	8000bbc <_ZN4CI2C9SetLowSCLEv>
 8000c48:	4620      	mov	r0, r4
 8000c4a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000c4e:	f7ff bfa7 	b.w	8000ba0 <_ZN4CI2C10SetHighSDAEv>

08000c52 <_ZN4CI2C4StopEv>:
 8000c52:	b510      	push	{r4, lr}
 8000c54:	4604      	mov	r4, r0
 8000c56:	f7ff ffb1 	bl	8000bbc <_ZN4CI2C9SetLowSCLEv>
 8000c5a:	4620      	mov	r0, r4
 8000c5c:	f7ff ff84 	bl	8000b68 <_ZN4CI2C9SetLowSDAEv>
 8000c60:	4620      	mov	r0, r4
 8000c62:	f7ff ffb3 	bl	8000bcc <_ZN4CI2C10SetHighSCLEv>
 8000c66:	4620      	mov	r0, r4
 8000c68:	f7ff ff7e 	bl	8000b68 <_ZN4CI2C9SetLowSDAEv>
 8000c6c:	4620      	mov	r0, r4
 8000c6e:	f7ff ffad 	bl	8000bcc <_ZN4CI2C10SetHighSCLEv>
 8000c72:	4620      	mov	r0, r4
 8000c74:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000c78:	f7ff bf92 	b.w	8000ba0 <_ZN4CI2C10SetHighSDAEv>

08000c7c <_ZN4CI2C5WriteEh>:
 8000c7c:	b570      	push	{r4, r5, r6, lr}
 8000c7e:	4604      	mov	r4, r0
 8000c80:	460e      	mov	r6, r1
 8000c82:	2508      	movs	r5, #8
 8000c84:	4620      	mov	r0, r4
 8000c86:	f7ff ff99 	bl	8000bbc <_ZN4CI2C9SetLowSCLEv>
 8000c8a:	0633      	lsls	r3, r6, #24
 8000c8c:	4620      	mov	r0, r4
 8000c8e:	d502      	bpl.n	8000c96 <_ZN4CI2C5WriteEh+0x1a>
 8000c90:	f7ff ff86 	bl	8000ba0 <_ZN4CI2C10SetHighSDAEv>
 8000c94:	e001      	b.n	8000c9a <_ZN4CI2C5WriteEh+0x1e>
 8000c96:	f7ff ff67 	bl	8000b68 <_ZN4CI2C9SetLowSDAEv>
 8000c9a:	4620      	mov	r0, r4
 8000c9c:	3d01      	subs	r5, #1
 8000c9e:	f7ff ff95 	bl	8000bcc <_ZN4CI2C10SetHighSCLEv>
 8000ca2:	0076      	lsls	r6, r6, #1
 8000ca4:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8000ca8:	b2f6      	uxtb	r6, r6
 8000caa:	d1eb      	bne.n	8000c84 <_ZN4CI2C5WriteEh+0x8>
 8000cac:	4620      	mov	r0, r4
 8000cae:	f7ff ff85 	bl	8000bbc <_ZN4CI2C9SetLowSCLEv>
 8000cb2:	4620      	mov	r0, r4
 8000cb4:	f7ff ff74 	bl	8000ba0 <_ZN4CI2C10SetHighSDAEv>
 8000cb8:	4620      	mov	r0, r4
 8000cba:	f7ff ff87 	bl	8000bcc <_ZN4CI2C10SetHighSCLEv>
 8000cbe:	4b07      	ldr	r3, [pc, #28]	; (8000cdc <_ZN4CI2C5WriteEh+0x60>)
 8000cc0:	8a1d      	ldrh	r5, [r3, #16]
 8000cc2:	4620      	mov	r0, r4
 8000cc4:	f7ff ff7a 	bl	8000bbc <_ZN4CI2C9SetLowSCLEv>
 8000cc8:	b2ad      	uxth	r5, r5
 8000cca:	4620      	mov	r0, r4
 8000ccc:	f7ff ff46 	bl	8000b5c <_ZN4CI2C5delayEv>
 8000cd0:	f085 0080 	eor.w	r0, r5, #128	; 0x80
 8000cd4:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 8000cd8:	bd70      	pop	{r4, r5, r6, pc}
 8000cda:	bf00      	nop
 8000cdc:	48000400 	.word	0x48000400

08000ce0 <_ZN4CI2C9write_regEhhh>:
 8000ce0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000ce2:	4604      	mov	r4, r0
 8000ce4:	460f      	mov	r7, r1
 8000ce6:	4616      	mov	r6, r2
 8000ce8:	461d      	mov	r5, r3
 8000cea:	f7ff ff9d 	bl	8000c28 <_ZN4CI2C5StartEv>
 8000cee:	4639      	mov	r1, r7
 8000cf0:	4620      	mov	r0, r4
 8000cf2:	f7ff ffc3 	bl	8000c7c <_ZN4CI2C5WriteEh>
 8000cf6:	4631      	mov	r1, r6
 8000cf8:	4620      	mov	r0, r4
 8000cfa:	f7ff ffbf 	bl	8000c7c <_ZN4CI2C5WriteEh>
 8000cfe:	4620      	mov	r0, r4
 8000d00:	4629      	mov	r1, r5
 8000d02:	f7ff ffbb 	bl	8000c7c <_ZN4CI2C5WriteEh>
 8000d06:	4620      	mov	r0, r4
 8000d08:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000d0c:	f7ff bfa1 	b.w	8000c52 <_ZN4CI2C4StopEv>

08000d10 <_ZN4CI2C4ReadEh>:
 8000d10:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000d12:	4605      	mov	r5, r0
 8000d14:	460f      	mov	r7, r1
 8000d16:	f7ff ff51 	bl	8000bbc <_ZN4CI2C9SetLowSCLEv>
 8000d1a:	2608      	movs	r6, #8
 8000d1c:	2400      	movs	r4, #0
 8000d1e:	4628      	mov	r0, r5
 8000d20:	f7ff ff54 	bl	8000bcc <_ZN4CI2C10SetHighSCLEv>
 8000d24:	4b10      	ldr	r3, [pc, #64]	; (8000d68 <_ZN4CI2C4ReadEh+0x58>)
 8000d26:	8a1b      	ldrh	r3, [r3, #16]
 8000d28:	0064      	lsls	r4, r4, #1
 8000d2a:	061b      	lsls	r3, r3, #24
 8000d2c:	b2e4      	uxtb	r4, r4
 8000d2e:	4628      	mov	r0, r5
 8000d30:	f106 36ff 	add.w	r6, r6, #4294967295	; 0xffffffff
 8000d34:	bf48      	it	mi
 8000d36:	f044 0401 	orrmi.w	r4, r4, #1
 8000d3a:	f7ff ff3f 	bl	8000bbc <_ZN4CI2C9SetLowSCLEv>
 8000d3e:	f016 06ff 	ands.w	r6, r6, #255	; 0xff
 8000d42:	d1ec      	bne.n	8000d1e <_ZN4CI2C4ReadEh+0xe>
 8000d44:	4628      	mov	r0, r5
 8000d46:	b117      	cbz	r7, 8000d4e <_ZN4CI2C4ReadEh+0x3e>
 8000d48:	f7ff ff0e 	bl	8000b68 <_ZN4CI2C9SetLowSDAEv>
 8000d4c:	e001      	b.n	8000d52 <_ZN4CI2C4ReadEh+0x42>
 8000d4e:	f7ff ff27 	bl	8000ba0 <_ZN4CI2C10SetHighSDAEv>
 8000d52:	4628      	mov	r0, r5
 8000d54:	f7ff ff3a 	bl	8000bcc <_ZN4CI2C10SetHighSCLEv>
 8000d58:	4628      	mov	r0, r5
 8000d5a:	f7ff ff2f 	bl	8000bbc <_ZN4CI2C9SetLowSCLEv>
 8000d5e:	4628      	mov	r0, r5
 8000d60:	f7ff ff1e 	bl	8000ba0 <_ZN4CI2C10SetHighSDAEv>
 8000d64:	4620      	mov	r0, r4
 8000d66:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8000d68:	48000400 	.word	0x48000400

08000d6c <_ZN4CI2C8read_regEhh>:
 8000d6c:	b570      	push	{r4, r5, r6, lr}
 8000d6e:	4604      	mov	r4, r0
 8000d70:	460d      	mov	r5, r1
 8000d72:	4616      	mov	r6, r2
 8000d74:	f7ff ff58 	bl	8000c28 <_ZN4CI2C5StartEv>
 8000d78:	4629      	mov	r1, r5
 8000d7a:	4620      	mov	r0, r4
 8000d7c:	f7ff ff7e 	bl	8000c7c <_ZN4CI2C5WriteEh>
 8000d80:	4631      	mov	r1, r6
 8000d82:	4620      	mov	r0, r4
 8000d84:	f7ff ff7a 	bl	8000c7c <_ZN4CI2C5WriteEh>
 8000d88:	4620      	mov	r0, r4
 8000d8a:	f7ff ff4d 	bl	8000c28 <_ZN4CI2C5StartEv>
 8000d8e:	f045 0101 	orr.w	r1, r5, #1
 8000d92:	4620      	mov	r0, r4
 8000d94:	f7ff ff72 	bl	8000c7c <_ZN4CI2C5WriteEh>
 8000d98:	2100      	movs	r1, #0
 8000d9a:	4620      	mov	r0, r4
 8000d9c:	f7ff ffb8 	bl	8000d10 <_ZN4CI2C4ReadEh>
 8000da0:	4605      	mov	r5, r0
 8000da2:	4620      	mov	r0, r4
 8000da4:	f7ff ff55 	bl	8000c52 <_ZN4CI2C4StopEv>
 8000da8:	4628      	mov	r0, r5
 8000daa:	bd70      	pop	{r4, r5, r6, pc}

08000dac <_ZN5CGPIO9gpio_initEv>:
 8000dac:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8000db0:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8000db4:	2101      	movs	r1, #1
 8000db6:	f001 fe39 	bl	8002a2c <RCC_AHBPeriphClockCmd>
 8000dba:	4f22      	ldr	r7, [pc, #136]	; (8000e44 <_ZN5CGPIO9gpio_initEv+0x98>)
 8000dbc:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8000dc0:	2101      	movs	r1, #1
 8000dc2:	f001 fe33 	bl	8002a2c <RCC_AHBPeriphClockCmd>
 8000dc6:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8000dca:	2101      	movs	r1, #1
 8000dcc:	f001 fe2e 	bl	8002a2c <RCC_AHBPeriphClockCmd>
 8000dd0:	2400      	movs	r4, #0
 8000dd2:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8000dd6:	2503      	movs	r5, #3
 8000dd8:	f04f 0801 	mov.w	r8, #1
 8000ddc:	4638      	mov	r0, r7
 8000dde:	4669      	mov	r1, sp
 8000de0:	9300      	str	r3, [sp, #0]
 8000de2:	2608      	movs	r6, #8
 8000de4:	f88d 8004 	strb.w	r8, [sp, #4]
 8000de8:	f88d 4006 	strb.w	r4, [sp, #6]
 8000dec:	f88d 5005 	strb.w	r5, [sp, #5]
 8000df0:	f88d 4007 	strb.w	r4, [sp, #7]
 8000df4:	f001 ffb6 	bl	8002d64 <GPIO_Init>
 8000df8:	4669      	mov	r1, sp
 8000dfa:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000dfe:	9600      	str	r6, [sp, #0]
 8000e00:	f88d 8004 	strb.w	r8, [sp, #4]
 8000e04:	f88d 4006 	strb.w	r4, [sp, #6]
 8000e08:	f88d 5005 	strb.w	r5, [sp, #5]
 8000e0c:	f88d 4007 	strb.w	r4, [sp, #7]
 8000e10:	f001 ffa8 	bl	8002d64 <GPIO_Init>
 8000e14:	f44f 7300 	mov.w	r3, #512	; 0x200
 8000e18:	4638      	mov	r0, r7
 8000e1a:	4669      	mov	r1, sp
 8000e1c:	9300      	str	r3, [sp, #0]
 8000e1e:	f88d 4004 	strb.w	r4, [sp, #4]
 8000e22:	f88d 5005 	strb.w	r5, [sp, #5]
 8000e26:	f88d 4007 	strb.w	r4, [sp, #7]
 8000e2a:	f001 ff9b 	bl	8002d64 <GPIO_Init>
 8000e2e:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000e32:	4620      	mov	r0, r4
 8000e34:	851e      	strh	r6, [r3, #40]	; 0x28
 8000e36:	4b04      	ldr	r3, [pc, #16]	; (8000e48 <_ZN5CGPIO9gpio_initEv+0x9c>)
 8000e38:	601c      	str	r4, [r3, #0]
 8000e3a:	4b04      	ldr	r3, [pc, #16]	; (8000e4c <_ZN5CGPIO9gpio_initEv+0xa0>)
 8000e3c:	601c      	str	r4, [r3, #0]
 8000e3e:	b002      	add	sp, #8
 8000e40:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000e44:	48000400 	.word	0x48000400
 8000e48:	2000011c 	.word	0x2000011c
 8000e4c:	20000120 	.word	0x20000120

08000e50 <_ZN5CGPIO7gpio_onEm>:
 8000e50:	2908      	cmp	r1, #8
 8000e52:	d005      	beq.n	8000e60 <_ZN5CGPIO7gpio_onEm+0x10>
 8000e54:	f5b1 4f00 	cmp.w	r1, #32768	; 0x8000
 8000e58:	d105      	bne.n	8000e66 <_ZN5CGPIO7gpio_onEm+0x16>
 8000e5a:	4b03      	ldr	r3, [pc, #12]	; (8000e68 <_ZN5CGPIO7gpio_onEm+0x18>)
 8000e5c:	6199      	str	r1, [r3, #24]
 8000e5e:	4770      	bx	lr
 8000e60:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000e64:	8519      	strh	r1, [r3, #40]	; 0x28
 8000e66:	4770      	bx	lr
 8000e68:	48000400 	.word	0x48000400

08000e6c <_ZN5CGPIO8gpio_offEm>:
 8000e6c:	2908      	cmp	r1, #8
 8000e6e:	d005      	beq.n	8000e7c <_ZN5CGPIO8gpio_offEm+0x10>
 8000e70:	f5b1 4f00 	cmp.w	r1, #32768	; 0x8000
 8000e74:	d105      	bne.n	8000e82 <_ZN5CGPIO8gpio_offEm+0x16>
 8000e76:	4b03      	ldr	r3, [pc, #12]	; (8000e84 <_ZN5CGPIO8gpio_offEm+0x18>)
 8000e78:	8519      	strh	r1, [r3, #40]	; 0x28
 8000e7a:	4770      	bx	lr
 8000e7c:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000e80:	6199      	str	r1, [r3, #24]
 8000e82:	4770      	bx	lr
 8000e84:	48000400 	.word	0x48000400

08000e88 <_ZN5CGPIO7gpio_inEm>:
 8000e88:	4b02      	ldr	r3, [pc, #8]	; (8000e94 <_ZN5CGPIO7gpio_inEm+0xc>)
 8000e8a:	8a18      	ldrh	r0, [r3, #16]
 8000e8c:	b280      	uxth	r0, r0
 8000e8e:	ea21 0000 	bic.w	r0, r1, r0
 8000e92:	4770      	bx	lr
 8000e94:	48000400 	.word	0x48000400

08000e98 <EXTI9_5_IRQHandler>:
 8000e98:	4a03      	ldr	r2, [pc, #12]	; (8000ea8 <EXTI9_5_IRQHandler+0x10>)
 8000e9a:	6813      	ldr	r3, [r2, #0]
 8000e9c:	2006      	movs	r0, #6
 8000e9e:	3301      	adds	r3, #1
 8000ea0:	6013      	str	r3, [r2, #0]
 8000ea2:	f001 bf53 	b.w	8002d4c <EXTI_ClearITPendingBit>
 8000ea6:	bf00      	nop
 8000ea8:	2000011c 	.word	0x2000011c

08000eac <EXTI15_10_IRQHandler>:
 8000eac:	4a03      	ldr	r2, [pc, #12]	; (8000ebc <EXTI15_10_IRQHandler+0x10>)
 8000eae:	6813      	ldr	r3, [r2, #0]
 8000eb0:	200c      	movs	r0, #12
 8000eb2:	3301      	adds	r3, #1
 8000eb4:	6013      	str	r3, [r2, #0]
 8000eb6:	f001 bf49 	b.w	8002d4c <EXTI_ClearITPendingBit>
 8000eba:	bf00      	nop
 8000ebc:	20000120 	.word	0x20000120

08000ec0 <_ZN9CTerminal12clear_bufferEv>:
 8000ec0:	4a05      	ldr	r2, [pc, #20]	; (8000ed8 <_ZN9CTerminal12clear_bufferEv+0x18>)
 8000ec2:	2300      	movs	r3, #0
 8000ec4:	6013      	str	r3, [r2, #0]
 8000ec6:	4a05      	ldr	r2, [pc, #20]	; (8000edc <_ZN9CTerminal12clear_bufferEv+0x1c>)
 8000ec8:	6013      	str	r3, [r2, #0]
 8000eca:	4a05      	ldr	r2, [pc, #20]	; (8000ee0 <_ZN9CTerminal12clear_bufferEv+0x20>)
 8000ecc:	2100      	movs	r1, #0
 8000ece:	54d1      	strb	r1, [r2, r3]
 8000ed0:	3301      	adds	r3, #1
 8000ed2:	2b10      	cmp	r3, #16
 8000ed4:	d1f9      	bne.n	8000eca <_ZN9CTerminal12clear_bufferEv+0xa>
 8000ed6:	4770      	bx	lr
 8000ed8:	20000124 	.word	0x20000124
 8000edc:	20000138 	.word	0x20000138
 8000ee0:	20000128 	.word	0x20000128

08000ee4 <_ZN9CTerminal13terminal_initEv>:
 8000ee4:	b570      	push	{r4, r5, r6, lr}
 8000ee6:	b08a      	sub	sp, #40	; 0x28
 8000ee8:	f7ff ffea 	bl	8000ec0 <_ZN9CTerminal12clear_bufferEv>
 8000eec:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8000ef0:	2101      	movs	r1, #1
 8000ef2:	f001 fd9b 	bl	8002a2c <RCC_AHBPeriphClockCmd>
 8000ef6:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8000efa:	2101      	movs	r1, #1
 8000efc:	f001 fda4 	bl	8002a48 <RCC_APB2PeriphClockCmd>
 8000f00:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 8000f04:	9302      	str	r3, [sp, #8]
 8000f06:	2302      	movs	r3, #2
 8000f08:	2400      	movs	r4, #0
 8000f0a:	f88d 300c 	strb.w	r3, [sp, #12]
 8000f0e:	a902      	add	r1, sp, #8
 8000f10:	2303      	movs	r3, #3
 8000f12:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000f16:	f88d 300d 	strb.w	r3, [sp, #13]
 8000f1a:	f88d 400e 	strb.w	r4, [sp, #14]
 8000f1e:	f88d 400f 	strb.w	r4, [sp, #15]
 8000f22:	f001 ff1f 	bl	8002d64 <GPIO_Init>
 8000f26:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000f2a:	2109      	movs	r1, #9
 8000f2c:	2207      	movs	r2, #7
 8000f2e:	f001 ff5f 	bl	8002df0 <GPIO_PinAFConfig>
 8000f32:	4d18      	ldr	r5, [pc, #96]	; (8000f94 <_ZN9CTerminal13terminal_initEv+0xb0>)
 8000f34:	2207      	movs	r2, #7
 8000f36:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000f3a:	210a      	movs	r1, #10
 8000f3c:	f001 ff58 	bl	8002df0 <GPIO_PinAFConfig>
 8000f40:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 8000f44:	9304      	str	r3, [sp, #16]
 8000f46:	4628      	mov	r0, r5
 8000f48:	230c      	movs	r3, #12
 8000f4a:	a904      	add	r1, sp, #16
 8000f4c:	9308      	str	r3, [sp, #32]
 8000f4e:	9405      	str	r4, [sp, #20]
 8000f50:	9406      	str	r4, [sp, #24]
 8000f52:	9407      	str	r4, [sp, #28]
 8000f54:	9409      	str	r4, [sp, #36]	; 0x24
 8000f56:	f001 fd93 	bl	8002a80 <USART_Init>
 8000f5a:	4628      	mov	r0, r5
 8000f5c:	2101      	movs	r1, #1
 8000f5e:	f001 fdf1 	bl	8002b44 <USART_Cmd>
 8000f62:	2201      	movs	r2, #1
 8000f64:	4628      	mov	r0, r5
 8000f66:	490c      	ldr	r1, [pc, #48]	; (8000f98 <_ZN9CTerminal13terminal_initEv+0xb4>)
 8000f68:	f001 fdfc 	bl	8002b64 <USART_ITConfig>
 8000f6c:	2601      	movs	r6, #1
 8000f6e:	2325      	movs	r3, #37	; 0x25
 8000f70:	a801      	add	r0, sp, #4
 8000f72:	f88d 3004 	strb.w	r3, [sp, #4]
 8000f76:	f88d 4005 	strb.w	r4, [sp, #5]
 8000f7a:	f88d 4006 	strb.w	r4, [sp, #6]
 8000f7e:	f88d 6007 	strb.w	r6, [sp, #7]
 8000f82:	f001 faf3 	bl	800256c <NVIC_Init>
 8000f86:	4628      	mov	r0, r5
 8000f88:	4631      	mov	r1, r6
 8000f8a:	f001 fddb 	bl	8002b44 <USART_Cmd>
 8000f8e:	4620      	mov	r0, r4
 8000f90:	b00a      	add	sp, #40	; 0x28
 8000f92:	bd70      	pop	{r4, r5, r6, pc}
 8000f94:	40013800 	.word	0x40013800
 8000f98:	00050105 	.word	0x00050105

08000f9c <USART1_IRQHandler>:
 8000f9c:	b508      	push	{r3, lr}
 8000f9e:	480d      	ldr	r0, [pc, #52]	; (8000fd4 <USART1_IRQHandler+0x38>)
 8000fa0:	490d      	ldr	r1, [pc, #52]	; (8000fd8 <USART1_IRQHandler+0x3c>)
 8000fa2:	f001 fdf9 	bl	8002b98 <USART_GetITStatus>
 8000fa6:	b178      	cbz	r0, 8000fc8 <USART1_IRQHandler+0x2c>
 8000fa8:	480a      	ldr	r0, [pc, #40]	; (8000fd4 <USART1_IRQHandler+0x38>)
 8000faa:	f001 fdd6 	bl	8002b5a <USART_ReceiveData>
 8000fae:	4b0b      	ldr	r3, [pc, #44]	; (8000fdc <USART1_IRQHandler+0x40>)
 8000fb0:	490b      	ldr	r1, [pc, #44]	; (8000fe0 <USART1_IRQHandler+0x44>)
 8000fb2:	681a      	ldr	r2, [r3, #0]
 8000fb4:	b2c0      	uxtb	r0, r0
 8000fb6:	5488      	strb	r0, [r1, r2]
 8000fb8:	681a      	ldr	r2, [r3, #0]
 8000fba:	3201      	adds	r2, #1
 8000fbc:	601a      	str	r2, [r3, #0]
 8000fbe:	681a      	ldr	r2, [r3, #0]
 8000fc0:	2a0f      	cmp	r2, #15
 8000fc2:	bf84      	itt	hi
 8000fc4:	2200      	movhi	r2, #0
 8000fc6:	601a      	strhi	r2, [r3, #0]
 8000fc8:	4802      	ldr	r0, [pc, #8]	; (8000fd4 <USART1_IRQHandler+0x38>)
 8000fca:	4903      	ldr	r1, [pc, #12]	; (8000fd8 <USART1_IRQHandler+0x3c>)
 8000fcc:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000fd0:	f001 be00 	b.w	8002bd4 <USART_ClearITPendingBit>
 8000fd4:	40013800 	.word	0x40013800
 8000fd8:	00050105 	.word	0x00050105
 8000fdc:	20000124 	.word	0x20000124
 8000fe0:	20000128 	.word	0x20000128

08000fe4 <_ZN9CTerminal7putcharEc>:
 8000fe4:	4b04      	ldr	r3, [pc, #16]	; (8000ff8 <_ZN9CTerminal7putcharEc+0x14>)
 8000fe6:	69da      	ldr	r2, [r3, #28]
 8000fe8:	0612      	lsls	r2, r2, #24
 8000fea:	d401      	bmi.n	8000ff0 <_ZN9CTerminal7putcharEc+0xc>
 8000fec:	bf00      	nop
 8000fee:	e7f9      	b.n	8000fe4 <_ZN9CTerminal7putcharEc>
 8000ff0:	b289      	uxth	r1, r1
 8000ff2:	8519      	strh	r1, [r3, #40]	; 0x28
 8000ff4:	4770      	bx	lr
 8000ff6:	bf00      	nop
 8000ff8:	40013800 	.word	0x40013800

08000ffc <_ZN9CTerminal6ischarEv>:
 8000ffc:	4b0a      	ldr	r3, [pc, #40]	; (8001028 <_ZN9CTerminal6ischarEv+0x2c>)
 8000ffe:	4a0b      	ldr	r2, [pc, #44]	; (800102c <_ZN9CTerminal6ischarEv+0x30>)
 8001000:	6819      	ldr	r1, [r3, #0]
 8001002:	6812      	ldr	r2, [r2, #0]
 8001004:	4291      	cmp	r1, r2
 8001006:	d00c      	beq.n	8001022 <_ZN9CTerminal6ischarEv+0x26>
 8001008:	681a      	ldr	r2, [r3, #0]
 800100a:	4909      	ldr	r1, [pc, #36]	; (8001030 <_ZN9CTerminal6ischarEv+0x34>)
 800100c:	5c88      	ldrb	r0, [r1, r2]
 800100e:	681a      	ldr	r2, [r3, #0]
 8001010:	3201      	adds	r2, #1
 8001012:	601a      	str	r2, [r3, #0]
 8001014:	681a      	ldr	r2, [r3, #0]
 8001016:	2a0f      	cmp	r2, #15
 8001018:	b2c0      	uxtb	r0, r0
 800101a:	d904      	bls.n	8001026 <_ZN9CTerminal6ischarEv+0x2a>
 800101c:	2200      	movs	r2, #0
 800101e:	601a      	str	r2, [r3, #0]
 8001020:	4770      	bx	lr
 8001022:	f64f 70ff 	movw	r0, #65535	; 0xffff
 8001026:	4770      	bx	lr
 8001028:	20000138 	.word	0x20000138
 800102c:	20000124 	.word	0x20000124
 8001030:	20000128 	.word	0x20000128

08001034 <_ZN9CTerminal7getcharEv>:
 8001034:	b510      	push	{r4, lr}
 8001036:	4604      	mov	r4, r0
 8001038:	4620      	mov	r0, r4
 800103a:	f7ff ffdf 	bl	8000ffc <_ZN9CTerminal6ischarEv>
 800103e:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8001042:	4298      	cmp	r0, r3
 8001044:	d101      	bne.n	800104a <_ZN9CTerminal7getcharEv+0x16>
 8001046:	bf00      	nop
 8001048:	e7f6      	b.n	8001038 <_ZN9CTerminal7getcharEv+0x4>
 800104a:	bd10      	pop	{r4, pc}

0800104c <_ZN9CTerminal4putsEPc>:
 800104c:	b538      	push	{r3, r4, r5, lr}
 800104e:	4605      	mov	r5, r0
 8001050:	1e4c      	subs	r4, r1, #1
 8001052:	f814 1f01 	ldrb.w	r1, [r4, #1]!
 8001056:	b119      	cbz	r1, 8001060 <_ZN9CTerminal4putsEPc+0x14>
 8001058:	4628      	mov	r0, r5
 800105a:	f7ff ffc3 	bl	8000fe4 <_ZN9CTerminal7putcharEc>
 800105e:	e7f8      	b.n	8001052 <_ZN9CTerminal4putsEPc+0x6>
 8001060:	2001      	movs	r0, #1
 8001062:	bd38      	pop	{r3, r4, r5, pc}

08001064 <_ZN9CTerminal4putiEl>:
 8001064:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
 8001066:	1e0b      	subs	r3, r1, #0
 8001068:	f04f 0200 	mov.w	r2, #0
 800106c:	bfba      	itte	lt
 800106e:	425b      	neglt	r3, r3
 8001070:	2501      	movlt	r5, #1
 8001072:	4615      	movge	r5, r2
 8001074:	f88d 200f 	strb.w	r2, [sp, #15]
 8001078:	210a      	movs	r1, #10
 800107a:	220a      	movs	r2, #10
 800107c:	ac01      	add	r4, sp, #4
 800107e:	fb93 f6f2 	sdiv	r6, r3, r2
 8001082:	fb02 3316 	mls	r3, r2, r6, r3
 8001086:	3330      	adds	r3, #48	; 0x30
 8001088:	550b      	strb	r3, [r1, r4]
 800108a:	1e4a      	subs	r2, r1, #1
 800108c:	4633      	mov	r3, r6
 800108e:	b10e      	cbz	r6, 8001094 <_ZN9CTerminal4putiEl+0x30>
 8001090:	4611      	mov	r1, r2
 8001092:	e7f2      	b.n	800107a <_ZN9CTerminal4putiEl+0x16>
 8001094:	b12d      	cbz	r5, 80010a2 <_ZN9CTerminal4putiEl+0x3e>
 8001096:	ab04      	add	r3, sp, #16
 8001098:	4413      	add	r3, r2
 800109a:	212d      	movs	r1, #45	; 0x2d
 800109c:	f803 1c0c 	strb.w	r1, [r3, #-12]
 80010a0:	4611      	mov	r1, r2
 80010a2:	4421      	add	r1, r4
 80010a4:	f7ff ffd2 	bl	800104c <_ZN9CTerminal4putsEPc>
 80010a8:	b004      	add	sp, #16
 80010aa:	bd70      	pop	{r4, r5, r6, pc}

080010ac <_ZN9CTerminal5putuiEm>:
 80010ac:	b530      	push	{r4, r5, lr}
 80010ae:	b085      	sub	sp, #20
 80010b0:	2300      	movs	r3, #0
 80010b2:	f88d 300f 	strb.w	r3, [sp, #15]
 80010b6:	220a      	movs	r2, #10
 80010b8:	230a      	movs	r3, #10
 80010ba:	ac01      	add	r4, sp, #4
 80010bc:	fbb1 f5f3 	udiv	r5, r1, r3
 80010c0:	fb03 1315 	mls	r3, r3, r5, r1
 80010c4:	3330      	adds	r3, #48	; 0x30
 80010c6:	5513      	strb	r3, [r2, r4]
 80010c8:	4629      	mov	r1, r5
 80010ca:	1e53      	subs	r3, r2, #1
 80010cc:	b10d      	cbz	r5, 80010d2 <_ZN9CTerminal5putuiEm+0x26>
 80010ce:	461a      	mov	r2, r3
 80010d0:	e7f2      	b.n	80010b8 <_ZN9CTerminal5putuiEm+0xc>
 80010d2:	18a1      	adds	r1, r4, r2
 80010d4:	f7ff ffba 	bl	800104c <_ZN9CTerminal4putsEPc>
 80010d8:	b005      	add	sp, #20
 80010da:	bd30      	pop	{r4, r5, pc}

080010dc <_ZN9CTerminal4putxEm>:
 80010dc:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 80010de:	2300      	movs	r3, #0
 80010e0:	f88d 300f 	strb.w	r3, [sp, #15]
 80010e4:	220a      	movs	r2, #10
 80010e6:	f001 030f 	and.w	r3, r1, #15
 80010ea:	2b09      	cmp	r3, #9
 80010ec:	ac01      	add	r4, sp, #4
 80010ee:	bfd4      	ite	le
 80010f0:	3330      	addle	r3, #48	; 0x30
 80010f2:	3357      	addgt	r3, #87	; 0x57
 80010f4:	0909      	lsrs	r1, r1, #4
 80010f6:	54a3      	strb	r3, [r4, r2]
 80010f8:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
 80010fc:	d001      	beq.n	8001102 <_ZN9CTerminal4putxEm+0x26>
 80010fe:	461a      	mov	r2, r3
 8001100:	e7f1      	b.n	80010e6 <_ZN9CTerminal4putxEm+0xa>
 8001102:	18a1      	adds	r1, r4, r2
 8001104:	f7ff ffa2 	bl	800104c <_ZN9CTerminal4putsEPc>
 8001108:	b004      	add	sp, #16
 800110a:	bd10      	pop	{r4, pc}

0800110c <_ZN9CTerminal4putfEfj>:
 800110c:	b538      	push	{r3, r4, r5, lr}
 800110e:	2200      	movs	r2, #0
 8001110:	4605      	mov	r5, r0
 8001112:	2301      	movs	r3, #1
 8001114:	428a      	cmp	r2, r1
 8001116:	d003      	beq.n	8001120 <_ZN9CTerminal4putfEfj+0x14>
 8001118:	200a      	movs	r0, #10
 800111a:	4343      	muls	r3, r0
 800111c:	3201      	adds	r2, #1
 800111e:	e7f9      	b.n	8001114 <_ZN9CTerminal4putfEfj+0x8>
 8001120:	eebd 7ac0 	vcvt.s32.f32	s14, s0
 8001124:	4628      	mov	r0, r5
 8001126:	eef8 7ac7 	vcvt.f32.s32	s15, s14
 800112a:	ee17 1a10 	vmov	r1, s14
 800112e:	ee30 0a67 	vsub.f32	s0, s0, s15
 8001132:	ee07 3a90 	vmov	s15, r3
 8001136:	eef8 7a67 	vcvt.f32.u32	s15, s15
 800113a:	ee20 0a27 	vmul.f32	s0, s0, s15
 800113e:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 8001142:	ee17 4a90 	vmov	r4, s15
 8001146:	f7ff ff8d 	bl	8001064 <_ZN9CTerminal4putiEl>
 800114a:	4628      	mov	r0, r5
 800114c:	212e      	movs	r1, #46	; 0x2e
 800114e:	f7ff ff49 	bl	8000fe4 <_ZN9CTerminal7putcharEc>
 8001152:	ea84 71e4 	eor.w	r1, r4, r4, asr #31
 8001156:	4628      	mov	r0, r5
 8001158:	eba1 71e4 	sub.w	r1, r1, r4, asr #31
 800115c:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001160:	f7ff bf80 	b.w	8001064 <_ZN9CTerminal4putiEl>

08001164 <_ZN9CTerminal6printfEPKcz>:
 8001164:	b40e      	push	{r1, r2, r3}
 8001166:	b577      	push	{r0, r1, r2, r4, r5, r6, lr}
 8001168:	ab07      	add	r3, sp, #28
 800116a:	4604      	mov	r4, r0
 800116c:	f853 6b04 	ldr.w	r6, [r3], #4
 8001170:	9301      	str	r3, [sp, #4]
 8001172:	2500      	movs	r5, #0
 8001174:	5d71      	ldrb	r1, [r6, r5]
 8001176:	2900      	cmp	r1, #0
 8001178:	d054      	beq.n	8001224 <_ZN9CTerminal6printfEPKcz+0xc0>
 800117a:	2925      	cmp	r1, #37	; 0x25
 800117c:	d004      	beq.n	8001188 <_ZN9CTerminal6printfEPKcz+0x24>
 800117e:	4620      	mov	r0, r4
 8001180:	f7ff ff30 	bl	8000fe4 <_ZN9CTerminal7putcharEc>
 8001184:	3501      	adds	r5, #1
 8001186:	e7f5      	b.n	8001174 <_ZN9CTerminal6printfEPKcz+0x10>
 8001188:	1973      	adds	r3, r6, r5
 800118a:	7859      	ldrb	r1, [r3, #1]
 800118c:	2969      	cmp	r1, #105	; 0x69
 800118e:	d016      	beq.n	80011be <_ZN9CTerminal6printfEPKcz+0x5a>
 8001190:	d807      	bhi.n	80011a2 <_ZN9CTerminal6printfEPKcz+0x3e>
 8001192:	2963      	cmp	r1, #99	; 0x63
 8001194:	d02b      	beq.n	80011ee <_ZN9CTerminal6printfEPKcz+0x8a>
 8001196:	2966      	cmp	r1, #102	; 0x66
 8001198:	d031      	beq.n	80011fe <_ZN9CTerminal6printfEPKcz+0x9a>
 800119a:	2925      	cmp	r1, #37	; 0x25
 800119c:	d140      	bne.n	8001220 <_ZN9CTerminal6printfEPKcz+0xbc>
 800119e:	4620      	mov	r0, r4
 80011a0:	e02a      	b.n	80011f8 <_ZN9CTerminal6printfEPKcz+0x94>
 80011a2:	2975      	cmp	r1, #117	; 0x75
 80011a4:	d013      	beq.n	80011ce <_ZN9CTerminal6printfEPKcz+0x6a>
 80011a6:	2978      	cmp	r1, #120	; 0x78
 80011a8:	d019      	beq.n	80011de <_ZN9CTerminal6printfEPKcz+0x7a>
 80011aa:	2973      	cmp	r1, #115	; 0x73
 80011ac:	d138      	bne.n	8001220 <_ZN9CTerminal6printfEPKcz+0xbc>
 80011ae:	9b01      	ldr	r3, [sp, #4]
 80011b0:	4620      	mov	r0, r4
 80011b2:	1d1a      	adds	r2, r3, #4
 80011b4:	6819      	ldr	r1, [r3, #0]
 80011b6:	9201      	str	r2, [sp, #4]
 80011b8:	f7ff ff48 	bl	800104c <_ZN9CTerminal4putsEPc>
 80011bc:	e030      	b.n	8001220 <_ZN9CTerminal6printfEPKcz+0xbc>
 80011be:	9b01      	ldr	r3, [sp, #4]
 80011c0:	4620      	mov	r0, r4
 80011c2:	1d1a      	adds	r2, r3, #4
 80011c4:	6819      	ldr	r1, [r3, #0]
 80011c6:	9201      	str	r2, [sp, #4]
 80011c8:	f7ff ff4c 	bl	8001064 <_ZN9CTerminal4putiEl>
 80011cc:	e028      	b.n	8001220 <_ZN9CTerminal6printfEPKcz+0xbc>
 80011ce:	9b01      	ldr	r3, [sp, #4]
 80011d0:	4620      	mov	r0, r4
 80011d2:	1d1a      	adds	r2, r3, #4
 80011d4:	6819      	ldr	r1, [r3, #0]
 80011d6:	9201      	str	r2, [sp, #4]
 80011d8:	f7ff ff68 	bl	80010ac <_ZN9CTerminal5putuiEm>
 80011dc:	e020      	b.n	8001220 <_ZN9CTerminal6printfEPKcz+0xbc>
 80011de:	9b01      	ldr	r3, [sp, #4]
 80011e0:	4620      	mov	r0, r4
 80011e2:	1d1a      	adds	r2, r3, #4
 80011e4:	6819      	ldr	r1, [r3, #0]
 80011e6:	9201      	str	r2, [sp, #4]
 80011e8:	f7ff ff78 	bl	80010dc <_ZN9CTerminal4putxEm>
 80011ec:	e018      	b.n	8001220 <_ZN9CTerminal6printfEPKcz+0xbc>
 80011ee:	9b01      	ldr	r3, [sp, #4]
 80011f0:	1d1a      	adds	r2, r3, #4
 80011f2:	7819      	ldrb	r1, [r3, #0]
 80011f4:	9201      	str	r2, [sp, #4]
 80011f6:	4620      	mov	r0, r4
 80011f8:	f7ff fef4 	bl	8000fe4 <_ZN9CTerminal7putcharEc>
 80011fc:	e010      	b.n	8001220 <_ZN9CTerminal6printfEPKcz+0xbc>
 80011fe:	9b01      	ldr	r3, [sp, #4]
 8001200:	3307      	adds	r3, #7
 8001202:	f023 0307 	bic.w	r3, r3, #7
 8001206:	f103 0208 	add.w	r2, r3, #8
 800120a:	e9d3 0100 	ldrd	r0, r1, [r3]
 800120e:	9201      	str	r2, [sp, #4]
 8001210:	f001 fe5a 	bl	8002ec8 <__aeabi_d2f>
 8001214:	2103      	movs	r1, #3
 8001216:	ee00 0a10 	vmov	s0, r0
 800121a:	4620      	mov	r0, r4
 800121c:	f7ff ff76 	bl	800110c <_ZN9CTerminal4putfEfj>
 8001220:	3502      	adds	r5, #2
 8001222:	e7a7      	b.n	8001174 <_ZN9CTerminal6printfEPKcz+0x10>
 8001224:	b003      	add	sp, #12
 8001226:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800122a:	b003      	add	sp, #12
 800122c:	4770      	bx	lr

0800122e <_ZN8CRGB_I2C13rgb_i2c_delayEv>:
 800122e:	2365      	movs	r3, #101	; 0x65
 8001230:	3b01      	subs	r3, #1
 8001232:	d001      	beq.n	8001238 <_ZN8CRGB_I2C13rgb_i2c_delayEv+0xa>
 8001234:	bf00      	nop
 8001236:	e7fb      	b.n	8001230 <_ZN8CRGB_I2C13rgb_i2c_delayEv+0x2>
 8001238:	4770      	bx	lr

0800123a <_ZN8CRGB_I2C12RGBSetLowSDAEv>:
 800123a:	b537      	push	{r0, r1, r2, r4, r5, lr}
 800123c:	2301      	movs	r3, #1
 800123e:	2203      	movs	r2, #3
 8001240:	4605      	mov	r5, r0
 8001242:	24f0      	movs	r4, #240	; 0xf0
 8001244:	f88d 3004 	strb.w	r3, [sp, #4]
 8001248:	f88d 3006 	strb.w	r3, [sp, #6]
 800124c:	4669      	mov	r1, sp
 800124e:	2300      	movs	r3, #0
 8001250:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001254:	f88d 2005 	strb.w	r2, [sp, #5]
 8001258:	f88d 3007 	strb.w	r3, [sp, #7]
 800125c:	9400      	str	r4, [sp, #0]
 800125e:	f001 fd81 	bl	8002d64 <GPIO_Init>
 8001262:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001266:	4628      	mov	r0, r5
 8001268:	851c      	strh	r4, [r3, #40]	; 0x28
 800126a:	f7ff ffe0 	bl	800122e <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 800126e:	b003      	add	sp, #12
 8001270:	bd30      	pop	{r4, r5, pc}

08001272 <_ZN8CRGB_I2C13RGBSetHighSDAEv>:
 8001272:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8001274:	2300      	movs	r3, #0
 8001276:	2203      	movs	r2, #3
 8001278:	4605      	mov	r5, r0
 800127a:	24f0      	movs	r4, #240	; 0xf0
 800127c:	4669      	mov	r1, sp
 800127e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001282:	f88d 3004 	strb.w	r3, [sp, #4]
 8001286:	f88d 2005 	strb.w	r2, [sp, #5]
 800128a:	f88d 3007 	strb.w	r3, [sp, #7]
 800128e:	9400      	str	r4, [sp, #0]
 8001290:	f001 fd68 	bl	8002d64 <GPIO_Init>
 8001294:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001298:	4628      	mov	r0, r5
 800129a:	619c      	str	r4, [r3, #24]
 800129c:	f7ff ffc7 	bl	800122e <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 80012a0:	b003      	add	sp, #12
 80012a2:	bd30      	pop	{r4, r5, pc}

080012a4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>:
 80012a4:	4b02      	ldr	r3, [pc, #8]	; (80012b0 <_ZN8CRGB_I2C12RGBSetLowSCLEv+0xc>)
 80012a6:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 80012aa:	851a      	strh	r2, [r3, #40]	; 0x28
 80012ac:	f7ff bfbf 	b.w	800122e <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 80012b0:	48000800 	.word	0x48000800

080012b4 <_ZN8CRGB_I2C13RGBSetHighSCLEv>:
 80012b4:	4b02      	ldr	r3, [pc, #8]	; (80012c0 <_ZN8CRGB_I2C13RGBSetHighSCLEv+0xc>)
 80012b6:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 80012ba:	619a      	str	r2, [r3, #24]
 80012bc:	f7ff bfb7 	b.w	800122e <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 80012c0:	48000800 	.word	0x48000800

080012c4 <_ZN8CRGB_I2C12rgb_i2c_initEv>:
 80012c4:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 80012c6:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 80012ca:	4605      	mov	r5, r0
 80012cc:	2400      	movs	r4, #0
 80012ce:	9300      	str	r3, [sp, #0]
 80012d0:	2703      	movs	r7, #3
 80012d2:	2301      	movs	r3, #1
 80012d4:	4817      	ldr	r0, [pc, #92]	; (8001334 <_ZN8CRGB_I2C12rgb_i2c_initEv+0x70>)
 80012d6:	f88d 3004 	strb.w	r3, [sp, #4]
 80012da:	4669      	mov	r1, sp
 80012dc:	26f0      	movs	r6, #240	; 0xf0
 80012de:	f88d 7005 	strb.w	r7, [sp, #5]
 80012e2:	f88d 4006 	strb.w	r4, [sp, #6]
 80012e6:	f88d 4007 	strb.w	r4, [sp, #7]
 80012ea:	f001 fd3b 	bl	8002d64 <GPIO_Init>
 80012ee:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80012f2:	4669      	mov	r1, sp
 80012f4:	9600      	str	r6, [sp, #0]
 80012f6:	f88d 4004 	strb.w	r4, [sp, #4]
 80012fa:	f88d 7005 	strb.w	r7, [sp, #5]
 80012fe:	f88d 4007 	strb.w	r4, [sp, #7]
 8001302:	f001 fd2f 	bl	8002d64 <GPIO_Init>
 8001306:	4631      	mov	r1, r6
 8001308:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800130c:	f001 fd6c 	bl	8002de8 <GPIO_SetBits>
 8001310:	4628      	mov	r0, r5
 8001312:	f7ff ffcf 	bl	80012b4 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8001316:	4628      	mov	r0, r5
 8001318:	f7ff ff8f 	bl	800123a <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 800131c:	4628      	mov	r0, r5
 800131e:	f7ff ffa8 	bl	8001272 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8001322:	f242 7311 	movw	r3, #10001	; 0x2711
 8001326:	3b01      	subs	r3, #1
 8001328:	d001      	beq.n	800132e <_ZN8CRGB_I2C12rgb_i2c_initEv+0x6a>
 800132a:	bf00      	nop
 800132c:	e7fb      	b.n	8001326 <_ZN8CRGB_I2C12rgb_i2c_initEv+0x62>
 800132e:	b003      	add	sp, #12
 8001330:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001332:	bf00      	nop
 8001334:	48000800 	.word	0x48000800

08001338 <_ZN8CRGB_I2C12rgb_i2cStartEv>:
 8001338:	b510      	push	{r4, lr}
 800133a:	4604      	mov	r4, r0
 800133c:	f7ff ffba 	bl	80012b4 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8001340:	4620      	mov	r0, r4
 8001342:	f7ff ff96 	bl	8001272 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8001346:	4620      	mov	r0, r4
 8001348:	f7ff ffb4 	bl	80012b4 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 800134c:	4620      	mov	r0, r4
 800134e:	f7ff ff74 	bl	800123a <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8001352:	4620      	mov	r0, r4
 8001354:	f7ff ffa6 	bl	80012a4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8001358:	4620      	mov	r0, r4
 800135a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800135e:	f7ff bf88 	b.w	8001272 <_ZN8CRGB_I2C13RGBSetHighSDAEv>

08001362 <_ZN8CRGB_I2C11rgb_i2cStopEv>:
 8001362:	b510      	push	{r4, lr}
 8001364:	4604      	mov	r4, r0
 8001366:	f7ff ff9d 	bl	80012a4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 800136a:	4620      	mov	r0, r4
 800136c:	f7ff ff65 	bl	800123a <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8001370:	4620      	mov	r0, r4
 8001372:	f7ff ff9f 	bl	80012b4 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8001376:	4620      	mov	r0, r4
 8001378:	f7ff ff5f 	bl	800123a <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 800137c:	4620      	mov	r0, r4
 800137e:	f7ff ff99 	bl	80012b4 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8001382:	4620      	mov	r0, r4
 8001384:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001388:	f7ff bf73 	b.w	8001272 <_ZN8CRGB_I2C13RGBSetHighSDAEv>

0800138c <_ZN8CRGB_I2C12rgb_i2cWriteEh>:
 800138c:	b570      	push	{r4, r5, r6, lr}
 800138e:	4604      	mov	r4, r0
 8001390:	460e      	mov	r6, r1
 8001392:	2508      	movs	r5, #8
 8001394:	4620      	mov	r0, r4
 8001396:	f7ff ff85 	bl	80012a4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 800139a:	0633      	lsls	r3, r6, #24
 800139c:	4620      	mov	r0, r4
 800139e:	d502      	bpl.n	80013a6 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1a>
 80013a0:	f7ff ff67 	bl	8001272 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 80013a4:	e001      	b.n	80013aa <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1e>
 80013a6:	f7ff ff48 	bl	800123a <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 80013aa:	4620      	mov	r0, r4
 80013ac:	3d01      	subs	r5, #1
 80013ae:	f7ff ff81 	bl	80012b4 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 80013b2:	0076      	lsls	r6, r6, #1
 80013b4:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 80013b8:	b2f6      	uxtb	r6, r6
 80013ba:	d1eb      	bne.n	8001394 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x8>
 80013bc:	4620      	mov	r0, r4
 80013be:	f7ff ff71 	bl	80012a4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 80013c2:	4620      	mov	r0, r4
 80013c4:	f7ff ff55 	bl	8001272 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 80013c8:	4620      	mov	r0, r4
 80013ca:	f7ff ff73 	bl	80012b4 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 80013ce:	4620      	mov	r0, r4
 80013d0:	f7ff ff68 	bl	80012a4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 80013d4:	4620      	mov	r0, r4
 80013d6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80013da:	f7ff bf28 	b.w	800122e <_ZN8CRGB_I2C13rgb_i2c_delayEv>

080013de <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>:
 80013de:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80013e0:	4604      	mov	r4, r0
 80013e2:	460f      	mov	r7, r1
 80013e4:	4616      	mov	r6, r2
 80013e6:	461d      	mov	r5, r3
 80013e8:	f7ff ffa6 	bl	8001338 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 80013ec:	4620      	mov	r0, r4
 80013ee:	4639      	mov	r1, r7
 80013f0:	f7ff ffcc 	bl	800138c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80013f4:	4620      	mov	r0, r4
 80013f6:	4631      	mov	r1, r6
 80013f8:	f7ff ffc8 	bl	800138c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80013fc:	4620      	mov	r0, r4
 80013fe:	4629      	mov	r1, r5
 8001400:	f7ff ffc4 	bl	800138c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8001404:	4620      	mov	r0, r4
 8001406:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 800140a:	f7ff bfaa 	b.w	8001362 <_ZN8CRGB_I2C11rgb_i2cStopEv>

0800140e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>:
 800140e:	2300      	movs	r3, #0
 8001410:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001414:	4605      	mov	r5, r0
 8001416:	7013      	strb	r3, [r2, #0]
 8001418:	7053      	strb	r3, [r2, #1]
 800141a:	7093      	strb	r3, [r2, #2]
 800141c:	70d3      	strb	r3, [r2, #3]
 800141e:	460e      	mov	r6, r1
 8001420:	4614      	mov	r4, r2
 8001422:	1cd7      	adds	r7, r2, #3
 8001424:	f7ff ff3e 	bl	80012a4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8001428:	4628      	mov	r0, r5
 800142a:	f7ff ff22 	bl	8001272 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 800142e:	f04f 0808 	mov.w	r8, #8
 8001432:	1e63      	subs	r3, r4, #1
 8001434:	f813 2f01 	ldrb.w	r2, [r3, #1]!
 8001438:	0052      	lsls	r2, r2, #1
 800143a:	42bb      	cmp	r3, r7
 800143c:	701a      	strb	r2, [r3, #0]
 800143e:	d1f9      	bne.n	8001434 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x26>
 8001440:	4628      	mov	r0, r5
 8001442:	f7ff ff37 	bl	80012b4 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8001446:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800144a:	8a1b      	ldrh	r3, [r3, #16]
 800144c:	b29b      	uxth	r3, r3
 800144e:	06d8      	lsls	r0, r3, #27
 8001450:	bf42      	ittt	mi
 8001452:	7822      	ldrbmi	r2, [r4, #0]
 8001454:	f042 0201 	orrmi.w	r2, r2, #1
 8001458:	7022      	strbmi	r2, [r4, #0]
 800145a:	0699      	lsls	r1, r3, #26
 800145c:	bf42      	ittt	mi
 800145e:	7862      	ldrbmi	r2, [r4, #1]
 8001460:	f042 0201 	orrmi.w	r2, r2, #1
 8001464:	7062      	strbmi	r2, [r4, #1]
 8001466:	065a      	lsls	r2, r3, #25
 8001468:	bf42      	ittt	mi
 800146a:	78a2      	ldrbmi	r2, [r4, #2]
 800146c:	f042 0201 	orrmi.w	r2, r2, #1
 8001470:	70a2      	strbmi	r2, [r4, #2]
 8001472:	061b      	lsls	r3, r3, #24
 8001474:	bf42      	ittt	mi
 8001476:	78e3      	ldrbmi	r3, [r4, #3]
 8001478:	f043 0301 	orrmi.w	r3, r3, #1
 800147c:	70e3      	strbmi	r3, [r4, #3]
 800147e:	4628      	mov	r0, r5
 8001480:	f7ff ff10 	bl	80012a4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8001484:	f1b8 0801 	subs.w	r8, r8, #1
 8001488:	d1d3      	bne.n	8001432 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x24>
 800148a:	b116      	cbz	r6, 8001492 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x84>
 800148c:	4628      	mov	r0, r5
 800148e:	f7ff fed4 	bl	800123a <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8001492:	4628      	mov	r0, r5
 8001494:	f7ff ff0e 	bl	80012b4 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8001498:	4628      	mov	r0, r5
 800149a:	f7ff ff03 	bl	80012a4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 800149e:	4628      	mov	r0, r5
 80014a0:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80014a4:	f7ff bec3 	b.w	800122e <_ZN8CRGB_I2C13rgb_i2c_delayEv>

080014a8 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>:
 80014a8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80014aa:	4604      	mov	r4, r0
 80014ac:	460d      	mov	r5, r1
 80014ae:	4617      	mov	r7, r2
 80014b0:	461e      	mov	r6, r3
 80014b2:	f7ff ff41 	bl	8001338 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 80014b6:	4620      	mov	r0, r4
 80014b8:	4629      	mov	r1, r5
 80014ba:	f7ff ff67 	bl	800138c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80014be:	4639      	mov	r1, r7
 80014c0:	4620      	mov	r0, r4
 80014c2:	f7ff ff63 	bl	800138c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80014c6:	4620      	mov	r0, r4
 80014c8:	f7ff ff36 	bl	8001338 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 80014cc:	4620      	mov	r0, r4
 80014ce:	f045 0101 	orr.w	r1, r5, #1
 80014d2:	f7ff ff5b 	bl	800138c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80014d6:	4620      	mov	r0, r4
 80014d8:	4632      	mov	r2, r6
 80014da:	2100      	movs	r1, #0
 80014dc:	f7ff ff97 	bl	800140e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80014e0:	4620      	mov	r0, r4
 80014e2:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80014e6:	f7ff bf3c 	b.w	8001362 <_ZN8CRGB_I2C11rgb_i2cStopEv>
	...

080014ec <_ZN8CSensors12sensors_initEv>:
 80014ec:	b510      	push	{r4, lr}
 80014ee:	4604      	mov	r4, r0
 80014f0:	4808      	ldr	r0, [pc, #32]	; (8001514 <_ZN8CSensors12sensors_initEv+0x28>)
 80014f2:	f7ff fb73 	bl	8000bdc <_ZN4CI2C4initEv>
 80014f6:	4620      	mov	r0, r4
 80014f8:	f000 fa64 	bl	80019c4 <_ZN4CRGB8rgb_initEv>
 80014fc:	b110      	cbz	r0, 8001504 <_ZN8CSensors12sensors_initEv+0x18>
 80014fe:	f5a0 707a 	sub.w	r0, r0, #1000	; 0x3e8
 8001502:	bd10      	pop	{r4, pc}
 8001504:	f104 0084 	add.w	r0, r4, #132	; 0x84
 8001508:	f000 fc4e 	bl	8001da8 <_ZN4CIMU8imu_initEv>
 800150c:	b108      	cbz	r0, 8001512 <_ZN8CSensors12sensors_initEv+0x26>
 800150e:	f5a0 60fa 	sub.w	r0, r0, #2000	; 0x7d0
 8001512:	bd10      	pop	{r4, pc}
 8001514:	20000118 	.word	0x20000118

08001518 <_Z13i_led_set_pwmj>:
 8001518:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
 800151a:	2370      	movs	r3, #112	; 0x70
 800151c:	9301      	str	r3, [sp, #4]
 800151e:	2301      	movs	r3, #1
 8001520:	f8ad 3008 	strh.w	r3, [sp, #8]
 8001524:	2304      	movs	r3, #4
 8001526:	f8ad 300a 	strh.w	r3, [sp, #10]
 800152a:	2302      	movs	r3, #2
 800152c:	f8ad 3010 	strh.w	r3, [sp, #16]
 8001530:	2300      	movs	r3, #0
 8001532:	f8ad 3012 	strh.w	r3, [sp, #18]
 8001536:	f8ad 3016 	strh.w	r3, [sp, #22]
 800153a:	4b0a      	ldr	r3, [pc, #40]	; (8001564 <_Z13i_led_set_pwmj+0x4c>)
 800153c:	f44f 7280 	mov.w	r2, #256	; 0x100
 8001540:	f8ad 2014 	strh.w	r2, [sp, #20]
 8001544:	681b      	ldr	r3, [r3, #0]
 8001546:	22c8      	movs	r2, #200	; 0xc8
 8001548:	fbb3 f3f2 	udiv	r3, r3, r2
 800154c:	3b02      	subs	r3, #2
 800154e:	4358      	muls	r0, r3
 8001550:	0980      	lsrs	r0, r0, #6
 8001552:	9003      	str	r0, [sp, #12]
 8001554:	a901      	add	r1, sp, #4
 8001556:	4804      	ldr	r0, [pc, #16]	; (8001568 <_Z13i_led_set_pwmj+0x50>)
 8001558:	f001 f8a0 	bl	800269c <TIM_OC2Init>
 800155c:	b007      	add	sp, #28
 800155e:	f85d fb04 	ldr.w	pc, [sp], #4
 8001562:	bf00      	nop
 8001564:	20000030 	.word	0x20000030
 8001568:	40014000 	.word	0x40014000

0800156c <_ZN5CILED10i_led_initEv>:
 800156c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800156e:	4b3a      	ldr	r3, [pc, #232]	; (8001658 <_ZN5CILED10i_led_initEv+0xec>)
 8001570:	4f3a      	ldr	r7, [pc, #232]	; (800165c <_ZN5CILED10i_led_initEv+0xf0>)
 8001572:	4e3b      	ldr	r6, [pc, #236]	; (8001660 <_ZN5CILED10i_led_initEv+0xf4>)
 8001574:	4d3b      	ldr	r5, [pc, #236]	; (8001664 <_ZN5CILED10i_led_initEv+0xf8>)
 8001576:	2400      	movs	r4, #0
 8001578:	701c      	strb	r4, [r3, #0]
 800157a:	4b3b      	ldr	r3, [pc, #236]	; (8001668 <_ZN5CILED10i_led_initEv+0xfc>)
 800157c:	703c      	strb	r4, [r7, #0]
 800157e:	601c      	str	r4, [r3, #0]
 8001580:	4b3a      	ldr	r3, [pc, #232]	; (800166c <_ZN5CILED10i_led_initEv+0x100>)
 8001582:	6034      	str	r4, [r6, #0]
 8001584:	b08b      	sub	sp, #44	; 0x2c
 8001586:	701c      	strb	r4, [r3, #0]
 8001588:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 800158c:	9302      	str	r3, [sp, #8]
 800158e:	2302      	movs	r3, #2
 8001590:	f88d 300c 	strb.w	r3, [sp, #12]
 8001594:	4628      	mov	r0, r5
 8001596:	2303      	movs	r3, #3
 8001598:	a902      	add	r1, sp, #8
 800159a:	f88d 300d 	strb.w	r3, [sp, #13]
 800159e:	f001 fbe1 	bl	8002d64 <GPIO_Init>
 80015a2:	4628      	mov	r0, r5
 80015a4:	2201      	movs	r2, #1
 80015a6:	210f      	movs	r1, #15
 80015a8:	f001 fc22 	bl	8002df0 <GPIO_PinAFConfig>
 80015ac:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 80015b0:	2101      	movs	r1, #1
 80015b2:	f001 fa49 	bl	8002a48 <RCC_APB2PeriphClockCmd>
 80015b6:	4d2e      	ldr	r5, [pc, #184]	; (8001670 <_ZN5CILED10i_led_initEv+0x104>)
 80015b8:	4b2e      	ldr	r3, [pc, #184]	; (8001674 <_ZN5CILED10i_led_initEv+0x108>)
 80015ba:	f8ad 4010 	strh.w	r4, [sp, #16]
 80015be:	22c8      	movs	r2, #200	; 0xc8
 80015c0:	4628      	mov	r0, r5
 80015c2:	a904      	add	r1, sp, #16
 80015c4:	681b      	ldr	r3, [r3, #0]
 80015c6:	fbb3 f3f2 	udiv	r3, r3, r2
 80015ca:	3b01      	subs	r3, #1
 80015cc:	9305      	str	r3, [sp, #20]
 80015ce:	f8ad 4012 	strh.w	r4, [sp, #18]
 80015d2:	f8ad 4018 	strh.w	r4, [sp, #24]
 80015d6:	f8ad 401a 	strh.w	r4, [sp, #26]
 80015da:	f001 f801 	bl	80025e0 <TIM_TimeBaseInit>
 80015de:	4628      	mov	r0, r5
 80015e0:	2101      	movs	r1, #1
 80015e2:	f001 f84d 	bl	8002680 <TIM_Cmd>
 80015e6:	4628      	mov	r0, r5
 80015e8:	2101      	movs	r1, #1
 80015ea:	f001 f898 	bl	800271e <TIM_CtrlPWMOutputs>
 80015ee:	4620      	mov	r0, r4
 80015f0:	f7ff ff92 	bl	8001518 <_Z13i_led_set_pwmj>
 80015f4:	2004      	movs	r0, #4
 80015f6:	2101      	movs	r1, #1
 80015f8:	f001 fa34 	bl	8002a64 <RCC_APB1PeriphClockCmd>
 80015fc:	f5a5 359c 	sub.w	r5, r5, #79872	; 0x13800
 8001600:	f44f 7334 	mov.w	r3, #720	; 0x2d0
 8001604:	f8ad 301c 	strh.w	r3, [sp, #28]
 8001608:	4628      	mov	r0, r5
 800160a:	f240 33e7 	movw	r3, #999	; 0x3e7
 800160e:	a907      	add	r1, sp, #28
 8001610:	9308      	str	r3, [sp, #32]
 8001612:	f8ad 401e 	strh.w	r4, [sp, #30]
 8001616:	f8ad 4024 	strh.w	r4, [sp, #36]	; 0x24
 800161a:	f8ad 4026 	strh.w	r4, [sp, #38]	; 0x26
 800161e:	f000 ffdf 	bl	80025e0 <TIM_TimeBaseInit>
 8001622:	4628      	mov	r0, r5
 8001624:	2101      	movs	r1, #1
 8001626:	f001 f82b 	bl	8002680 <TIM_Cmd>
 800162a:	68eb      	ldr	r3, [r5, #12]
 800162c:	f043 0301 	orr.w	r3, r3, #1
 8001630:	60eb      	str	r3, [r5, #12]
 8001632:	a801      	add	r0, sp, #4
 8001634:	231e      	movs	r3, #30
 8001636:	f88d 4005 	strb.w	r4, [sp, #5]
 800163a:	2401      	movs	r4, #1
 800163c:	f88d 3004 	strb.w	r3, [sp, #4]
 8001640:	f88d 4006 	strb.w	r4, [sp, #6]
 8001644:	f88d 4007 	strb.w	r4, [sp, #7]
 8001648:	f000 ff90 	bl	800256c <NVIC_Init>
 800164c:	2364      	movs	r3, #100	; 0x64
 800164e:	703c      	strb	r4, [r7, #0]
 8001650:	6033      	str	r3, [r6, #0]
 8001652:	b00b      	add	sp, #44	; 0x2c
 8001654:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001656:	bf00      	nop
 8001658:	20000149 	.word	0x20000149
 800165c:	2000014a 	.word	0x2000014a
 8001660:	20000144 	.word	0x20000144
 8001664:	48000400 	.word	0x48000400
 8001668:	20000140 	.word	0x20000140
 800166c:	2000013c 	.word	0x2000013c
 8001670:	40014000 	.word	0x40014000
 8001674:	20000030 	.word	0x20000030

08001678 <_ZN5CILED9i_led_setEjj>:
 8001678:	4b02      	ldr	r3, [pc, #8]	; (8001684 <_ZN5CILED9i_led_setEjj+0xc>)
 800167a:	b2c9      	uxtb	r1, r1
 800167c:	7019      	strb	r1, [r3, #0]
 800167e:	4b02      	ldr	r3, [pc, #8]	; (8001688 <_ZN5CILED9i_led_setEjj+0x10>)
 8001680:	601a      	str	r2, [r3, #0]
 8001682:	4770      	bx	lr
 8001684:	2000014a 	.word	0x2000014a
 8001688:	20000144 	.word	0x20000144

0800168c <TIM4_IRQHandler>:
 800168c:	4a3a      	ldr	r2, [pc, #232]	; (8001778 <TIM4_IRQHandler+0xec>)
 800168e:	b510      	push	{r4, lr}
 8001690:	6813      	ldr	r3, [r2, #0]
 8001692:	3301      	adds	r3, #1
 8001694:	6013      	str	r3, [r2, #0]
 8001696:	4b39      	ldr	r3, [pc, #228]	; (800177c <TIM4_IRQHandler+0xf0>)
 8001698:	7819      	ldrb	r1, [r3, #0]
 800169a:	4b39      	ldr	r3, [pc, #228]	; (8001780 <TIM4_IRQHandler+0xf4>)
 800169c:	2904      	cmp	r1, #4
 800169e:	d856      	bhi.n	800174e <TIM4_IRQHandler+0xc2>
 80016a0:	e8df f001 	tbb	[pc, r1]
 80016a4:	16031326 	.word	0x16031326
 80016a8:	28          	.byte	0x28
 80016a9:	00          	.byte	0x00
 80016aa:	4936      	ldr	r1, [pc, #216]	; (8001784 <TIM4_IRQHandler+0xf8>)
 80016ac:	2005      	movs	r0, #5
 80016ae:	6809      	ldr	r1, [r1, #0]
 80016b0:	fbb1 f1f0 	udiv	r1, r1, r0
 80016b4:	6810      	ldr	r0, [r2, #0]
 80016b6:	2901      	cmp	r1, #1
 80016b8:	bf98      	it	ls
 80016ba:	2102      	movls	r1, #2
 80016bc:	fbb0 f2f1 	udiv	r2, r0, r1
 80016c0:	fb01 0212 	mls	r2, r1, r2, r0
 80016c4:	ebb2 0f51 	cmp.w	r2, r1, lsr #1
 80016c8:	d912      	bls.n	80016f0 <TIM4_IRQHandler+0x64>
 80016ca:	223f      	movs	r2, #63	; 0x3f
 80016cc:	701a      	strb	r2, [r3, #0]
 80016ce:	e03e      	b.n	800174e <TIM4_IRQHandler+0xc2>
 80016d0:	492c      	ldr	r1, [pc, #176]	; (8001784 <TIM4_IRQHandler+0xf8>)
 80016d2:	6812      	ldr	r2, [r2, #0]
 80016d4:	6809      	ldr	r1, [r1, #0]
 80016d6:	f3c2 1283 	ubfx	r2, r2, #6, #4
 80016da:	428a      	cmp	r2, r1
 80016dc:	d208      	bcs.n	80016f0 <TIM4_IRQHandler+0x64>
 80016de:	4a26      	ldr	r2, [pc, #152]	; (8001778 <TIM4_IRQHandler+0xec>)
 80016e0:	6810      	ldr	r0, [r2, #0]
 80016e2:	223c      	movs	r2, #60	; 0x3c
 80016e4:	fbb0 f1f2 	udiv	r1, r0, r2
 80016e8:	fb02 0211 	mls	r2, r2, r1, r0
 80016ec:	2a1e      	cmp	r2, #30
 80016ee:	d8ec      	bhi.n	80016ca <TIM4_IRQHandler+0x3e>
 80016f0:	2200      	movs	r2, #0
 80016f2:	e7eb      	b.n	80016cc <TIM4_IRQHandler+0x40>
 80016f4:	4924      	ldr	r1, [pc, #144]	; (8001788 <TIM4_IRQHandler+0xfc>)
 80016f6:	7808      	ldrb	r0, [r1, #0]
 80016f8:	f000 04ff 	and.w	r4, r0, #255	; 0xff
 80016fc:	b110      	cbz	r0, 8001704 <TIM4_IRQHandler+0x78>
 80016fe:	2c01      	cmp	r4, #1
 8001700:	d012      	beq.n	8001728 <TIM4_IRQHandler+0x9c>
 8001702:	e024      	b.n	800174e <TIM4_IRQHandler+0xc2>
 8001704:	6810      	ldr	r0, [r2, #0]
 8001706:	220f      	movs	r2, #15
 8001708:	fbb0 f2f2 	udiv	r2, r0, r2
 800170c:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
 8001710:	4290      	cmp	r0, r2
 8001712:	d11c      	bne.n	800174e <TIM4_IRQHandler+0xc2>
 8001714:	781a      	ldrb	r2, [r3, #0]
 8001716:	481a      	ldr	r0, [pc, #104]	; (8001780 <TIM4_IRQHandler+0xf4>)
 8001718:	2a3e      	cmp	r2, #62	; 0x3e
 800171a:	d802      	bhi.n	8001722 <TIM4_IRQHandler+0x96>
 800171c:	7802      	ldrb	r2, [r0, #0]
 800171e:	3201      	adds	r2, #1
 8001720:	e011      	b.n	8001746 <TIM4_IRQHandler+0xba>
 8001722:	2201      	movs	r2, #1
 8001724:	700a      	strb	r2, [r1, #0]
 8001726:	e012      	b.n	800174e <TIM4_IRQHandler+0xc2>
 8001728:	6810      	ldr	r0, [r2, #0]
 800172a:	220f      	movs	r2, #15
 800172c:	fbb0 f2f2 	udiv	r2, r0, r2
 8001730:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
 8001734:	4290      	cmp	r0, r2
 8001736:	d10a      	bne.n	800174e <TIM4_IRQHandler+0xc2>
 8001738:	781a      	ldrb	r2, [r3, #0]
 800173a:	4811      	ldr	r0, [pc, #68]	; (8001780 <TIM4_IRQHandler+0xf4>)
 800173c:	f002 04ff 	and.w	r4, r2, #255	; 0xff
 8001740:	b122      	cbz	r2, 800174c <TIM4_IRQHandler+0xc0>
 8001742:	7802      	ldrb	r2, [r0, #0]
 8001744:	3a01      	subs	r2, #1
 8001746:	b2d2      	uxtb	r2, r2
 8001748:	7002      	strb	r2, [r0, #0]
 800174a:	e000      	b.n	800174e <TIM4_IRQHandler+0xc2>
 800174c:	700c      	strb	r4, [r1, #0]
 800174e:	7819      	ldrb	r1, [r3, #0]
 8001750:	4b0e      	ldr	r3, [pc, #56]	; (800178c <TIM4_IRQHandler+0x100>)
 8001752:	480f      	ldr	r0, [pc, #60]	; (8001790 <TIM4_IRQHandler+0x104>)
 8001754:	681a      	ldr	r2, [r3, #0]
 8001756:	23c8      	movs	r3, #200	; 0xc8
 8001758:	fbb2 f3f3 	udiv	r3, r2, r3
 800175c:	3b02      	subs	r3, #2
 800175e:	434b      	muls	r3, r1
 8001760:	213f      	movs	r1, #63	; 0x3f
 8001762:	fbb3 f1f1 	udiv	r1, r3, r1
 8001766:	f000 ffd7 	bl	8002718 <TIM_SetCompare2>
 800176a:	480a      	ldr	r0, [pc, #40]	; (8001794 <TIM4_IRQHandler+0x108>)
 800176c:	2101      	movs	r1, #1
 800176e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001772:	f000 bfdf 	b.w	8002734 <TIM_ClearITPendingBit>
 8001776:	bf00      	nop
 8001778:	20000140 	.word	0x20000140
 800177c:	2000014a 	.word	0x2000014a
 8001780:	2000013c 	.word	0x2000013c
 8001784:	20000144 	.word	0x20000144
 8001788:	20000149 	.word	0x20000149
 800178c:	20000030 	.word	0x20000030
 8001790:	40014000 	.word	0x40014000
 8001794:	40000800 	.word	0x40000800

08001798 <_ZN4CRGB8rgb_readEh>:
 8001798:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800179c:	4604      	mov	r4, r0
 800179e:	4688      	mov	r8, r1
 80017a0:	f7ff fdca 	bl	8001338 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 80017a4:	4620      	mov	r0, r4
 80017a6:	2172      	movs	r1, #114	; 0x72
 80017a8:	f7ff fdf0 	bl	800138c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80017ac:	21b4      	movs	r1, #180	; 0xb4
 80017ae:	4620      	mov	r0, r4
 80017b0:	f7ff fdec 	bl	800138c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80017b4:	4620      	mov	r0, r4
 80017b6:	f7ff fdbf 	bl	8001338 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 80017ba:	4620      	mov	r0, r4
 80017bc:	2173      	movs	r1, #115	; 0x73
 80017be:	f7ff fde5 	bl	800138c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80017c2:	4620      	mov	r0, r4
 80017c4:	2101      	movs	r1, #1
 80017c6:	4622      	mov	r2, r4
 80017c8:	f7ff fe21 	bl	800140e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80017cc:	7823      	ldrb	r3, [r4, #0]
 80017ce:	83a3      	strh	r3, [r4, #28]
 80017d0:	7863      	ldrb	r3, [r4, #1]
 80017d2:	83e3      	strh	r3, [r4, #30]
 80017d4:	78a3      	ldrb	r3, [r4, #2]
 80017d6:	8423      	strh	r3, [r4, #32]
 80017d8:	78e3      	ldrb	r3, [r4, #3]
 80017da:	8463      	strh	r3, [r4, #34]	; 0x22
 80017dc:	2101      	movs	r1, #1
 80017de:	4620      	mov	r0, r4
 80017e0:	4622      	mov	r2, r4
 80017e2:	f104 091a 	add.w	r9, r4, #26
 80017e6:	1e65      	subs	r5, r4, #1
 80017e8:	f7ff fe11 	bl	800140e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80017ec:	1ca6      	adds	r6, r4, #2
 80017ee:	f104 0722 	add.w	r7, r4, #34	; 0x22
 80017f2:	4629      	mov	r1, r5
 80017f4:	464b      	mov	r3, r9
 80017f6:	f833 2f02 	ldrh.w	r2, [r3, #2]!
 80017fa:	f811 0f01 	ldrb.w	r0, [r1, #1]!
 80017fe:	42bb      	cmp	r3, r7
 8001800:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
 8001804:	801a      	strh	r2, [r3, #0]
 8001806:	d1f6      	bne.n	80017f6 <_ZN4CRGB8rgb_readEh+0x5e>
 8001808:	4620      	mov	r0, r4
 800180a:	2101      	movs	r1, #1
 800180c:	4622      	mov	r2, r4
 800180e:	f7ff fdfe 	bl	800140e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8001812:	7823      	ldrb	r3, [r4, #0]
 8001814:	80a3      	strh	r3, [r4, #4]
 8001816:	7863      	ldrb	r3, [r4, #1]
 8001818:	80e3      	strh	r3, [r4, #6]
 800181a:	78a3      	ldrb	r3, [r4, #2]
 800181c:	8123      	strh	r3, [r4, #8]
 800181e:	78e3      	ldrb	r3, [r4, #3]
 8001820:	8163      	strh	r3, [r4, #10]
 8001822:	2101      	movs	r1, #1
 8001824:	4620      	mov	r0, r4
 8001826:	4622      	mov	r2, r4
 8001828:	f7ff fdf1 	bl	800140e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800182c:	f104 0a0a 	add.w	sl, r4, #10
 8001830:	4633      	mov	r3, r6
 8001832:	4629      	mov	r1, r5
 8001834:	f833 2f02 	ldrh.w	r2, [r3, #2]!
 8001838:	f811 0f01 	ldrb.w	r0, [r1, #1]!
 800183c:	4553      	cmp	r3, sl
 800183e:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
 8001842:	801a      	strh	r2, [r3, #0]
 8001844:	d1f6      	bne.n	8001834 <_ZN4CRGB8rgb_readEh+0x9c>
 8001846:	4620      	mov	r0, r4
 8001848:	2101      	movs	r1, #1
 800184a:	4622      	mov	r2, r4
 800184c:	f7ff fddf 	bl	800140e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8001850:	7823      	ldrb	r3, [r4, #0]
 8001852:	81a3      	strh	r3, [r4, #12]
 8001854:	7863      	ldrb	r3, [r4, #1]
 8001856:	81e3      	strh	r3, [r4, #14]
 8001858:	78a3      	ldrb	r3, [r4, #2]
 800185a:	8223      	strh	r3, [r4, #16]
 800185c:	78e3      	ldrb	r3, [r4, #3]
 800185e:	8263      	strh	r3, [r4, #18]
 8001860:	4622      	mov	r2, r4
 8001862:	4620      	mov	r0, r4
 8001864:	2101      	movs	r1, #1
 8001866:	f7ff fdd2 	bl	800140e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800186a:	f104 0612 	add.w	r6, r4, #18
 800186e:	462a      	mov	r2, r5
 8001870:	f83a 3f02 	ldrh.w	r3, [sl, #2]!
 8001874:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 8001878:	45b2      	cmp	sl, r6
 800187a:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 800187e:	f8aa 3000 	strh.w	r3, [sl]
 8001882:	d1f5      	bne.n	8001870 <_ZN4CRGB8rgb_readEh+0xd8>
 8001884:	4620      	mov	r0, r4
 8001886:	2101      	movs	r1, #1
 8001888:	4622      	mov	r2, r4
 800188a:	f7ff fdc0 	bl	800140e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800188e:	7823      	ldrb	r3, [r4, #0]
 8001890:	82a3      	strh	r3, [r4, #20]
 8001892:	7863      	ldrb	r3, [r4, #1]
 8001894:	82e3      	strh	r3, [r4, #22]
 8001896:	78a3      	ldrb	r3, [r4, #2]
 8001898:	8323      	strh	r3, [r4, #24]
 800189a:	78e3      	ldrb	r3, [r4, #3]
 800189c:	8363      	strh	r3, [r4, #26]
 800189e:	4622      	mov	r2, r4
 80018a0:	4620      	mov	r0, r4
 80018a2:	2101      	movs	r1, #1
 80018a4:	f7ff fdb3 	bl	800140e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80018a8:	462a      	mov	r2, r5
 80018aa:	f836 3f02 	ldrh.w	r3, [r6, #2]!
 80018ae:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 80018b2:	454e      	cmp	r6, r9
 80018b4:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 80018b8:	8033      	strh	r3, [r6, #0]
 80018ba:	d1f6      	bne.n	80018aa <_ZN4CRGB8rgb_readEh+0x112>
 80018bc:	4620      	mov	r0, r4
 80018be:	2101      	movs	r1, #1
 80018c0:	4622      	mov	r2, r4
 80018c2:	f7ff fda4 	bl	800140e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80018c6:	7823      	ldrb	r3, [r4, #0]
 80018c8:	84a3      	strh	r3, [r4, #36]	; 0x24
 80018ca:	7863      	ldrb	r3, [r4, #1]
 80018cc:	84e3      	strh	r3, [r4, #38]	; 0x26
 80018ce:	78a3      	ldrb	r3, [r4, #2]
 80018d0:	8523      	strh	r3, [r4, #40]	; 0x28
 80018d2:	78e3      	ldrb	r3, [r4, #3]
 80018d4:	8563      	strh	r3, [r4, #42]	; 0x2a
 80018d6:	4622      	mov	r2, r4
 80018d8:	4620      	mov	r0, r4
 80018da:	2100      	movs	r1, #0
 80018dc:	f7ff fd97 	bl	800140e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80018e0:	f104 022a 	add.w	r2, r4, #42	; 0x2a
 80018e4:	f837 3f02 	ldrh.w	r3, [r7, #2]!
 80018e8:	f815 1f01 	ldrb.w	r1, [r5, #1]!
 80018ec:	4297      	cmp	r7, r2
 80018ee:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 80018f2:	803b      	strh	r3, [r7, #0]
 80018f4:	d1f6      	bne.n	80018e4 <_ZN4CRGB8rgb_readEh+0x14c>
 80018f6:	4620      	mov	r0, r4
 80018f8:	f7ff fd33 	bl	8001362 <_ZN8CRGB_I2C11rgb_i2cStopEv>
 80018fc:	f1b8 0f00 	cmp.w	r8, #0
 8001900:	d025      	beq.n	800194e <_ZN4CRGB8rgb_readEh+0x1b6>
 8001902:	2300      	movs	r3, #0
 8001904:	88a1      	ldrh	r1, [r4, #4]
 8001906:	f8b4 2044 	ldrh.w	r2, [r4, #68]	; 0x44
 800190a:	440a      	add	r2, r1
 800190c:	f8a4 2044 	strh.w	r2, [r4, #68]	; 0x44
 8001910:	89a1      	ldrh	r1, [r4, #12]
 8001912:	f8b4 204c 	ldrh.w	r2, [r4, #76]	; 0x4c
 8001916:	440a      	add	r2, r1
 8001918:	f8a4 204c 	strh.w	r2, [r4, #76]	; 0x4c
 800191c:	8aa1      	ldrh	r1, [r4, #20]
 800191e:	f8b4 2054 	ldrh.w	r2, [r4, #84]	; 0x54
 8001922:	440a      	add	r2, r1
 8001924:	f8a4 2054 	strh.w	r2, [r4, #84]	; 0x54
 8001928:	8ca1      	ldrh	r1, [r4, #36]	; 0x24
 800192a:	f8b4 2064 	ldrh.w	r2, [r4, #100]	; 0x64
 800192e:	440a      	add	r2, r1
 8001930:	f8a4 2064 	strh.w	r2, [r4, #100]	; 0x64
 8001934:	8ba1      	ldrh	r1, [r4, #28]
 8001936:	f8b4 205c 	ldrh.w	r2, [r4, #92]	; 0x5c
 800193a:	3301      	adds	r3, #1
 800193c:	440a      	add	r2, r1
 800193e:	2b04      	cmp	r3, #4
 8001940:	f8a4 205c 	strh.w	r2, [r4, #92]	; 0x5c
 8001944:	f104 0402 	add.w	r4, r4, #2
 8001948:	d1dc      	bne.n	8001904 <_ZN4CRGB8rgb_readEh+0x16c>
 800194a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800194e:	4641      	mov	r1, r8
 8001950:	b672      	cpsid	i
 8001952:	88a3      	ldrh	r3, [r4, #4]
 8001954:	f8b4 0044 	ldrh.w	r0, [r4, #68]	; 0x44
 8001958:	f8b4 204c 	ldrh.w	r2, [r4, #76]	; 0x4c
 800195c:	f8b4 5054 	ldrh.w	r5, [r4, #84]	; 0x54
 8001960:	f8b4 6064 	ldrh.w	r6, [r4, #100]	; 0x64
 8001964:	1a18      	subs	r0, r3, r0
 8001966:	89a3      	ldrh	r3, [r4, #12]
 8001968:	1a9a      	subs	r2, r3, r2
 800196a:	8aa3      	ldrh	r3, [r4, #20]
 800196c:	1b5b      	subs	r3, r3, r5
 800196e:	8ca5      	ldrh	r5, [r4, #36]	; 0x24
 8001970:	1bad      	subs	r5, r5, r6
 8001972:	84a5      	strh	r5, [r4, #36]	; 0x24
 8001974:	f8b4 605c 	ldrh.w	r6, [r4, #92]	; 0x5c
 8001978:	8ba5      	ldrh	r5, [r4, #28]
 800197a:	b280      	uxth	r0, r0
 800197c:	b292      	uxth	r2, r2
 800197e:	b29b      	uxth	r3, r3
 8001980:	1bad      	subs	r5, r5, r6
 8001982:	80a0      	strh	r0, [r4, #4]
 8001984:	81a2      	strh	r2, [r4, #12]
 8001986:	82a3      	strh	r3, [r4, #20]
 8001988:	83a5      	strh	r5, [r4, #28]
 800198a:	b662      	cpsie	i
 800198c:	b200      	sxth	r0, r0
 800198e:	b212      	sxth	r2, r2
 8001990:	1885      	adds	r5, r0, r2
 8001992:	b21b      	sxth	r3, r3
 8001994:	18ed      	adds	r5, r5, r3
 8001996:	d00e      	beq.n	80019b6 <_ZN4CRGB8rgb_readEh+0x21e>
 8001998:	ebc0 2000 	rsb	r0, r0, r0, lsl #8
 800199c:	ebc2 2202 	rsb	r2, r2, r2, lsl #8
 80019a0:	fb90 f0f5 	sdiv	r0, r0, r5
 80019a4:	fb92 f2f5 	sdiv	r2, r2, r5
 80019a8:	ebc3 2303 	rsb	r3, r3, r3, lsl #8
 80019ac:	85a0      	strh	r0, [r4, #44]	; 0x2c
 80019ae:	fb93 f3f5 	sdiv	r3, r3, r5
 80019b2:	86a2      	strh	r2, [r4, #52]	; 0x34
 80019b4:	87a3      	strh	r3, [r4, #60]	; 0x3c
 80019b6:	3101      	adds	r1, #1
 80019b8:	2904      	cmp	r1, #4
 80019ba:	f104 0402 	add.w	r4, r4, #2
 80019be:	d1c7      	bne.n	8001950 <_ZN4CRGB8rgb_readEh+0x1b8>
 80019c0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

080019c4 <_ZN4CRGB8rgb_initEv>:
 80019c4:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 80019c6:	4606      	mov	r6, r0
 80019c8:	4635      	mov	r5, r6
 80019ca:	f7ff fc7b 	bl	80012c4 <_ZN8CRGB_I2C12rgb_i2c_initEv>
 80019ce:	4633      	mov	r3, r6
 80019d0:	2200      	movs	r2, #0
 80019d2:	3201      	adds	r2, #1
 80019d4:	2400      	movs	r4, #0
 80019d6:	2a04      	cmp	r2, #4
 80019d8:	809c      	strh	r4, [r3, #4]
 80019da:	819c      	strh	r4, [r3, #12]
 80019dc:	829c      	strh	r4, [r3, #20]
 80019de:	849c      	strh	r4, [r3, #36]	; 0x24
 80019e0:	839c      	strh	r4, [r3, #28]
 80019e2:	f8a3 4044 	strh.w	r4, [r3, #68]	; 0x44
 80019e6:	f8a3 404c 	strh.w	r4, [r3, #76]	; 0x4c
 80019ea:	f8a3 4054 	strh.w	r4, [r3, #84]	; 0x54
 80019ee:	f8a3 4064 	strh.w	r4, [r3, #100]	; 0x64
 80019f2:	f8a3 405c 	strh.w	r4, [r3, #92]	; 0x5c
 80019f6:	859c      	strh	r4, [r3, #44]	; 0x2c
 80019f8:	869c      	strh	r4, [r3, #52]	; 0x34
 80019fa:	879c      	strh	r4, [r3, #60]	; 0x3c
 80019fc:	f103 0302 	add.w	r3, r3, #2
 8001a00:	d1e7      	bne.n	80019d2 <_ZN4CRGB8rgb_initEv+0xe>
 8001a02:	4630      	mov	r0, r6
 8001a04:	2172      	movs	r1, #114	; 0x72
 8001a06:	2281      	movs	r2, #129	; 0x81
 8001a08:	23ff      	movs	r3, #255	; 0xff
 8001a0a:	f7ff fce8 	bl	80013de <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8001a0e:	4630      	mov	r0, r6
 8001a10:	2172      	movs	r1, #114	; 0x72
 8001a12:	2283      	movs	r2, #131	; 0x83
 8001a14:	23ff      	movs	r3, #255	; 0xff
 8001a16:	f7ff fce2 	bl	80013de <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8001a1a:	4630      	mov	r0, r6
 8001a1c:	2172      	movs	r1, #114	; 0x72
 8001a1e:	228d      	movs	r2, #141	; 0x8d
 8001a20:	4623      	mov	r3, r4
 8001a22:	f7ff fcdc 	bl	80013de <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8001a26:	4630      	mov	r0, r6
 8001a28:	2172      	movs	r1, #114	; 0x72
 8001a2a:	2280      	movs	r2, #128	; 0x80
 8001a2c:	2303      	movs	r3, #3
 8001a2e:	f7ff fcd6 	bl	80013de <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8001a32:	228f      	movs	r2, #143	; 0x8f
 8001a34:	2323      	movs	r3, #35	; 0x23
 8001a36:	4630      	mov	r0, r6
 8001a38:	2172      	movs	r1, #114	; 0x72
 8001a3a:	f7ff fcd0 	bl	80013de <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8001a3e:	af01      	add	r7, sp, #4
 8001a40:	4630      	mov	r0, r6
 8001a42:	4621      	mov	r1, r4
 8001a44:	f7ff fea8 	bl	8001798 <_ZN4CRGB8rgb_readEh>
 8001a48:	463b      	mov	r3, r7
 8001a4a:	4630      	mov	r0, r6
 8001a4c:	2172      	movs	r1, #114	; 0x72
 8001a4e:	2292      	movs	r2, #146	; 0x92
 8001a50:	f7ff fd2a 	bl	80014a8 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>
 8001a54:	4623      	mov	r3, r4
 8001a56:	5cfa      	ldrb	r2, [r7, r3]
 8001a58:	2a69      	cmp	r2, #105	; 0x69
 8001a5a:	bf1c      	itt	ne
 8001a5c:	2201      	movne	r2, #1
 8001a5e:	409a      	lslne	r2, r3
 8001a60:	f103 0301 	add.w	r3, r3, #1
 8001a64:	bf18      	it	ne
 8001a66:	4314      	orrne	r4, r2
 8001a68:	2b04      	cmp	r3, #4
 8001a6a:	d1f4      	bne.n	8001a56 <_ZN4CRGB8rgb_initEv+0x92>
 8001a6c:	461f      	mov	r7, r3
 8001a6e:	4630      	mov	r0, r6
 8001a70:	2101      	movs	r1, #1
 8001a72:	f7ff fe91 	bl	8001798 <_ZN4CRGB8rgb_readEh>
 8001a76:	3f01      	subs	r7, #1
 8001a78:	d1f9      	bne.n	8001a6e <_ZN4CRGB8rgb_initEv+0xaa>
 8001a7a:	2104      	movs	r1, #4
 8001a7c:	f9b5 3044 	ldrsh.w	r3, [r5, #68]	; 0x44
 8001a80:	089b      	lsrs	r3, r3, #2
 8001a82:	f8a5 3044 	strh.w	r3, [r5, #68]	; 0x44
 8001a86:	f9b5 304c 	ldrsh.w	r3, [r5, #76]	; 0x4c
 8001a8a:	089b      	lsrs	r3, r3, #2
 8001a8c:	f8a5 304c 	strh.w	r3, [r5, #76]	; 0x4c
 8001a90:	f9b5 3054 	ldrsh.w	r3, [r5, #84]	; 0x54
 8001a94:	089b      	lsrs	r3, r3, #2
 8001a96:	f8a5 3054 	strh.w	r3, [r5, #84]	; 0x54
 8001a9a:	f9b5 3064 	ldrsh.w	r3, [r5, #100]	; 0x64
 8001a9e:	089b      	lsrs	r3, r3, #2
 8001aa0:	f8a5 3064 	strh.w	r3, [r5, #100]	; 0x64
 8001aa4:	f9b5 305c 	ldrsh.w	r3, [r5, #92]	; 0x5c
 8001aa8:	3901      	subs	r1, #1
 8001aaa:	ea4f 0393 	mov.w	r3, r3, lsr #2
 8001aae:	f8a5 305c 	strh.w	r3, [r5, #92]	; 0x5c
 8001ab2:	f105 0502 	add.w	r5, r5, #2
 8001ab6:	d1e1      	bne.n	8001a7c <_ZN4CRGB8rgb_initEv+0xb8>
 8001ab8:	4630      	mov	r0, r6
 8001aba:	f7ff fe6d 	bl	8001798 <_ZN4CRGB8rgb_readEh>
 8001abe:	b114      	cbz	r4, 8001ac6 <_ZN4CRGB8rgb_initEv+0x102>
 8001ac0:	4802      	ldr	r0, [pc, #8]	; (8001acc <_ZN4CRGB8rgb_initEv+0x108>)
 8001ac2:	1b00      	subs	r0, r0, r4
 8001ac4:	e000      	b.n	8001ac8 <_ZN4CRGB8rgb_initEv+0x104>
 8001ac6:	4620      	mov	r0, r4
 8001ac8:	b003      	add	sp, #12
 8001aca:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001acc:	fffffc18 	.word	0xfffffc18

08001ad0 <_ZN4CRGB14get_rgb_resultEv>:
 8001ad0:	3004      	adds	r0, #4
 8001ad2:	4770      	bx	lr

08001ad4 <TIM3_IRQHandler>:
 8001ad4:	2300      	movs	r3, #0
 8001ad6:	4a15      	ldr	r2, [pc, #84]	; (8001b2c <TIM3_IRQHandler+0x58>)
 8001ad8:	5cd1      	ldrb	r1, [r2, r3]
 8001ada:	b111      	cbz	r1, 8001ae2 <TIM3_IRQHandler+0xe>
 8001adc:	5cd1      	ldrb	r1, [r2, r3]
 8001ade:	29ff      	cmp	r1, #255	; 0xff
 8001ae0:	d11e      	bne.n	8001b20 <TIM3_IRQHandler+0x4c>
 8001ae2:	4913      	ldr	r1, [pc, #76]	; (8001b30 <TIM3_IRQHandler+0x5c>)
 8001ae4:	f851 0023 	ldr.w	r0, [r1, r3, lsl #2]
 8001ae8:	b128      	cbz	r0, 8001af6 <TIM3_IRQHandler+0x22>
 8001aea:	f851 2023 	ldr.w	r2, [r1, r3, lsl #2]
 8001aee:	3a01      	subs	r2, #1
 8001af0:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8001af4:	e009      	b.n	8001b0a <TIM3_IRQHandler+0x36>
 8001af6:	480f      	ldr	r0, [pc, #60]	; (8001b34 <TIM3_IRQHandler+0x60>)
 8001af8:	f850 0023 	ldr.w	r0, [r0, r3, lsl #2]
 8001afc:	f841 0023 	str.w	r0, [r1, r3, lsl #2]
 8001b00:	5cd2      	ldrb	r2, [r2, r3]
 8001b02:	b912      	cbnz	r2, 8001b0a <TIM3_IRQHandler+0x36>
 8001b04:	4a09      	ldr	r2, [pc, #36]	; (8001b2c <TIM3_IRQHandler+0x58>)
 8001b06:	2101      	movs	r1, #1
 8001b08:	54d1      	strb	r1, [r2, r3]
 8001b0a:	3301      	adds	r3, #1
 8001b0c:	2b08      	cmp	r3, #8
 8001b0e:	d1e2      	bne.n	8001ad6 <TIM3_IRQHandler+0x2>
 8001b10:	4a09      	ldr	r2, [pc, #36]	; (8001b38 <TIM3_IRQHandler+0x64>)
 8001b12:	480a      	ldr	r0, [pc, #40]	; (8001b3c <TIM3_IRQHandler+0x68>)
 8001b14:	6813      	ldr	r3, [r2, #0]
 8001b16:	2101      	movs	r1, #1
 8001b18:	3301      	adds	r3, #1
 8001b1a:	6013      	str	r3, [r2, #0]
 8001b1c:	f000 be0a 	b.w	8002734 <TIM_ClearITPendingBit>
 8001b20:	5cd1      	ldrb	r1, [r2, r3]
 8001b22:	3101      	adds	r1, #1
 8001b24:	b2c9      	uxtb	r1, r1
 8001b26:	54d1      	strb	r1, [r2, r3]
 8001b28:	e7db      	b.n	8001ae2 <TIM3_IRQHandler+0xe>
 8001b2a:	bf00      	nop
 8001b2c:	2000016c 	.word	0x2000016c
 8001b30:	2000014c 	.word	0x2000014c
 8001b34:	2000017c 	.word	0x2000017c
 8001b38:	20000174 	.word	0x20000174
 8001b3c:	40000400 	.word	0x40000400

08001b40 <_ZN6CTimer10timer_initEv>:
 8001b40:	b530      	push	{r4, r5, lr}
 8001b42:	4a1f      	ldr	r2, [pc, #124]	; (8001bc0 <_ZN6CTimer10timer_initEv+0x80>)
 8001b44:	2300      	movs	r3, #0
 8001b46:	b085      	sub	sp, #20
 8001b48:	6013      	str	r3, [r2, #0]
 8001b4a:	491e      	ldr	r1, [pc, #120]	; (8001bc4 <_ZN6CTimer10timer_initEv+0x84>)
 8001b4c:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8001b50:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8001b54:	491c      	ldr	r1, [pc, #112]	; (8001bc8 <_ZN6CTimer10timer_initEv+0x88>)
 8001b56:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8001b5a:	4a1c      	ldr	r2, [pc, #112]	; (8001bcc <_ZN6CTimer10timer_initEv+0x8c>)
 8001b5c:	2400      	movs	r4, #0
 8001b5e:	54d4      	strb	r4, [r2, r3]
 8001b60:	3301      	adds	r3, #1
 8001b62:	2b08      	cmp	r3, #8
 8001b64:	d1f1      	bne.n	8001b4a <_ZN6CTimer10timer_initEv+0xa>
 8001b66:	4d1a      	ldr	r5, [pc, #104]	; (8001bd0 <_ZN6CTimer10timer_initEv+0x90>)
 8001b68:	2002      	movs	r0, #2
 8001b6a:	2101      	movs	r1, #1
 8001b6c:	f000 ff7a 	bl	8002a64 <RCC_APB1PeriphClockCmd>
 8001b70:	f44f 738c 	mov.w	r3, #280	; 0x118
 8001b74:	f8ad 3004 	strh.w	r3, [sp, #4]
 8001b78:	4628      	mov	r0, r5
 8001b7a:	2331      	movs	r3, #49	; 0x31
 8001b7c:	a901      	add	r1, sp, #4
 8001b7e:	9302      	str	r3, [sp, #8]
 8001b80:	f8ad 4006 	strh.w	r4, [sp, #6]
 8001b84:	f8ad 400c 	strh.w	r4, [sp, #12]
 8001b88:	f8ad 400e 	strh.w	r4, [sp, #14]
 8001b8c:	f000 fd28 	bl	80025e0 <TIM_TimeBaseInit>
 8001b90:	4628      	mov	r0, r5
 8001b92:	2101      	movs	r1, #1
 8001b94:	f000 fd74 	bl	8002680 <TIM_Cmd>
 8001b98:	68eb      	ldr	r3, [r5, #12]
 8001b9a:	f043 0301 	orr.w	r3, r3, #1
 8001b9e:	60eb      	str	r3, [r5, #12]
 8001ba0:	231d      	movs	r3, #29
 8001ba2:	f88d 3000 	strb.w	r3, [sp]
 8001ba6:	4668      	mov	r0, sp
 8001ba8:	2301      	movs	r3, #1
 8001baa:	f88d 4001 	strb.w	r4, [sp, #1]
 8001bae:	f88d 3002 	strb.w	r3, [sp, #2]
 8001bb2:	f88d 3003 	strb.w	r3, [sp, #3]
 8001bb6:	f000 fcd9 	bl	800256c <NVIC_Init>
 8001bba:	4620      	mov	r0, r4
 8001bbc:	b005      	add	sp, #20
 8001bbe:	bd30      	pop	{r4, r5, pc}
 8001bc0:	20000174 	.word	0x20000174
 8001bc4:	2000014c 	.word	0x2000014c
 8001bc8:	2000017c 	.word	0x2000017c
 8001bcc:	2000016c 	.word	0x2000016c
 8001bd0:	40000400 	.word	0x40000400

08001bd4 <_ZN6CTimer8get_timeEv>:
 8001bd4:	b082      	sub	sp, #8
 8001bd6:	b672      	cpsid	i
 8001bd8:	4b04      	ldr	r3, [pc, #16]	; (8001bec <_ZN6CTimer8get_timeEv+0x18>)
 8001bda:	681b      	ldr	r3, [r3, #0]
 8001bdc:	9301      	str	r3, [sp, #4]
 8001bde:	b662      	cpsie	i
 8001be0:	230a      	movs	r3, #10
 8001be2:	9801      	ldr	r0, [sp, #4]
 8001be4:	fbb0 f0f3 	udiv	r0, r0, r3
 8001be8:	b002      	add	sp, #8
 8001bea:	4770      	bx	lr
 8001bec:	20000174 	.word	0x20000174

08001bf0 <_ZN6CTimer8delay_msEm>:
 8001bf0:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8001bf2:	460c      	mov	r4, r1
 8001bf4:	4605      	mov	r5, r0
 8001bf6:	f7ff ffed 	bl	8001bd4 <_ZN6CTimer8get_timeEv>
 8001bfa:	4420      	add	r0, r4
 8001bfc:	9001      	str	r0, [sp, #4]
 8001bfe:	4628      	mov	r0, r5
 8001c00:	9c01      	ldr	r4, [sp, #4]
 8001c02:	f7ff ffe7 	bl	8001bd4 <_ZN6CTimer8get_timeEv>
 8001c06:	4284      	cmp	r4, r0
 8001c08:	d902      	bls.n	8001c10 <_ZN6CTimer8delay_msEm+0x20>
 8001c0a:	f001 f81d 	bl	8002c48 <core_yield>
 8001c0e:	e7f6      	b.n	8001bfe <_ZN6CTimer8delay_msEm+0xe>
 8001c10:	b003      	add	sp, #12
 8001c12:	bd30      	pop	{r4, r5, pc}

08001c14 <_ZN6CTimer22event_timer_set_periodEhm>:
 8001c14:	b672      	cpsid	i
 8001c16:	230a      	movs	r3, #10
 8001c18:	435a      	muls	r2, r3
 8001c1a:	4b05      	ldr	r3, [pc, #20]	; (8001c30 <_ZN6CTimer22event_timer_set_periodEhm+0x1c>)
 8001c1c:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 8001c20:	4b04      	ldr	r3, [pc, #16]	; (8001c34 <_ZN6CTimer22event_timer_set_periodEhm+0x20>)
 8001c22:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 8001c26:	4b04      	ldr	r3, [pc, #16]	; (8001c38 <_ZN6CTimer22event_timer_set_periodEhm+0x24>)
 8001c28:	2200      	movs	r2, #0
 8001c2a:	545a      	strb	r2, [r3, r1]
 8001c2c:	b662      	cpsie	i
 8001c2e:	4770      	bx	lr
 8001c30:	2000014c 	.word	0x2000014c
 8001c34:	2000017c 	.word	0x2000017c
 8001c38:	2000016c 	.word	0x2000016c

08001c3c <_ZN6CTimer17event_timer_checkEh>:
 8001c3c:	4b05      	ldr	r3, [pc, #20]	; (8001c54 <_ZN6CTimer17event_timer_checkEh+0x18>)
 8001c3e:	5c5a      	ldrb	r2, [r3, r1]
 8001c40:	f002 00ff 	and.w	r0, r2, #255	; 0xff
 8001c44:	b12a      	cbz	r2, 8001c52 <_ZN6CTimer17event_timer_checkEh+0x16>
 8001c46:	b672      	cpsid	i
 8001c48:	5c58      	ldrb	r0, [r3, r1]
 8001c4a:	2200      	movs	r2, #0
 8001c4c:	b2c0      	uxtb	r0, r0
 8001c4e:	545a      	strb	r2, [r3, r1]
 8001c50:	b662      	cpsie	i
 8001c52:	4770      	bx	lr
 8001c54:	2000016c 	.word	0x2000016c

08001c58 <_ZN4CIMU8imu_readEv>:
 8001c58:	b570      	push	{r4, r5, r6, lr}
 8001c5a:	4c52      	ldr	r4, [pc, #328]	; (8001da4 <_ZN4CIMU8imu_readEv+0x14c>)
 8001c5c:	4605      	mov	r5, r0
 8001c5e:	4620      	mov	r0, r4
 8001c60:	f7fe ffe2 	bl	8000c28 <_ZN4CI2C5StartEv>
 8001c64:	4620      	mov	r0, r4
 8001c66:	21d4      	movs	r1, #212	; 0xd4
 8001c68:	f7ff f808 	bl	8000c7c <_ZN4CI2C5WriteEh>
 8001c6c:	21a8      	movs	r1, #168	; 0xa8
 8001c6e:	4620      	mov	r0, r4
 8001c70:	f7ff f804 	bl	8000c7c <_ZN4CI2C5WriteEh>
 8001c74:	4620      	mov	r0, r4
 8001c76:	f7fe ffd7 	bl	8000c28 <_ZN4CI2C5StartEv>
 8001c7a:	4620      	mov	r0, r4
 8001c7c:	21d5      	movs	r1, #213	; 0xd5
 8001c7e:	f7fe fffd 	bl	8000c7c <_ZN4CI2C5WriteEh>
 8001c82:	4620      	mov	r0, r4
 8001c84:	2101      	movs	r1, #1
 8001c86:	f7ff f843 	bl	8000d10 <_ZN4CI2C4ReadEh>
 8001c8a:	2101      	movs	r1, #1
 8001c8c:	b286      	uxth	r6, r0
 8001c8e:	4620      	mov	r0, r4
 8001c90:	f7ff f83e 	bl	8000d10 <_ZN4CI2C4ReadEh>
 8001c94:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001c98:	b200      	sxth	r0, r0
 8001c9a:	6268      	str	r0, [r5, #36]	; 0x24
 8001c9c:	2101      	movs	r1, #1
 8001c9e:	4620      	mov	r0, r4
 8001ca0:	f7ff f836 	bl	8000d10 <_ZN4CI2C4ReadEh>
 8001ca4:	2101      	movs	r1, #1
 8001ca6:	b286      	uxth	r6, r0
 8001ca8:	4620      	mov	r0, r4
 8001caa:	f7ff f831 	bl	8000d10 <_ZN4CI2C4ReadEh>
 8001cae:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001cb2:	b200      	sxth	r0, r0
 8001cb4:	62a8      	str	r0, [r5, #40]	; 0x28
 8001cb6:	2101      	movs	r1, #1
 8001cb8:	4620      	mov	r0, r4
 8001cba:	f7ff f829 	bl	8000d10 <_ZN4CI2C4ReadEh>
 8001cbe:	2100      	movs	r1, #0
 8001cc0:	b286      	uxth	r6, r0
 8001cc2:	4620      	mov	r0, r4
 8001cc4:	f7ff f824 	bl	8000d10 <_ZN4CI2C4ReadEh>
 8001cc8:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001ccc:	b200      	sxth	r0, r0
 8001cce:	62e8      	str	r0, [r5, #44]	; 0x2c
 8001cd0:	4620      	mov	r0, r4
 8001cd2:	f7fe ffbe 	bl	8000c52 <_ZN4CI2C4StopEv>
 8001cd6:	4620      	mov	r0, r4
 8001cd8:	f7fe ffa6 	bl	8000c28 <_ZN4CI2C5StartEv>
 8001cdc:	4620      	mov	r0, r4
 8001cde:	213c      	movs	r1, #60	; 0x3c
 8001ce0:	f7fe ffcc 	bl	8000c7c <_ZN4CI2C5WriteEh>
 8001ce4:	21a8      	movs	r1, #168	; 0xa8
 8001ce6:	4620      	mov	r0, r4
 8001ce8:	f7fe ffc8 	bl	8000c7c <_ZN4CI2C5WriteEh>
 8001cec:	4620      	mov	r0, r4
 8001cee:	f7fe ff9b 	bl	8000c28 <_ZN4CI2C5StartEv>
 8001cf2:	4620      	mov	r0, r4
 8001cf4:	213d      	movs	r1, #61	; 0x3d
 8001cf6:	f7fe ffc1 	bl	8000c7c <_ZN4CI2C5WriteEh>
 8001cfa:	4620      	mov	r0, r4
 8001cfc:	2101      	movs	r1, #1
 8001cfe:	f7ff f807 	bl	8000d10 <_ZN4CI2C4ReadEh>
 8001d02:	2101      	movs	r1, #1
 8001d04:	b286      	uxth	r6, r0
 8001d06:	4620      	mov	r0, r4
 8001d08:	f7ff f802 	bl	8000d10 <_ZN4CI2C4ReadEh>
 8001d0c:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001d10:	b200      	sxth	r0, r0
 8001d12:	6328      	str	r0, [r5, #48]	; 0x30
 8001d14:	2101      	movs	r1, #1
 8001d16:	4620      	mov	r0, r4
 8001d18:	f7fe fffa 	bl	8000d10 <_ZN4CI2C4ReadEh>
 8001d1c:	2101      	movs	r1, #1
 8001d1e:	b286      	uxth	r6, r0
 8001d20:	4620      	mov	r0, r4
 8001d22:	f7fe fff5 	bl	8000d10 <_ZN4CI2C4ReadEh>
 8001d26:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001d2a:	b200      	sxth	r0, r0
 8001d2c:	6368      	str	r0, [r5, #52]	; 0x34
 8001d2e:	2101      	movs	r1, #1
 8001d30:	4620      	mov	r0, r4
 8001d32:	f7fe ffed 	bl	8000d10 <_ZN4CI2C4ReadEh>
 8001d36:	2100      	movs	r1, #0
 8001d38:	b286      	uxth	r6, r0
 8001d3a:	4620      	mov	r0, r4
 8001d3c:	f7fe ffe8 	bl	8000d10 <_ZN4CI2C4ReadEh>
 8001d40:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001d44:	b200      	sxth	r0, r0
 8001d46:	63a8      	str	r0, [r5, #56]	; 0x38
 8001d48:	4620      	mov	r0, r4
 8001d4a:	f7fe ff82 	bl	8000c52 <_ZN4CI2C4StopEv>
 8001d4e:	686a      	ldr	r2, [r5, #4]
 8001d50:	6aab      	ldr	r3, [r5, #40]	; 0x28
 8001d52:	68a8      	ldr	r0, [r5, #8]
 8001d54:	1a9b      	subs	r3, r3, r2
 8001d56:	68ea      	ldr	r2, [r5, #12]
 8001d58:	26c8      	movs	r6, #200	; 0xc8
 8001d5a:	fb93 f3f6 	sdiv	r3, r3, r6
 8001d5e:	441a      	add	r2, r3
 8001d60:	6beb      	ldr	r3, [r5, #60]	; 0x3c
 8001d62:	60ea      	str	r2, [r5, #12]
 8001d64:	2155      	movs	r1, #85	; 0x55
 8001d66:	4359      	muls	r1, r3
 8001d68:	f640 14e2 	movw	r4, #2530	; 0x9e2
 8001d6c:	434a      	muls	r2, r1
 8001d6e:	6a6b      	ldr	r3, [r5, #36]	; 0x24
 8001d70:	fb92 f2f4 	sdiv	r2, r2, r4
 8001d74:	61aa      	str	r2, [r5, #24]
 8001d76:	682a      	ldr	r2, [r5, #0]
 8001d78:	1a9b      	subs	r3, r3, r2
 8001d7a:	692a      	ldr	r2, [r5, #16]
 8001d7c:	fb93 f3f6 	sdiv	r3, r3, r6
 8001d80:	441a      	add	r2, r3
 8001d82:	612a      	str	r2, [r5, #16]
 8001d84:	434a      	muls	r2, r1
 8001d86:	fb92 f2f4 	sdiv	r2, r2, r4
 8001d8a:	61ea      	str	r2, [r5, #28]
 8001d8c:	6aea      	ldr	r2, [r5, #44]	; 0x2c
 8001d8e:	1a12      	subs	r2, r2, r0
 8001d90:	fb92 f0f6 	sdiv	r0, r2, r6
 8001d94:	696a      	ldr	r2, [r5, #20]
 8001d96:	1883      	adds	r3, r0, r2
 8001d98:	616b      	str	r3, [r5, #20]
 8001d9a:	434b      	muls	r3, r1
 8001d9c:	fb93 f3f4 	sdiv	r3, r3, r4
 8001da0:	622b      	str	r3, [r5, #32]
 8001da2:	bd70      	pop	{r4, r5, r6, pc}
 8001da4:	20000118 	.word	0x20000118

08001da8 <_ZN4CIMU8imu_initEv>:
 8001da8:	230a      	movs	r3, #10
 8001daa:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001dae:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001db0:	2300      	movs	r3, #0
 8001db2:	4604      	mov	r4, r0
 8001db4:	6003      	str	r3, [r0, #0]
 8001db6:	6043      	str	r3, [r0, #4]
 8001db8:	6083      	str	r3, [r0, #8]
 8001dba:	60c3      	str	r3, [r0, #12]
 8001dbc:	6103      	str	r3, [r0, #16]
 8001dbe:	6143      	str	r3, [r0, #20]
 8001dc0:	f242 7511 	movw	r5, #10001	; 0x2711
 8001dc4:	3d01      	subs	r5, #1
 8001dc6:	d001      	beq.n	8001dcc <_ZN4CIMU8imu_initEv+0x24>
 8001dc8:	bf00      	nop
 8001dca:	e7fb      	b.n	8001dc4 <_ZN4CIMU8imu_initEv+0x1c>
 8001dcc:	4832      	ldr	r0, [pc, #200]	; (8001e98 <_ZN4CIMU8imu_initEv+0xf0>)
 8001dce:	21d4      	movs	r1, #212	; 0xd4
 8001dd0:	220f      	movs	r2, #15
 8001dd2:	f7fe ffcb 	bl	8000d6c <_ZN4CI2C8read_regEhh>
 8001dd6:	28d4      	cmp	r0, #212	; 0xd4
 8001dd8:	4606      	mov	r6, r0
 8001dda:	d155      	bne.n	8001e88 <_ZN4CIMU8imu_initEv+0xe0>
 8001ddc:	482e      	ldr	r0, [pc, #184]	; (8001e98 <_ZN4CIMU8imu_initEv+0xf0>)
 8001dde:	213c      	movs	r1, #60	; 0x3c
 8001de0:	220f      	movs	r2, #15
 8001de2:	f7fe ffc3 	bl	8000d6c <_ZN4CI2C8read_regEhh>
 8001de6:	2849      	cmp	r0, #73	; 0x49
 8001de8:	d152      	bne.n	8001e90 <_ZN4CIMU8imu_initEv+0xe8>
 8001dea:	4631      	mov	r1, r6
 8001dec:	482a      	ldr	r0, [pc, #168]	; (8001e98 <_ZN4CIMU8imu_initEv+0xf0>)
 8001dee:	2220      	movs	r2, #32
 8001df0:	23ff      	movs	r3, #255	; 0xff
 8001df2:	f7fe ff75 	bl	8000ce0 <_ZN4CI2C9write_regEhhh>
 8001df6:	4631      	mov	r1, r6
 8001df8:	4827      	ldr	r0, [pc, #156]	; (8001e98 <_ZN4CIMU8imu_initEv+0xf0>)
 8001dfa:	4e28      	ldr	r6, [pc, #160]	; (8001e9c <_ZN4CIMU8imu_initEv+0xf4>)
 8001dfc:	2223      	movs	r2, #35	; 0x23
 8001dfe:	2310      	movs	r3, #16
 8001e00:	f7fe ff6e 	bl	8000ce0 <_ZN4CI2C9write_regEhhh>
 8001e04:	4824      	ldr	r0, [pc, #144]	; (8001e98 <_ZN4CIMU8imu_initEv+0xf0>)
 8001e06:	213c      	movs	r1, #60	; 0x3c
 8001e08:	221f      	movs	r2, #31
 8001e0a:	462b      	mov	r3, r5
 8001e0c:	f7fe ff68 	bl	8000ce0 <_ZN4CI2C9write_regEhhh>
 8001e10:	4821      	ldr	r0, [pc, #132]	; (8001e98 <_ZN4CIMU8imu_initEv+0xf0>)
 8001e12:	213c      	movs	r1, #60	; 0x3c
 8001e14:	2220      	movs	r2, #32
 8001e16:	2367      	movs	r3, #103	; 0x67
 8001e18:	f7fe ff62 	bl	8000ce0 <_ZN4CI2C9write_regEhhh>
 8001e1c:	481e      	ldr	r0, [pc, #120]	; (8001e98 <_ZN4CIMU8imu_initEv+0xf0>)
 8001e1e:	213c      	movs	r1, #60	; 0x3c
 8001e20:	2221      	movs	r2, #33	; 0x21
 8001e22:	462b      	mov	r3, r5
 8001e24:	f7fe ff5c 	bl	8000ce0 <_ZN4CI2C9write_regEhhh>
 8001e28:	3e01      	subs	r6, #1
 8001e2a:	d001      	beq.n	8001e30 <_ZN4CIMU8imu_initEv+0x88>
 8001e2c:	bf00      	nop
 8001e2e:	e7fb      	b.n	8001e28 <_ZN4CIMU8imu_initEv+0x80>
 8001e30:	4620      	mov	r0, r4
 8001e32:	f7ff ff11 	bl	8001c58 <_ZN4CIMU8imu_readEv>
 8001e36:	2564      	movs	r5, #100	; 0x64
 8001e38:	4637      	mov	r7, r6
 8001e3a:	46b0      	mov	r8, r6
 8001e3c:	2365      	movs	r3, #101	; 0x65
 8001e3e:	3b01      	subs	r3, #1
 8001e40:	d001      	beq.n	8001e46 <_ZN4CIMU8imu_initEv+0x9e>
 8001e42:	bf00      	nop
 8001e44:	e7fb      	b.n	8001e3e <_ZN4CIMU8imu_initEv+0x96>
 8001e46:	4620      	mov	r0, r4
 8001e48:	f7ff ff06 	bl	8001c58 <_ZN4CIMU8imu_readEv>
 8001e4c:	6a63      	ldr	r3, [r4, #36]	; 0x24
 8001e4e:	4498      	add	r8, r3
 8001e50:	6aa3      	ldr	r3, [r4, #40]	; 0x28
 8001e52:	441f      	add	r7, r3
 8001e54:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8001e56:	3d01      	subs	r5, #1
 8001e58:	441e      	add	r6, r3
 8001e5a:	d1ef      	bne.n	8001e3c <_ZN4CIMU8imu_initEv+0x94>
 8001e5c:	2264      	movs	r2, #100	; 0x64
 8001e5e:	6325      	str	r5, [r4, #48]	; 0x30
 8001e60:	fb98 f3f2 	sdiv	r3, r8, r2
 8001e64:	fb97 f7f2 	sdiv	r7, r7, r2
 8001e68:	fb96 f6f2 	sdiv	r6, r6, r2
 8001e6c:	6023      	str	r3, [r4, #0]
 8001e6e:	6067      	str	r7, [r4, #4]
 8001e70:	60a6      	str	r6, [r4, #8]
 8001e72:	6365      	str	r5, [r4, #52]	; 0x34
 8001e74:	63a5      	str	r5, [r4, #56]	; 0x38
 8001e76:	6265      	str	r5, [r4, #36]	; 0x24
 8001e78:	62a5      	str	r5, [r4, #40]	; 0x28
 8001e7a:	62e5      	str	r5, [r4, #44]	; 0x2c
 8001e7c:	61a5      	str	r5, [r4, #24]
 8001e7e:	61e5      	str	r5, [r4, #28]
 8001e80:	6225      	str	r5, [r4, #32]
 8001e82:	4628      	mov	r0, r5
 8001e84:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001e88:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8001e8c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001e90:	f06f 0001 	mvn.w	r0, #1
 8001e94:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001e98:	20000118 	.word	0x20000118
 8001e9c:	000186a1 	.word	0x000186a1

08001ea0 <_ZN4CIMU14get_imu_resultEv>:
 8001ea0:	3018      	adds	r0, #24
 8001ea2:	4770      	bx	lr

08001ea4 <_ZN5CDemo4initEv>:
 8001ea4:	4770      	bx	lr
	...

08001ea8 <_ZN5CDemo10blink_taskEv>:
 8001ea8:	b508      	push	{r3, lr}
 8001eaa:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001eae:	480a      	ldr	r0, [pc, #40]	; (8001ed8 <_ZN5CDemo10blink_taskEv+0x30>)
 8001eb0:	f7fe ffce 	bl	8000e50 <_ZN5CGPIO7gpio_onEm>
 8001eb4:	4809      	ldr	r0, [pc, #36]	; (8001edc <_ZN5CDemo10blink_taskEv+0x34>)
 8001eb6:	f7ff fe8d 	bl	8001bd4 <_ZN6CTimer8get_timeEv>
 8001eba:	4909      	ldr	r1, [pc, #36]	; (8001ee0 <_ZN5CDemo10blink_taskEv+0x38>)
 8001ebc:	4602      	mov	r2, r0
 8001ebe:	4806      	ldr	r0, [pc, #24]	; (8001ed8 <_ZN5CDemo10blink_taskEv+0x30>)
 8001ec0:	f7ff f950 	bl	8001164 <_ZN9CTerminal6printfEPKcz>
 8001ec4:	4805      	ldr	r0, [pc, #20]	; (8001edc <_ZN5CDemo10blink_taskEv+0x34>)
 8001ec6:	210a      	movs	r1, #10
 8001ec8:	f7ff fe92 	bl	8001bf0 <_ZN6CTimer8delay_msEm>
 8001ecc:	4802      	ldr	r0, [pc, #8]	; (8001ed8 <_ZN5CDemo10blink_taskEv+0x30>)
 8001ece:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001ed2:	f7fe ffcb 	bl	8000e6c <_ZN5CGPIO8gpio_offEm>
 8001ed6:	e7e8      	b.n	8001eaa <_ZN5CDemo10blink_taskEv+0x2>
 8001ed8:	20000038 	.word	0x20000038
 8001edc:	20000178 	.word	0x20000178
 8001ee0:	08003060 	.word	0x08003060

08001ee4 <_ZN5CDemo16wifi_client_taskEv>:
 8001ee4:	b507      	push	{r0, r1, r2, lr}
 8001ee6:	4668      	mov	r0, sp
 8001ee8:	f7fe fa18 	bl	800031c <_ZN5CWifiC1Ev>
 8001eec:	2100      	movs	r1, #0
 8001eee:	4668      	mov	r0, sp
 8001ef0:	f7fe facc 	bl	800048c <_ZN5CWifi4initEh>
 8001ef4:	4668      	mov	r0, sp
 8001ef6:	f7fe fc0f 	bl	8000718 <_ZN5CWifi11client_demoEv>
 8001efa:	4668      	mov	r0, sp
 8001efc:	f7fe fa0f 	bl	800031e <_ZN5CWifiD1Ev>
 8001f00:	b003      	add	sp, #12
 8001f02:	f85d fb04 	ldr.w	pc, [sp], #4
	...

08001f08 <_ZN5CDemo10moves_taskEv>:
 8001f08:	b570      	push	{r4, r5, r6, lr}
 8001f0a:	4c1c      	ldr	r4, [pc, #112]	; (8001f7c <_ZN5CDemo10moves_taskEv+0x74>)
 8001f0c:	4d1c      	ldr	r5, [pc, #112]	; (8001f80 <_ZN5CDemo10moves_taskEv+0x78>)
 8001f0e:	4620      	mov	r0, r4
 8001f10:	f44f 7161 	mov.w	r1, #900	; 0x384
 8001f14:	2216      	movs	r2, #22
 8001f16:	2300      	movs	r3, #0
 8001f18:	f7fe f9aa 	bl	8000270 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001f1c:	4620      	mov	r0, r4
 8001f1e:	f44f 7161 	mov.w	r1, #900	; 0x384
 8001f22:	2216      	movs	r2, #22
 8001f24:	2300      	movs	r3, #0
 8001f26:	f7fe f9a3 	bl	8000270 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001f2a:	4620      	mov	r0, r4
 8001f2c:	f44f 7161 	mov.w	r1, #900	; 0x384
 8001f30:	2216      	movs	r2, #22
 8001f32:	2300      	movs	r3, #0
 8001f34:	f7fe f99c 	bl	8000270 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001f38:	4620      	mov	r0, r4
 8001f3a:	f44f 7161 	mov.w	r1, #900	; 0x384
 8001f3e:	2216      	movs	r2, #22
 8001f40:	2300      	movs	r3, #0
 8001f42:	f7fe f995 	bl	8000270 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001f46:	4620      	mov	r0, r4
 8001f48:	4629      	mov	r1, r5
 8001f4a:	2216      	movs	r2, #22
 8001f4c:	2300      	movs	r3, #0
 8001f4e:	f7fe f98f 	bl	8000270 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001f52:	4620      	mov	r0, r4
 8001f54:	4629      	mov	r1, r5
 8001f56:	2216      	movs	r2, #22
 8001f58:	2300      	movs	r3, #0
 8001f5a:	f7fe f989 	bl	8000270 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001f5e:	4620      	mov	r0, r4
 8001f60:	4629      	mov	r1, r5
 8001f62:	2216      	movs	r2, #22
 8001f64:	2300      	movs	r3, #0
 8001f66:	f7fe f983 	bl	8000270 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001f6a:	4620      	mov	r0, r4
 8001f6c:	4629      	mov	r1, r5
 8001f6e:	2216      	movs	r2, #22
 8001f70:	2300      	movs	r3, #0
 8001f72:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001f76:	f7fe b97b 	b.w	8000270 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001f7a:	bf00      	nop
 8001f7c:	20000038 	.word	0x20000038
 8001f80:	fffffc7c 	.word	0xfffffc7c

08001f84 <_ZN5CDemo24basic_line_follower_taskEv>:
 8001f84:	b510      	push	{r4, lr}
 8001f86:	b08e      	sub	sp, #56	; 0x38
 8001f88:	4668      	mov	r0, sp
 8001f8a:	f7fe fc46 	bl	800081a <_ZN13CLinePositionC1Ev>
 8001f8e:	a806      	add	r0, sp, #24
 8001f90:	eeb2 0a04 	vmov.f32	s0, #36	; 0x41200000  10.0
 8001f94:	eddf 0a38 	vldr	s1, [pc, #224]	; 8002078 <_ZN5CDemo24basic_line_follower_taskEv+0xf4>
 8001f98:	eddf 1a38 	vldr	s3, [pc, #224]	; 800207c <_ZN5CDemo24basic_line_follower_taskEv+0xf8>
 8001f9c:	eeb2 1a00 	vmov.f32	s2, #32	; 0x41000000  8.0
 8001fa0:	f7fe fc02 	bl	80007a8 <_ZN4CPIDC1Effff>
 8001fa4:	4836      	ldr	r0, [pc, #216]	; (8002080 <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 8001fa6:	2100      	movs	r1, #0
 8001fa8:	220a      	movs	r2, #10
 8001faa:	f7ff fe33 	bl	8001c14 <_ZN6CTimer22event_timer_set_periodEhm>
 8001fae:	4834      	ldr	r0, [pc, #208]	; (8002080 <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 8001fb0:	2100      	movs	r1, #0
 8001fb2:	f7ff fe43 	bl	8001c3c <_ZN6CTimer17event_timer_checkEh>
 8001fb6:	2800      	cmp	r0, #0
 8001fb8:	d0f9      	beq.n	8001fae <_ZN5CDemo24basic_line_follower_taskEv+0x2a>
 8001fba:	2100      	movs	r1, #0
 8001fbc:	4831      	ldr	r0, [pc, #196]	; (8002084 <_ZN5CDemo24basic_line_follower_taskEv+0x100>)
 8001fbe:	f7ff fbeb 	bl	8001798 <_ZN4CRGB8rgb_readEh>
 8001fc2:	4830      	ldr	r0, [pc, #192]	; (8002084 <_ZN5CDemo24basic_line_follower_taskEv+0x100>)
 8001fc4:	f7ff fd84 	bl	8001ad0 <_ZN4CRGB14get_rgb_resultEv>
 8001fc8:	4601      	mov	r1, r0
 8001fca:	4668      	mov	r0, sp
 8001fcc:	f7fe fc2e 	bl	800082c <_ZN13CLinePosition7processEP10sRGBResult>
 8001fd0:	4668      	mov	r0, sp
 8001fd2:	f7fe fcc3 	bl	800095c <_ZN13CLinePosition7on_lineEv>
 8001fd6:	4604      	mov	r4, r0
 8001fd8:	4668      	mov	r0, sp
 8001fda:	f7fe fcc1 	bl	8000960 <_ZN13CLinePosition17get_line_positionEv>
 8001fde:	eddf 7a2a 	vldr	s15, [pc, #168]	; 8002088 <_ZN5CDemo24basic_line_follower_taskEv+0x104>
 8001fe2:	4828      	ldr	r0, [pc, #160]	; (8002084 <_ZN5CDemo24basic_line_follower_taskEv+0x100>)
 8001fe4:	4929      	ldr	r1, [pc, #164]	; (800208c <_ZN5CDemo24basic_line_follower_taskEv+0x108>)
 8001fe6:	ee20 0a27 	vmul.f32	s0, s0, s15
 8001fea:	4622      	mov	r2, r4
 8001fec:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 8001ff0:	ee17 3a90 	vmov	r3, s15
 8001ff4:	f7ff f8b6 	bl	8001164 <_ZN9CTerminal6printfEPKcz>
 8001ff8:	4668      	mov	r0, sp
 8001ffa:	f7fe fcaf 	bl	800095c <_ZN13CLinePosition7on_lineEv>
 8001ffe:	4604      	mov	r4, r0
 8002000:	b1d0      	cbz	r0, 8002038 <_ZN5CDemo24basic_line_follower_taskEv+0xb4>
 8002002:	4668      	mov	r0, sp
 8002004:	f7fe fcac 	bl	8000960 <_ZN13CLinePosition17get_line_positionEv>
 8002008:	eddf 7a1b 	vldr	s15, [pc, #108]	; 8002078 <_ZN5CDemo24basic_line_follower_taskEv+0xf4>
 800200c:	a806      	add	r0, sp, #24
 800200e:	ee37 0ac0 	vsub.f32	s0, s15, s0
 8002012:	f7fe fbcf 	bl	80007b4 <_ZN4CPID7processEf>
 8002016:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 800201a:	481d      	ldr	r0, [pc, #116]	; (8002090 <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 800201c:	ee17 4a90 	vmov	r4, s15
 8002020:	2100      	movs	r1, #0
 8002022:	f104 020b 	add.w	r2, r4, #11
 8002026:	f7fe fd83 	bl	8000b30 <_ZN6CMotor9set_motorEml>
 800202a:	4819      	ldr	r0, [pc, #100]	; (8002090 <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 800202c:	2101      	movs	r1, #1
 800202e:	f1c4 020b 	rsb	r2, r4, #11
 8002032:	f7fe fd7d 	bl	8000b30 <_ZN6CMotor9set_motorEml>
 8002036:	e7ba      	b.n	8001fae <_ZN5CDemo24basic_line_follower_taskEv+0x2a>
 8002038:	4621      	mov	r1, r4
 800203a:	4815      	ldr	r0, [pc, #84]	; (8002090 <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 800203c:	f06f 020a 	mvn.w	r2, #10
 8002040:	f7fe fd76 	bl	8000b30 <_ZN6CMotor9set_motorEml>
 8002044:	f06f 020a 	mvn.w	r2, #10
 8002048:	4811      	ldr	r0, [pc, #68]	; (8002090 <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 800204a:	2101      	movs	r1, #1
 800204c:	f7fe fd70 	bl	8000b30 <_ZN6CMotor9set_motorEml>
 8002050:	480b      	ldr	r0, [pc, #44]	; (8002080 <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 8002052:	f44f 7196 	mov.w	r1, #300	; 0x12c
 8002056:	f7ff fdcb 	bl	8001bf0 <_ZN6CTimer8delay_msEm>
 800205a:	4621      	mov	r1, r4
 800205c:	4622      	mov	r2, r4
 800205e:	480c      	ldr	r0, [pc, #48]	; (8002090 <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8002060:	f7fe fd66 	bl	8000b30 <_ZN6CMotor9set_motorEml>
 8002064:	480a      	ldr	r0, [pc, #40]	; (8002090 <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8002066:	2101      	movs	r1, #1
 8002068:	4622      	mov	r2, r4
 800206a:	f7fe fd61 	bl	8000b30 <_ZN6CMotor9set_motorEml>
 800206e:	4804      	ldr	r0, [pc, #16]	; (8002080 <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 8002070:	2164      	movs	r1, #100	; 0x64
 8002072:	f7ff fdbd 	bl	8001bf0 <_ZN6CTimer8delay_msEm>
 8002076:	e79a      	b.n	8001fae <_ZN5CDemo24basic_line_follower_taskEv+0x2a>
 8002078:	00000000 	.word	0x00000000
 800207c:	42300000 	.word	0x42300000
 8002080:	20000178 	.word	0x20000178
 8002084:	20000038 	.word	0x20000038
 8002088:	447a0000 	.word	0x447a0000
 800208c:	08003075 	.word	0x08003075
 8002090:	200000fc 	.word	0x200000fc

08002094 <_ZN5CDemo3runEj>:
 8002094:	3901      	subs	r1, #1
 8002096:	b508      	push	{r3, lr}
 8002098:	2903      	cmp	r1, #3
 800209a:	d812      	bhi.n	80020c2 <_ZN5CDemo3runEj+0x2e>
 800209c:	e8df f001 	tbb	[pc, r1]
 80020a0:	0c0a0602 	.word	0x0c0a0602
 80020a4:	f7ff ff30 	bl	8001f08 <_ZN5CDemo10moves_taskEv>
 80020a8:	f7ff fefe 	bl	8001ea8 <_ZN5CDemo10blink_taskEv>
 80020ac:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80020b0:	f7ff bf18 	b.w	8001ee4 <_ZN5CDemo16wifi_client_taskEv>
 80020b4:	f7ff ff66 	bl	8001f84 <_ZN5CDemo24basic_line_follower_taskEv>
 80020b8:	4802      	ldr	r0, [pc, #8]	; (80020c4 <_ZN5CDemo3runEj+0x30>)
 80020ba:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80020be:	f000 b851 	b.w	8002164 <_ZN21CLearningLineFollower3runEv>
 80020c2:	bd08      	pop	{r3, pc}
 80020c4:	20000260 	.word	0x20000260

080020c8 <_ZN10MathVectorILj4EE4initEv>:
 80020c8:	2300      	movs	r3, #0
 80020ca:	6003      	str	r3, [r0, #0]
 80020cc:	6043      	str	r3, [r0, #4]
 80020ce:	6083      	str	r3, [r0, #8]
 80020d0:	60c3      	str	r3, [r0, #12]
 80020d2:	4770      	bx	lr

080020d4 <_ZN10MathVectorILj3EE3mixERS0_f>:
 80020d4:	f100 030c 	add.w	r3, r0, #12
 80020d8:	ecf1 7a01 	vldmia	r1!, {s15}
 80020dc:	edd0 6a00 	vldr	s13, [r0]
 80020e0:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
 80020e4:	ee37 7a40 	vsub.f32	s14, s14, s0
 80020e8:	ee60 7a27 	vmul.f32	s15, s0, s15
 80020ec:	eee7 7a26 	vfma.f32	s15, s14, s13
 80020f0:	ece0 7a01 	vstmia	r0!, {s15}
 80020f4:	4298      	cmp	r0, r3
 80020f6:	d1ef      	bne.n	80020d8 <_ZN10MathVectorILj3EE3mixERS0_f+0x4>
 80020f8:	4770      	bx	lr
	...

080020fc <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE>:
 80020fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80020fe:	eddf 6a17 	vldr	s13, [pc, #92]	; 800215c <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE+0x60>
 8002102:	4603      	mov	r3, r0
 8002104:	2600      	movs	r6, #0
 8002106:	f8d0 01c0 	ldr.w	r0, [r0, #448]	; 0x1c0
 800210a:	461c      	mov	r4, r3
 800210c:	4635      	mov	r5, r6
 800210e:	4285      	cmp	r5, r0
 8002110:	d019      	beq.n	8002146 <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE+0x4a>
 8002112:	eddf 7a13 	vldr	s15, [pc, #76]	; 8002160 <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE+0x64>
 8002116:	468e      	mov	lr, r1
 8002118:	f104 0710 	add.w	r7, r4, #16
 800211c:	ecb4 6a01 	vldmia	r4!, {s12}
 8002120:	ecbe 7a01 	vldmia	lr!, {s14}
 8002124:	ee37 7a46 	vsub.f32	s14, s14, s12
 8002128:	42bc      	cmp	r4, r7
 800212a:	eee7 7a07 	vfma.f32	s15, s14, s14
 800212e:	d1f5      	bne.n	800211c <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE+0x20>
 8002130:	eef4 7ae6 	vcmpe.f32	s15, s13
 8002134:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8002138:	bf44      	itt	mi
 800213a:	462e      	movmi	r6, r5
 800213c:	eef0 6a67 	vmovmi.f32	s13, s15
 8002140:	3501      	adds	r5, #1
 8002142:	463c      	mov	r4, r7
 8002144:	e7e3      	b.n	800210e <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE+0x12>
 8002146:	f503 7380 	add.w	r3, r3, #256	; 0x100
 800214a:	210c      	movs	r1, #12
 800214c:	4610      	mov	r0, r2
 800214e:	fb01 3106 	mla	r1, r1, r6, r3
 8002152:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
 8002156:	f7ff ffbd 	bl	80020d4 <_ZN10MathVectorILj3EE3mixERS0_f>
 800215a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800215c:	4cbebc20 	.word	0x4cbebc20
 8002160:	00000000 	.word	0x00000000

08002164 <_ZN21CLearningLineFollower3runEv>:
 8002164:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002168:	2308      	movs	r3, #8
 800216a:	ed2d 8b06 	vpush	{d8-d10}
 800216e:	f100 0650 	add.w	r6, r0, #80	; 0x50
 8002172:	f8c0 3210 	str.w	r3, [r0, #528]	; 0x210
 8002176:	4bcb      	ldr	r3, [pc, #812]	; (80024a4 <_ZN21CLearningLineFollower3runEv+0x340>)
 8002178:	f8c0 3214 	str.w	r3, [r0, #532]	; 0x214
 800217c:	4604      	mov	r4, r0
 800217e:	f500 78a8 	add.w	r8, r0, #336	; 0x150
 8002182:	4635      	mov	r5, r6
 8002184:	f105 0710 	add.w	r7, r5, #16
 8002188:	48c7      	ldr	r0, [pc, #796]	; (80024a8 <_ZN21CLearningLineFollower3runEv+0x344>)
 800218a:	f7fe fc0f 	bl	80009ac <_ZN5CMath3rndEv>
 800218e:	eca5 0a01 	vstmia	r5!, {s0}
 8002192:	42bd      	cmp	r5, r7
 8002194:	d1f8      	bne.n	8002188 <_ZN21CLearningLineFollower3runEv+0x24>
 8002196:	4545      	cmp	r5, r8
 8002198:	d1f4      	bne.n	8002184 <_ZN21CLearningLineFollower3runEv+0x20>
 800219a:	4623      	mov	r3, r4
 800219c:	f104 02c0 	add.w	r2, r4, #192	; 0xc0
 80021a0:	eddf 8ac2 	vldr	s17, [pc, #776]	; 80024ac <_ZN21CLearningLineFollower3runEv+0x348>
 80021a4:	330c      	adds	r3, #12
 80021a6:	edc3 8a51 	vstr	s17, [r3, #324]	; 0x144
 80021aa:	edc3 8a52 	vstr	s17, [r3, #328]	; 0x148
 80021ae:	edc3 8a53 	vstr	s17, [r3, #332]	; 0x14c
 80021b2:	4293      	cmp	r3, r2
 80021b4:	d1f4      	bne.n	80021a0 <_ZN21CLearningLineFollower3runEv+0x3c>
 80021b6:	2300      	movs	r3, #0
 80021b8:	f104 0530 	add.w	r5, r4, #48	; 0x30
 80021bc:	62a3      	str	r3, [r4, #40]	; 0x28
 80021be:	62e3      	str	r3, [r4, #44]	; 0x2c
 80021c0:	4628      	mov	r0, r5
 80021c2:	f104 0940 	add.w	r9, r4, #64	; 0x40
 80021c6:	f7ff ff7f 	bl	80020c8 <_ZN10MathVectorILj4EE4initEv>
 80021ca:	4648      	mov	r0, r9
 80021cc:	f7ff ff7c 	bl	80020c8 <_ZN10MathVectorILj4EE4initEv>
 80021d0:	eebf aa00 	vmov.f32	s20, #240	; 0xbf800000 -1.0
 80021d4:	edc4 8a86 	vstr	s17, [r4, #536]	; 0x218
 80021d8:	edc4 8a87 	vstr	s17, [r4, #540]	; 0x21c
 80021dc:	edc4 8a88 	vstr	s17, [r4, #544]	; 0x220
 80021e0:	2100      	movs	r1, #0
 80021e2:	48b3      	ldr	r0, [pc, #716]	; (80024b0 <_ZN21CLearningLineFollower3runEv+0x34c>)
 80021e4:	f7ff fad8 	bl	8001798 <_ZN4CRGB8rgb_readEh>
 80021e8:	48b1      	ldr	r0, [pc, #708]	; (80024b0 <_ZN21CLearningLineFollower3runEv+0x34c>)
 80021ea:	f7ff fc71 	bl	8001ad0 <_ZN4CRGB14get_rgb_resultEv>
 80021ee:	4601      	mov	r1, r0
 80021f0:	4620      	mov	r0, r4
 80021f2:	f7fe fb1b 	bl	800082c <_ZN13CLinePosition7processEP10sRGBResult>
 80021f6:	4620      	mov	r0, r4
 80021f8:	f7fe fbb2 	bl	8000960 <_ZN13CLinePosition17get_line_positionEv>
 80021fc:	6a23      	ldr	r3, [r4, #32]
 80021fe:	6263      	str	r3, [r4, #36]	; 0x24
 8002200:	69e3      	ldr	r3, [r4, #28]
 8002202:	6223      	str	r3, [r4, #32]
 8002204:	69a3      	ldr	r3, [r4, #24]
 8002206:	61e3      	str	r3, [r4, #28]
 8002208:	ed84 0a06 	vstr	s0, [r4, #24]
 800220c:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
 8002210:	f104 0740 	add.w	r7, r4, #64	; 0x40
 8002214:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
 8002218:	f104 0318 	add.w	r3, r4, #24
 800221c:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
 800221e:	f504 7706 	add.w	r7, r4, #536	; 0x218
 8002222:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
 8002226:	463a      	mov	r2, r7
 8002228:	4630      	mov	r0, r6
 800222a:	4629      	mov	r1, r5
 800222c:	f7ff ff66 	bl	80020fc <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE>
 8002230:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8002232:	62a3      	str	r3, [r4, #40]	; 0x28
 8002234:	489c      	ldr	r0, [pc, #624]	; (80024a8 <_ZN21CLearningLineFollower3runEv+0x344>)
 8002236:	f7fe fb9f 	bl	8000978 <_ZN5CMath4randEv>
 800223a:	2364      	movs	r3, #100	; 0x64
 800223c:	fbb0 f2f3 	udiv	r2, r0, r3
 8002240:	fb02 0013 	mls	r0, r2, r3, r0
 8002244:	2813      	cmp	r0, #19
 8002246:	d80b      	bhi.n	8002260 <_ZN21CLearningLineFollower3runEv+0xfc>
 8002248:	4897      	ldr	r0, [pc, #604]	; (80024a8 <_ZN21CLearningLineFollower3runEv+0x344>)
 800224a:	f7fe fb95 	bl	8000978 <_ZN5CMath4randEv>
 800224e:	f04f 0a03 	mov.w	sl, #3
 8002252:	fbb0 fafa 	udiv	sl, r0, sl
 8002256:	eb0a 0a4a 	add.w	sl, sl, sl, lsl #1
 800225a:	ebca 0a00 	rsb	sl, sl, r0
 800225e:	e012      	b.n	8002286 <_ZN21CLearningLineFollower3runEv+0x122>
 8002260:	f04f 0a00 	mov.w	sl, #0
 8002264:	463a      	mov	r2, r7
 8002266:	4653      	mov	r3, sl
 8002268:	eb04 018a 	add.w	r1, r4, sl, lsl #2
 800226c:	ecb2 7a01 	vldmia	r2!, {s14}
 8002270:	edd1 7a86 	vldr	s15, [r1, #536]	; 0x218
 8002274:	eeb4 7a67 	vcmp.f32	s14, s15
 8002278:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800227c:	bfc8      	it	gt
 800227e:	469a      	movgt	sl, r3
 8002280:	3301      	adds	r3, #1
 8002282:	2b03      	cmp	r3, #3
 8002284:	d1f0      	bne.n	8002268 <_ZN21CLearningLineFollower3runEv+0x104>
 8002286:	f1ba 0f01 	cmp.w	sl, #1
 800228a:	f8c4 a02c 	str.w	sl, [r4, #44]	; 0x2c
 800228e:	d014      	beq.n	80022ba <_ZN21CLearningLineFollower3runEv+0x156>
 8002290:	d30b      	bcc.n	80022aa <_ZN21CLearningLineFollower3runEv+0x146>
 8002292:	f1ba 0f02 	cmp.w	sl, #2
 8002296:	d11a      	bne.n	80022ce <_ZN21CLearningLineFollower3runEv+0x16a>
 8002298:	4886      	ldr	r0, [pc, #536]	; (80024b4 <_ZN21CLearningLineFollower3runEv+0x350>)
 800229a:	2100      	movs	r1, #0
 800229c:	220e      	movs	r2, #14
 800229e:	f7fe fc47 	bl	8000b30 <_ZN6CMotor9set_motorEml>
 80022a2:	4884      	ldr	r0, [pc, #528]	; (80024b4 <_ZN21CLearningLineFollower3runEv+0x350>)
 80022a4:	2101      	movs	r1, #1
 80022a6:	2200      	movs	r2, #0
 80022a8:	e00f      	b.n	80022ca <_ZN21CLearningLineFollower3runEv+0x166>
 80022aa:	4882      	ldr	r0, [pc, #520]	; (80024b4 <_ZN21CLearningLineFollower3runEv+0x350>)
 80022ac:	2100      	movs	r1, #0
 80022ae:	220e      	movs	r2, #14
 80022b0:	f7fe fc3e 	bl	8000b30 <_ZN6CMotor9set_motorEml>
 80022b4:	487f      	ldr	r0, [pc, #508]	; (80024b4 <_ZN21CLearningLineFollower3runEv+0x350>)
 80022b6:	2101      	movs	r1, #1
 80022b8:	e006      	b.n	80022c8 <_ZN21CLearningLineFollower3runEv+0x164>
 80022ba:	2100      	movs	r1, #0
 80022bc:	487d      	ldr	r0, [pc, #500]	; (80024b4 <_ZN21CLearningLineFollower3runEv+0x350>)
 80022be:	460a      	mov	r2, r1
 80022c0:	f7fe fc36 	bl	8000b30 <_ZN6CMotor9set_motorEml>
 80022c4:	487b      	ldr	r0, [pc, #492]	; (80024b4 <_ZN21CLearningLineFollower3runEv+0x350>)
 80022c6:	4651      	mov	r1, sl
 80022c8:	220e      	movs	r2, #14
 80022ca:	f7fe fc31 	bl	8000b30 <_ZN6CMotor9set_motorEml>
 80022ce:	487a      	ldr	r0, [pc, #488]	; (80024b8 <_ZN21CLearningLineFollower3runEv+0x354>)
 80022d0:	2132      	movs	r1, #50	; 0x32
 80022d2:	f7ff fc8d 	bl	8001bf0 <_ZN6CTimer8delay_msEm>
 80022d6:	2100      	movs	r1, #0
 80022d8:	4875      	ldr	r0, [pc, #468]	; (80024b0 <_ZN21CLearningLineFollower3runEv+0x34c>)
 80022da:	f7ff fa5d 	bl	8001798 <_ZN4CRGB8rgb_readEh>
 80022de:	4874      	ldr	r0, [pc, #464]	; (80024b0 <_ZN21CLearningLineFollower3runEv+0x34c>)
 80022e0:	f7ff fbf6 	bl	8001ad0 <_ZN4CRGB14get_rgb_resultEv>
 80022e4:	4601      	mov	r1, r0
 80022e6:	4620      	mov	r0, r4
 80022e8:	f7fe faa0 	bl	800082c <_ZN13CLinePosition7processEP10sRGBResult>
 80022ec:	4620      	mov	r0, r4
 80022ee:	f7fe fb37 	bl	8000960 <_ZN13CLinePosition17get_line_positionEv>
 80022f2:	486d      	ldr	r0, [pc, #436]	; (80024a8 <_ZN21CLearningLineFollower3runEv+0x344>)
 80022f4:	f7fe fb37 	bl	8000966 <_ZN5CMath3absEf>
 80022f8:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
 80022fc:	f8d4 b02c 	ldr.w	fp, [r4, #44]	; 0x2c
 8002300:	f8d4 a028 	ldr.w	sl, [r4, #40]	; 0x28
 8002304:	ee39 0ac0 	vsub.f32	s0, s19, s0
 8002308:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
 800230c:	4630      	mov	r0, r6
 800230e:	4629      	mov	r1, r5
 8002310:	463a      	mov	r2, r7
 8002312:	eb04 0b8b 	add.w	fp, r4, fp, lsl #2
 8002316:	ee30 9a67 	vsub.f32	s18, s0, s15
 800231a:	f7ff feef 	bl	80020fc <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE>
 800231e:	edd4 7a86 	vldr	s15, [r4, #536]	; 0x218
 8002322:	ed9b 8a86 	vldr	s16, [fp, #536]	; 0x218
 8002326:	eeb4 8a67 	vcmp.f32	s16, s15
 800232a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800232e:	bf48      	it	mi
 8002330:	eeb0 8a67 	vmovmi.f32	s16, s15
 8002334:	edd4 7a87 	vldr	s15, [r4, #540]	; 0x21c
 8002338:	eeb4 8a67 	vcmp.f32	s16, s15
 800233c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8002340:	bf48      	it	mi
 8002342:	eeb0 8a67 	vmovmi.f32	s16, s15
 8002346:	edd4 7a88 	vldr	s15, [r4, #544]	; 0x220
 800234a:	eeb4 8a67 	vcmp.f32	s16, s15
 800234e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8002352:	4630      	mov	r0, r6
 8002354:	4649      	mov	r1, r9
 8002356:	463a      	mov	r2, r7
 8002358:	bf48      	it	mi
 800235a:	eeb0 8a67 	vmovmi.f32	s16, s15
 800235e:	f7ff fecd 	bl	80020fc <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE>
 8002362:	eddf 7a56 	vldr	s15, [pc, #344]	; 80024bc <_ZN21CLearningLineFollower3runEv+0x358>
 8002366:	f8d4 0210 	ldr.w	r0, [r4, #528]	; 0x210
 800236a:	eddf 6a55 	vldr	s13, [pc, #340]	; 80024c0 <_ZN21CLearningLineFollower3runEv+0x35c>
 800236e:	eeb0 7a49 	vmov.f32	s14, s18
 8002372:	eea8 7a27 	vfma.f32	s14, s16, s15
 8002376:	eb04 0a8a 	add.w	sl, r4, sl, lsl #2
 800237a:	2100      	movs	r1, #0
 800237c:	46b6      	mov	lr, r6
 800237e:	ed8a 7a86 	vstr	s14, [sl, #536]	; 0x218
 8002382:	460a      	mov	r2, r1
 8002384:	4282      	cmp	r2, r0
 8002386:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800238a:	d018      	beq.n	80023be <_ZN21CLearningLineFollower3runEv+0x25a>
 800238c:	eddf 7a47 	vldr	s15, [pc, #284]	; 80024ac <_ZN21CLearningLineFollower3runEv+0x348>
 8002390:	46f4      	mov	ip, lr
 8002392:	ecb3 7a01 	vldmia	r3!, {s14}
 8002396:	ecbc 6a01 	vldmia	ip!, {s12}
 800239a:	ee37 7a46 	vsub.f32	s14, s14, s12
 800239e:	42b3      	cmp	r3, r6
 80023a0:	eee7 7a07 	vfma.f32	s15, s14, s14
 80023a4:	d1f5      	bne.n	8002392 <_ZN21CLearningLineFollower3runEv+0x22e>
 80023a6:	eef4 7ae6 	vcmpe.f32	s15, s13
 80023aa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80023ae:	bf44      	itt	mi
 80023b0:	4611      	movmi	r1, r2
 80023b2:	eef0 6a67 	vmovmi.f32	s13, s15
 80023b6:	3201      	adds	r2, #1
 80023b8:	f10e 0e10 	add.w	lr, lr, #16
 80023bc:	e7e2      	b.n	8002384 <_ZN21CLearningLineFollower3runEv+0x220>
 80023be:	280f      	cmp	r0, #15
 80023c0:	d81a      	bhi.n	80023f8 <_ZN21CLearningLineFollower3runEv+0x294>
 80023c2:	1d42      	adds	r2, r0, #5
 80023c4:	eb04 1202 	add.w	r2, r4, r2, lsl #4
 80023c8:	ecf3 7a01 	vldmia	r3!, {s15}
 80023cc:	ed92 7a00 	vldr	s14, [r2]
 80023d0:	eee7 7a28 	vfma.f32	s15, s14, s17
 80023d4:	42b3      	cmp	r3, r6
 80023d6:	ece2 7a01 	vstmia	r2!, {s15}
 80023da:	d1f5      	bne.n	80023c8 <_ZN21CLearningLineFollower3runEv+0x264>
 80023dc:	230c      	movs	r3, #12
 80023de:	fb03 8000 	mla	r0, r3, r0, r8
 80023e2:	4639      	mov	r1, r7
 80023e4:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
 80023e8:	f7ff fe74 	bl	80020d4 <_ZN10MathVectorILj3EE3mixERS0_f>
 80023ec:	f8d4 3210 	ldr.w	r3, [r4, #528]	; 0x210
 80023f0:	3301      	adds	r3, #1
 80023f2:	f8c4 3210 	str.w	r3, [r4, #528]	; 0x210
 80023f6:	e01a      	b.n	800242e <_ZN21CLearningLineFollower3runEv+0x2ca>
 80023f8:	1d4a      	adds	r2, r1, #5
 80023fa:	edd4 6a85 	vldr	s13, [r4, #532]	; 0x214
 80023fe:	eb04 1202 	add.w	r2, r4, r2, lsl #4
 8002402:	ecf3 7a01 	vldmia	r3!, {s15}
 8002406:	ed92 6a00 	vldr	s12, [r2]
 800240a:	ee39 7ae6 	vsub.f32	s14, s19, s13
 800240e:	ee66 7aa7 	vmul.f32	s15, s13, s15
 8002412:	42b3      	cmp	r3, r6
 8002414:	eee7 7a06 	vfma.f32	s15, s14, s12
 8002418:	ece2 7a01 	vstmia	r2!, {s15}
 800241c:	d1f1      	bne.n	8002402 <_ZN21CLearningLineFollower3runEv+0x29e>
 800241e:	200c      	movs	r0, #12
 8002420:	fb00 8001 	mla	r0, r0, r1, r8
 8002424:	ed94 0a85 	vldr	s0, [r4, #532]	; 0x214
 8002428:	4639      	mov	r1, r7
 800242a:	f7ff fe53 	bl	80020d4 <_ZN10MathVectorILj3EE3mixERS0_f>
 800242e:	4620      	mov	r0, r4
 8002430:	f7fe fa94 	bl	800095c <_ZN13CLinePosition7on_lineEv>
 8002434:	4607      	mov	r7, r0
 8002436:	b9f0      	cbnz	r0, 8002476 <_ZN21CLearningLineFollower3runEv+0x312>
 8002438:	481e      	ldr	r0, [pc, #120]	; (80024b4 <_ZN21CLearningLineFollower3runEv+0x350>)
 800243a:	4639      	mov	r1, r7
 800243c:	f06f 020d 	mvn.w	r2, #13
 8002440:	f7fe fb76 	bl	8000b30 <_ZN6CMotor9set_motorEml>
 8002444:	f06f 020d 	mvn.w	r2, #13
 8002448:	481a      	ldr	r0, [pc, #104]	; (80024b4 <_ZN21CLearningLineFollower3runEv+0x350>)
 800244a:	2101      	movs	r1, #1
 800244c:	f7fe fb70 	bl	8000b30 <_ZN6CMotor9set_motorEml>
 8002450:	4819      	ldr	r0, [pc, #100]	; (80024b8 <_ZN21CLearningLineFollower3runEv+0x354>)
 8002452:	f44f 7196 	mov.w	r1, #300	; 0x12c
 8002456:	f7ff fbcb 	bl	8001bf0 <_ZN6CTimer8delay_msEm>
 800245a:	4816      	ldr	r0, [pc, #88]	; (80024b4 <_ZN21CLearningLineFollower3runEv+0x350>)
 800245c:	4639      	mov	r1, r7
 800245e:	463a      	mov	r2, r7
 8002460:	f7fe fb66 	bl	8000b30 <_ZN6CMotor9set_motorEml>
 8002464:	4813      	ldr	r0, [pc, #76]	; (80024b4 <_ZN21CLearningLineFollower3runEv+0x350>)
 8002466:	2101      	movs	r1, #1
 8002468:	463a      	mov	r2, r7
 800246a:	f7fe fb61 	bl	8000b30 <_ZN6CMotor9set_motorEml>
 800246e:	4812      	ldr	r0, [pc, #72]	; (80024b8 <_ZN21CLearningLineFollower3runEv+0x354>)
 8002470:	2164      	movs	r1, #100	; 0x64
 8002472:	f7ff fbbd 	bl	8001bf0 <_ZN6CTimer8delay_msEm>
 8002476:	ed9f 0a13 	vldr	s0, [pc, #76]	; 80024c4 <_ZN21CLearningLineFollower3runEv+0x360>
 800247a:	eddf 7a13 	vldr	s15, [pc, #76]	; 80024c8 <_ZN21CLearningLineFollower3runEv+0x364>
 800247e:	480c      	ldr	r0, [pc, #48]	; (80024b0 <_ZN21CLearningLineFollower3runEv+0x34c>)
 8002480:	4912      	ldr	r1, [pc, #72]	; (80024cc <_ZN21CLearningLineFollower3runEv+0x368>)
 8002482:	ee29 9a00 	vmul.f32	s18, s18, s0
 8002486:	eeaa 9a27 	vfma.f32	s18, s20, s15
 800248a:	eddf 7a11 	vldr	s15, [pc, #68]	; 80024d0 <_ZN21CLearningLineFollower3runEv+0x36c>
 800248e:	ee69 7a27 	vmul.f32	s15, s18, s15
 8002492:	eeb0 aa49 	vmov.f32	s20, s18
 8002496:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 800249a:	ee17 2a90 	vmov	r2, s15
 800249e:	f7fe fe61 	bl	8001164 <_ZN9CTerminal6printfEPKcz>
 80024a2:	e69d      	b.n	80021e0 <_ZN21CLearningLineFollower3runEv+0x7c>
 80024a4:	3dcccccd 	.word	0x3dcccccd
 80024a8:	20000110 	.word	0x20000110
 80024ac:	00000000 	.word	0x00000000
 80024b0:	20000038 	.word	0x20000038
 80024b4:	200000fc 	.word	0x200000fc
 80024b8:	20000178 	.word	0x20000178
 80024bc:	3f666666 	.word	0x3f666666
 80024c0:	4cbebc20 	.word	0x4cbebc20
 80024c4:	3c23d70a 	.word	0x3c23d70a
 80024c8:	3f7d70a4 	.word	0x3f7d70a4
 80024cc:	08003078 	.word	0x08003078
 80024d0:	447a0000 	.word	0x447a0000

080024d4 <main>:
 80024d4:	b508      	push	{r3, lr}
 80024d6:	f000 fbb9 	bl	8002c4c <sytem_clock_init>
 80024da:	481f      	ldr	r0, [pc, #124]	; (8002558 <main+0x84>)
 80024dc:	f7fd fe86 	bl	80001ec <_ZN7CKodama4initEv>
 80024e0:	210a      	movs	r1, #10
 80024e2:	481d      	ldr	r0, [pc, #116]	; (8002558 <main+0x84>)
 80024e4:	f7fd fec1 	bl	800026a <_ZN7CKodama6set_dtEl>
 80024e8:	481b      	ldr	r0, [pc, #108]	; (8002558 <main+0x84>)
 80024ea:	f7fd fea1 	bl	8000230 <_ZN7CKodama5sleepEv>
 80024ee:	481b      	ldr	r0, [pc, #108]	; (800255c <main+0x88>)
 80024f0:	f7ff f83c 	bl	800156c <_ZN5CILED10i_led_initEv>
 80024f4:	4819      	ldr	r0, [pc, #100]	; (800255c <main+0x88>)
 80024f6:	2102      	movs	r1, #2
 80024f8:	f44f 7216 	mov.w	r2, #600	; 0x258
 80024fc:	f7ff f8bc 	bl	8001678 <_ZN5CILED9i_led_setEjj>
 8002500:	4815      	ldr	r0, [pc, #84]	; (8002558 <main+0x84>)
 8002502:	f44f 7100 	mov.w	r1, #512	; 0x200
 8002506:	f7fe fcbf 	bl	8000e88 <_ZN5CGPIO7gpio_inEm>
 800250a:	b148      	cbz	r0, 8002520 <main+0x4c>
 800250c:	4812      	ldr	r0, [pc, #72]	; (8002558 <main+0x84>)
 800250e:	f7fd fe9a 	bl	8000246 <_ZN7CKodama6wakeupEv>
 8002512:	4813      	ldr	r0, [pc, #76]	; (8002560 <main+0x8c>)
 8002514:	f7ff fcc6 	bl	8001ea4 <_ZN5CDemo4initEv>
 8002518:	4811      	ldr	r0, [pc, #68]	; (8002560 <main+0x8c>)
 800251a:	2102      	movs	r1, #2
 800251c:	f7ff fdba 	bl	8002094 <_ZN5CDemo3runEj>
 8002520:	480d      	ldr	r0, [pc, #52]	; (8002558 <main+0x84>)
 8002522:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8002526:	f7fe fc93 	bl	8000e50 <_ZN5CGPIO7gpio_onEm>
 800252a:	480e      	ldr	r0, [pc, #56]	; (8002564 <main+0x90>)
 800252c:	210a      	movs	r1, #10
 800252e:	f7ff fb5f 	bl	8001bf0 <_ZN6CTimer8delay_msEm>
 8002532:	4809      	ldr	r0, [pc, #36]	; (8002558 <main+0x84>)
 8002534:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8002538:	f7fe fc98 	bl	8000e6c <_ZN5CGPIO8gpio_offEm>
 800253c:	f44f 7196 	mov.w	r1, #300	; 0x12c
 8002540:	4808      	ldr	r0, [pc, #32]	; (8002564 <main+0x90>)
 8002542:	f7ff fb55 	bl	8001bf0 <_ZN6CTimer8delay_msEm>
 8002546:	4807      	ldr	r0, [pc, #28]	; (8002564 <main+0x90>)
 8002548:	f7ff fb44 	bl	8001bd4 <_ZN6CTimer8get_timeEv>
 800254c:	4906      	ldr	r1, [pc, #24]	; (8002568 <main+0x94>)
 800254e:	4602      	mov	r2, r0
 8002550:	4801      	ldr	r0, [pc, #4]	; (8002558 <main+0x84>)
 8002552:	f7fe fe07 	bl	8001164 <_ZN9CTerminal6printfEPKcz>
 8002556:	e7d3      	b.n	8002500 <main+0x2c>
 8002558:	20000038 	.word	0x20000038
 800255c:	20000148 	.word	0x20000148
 8002560:	200001a0 	.word	0x200001a0
 8002564:	20000178 	.word	0x20000178
 8002568:	0800307d 	.word	0x0800307d

0800256c <NVIC_Init>:
 800256c:	b510      	push	{r4, lr}
 800256e:	bf00      	nop
 8002570:	bf00      	nop
 8002572:	bf00      	nop
 8002574:	78c2      	ldrb	r2, [r0, #3]
 8002576:	7803      	ldrb	r3, [r0, #0]
 8002578:	b312      	cbz	r2, 80025c0 <NVIC_Init+0x54>
 800257a:	4a17      	ldr	r2, [pc, #92]	; (80025d8 <NVIC_Init+0x6c>)
 800257c:	68d1      	ldr	r1, [r2, #12]
 800257e:	7842      	ldrb	r2, [r0, #1]
 8002580:	43c9      	mvns	r1, r1
 8002582:	f3c1 2102 	ubfx	r1, r1, #8, #3
 8002586:	f1c1 0404 	rsb	r4, r1, #4
 800258a:	b2e4      	uxtb	r4, r4
 800258c:	40a2      	lsls	r2, r4
 800258e:	b2d4      	uxtb	r4, r2
 8002590:	220f      	movs	r2, #15
 8002592:	410a      	asrs	r2, r1
 8002594:	7881      	ldrb	r1, [r0, #2]
 8002596:	400a      	ands	r2, r1
 8002598:	4322      	orrs	r2, r4
 800259a:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 800259e:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 80025a2:	0112      	lsls	r2, r2, #4
 80025a4:	b2d2      	uxtb	r2, r2
 80025a6:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 80025aa:	7803      	ldrb	r3, [r0, #0]
 80025ac:	2201      	movs	r2, #1
 80025ae:	0959      	lsrs	r1, r3, #5
 80025b0:	f003 031f 	and.w	r3, r3, #31
 80025b4:	fa02 f303 	lsl.w	r3, r2, r3
 80025b8:	4a08      	ldr	r2, [pc, #32]	; (80025dc <NVIC_Init+0x70>)
 80025ba:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 80025be:	bd10      	pop	{r4, pc}
 80025c0:	095a      	lsrs	r2, r3, #5
 80025c2:	2101      	movs	r1, #1
 80025c4:	f003 031f 	and.w	r3, r3, #31
 80025c8:	4099      	lsls	r1, r3
 80025ca:	f102 0320 	add.w	r3, r2, #32
 80025ce:	4a03      	ldr	r2, [pc, #12]	; (80025dc <NVIC_Init+0x70>)
 80025d0:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 80025d4:	bd10      	pop	{r4, pc}
 80025d6:	bf00      	nop
 80025d8:	e000ed00 	.word	0xe000ed00
 80025dc:	e000e100 	.word	0xe000e100

080025e0 <TIM_TimeBaseInit>:
 80025e0:	bf00      	nop
 80025e2:	bf00      	nop
 80025e4:	bf00      	nop
 80025e6:	4a24      	ldr	r2, [pc, #144]	; (8002678 <TIM_TimeBaseInit+0x98>)
 80025e8:	8803      	ldrh	r3, [r0, #0]
 80025ea:	4290      	cmp	r0, r2
 80025ec:	b29b      	uxth	r3, r3
 80025ee:	d012      	beq.n	8002616 <TIM_TimeBaseInit+0x36>
 80025f0:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 80025f4:	4290      	cmp	r0, r2
 80025f6:	d00e      	beq.n	8002616 <TIM_TimeBaseInit+0x36>
 80025f8:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80025fc:	d00b      	beq.n	8002616 <TIM_TimeBaseInit+0x36>
 80025fe:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8002602:	4290      	cmp	r0, r2
 8002604:	d007      	beq.n	8002616 <TIM_TimeBaseInit+0x36>
 8002606:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 800260a:	4290      	cmp	r0, r2
 800260c:	d003      	beq.n	8002616 <TIM_TimeBaseInit+0x36>
 800260e:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8002612:	4290      	cmp	r0, r2
 8002614:	d103      	bne.n	800261e <TIM_TimeBaseInit+0x3e>
 8002616:	884a      	ldrh	r2, [r1, #2]
 8002618:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 800261c:	4313      	orrs	r3, r2
 800261e:	4a17      	ldr	r2, [pc, #92]	; (800267c <TIM_TimeBaseInit+0x9c>)
 8002620:	4290      	cmp	r0, r2
 8002622:	d008      	beq.n	8002636 <TIM_TimeBaseInit+0x56>
 8002624:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002628:	4290      	cmp	r0, r2
 800262a:	bf1f      	itttt	ne
 800262c:	f423 7340 	bicne.w	r3, r3, #768	; 0x300
 8002630:	890a      	ldrhne	r2, [r1, #8]
 8002632:	b29b      	uxthne	r3, r3
 8002634:	4313      	orrne	r3, r2
 8002636:	8003      	strh	r3, [r0, #0]
 8002638:	684b      	ldr	r3, [r1, #4]
 800263a:	62c3      	str	r3, [r0, #44]	; 0x2c
 800263c:	880b      	ldrh	r3, [r1, #0]
 800263e:	8503      	strh	r3, [r0, #40]	; 0x28
 8002640:	4b0d      	ldr	r3, [pc, #52]	; (8002678 <TIM_TimeBaseInit+0x98>)
 8002642:	4298      	cmp	r0, r3
 8002644:	d013      	beq.n	800266e <TIM_TimeBaseInit+0x8e>
 8002646:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 800264a:	4298      	cmp	r0, r3
 800264c:	d00f      	beq.n	800266e <TIM_TimeBaseInit+0x8e>
 800264e:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8002652:	4298      	cmp	r0, r3
 8002654:	d00b      	beq.n	800266e <TIM_TimeBaseInit+0x8e>
 8002656:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 800265a:	4298      	cmp	r0, r3
 800265c:	d007      	beq.n	800266e <TIM_TimeBaseInit+0x8e>
 800265e:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8002662:	4298      	cmp	r0, r3
 8002664:	d003      	beq.n	800266e <TIM_TimeBaseInit+0x8e>
 8002666:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 800266a:	4298      	cmp	r0, r3
 800266c:	d101      	bne.n	8002672 <TIM_TimeBaseInit+0x92>
 800266e:	894b      	ldrh	r3, [r1, #10]
 8002670:	8603      	strh	r3, [r0, #48]	; 0x30
 8002672:	2301      	movs	r3, #1
 8002674:	6143      	str	r3, [r0, #20]
 8002676:	4770      	bx	lr
 8002678:	40012c00 	.word	0x40012c00
 800267c:	40001000 	.word	0x40001000

08002680 <TIM_Cmd>:
 8002680:	bf00      	nop
 8002682:	bf00      	nop
 8002684:	8803      	ldrh	r3, [r0, #0]
 8002686:	b119      	cbz	r1, 8002690 <TIM_Cmd+0x10>
 8002688:	b29b      	uxth	r3, r3
 800268a:	f043 0301 	orr.w	r3, r3, #1
 800268e:	e003      	b.n	8002698 <TIM_Cmd+0x18>
 8002690:	f023 0301 	bic.w	r3, r3, #1
 8002694:	041b      	lsls	r3, r3, #16
 8002696:	0c1b      	lsrs	r3, r3, #16
 8002698:	8003      	strh	r3, [r0, #0]
 800269a:	4770      	bx	lr

0800269c <TIM_OC2Init>:
 800269c:	b570      	push	{r4, r5, r6, lr}
 800269e:	bf00      	nop
 80026a0:	bf00      	nop
 80026a2:	bf00      	nop
 80026a4:	bf00      	nop
 80026a6:	6a03      	ldr	r3, [r0, #32]
 80026a8:	680d      	ldr	r5, [r1, #0]
 80026aa:	898e      	ldrh	r6, [r1, #12]
 80026ac:	f023 0310 	bic.w	r3, r3, #16
 80026b0:	6203      	str	r3, [r0, #32]
 80026b2:	6a03      	ldr	r3, [r0, #32]
 80026b4:	6844      	ldr	r4, [r0, #4]
 80026b6:	6982      	ldr	r2, [r0, #24]
 80026b8:	f022 7280 	bic.w	r2, r2, #16777216	; 0x1000000
 80026bc:	f422 42e6 	bic.w	r2, r2, #29440	; 0x7300
 80026c0:	ea42 2505 	orr.w	r5, r2, r5, lsl #8
 80026c4:	f023 0220 	bic.w	r2, r3, #32
 80026c8:	888b      	ldrh	r3, [r1, #4]
 80026ca:	4333      	orrs	r3, r6
 80026cc:	ea42 1303 	orr.w	r3, r2, r3, lsl #4
 80026d0:	4a10      	ldr	r2, [pc, #64]	; (8002714 <TIM_OC2Init+0x78>)
 80026d2:	4290      	cmp	r0, r2
 80026d4:	d003      	beq.n	80026de <TIM_OC2Init+0x42>
 80026d6:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 80026da:	4290      	cmp	r0, r2
 80026dc:	d114      	bne.n	8002708 <TIM_OC2Init+0x6c>
 80026de:	bf00      	nop
 80026e0:	bf00      	nop
 80026e2:	bf00      	nop
 80026e4:	bf00      	nop
 80026e6:	89ca      	ldrh	r2, [r1, #14]
 80026e8:	8a0e      	ldrh	r6, [r1, #16]
 80026ea:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 80026ee:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 80026f2:	88ca      	ldrh	r2, [r1, #6]
 80026f4:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 80026f8:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 80026fc:	8a4a      	ldrh	r2, [r1, #18]
 80026fe:	f424 6440 	bic.w	r4, r4, #3072	; 0xc00
 8002702:	4332      	orrs	r2, r6
 8002704:	ea44 0482 	orr.w	r4, r4, r2, lsl #2
 8002708:	688a      	ldr	r2, [r1, #8]
 800270a:	6044      	str	r4, [r0, #4]
 800270c:	6185      	str	r5, [r0, #24]
 800270e:	6382      	str	r2, [r0, #56]	; 0x38
 8002710:	6203      	str	r3, [r0, #32]
 8002712:	bd70      	pop	{r4, r5, r6, pc}
 8002714:	40012c00 	.word	0x40012c00

08002718 <TIM_SetCompare2>:
 8002718:	bf00      	nop
 800271a:	6381      	str	r1, [r0, #56]	; 0x38
 800271c:	4770      	bx	lr

0800271e <TIM_CtrlPWMOutputs>:
 800271e:	bf00      	nop
 8002720:	bf00      	nop
 8002722:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8002724:	b111      	cbz	r1, 800272c <TIM_CtrlPWMOutputs+0xe>
 8002726:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 800272a:	e001      	b.n	8002730 <TIM_CtrlPWMOutputs+0x12>
 800272c:	f3c3 030e 	ubfx	r3, r3, #0, #15
 8002730:	6443      	str	r3, [r0, #68]	; 0x44
 8002732:	4770      	bx	lr

08002734 <TIM_ClearITPendingBit>:
 8002734:	bf00      	nop
 8002736:	43c9      	mvns	r1, r1
 8002738:	b289      	uxth	r1, r1
 800273a:	6101      	str	r1, [r0, #16]
 800273c:	4770      	bx	lr
	...

08002740 <RCC_GetClocksFreq>:
 8002740:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8002744:	4f9b      	ldr	r7, [pc, #620]	; (80029b4 <RCC_GetClocksFreq+0x274>)
 8002746:	687b      	ldr	r3, [r7, #4]
 8002748:	f003 030c 	and.w	r3, r3, #12
 800274c:	2b04      	cmp	r3, #4
 800274e:	d005      	beq.n	800275c <RCC_GetClocksFreq+0x1c>
 8002750:	2b08      	cmp	r3, #8
 8002752:	d006      	beq.n	8002762 <RCC_GetClocksFreq+0x22>
 8002754:	4a98      	ldr	r2, [pc, #608]	; (80029b8 <RCC_GetClocksFreq+0x278>)
 8002756:	6002      	str	r2, [r0, #0]
 8002758:	b9b3      	cbnz	r3, 8002788 <RCC_GetClocksFreq+0x48>
 800275a:	e016      	b.n	800278a <RCC_GetClocksFreq+0x4a>
 800275c:	4b96      	ldr	r3, [pc, #600]	; (80029b8 <RCC_GetClocksFreq+0x278>)
 800275e:	6003      	str	r3, [r0, #0]
 8002760:	e012      	b.n	8002788 <RCC_GetClocksFreq+0x48>
 8002762:	687b      	ldr	r3, [r7, #4]
 8002764:	6879      	ldr	r1, [r7, #4]
 8002766:	f3c3 4383 	ubfx	r3, r3, #18, #4
 800276a:	1c9a      	adds	r2, r3, #2
 800276c:	03cb      	lsls	r3, r1, #15
 800276e:	bf49      	itett	mi
 8002770:	6afb      	ldrmi	r3, [r7, #44]	; 0x2c
 8002772:	4b92      	ldrpl	r3, [pc, #584]	; (80029bc <RCC_GetClocksFreq+0x27c>)
 8002774:	4990      	ldrmi	r1, [pc, #576]	; (80029b8 <RCC_GetClocksFreq+0x278>)
 8002776:	f003 030f 	andmi.w	r3, r3, #15
 800277a:	bf44      	itt	mi
 800277c:	3301      	addmi	r3, #1
 800277e:	fbb1 f3f3 	udivmi	r3, r1, r3
 8002782:	4353      	muls	r3, r2
 8002784:	6003      	str	r3, [r0, #0]
 8002786:	e000      	b.n	800278a <RCC_GetClocksFreq+0x4a>
 8002788:	2300      	movs	r3, #0
 800278a:	687a      	ldr	r2, [r7, #4]
 800278c:	4e8c      	ldr	r6, [pc, #560]	; (80029c0 <RCC_GetClocksFreq+0x280>)
 800278e:	f8df c234 	ldr.w	ip, [pc, #564]	; 80029c4 <RCC_GetClocksFreq+0x284>
 8002792:	f3c2 1203 	ubfx	r2, r2, #4, #4
 8002796:	5cb4      	ldrb	r4, [r6, r2]
 8002798:	6802      	ldr	r2, [r0, #0]
 800279a:	b2e4      	uxtb	r4, r4
 800279c:	fa22 f104 	lsr.w	r1, r2, r4
 80027a0:	6041      	str	r1, [r0, #4]
 80027a2:	687d      	ldr	r5, [r7, #4]
 80027a4:	f3c5 2502 	ubfx	r5, r5, #8, #3
 80027a8:	5d75      	ldrb	r5, [r6, r5]
 80027aa:	fa21 fe05 	lsr.w	lr, r1, r5
 80027ae:	f8c0 e008 	str.w	lr, [r0, #8]
 80027b2:	687d      	ldr	r5, [r7, #4]
 80027b4:	f3c5 25c2 	ubfx	r5, r5, #11, #3
 80027b8:	5d75      	ldrb	r5, [r6, r5]
 80027ba:	b2ed      	uxtb	r5, r5
 80027bc:	40e9      	lsrs	r1, r5
 80027be:	60c1      	str	r1, [r0, #12]
 80027c0:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 80027c2:	f3c6 1804 	ubfx	r8, r6, #4, #5
 80027c6:	f008 060f 	and.w	r6, r8, #15
 80027ca:	f018 0f10 	tst.w	r8, #16
 80027ce:	f83c 6016 	ldrh.w	r6, [ip, r6, lsl #1]
 80027d2:	46e0      	mov	r8, ip
 80027d4:	b2b6      	uxth	r6, r6
 80027d6:	d004      	beq.n	80027e2 <RCC_GetClocksFreq+0xa2>
 80027d8:	b11e      	cbz	r6, 80027e2 <RCC_GetClocksFreq+0xa2>
 80027da:	fbb3 f6f6 	udiv	r6, r3, r6
 80027de:	6106      	str	r6, [r0, #16]
 80027e0:	e000      	b.n	80027e4 <RCC_GetClocksFreq+0xa4>
 80027e2:	6102      	str	r2, [r0, #16]
 80027e4:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 80027e6:	f3c6 2c44 	ubfx	ip, r6, #9, #5
 80027ea:	f00c 060f 	and.w	r6, ip, #15
 80027ee:	f01c 0f10 	tst.w	ip, #16
 80027f2:	f838 6016 	ldrh.w	r6, [r8, r6, lsl #1]
 80027f6:	b2b6      	uxth	r6, r6
 80027f8:	d004      	beq.n	8002804 <RCC_GetClocksFreq+0xc4>
 80027fa:	b11e      	cbz	r6, 8002804 <RCC_GetClocksFreq+0xc4>
 80027fc:	fbb3 f6f6 	udiv	r6, r3, r6
 8002800:	6146      	str	r6, [r0, #20]
 8002802:	e000      	b.n	8002806 <RCC_GetClocksFreq+0xc6>
 8002804:	6142      	str	r2, [r0, #20]
 8002806:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002808:	06f6      	lsls	r6, r6, #27
 800280a:	bf5a      	itte	pl
 800280c:	4e6a      	ldrpl	r6, [pc, #424]	; (80029b8 <RCC_GetClocksFreq+0x278>)
 800280e:	6186      	strpl	r6, [r0, #24]
 8002810:	6182      	strmi	r2, [r0, #24]
 8002812:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002814:	06b6      	lsls	r6, r6, #26
 8002816:	bf5a      	itte	pl
 8002818:	4e67      	ldrpl	r6, [pc, #412]	; (80029b8 <RCC_GetClocksFreq+0x278>)
 800281a:	61c6      	strpl	r6, [r0, #28]
 800281c:	61c2      	strmi	r2, [r0, #28]
 800281e:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002820:	0676      	lsls	r6, r6, #25
 8002822:	bf5a      	itte	pl
 8002824:	4e64      	ldrpl	r6, [pc, #400]	; (80029b8 <RCC_GetClocksFreq+0x278>)
 8002826:	6206      	strpl	r6, [r0, #32]
 8002828:	6202      	strmi	r2, [r0, #32]
 800282a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800282c:	05f6      	lsls	r6, r6, #23
 800282e:	d506      	bpl.n	800283e <RCC_GetClocksFreq+0xfe>
 8002830:	429a      	cmp	r2, r3
 8002832:	d104      	bne.n	800283e <RCC_GetClocksFreq+0xfe>
 8002834:	42a5      	cmp	r5, r4
 8002836:	d102      	bne.n	800283e <RCC_GetClocksFreq+0xfe>
 8002838:	0056      	lsls	r6, r2, #1
 800283a:	6246      	str	r6, [r0, #36]	; 0x24
 800283c:	e000      	b.n	8002840 <RCC_GetClocksFreq+0x100>
 800283e:	6241      	str	r1, [r0, #36]	; 0x24
 8002840:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002842:	04f6      	lsls	r6, r6, #19
 8002844:	d506      	bpl.n	8002854 <RCC_GetClocksFreq+0x114>
 8002846:	429a      	cmp	r2, r3
 8002848:	d104      	bne.n	8002854 <RCC_GetClocksFreq+0x114>
 800284a:	42a5      	cmp	r5, r4
 800284c:	d102      	bne.n	8002854 <RCC_GetClocksFreq+0x114>
 800284e:	0056      	lsls	r6, r2, #1
 8002850:	6286      	str	r6, [r0, #40]	; 0x28
 8002852:	e000      	b.n	8002856 <RCC_GetClocksFreq+0x116>
 8002854:	6281      	str	r1, [r0, #40]	; 0x28
 8002856:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002858:	05b6      	lsls	r6, r6, #22
 800285a:	d506      	bpl.n	800286a <RCC_GetClocksFreq+0x12a>
 800285c:	429a      	cmp	r2, r3
 800285e:	d104      	bne.n	800286a <RCC_GetClocksFreq+0x12a>
 8002860:	42a5      	cmp	r5, r4
 8002862:	d102      	bne.n	800286a <RCC_GetClocksFreq+0x12a>
 8002864:	0056      	lsls	r6, r2, #1
 8002866:	62c6      	str	r6, [r0, #44]	; 0x2c
 8002868:	e000      	b.n	800286c <RCC_GetClocksFreq+0x12c>
 800286a:	62c1      	str	r1, [r0, #44]	; 0x2c
 800286c:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800286e:	0576      	lsls	r6, r6, #21
 8002870:	d506      	bpl.n	8002880 <RCC_GetClocksFreq+0x140>
 8002872:	429a      	cmp	r2, r3
 8002874:	d104      	bne.n	8002880 <RCC_GetClocksFreq+0x140>
 8002876:	42a5      	cmp	r5, r4
 8002878:	d102      	bne.n	8002880 <RCC_GetClocksFreq+0x140>
 800287a:	0056      	lsls	r6, r2, #1
 800287c:	64c6      	str	r6, [r0, #76]	; 0x4c
 800287e:	e000      	b.n	8002882 <RCC_GetClocksFreq+0x142>
 8002880:	64c1      	str	r1, [r0, #76]	; 0x4c
 8002882:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002884:	0536      	lsls	r6, r6, #20
 8002886:	d506      	bpl.n	8002896 <RCC_GetClocksFreq+0x156>
 8002888:	429a      	cmp	r2, r3
 800288a:	d104      	bne.n	8002896 <RCC_GetClocksFreq+0x156>
 800288c:	42a5      	cmp	r5, r4
 800288e:	d102      	bne.n	8002896 <RCC_GetClocksFreq+0x156>
 8002890:	0056      	lsls	r6, r2, #1
 8002892:	6506      	str	r6, [r0, #80]	; 0x50
 8002894:	e000      	b.n	8002898 <RCC_GetClocksFreq+0x158>
 8002896:	6501      	str	r1, [r0, #80]	; 0x50
 8002898:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800289a:	04b6      	lsls	r6, r6, #18
 800289c:	d506      	bpl.n	80028ac <RCC_GetClocksFreq+0x16c>
 800289e:	429a      	cmp	r2, r3
 80028a0:	d104      	bne.n	80028ac <RCC_GetClocksFreq+0x16c>
 80028a2:	42a5      	cmp	r5, r4
 80028a4:	d102      	bne.n	80028ac <RCC_GetClocksFreq+0x16c>
 80028a6:	0056      	lsls	r6, r2, #1
 80028a8:	6546      	str	r6, [r0, #84]	; 0x54
 80028aa:	e000      	b.n	80028ae <RCC_GetClocksFreq+0x16e>
 80028ac:	6501      	str	r1, [r0, #80]	; 0x50
 80028ae:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80028b0:	0436      	lsls	r6, r6, #16
 80028b2:	d506      	bpl.n	80028c2 <RCC_GetClocksFreq+0x182>
 80028b4:	429a      	cmp	r2, r3
 80028b6:	d104      	bne.n	80028c2 <RCC_GetClocksFreq+0x182>
 80028b8:	42a5      	cmp	r5, r4
 80028ba:	d102      	bne.n	80028c2 <RCC_GetClocksFreq+0x182>
 80028bc:	0053      	lsls	r3, r2, #1
 80028be:	6583      	str	r3, [r0, #88]	; 0x58
 80028c0:	e000      	b.n	80028c4 <RCC_GetClocksFreq+0x184>
 80028c2:	6581      	str	r1, [r0, #88]	; 0x58
 80028c4:	6b3c      	ldr	r4, [r7, #48]	; 0x30
 80028c6:	4b3b      	ldr	r3, [pc, #236]	; (80029b4 <RCC_GetClocksFreq+0x274>)
 80028c8:	07a4      	lsls	r4, r4, #30
 80028ca:	d101      	bne.n	80028d0 <RCC_GetClocksFreq+0x190>
 80028cc:	6381      	str	r1, [r0, #56]	; 0x38
 80028ce:	e015      	b.n	80028fc <RCC_GetClocksFreq+0x1bc>
 80028d0:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80028d2:	f001 0103 	and.w	r1, r1, #3
 80028d6:	2901      	cmp	r1, #1
 80028d8:	d101      	bne.n	80028de <RCC_GetClocksFreq+0x19e>
 80028da:	6382      	str	r2, [r0, #56]	; 0x38
 80028dc:	e00e      	b.n	80028fc <RCC_GetClocksFreq+0x1bc>
 80028de:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80028e0:	f001 0103 	and.w	r1, r1, #3
 80028e4:	2902      	cmp	r1, #2
 80028e6:	d102      	bne.n	80028ee <RCC_GetClocksFreq+0x1ae>
 80028e8:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80028ec:	e005      	b.n	80028fa <RCC_GetClocksFreq+0x1ba>
 80028ee:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80028f0:	f003 0303 	and.w	r3, r3, #3
 80028f4:	2b03      	cmp	r3, #3
 80028f6:	d101      	bne.n	80028fc <RCC_GetClocksFreq+0x1bc>
 80028f8:	4b2f      	ldr	r3, [pc, #188]	; (80029b8 <RCC_GetClocksFreq+0x278>)
 80028fa:	6383      	str	r3, [r0, #56]	; 0x38
 80028fc:	6b39      	ldr	r1, [r7, #48]	; 0x30
 80028fe:	4b2d      	ldr	r3, [pc, #180]	; (80029b4 <RCC_GetClocksFreq+0x274>)
 8002900:	f411 3f40 	tst.w	r1, #196608	; 0x30000
 8002904:	d102      	bne.n	800290c <RCC_GetClocksFreq+0x1cc>
 8002906:	f8c0 e03c 	str.w	lr, [r0, #60]	; 0x3c
 800290a:	e018      	b.n	800293e <RCC_GetClocksFreq+0x1fe>
 800290c:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800290e:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8002912:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 8002916:	d101      	bne.n	800291c <RCC_GetClocksFreq+0x1dc>
 8002918:	63c2      	str	r2, [r0, #60]	; 0x3c
 800291a:	e010      	b.n	800293e <RCC_GetClocksFreq+0x1fe>
 800291c:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800291e:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8002922:	f5b1 3f00 	cmp.w	r1, #131072	; 0x20000
 8002926:	d102      	bne.n	800292e <RCC_GetClocksFreq+0x1ee>
 8002928:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 800292c:	e006      	b.n	800293c <RCC_GetClocksFreq+0x1fc>
 800292e:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8002930:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 8002934:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 8002938:	d101      	bne.n	800293e <RCC_GetClocksFreq+0x1fe>
 800293a:	4b1f      	ldr	r3, [pc, #124]	; (80029b8 <RCC_GetClocksFreq+0x278>)
 800293c:	63c3      	str	r3, [r0, #60]	; 0x3c
 800293e:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8002940:	4b1c      	ldr	r3, [pc, #112]	; (80029b4 <RCC_GetClocksFreq+0x274>)
 8002942:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 8002946:	d102      	bne.n	800294e <RCC_GetClocksFreq+0x20e>
 8002948:	f8c0 e040 	str.w	lr, [r0, #64]	; 0x40
 800294c:	e018      	b.n	8002980 <RCC_GetClocksFreq+0x240>
 800294e:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002950:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8002954:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8002958:	d101      	bne.n	800295e <RCC_GetClocksFreq+0x21e>
 800295a:	6402      	str	r2, [r0, #64]	; 0x40
 800295c:	e010      	b.n	8002980 <RCC_GetClocksFreq+0x240>
 800295e:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002960:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8002964:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8002968:	d102      	bne.n	8002970 <RCC_GetClocksFreq+0x230>
 800296a:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 800296e:	e006      	b.n	800297e <RCC_GetClocksFreq+0x23e>
 8002970:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8002972:	f403 2340 	and.w	r3, r3, #786432	; 0xc0000
 8002976:	f5b3 2f40 	cmp.w	r3, #786432	; 0xc0000
 800297a:	d101      	bne.n	8002980 <RCC_GetClocksFreq+0x240>
 800297c:	4b0e      	ldr	r3, [pc, #56]	; (80029b8 <RCC_GetClocksFreq+0x278>)
 800297e:	6403      	str	r3, [r0, #64]	; 0x40
 8002980:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8002982:	4b0c      	ldr	r3, [pc, #48]	; (80029b4 <RCC_GetClocksFreq+0x274>)
 8002984:	f411 1f40 	tst.w	r1, #3145728	; 0x300000
 8002988:	d102      	bne.n	8002990 <RCC_GetClocksFreq+0x250>
 800298a:	f8c0 e044 	str.w	lr, [r0, #68]	; 0x44
 800298e:	e023      	b.n	80029d8 <RCC_GetClocksFreq+0x298>
 8002990:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002992:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 8002996:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 800299a:	d101      	bne.n	80029a0 <RCC_GetClocksFreq+0x260>
 800299c:	6442      	str	r2, [r0, #68]	; 0x44
 800299e:	e01b      	b.n	80029d8 <RCC_GetClocksFreq+0x298>
 80029a0:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80029a2:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 80029a6:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 80029aa:	d10d      	bne.n	80029c8 <RCC_GetClocksFreq+0x288>
 80029ac:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80029b0:	e011      	b.n	80029d6 <RCC_GetClocksFreq+0x296>
 80029b2:	bf00      	nop
 80029b4:	40021000 	.word	0x40021000
 80029b8:	007a1200 	.word	0x007a1200
 80029bc:	003d0900 	.word	0x003d0900
 80029c0:	20000020 	.word	0x20000020
 80029c4:	20000000 	.word	0x20000000
 80029c8:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80029ca:	f403 1340 	and.w	r3, r3, #3145728	; 0x300000
 80029ce:	f5b3 1f40 	cmp.w	r3, #3145728	; 0x300000
 80029d2:	d101      	bne.n	80029d8 <RCC_GetClocksFreq+0x298>
 80029d4:	4b13      	ldr	r3, [pc, #76]	; (8002a24 <RCC_GetClocksFreq+0x2e4>)
 80029d6:	6443      	str	r3, [r0, #68]	; 0x44
 80029d8:	6b39      	ldr	r1, [r7, #48]	; 0x30
 80029da:	4b13      	ldr	r3, [pc, #76]	; (8002a28 <RCC_GetClocksFreq+0x2e8>)
 80029dc:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 80029e0:	d103      	bne.n	80029ea <RCC_GetClocksFreq+0x2aa>
 80029e2:	f8c0 e048 	str.w	lr, [r0, #72]	; 0x48
 80029e6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80029ea:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80029ec:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 80029f0:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 80029f4:	d102      	bne.n	80029fc <RCC_GetClocksFreq+0x2bc>
 80029f6:	6482      	str	r2, [r0, #72]	; 0x48
 80029f8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80029fc:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 80029fe:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 8002a02:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 8002a06:	d102      	bne.n	8002a0e <RCC_GetClocksFreq+0x2ce>
 8002a08:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002a0c:	e006      	b.n	8002a1c <RCC_GetClocksFreq+0x2dc>
 8002a0e:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8002a10:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8002a14:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 8002a18:	d101      	bne.n	8002a1e <RCC_GetClocksFreq+0x2de>
 8002a1a:	4b02      	ldr	r3, [pc, #8]	; (8002a24 <RCC_GetClocksFreq+0x2e4>)
 8002a1c:	6483      	str	r3, [r0, #72]	; 0x48
 8002a1e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002a22:	bf00      	nop
 8002a24:	007a1200 	.word	0x007a1200
 8002a28:	40021000 	.word	0x40021000

08002a2c <RCC_AHBPeriphClockCmd>:
 8002a2c:	bf00      	nop
 8002a2e:	bf00      	nop
 8002a30:	4b04      	ldr	r3, [pc, #16]	; (8002a44 <RCC_AHBPeriphClockCmd+0x18>)
 8002a32:	695a      	ldr	r2, [r3, #20]
 8002a34:	b109      	cbz	r1, 8002a3a <RCC_AHBPeriphClockCmd+0xe>
 8002a36:	4310      	orrs	r0, r2
 8002a38:	e001      	b.n	8002a3e <RCC_AHBPeriphClockCmd+0x12>
 8002a3a:	ea22 0000 	bic.w	r0, r2, r0
 8002a3e:	6158      	str	r0, [r3, #20]
 8002a40:	4770      	bx	lr
 8002a42:	bf00      	nop
 8002a44:	40021000 	.word	0x40021000

08002a48 <RCC_APB2PeriphClockCmd>:
 8002a48:	bf00      	nop
 8002a4a:	bf00      	nop
 8002a4c:	4b04      	ldr	r3, [pc, #16]	; (8002a60 <RCC_APB2PeriphClockCmd+0x18>)
 8002a4e:	699a      	ldr	r2, [r3, #24]
 8002a50:	b109      	cbz	r1, 8002a56 <RCC_APB2PeriphClockCmd+0xe>
 8002a52:	4310      	orrs	r0, r2
 8002a54:	e001      	b.n	8002a5a <RCC_APB2PeriphClockCmd+0x12>
 8002a56:	ea22 0000 	bic.w	r0, r2, r0
 8002a5a:	6198      	str	r0, [r3, #24]
 8002a5c:	4770      	bx	lr
 8002a5e:	bf00      	nop
 8002a60:	40021000 	.word	0x40021000

08002a64 <RCC_APB1PeriphClockCmd>:
 8002a64:	bf00      	nop
 8002a66:	bf00      	nop
 8002a68:	4b04      	ldr	r3, [pc, #16]	; (8002a7c <RCC_APB1PeriphClockCmd+0x18>)
 8002a6a:	69da      	ldr	r2, [r3, #28]
 8002a6c:	b109      	cbz	r1, 8002a72 <RCC_APB1PeriphClockCmd+0xe>
 8002a6e:	4310      	orrs	r0, r2
 8002a70:	e001      	b.n	8002a76 <RCC_APB1PeriphClockCmd+0x12>
 8002a72:	ea22 0000 	bic.w	r0, r2, r0
 8002a76:	61d8      	str	r0, [r3, #28]
 8002a78:	4770      	bx	lr
 8002a7a:	bf00      	nop
 8002a7c:	40021000 	.word	0x40021000

08002a80 <USART_Init>:
 8002a80:	b530      	push	{r4, r5, lr}
 8002a82:	4604      	mov	r4, r0
 8002a84:	b099      	sub	sp, #100	; 0x64
 8002a86:	460d      	mov	r5, r1
 8002a88:	bf00      	nop
 8002a8a:	bf00      	nop
 8002a8c:	bf00      	nop
 8002a8e:	bf00      	nop
 8002a90:	bf00      	nop
 8002a92:	bf00      	nop
 8002a94:	bf00      	nop
 8002a96:	6803      	ldr	r3, [r0, #0]
 8002a98:	f023 0301 	bic.w	r3, r3, #1
 8002a9c:	6003      	str	r3, [r0, #0]
 8002a9e:	6843      	ldr	r3, [r0, #4]
 8002aa0:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 8002aa4:	688b      	ldr	r3, [r1, #8]
 8002aa6:	68c9      	ldr	r1, [r1, #12]
 8002aa8:	4313      	orrs	r3, r2
 8002aaa:	6043      	str	r3, [r0, #4]
 8002aac:	686a      	ldr	r2, [r5, #4]
 8002aae:	6803      	ldr	r3, [r0, #0]
 8002ab0:	4311      	orrs	r1, r2
 8002ab2:	692a      	ldr	r2, [r5, #16]
 8002ab4:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 8002ab8:	430a      	orrs	r2, r1
 8002aba:	f023 030c 	bic.w	r3, r3, #12
 8002abe:	4313      	orrs	r3, r2
 8002ac0:	6003      	str	r3, [r0, #0]
 8002ac2:	6883      	ldr	r3, [r0, #8]
 8002ac4:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 8002ac8:	696b      	ldr	r3, [r5, #20]
 8002aca:	4313      	orrs	r3, r2
 8002acc:	6083      	str	r3, [r0, #8]
 8002ace:	a801      	add	r0, sp, #4
 8002ad0:	f7ff fe36 	bl	8002740 <RCC_GetClocksFreq>
 8002ad4:	4b17      	ldr	r3, [pc, #92]	; (8002b34 <USART_Init+0xb4>)
 8002ad6:	429c      	cmp	r4, r3
 8002ad8:	d101      	bne.n	8002ade <USART_Init+0x5e>
 8002ada:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8002adc:	e00e      	b.n	8002afc <USART_Init+0x7c>
 8002ade:	4b16      	ldr	r3, [pc, #88]	; (8002b38 <USART_Init+0xb8>)
 8002ae0:	429c      	cmp	r4, r3
 8002ae2:	d101      	bne.n	8002ae8 <USART_Init+0x68>
 8002ae4:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002ae6:	e009      	b.n	8002afc <USART_Init+0x7c>
 8002ae8:	4b14      	ldr	r3, [pc, #80]	; (8002b3c <USART_Init+0xbc>)
 8002aea:	429c      	cmp	r4, r3
 8002aec:	d101      	bne.n	8002af2 <USART_Init+0x72>
 8002aee:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8002af0:	e004      	b.n	8002afc <USART_Init+0x7c>
 8002af2:	4b13      	ldr	r3, [pc, #76]	; (8002b40 <USART_Init+0xc0>)
 8002af4:	429c      	cmp	r4, r3
 8002af6:	bf0c      	ite	eq
 8002af8:	9b12      	ldreq	r3, [sp, #72]	; 0x48
 8002afa:	9b13      	ldrne	r3, [sp, #76]	; 0x4c
 8002afc:	6822      	ldr	r2, [r4, #0]
 8002afe:	6829      	ldr	r1, [r5, #0]
 8002b00:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 8002b04:	bf18      	it	ne
 8002b06:	005b      	lslne	r3, r3, #1
 8002b08:	fbb3 f2f1 	udiv	r2, r3, r1
 8002b0c:	fb01 3312 	mls	r3, r1, r2, r3
 8002b10:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
 8002b14:	6823      	ldr	r3, [r4, #0]
 8002b16:	bf28      	it	cs
 8002b18:	3201      	addcs	r2, #1
 8002b1a:	041b      	lsls	r3, r3, #16
 8002b1c:	bf41      	itttt	mi
 8002b1e:	f64f 73f0 	movwmi	r3, #65520	; 0xfff0
 8002b22:	f3c2 0142 	ubfxmi	r1, r2, #1, #3
 8002b26:	4013      	andmi	r3, r2
 8002b28:	ea41 0203 	orrmi.w	r2, r1, r3
 8002b2c:	b292      	uxth	r2, r2
 8002b2e:	81a2      	strh	r2, [r4, #12]
 8002b30:	b019      	add	sp, #100	; 0x64
 8002b32:	bd30      	pop	{r4, r5, pc}
 8002b34:	40013800 	.word	0x40013800
 8002b38:	40004400 	.word	0x40004400
 8002b3c:	40004800 	.word	0x40004800
 8002b40:	40004c00 	.word	0x40004c00

08002b44 <USART_Cmd>:
 8002b44:	bf00      	nop
 8002b46:	bf00      	nop
 8002b48:	6803      	ldr	r3, [r0, #0]
 8002b4a:	b111      	cbz	r1, 8002b52 <USART_Cmd+0xe>
 8002b4c:	f043 0301 	orr.w	r3, r3, #1
 8002b50:	e001      	b.n	8002b56 <USART_Cmd+0x12>
 8002b52:	f023 0301 	bic.w	r3, r3, #1
 8002b56:	6003      	str	r3, [r0, #0]
 8002b58:	4770      	bx	lr

08002b5a <USART_ReceiveData>:
 8002b5a:	bf00      	nop
 8002b5c:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 8002b5e:	f3c0 0008 	ubfx	r0, r0, #0, #9
 8002b62:	4770      	bx	lr

08002b64 <USART_ITConfig>:
 8002b64:	b510      	push	{r4, lr}
 8002b66:	bf00      	nop
 8002b68:	bf00      	nop
 8002b6a:	bf00      	nop
 8002b6c:	f3c1 2407 	ubfx	r4, r1, #8, #8
 8002b70:	2301      	movs	r3, #1
 8002b72:	b2c9      	uxtb	r1, r1
 8002b74:	2c02      	cmp	r4, #2
 8002b76:	fa03 f301 	lsl.w	r3, r3, r1
 8002b7a:	d101      	bne.n	8002b80 <USART_ITConfig+0x1c>
 8002b7c:	3004      	adds	r0, #4
 8002b7e:	e002      	b.n	8002b86 <USART_ITConfig+0x22>
 8002b80:	2c03      	cmp	r4, #3
 8002b82:	bf08      	it	eq
 8002b84:	3008      	addeq	r0, #8
 8002b86:	b112      	cbz	r2, 8002b8e <USART_ITConfig+0x2a>
 8002b88:	6802      	ldr	r2, [r0, #0]
 8002b8a:	4313      	orrs	r3, r2
 8002b8c:	e002      	b.n	8002b94 <USART_ITConfig+0x30>
 8002b8e:	6802      	ldr	r2, [r0, #0]
 8002b90:	ea22 0303 	bic.w	r3, r2, r3
 8002b94:	6003      	str	r3, [r0, #0]
 8002b96:	bd10      	pop	{r4, pc}

08002b98 <USART_GetITStatus>:
 8002b98:	b510      	push	{r4, lr}
 8002b9a:	bf00      	nop
 8002b9c:	bf00      	nop
 8002b9e:	f3c1 2207 	ubfx	r2, r1, #8, #8
 8002ba2:	b2cc      	uxtb	r4, r1
 8002ba4:	2301      	movs	r3, #1
 8002ba6:	2a01      	cmp	r2, #1
 8002ba8:	fa03 f304 	lsl.w	r3, r3, r4
 8002bac:	d101      	bne.n	8002bb2 <USART_GetITStatus+0x1a>
 8002bae:	6802      	ldr	r2, [r0, #0]
 8002bb0:	e003      	b.n	8002bba <USART_GetITStatus+0x22>
 8002bb2:	2a02      	cmp	r2, #2
 8002bb4:	bf0c      	ite	eq
 8002bb6:	6842      	ldreq	r2, [r0, #4]
 8002bb8:	6882      	ldrne	r2, [r0, #8]
 8002bba:	4013      	ands	r3, r2
 8002bbc:	69c2      	ldr	r2, [r0, #28]
 8002bbe:	b13b      	cbz	r3, 8002bd0 <USART_GetITStatus+0x38>
 8002bc0:	0c09      	lsrs	r1, r1, #16
 8002bc2:	2301      	movs	r3, #1
 8002bc4:	408b      	lsls	r3, r1
 8002bc6:	4213      	tst	r3, r2
 8002bc8:	bf14      	ite	ne
 8002bca:	2001      	movne	r0, #1
 8002bcc:	2000      	moveq	r0, #0
 8002bce:	bd10      	pop	{r4, pc}
 8002bd0:	4618      	mov	r0, r3
 8002bd2:	bd10      	pop	{r4, pc}

08002bd4 <USART_ClearITPendingBit>:
 8002bd4:	bf00      	nop
 8002bd6:	bf00      	nop
 8002bd8:	2301      	movs	r3, #1
 8002bda:	0c09      	lsrs	r1, r1, #16
 8002bdc:	408b      	lsls	r3, r1
 8002bde:	6203      	str	r3, [r0, #32]
 8002be0:	4770      	bx	lr

08002be2 <Default_Handler>:
 8002be2:	4668      	mov	r0, sp
 8002be4:	f020 0107 	bic.w	r1, r0, #7
 8002be8:	468d      	mov	sp, r1
 8002bea:	b501      	push	{r0, lr}
 8002bec:	bf00      	nop
 8002bee:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
 8002bf2:	4685      	mov	sp, r0
 8002bf4:	4770      	bx	lr

08002bf6 <HardFault_Handler>:
 8002bf6:	bf00      	nop
 8002bf8:	e7fd      	b.n	8002bf6 <HardFault_Handler>
	...

08002bfc <_reset_init>:
 8002bfc:	490e      	ldr	r1, [pc, #56]	; (8002c38 <_reset_init+0x3c>)
 8002bfe:	4b0f      	ldr	r3, [pc, #60]	; (8002c3c <_reset_init+0x40>)
 8002c00:	1a5b      	subs	r3, r3, r1
 8002c02:	109b      	asrs	r3, r3, #2
 8002c04:	2200      	movs	r2, #0
 8002c06:	429a      	cmp	r2, r3
 8002c08:	d006      	beq.n	8002c18 <_reset_init+0x1c>
 8002c0a:	480d      	ldr	r0, [pc, #52]	; (8002c40 <_reset_init+0x44>)
 8002c0c:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
 8002c10:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
 8002c14:	3201      	adds	r2, #1
 8002c16:	e7f6      	b.n	8002c06 <_reset_init+0xa>
 8002c18:	4a0a      	ldr	r2, [pc, #40]	; (8002c44 <_reset_init+0x48>)
 8002c1a:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8002c1e:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8002c22:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 8002c26:	f502 720c 	add.w	r2, r2, #560	; 0x230
 8002c2a:	6853      	ldr	r3, [r2, #4]
 8002c2c:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
 8002c30:	6053      	str	r3, [r2, #4]
 8002c32:	f7ff bc4f 	b.w	80024d4 <main>
 8002c36:	bf00      	nop
 8002c38:	20000000 	.word	0x20000000
 8002c3c:	20000034 	.word	0x20000034
 8002c40:	0800308c 	.word	0x0800308c
 8002c44:	e000ed00 	.word	0xe000ed00

08002c48 <core_yield>:
 8002c48:	bf00      	nop
 8002c4a:	4770      	bx	lr

08002c4c <sytem_clock_init>:
 8002c4c:	f000 b800 	b.w	8002c50 <SystemInit>

08002c50 <SystemInit>:
 8002c50:	4a39      	ldr	r2, [pc, #228]	; (8002d38 <SystemInit+0xe8>)
 8002c52:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8002c56:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8002c5a:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 8002c5e:	4b37      	ldr	r3, [pc, #220]	; (8002d3c <SystemInit+0xec>)
 8002c60:	681a      	ldr	r2, [r3, #0]
 8002c62:	f042 0201 	orr.w	r2, r2, #1
 8002c66:	601a      	str	r2, [r3, #0]
 8002c68:	6859      	ldr	r1, [r3, #4]
 8002c6a:	4a35      	ldr	r2, [pc, #212]	; (8002d40 <SystemInit+0xf0>)
 8002c6c:	400a      	ands	r2, r1
 8002c6e:	605a      	str	r2, [r3, #4]
 8002c70:	681a      	ldr	r2, [r3, #0]
 8002c72:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 8002c76:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8002c7a:	601a      	str	r2, [r3, #0]
 8002c7c:	681a      	ldr	r2, [r3, #0]
 8002c7e:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002c82:	601a      	str	r2, [r3, #0]
 8002c84:	685a      	ldr	r2, [r3, #4]
 8002c86:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 8002c8a:	605a      	str	r2, [r3, #4]
 8002c8c:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8002c8e:	f022 020f 	bic.w	r2, r2, #15
 8002c92:	62da      	str	r2, [r3, #44]	; 0x2c
 8002c94:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002c96:	4a2b      	ldr	r2, [pc, #172]	; (8002d44 <SystemInit+0xf4>)
 8002c98:	b082      	sub	sp, #8
 8002c9a:	400a      	ands	r2, r1
 8002c9c:	631a      	str	r2, [r3, #48]	; 0x30
 8002c9e:	2200      	movs	r2, #0
 8002ca0:	609a      	str	r2, [r3, #8]
 8002ca2:	9200      	str	r2, [sp, #0]
 8002ca4:	9201      	str	r2, [sp, #4]
 8002ca6:	681a      	ldr	r2, [r3, #0]
 8002ca8:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8002cac:	601a      	str	r2, [r3, #0]
 8002cae:	681a      	ldr	r2, [r3, #0]
 8002cb0:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8002cb4:	9201      	str	r2, [sp, #4]
 8002cb6:	9a00      	ldr	r2, [sp, #0]
 8002cb8:	3201      	adds	r2, #1
 8002cba:	9200      	str	r2, [sp, #0]
 8002cbc:	9a01      	ldr	r2, [sp, #4]
 8002cbe:	b91a      	cbnz	r2, 8002cc8 <SystemInit+0x78>
 8002cc0:	9a00      	ldr	r2, [sp, #0]
 8002cc2:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 8002cc6:	d1f2      	bne.n	8002cae <SystemInit+0x5e>
 8002cc8:	681a      	ldr	r2, [r3, #0]
 8002cca:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 8002cce:	bf18      	it	ne
 8002cd0:	2201      	movne	r2, #1
 8002cd2:	9201      	str	r2, [sp, #4]
 8002cd4:	9a01      	ldr	r2, [sp, #4]
 8002cd6:	2a01      	cmp	r2, #1
 8002cd8:	d005      	beq.n	8002ce6 <SystemInit+0x96>
 8002cda:	4b17      	ldr	r3, [pc, #92]	; (8002d38 <SystemInit+0xe8>)
 8002cdc:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8002ce0:	609a      	str	r2, [r3, #8]
 8002ce2:	b002      	add	sp, #8
 8002ce4:	4770      	bx	lr
 8002ce6:	4a18      	ldr	r2, [pc, #96]	; (8002d48 <SystemInit+0xf8>)
 8002ce8:	2112      	movs	r1, #18
 8002cea:	6011      	str	r1, [r2, #0]
 8002cec:	685a      	ldr	r2, [r3, #4]
 8002cee:	605a      	str	r2, [r3, #4]
 8002cf0:	685a      	ldr	r2, [r3, #4]
 8002cf2:	605a      	str	r2, [r3, #4]
 8002cf4:	685a      	ldr	r2, [r3, #4]
 8002cf6:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8002cfa:	605a      	str	r2, [r3, #4]
 8002cfc:	685a      	ldr	r2, [r3, #4]
 8002cfe:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 8002d02:	605a      	str	r2, [r3, #4]
 8002d04:	685a      	ldr	r2, [r3, #4]
 8002d06:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 8002d0a:	605a      	str	r2, [r3, #4]
 8002d0c:	681a      	ldr	r2, [r3, #0]
 8002d0e:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8002d12:	601a      	str	r2, [r3, #0]
 8002d14:	6819      	ldr	r1, [r3, #0]
 8002d16:	4a09      	ldr	r2, [pc, #36]	; (8002d3c <SystemInit+0xec>)
 8002d18:	0189      	lsls	r1, r1, #6
 8002d1a:	d5fb      	bpl.n	8002d14 <SystemInit+0xc4>
 8002d1c:	6851      	ldr	r1, [r2, #4]
 8002d1e:	f021 0103 	bic.w	r1, r1, #3
 8002d22:	6051      	str	r1, [r2, #4]
 8002d24:	6851      	ldr	r1, [r2, #4]
 8002d26:	f041 0102 	orr.w	r1, r1, #2
 8002d2a:	6051      	str	r1, [r2, #4]
 8002d2c:	685a      	ldr	r2, [r3, #4]
 8002d2e:	f002 020c 	and.w	r2, r2, #12
 8002d32:	2a08      	cmp	r2, #8
 8002d34:	d1fa      	bne.n	8002d2c <SystemInit+0xdc>
 8002d36:	e7d0      	b.n	8002cda <SystemInit+0x8a>
 8002d38:	e000ed00 	.word	0xe000ed00
 8002d3c:	40021000 	.word	0x40021000
 8002d40:	f87fc00c 	.word	0xf87fc00c
 8002d44:	ff00fccc 	.word	0xff00fccc
 8002d48:	40022000 	.word	0x40022000

08002d4c <EXTI_ClearITPendingBit>:
 8002d4c:	f020 011f 	bic.w	r1, r0, #31
 8002d50:	2301      	movs	r3, #1
 8002d52:	f000 001f 	and.w	r0, r0, #31
 8002d56:	4a02      	ldr	r2, [pc, #8]	; (8002d60 <EXTI_ClearITPendingBit+0x14>)
 8002d58:	4083      	lsls	r3, r0
 8002d5a:	508b      	str	r3, [r1, r2]
 8002d5c:	4770      	bx	lr
 8002d5e:	bf00      	nop
 8002d60:	40010414 	.word	0x40010414

08002d64 <GPIO_Init>:
 8002d64:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002d66:	bf00      	nop
 8002d68:	bf00      	nop
 8002d6a:	bf00      	nop
 8002d6c:	bf00      	nop
 8002d6e:	2300      	movs	r3, #0
 8002d70:	680e      	ldr	r6, [r1, #0]
 8002d72:	461c      	mov	r4, r3
 8002d74:	2501      	movs	r5, #1
 8002d76:	40a5      	lsls	r5, r4
 8002d78:	ea05 0e06 	and.w	lr, r5, r6
 8002d7c:	45ae      	cmp	lr, r5
 8002d7e:	d12d      	bne.n	8002ddc <GPIO_Init+0x78>
 8002d80:	790f      	ldrb	r7, [r1, #4]
 8002d82:	1e7a      	subs	r2, r7, #1
 8002d84:	2a01      	cmp	r2, #1
 8002d86:	d817      	bhi.n	8002db8 <GPIO_Init+0x54>
 8002d88:	bf00      	nop
 8002d8a:	2203      	movs	r2, #3
 8002d8c:	6885      	ldr	r5, [r0, #8]
 8002d8e:	409a      	lsls	r2, r3
 8002d90:	ea25 0202 	bic.w	r2, r5, r2
 8002d94:	6082      	str	r2, [r0, #8]
 8002d96:	794d      	ldrb	r5, [r1, #5]
 8002d98:	6882      	ldr	r2, [r0, #8]
 8002d9a:	409d      	lsls	r5, r3
 8002d9c:	4315      	orrs	r5, r2
 8002d9e:	6085      	str	r5, [r0, #8]
 8002da0:	bf00      	nop
 8002da2:	8882      	ldrh	r2, [r0, #4]
 8002da4:	b292      	uxth	r2, r2
 8002da6:	ea22 020e 	bic.w	r2, r2, lr
 8002daa:	8082      	strh	r2, [r0, #4]
 8002dac:	798a      	ldrb	r2, [r1, #6]
 8002dae:	8885      	ldrh	r5, [r0, #4]
 8002db0:	40a2      	lsls	r2, r4
 8002db2:	432a      	orrs	r2, r5
 8002db4:	b292      	uxth	r2, r2
 8002db6:	8082      	strh	r2, [r0, #4]
 8002db8:	2203      	movs	r2, #3
 8002dba:	6805      	ldr	r5, [r0, #0]
 8002dbc:	409a      	lsls	r2, r3
 8002dbe:	43d2      	mvns	r2, r2
 8002dc0:	4015      	ands	r5, r2
 8002dc2:	6005      	str	r5, [r0, #0]
 8002dc4:	6805      	ldr	r5, [r0, #0]
 8002dc6:	409f      	lsls	r7, r3
 8002dc8:	432f      	orrs	r7, r5
 8002dca:	6007      	str	r7, [r0, #0]
 8002dcc:	68c7      	ldr	r7, [r0, #12]
 8002dce:	4017      	ands	r7, r2
 8002dd0:	79ca      	ldrb	r2, [r1, #7]
 8002dd2:	fa02 f503 	lsl.w	r5, r2, r3
 8002dd6:	ea47 0205 	orr.w	r2, r7, r5
 8002dda:	60c2      	str	r2, [r0, #12]
 8002ddc:	3401      	adds	r4, #1
 8002dde:	2c10      	cmp	r4, #16
 8002de0:	f103 0302 	add.w	r3, r3, #2
 8002de4:	d1c6      	bne.n	8002d74 <GPIO_Init+0x10>
 8002de6:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002de8 <GPIO_SetBits>:
 8002de8:	bf00      	nop
 8002dea:	bf00      	nop
 8002dec:	6181      	str	r1, [r0, #24]
 8002dee:	4770      	bx	lr

08002df0 <GPIO_PinAFConfig>:
 8002df0:	b510      	push	{r4, lr}
 8002df2:	bf00      	nop
 8002df4:	bf00      	nop
 8002df6:	bf00      	nop
 8002df8:	f001 0307 	and.w	r3, r1, #7
 8002dfc:	08c9      	lsrs	r1, r1, #3
 8002dfe:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8002e02:	009b      	lsls	r3, r3, #2
 8002e04:	6a04      	ldr	r4, [r0, #32]
 8002e06:	210f      	movs	r1, #15
 8002e08:	4099      	lsls	r1, r3
 8002e0a:	ea24 0101 	bic.w	r1, r4, r1
 8002e0e:	6201      	str	r1, [r0, #32]
 8002e10:	6a01      	ldr	r1, [r0, #32]
 8002e12:	409a      	lsls	r2, r3
 8002e14:	430a      	orrs	r2, r1
 8002e16:	6202      	str	r2, [r0, #32]
 8002e18:	bd10      	pop	{r4, pc}
	...

08002e1c <scheduler>:
 8002e1c:	b570      	push	{r4, r5, r6, lr}
 8002e1e:	2200      	movs	r2, #0
 8002e20:	4611      	mov	r1, r2
 8002e22:	4b15      	ldr	r3, [pc, #84]	; (8002e78 <scheduler+0x5c>)
 8002e24:	200c      	movs	r0, #12
 8002e26:	fb00 f401 	mul.w	r4, r0, r1
 8002e2a:	191e      	adds	r6, r3, r4
 8002e2c:	6875      	ldr	r5, [r6, #4]
 8002e2e:	f015 0f02 	tst.w	r5, #2
 8002e32:	461d      	mov	r5, r3
 8002e34:	d10a      	bne.n	8002e4c <scheduler+0x30>
 8002e36:	6876      	ldr	r6, [r6, #4]
 8002e38:	07f6      	lsls	r6, r6, #31
 8002e3a:	d507      	bpl.n	8002e4c <scheduler+0x30>
 8002e3c:	4350      	muls	r0, r2
 8002e3e:	5b1c      	ldrh	r4, [r3, r4]
 8002e40:	5a18      	ldrh	r0, [r3, r0]
 8002e42:	b2a4      	uxth	r4, r4
 8002e44:	b280      	uxth	r0, r0
 8002e46:	4284      	cmp	r4, r0
 8002e48:	bf38      	it	cc
 8002e4a:	460a      	movcc	r2, r1
 8002e4c:	200c      	movs	r0, #12
 8002e4e:	4348      	muls	r0, r1
 8002e50:	5a1c      	ldrh	r4, [r3, r0]
 8002e52:	b2a4      	uxth	r4, r4
 8002e54:	b11c      	cbz	r4, 8002e5e <scheduler+0x42>
 8002e56:	5a1c      	ldrh	r4, [r3, r0]
 8002e58:	3c01      	subs	r4, #1
 8002e5a:	b2a4      	uxth	r4, r4
 8002e5c:	521c      	strh	r4, [r3, r0]
 8002e5e:	3101      	adds	r1, #1
 8002e60:	2906      	cmp	r1, #6
 8002e62:	d1de      	bne.n	8002e22 <scheduler+0x6>
 8002e64:	230c      	movs	r3, #12
 8002e66:	4353      	muls	r3, r2
 8002e68:	18e9      	adds	r1, r5, r3
 8002e6a:	8849      	ldrh	r1, [r1, #2]
 8002e6c:	b289      	uxth	r1, r1
 8002e6e:	52e9      	strh	r1, [r5, r3]
 8002e70:	4b02      	ldr	r3, [pc, #8]	; (8002e7c <scheduler+0x60>)
 8002e72:	601a      	str	r2, [r3, #0]
 8002e74:	bd70      	pop	{r4, r5, r6, pc}
 8002e76:	bf00      	nop
 8002e78:	20000484 	.word	0x20000484
 8002e7c:	200004cc 	.word	0x200004cc

08002e80 <SysTick_Handler>:
 8002e80:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8002e84:	f3ef 8308 	mrs	r3, MSP
 8002e88:	4c0d      	ldr	r4, [pc, #52]	; (8002ec0 <SysTick_Handler+0x40>)
 8002e8a:	4d0e      	ldr	r5, [pc, #56]	; (8002ec4 <SysTick_Handler+0x44>)
 8002e8c:	6822      	ldr	r2, [r4, #0]
 8002e8e:	3201      	adds	r2, #1
 8002e90:	bf1d      	ittte	ne
 8002e92:	6822      	ldrne	r2, [r4, #0]
 8002e94:	210c      	movne	r1, #12
 8002e96:	fb01 5202 	mlane	r2, r1, r2, r5
 8002e9a:	2300      	moveq	r3, #0
 8002e9c:	bf14      	ite	ne
 8002e9e:	6093      	strne	r3, [r2, #8]
 8002ea0:	6023      	streq	r3, [r4, #0]
 8002ea2:	f7ff ffbb 	bl	8002e1c <scheduler>
 8002ea6:	6822      	ldr	r2, [r4, #0]
 8002ea8:	230c      	movs	r3, #12
 8002eaa:	fb03 5302 	mla	r3, r3, r2, r5
 8002eae:	689a      	ldr	r2, [r3, #8]
 8002eb0:	f06f 0306 	mvn.w	r3, #6
 8002eb4:	469e      	mov	lr, r3
 8002eb6:	f382 8808 	msr	MSP, r2
 8002eba:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8002ebe:	4770      	bx	lr
 8002ec0:	200004cc 	.word	0x200004cc
 8002ec4:	20000484 	.word	0x20000484

08002ec8 <__aeabi_d2f>:
 8002ec8:	ea4f 0241 	mov.w	r2, r1, lsl #1
 8002ecc:	f1b2 43e0 	subs.w	r3, r2, #1879048192	; 0x70000000
 8002ed0:	bf24      	itt	cs
 8002ed2:	f5b3 1c00 	subscs.w	ip, r3, #2097152	; 0x200000
 8002ed6:	f1dc 5cfe 	rsbscs	ip, ip, #532676608	; 0x1fc00000
 8002eda:	d90d      	bls.n	8002ef8 <__aeabi_d2f+0x30>
 8002edc:	f001 4c00 	and.w	ip, r1, #2147483648	; 0x80000000
 8002ee0:	ea4f 02c0 	mov.w	r2, r0, lsl #3
 8002ee4:	ea4c 7050 	orr.w	r0, ip, r0, lsr #29
 8002ee8:	f1b2 4f00 	cmp.w	r2, #2147483648	; 0x80000000
 8002eec:	eb40 0083 	adc.w	r0, r0, r3, lsl #2
 8002ef0:	bf08      	it	eq
 8002ef2:	f020 0001 	biceq.w	r0, r0, #1
 8002ef6:	4770      	bx	lr
 8002ef8:	f011 4f80 	tst.w	r1, #1073741824	; 0x40000000
 8002efc:	d121      	bne.n	8002f42 <__aeabi_d2f+0x7a>
 8002efe:	f113 7238 	adds.w	r2, r3, #48234496	; 0x2e00000
 8002f02:	bfbc      	itt	lt
 8002f04:	f001 4000 	andlt.w	r0, r1, #2147483648	; 0x80000000
 8002f08:	4770      	bxlt	lr
 8002f0a:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8002f0e:	ea4f 5252 	mov.w	r2, r2, lsr #21
 8002f12:	f1c2 0218 	rsb	r2, r2, #24
 8002f16:	f1c2 0c20 	rsb	ip, r2, #32
 8002f1a:	fa10 f30c 	lsls.w	r3, r0, ip
 8002f1e:	fa20 f002 	lsr.w	r0, r0, r2
 8002f22:	bf18      	it	ne
 8002f24:	f040 0001 	orrne.w	r0, r0, #1
 8002f28:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 8002f2c:	ea4f 23d3 	mov.w	r3, r3, lsr #11
 8002f30:	fa03 fc0c 	lsl.w	ip, r3, ip
 8002f34:	ea40 000c 	orr.w	r0, r0, ip
 8002f38:	fa23 f302 	lsr.w	r3, r3, r2
 8002f3c:	ea4f 0343 	mov.w	r3, r3, lsl #1
 8002f40:	e7cc      	b.n	8002edc <__aeabi_d2f+0x14>
 8002f42:	ea7f 5362 	mvns.w	r3, r2, asr #21
 8002f46:	d107      	bne.n	8002f58 <__aeabi_d2f+0x90>
 8002f48:	ea50 3301 	orrs.w	r3, r0, r1, lsl #12
 8002f4c:	bf1e      	ittt	ne
 8002f4e:	f04f 40fe 	movne.w	r0, #2130706432	; 0x7f000000
 8002f52:	f440 0040 	orrne.w	r0, r0, #12582912	; 0xc00000
 8002f56:	4770      	bxne	lr
 8002f58:	f001 4000 	and.w	r0, r1, #2147483648	; 0x80000000
 8002f5c:	f040 40fe 	orr.w	r0, r0, #2130706432	; 0x7f000000
 8002f60:	f440 0000 	orr.w	r0, r0, #8388608	; 0x800000
 8002f64:	4770      	bx	lr
 8002f66:	bf00      	nop

08002f68 <_init>:
 8002f68:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002f6a:	bf00      	nop
 8002f6c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8002f6e:	bc08      	pop	{r3}
 8002f70:	469e      	mov	lr, r3
 8002f72:	4770      	bx	lr

08002f74 <_fini>:
 8002f74:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002f76:	bf00      	nop
 8002f78:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8002f7a:	bc08      	pop	{r3}
 8002f7c:	469e      	mov	lr, r3
 8002f7e:	4770      	bx	lr
 8002f80:	61646f6b 	.word	0x61646f6b
 8002f84:	6920616d 	.word	0x6920616d
 8002f88:	2074696e 	.word	0x2074696e
 8002f8c:	25206925 	.word	0x25206925
 8002f90:	203a2069 	.word	0x203a2069
 8002f94:	4f5b2000 	.word	0x4f5b2000
 8002f98:	000a5d4b 	.word	0x000a5d4b
 8002f9c:	41465b20 	.word	0x41465b20
 8002fa0:	44454c49 	.word	0x44454c49
 8002fa4:	000a0a5d 	.word	0x000a0a5d
 8002fa8:	432b5441 	.word	0x432b5441
 8002fac:	554d5049 	.word	0x554d5049
 8002fb0:	0d313d58 	.word	0x0d313d58
 8002fb4:	5441000a 	.word	0x5441000a
 8002fb8:	5049432b 	.word	0x5049432b
 8002fbc:	3d58554d 	.word	0x3d58554d
 8002fc0:	000a0d30 	.word	0x000a0d30
 8002fc4:	432b5441 	.word	0x432b5441
 8002fc8:	444f4d57 	.word	0x444f4d57
 8002fcc:	0d313d45 	.word	0x0d313d45
 8002fd0:	5441000a 	.word	0x5441000a
 8002fd4:	4a57432b 	.word	0x4a57432b
 8002fd8:	223d5041 	.word	0x223d5041
 8002fdc:	54454e00 	.word	0x54454e00
 8002fe0:	52414547 	.word	0x52414547
 8002fe4:	6d003338 	.word	0x6d003338
 8002fe8:	646f6c65 	.word	0x646f6c65
 8002fec:	69686369 	.word	0x69686369
 8002ff0:	34356c6c 	.word	0x34356c6c
 8002ff4:	0d220036 	.word	0x0d220036
 8002ff8:	5441000a 	.word	0x5441000a
 8002ffc:	5049432b 	.word	0x5049432b
 8003000:	56524553 	.word	0x56524553
 8003004:	313d5245 	.word	0x313d5245
 8003008:	0d30382c 	.word	0x0d30382c
 800300c:	5441000a 	.word	0x5441000a
 8003010:	5049432b 	.word	0x5049432b
 8003014:	534f4c43 	.word	0x534f4c43
 8003018:	000a0d45 	.word	0x000a0d45
 800301c:	432b5441 	.word	0x432b5441
 8003020:	54535049 	.word	0x54535049
 8003024:	3d545241 	.word	0x3d545241
 8003028:	50435422 	.word	0x50435422
 800302c:	00222c22 	.word	0x00222c22
 8003030:	43002c22 	.word	0x43002c22
 8003034:	454e4e4f 	.word	0x454e4e4f
 8003038:	41005443 	.word	0x41005443
 800303c:	49432b54 	.word	0x49432b54
 8003040:	4e455350 	.word	0x4e455350
 8003044:	3e003d44 	.word	0x3e003d44
 8003048:	4e455300 	.word	0x4e455300
 800304c:	4b4f2044 	.word	0x4b4f2044
 8003050:	50492b00 	.word	0x50492b00
 8003054:	31002c44 	.word	0x31002c44
 8003058:	2e302e30 	.word	0x2e302e30
 800305c:	00322e30 	.word	0x00322e30
 8003060:	74737973 	.word	0x74737973
 8003064:	74206d65 	.word	0x74206d65
 8003068:	20656d69 	.word	0x20656d69
 800306c:	5b207525 	.word	0x5b207525
 8003070:	0a5d736d 	.word	0x0a5d736d
 8003074:	20692500 	.word	0x20692500
 8003078:	0a206925 	.word	0x0a206925
 800307c:	00          	.byte	0x00
 800307d:	69          	.byte	0x69
 800307e:	6c64      	.short	0x6c64
 8003080:	75252065 	.word	0x75252065
 8003084:	0000000a 	.word	0x0000000a

08003088 <__EH_FRAME_BEGIN__>:
 8003088:	00000000                                ....
