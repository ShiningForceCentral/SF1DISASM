
; GAME SECTION 10 :
; 0x0C0000..0x0CC000 : Ending, intro, title and chapter screens graphics and palettes
; FREE SPACE : 1851 bytes.


p_tiles_EndingMax1:
		dc.l tiles_EndingMax1
p_tiles_EndingMax2:
		dc.l tiles_EndingMax2
p_tiles_EndingMax3:
		dc.l tiles_EndingMax3
p_tiles_EndingMax4:
		dc.l tiles_EndingMax4
p_tiles_EndingAdam:
		dc.l tiles_EndingAdam
p_tiles_EndingTheEnd:
		dc.l tiles_EndingTheEnd
p_palette_Ending:
		dc.l palette_Ending
p_tiles_EndingFarmer:
		dc.l tiles_EndingFarmer
p_palette_IntroScene1:
		dc.l palette_IntroScene1_1
		dc.l palette_IntroScene1_2
p_tiles_IntroScene1_1:
		dc.l tiles_IntroScene1_1; intro tablet pointers
p_tiles_IntroScene1_2:
		dc.l tiles_IntroScene1_2
p_palette_IntroScene2:
		dc.l palette_IntroScene2
p_tiles_IntroScene2:
		dc.l tiles_IntroScene2
p_palette_IntroScene3:
		dc.l palette_IntroScene3
p_tiles_IntroScene3_1:
		dc.l tiles_IntroScene3_1
p_tiles_IntroScene3_2:
		dc.l tiles_IntroScene3_2
p_palette_IntroScene4:
		dc.l palette_IntroScene4
p_tiles_IntroScene4_1:
		dc.l tiles_IntroScene4_1
p_tiles_IntroScene4_2:
		dc.l tiles_IntroScene4_2
p_tiles_IntroScene4_BG1:
		dc.l tiles_IntroScene4_BG1
p_tiles_IntroScene4_BG2:
		dc.l tiles_IntroScene4_BG2
p_palette_TitleScreen:
		dc.l palette_TitleScreen
p_tiles_TitleScreen:
		dc.l tiles_TitleScreen
p_layout_TitleScreen:
		dc.l word_C6984
p_palette_ChapterScreens:
		dc.l palette_ChapterScreen
pt_ChapterScreenTiles:
		dc.l tiles_ChapterScreen0
		dc.l tiles_ChapterScreen1
		dc.l tiles_ChapterScreen2
		dc.l tiles_ChapterScreen3
		dc.l tiles_ChapterScreen4
		dc.l tiles_ChapterScreen5
		dc.l tiles_ChapterScreen6
		dc.l tiles_ChapterScreen7
                
tiles_EndingMax1:
		incbin "data/graphics/specialscreens/ending/endingtiles-max1.bin"
tiles_EndingMax2:
		incbin "data/graphics/specialscreens/ending/endingtiles-max2.bin"
tiles_EndingMax3:
		incbin "data/graphics/specialscreens/ending/endingtiles-max3.bin"
tiles_EndingMax4:
		incbin "data/graphics/specialscreens/ending/endingtiles-max4.bin"
tiles_EndingAdam:
		incbin "data/graphics/specialscreens/ending/endingtiles-adam.bin"
tiles_EndingTheEnd:
		incbin "data/graphics/specialscreens/ending/endingtiles-theend.bin"
palette_Ending: incbin "data/graphics/specialscreens/ending/endingpalette.bin"
tiles_EndingFarmer:
		incbin "data/graphics/specialscreens/ending/endingtiles-farmer.bin"
palette_IntroScene1_1:
		incbin "data/graphics/specialscreens/intro/intropalette-scene1-1.bin"
palette_IntroScene1_2:
		incbin "data/graphics/specialscreens/intro/intropalette-scene1-2.bin"
tiles_IntroScene1_1:
		incbin "data/graphics/specialscreens/intro/introtiles-scene1-1.bin"
tiles_IntroScene1_2:
		incbin "data/graphics/specialscreens/intro/introtiles-scene1-2.bin"
palette_IntroScene2:
		incbin "data/graphics/specialscreens/intro/intropalette-scene2.bin"
tiles_IntroScene2:
		incbin "data/graphics/specialscreens/intro/introtiles-scene2.bin"
palette_IntroScene3:
		incbin "data/graphics/specialscreens/intro/intropalette-scene3.bin"
tiles_IntroScene3_1:
		incbin "data/graphics/specialscreens/intro/introtiles-scene3-1.bin"
tiles_IntroScene3_2:
		incbin "data/graphics/specialscreens/intro/introtiles-scene3-2.bin"
palette_IntroScene4:
		incbin "data/graphics/specialscreens/intro/intropalette-scene4.bin"
tiles_IntroScene4_1:
		incbin "data/graphics/specialscreens/intro/introtiles-scene4-1.bin"
tiles_IntroScene4_2:
		incbin "data/graphics/specialscreens/intro/introtiles-scene4-2.bin"
tiles_IntroScene4_BG1:
		incbin "data/graphics/specialscreens/intro/introtiles-scene4-bg1.bin"
tiles_IntroScene4_BG2:
		incbin "data/graphics/specialscreens/intro/introtiles-scene4-bg2.bin"
palette_TitleScreen:
		incbin "data/graphics/specialscreens/titlescreen/titlescreenpalette.bin"
tiles_TitleScreen:
		incbin "data/graphics/specialscreens/titlescreen/titlescreentiles.bin"
                
word_C6984:     vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 257
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 258
		vdpTile 259
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 260
		vdpTile 261
		vdpTile 256
		vdpTile 256
		vdpTile 262
		vdpTile 256
		vdpTile 290|FLIPPED_BIT
		vdpTile 290|FLIPPED_BIT
		vdpTile 386
		vdpTile 387
		vdpTile 256
		vdpTile 256
		vdpTile 388
		vdpTile 256
		vdpTile 256
		vdpTile 389
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 263
		vdpTile 264
		vdpTile 265
		vdpTile 266
		vdpTile 267
		vdpTile 268
		vdpTile 269
		vdpTile 270
		vdpTile 271
		vdpTile 272
		vdpTile 273
		vdpTile 274
		vdpTile 275
		vdpTile 390
		vdpTile 391
		vdpTile 392
		vdpTile 393
		vdpTile 394
		vdpTile 256
		vdpTile 395
		vdpTile 396
		vdpTile 397
		vdpTile 398
		vdpTile 491
		vdpTile 492
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 276
		vdpTile 277
		vdpTile 278
		vdpTile 279
		vdpTile 280
		vdpTile 281
		vdpTile 282
		vdpTile 283
		vdpTile 284
		vdpTile 285
		vdpTile 286
		vdpTile 287
		vdpTile 288
		vdpTile 399
		vdpTile 400
		vdpTile 401
		vdpTile 402
		vdpTile 403
		vdpTile 404
		vdpTile 405
		vdpTile 406
		vdpTile 407
		vdpTile 408
		vdpTile 263|MIRRORED_BIT|FLIPPED_BIT
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 289
		vdpTile 290
		vdpTile 291
		vdpTile 292
		vdpTile 293
		vdpTile 294
		vdpTile 295
		vdpTile 296
		vdpTile 297
		vdpTile 298
		vdpTile 299
		vdpTile 300
		vdpTile 301
		vdpTile 409
		vdpTile 410
		vdpTile 411
		vdpTile 412
		vdpTile 413
		vdpTile 414
		vdpTile 415
		vdpTile 416
		vdpTile 417
		vdpTile 256
		vdpTile 418
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 302
		vdpTile 303
		vdpTile 304
		vdpTile 305
		vdpTile 306
		vdpTile 307
		vdpTile 308
		vdpTile 309
		vdpTile 310
		vdpTile 311
		vdpTile 312
		vdpTile 313
		vdpTile 314
		vdpTile 419
		vdpTile 420
		vdpTile 421
		vdpTile 422
		vdpTile 423
		vdpTile 424
		vdpTile 425
		vdpTile 256
		vdpTile 426
		vdpTile 427
		vdpTile 428
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 315
		vdpTile 316
		vdpTile 317
		vdpTile 318
		vdpTile 319
		vdpTile 320
		vdpTile 321
		vdpTile 322
		vdpTile 323
		vdpTile 324
		vdpTile 325
		vdpTile 326
		vdpTile 327
		vdpTile 429
		vdpTile 430
		vdpTile 431
		vdpTile 432
		vdpTile 433
		vdpTile 434
		vdpTile 435
		vdpTile 256
		vdpTile 436
		vdpTile 437
		vdpTile 438
		vdpTile 439
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 328
		vdpTile 256
		vdpTile 329
		vdpTile 330
		vdpTile 331
		vdpTile 332
		vdpTile 333
		vdpTile 334
		vdpTile 335
		vdpTile 336
		vdpTile 337
		vdpTile 338
		vdpTile 339
		vdpTile 340
		vdpTile 341
		vdpTile 440
		vdpTile 441
		vdpTile 442
		vdpTile 443
		vdpTile 444
		vdpTile 445
		vdpTile 446
		vdpTile 256
		vdpTile 447
		vdpTile 448
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 342
		vdpTile 343
		vdpTile 344
		vdpTile 345
		vdpTile 346
		vdpTile 347
		vdpTile 348
		vdpTile 349
		vdpTile 350
		vdpTile 256
		vdpTile 351
		vdpTile 352
		vdpTile 353
		vdpTile 354
		vdpTile 355
		vdpTile 449
		vdpTile 450
		vdpTile 451
		vdpTile 452
		vdpTile 453
		vdpTile 454
		vdpTile 455
		vdpTile 456
		vdpTile 457
		vdpTile 458
		vdpTile 275
		vdpTile 459
		vdpTile 460
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 356
		vdpTile 357
		vdpTile 358
		vdpTile 359
		vdpTile 360
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 260|FLIPPED_BIT
		vdpTile 261|FLIPPED_BIT
		vdpTile 256
		vdpTile 256
		vdpTile 361
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 461
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 462
		vdpTile 463
		vdpTile 464
		vdpTile 465
		vdpTile 466
		vdpTile 467
		vdpTile 468
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 362
		vdpTile 363
		vdpTile 364
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 365
		vdpTile 366
		vdpTile 367
		vdpTile 368
		vdpTile 369
		vdpTile 370
		vdpTile 371
		vdpTile 372
		vdpTile 373
		vdpTile 374
		vdpTile 469
		vdpTile 470
		vdpTile 471
		vdpTile 472
		vdpTile 473
		vdpTile 474
		vdpTile 475
		vdpTile 476
		vdpTile 275|MIRRORED_BIT|FLIPPED_BIT
		vdpTile 477
		vdpTile 478
		vdpTile 479
		vdpTile 480
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 375
		vdpTile 275|FLIPPED_BIT
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 376
		vdpTile 377
		vdpTile 378
		vdpTile 379
		vdpTile 380
		vdpTile 381
		vdpTile 382
		vdpTile 383
		vdpTile 384
		vdpTile 385
		vdpTile 481
		vdpTile 482
		vdpTile 483
		vdpTile 484
		vdpTile 485
		vdpTile 486
		vdpTile 487
		vdpTile 488
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 489
		vdpTile 490
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 275|MIRRORED_BIT|FLIPPED_BIT
		vdpTile 439|FLIPPED_BIT
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 256
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile ASCII_AT_SIGN
		vdpTile 
		vdpTile ASCII_NUMBER_ONE
		vdpTile ASCII_NUMBER_NINE
		vdpTile ASCII_NUMBER_NINE
		vdpTile ASCII_NUMBER_THREE
		vdpTile 
		vdpTile ASCII_UPPERCASE_S
		vdpTile ASCII_UPPERCASE_E
		vdpTile ASCII_UPPERCASE_G
		vdpTile ASCII_UPPERCASE_A
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile ASCII_UPPERCASE_S
		vdpTile ASCII_UPPERCASE_O
		vdpTile ASCII_UPPERCASE_N
		vdpTile ASCII_UPPERCASE_I
		vdpTile ASCII_UPPERCASE_C
		vdpTile ASCII_SLASH
		vdpTile ASCII_UPPERCASE_C
		vdpTile ASCII_UPPERCASE_L
		vdpTile ASCII_UPPERCASE_I
		vdpTile ASCII_UPPERCASE_M
		vdpTile ASCII_UPPERCASE_A
		vdpTile ASCII_UPPERCASE_X
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
		vdpTile 
palette_ChapterScreen:
		incbin "data/graphics/specialscreens/chapterscreen/chapterscreenpalette.bin"
tiles_ChapterScreen0:
		incbin "data/graphics/specialscreens/chapterscreen/chapterscreentiles0.bin"
tiles_ChapterScreen1:
		incbin "data/graphics/specialscreens/chapterscreen/chapterscreentiles1.bin"
tiles_ChapterScreen2:
		incbin "data/graphics/specialscreens/chapterscreen/chapterscreentiles2.bin"
tiles_ChapterScreen3:
		incbin "data/graphics/specialscreens/chapterscreen/chapterscreentiles3.bin"
tiles_ChapterScreen4:
		incbin "data/graphics/specialscreens/chapterscreen/chapterscreentiles4.bin"
tiles_ChapterScreen5:
		incbin "data/graphics/specialscreens/chapterscreen/chapterscreentiles5.bin"
tiles_ChapterScreen6:
		incbin "data/graphics/specialscreens/chapterscreen/chapterscreentiles6.bin"
tiles_ChapterScreen7:
		incbin "data/graphics/specialscreens/chapterscreen/chapterscreentiles7.bin"
		align $4000
