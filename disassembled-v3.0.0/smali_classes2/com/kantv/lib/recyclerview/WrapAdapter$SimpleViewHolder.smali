.class Lcom/kantv/lib/recyclerview/WrapAdapter$SimpleViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "WrapAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/lib/recyclerview/WrapAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/lib/recyclerview/WrapAdapter;


# direct methods
.method public constructor <init>(Lcom/kantv/lib/recyclerview/WrapAdapter;Landroid/view/View;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/kantv/lib/recyclerview/WrapAdapter$SimpleViewHolder;->this$0:Lcom/kantv/lib/recyclerview/WrapAdapter;

    .line 168
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
