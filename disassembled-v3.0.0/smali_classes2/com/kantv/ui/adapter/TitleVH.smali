.class public Lcom/kantv/ui/adapter/TitleVH;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TitleVH.java"


# instance fields
.field mText:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09013f
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 23
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
