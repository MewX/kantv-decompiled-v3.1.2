.class Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail$1;
.super Ljava/lang/Object;
.source "GSYBaseADActivityDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->initVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail$1;->this$0:Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 40
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail$1;->this$0:Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->showADFull()V

    .line 41
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail$1;->this$0:Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->clickForFullScreen()V

    return-void
.end method
