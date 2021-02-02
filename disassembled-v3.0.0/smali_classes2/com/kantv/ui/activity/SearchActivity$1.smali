.class Lcom/kantv/ui/activity/SearchActivity$1;
.super Lcom/kantv/ui/adapter/CommonAdapter;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/SearchActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kantv/ui/adapter/CommonAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/SearchActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/SearchActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/kantv/ui/activity/SearchActivity$1;->this$0:Lcom/kantv/ui/activity/SearchActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/kantv/ui/adapter/CommonAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 112
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kantv/ui/activity/SearchActivity$1;->convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/String;I)V

    return-void
.end method

.method protected convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/String;I)V
    .locals 1

    const p3, 0x7f0901c4

    .line 115
    invoke-virtual {p1, p3, p2}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 116
    new-instance v0, Lcom/kantv/ui/activity/SearchActivity$1$1;

    invoke-direct {v0, p0, p2}, Lcom/kantv/ui/activity/SearchActivity$1$1;-><init>(Lcom/kantv/ui/activity/SearchActivity$1;Ljava/lang/String;)V

    invoke-virtual {p1, p3, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/kantv/ui/adapter/ViewHolder;

    return-void
.end method
