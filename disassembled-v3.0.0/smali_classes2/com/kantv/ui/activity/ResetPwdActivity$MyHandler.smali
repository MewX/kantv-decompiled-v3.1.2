.class Lcom/kantv/ui/activity/ResetPwdActivity$MyHandler;
.super Landroid/os/Handler;
.source "ResetPwdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/activity/ResetPwdActivity;
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
            "Lcom/kantv/ui/activity/ResetPwdActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/ResetPwdActivity;)V
    .locals 1

    .line 441
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 442
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 447
    iget-object p1, p0, Lcom/kantv/ui/activity/ResetPwdActivity$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 450
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/ResetPwdActivity$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/activity/ResetPwdActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/activity/ResetPwdActivity;->todo()V

    return-void
.end method
