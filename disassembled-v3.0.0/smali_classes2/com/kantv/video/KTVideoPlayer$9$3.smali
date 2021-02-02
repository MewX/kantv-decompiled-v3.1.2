.class Lcom/kantv/video/KTVideoPlayer$9$3;
.super Ljava/lang/Object;
.source "KTVideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$mVideoMoreBv:Lcom/tandong/bottomview/view/BottomView;


# direct methods
.method constructor <init>(Lcom/kantv/video/KTVideoPlayer$9;Lcom/tandong/bottomview/view/BottomView;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$3;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iput-object p2, p0, Lcom/kantv/video/KTVideoPlayer$9$3;->val$mVideoMoreBv:Lcom/tandong/bottomview/view/BottomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 407
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$3;->val$mVideoMoreBv:Lcom/tandong/bottomview/view/BottomView;

    if-eqz p1, :cond_0

    .line 408
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->dismissBottomView()V

    :cond_0
    return-void
.end method
