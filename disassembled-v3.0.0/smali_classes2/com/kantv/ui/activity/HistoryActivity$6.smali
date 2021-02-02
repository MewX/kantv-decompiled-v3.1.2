.class Lcom/kantv/ui/activity/HistoryActivity$6;
.super Lcom/kantv/common/api/CommonCallBack;
.source "HistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/HistoryActivity;->removeBatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/HistoryActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/HistoryActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity$6;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
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

    .line 297
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 298
    iget-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity$6;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/HistoryActivity;->access$800(Lcom/kantv/ui/activity/HistoryActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 299
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity$6;->json:Ljava/lang/String;

    const-string p2, "\u6279\u91cf\u5220\u9664\u5386\u53f2\u8bb0\u5f55"

    invoke-static {p2, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity$6;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 301
    iget-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity$6;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 303
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 304
    iget-object p2, p0, Lcom/kantv/ui/activity/HistoryActivity$6;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/kantv/ui/activity/HistoryActivity;->access$602(Lcom/kantv/ui/activity/HistoryActivity;I)I

    .line 305
    iget-object p2, p0, Lcom/kantv/ui/activity/HistoryActivity$6;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    iget-object p2, p2, Lcom/kantv/ui/activity/HistoryActivity;->titleRightTv:Landroid/widget/TextView;

    const-string v0, "\u7f16\u8f91"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object p2, p0, Lcom/kantv/ui/activity/HistoryActivity$6;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    iget-object p2, p2, Lcom/kantv/ui/activity/HistoryActivity;->watchEditLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 308
    iget-object p2, p0, Lcom/kantv/ui/activity/HistoryActivity$6;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {p2}, Lcom/kantv/ui/activity/HistoryActivity;->access$000(Lcom/kantv/ui/activity/HistoryActivity;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/kantv/ui/activity/HistoryActivity$6;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {p2}, Lcom/kantv/ui/activity/HistoryActivity;->access$000(Lcom/kantv/ui/activity/HistoryActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 309
    :cond_2
    iget-object p2, p0, Lcom/kantv/ui/activity/HistoryActivity$6;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {p2}, Lcom/kantv/ui/activity/HistoryActivity;->access$300(Lcom/kantv/ui/activity/HistoryActivity;)Lcom/kantv/ui/adapter/HistoryAdapter;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 310
    iget-object p2, p0, Lcom/kantv/ui/activity/HistoryActivity$6;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {p2}, Lcom/kantv/ui/activity/HistoryActivity;->access$300(Lcom/kantv/ui/activity/HistoryActivity;)Lcom/kantv/ui/adapter/HistoryAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kantv/ui/adapter/HistoryAdapter;->notifyDataSetChanged()V

    .line 311
    :cond_3
    iget-object p2, p0, Lcom/kantv/ui/activity/HistoryActivity$6;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/kantv/ui/activity/HistoryActivity;->access$500(Lcom/kantv/ui/activity/HistoryActivity;Z)V

    const-string p2, "msg"

    .line 312
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method
