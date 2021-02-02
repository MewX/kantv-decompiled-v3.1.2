.class Lcom/kantv/ui/fragment/TabNewsFragment$3$2;
.super Ljava/lang/Object;
.source "TabNewsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/TabNewsFragment$3;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/fragment/TabNewsFragment$3;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/TabNewsFragment$3;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/kantv/ui/fragment/TabNewsFragment$3$2;->this$1:Lcom/kantv/ui/fragment/TabNewsFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 382
    iget-object p1, p0, Lcom/kantv/ui/fragment/TabNewsFragment$3$2;->this$1:Lcom/kantv/ui/fragment/TabNewsFragment$3;

    iget-object p1, p1, Lcom/kantv/ui/fragment/TabNewsFragment$3;->this$0:Lcom/kantv/ui/fragment/TabNewsFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/TabNewsFragment;->access$400(Lcom/kantv/ui/fragment/TabNewsFragment;)Lcom/tandong/bottomview/view/BottomView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 383
    iget-object p1, p0, Lcom/kantv/ui/fragment/TabNewsFragment$3$2;->this$1:Lcom/kantv/ui/fragment/TabNewsFragment$3;

    iget-object p1, p1, Lcom/kantv/ui/fragment/TabNewsFragment$3;->this$0:Lcom/kantv/ui/fragment/TabNewsFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/TabNewsFragment;->access$400(Lcom/kantv/ui/fragment/TabNewsFragment;)Lcom/tandong/bottomview/view/BottomView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->dismissBottomView()V

    .line 384
    iget-object p1, p0, Lcom/kantv/ui/fragment/TabNewsFragment$3$2;->this$1:Lcom/kantv/ui/fragment/TabNewsFragment$3;

    iget-object p1, p1, Lcom/kantv/ui/fragment/TabNewsFragment$3;->this$0:Lcom/kantv/ui/fragment/TabNewsFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kantv/ui/fragment/TabNewsFragment;->access$402(Lcom/kantv/ui/fragment/TabNewsFragment;Lcom/tandong/bottomview/view/BottomView;)Lcom/tandong/bottomview/view/BottomView;

    :cond_0
    return-void
.end method
