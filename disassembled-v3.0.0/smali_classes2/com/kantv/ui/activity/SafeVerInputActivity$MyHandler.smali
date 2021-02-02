.class Lcom/kantv/ui/activity/SafeVerInputActivity$MyHandler;
.super Landroid/os/Handler;
.source "SafeVerInputActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/activity/SafeVerInputActivity;
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
            "Lcom/kantv/ui/activity/SafeVerInputActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/SafeVerInputActivity;)V
    .locals 1

    .line 202
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 203
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 208
    iget-object p1, p0, Lcom/kantv/ui/activity/SafeVerInputActivity$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 211
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/SafeVerInputActivity$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/activity/SafeVerInputActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/activity/SafeVerInputActivity;->todo()V

    return-void
.end method
