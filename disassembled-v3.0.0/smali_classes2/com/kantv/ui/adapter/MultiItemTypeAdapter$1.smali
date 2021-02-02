.class Lcom/kantv/ui/adapter/MultiItemTypeAdapter$1;
.super Ljava/lang/Object;
.source "MultiItemTypeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/adapter/MultiItemTypeAdapter;->setListener(Landroid/view/ViewGroup;Lcom/kantv/ui/adapter/ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/adapter/MultiItemTypeAdapter;

.field final synthetic val$viewHolder:Lcom/kantv/ui/adapter/ViewHolder;


# direct methods
.method constructor <init>(Lcom/kantv/ui/adapter/MultiItemTypeAdapter;Lcom/kantv/ui/adapter/ViewHolder;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/kantv/ui/adapter/MultiItemTypeAdapter$1;->this$0:Lcom/kantv/ui/adapter/MultiItemTypeAdapter;

    iput-object p2, p0, Lcom/kantv/ui/adapter/MultiItemTypeAdapter$1;->val$viewHolder:Lcom/kantv/ui/adapter/ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/kantv/ui/adapter/MultiItemTypeAdapter$1;->this$0:Lcom/kantv/ui/adapter/MultiItemTypeAdapter;

    iget-object v0, v0, Lcom/kantv/ui/adapter/MultiItemTypeAdapter;->mOnItemClickListener:Lcom/kantv/ui/adapter/MultiItemTypeAdapter$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/kantv/ui/adapter/MultiItemTypeAdapter$1;->val$viewHolder:Lcom/kantv/ui/adapter/ViewHolder;

    invoke-virtual {v0}, Lcom/kantv/ui/adapter/ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 64
    iget-object v1, p0, Lcom/kantv/ui/adapter/MultiItemTypeAdapter$1;->this$0:Lcom/kantv/ui/adapter/MultiItemTypeAdapter;

    iget-object v1, v1, Lcom/kantv/ui/adapter/MultiItemTypeAdapter;->mOnItemClickListener:Lcom/kantv/ui/adapter/MultiItemTypeAdapter$OnItemClickListener;

    iget-object v2, p0, Lcom/kantv/ui/adapter/MultiItemTypeAdapter$1;->val$viewHolder:Lcom/kantv/ui/adapter/ViewHolder;

    invoke-interface {v1, p1, v2, v0}, Lcom/kantv/ui/adapter/MultiItemTypeAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method
