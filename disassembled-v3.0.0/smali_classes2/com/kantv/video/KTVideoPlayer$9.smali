.class Lcom/kantv/video/KTVideoPlayer$9;
.super Ljava/lang/Object;
.source "KTVideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/video/KTVideoPlayer;->moreHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/video/KTVideoPlayer;


# direct methods
.method constructor <init>(Lcom/kantv/video/KTVideoPlayer;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17

    move-object/from16 v6, p0

    .line 340
    new-instance v7, Lcom/tandong/bottomview/view/BottomView;

    iget-object v0, v6, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/kantv/video/R$style;->BottomViewTheme_Defalut:I

    sget v2, Lcom/kantv/video/R$layout;->item_videomore:I

    invoke-direct {v7, v0, v1, v2}, Lcom/tandong/bottomview/view/BottomView;-><init>(Landroid/content/Context;II)V

    .line 341
    sget v0, Lcom/kantv/video/R$style;->BottomToTopAnim:I

    invoke-virtual {v7, v0}, Lcom/tandong/bottomview/view/BottomView;->setAnimation(I)V

    const/4 v8, 0x1

    .line 342
    invoke-virtual {v7, v8}, Lcom/tandong/bottomview/view/BottomView;->showBottomView(Z)V

    .line 344
    invoke-virtual {v7}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/kantv/video/R$id;->videomore_content_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 345
    invoke-virtual {v7}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/kantv/video/R$id;->play_delay_contain:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 346
    invoke-virtual {v7}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/kantv/video/R$id;->play_over:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 347
    invoke-virtual {v7}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/kantv/video/R$id;->play_over_30:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 348
    invoke-virtual {v7}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/kantv/video/R$id;->play_over_60:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 349
    invoke-virtual {v7}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/kantv/video/R$id;->on_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 350
    new-instance v15, Lcom/kantv/video/KTVideoPlayer$9$1;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/kantv/video/KTVideoPlayer$9$1;-><init>(Lcom/kantv/video/KTVideoPlayer$9;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 364
    invoke-virtual {v7}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/kantv/video/R$id;->videoset_timer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/kantv/video/KTVideoPlayer$9$2;

    invoke-direct {v1, v6, v9, v10}, Lcom/kantv/video/KTVideoPlayer$9$2;-><init>(Lcom/kantv/video/KTVideoPlayer$9;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    invoke-virtual {v11, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    invoke-virtual {v12, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    invoke-virtual {v13, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 380
    invoke-virtual {v14, v0}, Landroid/view/View;->setSelected(Z)V

    .line 381
    invoke-virtual {v11, v0}, Landroid/view/View;->setSelected(Z)V

    .line 382
    invoke-virtual {v12, v0}, Landroid/view/View;->setSelected(Z)V

    .line 383
    invoke-virtual {v13, v0}, Landroid/view/View;->setSelected(Z)V

    .line 385
    iget-object v1, v6, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v1}, Lcom/kantv/video/KTVideoPlayer;->access$1700(Lcom/kantv/video/KTVideoPlayer;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 386
    invoke-virtual {v14, v8}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 387
    :cond_0
    iget-object v1, v6, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v1}, Lcom/kantv/video/KTVideoPlayer;->access$1700(Lcom/kantv/video/KTVideoPlayer;)I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 388
    invoke-virtual {v11, v8}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 389
    :cond_1
    iget-object v1, v6, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v1}, Lcom/kantv/video/KTVideoPlayer;->access$1700(Lcom/kantv/video/KTVideoPlayer;)I

    move-result v1

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_2

    .line 390
    invoke-virtual {v12, v8}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 391
    :cond_2
    iget-object v1, v6, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v1}, Lcom/kantv/video/KTVideoPlayer;->access$1700(Lcom/kantv/video/KTVideoPlayer;)I

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_3

    .line 392
    invoke-virtual {v13, v8}, Landroid/view/View;->setSelected(Z)V

    .line 395
    :cond_3
    :goto_0
    invoke-virtual {v7}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/kantv/video/R$id;->group:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 396
    invoke-virtual {v7}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/kantv/video/R$id;->rb1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 397
    invoke-virtual {v7}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/kantv/video/R$id;->rb2:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 398
    invoke-virtual {v7}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/kantv/video/R$id;->rb3:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 399
    invoke-virtual {v7}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v5

    sget v9, Lcom/kantv/video/R$id;->rb4:I

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 400
    invoke-virtual {v7}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v9

    sget v10, Lcom/kantv/video/R$id;->rb5:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    .line 401
    invoke-virtual {v7}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v10

    sget v11, Lcom/kantv/video/R$id;->rb6:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    .line 402
    invoke-virtual {v7}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v11

    sget v12, Lcom/kantv/video/R$id;->rb7:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RadioButton;

    .line 403
    invoke-virtual {v7}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v12

    sget v13, Lcom/kantv/video/R$id;->rb8:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RadioButton;

    .line 404
    invoke-virtual {v7}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v13

    sget v14, Lcom/kantv/video/R$id;->videomore_layout:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    new-instance v14, Lcom/kantv/video/KTVideoPlayer$9$3;

    invoke-direct {v14, v6, v7}, Lcom/kantv/video/KTVideoPlayer$9$3;-><init>(Lcom/kantv/video/KTVideoPlayer$9;Lcom/tandong/bottomview/view/BottomView;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    invoke-virtual {v7}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v13

    sget v14, Lcom/kantv/video/R$id;->videomore_content_layout:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    new-instance v14, Lcom/kantv/video/KTVideoPlayer$9$4;

    invoke-direct {v14, v6}, Lcom/kantv/video/KTVideoPlayer$9$4;-><init>(Lcom/kantv/video/KTVideoPlayer$9;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    invoke-virtual {v7}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v13

    sget v14, Lcom/kantv/video/R$id;->videoset_cache:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    new-instance v14, Lcom/kantv/video/KTVideoPlayer$9$5;

    invoke-direct {v14, v6, v7}, Lcom/kantv/video/KTVideoPlayer$9$5;-><init>(Lcom/kantv/video/KTVideoPlayer$9;Lcom/tandong/bottomview/view/BottomView;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    invoke-virtual {v7}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v13

    sget v14, Lcom/kantv/video/R$id;->videoset_airplay:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    new-instance v14, Lcom/kantv/video/KTVideoPlayer$9$6;

    invoke-direct {v14, v6, v7}, Lcom/kantv/video/KTVideoPlayer$9$6;-><init>(Lcom/kantv/video/KTVideoPlayer$9;Lcom/tandong/bottomview/view/BottomView;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    invoke-virtual {v7}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v13

    sget v14, Lcom/kantv/video/R$id;->videoset_lineswitch:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    new-instance v14, Lcom/kantv/video/KTVideoPlayer$9$7;

    invoke-direct {v14, v6, v7}, Lcom/kantv/video/KTVideoPlayer$9$7;-><init>(Lcom/kantv/video/KTVideoPlayer$9;Lcom/tandong/bottomview/view/BottomView;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v14, "is_collect"

    invoke-static {v13, v14, v0}, Lcom/kantv/video/util/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_4

    .line 446
    invoke-virtual {v7}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    sget v14, Lcom/kantv/video/R$id;->videoset_collect:I

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v14, v6, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v14}, Lcom/kantv/video/KTVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/kantv/video/R$drawable;->videoset_collection_b:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v0, v13, v14, v13, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 448
    :cond_4
    invoke-virtual {v7}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    sget v14, Lcom/kantv/video/R$id;->videoset_collect:I

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v14, v6, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v14}, Lcom/kantv/video/KTVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/kantv/video/R$drawable;->videoset_collection:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v0, v13, v14, v13, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 450
    :goto_1
    invoke-virtual {v7}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    sget v13, Lcom/kantv/video/R$id;->videoset_collect:I

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v13, Lcom/kantv/video/KTVideoPlayer$9$8;

    invoke-direct {v13, v6, v7}, Lcom/kantv/video/KTVideoPlayer$9$8;-><init>(Lcom/kantv/video/KTVideoPlayer$9;Lcom/tandong/bottomview/view/BottomView;)V

    invoke-virtual {v0, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const-string v14, "autoskip_video"

    invoke-static {v0, v14, v13}, Lcom/kantv/video/util/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 467
    invoke-virtual {v7}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v13

    sget v14, Lcom/kantv/video/R$id;->autoSkipSwitch:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Switch;

    invoke-virtual {v13, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 468
    invoke-virtual {v7}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    sget v13, Lcom/kantv/video/R$id;->autoSkipSwitch:I

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    new-instance v13, Lcom/kantv/video/KTVideoPlayer$9$9;

    invoke-direct {v13, v6}, Lcom/kantv/video/KTVideoPlayer$9$9;-><init>(Lcom/kantv/video/KTVideoPlayer$9;)V

    invoke-virtual {v0, v13}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 478
    invoke-virtual {v7}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    sget v13, Lcom/kantv/video/R$id;->autoskip_layout:I

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v13, Lcom/kantv/video/KTVideoPlayer$9$10;

    invoke-direct {v13, v6, v7}, Lcom/kantv/video/KTVideoPlayer$9$10;-><init>(Lcom/kantv/video/KTVideoPlayer$9;Lcom/tandong/bottomview/view/BottomView;)V

    invoke-virtual {v0, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    invoke-virtual {v7}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    sget v13, Lcom/kantv/video/R$id;->seekbar1:I

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 491
    invoke-virtual {v7}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v7

    sget v13, Lcom/kantv/video/R$id;->seekbar2:I

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    .line 492
    new-instance v13, Lcom/kantv/video/util/AudioUtil;

    iget-object v14, v6, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v14}, Lcom/kantv/video/KTVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v14

    iget-object v15, v6, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v15}, Lcom/kantv/video/KTVideoPlayer;->access$1900(Lcom/kantv/video/KTVideoPlayer;)Landroid/view/Window;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/kantv/video/util/AudioUtil;-><init>(Landroid/content/Context;Landroid/view/Window;)V

    .line 493
    iget-object v14, v6, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v13}, Lcom/kantv/video/util/AudioUtil;->getMediaVolume()I

    move-result v15

    invoke-static {v14, v15}, Lcom/kantv/video/KTVideoPlayer;->access$2002(Lcom/kantv/video/KTVideoPlayer;I)I

    .line 494
    iget-object v14, v6, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v14}, Lcom/kantv/video/KTVideoPlayer;->access$2000(Lcom/kantv/video/KTVideoPlayer;)I

    move-result v14

    invoke-virtual {v0, v14}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 495
    iget-object v14, v6, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v13}, Lcom/kantv/video/util/AudioUtil;->getSystemBrightness()I

    move-result v15

    invoke-static {v14, v15}, Lcom/kantv/video/KTVideoPlayer;->access$2102(Lcom/kantv/video/KTVideoPlayer;I)I

    .line 496
    iget-object v14, v6, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v14}, Lcom/kantv/video/KTVideoPlayer;->access$2100(Lcom/kantv/video/KTVideoPlayer;)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 497
    new-instance v14, Lcom/kantv/video/KTVideoPlayer$9$11;

    invoke-direct {v14, v6, v13}, Lcom/kantv/video/KTVideoPlayer$9$11;-><init>(Lcom/kantv/video/KTVideoPlayer$9;Lcom/kantv/video/util/AudioUtil;)V

    invoke-virtual {v0, v14}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 514
    new-instance v0, Lcom/kantv/video/KTVideoPlayer$9$12;

    invoke-direct {v0, v6, v13}, Lcom/kantv/video/KTVideoPlayer$9$12;-><init>(Lcom/kantv/video/KTVideoPlayer$9;Lcom/kantv/video/util/AudioUtil;)V

    invoke-virtual {v7, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 531
    iget-object v0, v6, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$2200(Lcom/kantv/video/KTVideoPlayer;)F

    move-result v0

    float-to-double v13, v0

    const-wide/high16 v15, 0x3fd0000000000000L    # 0.25

    cmpl-double v0, v13, v15

    if-nez v0, :cond_5

    .line 532
    invoke-virtual {v2, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_2

    .line 533
    :cond_5
    iget-object v0, v6, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$2200(Lcom/kantv/video/KTVideoPlayer;)F

    move-result v0

    float-to-double v13, v0

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v13, v15

    if-nez v0, :cond_6

    .line 534
    invoke-virtual {v3, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 535
    :cond_6
    iget-object v0, v6, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$2200(Lcom/kantv/video/KTVideoPlayer;)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_7

    .line 536
    invoke-virtual {v4, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 537
    :cond_7
    iget-object v0, v6, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$2200(Lcom/kantv/video/KTVideoPlayer;)F

    move-result v0

    float-to-double v2, v0

    const-wide/high16 v13, 0x3ff4000000000000L    # 1.25

    cmpl-double v0, v2, v13

    if-nez v0, :cond_8

    .line 538
    invoke-virtual {v5, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 539
    :cond_8
    iget-object v0, v6, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$2200(Lcom/kantv/video/KTVideoPlayer;)F

    move-result v0

    float-to-double v2, v0

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    cmpl-double v0, v2, v4

    if-nez v0, :cond_9

    .line 540
    invoke-virtual {v9, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 541
    :cond_9
    iget-object v0, v6, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$2200(Lcom/kantv/video/KTVideoPlayer;)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_a

    .line 542
    invoke-virtual {v10, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 543
    :cond_a
    iget-object v0, v6, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$2200(Lcom/kantv/video/KTVideoPlayer;)F

    move-result v0

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_b

    .line 544
    invoke-virtual {v11, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 545
    :cond_b
    iget-object v0, v6, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$2200(Lcom/kantv/video/KTVideoPlayer;)F

    move-result v0

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_c

    .line 546
    invoke-virtual {v12, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 549
    :cond_c
    :goto_2
    new-instance v0, Lcom/kantv/video/KTVideoPlayer$9$13;

    invoke-direct {v0, v6}, Lcom/kantv/video/KTVideoPlayer$9$13;-><init>(Lcom/kantv/video/KTVideoPlayer$9;)V

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method
