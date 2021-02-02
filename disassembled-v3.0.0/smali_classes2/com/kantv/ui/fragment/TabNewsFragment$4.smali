.class Lcom/kantv/ui/fragment/TabNewsFragment$4;
.super Ljava/lang/Object;
.source "TabNewsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/fragment/TabNewsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/TabNewsFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/TabNewsFragment;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/kantv/ui/fragment/TabNewsFragment$4;->this$0:Lcom/kantv/ui/fragment/TabNewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment$4;->this$0:Lcom/kantv/ui/fragment/TabNewsFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/TabNewsFragment;->access$400(Lcom/kantv/ui/fragment/TabNewsFragment;)Lcom/tandong/bottomview/view/BottomView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment$4;->this$0:Lcom/kantv/ui/fragment/TabNewsFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/TabNewsFragment;->access$400(Lcom/kantv/ui/fragment/TabNewsFragment;)Lcom/tandong/bottomview/view/BottomView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tandong/bottomview/view/BottomView;->showBottomView(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 435
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
