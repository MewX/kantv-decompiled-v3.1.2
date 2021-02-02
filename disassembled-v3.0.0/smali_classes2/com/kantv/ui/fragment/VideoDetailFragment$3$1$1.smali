.class Lcom/kantv/ui/fragment/VideoDetailFragment$3$1$1;
.super Ljava/lang/Object;
.source "VideoDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/VideoDetailFragment$3$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/kantv/ui/fragment/VideoDetailFragment$3$1;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoDetailFragment$3$1;)V
    .locals 0

    .line 674
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$3$1$1;->this$2:Lcom/kantv/ui/fragment/VideoDetailFragment$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 677
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$3$1$1;->this$2:Lcom/kantv/ui/fragment/VideoDetailFragment$3$1;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment$3$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$3;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment$3;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$500(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lcom/tandong/bottomview/view/BottomView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$3$1$1;->this$2:Lcom/kantv/ui/fragment/VideoDetailFragment$3$1;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment$3$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$3;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment$3;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$500(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lcom/tandong/bottomview/view/BottomView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tandong/bottomview/view/BottomView;->dismissBottomView()V

    :cond_0
    return-void
.end method
