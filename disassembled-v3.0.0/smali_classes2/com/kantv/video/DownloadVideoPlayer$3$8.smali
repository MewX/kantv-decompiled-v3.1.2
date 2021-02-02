.class Lcom/kantv/video/DownloadVideoPlayer$3$8;
.super Ljava/lang/Object;
.source "DownloadVideoPlayer.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/video/DownloadVideoPlayer$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/video/DownloadVideoPlayer$3;


# direct methods
.method constructor <init>(Lcom/kantv/video/DownloadVideoPlayer$3;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3$8;->this$1:Lcom/kantv/video/DownloadVideoPlayer$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 327
    sget p1, Lcom/kantv/video/R$id;->rb1:I

    if-ne p2, p1, :cond_0

    .line 328
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3$8;->this$1:Lcom/kantv/video/DownloadVideoPlayer$3;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2}, Lcom/kantv/video/DownloadVideoPlayer;->setSpeed(F)V

    .line 329
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3$8;->this$1:Lcom/kantv/video/DownloadVideoPlayer$3;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-static {p1, p2}, Lcom/kantv/video/DownloadVideoPlayer;->access$1502(Lcom/kantv/video/DownloadVideoPlayer;F)F

    goto/16 :goto_0

    .line 330
    :cond_0
    sget p1, Lcom/kantv/video/R$id;->rb2:I

    if-ne p2, p1, :cond_1

    .line 331
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3$8;->this$1:Lcom/kantv/video/DownloadVideoPlayer$3;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    const/high16 p2, 0x3f400000    # 0.75f

    invoke-virtual {p1, p2}, Lcom/kantv/video/DownloadVideoPlayer;->setSpeed(F)V

    .line 332
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3$8;->this$1:Lcom/kantv/video/DownloadVideoPlayer$3;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-static {p1, p2}, Lcom/kantv/video/DownloadVideoPlayer;->access$1502(Lcom/kantv/video/DownloadVideoPlayer;F)F

    goto/16 :goto_0

    .line 333
    :cond_1
    sget p1, Lcom/kantv/video/R$id;->rb3:I

    if-ne p2, p1, :cond_2

    .line 334
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3$8;->this$1:Lcom/kantv/video/DownloadVideoPlayer$3;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/kantv/video/DownloadVideoPlayer;->setSpeed(F)V

    .line 335
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3$8;->this$1:Lcom/kantv/video/DownloadVideoPlayer$3;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-static {p1, p2}, Lcom/kantv/video/DownloadVideoPlayer;->access$1502(Lcom/kantv/video/DownloadVideoPlayer;F)F

    goto :goto_0

    .line 336
    :cond_2
    sget p1, Lcom/kantv/video/R$id;->rb4:I

    if-ne p2, p1, :cond_3

    .line 337
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3$8;->this$1:Lcom/kantv/video/DownloadVideoPlayer$3;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    const/high16 p2, 0x3fa00000    # 1.25f

    invoke-virtual {p1, p2}, Lcom/kantv/video/DownloadVideoPlayer;->setSpeed(F)V

    .line 338
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3$8;->this$1:Lcom/kantv/video/DownloadVideoPlayer$3;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-static {p1, p2}, Lcom/kantv/video/DownloadVideoPlayer;->access$1502(Lcom/kantv/video/DownloadVideoPlayer;F)F

    goto :goto_0

    .line 339
    :cond_3
    sget p1, Lcom/kantv/video/R$id;->rb5:I

    if-ne p2, p1, :cond_4

    .line 340
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3$8;->this$1:Lcom/kantv/video/DownloadVideoPlayer$3;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    const/high16 p2, 0x3fc00000    # 1.5f

    invoke-virtual {p1, p2}, Lcom/kantv/video/DownloadVideoPlayer;->setSpeed(F)V

    .line 341
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3$8;->this$1:Lcom/kantv/video/DownloadVideoPlayer$3;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-static {p1, p2}, Lcom/kantv/video/DownloadVideoPlayer;->access$1502(Lcom/kantv/video/DownloadVideoPlayer;F)F

    goto :goto_0

    .line 342
    :cond_4
    sget p1, Lcom/kantv/video/R$id;->rb6:I

    if-ne p2, p1, :cond_5

    .line 343
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3$8;->this$1:Lcom/kantv/video/DownloadVideoPlayer$3;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-virtual {p1, p2}, Lcom/kantv/video/DownloadVideoPlayer;->setSpeed(F)V

    .line 344
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3$8;->this$1:Lcom/kantv/video/DownloadVideoPlayer$3;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-static {p1, p2}, Lcom/kantv/video/DownloadVideoPlayer;->access$1502(Lcom/kantv/video/DownloadVideoPlayer;F)F

    goto :goto_0

    .line 345
    :cond_5
    sget p1, Lcom/kantv/video/R$id;->rb7:I

    if-ne p2, p1, :cond_6

    .line 346
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3$8;->this$1:Lcom/kantv/video/DownloadVideoPlayer$3;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    const/high16 p2, 0x40400000    # 3.0f

    invoke-virtual {p1, p2}, Lcom/kantv/video/DownloadVideoPlayer;->setSpeed(F)V

    .line 347
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3$8;->this$1:Lcom/kantv/video/DownloadVideoPlayer$3;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-static {p1, p2}, Lcom/kantv/video/DownloadVideoPlayer;->access$1502(Lcom/kantv/video/DownloadVideoPlayer;F)F

    goto :goto_0

    .line 348
    :cond_6
    sget p1, Lcom/kantv/video/R$id;->rb8:I

    if-ne p2, p1, :cond_7

    .line 349
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3$8;->this$1:Lcom/kantv/video/DownloadVideoPlayer$3;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-virtual {p1, p2}, Lcom/kantv/video/DownloadVideoPlayer;->setSpeed(F)V

    .line 350
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3$8;->this$1:Lcom/kantv/video/DownloadVideoPlayer$3;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-static {p1, p2}, Lcom/kantv/video/DownloadVideoPlayer;->access$1502(Lcom/kantv/video/DownloadVideoPlayer;F)F

    :cond_7
    :goto_0
    return-void
.end method
