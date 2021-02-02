.class public Lcom/kantv/ui/adapter/HistoryVH_ViewBinding;
.super Ljava/lang/Object;
.source "HistoryVH_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/adapter/HistoryVH;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/adapter/HistoryVH;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/kantv/ui/adapter/HistoryVH_ViewBinding;->target:Lcom/kantv/ui/adapter/HistoryVH;

    .line 24
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090186

    const-string v2, "field \'mDelete\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/adapter/HistoryVH;->mDelete:Landroid/widget/TextView;

    .line 25
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f090188

    const-string v2, "field \'mCheck\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/kantv/ui/adapter/HistoryVH;->mCheck:Landroid/widget/CheckBox;

    .line 26
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09018a

    const-string v2, "field \'mMovie\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/adapter/HistoryVH;->mMovie:Landroid/widget/ImageView;

    .line 27
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09018d

    const-string v2, "field \'mTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/adapter/HistoryVH;->mTitle:Landroid/widget/TextView;

    .line 28
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09018c

    const-string v2, "field \'mTag\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/adapter/HistoryVH;->mTag:Landroid/widget/TextView;

    .line 29
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090187

    const-string v2, "field \'mActor\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/adapter/HistoryVH;->mActor:Landroid/widget/TextView;

    .line 30
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f09018b

    const-string v2, "field \'mQj\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p1, Lcom/kantv/ui/adapter/HistoryVH;->mQj:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/kantv/ui/adapter/HistoryVH_ViewBinding;->target:Lcom/kantv/ui/adapter/HistoryVH;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcom/kantv/ui/adapter/HistoryVH_ViewBinding;->target:Lcom/kantv/ui/adapter/HistoryVH;

    .line 40
    iput-object v1, v0, Lcom/kantv/ui/adapter/HistoryVH;->mDelete:Landroid/widget/TextView;

    .line 41
    iput-object v1, v0, Lcom/kantv/ui/adapter/HistoryVH;->mCheck:Landroid/widget/CheckBox;

    .line 42
    iput-object v1, v0, Lcom/kantv/ui/adapter/HistoryVH;->mMovie:Landroid/widget/ImageView;

    .line 43
    iput-object v1, v0, Lcom/kantv/ui/adapter/HistoryVH;->mTitle:Landroid/widget/TextView;

    .line 44
    iput-object v1, v0, Lcom/kantv/ui/adapter/HistoryVH;->mTag:Landroid/widget/TextView;

    .line 45
    iput-object v1, v0, Lcom/kantv/ui/adapter/HistoryVH;->mActor:Landroid/widget/TextView;

    .line 46
    iput-object v1, v0, Lcom/kantv/ui/adapter/HistoryVH;->mQj:Landroid/widget/RelativeLayout;

    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
