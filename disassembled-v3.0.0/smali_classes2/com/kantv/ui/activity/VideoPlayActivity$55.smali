.class Lcom/kantv/ui/activity/VideoPlayActivity$55;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity;->wxAppNoInstallDialog()V
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

    .line 3160
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$55;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 3163
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "url"

    const-string v1, "https://weixin.qq.com/cgi-bin/readtemplate?t=w_down"

    .line 3164
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3165
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$55;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const-class v1, Lcom/kantv/ui/activity/WebViewActivity;

    invoke-virtual {v0, p1, v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    return-void
.end method
