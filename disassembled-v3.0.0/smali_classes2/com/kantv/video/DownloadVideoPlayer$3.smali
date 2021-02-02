.class Lcom/kantv/video/DownloadVideoPlayer$3;
.super Ljava/lang/Object;
.source "DownloadVideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/video/DownloadVideoPlayer;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/video/DownloadVideoPlayer;


# direct methods
.method constructor <init>(Lcom/kantv/video/DownloadVideoPlayer;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14

    .line 204
    new-instance p1, Lcom/tandong/bottomview/view/BottomView;

    iget-object v0, p0, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/DownloadVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/kantv/video/R$style;->BottomViewTheme_Defalut:I

    sget v2, Lcom/kantv/video/R$layout;->item_videomore:I

    invoke-direct {p1, v0, v1, v2}, Lcom/tandong/bottomview/view/BottomView;-><init>(Landroid/content/Context;II)V

    .line 205
    sget v0, Lcom/kantv/video/R$style;->BottomToTopAnim:I

    invoke-virtual {p1, v0}, Lcom/tandong/bottomview/view/BottomView;->setAnimation(I)V

    const/4 v0, 0x1

    .line 206
    invoke-virtual {p1, v0}, Lcom/tandong/bottomview/view/BottomView;->showBottomView(Z)V

    .line 207
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/kantv/video/R$id;->group:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 208
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/kantv/video/R$id;->rb1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 209
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/kantv/video/R$id;->rb2:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 210
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/kantv/video/R$id;->rb3:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 211
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/kantv/video/R$id;->rb4:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 212
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v6

    sget v7, Lcom/kantv/video/R$id;->rb5:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    .line 213
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v7

    sget v8, Lcom/kantv/video/R$id;->rb6:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    .line 214
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v8

    sget v9, Lcom/kantv/video/R$id;->rb7:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    .line 215
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v9

    sget v10, Lcom/kantv/video/R$id;->rb8:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    .line 216
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v10

    sget v11, Lcom/kantv/video/R$id;->videomore_layout:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    new-instance v11, Lcom/kantv/video/DownloadVideoPlayer$3$1;

    invoke-direct {v11, p0, p1}, Lcom/kantv/video/DownloadVideoPlayer$3$1;-><init>(Lcom/kantv/video/DownloadVideoPlayer$3;Lcom/tandong/bottomview/view/BottomView;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v10

    sget v11, Lcom/kantv/video/R$id;->videomore_content_layout:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    new-instance v11, Lcom/kantv/video/DownloadVideoPlayer$3$2;

    invoke-direct {v11, p0}, Lcom/kantv/video/DownloadVideoPlayer$3$2;-><init>(Lcom/kantv/video/DownloadVideoPlayer$3;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v10

    sget v11, Lcom/kantv/video/R$id;->videoset_cache:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual {v10, v11}, Landroid/view/View;->setAlpha(F)V

    .line 230
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v10

    sget v12, Lcom/kantv/video/R$id;->videoset_lineswitch:I

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/view/View;->setAlpha(F)V

    .line 231
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v10

    sget v12, Lcom/kantv/video/R$id;->videoset_collect:I

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/view/View;->setAlpha(F)V

    .line 232
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v10

    sget v12, Lcom/kantv/video/R$id;->videoset_timer:I

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/view/View;->setAlpha(F)V

    .line 233
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v10

    sget v11, Lcom/kantv/video/R$id;->videoset_airplay:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    new-instance v11, Lcom/kantv/video/DownloadVideoPlayer$3$3;

    invoke-direct {v11, p0, p1}, Lcom/kantv/video/DownloadVideoPlayer$3$3;-><init>(Lcom/kantv/video/DownloadVideoPlayer$3;Lcom/tandong/bottomview/view/BottomView;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const-string v12, "autoskip_video"

    invoke-static {v10, v12, v11}, Lcom/kantv/video/util/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 243
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v11

    sget v12, Lcom/kantv/video/R$id;->autoSkipSwitch:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Switch;

    invoke-virtual {v11, v10}, Landroid/widget/Switch;->setChecked(Z)V

    .line 244
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v10

    sget v11, Lcom/kantv/video/R$id;->autoSkipSwitch:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Switch;

    new-instance v11, Lcom/kantv/video/DownloadVideoPlayer$3$4;

    invoke-direct {v11, p0}, Lcom/kantv/video/DownloadVideoPlayer$3$4;-><init>(Lcom/kantv/video/DownloadVideoPlayer$3;)V

    invoke-virtual {v10, v11}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 254
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v10

    sget v11, Lcom/kantv/video/R$id;->autoskip_layout:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    new-instance v11, Lcom/kantv/video/DownloadVideoPlayer$3$5;

    invoke-direct {v11, p0, p1}, Lcom/kantv/video/DownloadVideoPlayer$3$5;-><init>(Lcom/kantv/video/DownloadVideoPlayer$3;Lcom/tandong/bottomview/view/BottomView;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v10

    sget v11, Lcom/kantv/video/R$id;->seekbar1:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/SeekBar;

    .line 267
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object p1

    sget v11, Lcom/kantv/video/R$id;->seekbar2:I

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    .line 268
    new-instance v11, Lcom/kantv/video/util/AudioUtil;

    iget-object v12, p0, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {v12}, Lcom/kantv/video/DownloadVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v12

    iget-object v13, p0, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-static {v13}, Lcom/kantv/video/DownloadVideoPlayer;->access$1200(Lcom/kantv/video/DownloadVideoPlayer;)Landroid/view/Window;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/kantv/video/util/AudioUtil;-><init>(Landroid/content/Context;Landroid/view/Window;)V

    .line 269
    iget-object v12, p0, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {v11}, Lcom/kantv/video/util/AudioUtil;->getMediaVolume()I

    move-result v13

    invoke-static {v12, v13}, Lcom/kantv/video/DownloadVideoPlayer;->access$1302(Lcom/kantv/video/DownloadVideoPlayer;I)I

    .line 270
    iget-object v12, p0, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-static {v12}, Lcom/kantv/video/DownloadVideoPlayer;->access$1300(Lcom/kantv/video/DownloadVideoPlayer;)I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 271
    iget-object v12, p0, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {v11}, Lcom/kantv/video/util/AudioUtil;->getSystemBrightness()I

    move-result v13

    invoke-static {v12, v13}, Lcom/kantv/video/DownloadVideoPlayer;->access$1402(Lcom/kantv/video/DownloadVideoPlayer;I)I

    .line 272
    iget-object v12, p0, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-static {v12}, Lcom/kantv/video/DownloadVideoPlayer;->access$1400(Lcom/kantv/video/DownloadVideoPlayer;)I

    move-result v12

    invoke-virtual {p1, v12}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 273
    new-instance v12, Lcom/kantv/video/DownloadVideoPlayer$3$6;

    invoke-direct {v12, p0, v11}, Lcom/kantv/video/DownloadVideoPlayer$3$6;-><init>(Lcom/kantv/video/DownloadVideoPlayer$3;Lcom/kantv/video/util/AudioUtil;)V

    invoke-virtual {v10, v12}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 289
    new-instance v10, Lcom/kantv/video/DownloadVideoPlayer$3$7;

    invoke-direct {v10, p0, v11}, Lcom/kantv/video/DownloadVideoPlayer$3$7;-><init>(Lcom/kantv/video/DownloadVideoPlayer$3;Lcom/kantv/video/util/AudioUtil;)V

    invoke-virtual {p1, v10}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 306
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-static {p1}, Lcom/kantv/video/DownloadVideoPlayer;->access$1500(Lcom/kantv/video/DownloadVideoPlayer;)F

    move-result p1

    float-to-double v10, p1

    const-wide/high16 v12, 0x3fd0000000000000L    # 0.25

    cmpl-double p1, v10, v12

    if-nez p1, :cond_0

    .line 307
    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 308
    :cond_0
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-static {p1}, Lcom/kantv/video/DownloadVideoPlayer;->access$1500(Lcom/kantv/video/DownloadVideoPlayer;)F

    move-result p1

    float-to-double v10, p1

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    cmpl-double p1, v10, v12

    if-nez p1, :cond_1

    .line 309
    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 310
    :cond_1
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-static {p1}, Lcom/kantv/video/DownloadVideoPlayer;->access$1500(Lcom/kantv/video/DownloadVideoPlayer;)F

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v2

    if-nez p1, :cond_2

    .line 311
    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 312
    :cond_2
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-static {p1}, Lcom/kantv/video/DownloadVideoPlayer;->access$1500(Lcom/kantv/video/DownloadVideoPlayer;)F

    move-result p1

    float-to-double v2, p1

    const-wide/high16 v10, 0x3ff4000000000000L    # 1.25

    cmpl-double p1, v2, v10

    if-nez p1, :cond_3

    .line 313
    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 314
    :cond_3
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-static {p1}, Lcom/kantv/video/DownloadVideoPlayer;->access$1500(Lcom/kantv/video/DownloadVideoPlayer;)F

    move-result p1

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    cmpl-double p1, v2, v4

    if-nez p1, :cond_4

    .line 315
    invoke-virtual {v6, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 316
    :cond_4
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-static {p1}, Lcom/kantv/video/DownloadVideoPlayer;->access$1500(Lcom/kantv/video/DownloadVideoPlayer;)F

    move-result p1

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float p1, p1, v2

    if-nez p1, :cond_5

    .line 317
    invoke-virtual {v7, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 318
    :cond_5
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-static {p1}, Lcom/kantv/video/DownloadVideoPlayer;->access$1500(Lcom/kantv/video/DownloadVideoPlayer;)F

    move-result p1

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float p1, p1, v2

    if-nez p1, :cond_6

    .line 319
    invoke-virtual {v8, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 320
    :cond_6
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-static {p1}, Lcom/kantv/video/DownloadVideoPlayer;->access$1500(Lcom/kantv/video/DownloadVideoPlayer;)F

    move-result p1

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float p1, p1, v2

    if-nez p1, :cond_7

    .line 321
    invoke-virtual {v9, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 324
    :cond_7
    :goto_0
    new-instance p1, Lcom/kantv/video/DownloadVideoPlayer$3$8;

    invoke-direct {p1, p0}, Lcom/kantv/video/DownloadVideoPlayer$3$8;-><init>(Lcom/kantv/video/DownloadVideoPlayer$3;)V

    invoke-virtual {v1, p1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method
