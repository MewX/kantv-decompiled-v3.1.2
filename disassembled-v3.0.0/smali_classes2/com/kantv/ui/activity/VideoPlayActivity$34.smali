.class Lcom/kantv/ui/activity/VideoPlayActivity$34;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity;->commentDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

.field final synthetic val$commentET:Landroid/widget/EditText;

.field final synthetic val$mBottomView:Lcom/tandong/bottomview/view/BottomView;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity;Landroid/widget/EditText;Lcom/tandong/bottomview/view/BottomView;)V
    .locals 0

    .line 2284
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$34;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iput-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$34;->val$commentET:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/kantv/ui/activity/VideoPlayActivity$34;->val$mBottomView:Lcom/tandong/bottomview/view/BottomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 2287
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$34;->val$commentET:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2288
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2289
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "\u8bf7\u8f93\u5165\u8bc4\u8bba\u5185\u5bb9"

    .line 2290
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 2293
    :cond_0
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$34;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$5100(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 2294
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$34;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$5200(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v3, "noncestr"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2295
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$34;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$5300(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2296
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$34;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$5400(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v3, "sbID"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2297
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$34;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$5500(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v3, "sign"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2298
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$34;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$5600(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2299
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$34;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$5700(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$34;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "tid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tvid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2300
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$34;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$5800(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "0"

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2301
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$34;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$5900(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "content"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2302
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$34;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$6000(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "devicetype"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2303
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$34;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$6100(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;

    move-result-object p1

    sget-object v0, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v1, "interfaceVersion"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2304
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object p1

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$34;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$6400(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/kantv/common/api/ApiService;->doComment(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/kantv/ui/activity/VideoPlayActivity$34$1;

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$34;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/kantv/ui/activity/VideoPlayActivity$34$1;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity$34;Landroid/content/Context;Z)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
