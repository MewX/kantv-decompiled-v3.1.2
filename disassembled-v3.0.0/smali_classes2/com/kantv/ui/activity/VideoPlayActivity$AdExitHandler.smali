.class Lcom/kantv/ui/activity/VideoPlayActivity$AdExitHandler;
.super Landroid/os/Handler;
.source "VideoPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/activity/VideoPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdExitHandler"
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/kantv/ui/activity/VideoPlayActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V
    .locals 1

    .line 3183
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 3184
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$AdExitHandler;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 3189
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$AdExitHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3192
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$AdExitHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->todo()V

    return-void
.end method
