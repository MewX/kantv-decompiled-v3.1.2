.class Lcom/kantv/ui/activity/VideoPlayActivity$51;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity;->initLimitIpDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V
    .locals 0

    .line 3057
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$51;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 3060
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$51;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const-class v0, Lcom/kantv/ui/activity/AccountLoginActivity;

    invoke-virtual {p1, v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->gotoActivity(Ljava/lang/Class;)V

    return-void
.end method
