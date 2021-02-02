.class Lcom/kantv/lib/recyclerview/XRecyclerView$1;
.super Ljava/lang/Object;
.source "XRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/lib/recyclerview/XRecyclerView;->onScrollStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/lib/recyclerview/XRecyclerView;


# direct methods
.method constructor <init>(Lcom/kantv/lib/recyclerview/XRecyclerView;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/kantv/lib/recyclerview/XRecyclerView$1;->this$0:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView$1;->this$0:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-static {v0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->access$000(Lcom/kantv/lib/recyclerview/XRecyclerView;)Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;->onLoadMore()V

    return-void
.end method
