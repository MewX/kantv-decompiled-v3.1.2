.class Lcom/kantv/ui/fragment/TvDefaultFragment$17;
.super Ljava/lang/Object;
.source "TvDefaultFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/fragment/TvDefaultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/TvDefaultFragment;)V
    .locals 0

    .line 1071
    iput-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$17;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1075
    :try_start_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$17;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$1500(Lcom/kantv/ui/fragment/TvDefaultFragment;)Lcom/tandong/bottomview/view/BottomView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$17;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$1500(Lcom/kantv/ui/fragment/TvDefaultFragment;)Lcom/tandong/bottomview/view/BottomView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tandong/bottomview/view/BottomView;->showBottomView(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1078
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
