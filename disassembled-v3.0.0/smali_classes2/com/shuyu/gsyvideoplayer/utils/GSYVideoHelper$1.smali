.class Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$1;
.super Ljava/lang/Object;
.source "GSYVideoHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->resolveToFull()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 142
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->access$000(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;)Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->access$100(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    return-void
.end method
