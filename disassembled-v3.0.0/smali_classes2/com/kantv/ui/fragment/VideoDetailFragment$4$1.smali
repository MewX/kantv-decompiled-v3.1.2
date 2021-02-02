.class Lcom/kantv/ui/fragment/VideoDetailFragment$4$1;
.super Ljava/lang/Object;
.source "VideoDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/VideoDetailFragment$4;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String8Bean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$4;

.field final synthetic val$position:I

.field final synthetic val$string8Bean:Lcom/kantv/ui/bean/String8Bean;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoDetailFragment$4;Lcom/kantv/ui/bean/String8Bean;I)V
    .locals 0

    .line 713
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$4$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$4;

    iput-object p2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$4$1;->val$string8Bean:Lcom/kantv/ui/bean/String8Bean;

    iput p3, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$4$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 716
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$4$1;->val$string8Bean:Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {p1}, Lcom/kantv/ui/bean/String8Bean;->getStr1()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPartId:Ljava/lang/String;

    .line 718
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$4$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$4;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$4;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->isplay:I

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 719
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$4$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$4;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment$4;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "0"

    if-ge p1, v0, :cond_2

    .line 720
    iget v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$4$1;->val$position:I

    if-eq p1, v0, :cond_1

    .line 721
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$4$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$4;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment$4;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/String8Bean;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/kantv/ui/bean/String8Bean;->setStr8(Ljava/lang/String;)V

    goto :goto_1

    .line 723
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$4$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$4;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment$4;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {v0, v1}, Lcom/kantv/ui/bean/String8Bean;->setStr8(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 726
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$4$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$4;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$4;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz p1, :cond_3

    .line 727
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$4$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$4;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$4;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {p1}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    .line 728
    :cond_3
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$4$1;->val$string8Bean:Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {p1}, Lcom/kantv/ui/bean/String8Bean;->getStr8()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 729
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$4$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$4;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$4;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$4$1;->val$string8Bean:Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/String8Bean;->getStr3()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPart:Ljava/lang/String;

    .line 730
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$4$1;->val$string8Bean:Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {p1}, Lcom/kantv/ui/bean/String8Bean;->getStr1()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPartId:Ljava/lang/String;

    .line 732
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$4$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$4;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$4;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$4$1;->val$string8Bean:Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/String8Bean;->getStr1()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$4$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$4;

    iget-object v1, v1, Lcom/kantv/ui/fragment/VideoDetailFragment$4;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v1, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPart:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->requestSwitchVideo(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/kantv/ui/fragment/VideoDetailFragment$4$1$1;

    invoke-direct {v0, p0}, Lcom/kantv/ui/fragment/VideoDetailFragment$4$1$1;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment$4$1;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method
