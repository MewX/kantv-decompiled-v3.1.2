.class Lcom/kantv/ui/activity/RegisterActivity$MyHandler;
.super Landroid/os/Handler;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/activity/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/kantv/ui/activity/RegisterActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/RegisterActivity;)V
    .locals 1

    .line 270
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 271
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 276
    iget-object p1, p0, Lcom/kantv/ui/activity/RegisterActivity$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 279
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/RegisterActivity$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/activity/RegisterActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/activity/RegisterActivity;->todo()V

    return-void
.end method
