.class Lcom/kantv/ui/adapter/CommonAdapter$1;
.super Ljava/lang/Object;
.source "CommonAdapter.java"

# interfaces
.implements Lcom/kantv/ui/adapter/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/adapter/CommonAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kantv/ui/adapter/ItemViewDelegate<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/adapter/CommonAdapter;

.field final synthetic val$layoutId:I


# direct methods
.method constructor <init>(Lcom/kantv/ui/adapter/CommonAdapter;I)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/kantv/ui/adapter/CommonAdapter$1;->this$0:Lcom/kantv/ui/adapter/CommonAdapter;

    iput p2, p0, Lcom/kantv/ui/adapter/CommonAdapter$1;->val$layoutId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kantv/ui/adapter/ViewHolder;",
            "TT;I)V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/kantv/ui/adapter/CommonAdapter$1;->this$0:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kantv/ui/adapter/CommonAdapter;->convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/Object;I)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/kantv/ui/adapter/CommonAdapter$1;->val$layoutId:I

    return v0
.end method

.method public isForViewType(Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
