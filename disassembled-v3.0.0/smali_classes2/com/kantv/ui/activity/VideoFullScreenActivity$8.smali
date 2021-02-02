.class Lcom/kantv/ui/activity/VideoFullScreenActivity$8;
.super Ljava/lang/Object;
.source "VideoFullScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoFullScreenActivity;->initView2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$8;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 581
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$8;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->finish()V

    return-void
.end method
