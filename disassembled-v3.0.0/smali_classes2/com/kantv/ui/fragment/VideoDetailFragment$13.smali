.class Lcom/kantv/ui/fragment/VideoDetailFragment$13;
.super Ljava/lang/Object;
.source "VideoDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/VideoDetailFragment;->download()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoDetailFragment;)V
    .locals 0

    .line 1413
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$13;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1416
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$13;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$200(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lcom/kantv/ui/activity/VideoPlayActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1417
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$13;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$200(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lcom/kantv/ui/activity/VideoPlayActivity;

    move-result-object p1

    const-class v0, Lcom/kantv/ui/activity/OfflineVideoActivity;

    invoke-virtual {p1, v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->gotoActivity(Ljava/lang/Class;)V

    .line 1418
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$13;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$500(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lcom/tandong/bottomview/view/BottomView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1419
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$13;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$500(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lcom/tandong/bottomview/view/BottomView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->dismissBottomView()V

    :cond_1
    return-void
.end method
