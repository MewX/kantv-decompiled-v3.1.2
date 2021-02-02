.class Lcom/kantv/ui/adapter/HistoryAdapter$2;
.super Ljava/lang/Object;
.source "HistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/adapter/HistoryAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/adapter/HistoryAdapter;

.field final synthetic val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kantv/ui/adapter/HistoryAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/kantv/ui/adapter/HistoryAdapter$2;->this$0:Lcom/kantv/ui/adapter/HistoryAdapter;

    iput-object p2, p0, Lcom/kantv/ui/adapter/HistoryAdapter$2;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/kantv/ui/adapter/HistoryAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/kantv/ui/adapter/HistoryAdapter$2;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lcom/kantv/ui/adapter/HistoryVH;

    iget-object v0, v0, Lcom/kantv/ui/adapter/HistoryVH;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/kantv/ui/adapter/HistoryAdapter$2;->this$0:Lcom/kantv/ui/adapter/HistoryAdapter;

    invoke-static {v0}, Lcom/kantv/ui/adapter/HistoryAdapter;->access$100(Lcom/kantv/ui/adapter/HistoryAdapter;)Lcom/kantv/ui/adapter/CallbackInterface;

    move-result-object v0

    iget v1, p0, Lcom/kantv/ui/adapter/HistoryAdapter$2;->val$position:I

    invoke-interface {v0, p1, v1}, Lcom/kantv/ui/adapter/CallbackInterface;->onClick(Landroid/view/View;I)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/adapter/HistoryAdapter$2;->this$0:Lcom/kantv/ui/adapter/HistoryAdapter;

    invoke-static {p1}, Lcom/kantv/ui/adapter/HistoryAdapter;->access$000(Lcom/kantv/ui/adapter/HistoryAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/kantv/ui/adapter/HistoryAdapter$2;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {p1}, Lcom/kantv/ui/bean/String15Bean;->getStr12()Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 118
    iget-object p1, p0, Lcom/kantv/ui/adapter/HistoryAdapter$2;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast p1, Lcom/kantv/ui/adapter/HistoryVH;

    iget-object p1, p1, Lcom/kantv/ui/adapter/HistoryVH;->mCheck:Landroid/widget/CheckBox;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 120
    :cond_1
    iget-object p1, p0, Lcom/kantv/ui/adapter/HistoryAdapter$2;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast p1, Lcom/kantv/ui/adapter/HistoryVH;

    iget-object p1, p1, Lcom/kantv/ui/adapter/HistoryVH;->mCheck:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    return-void
.end method
