.class Lcom/kantv/ui/activity/HistoryActivity$7;
.super Lcom/kantv/common/api/CommonCallBack;
.source "HistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/HistoryActivity;->RemoveHisory(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/HistoryActivity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/HistoryActivity;Landroid/content/Context;ZI)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity$7;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    iput p4, p0, Lcom/kantv/ui/activity/HistoryActivity$7;->val$position:I

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

    .line 337
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 338
    iget-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity$7;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/HistoryActivity;->access$900(Lcom/kantv/ui/activity/HistoryActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 339
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity$7;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 340
    iget-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity$7;->json:Ljava/lang/String;

    const-string p2, "\u5220\u9664\u5386\u53f2\u8bb0\u5f55"

    invoke-static {p2, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity$7;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 343
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 344
    iget-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity$7;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/HistoryActivity;->access$000(Lcom/kantv/ui/activity/HistoryActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity$7;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/HistoryActivity;->access$000(Lcom/kantv/ui/activity/HistoryActivity;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/kantv/ui/activity/HistoryActivity$7;->val$position:I

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 345
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity$7;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/HistoryActivity;->access$300(Lcom/kantv/ui/activity/HistoryActivity;)Lcom/kantv/ui/adapter/HistoryAdapter;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 346
    iget-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity$7;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/HistoryActivity;->access$300(Lcom/kantv/ui/activity/HistoryActivity;)Lcom/kantv/ui/adapter/HistoryAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kantv/ui/adapter/HistoryAdapter;->notifyDataSetChanged()V

    :cond_3
    const-string p1, "\u5220\u9664\u6210\u529f\uff01"

    .line 347
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 348
    :cond_4
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "401"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 349
    invoke-static {}, Ldebug/KanApplication;->clearLogin()V

    .line 350
    iget-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity$7;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/activity/HistoryActivity;->finish()V

    const-string p1, "\u60a8\u5df2\u7ecf\u9000\u51fa\u4e86\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55\uff01"

    .line 351
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_0
    return-void
.end method
