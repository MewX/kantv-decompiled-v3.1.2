.class Lcom/kantv/ui/activity/VideoScoreActivity$1;
.super Ljava/lang/Object;
.source "VideoScoreActivity.java"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoScoreActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoScoreActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoScoreActivity;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoScoreActivity$1;->this$0:Lcom/kantv/ui/activity/VideoScoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 4

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-nez p1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoScoreActivity$1;->this$0:Lcom/kantv/ui/activity/VideoScoreActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoScoreActivity;->scoreOk:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_4

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoScoreActivity$1;->this$0:Lcom/kantv/ui/activity/VideoScoreActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoScoreActivity;->scoreOk:Landroid/widget/TextView;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    float-to-double v0, p2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_9

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, p2, p1

    if-nez p1, :cond_1

    goto :goto_3

    :cond_1
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_8

    const/high16 p1, 0x40000000    # 2.0f

    cmpl-float p1, p2, p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const-wide/high16 v2, 0x4004000000000000L    # 2.5

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_7

    const/high16 p1, 0x40400000    # 3.0f

    cmpl-float p1, p2, p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const-wide/high16 v2, 0x400c000000000000L    # 3.5

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_6

    const/high16 p1, 0x40800000    # 4.0f

    cmpl-float p1, p2, p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_5

    const/high16 p1, 0x40a00000    # 5.0f

    cmpl-float p1, p2, p1

    if-nez p1, :cond_a

    .line 124
    :cond_5
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoScoreActivity$1;->this$0:Lcom/kantv/ui/activity/VideoScoreActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoScoreActivity;->socoreMsgTv:Landroid/widget/TextView;

    const-string p2, "\u529b\u8350"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 122
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoScoreActivity$1;->this$0:Lcom/kantv/ui/activity/VideoScoreActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoScoreActivity;->socoreMsgTv:Landroid/widget/TextView;

    const-string p2, "\u503c\u5f97\u4e00\u770b"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 120
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoScoreActivity$1;->this$0:Lcom/kantv/ui/activity/VideoScoreActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoScoreActivity;->socoreMsgTv:Landroid/widget/TextView;

    const-string p2, "\u4e00\u822c"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 118
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoScoreActivity$1;->this$0:Lcom/kantv/ui/activity/VideoScoreActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoScoreActivity;->socoreMsgTv:Landroid/widget/TextView;

    const-string p2, "\u8f83\u5dee"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 116
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoScoreActivity$1;->this$0:Lcom/kantv/ui/activity/VideoScoreActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoScoreActivity;->socoreMsgTv:Landroid/widget/TextView;

    const-string p2, "\u5f88\u5dee"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_4
    return-void
.end method
