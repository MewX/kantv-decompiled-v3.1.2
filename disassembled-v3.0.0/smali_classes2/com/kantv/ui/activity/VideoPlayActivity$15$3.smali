.class Lcom/kantv/ui/activity/VideoPlayActivity$15$3;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity$15;->onShare(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/VideoPlayActivity$15;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity$15;)V
    .locals 0

    .line 866
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$15$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 869
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$15$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$15;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$200(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    return-void
.end method
