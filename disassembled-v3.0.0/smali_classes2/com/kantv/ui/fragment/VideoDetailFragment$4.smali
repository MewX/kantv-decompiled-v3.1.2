.class Lcom/kantv/ui/fragment/VideoDetailFragment$4;
.super Lcom/kantv/ui/adapter/CommonAdapter;
.source "VideoDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/VideoDetailFragment;->initInfoView(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kantv/ui/adapter/CommonAdapter<",
        "Lcom/kantv/ui/bean/String8Bean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoDetailFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 692
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$4;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/kantv/ui/adapter/CommonAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String8Bean;I)V
    .locals 4

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  string8Bean= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/kantv/ui/bean/String8Bean;->getStr8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoDetailFragment"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String8Bean;->getStr3()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0901d4

    invoke-virtual {p1, v1, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 697
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String8Bean;->getStr8()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const v3, 0x7f0901bf

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$4;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iput p3, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPosition:I

    .line 702
    invoke-virtual {p1, v3, v2}, Lcom/kantv/ui/adapter/ViewHolder;->setVisible(IZ)Lcom/kantv/ui/adapter/ViewHolder;

    .line 703
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$4;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-virtual {v0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0600a8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setTextColor(II)Lcom/kantv/ui/adapter/ViewHolder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 705
    invoke-virtual {p1, v3, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setVisible(IZ)Lcom/kantv/ui/adapter/ViewHolder;

    .line 706
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$4;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-virtual {v0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f060020

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setTextColor(II)Lcom/kantv/ui/adapter/ViewHolder;

    .line 708
    :goto_0
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String8Bean;->getStr6()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f0901ae

    if-eqz v0, :cond_1

    .line 709
    invoke-virtual {p1, v1, v2}, Lcom/kantv/ui/adapter/ViewHolder;->setVisible(IZ)Lcom/kantv/ui/adapter/ViewHolder;

    goto :goto_1

    .line 711
    :cond_1
    invoke-virtual {p1, v1}, Lcom/kantv/ui/adapter/ViewHolder;->setInVisible(I)Lcom/kantv/ui/adapter/ViewHolder;

    :goto_1
    const v0, 0x7f0903c5

    .line 713
    new-instance v1, Lcom/kantv/ui/fragment/VideoDetailFragment$4$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/kantv/ui/fragment/VideoDetailFragment$4$1;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment$4;Lcom/kantv/ui/bean/String8Bean;I)V

    invoke-virtual {p1, v0, v1}, Lcom/kantv/ui/adapter/ViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/kantv/ui/adapter/ViewHolder;

    return-void
.end method

.method protected bridge synthetic convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 692
    check-cast p2, Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kantv/ui/fragment/VideoDetailFragment$4;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String8Bean;I)V

    return-void
.end method
