.class public Lcom/kantv/ui/m3u8downloader/demo/VideoListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "VideoListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p3    # [Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method

.method private setProgressText(Landroid/widget/TextView;Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V
    .locals 7

    .line 40
    invoke-virtual {p2}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->getState()I

    move-result v0

    const/4 v1, 0x2

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "%.1f "

    const-string v6, "\u8fdb\u5ea6\uff1a"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string p2, ""

    .line 51
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->getProgress()F

    move-result v4

    mul-float v4, v4, v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->getFormatTotalSize()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p2}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->getFormatTotalSize()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 42
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->getProgress()F

    move-result v4

    mul-float v4, v4, v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%       \u901f\u5ea6\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->getFormatSpeed()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setStateText(Landroid/widget/TextView;Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V
    .locals 2

    .line 57
    invoke-static {}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->getInstance()Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    move-result-object v0

    invoke-virtual {p2}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->checkM3U8IsExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "\u5df2\u4e0b\u8f7d"

    .line 58
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 61
    :cond_0
    invoke-virtual {p2}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->getState()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const-string p2, "\u672a\u4e0b\u8f7d"

    .line 84
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    const-string p2, "\u5b58\u50a8\u7a7a\u95f4\u4e0d\u8db3"

    .line 73
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    const-string p2, "\u6682\u505c\u4e2d"

    .line 82
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    const-string p2, "\u4e0b\u8f7d\u5f02\u5e38\uff0c\u70b9\u51fb\u91cd\u8bd5"

    .line 69
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_4
    const-string p2, "\u4e0b\u8f7d\u5b8c\u6210"

    .line 79
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_5
    const-string p2, "\u6b63\u5728\u4e0b\u8f7d"

    .line 66
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_6
    const-string p2, "\u51c6\u5907\u4e2d"

    .line 76
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_7
    const-string p2, "\u7b49\u5f85\u4e2d"

    .line 63
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 28
    invoke-virtual {p0, p1}, Lcom/kantv/ui/m3u8downloader/demo/VideoListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    .line 29
    invoke-virtual {p0}, Lcom/kantv/ui/m3u8downloader/demo/VideoListAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c009d

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0903a2

    .line 30
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 31
    invoke-virtual {p1}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f090355

    .line 32
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 33
    invoke-direct {p0, p3, p1}, Lcom/kantv/ui/m3u8downloader/demo/VideoListAdapter;->setStateText(Landroid/widget/TextView;Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V

    const p3, 0x7f0902a4

    .line 34
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 35
    invoke-direct {p0, p3, p1}, Lcom/kantv/ui/m3u8downloader/demo/VideoListAdapter;->setProgressText(Landroid/widget/TextView;Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V

    return-object p2
.end method

.method public notifyChanged([Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V
    .locals 2

    const/4 v0, 0x0

    .line 90
    :goto_0
    invoke-virtual {p0}, Lcom/kantv/ui/m3u8downloader/demo/VideoListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 91
    invoke-virtual {p0, v0}, Lcom/kantv/ui/m3u8downloader/demo/VideoListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    invoke-virtual {v1, p2}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    aput-object p2, p1, v0

    .line 93
    invoke-virtual {p0}, Lcom/kantv/ui/m3u8downloader/demo/VideoListAdapter;->notifyDataSetChanged()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
