.class Lcom/kantv/ui/fragment/VideoDetailFragment$1;
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
        "Lcom/kantv/ui/bean/String4Bean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoDetailFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$1;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/kantv/ui/adapter/CommonAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String4Bean;I)V
    .locals 1

    .line 389
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String4Bean;->getText2()Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f0901d8

    invoke-virtual {p1, v0, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 390
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String4Bean;->getText1()Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f0901d6

    invoke-virtual {p1, v0, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setImageURL(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 391
    new-instance p3, Lcom/kantv/ui/fragment/VideoDetailFragment$1$1;

    invoke-direct {p3, p0, p2}, Lcom/kantv/ui/fragment/VideoDetailFragment$1$1;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment$1;Lcom/kantv/ui/bean/String4Bean;)V

    const p2, 0x7f0901d7

    invoke-virtual {p1, p2, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/kantv/ui/adapter/ViewHolder;

    return-void
.end method

.method protected bridge synthetic convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 386
    check-cast p2, Lcom/kantv/ui/bean/String4Bean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kantv/ui/fragment/VideoDetailFragment$1;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String4Bean;I)V

    return-void
.end method
