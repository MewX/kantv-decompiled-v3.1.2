.class Lcom/kantv/ui/fragment/TvDefaultFragment$6;
.super Ljava/lang/Object;
.source "TvDefaultFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/TvDefaultFragment;->fillDataView()V
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

    .line 562
    iput-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$6;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 565
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$6;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    const-class v0, Lcom/kantv/ui/activity/HotListActivity;

    invoke-virtual {p1, v0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->gotoActivity(Ljava/lang/Class;)V

    return-void
.end method
