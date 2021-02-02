.class Lcom/kantv/ui/activity/VideoPlayActivity$20$1;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity$20;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/VideoPlayActivity$20;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity$20;)V
    .locals 0

    .line 1508
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1511
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$20;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$20;

    iget-object v1, v1, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$20;

    iget-object v2, v2, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v2, v2, Lcom/kantv/ui/activity/VideoPlayActivity;->filmImgUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$3900(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->shareFilmImgUrl:Ljava/lang/String;

    return-void
.end method
