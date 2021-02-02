.class Lcom/kantv/video/KTVideoPlayer$9$13;
.super Ljava/lang/Object;
.source "KTVideoPlayer.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/video/KTVideoPlayer$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/video/KTVideoPlayer$9;


# direct methods
.method constructor <init>(Lcom/kantv/video/KTVideoPlayer$9;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$13;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

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

    .line 552
    sget p1, Lcom/kantv/video/R$id;->rb1:I

    if-ne p2, p1, :cond_0

    .line 553
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$13;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2}, Lcom/kantv/video/KTVideoPlayer;->setSpeed(F)V

    .line 554
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$13;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {p1, p2}, Lcom/kantv/video/KTVideoPlayer;->access$2202(Lcom/kantv/video/KTVideoPlayer;F)F

    goto/16 :goto_0

    .line 555
    :cond_0
    sget p1, Lcom/kantv/video/R$id;->rb2:I

    if-ne p2, p1, :cond_1

    .line 556
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$13;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    const/high16 p2, 0x3f400000    # 0.75f

    invoke-virtual {p1, p2}, Lcom/kantv/video/KTVideoPlayer;->setSpeed(F)V

    .line 557
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$13;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {p1, p2}, Lcom/kantv/video/KTVideoPlayer;->access$2202(Lcom/kantv/video/KTVideoPlayer;F)F

    goto/16 :goto_0

    .line 558
    :cond_1
    sget p1, Lcom/kantv/video/R$id;->rb3:I

    if-ne p2, p1, :cond_2

    .line 559
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$13;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/kantv/video/KTVideoPlayer;->setSpeed(F)V

    .line 560
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$13;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {p1, p2}, Lcom/kantv/video/KTVideoPlayer;->access$2202(Lcom/kantv/video/KTVideoPlayer;F)F

    goto :goto_0

    .line 561
    :cond_2
    sget p1, Lcom/kantv/video/R$id;->rb4:I

    if-ne p2, p1, :cond_3

    .line 562
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$13;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    const/high16 p2, 0x3fa00000    # 1.25f

    invoke-virtual {p1, p2}, Lcom/kantv/video/KTVideoPlayer;->setSpeed(F)V

    .line 563
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$13;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {p1, p2}, Lcom/kantv/video/KTVideoPlayer;->access$2202(Lcom/kantv/video/KTVideoPlayer;F)F

    goto :goto_0

    .line 564
    :cond_3
    sget p1, Lcom/kantv/video/R$id;->rb5:I

    if-ne p2, p1, :cond_4

    .line 565
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$13;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    const/high16 p2, 0x3fc00000    # 1.5f

    invoke-virtual {p1, p2}, Lcom/kantv/video/KTVideoPlayer;->setSpeed(F)V

    .line 566
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$13;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {p1, p2}, Lcom/kantv/video/KTVideoPlayer;->access$2202(Lcom/kantv/video/KTVideoPlayer;F)F

    goto :goto_0

    .line 567
    :cond_4
    sget p1, Lcom/kantv/video/R$id;->rb6:I

    if-ne p2, p1, :cond_5

    .line 568
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$13;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-virtual {p1, p2}, Lcom/kantv/video/KTVideoPlayer;->setSpeed(F)V

    .line 569
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$13;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {p1, p2}, Lcom/kantv/video/KTVideoPlayer;->access$2202(Lcom/kantv/video/KTVideoPlayer;F)F

    goto :goto_0

    .line 570
    :cond_5
    sget p1, Lcom/kantv/video/R$id;->rb7:I

    if-ne p2, p1, :cond_6

    .line 571
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$13;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    const/high16 p2, 0x40400000    # 3.0f

    invoke-virtual {p1, p2}, Lcom/kantv/video/KTVideoPlayer;->setSpeed(F)V

    .line 572
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$13;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {p1, p2}, Lcom/kantv/video/KTVideoPlayer;->access$2202(Lcom/kantv/video/KTVideoPlayer;F)F

    goto :goto_0

    .line 573
    :cond_6
    sget p1, Lcom/kantv/video/R$id;->rb8:I

    if-ne p2, p1, :cond_7

    .line 574
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$13;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-virtual {p1, p2}, Lcom/kantv/video/KTVideoPlayer;->setSpeed(F)V

    .line 575
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$13;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {p1, p2}, Lcom/kantv/video/KTVideoPlayer;->access$2202(Lcom/kantv/video/KTVideoPlayer;F)F

    :cond_7
    :goto_0
    return-void
.end method
