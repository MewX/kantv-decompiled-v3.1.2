.class Lcom/kantv/ui/activity/FilterActivity$1;
.super Lcom/kantv/ui/adapter/CommonAdapter;
.source "FilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/FilterActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kantv/ui/adapter/CommonAdapter<",
        "Ljava/util/List<",
        "Lcom/kantv/ui/bean/FilterBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/FilterActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/FilterActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/kantv/ui/activity/FilterActivity$1;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/kantv/ui/adapter/CommonAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 150
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kantv/ui/activity/FilterActivity$1;->convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/util/List;I)V

    return-void
.end method

.method protected convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/util/List;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kantv/ui/adapter/ViewHolder;",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/FilterBean;",
            ">;I)V"
        }
    .end annotation

    .line 153
    new-instance v7, Lcom/kantv/ui/activity/FilterActivity$1$1;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c007e

    move-object v0, v7

    move-object v1, p0

    move-object v4, p2

    move v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/kantv/ui/activity/FilterActivity$1$1;-><init>(Lcom/kantv/ui/activity/FilterActivity$1;Landroid/content/Context;ILjava/util/List;ILjava/util/List;)V

    .line 201
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f09013e

    invoke-virtual {p1, p3, v7, p2}, Lcom/kantv/ui/adapter/ViewHolder;->setAdapter4(ILcom/kantv/ui/adapter/CommonAdapter;Landroid/content/Context;)Lcom/kantv/ui/adapter/ViewHolder;

    return-void
.end method
