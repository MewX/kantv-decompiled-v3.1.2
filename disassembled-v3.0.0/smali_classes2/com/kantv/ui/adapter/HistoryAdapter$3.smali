.class Lcom/kantv/ui/adapter/HistoryAdapter$3;
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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kantv/ui/adapter/HistoryAdapter;I)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/kantv/ui/adapter/HistoryAdapter$3;->this$0:Lcom/kantv/ui/adapter/HistoryAdapter;

    iput p2, p0, Lcom/kantv/ui/adapter/HistoryAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/kantv/ui/adapter/HistoryAdapter$3;->this$0:Lcom/kantv/ui/adapter/HistoryAdapter;

    invoke-static {v0}, Lcom/kantv/ui/adapter/HistoryAdapter;->access$200(Lcom/kantv/ui/adapter/HistoryAdapter;)Lcom/kantv/ui/adapter/CallbackInterface;

    move-result-object v0

    iget v1, p0, Lcom/kantv/ui/adapter/HistoryAdapter$3;->val$position:I

    invoke-interface {v0, p1, v1}, Lcom/kantv/ui/adapter/CallbackInterface;->onClick(Landroid/view/View;I)V

    return-void
.end method
