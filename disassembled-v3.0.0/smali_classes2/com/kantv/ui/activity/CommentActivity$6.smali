.class Lcom/kantv/ui/activity/CommentActivity$6;
.super Ljava/lang/Object;
.source "CommentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/CommentActivity;->replyCommentDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/CommentActivity;

.field final synthetic val$commentET:Landroid/widget/EditText;

.field final synthetic val$mBottomView:Lcom/tandong/bottomview/view/BottomView;

.field final synthetic val$pid:Ljava/lang/String;

.field final synthetic val$tvid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/CommentActivity;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Lcom/tandong/bottomview/view/BottomView;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/kantv/ui/activity/CommentActivity$6;->this$0:Lcom/kantv/ui/activity/CommentActivity;

    iput-object p2, p0, Lcom/kantv/ui/activity/CommentActivity$6;->val$commentET:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/kantv/ui/activity/CommentActivity$6;->val$pid:Ljava/lang/String;

    iput-object p4, p0, Lcom/kantv/ui/activity/CommentActivity$6;->val$tvid:Ljava/lang/String;

    iput-object p5, p0, Lcom/kantv/ui/activity/CommentActivity$6;->val$mBottomView:Lcom/tandong/bottomview/view/BottomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 420
    iget-object p1, p0, Lcom/kantv/ui/activity/CommentActivity$6;->val$commentET:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 421
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 422
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "\u8bf7\u8f93\u5165\u8bc4\u8bba\u5185\u5bb9"

    .line 423
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/kantv/ui/activity/CommentActivity$6;->this$0:Lcom/kantv/ui/activity/CommentActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/CommentActivity;->access$900(Lcom/kantv/ui/activity/CommentActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 427
    iget-object v1, p0, Lcom/kantv/ui/activity/CommentActivity$6;->this$0:Lcom/kantv/ui/activity/CommentActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/CommentActivity;->access$1000(Lcom/kantv/ui/activity/CommentActivity;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v3, "noncestr"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    iget-object v1, p0, Lcom/kantv/ui/activity/CommentActivity$6;->this$0:Lcom/kantv/ui/activity/CommentActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/CommentActivity;->access$1100(Lcom/kantv/ui/activity/CommentActivity;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v1, p0, Lcom/kantv/ui/activity/CommentActivity$6;->this$0:Lcom/kantv/ui/activity/CommentActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/CommentActivity;->access$1200(Lcom/kantv/ui/activity/CommentActivity;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v3, "sbID"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v1, p0, Lcom/kantv/ui/activity/CommentActivity$6;->this$0:Lcom/kantv/ui/activity/CommentActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/CommentActivity;->access$1300(Lcom/kantv/ui/activity/CommentActivity;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v3, "sign"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget-object v1, p0, Lcom/kantv/ui/activity/CommentActivity$6;->this$0:Lcom/kantv/ui/activity/CommentActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/CommentActivity;->access$1400(Lcom/kantv/ui/activity/CommentActivity;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity$6;->val$pid:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity$6;->this$0:Lcom/kantv/ui/activity/CommentActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/CommentActivity;->access$1500(Lcom/kantv/ui/activity/CommentActivity;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/CommentActivity$6;->val$pid:Ljava/lang/String;

    const-string v2, "pid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity$6;->this$0:Lcom/kantv/ui/activity/CommentActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/CommentActivity;->access$1600(Lcom/kantv/ui/activity/CommentActivity;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/CommentActivity$6;->val$pid:Ljava/lang/String;

    const-string v2, "cid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity$6;->this$0:Lcom/kantv/ui/activity/CommentActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/CommentActivity;->access$1700(Lcom/kantv/ui/activity/CommentActivity;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/CommentActivity$6;->val$tvid:Ljava/lang/String;

    const-string v2, "tvid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity$6;->this$0:Lcom/kantv/ui/activity/CommentActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/CommentActivity;->access$1800(Lcom/kantv/ui/activity/CommentActivity;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "0"

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity$6;->this$0:Lcom/kantv/ui/activity/CommentActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/CommentActivity;->access$1900(Lcom/kantv/ui/activity/CommentActivity;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "content"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    iget-object p1, p0, Lcom/kantv/ui/activity/CommentActivity$6;->this$0:Lcom/kantv/ui/activity/CommentActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/CommentActivity;->access$2000(Lcom/kantv/ui/activity/CommentActivity;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "devicetype"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    iget-object p1, p0, Lcom/kantv/ui/activity/CommentActivity$6;->this$0:Lcom/kantv/ui/activity/CommentActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/CommentActivity;->access$2100(Lcom/kantv/ui/activity/CommentActivity;)Ljava/util/Map;

    move-result-object p1

    sget-object v0, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v1, "interfaceVersion"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object p1

    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity$6;->this$0:Lcom/kantv/ui/activity/CommentActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/CommentActivity;->access$2300(Lcom/kantv/ui/activity/CommentActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/kantv/common/api/ApiService;->replySubmit(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/kantv/ui/activity/CommentActivity$6$1;

    iget-object v1, p0, Lcom/kantv/ui/activity/CommentActivity$6;->this$0:Lcom/kantv/ui/activity/CommentActivity;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/kantv/ui/activity/CommentActivity$6$1;-><init>(Lcom/kantv/ui/activity/CommentActivity$6;Landroid/content/Context;Z)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
