.class Lcom/kantv/lib/recyclerview/YunRefreshHeader$1;
.super Ljava/lang/Object;
.source "YunRefreshHeader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/lib/recyclerview/YunRefreshHeader;->refreshComplate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/lib/recyclerview/YunRefreshHeader;


# direct methods
.method constructor <init>(Lcom/kantv/lib/recyclerview/YunRefreshHeader;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader$1;->this$0:Lcom/kantv/lib/recyclerview/YunRefreshHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader$1;->this$0:Lcom/kantv/lib/recyclerview/YunRefreshHeader;

    invoke-virtual {v0}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->reset()V

    return-void
.end method
