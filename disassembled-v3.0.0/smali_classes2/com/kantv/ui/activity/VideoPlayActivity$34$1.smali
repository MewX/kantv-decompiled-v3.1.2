.class Lcom/kantv/ui/activity/VideoPlayActivity$34$1;
.super Lcom/kantv/common/api/CommonCallBack;
.source "VideoPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity$34;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/VideoPlayActivity$34;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity$34;Landroid/content/Context;Z)V
    .locals 0

    .line 2304
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$34$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$34;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Lretrofit2/Response<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    .line 2307
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 2308
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$34$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$34;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$34;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$6200(Lcom/kantv/ui/activity/VideoPlayActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2309
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$34$1;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 2311
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$34$1;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 2313
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2314
    iget-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$34$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$34;

    iget-object p2, p2, Lcom/kantv/ui/activity/VideoPlayActivity$34;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p2, p2, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    if-eqz p2, :cond_2

    .line 2315
    iget-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$34$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$34;

    iget-object p2, p2, Lcom/kantv/ui/activity/VideoPlayActivity$34;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p2, p2, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-virtual {p2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->refreshCommentsData()V

    .line 2317
    :cond_2
    iget-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$34$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$34;

    iget-object p2, p2, Lcom/kantv/ui/activity/VideoPlayActivity$34;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$6300(Lcom/kantv/ui/activity/VideoPlayActivity;)Lcom/kantv/ui/fragment/VideoCommentFragment;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 2318
    iget-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$34$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$34;

    iget-object p2, p2, Lcom/kantv/ui/activity/VideoPlayActivity$34;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$6300(Lcom/kantv/ui/activity/VideoPlayActivity;)Lcom/kantv/ui/fragment/VideoCommentFragment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kantv/ui/fragment/VideoCommentFragment;->refreshCommentsData()V

    .line 2324
    :cond_3
    iget-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$34$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$34;

    iget-object p2, p2, Lcom/kantv/ui/activity/VideoPlayActivity$34;->val$commentET:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2326
    iget-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$34$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$34;

    iget-object p2, p2, Lcom/kantv/ui/activity/VideoPlayActivity$34;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const-string v0, "input_method"

    invoke-virtual {p2, v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p2, :cond_4

    .line 2328
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$34$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$34;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$34;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2339
    :cond_4
    iget-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$34$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$34;

    iget-object p2, p2, Lcom/kantv/ui/activity/VideoPlayActivity$34;->val$mBottomView:Lcom/tandong/bottomview/view/BottomView;

    invoke-virtual {p2}, Lcom/tandong/bottomview/view/BottomView;->dismissBottomView()V

    :cond_5
    const-string p2, "msg"

    .line 2341
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method
