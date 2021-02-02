.class Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$2;
.super Ljava/lang/Object;
.source "ListVideoUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->resolveToFull()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 206
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$000(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$100(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    return-void
.end method
