.class public Lcom/transitionseverywhere/PathParser$PathDataNode;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/PathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathDataNode"
.end annotation


# instance fields
.field private mParams:[F

.field private mType:C


# direct methods
.method private constructor <init>(C[F)V
    .locals 0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-char p1, p0, Lcom/transitionseverywhere/PathParser$PathDataNode;->mType:C

    .line 245
    iput-object p2, p0, Lcom/transitionseverywhere/PathParser$PathDataNode;->mParams:[F

    return-void
.end method

.method synthetic constructor <init>(C[FLcom/transitionseverywhere/PathParser$1;)V
    .locals 0

    .line 239
    invoke-direct {p0, p1, p2}, Lcom/transitionseverywhere/PathParser$PathDataNode;-><init>(C[F)V

    return-void
.end method

.method private constructor <init>(Lcom/transitionseverywhere/PathParser$PathDataNode;)V
    .locals 1

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iget-char v0, p1, Lcom/transitionseverywhere/PathParser$PathDataNode;->mType:C

    iput-char v0, p0, Lcom/transitionseverywhere/PathParser$PathDataNode;->mType:C

    .line 250
    iget-object p1, p1, Lcom/transitionseverywhere/PathParser$PathDataNode;->mParams:[F

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Lcom/transitionseverywhere/PathParser$PathDataNode;->mParams:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/transitionseverywhere/PathParser$PathDataNode;Lcom/transitionseverywhere/PathParser$1;)V
    .locals 0

    .line 239
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/PathParser$PathDataNode;-><init>(Lcom/transitionseverywhere/PathParser$PathDataNode;)V

    return-void
.end method

.method static synthetic access$100(Lcom/transitionseverywhere/PathParser$PathDataNode;)C
    .locals 0

    .line 239
    iget-char p0, p0, Lcom/transitionseverywhere/PathParser$PathDataNode;->mType:C

    return p0
.end method

.method static synthetic access$102(Lcom/transitionseverywhere/PathParser$PathDataNode;C)C
    .locals 0

    .line 239
    iput-char p1, p0, Lcom/transitionseverywhere/PathParser$PathDataNode;->mType:C

    return p1
.end method

.method static synthetic access$200(Lcom/transitionseverywhere/PathParser$PathDataNode;)[F
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/transitionseverywhere/PathParser$PathDataNode;->mParams:[F

    return-object p0
.end method

.method private static addCommand(Landroid/graphics/Path;[FCC[F)V
    .locals 19

    move-object/from16 v10, p0

    move-object/from16 v11, p4

    const/4 v12, 0x0

    .line 289
    aget v0, p1, v12

    const/4 v13, 0x1

    .line 290
    aget v1, p1, v13

    const/4 v14, 0x2

    .line 291
    aget v2, p1, v14

    const/4 v15, 0x3

    .line 292
    aget v3, p1, v15

    sparse-switch p3, :sswitch_data_0

    :sswitch_0
    const/16 v16, 0x2

    goto :goto_0

    .line 299
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->close()V

    return-void

    :sswitch_2
    const/4 v4, 0x4

    const/16 v16, 0x4

    goto :goto_0

    :sswitch_3
    const/16 v16, 0x1

    goto :goto_0

    :sswitch_4
    const/4 v4, 0x6

    const/16 v16, 0x6

    goto :goto_0

    :sswitch_5
    const/4 v4, 0x7

    const/16 v16, 0x7

    :goto_0
    move v8, v0

    move v7, v1

    const/4 v9, 0x0

    move/from16 v0, p2

    .line 330
    :goto_1
    array-length v1, v11

    if-ge v9, v1, :cond_c

    const/16 v1, 0x51

    const/16 v4, 0x43

    const/16 v5, 0x74

    const/16 v6, 0x73

    const/16 v15, 0x71

    const/16 v14, 0x63

    const/high16 v17, 0x40000000    # 2.0f

    const/4 v13, 0x0

    sparse-switch p3, :sswitch_data_1

    move v12, v7

    move v7, v8

    move/from16 v18, v9

    goto/16 :goto_12

    :sswitch_6
    add-int/lit8 v0, v9, 0x0

    .line 365
    aget v1, v11, v0

    invoke-virtual {v10, v13, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 366
    aget v0, v11, v0

    goto/16 :goto_6

    :sswitch_7
    if-eq v0, v15, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x54

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    goto :goto_3

    :cond_1
    :goto_2
    sub-float v13, v8, v2

    sub-float v0, v7, v3

    :goto_3
    add-int/lit8 v1, v9, 0x0

    .line 444
    aget v2, v11, v1

    add-int/lit8 v3, v9, 0x1

    aget v4, v11, v3

    invoke-virtual {v10, v13, v0, v2, v4}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    add-float/2addr v13, v8

    add-float/2addr v0, v7

    .line 448
    aget v1, v11, v1

    add-float/2addr v8, v1

    .line 449
    aget v1, v11, v3

    add-float/2addr v7, v1

    move v3, v0

    move/from16 v18, v9

    move v2, v13

    goto/16 :goto_13

    :sswitch_8
    if-eq v0, v14, :cond_3

    if-eq v0, v6, :cond_3

    if-eq v0, v4, :cond_3

    const/16 v1, 0x53

    if-ne v0, v1, :cond_2

    goto :goto_4

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_5

    :cond_3
    :goto_4
    sub-float v0, v8, v2

    sub-float v1, v7, v3

    move v2, v1

    move v1, v0

    :goto_5
    add-int/lit8 v13, v9, 0x0

    .line 398
    aget v3, v11, v13

    add-int/lit8 v14, v9, 0x1

    aget v4, v11, v14

    add-int/lit8 v15, v9, 0x2

    aget v5, v11, v15

    add-int/lit8 v17, v9, 0x3

    aget v6, v11, v17

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 402
    aget v0, v11, v13

    add-float/2addr v0, v8

    .line 403
    aget v1, v11, v14

    add-float/2addr v1, v7

    .line 404
    aget v2, v11, v15

    add-float/2addr v8, v2

    .line 405
    aget v2, v11, v17

    goto/16 :goto_7

    :sswitch_9
    add-int/lit8 v0, v9, 0x0

    .line 423
    aget v1, v11, v0

    add-int/lit8 v2, v9, 0x1

    aget v3, v11, v2

    add-int/lit8 v4, v9, 0x2

    aget v5, v11, v4

    add-int/lit8 v6, v9, 0x3

    aget v13, v11, v6

    invoke-virtual {v10, v1, v3, v5, v13}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 424
    aget v0, v11, v0

    add-float/2addr v0, v8

    .line 425
    aget v1, v11, v2

    add-float/2addr v1, v7

    .line 426
    aget v2, v11, v4

    add-float/2addr v8, v2

    .line 427
    aget v2, v11, v6

    goto :goto_7

    :sswitch_a
    add-int/lit8 v0, v9, 0x0

    .line 333
    aget v1, v11, v0

    add-int/lit8 v4, v9, 0x1

    aget v5, v11, v4

    invoke-virtual {v10, v1, v5}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 334
    aget v0, v11, v0

    add-float/2addr v8, v0

    .line 335
    aget v0, v11, v4

    goto :goto_6

    :sswitch_b
    add-int/lit8 v0, v9, 0x0

    .line 343
    aget v1, v11, v0

    add-int/lit8 v4, v9, 0x1

    aget v5, v11, v4

    invoke-virtual {v10, v1, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 344
    aget v0, v11, v0

    add-float/2addr v8, v0

    .line 345
    aget v0, v11, v4

    :goto_6
    add-float/2addr v7, v0

    goto :goto_8

    :sswitch_c
    add-int/lit8 v0, v9, 0x0

    .line 357
    aget v1, v11, v0

    invoke-virtual {v10, v1, v13}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 358
    aget v0, v11, v0

    add-float/2addr v8, v0

    goto :goto_8

    :sswitch_d
    add-int/lit8 v0, v9, 0x0

    .line 373
    aget v1, v11, v0

    add-int/lit8 v0, v9, 0x1

    aget v2, v11, v0

    add-int/lit8 v13, v9, 0x2

    aget v3, v11, v13

    add-int/lit8 v14, v9, 0x3

    aget v4, v11, v14

    add-int/lit8 v15, v9, 0x4

    aget v5, v11, v15

    add-int/lit8 v17, v9, 0x5

    aget v6, v11, v17

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 376
    aget v0, v11, v13

    add-float/2addr v0, v8

    .line 377
    aget v1, v11, v14

    add-float/2addr v1, v7

    .line 378
    aget v2, v11, v15

    add-float/2addr v8, v2

    .line 379
    aget v2, v11, v17

    :goto_7
    add-float/2addr v7, v2

    move v2, v0

    move v3, v1

    :goto_8
    move/from16 v18, v9

    goto/16 :goto_13

    :sswitch_e
    add-int/lit8 v14, v9, 0x5

    .line 468
    aget v0, v11, v14

    add-float v3, v0, v8

    add-int/lit8 v15, v9, 0x6

    aget v0, v11, v15

    add-float v4, v0, v7

    add-int/lit8 v0, v9, 0x0

    aget v5, v11, v0

    add-int/lit8 v0, v9, 0x1

    aget v6, v11, v0

    add-int/lit8 v0, v9, 0x2

    aget v17, v11, v0

    add-int/lit8 v0, v9, 0x3

    aget v0, v11, v0

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_4

    const/16 v18, 0x1

    goto :goto_9

    :cond_4
    const/16 v18, 0x0

    :goto_9
    add-int/lit8 v0, v9, 0x4

    aget v0, v11, v0

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_5

    const/4 v13, 0x1

    goto :goto_a

    :cond_5
    const/4 v13, 0x0

    :goto_a
    move-object/from16 v0, p0

    move v1, v8

    move v2, v7

    move v12, v7

    move/from16 v7, v17

    move v10, v8

    move/from16 v8, v18

    move/from16 v18, v9

    move v9, v13

    invoke-static/range {v0 .. v9}, Lcom/transitionseverywhere/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 478
    aget v0, v11, v14

    add-float v8, v10, v0

    .line 479
    aget v0, v11, v15

    add-float v7, v12, v0

    move-object/from16 v10, p0

    goto/16 :goto_11

    :sswitch_f
    move v12, v7

    move v10, v8

    move/from16 v18, v9

    .line 354
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->close()V

    move v7, v10

    move-object/from16 v10, p0

    goto/16 :goto_12

    :sswitch_10
    move v10, v8

    move/from16 v18, v9

    add-int/lit8 v9, v18, 0x0

    .line 369
    aget v0, v11, v9

    move v7, v10

    move-object/from16 v10, p0

    invoke-virtual {v10, v7, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 370
    aget v0, v11, v9

    move v8, v7

    :goto_b
    move v7, v0

    goto/16 :goto_13

    :sswitch_11
    move v12, v7

    move v7, v8

    move/from16 v18, v9

    if-eq v0, v15, :cond_6

    if-eq v0, v5, :cond_6

    if-eq v0, v1, :cond_6

    const/16 v1, 0x54

    if-ne v0, v1, :cond_7

    :cond_6
    mul-float v8, v7, v17

    sub-float/2addr v8, v2

    mul-float v7, v12, v17

    sub-float/2addr v7, v3

    move v12, v7

    move v7, v8

    :cond_7
    add-int/lit8 v9, v18, 0x0

    .line 459
    aget v0, v11, v9

    add-int/lit8 v1, v18, 0x1

    aget v2, v11, v1

    invoke-virtual {v10, v7, v12, v0, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 463
    aget v8, v11, v9

    .line 464
    aget v0, v11, v1

    move v2, v7

    move v3, v12

    goto :goto_b

    :sswitch_12
    move v12, v7

    move v7, v8

    move/from16 v18, v9

    if-eq v0, v14, :cond_9

    if-eq v0, v6, :cond_9

    if-eq v0, v4, :cond_9

    const/16 v1, 0x53

    if-ne v0, v1, :cond_8

    goto :goto_c

    :cond_8
    move v1, v7

    move v2, v12

    goto :goto_d

    :cond_9
    :goto_c
    mul-float v8, v7, v17

    sub-float/2addr v8, v2

    mul-float v7, v12, v17

    sub-float/2addr v7, v3

    move v2, v7

    move v1, v8

    :goto_d
    add-int/lit8 v9, v18, 0x0

    .line 415
    aget v3, v11, v9

    add-int/lit8 v7, v18, 0x1

    aget v4, v11, v7

    add-int/lit8 v8, v18, 0x2

    aget v5, v11, v8

    add-int/lit8 v12, v18, 0x3

    aget v6, v11, v12

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 417
    aget v0, v11, v9

    .line 418
    aget v1, v11, v7

    .line 419
    aget v8, v11, v8

    .line 420
    aget v7, v11, v12

    goto :goto_e

    :sswitch_13
    move/from16 v18, v9

    add-int/lit8 v9, v18, 0x0

    .line 430
    aget v0, v11, v9

    add-int/lit8 v1, v18, 0x1

    aget v2, v11, v1

    add-int/lit8 v3, v18, 0x2

    aget v4, v11, v3

    add-int/lit8 v5, v18, 0x3

    aget v6, v11, v5

    invoke-virtual {v10, v0, v2, v4, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 431
    aget v0, v11, v9

    .line 432
    aget v1, v11, v1

    .line 433
    aget v8, v11, v3

    .line 434
    aget v7, v11, v5

    :goto_e
    move v2, v0

    move v3, v1

    goto/16 :goto_13

    :sswitch_14
    move/from16 v18, v9

    add-int/lit8 v9, v18, 0x0

    .line 338
    aget v0, v11, v9

    add-int/lit8 v1, v18, 0x1

    aget v4, v11, v1

    invoke-virtual {v10, v0, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 339
    aget v8, v11, v9

    .line 340
    aget v7, v11, v1

    goto/16 :goto_13

    :sswitch_15
    move/from16 v18, v9

    add-int/lit8 v9, v18, 0x0

    .line 348
    aget v0, v11, v9

    add-int/lit8 v1, v18, 0x1

    aget v4, v11, v1

    invoke-virtual {v10, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 349
    aget v8, v11, v9

    .line 350
    aget v7, v11, v1

    goto/16 :goto_13

    :sswitch_16
    move v12, v7

    move/from16 v18, v9

    add-int/lit8 v9, v18, 0x0

    .line 361
    aget v0, v11, v9

    invoke-virtual {v10, v0, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 362
    aget v8, v11, v9

    goto/16 :goto_13

    :sswitch_17
    move/from16 v18, v9

    add-int/lit8 v9, v18, 0x0

    .line 383
    aget v1, v11, v9

    add-int/lit8 v9, v18, 0x1

    aget v2, v11, v9

    add-int/lit8 v9, v18, 0x2

    aget v3, v11, v9

    add-int/lit8 v7, v18, 0x3

    aget v4, v11, v7

    add-int/lit8 v8, v18, 0x4

    aget v5, v11, v8

    add-int/lit8 v12, v18, 0x5

    aget v6, v11, v12

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 385
    aget v8, v11, v8

    .line 386
    aget v0, v11, v12

    .line 387
    aget v1, v11, v9

    .line 388
    aget v2, v11, v7

    move v7, v0

    move v3, v2

    move v2, v1

    goto :goto_13

    :sswitch_18
    move v12, v7

    move v7, v8

    move/from16 v18, v9

    add-int/lit8 v14, v18, 0x5

    .line 484
    aget v3, v11, v14

    add-int/lit8 v15, v18, 0x6

    aget v4, v11, v15

    add-int/lit8 v9, v18, 0x0

    aget v5, v11, v9

    add-int/lit8 v9, v18, 0x1

    aget v6, v11, v9

    add-int/lit8 v9, v18, 0x2

    aget v8, v11, v9

    add-int/lit8 v9, v18, 0x3

    aget v0, v11, v9

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_a

    const/4 v9, 0x1

    goto :goto_f

    :cond_a
    const/4 v9, 0x0

    :goto_f
    add-int/lit8 v0, v18, 0x4

    aget v0, v11, v0

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_b

    const/4 v13, 0x1

    goto :goto_10

    :cond_b
    const/4 v13, 0x0

    :goto_10
    move-object/from16 v0, p0

    move v1, v7

    move v2, v12

    move v7, v8

    move v8, v9

    move v9, v13

    invoke-static/range {v0 .. v9}, Lcom/transitionseverywhere/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 494
    aget v8, v11, v14

    .line 495
    aget v7, v11, v15

    :goto_11
    move v3, v7

    move v2, v8

    goto :goto_13

    :goto_12
    move v8, v7

    move v7, v12

    :goto_13
    add-int v9, v18, v16

    move/from16 v0, p3

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x2

    const/4 v15, 0x3

    goto/16 :goto_1

    :cond_c
    move v12, v7

    move v7, v8

    const/4 v0, 0x0

    .line 502
    aput v7, p1, v0

    const/4 v0, 0x1

    .line 503
    aput v12, p1, v0

    const/4 v0, 0x2

    .line 504
    aput v2, p1, v0

    const/4 v0, 0x3

    .line 505
    aput v3, p1, v0

    return-void

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_5
        0x43 -> :sswitch_4
        0x48 -> :sswitch_3
        0x4c -> :sswitch_0
        0x4d -> :sswitch_0
        0x51 -> :sswitch_2
        0x53 -> :sswitch_2
        0x54 -> :sswitch_0
        0x56 -> :sswitch_3
        0x5a -> :sswitch_1
        0x61 -> :sswitch_5
        0x63 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6c -> :sswitch_0
        0x6d -> :sswitch_0
        0x71 -> :sswitch_2
        0x73 -> :sswitch_2
        0x74 -> :sswitch_0
        0x76 -> :sswitch_3
        0x7a -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x41 -> :sswitch_18
        0x43 -> :sswitch_17
        0x48 -> :sswitch_16
        0x4c -> :sswitch_15
        0x4d -> :sswitch_14
        0x51 -> :sswitch_13
        0x53 -> :sswitch_12
        0x54 -> :sswitch_11
        0x56 -> :sswitch_10
        0x5a -> :sswitch_f
        0x61 -> :sswitch_e
        0x63 -> :sswitch_d
        0x68 -> :sswitch_c
        0x6c -> :sswitch_b
        0x6d -> :sswitch_a
        0x71 -> :sswitch_9
        0x73 -> :sswitch_8
        0x74 -> :sswitch_7
        0x76 -> :sswitch_6
        0x7a -> :sswitch_f
    .end sparse-switch
.end method

.method private static arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V
    .locals 48

    move-wide/from16 v0, p5

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v4, p17, v2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    .line 613
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 616
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    .line 617
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    .line 618
    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    .line 619
    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    neg-double v13, v0

    mul-double v15, v13, v5

    mul-double v17, v15, v11

    mul-double v19, p7, v7

    mul-double v21, v19, v9

    sub-double v17, v17, v21

    mul-double v13, v13, v7

    mul-double v11, v11, v13

    mul-double v21, p7, v5

    mul-double v9, v9, v21

    add-double/2addr v11, v9

    int-to-double v9, v4

    .line 623
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double v9, p17, v9

    const/16 v23, 0x0

    move-wide/from16 v23, p9

    move-wide/from16 v27, p11

    move-wide/from16 v29, v11

    move-wide/from16 v25, v17

    const/4 v11, 0x0

    move-wide/from16 v17, p15

    :goto_0
    if-ge v11, v4, :cond_0

    add-double v31, v17, v9

    .line 626
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sin(D)D

    move-result-wide v33

    .line 627
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->cos(D)D

    move-result-wide v35

    mul-double v37, v0, v5

    mul-double v37, v37, v35

    add-double v37, p1, v37

    mul-double v39, v19, v33

    sub-double v2, v37, v39

    mul-double v37, v0, v7

    mul-double v37, v37, v35

    add-double v37, p3, v37

    mul-double v39, v21, v33

    add-double v0, v37, v39

    mul-double v37, v15, v33

    mul-double v39, v19, v35

    sub-double v37, v37, v39

    mul-double v33, v33, v13

    mul-double v35, v35, v21

    add-double v33, v33, v35

    sub-double v17, v31, v17

    const-wide/high16 v35, 0x4000000000000000L    # 2.0

    div-double v35, v17, v35

    .line 632
    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->tan(D)D

    move-result-wide v35

    .line 634
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    const-wide/high16 v39, 0x4008000000000000L    # 3.0

    mul-double v43, v35, v39

    mul-double v43, v43, v35

    const-wide/high16 v35, 0x4010000000000000L    # 4.0

    add-double v43, v43, v35

    invoke-static/range {v43 .. v44}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v41

    const-wide/high16 v43, 0x3ff0000000000000L    # 1.0

    sub-double v41, v41, v43

    mul-double v17, v17, v41

    div-double v17, v17, v39

    mul-double v25, v25, v17

    move v12, v4

    move-wide/from16 v39, v5

    add-double v4, v23, v25

    mul-double v29, v29, v17

    move-wide/from16 p13, v7

    add-double v6, v27, v29

    mul-double v23, v17, v37

    move-wide/from16 p7, v9

    sub-double v8, v2, v23

    mul-double v17, v17, v33

    move/from16 p9, v12

    move-wide/from16 v23, v13

    sub-double v12, v0, v17

    double-to-float v4, v4

    double-to-float v5, v6

    double-to-float v6, v8

    double-to-float v7, v12

    double-to-float v8, v2

    double-to-float v9, v0

    move-object/from16 v41, p0

    move/from16 v42, v4

    move/from16 v43, v5

    move/from16 v44, v6

    move/from16 v45, v7

    move/from16 v46, v8

    move/from16 v47, v9

    .line 640
    invoke-virtual/range {v41 .. v47}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v9, p7

    move/from16 v4, p9

    move-wide/from16 v7, p13

    move-wide/from16 v27, v0

    move-wide/from16 v13, v23

    move-wide/from16 v17, v31

    move-wide/from16 v29, v33

    move-wide/from16 v25, v37

    move-wide/from16 v5, v39

    move-wide/from16 v0, p5

    move-wide/from16 v23, v2

    move-wide/from16 v2, v35

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private static drawArc(Landroid/graphics/Path;FFFFFFFZZ)V
    .locals 41

    move/from16 v1, p1

    move/from16 v3, p3

    move/from16 v0, p5

    move/from16 v2, p6

    move/from16 v7, p7

    move/from16 v9, p9

    float-to-double v4, v7

    .line 520
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v19

    .line 522
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 523
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    float-to-double v13, v1

    .line 526
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v15, v13, v4

    move/from16 v6, p2

    move-wide/from16 v17, v13

    float-to-double v13, v6

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v21, v13, v10

    add-double v15, v15, v21

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v15, v6

    neg-float v8, v1

    float-to-double v8, v8

    .line 527
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v10

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v21, v13, v4

    add-double v8, v8, v21

    move-wide/from16 v21, v13

    float-to-double v13, v2

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v13

    float-to-double v1, v3

    .line 528
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v4

    move/from16 v12, p4

    move-wide/from16 v23, v8

    float-to-double v8, v12

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v25, v8, v10

    add-double v1, v1, v25

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v6

    neg-float v12, v3

    move-wide/from16 v25, v6

    float-to-double v6, v12

    .line 529
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v4

    add-double/2addr v6, v8

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v13

    sub-double v8, v15, v1

    sub-double v27, v23, v6

    add-double v29, v15, v1

    const-wide/high16 v31, 0x4000000000000000L    # 2.0

    div-double v29, v29, v31

    add-double v33, v23, v6

    div-double v33, v33, v31

    mul-double v31, v8, v8

    mul-double v35, v27, v27

    move-wide/from16 v37, v10

    add-double v10, v31, v35

    const-wide/16 v31, 0x0

    cmpl-double v12, v10, v31

    if-nez v12, :cond_0

    .line 539
    sget-object v0, Lcom/transitionseverywhere/PathParser;->LOGTAG:Ljava/lang/String;

    const-string v1, " Points are coincident"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/high16 v35, 0x3ff0000000000000L    # 1.0

    div-double v35, v35, v10

    const-wide/high16 v39, 0x3fd0000000000000L    # 0.25

    sub-double v35, v35, v39

    cmpg-double v12, v35, v31

    if-gez v12, :cond_1

    .line 544
    sget-object v1, Lcom/transitionseverywhere/PathParser;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Points are too far apart "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v4, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v1, v4

    double-to-float v1, v1

    mul-float v5, v0, v1

    mul-float v6, p6, v1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 546
    invoke-static/range {v0 .. v9}, Lcom/transitionseverywhere/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    return-void

    .line 550
    :cond_1
    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double v8, v8, v10

    mul-double v10, v10, v27

    move/from16 v0, p8

    move/from16 v3, p9

    if-ne v0, v3, :cond_2

    sub-double v29, v29, v10

    add-double v33, v33, v8

    goto :goto_0

    :cond_2
    add-double v29, v29, v10

    sub-double v33, v33, v8

    :goto_0
    sub-double v8, v23, v33

    sub-double v10, v15, v29

    .line 563
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v23

    sub-double v6, v6, v33

    sub-double v1, v1, v29

    .line 565
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    sub-double v0, v0, v23

    cmpl-double v2, v0, v31

    if-ltz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eq v3, v2, :cond_5

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v6, v0, v31

    if-lez v6, :cond_4

    sub-double/2addr v0, v2

    goto :goto_2

    :cond_4
    add-double/2addr v0, v2

    .line 576
    :cond_5
    :goto_2
    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v29, v29, v25

    .line 577
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v33, v33, v13

    mul-double v2, v29, v4

    mul-double v10, v33, v37

    sub-double v7, v2, v10

    move-wide/from16 v2, v25

    mul-double v29, v29, v37

    mul-double v33, v33, v4

    add-double v9, v29, v33

    move-object/from16 v6, p0

    move-wide v11, v2

    move-wide/from16 v2, v17

    move-wide/from16 v4, v21

    move-wide v15, v2

    move-wide/from16 v17, v4

    move-wide/from16 v21, v23

    move-wide/from16 v23, v0

    .line 582
    invoke-static/range {v6 .. v24}, Lcom/transitionseverywhere/PathParser$PathDataNode;->arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V

    return-void
.end method

.method public static nodesToPath([Lcom/transitionseverywhere/PathParser$PathDataNode;Landroid/graphics/Path;)V
    .locals 5

    const/4 v0, 0x4

    .line 260
    new-array v0, v0, [F

    const/16 v1, 0x6d

    const/4 v2, 0x0

    .line 262
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 263
    aget-object v3, p0, v2

    iget-char v3, v3, Lcom/transitionseverywhere/PathParser$PathDataNode;->mType:C

    aget-object v4, p0, v2

    iget-object v4, v4, Lcom/transitionseverywhere/PathParser$PathDataNode;->mParams:[F

    invoke-static {p1, v0, v1, v3, v4}, Lcom/transitionseverywhere/PathParser$PathDataNode;->addCommand(Landroid/graphics/Path;[FCC[F)V

    .line 264
    aget-object v1, p0, v2

    iget-char v1, v1, Lcom/transitionseverywhere/PathParser$PathDataNode;->mType:C

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public interpolatePathDataNode(Lcom/transitionseverywhere/PathParser$PathDataNode;Lcom/transitionseverywhere/PathParser$PathDataNode;F)V
    .locals 4

    const/4 v0, 0x0

    .line 279
    :goto_0
    iget-object v1, p1, Lcom/transitionseverywhere/PathParser$PathDataNode;->mParams:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/transitionseverywhere/PathParser$PathDataNode;->mParams:[F

    aget v1, v1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p3

    mul-float v1, v1, v3

    iget-object v3, p2, Lcom/transitionseverywhere/PathParser$PathDataNode;->mParams:[F

    aget v3, v3, v0

    mul-float v3, v3, p3

    add-float/2addr v1, v3

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method