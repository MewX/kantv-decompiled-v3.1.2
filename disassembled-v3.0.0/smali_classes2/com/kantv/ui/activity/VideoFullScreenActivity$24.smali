.class Lcom/kantv/ui/activity/VideoFullScreenActivity$24;
.super Ljava/lang/Object;
.source "VideoFullScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoFullScreenActivity;->refreshDeviceList(Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

.field final synthetic val$refreshLi:Landroid/widget/TextView;

.field final synthetic val$seachingRe:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 1257
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$24;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    iput-object p2, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$24;->val$seachingRe:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$24;->val$refreshLi:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1260
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$24;->val$seachingRe:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1261
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$24;->val$refreshLi:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
