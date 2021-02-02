.class Lcom/kantv/ui/activity/NewsDetailActivity$6$1;
.super Lcom/kantv/common/api/CommonCallBack;
.source "NewsDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/NewsDetailActivity$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/NewsDetailActivity$6;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/NewsDetailActivity$6;Landroid/content/Context;Z)V
    .locals 0

    .line 828
    iput-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$6$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$6;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
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

    .line 831
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 832
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$6$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$6;

    iget-object p1, p1, Lcom/kantv/ui/activity/NewsDetailActivity$6;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$2100(Lcom/kantv/ui/activity/NewsDetailActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 833
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$6$1;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 834
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$6$1;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "input_method"

    if-nez p1, :cond_3

    const-string p1, "\u63d0\u4ea4\u5931\u8d25"

    .line 836
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    .line 838
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$6$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$6;

    iget-object p1, p1, Lcom/kantv/ui/activity/NewsDetailActivity$6;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-virtual {p1, v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_1

    .line 840
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$6$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$6;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity$6;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-virtual {v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 842
    :cond_1
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$6$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$6;

    iget-object p1, p1, Lcom/kantv/ui/activity/NewsDetailActivity$6;->val$mBottomView:Lcom/tandong/bottomview/view/BottomView;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$6$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$6;

    iget-object p1, p1, Lcom/kantv/ui/activity/NewsDetailActivity$6;->val$mBottomView:Lcom/tandong/bottomview/view/BottomView;

    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->dismissBottomView()V

    :cond_2
    return-void

    :cond_3
    const-string v1, "status"

    .line 845
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "200"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 846
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$6$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$6;

    iget-object v1, v1, Lcom/kantv/ui/activity/NewsDetailActivity$6;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$2200(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$6$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$6;

    iget-object v1, v1, Lcom/kantv/ui/activity/NewsDetailActivity$6;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$2200(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 847
    :cond_4
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$6$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$6;

    iget-object v1, v1, Lcom/kantv/ui/activity/NewsDetailActivity$6;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$2300(Lcom/kantv/ui/activity/NewsDetailActivity;)V

    .line 848
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$6$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$6;

    iget-object v1, v1, Lcom/kantv/ui/activity/NewsDetailActivity$6;->val$commentET:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 850
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$6$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$6;

    iget-object v1, v1, Lcom/kantv/ui/activity/NewsDetailActivity$6;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-virtual {v1, v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_5

    .line 852
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$6$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$6;

    iget-object v1, v1, Lcom/kantv/ui/activity/NewsDetailActivity$6;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-virtual {v1}, Lcom/kantv/ui/activity/NewsDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 854
    :cond_5
    iget-object p2, p0, Lcom/kantv/ui/activity/NewsDetailActivity$6$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$6;

    iget-object p2, p2, Lcom/kantv/ui/activity/NewsDetailActivity$6;->val$mBottomView:Lcom/tandong/bottomview/view/BottomView;

    invoke-virtual {p2}, Lcom/tandong/bottomview/view/BottomView;->dismissBottomView()V

    :cond_6
    const-string p2, "msg"

    .line 856
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method
