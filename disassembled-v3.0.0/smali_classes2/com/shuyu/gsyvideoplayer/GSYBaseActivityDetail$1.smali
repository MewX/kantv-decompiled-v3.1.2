.class Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail$1;
.super Ljava/lang/Object;
.source "GSYBaseActivityDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->initVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail$1;->this$0:Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 43
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail$1;->this$0:Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->showFull()V

    .line 44
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail$1;->this$0:Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->clickForFullScreen()V

    return-void
.end method
