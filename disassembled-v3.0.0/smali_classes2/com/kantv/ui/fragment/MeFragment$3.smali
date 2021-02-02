.class Lcom/kantv/ui/fragment/MeFragment$3;
.super Lcom/kantv/ui/adapter/CommonAdapter;
.source "MeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/MeFragment;->initWatchHistory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kantv/ui/adapter/CommonAdapter<",
        "Lcom/kantv/ui/bean/MovieBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/MeFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/MeFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/kantv/ui/fragment/MeFragment$3;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/kantv/ui/adapter/CommonAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/MovieBean;I)V
    .locals 1

    .line 296
    invoke-virtual {p2}, Lcom/kantv/ui/bean/MovieBean;->getPhoto()Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f09018f

    invoke-virtual {p1, v0, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setImageURL(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 297
    invoke-virtual {p2}, Lcom/kantv/ui/bean/MovieBean;->getTitle()Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f090191

    invoke-virtual {p1, v0, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 298
    new-instance p3, Lcom/kantv/ui/fragment/MeFragment$3$1;

    invoke-direct {p3, p0, p2}, Lcom/kantv/ui/fragment/MeFragment$3$1;-><init>(Lcom/kantv/ui/fragment/MeFragment$3;Lcom/kantv/ui/bean/MovieBean;)V

    const p2, 0x7f090190

    invoke-virtual {p1, p2, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/kantv/ui/adapter/ViewHolder;

    return-void
.end method

.method protected bridge synthetic convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 293
    check-cast p2, Lcom/kantv/ui/bean/MovieBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kantv/ui/fragment/MeFragment$3;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/MovieBean;I)V

    return-void
.end method
