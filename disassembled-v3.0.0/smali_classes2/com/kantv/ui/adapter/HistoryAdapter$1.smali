.class Lcom/kantv/ui/adapter/HistoryAdapter$1;
.super Ljava/lang/Object;
.source "HistoryAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kantv/ui/adapter/HistoryAdapter;I)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/kantv/ui/adapter/HistoryAdapter$1;->this$0:Lcom/kantv/ui/adapter/HistoryAdapter;

    iput p2, p0, Lcom/kantv/ui/adapter/HistoryAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 100
    iget-object p1, p0, Lcom/kantv/ui/adapter/HistoryAdapter$1;->this$0:Lcom/kantv/ui/adapter/HistoryAdapter;

    invoke-static {p1}, Lcom/kantv/ui/adapter/HistoryAdapter;->access$000(Lcom/kantv/ui/adapter/HistoryAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/kantv/ui/adapter/HistoryAdapter$1;->val$position:I

    if-eq p1, v0, :cond_1

    if-eqz p2, :cond_0

    .line 102
    iget-object p1, p0, Lcom/kantv/ui/adapter/HistoryAdapter$1;->this$0:Lcom/kantv/ui/adapter/HistoryAdapter;

    invoke-static {p1}, Lcom/kantv/ui/adapter/HistoryAdapter;->access$000(Lcom/kantv/ui/adapter/HistoryAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget p2, p0, Lcom/kantv/ui/adapter/HistoryAdapter$1;->val$position:I

    if-le p1, p2, :cond_1

    .line 103
    iget-object p1, p0, Lcom/kantv/ui/adapter/HistoryAdapter$1;->this$0:Lcom/kantv/ui/adapter/HistoryAdapter;

    invoke-static {p1}, Lcom/kantv/ui/adapter/HistoryAdapter;->access$000(Lcom/kantv/ui/adapter/HistoryAdapter;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/kantv/ui/adapter/HistoryAdapter$1;->val$position:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/bean/String15Bean;

    const-string p2, "1"

    invoke-virtual {p1, p2}, Lcom/kantv/ui/bean/String15Bean;->setStr12(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/adapter/HistoryAdapter$1;->this$0:Lcom/kantv/ui/adapter/HistoryAdapter;

    invoke-static {p1}, Lcom/kantv/ui/adapter/HistoryAdapter;->access$000(Lcom/kantv/ui/adapter/HistoryAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget p2, p0, Lcom/kantv/ui/adapter/HistoryAdapter$1;->val$position:I

    if-le p1, p2, :cond_1

    .line 106
    iget-object p1, p0, Lcom/kantv/ui/adapter/HistoryAdapter$1;->this$0:Lcom/kantv/ui/adapter/HistoryAdapter;

    invoke-static {p1}, Lcom/kantv/ui/adapter/HistoryAdapter;->access$000(Lcom/kantv/ui/adapter/HistoryAdapter;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/kantv/ui/adapter/HistoryAdapter$1;->val$position:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/bean/String15Bean;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Lcom/kantv/ui/bean/String15Bean;->setStr12(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
