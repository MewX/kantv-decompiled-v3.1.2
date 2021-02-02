.class Lcom/kantv/video/DownloadVideoPlayer$3$5;
.super Ljava/lang/Object;
.source "DownloadVideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/video/DownloadVideoPlayer$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/video/DownloadVideoPlayer$3;

.field final synthetic val$mVideoMoreBv:Lcom/tandong/bottomview/view/BottomView;


# direct methods
.method constructor <init>(Lcom/kantv/video/DownloadVideoPlayer$3;Lcom/tandong/bottomview/view/BottomView;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3$5;->this$1:Lcom/kantv/video/DownloadVideoPlayer$3;

    iput-object p2, p0, Lcom/kantv/video/DownloadVideoPlayer$3$5;->val$mVideoMoreBv:Lcom/tandong/bottomview/view/BottomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 257
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "autoskip_video"

    invoke-static {p1, v2, v1}, Lcom/kantv/video/util/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 259
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/kantv/video/util/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 261
    :cond_0
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v1}, Lcom/kantv/video/util/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 263
    :goto_0
    iget-object v1, p0, Lcom/kantv/video/DownloadVideoPlayer$3$5;->val$mVideoMoreBv:Lcom/tandong/bottomview/view/BottomView;

    invoke-virtual {v1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/kantv/video/R$id;->autoSkipSwitch:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    xor-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
