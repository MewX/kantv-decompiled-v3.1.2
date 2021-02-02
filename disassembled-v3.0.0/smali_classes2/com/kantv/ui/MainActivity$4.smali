.class Lcom/kantv/ui/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/MainActivity;->initDefaultFootTabs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/MainActivity;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/kantv/ui/MainActivity$4;->this$0:Lcom/kantv/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/kantv/ui/MainActivity$4;->this$0:Lcom/kantv/ui/MainActivity;

    invoke-virtual {v0}, Lcom/kantv/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/MainActivity$4;->this$0:Lcom/kantv/ui/MainActivity;

    invoke-static {v1}, Lcom/kantv/ui/MainActivity;->access$300(Lcom/kantv/ui/MainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 423
    iget-object v1, p0, Lcom/kantv/ui/MainActivity$4;->this$0:Lcom/kantv/ui/MainActivity;

    check-cast v0, Lcom/kantv/ui/fragment/TabTvFragment;

    iput-object v0, v1, Lcom/kantv/ui/MainActivity;->mTabTvFragment:Lcom/kantv/ui/fragment/TabTvFragment;

    return-void
.end method
