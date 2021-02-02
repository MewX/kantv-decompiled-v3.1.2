.class Lcom/kantv/ui/MainActivity$3$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/MainActivity$3;->onTabChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/MainActivity$3;


# direct methods
.method constructor <init>(Lcom/kantv/ui/MainActivity$3;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/kantv/ui/MainActivity$3$1;->this$1:Lcom/kantv/ui/MainActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/kantv/ui/MainActivity$3$1;->this$1:Lcom/kantv/ui/MainActivity$3;

    iget-object v0, v0, Lcom/kantv/ui/MainActivity$3;->this$0:Lcom/kantv/ui/MainActivity;

    invoke-static {v0}, Lcom/kantv/ui/MainActivity;->access$300(Lcom/kantv/ui/MainActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/MainActivity$3$1;->this$1:Lcom/kantv/ui/MainActivity$3;

    iget-object v0, v0, Lcom/kantv/ui/MainActivity$3;->this$0:Lcom/kantv/ui/MainActivity;

    invoke-static {v0}, Lcom/kantv/ui/MainActivity;->access$300(Lcom/kantv/ui/MainActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/kantv/ui/MainActivity$3$1;->this$1:Lcom/kantv/ui/MainActivity$3;

    iget-object v0, v0, Lcom/kantv/ui/MainActivity$3;->this$0:Lcom/kantv/ui/MainActivity;

    invoke-virtual {v0}, Lcom/kantv/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 383
    iget-object v1, p0, Lcom/kantv/ui/MainActivity$3$1;->this$1:Lcom/kantv/ui/MainActivity$3;

    iget-object v1, v1, Lcom/kantv/ui/MainActivity$3;->this$0:Lcom/kantv/ui/MainActivity;

    check-cast v0, Lcom/kantv/ui/fragment/TabTvFragment;

    iput-object v0, v1, Lcom/kantv/ui/MainActivity;->mTabTvFragment:Lcom/kantv/ui/fragment/TabTvFragment;

    :cond_0
    return-void
.end method
