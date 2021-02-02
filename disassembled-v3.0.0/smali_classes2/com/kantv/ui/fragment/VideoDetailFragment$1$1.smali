.class Lcom/kantv/ui/fragment/VideoDetailFragment$1$1;
.super Ljava/lang/Object;
.source "VideoDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/VideoDetailFragment$1;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String4Bean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$1;

.field final synthetic val$string4Bean:Lcom/kantv/ui/bean/String4Bean;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoDetailFragment$1;Lcom/kantv/ui/bean/String4Bean;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$1$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$1;

    iput-object p2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$1$1;->val$string4Bean:Lcom/kantv/ui/bean/String4Bean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 394
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$1$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$1;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$1;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$1$1;->val$string4Bean:Lcom/kantv/ui/bean/String4Bean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/String4Bean;->getText2()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$1$1;->val$string4Bean:Lcom/kantv/ui/bean/String4Bean;

    invoke-virtual {v1}, Lcom/kantv/ui/bean/String4Bean;->getText1()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$1$1;->val$string4Bean:Lcom/kantv/ui/bean/String4Bean;

    invoke-virtual {v2}, Lcom/kantv/ui/bean/String4Bean;->getText4()Ljava/lang/String;

    move-result-object v2

    const-string v3, "star"

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/kantv/ui/fragment/VideoDetailFragment;->goStarActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 396
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$1$1;->val$string4Bean:Lcom/kantv/ui/bean/String4Bean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/String4Bean;->getText2()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
