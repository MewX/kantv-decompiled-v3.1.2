.class Lcom/kantv/ui/fragment/VideoDetailFragment$12;
.super Lcom/kantv/common/api/CommonCallBack;
.source "VideoDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/VideoDetailFragment;->initOnlineStatus(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

.field final synthetic val$login:Z

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoDetailFragment;Landroid/content/Context;ZLjava/lang/String;Z)V
    .locals 0

    .line 1277
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$12;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iput-object p4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$12;->val$tag:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$12;->val$login:Z

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
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

    .line 1280
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 1281
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$12;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$1500(Lcom/kantv/ui/fragment/VideoDetailFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1282
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$12;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 1283
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$12;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 1285
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "data"

    .line 1286
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    const-string v0, "\u63d0\u793a"

    if-eqz p1, :cond_2

    .line 1287
    invoke-static {}, Ldebug/KanApplication;->clearLogin()V

    .line 1288
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$12;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$1602(Lcom/kantv/ui/fragment/VideoDetailFragment;Z)Z

    .line 1289
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$12;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    const-string v1, "\u4f60\u767b\u5165\u5df2\u8fc7\u671f\u6216\u8005\u5728\u522b\u7684\u5730\u65b9\u767b\u5165"

    invoke-static {p1, v0, v1, p2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$100(Lcom/kantv/ui/fragment/VideoDetailFragment;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1291
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$12;->val$tag:Ljava/lang/String;

    const-string v1, "download"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1292
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$12;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$1700(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lorg/json/JSONArray;

    .line 1295
    invoke-static {}, Lcom/kantv/ui/download/SettingsManager;->checkSDCard()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1296
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mounted"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_3

    .line 1297
    sget-boolean p1, Lcom/kantv/ui/download/SettingsManager;->isPhoneSdCard:Z

    if-eqz p1, :cond_4

    .line 1298
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$12;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1, v1, v2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$1802(Lcom/kantv/ui/fragment/VideoDetailFragment;J)J

    .line 1299
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$12;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1, v1, v2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$1902(Lcom/kantv/ui/fragment/VideoDetailFragment;J)J

    .line 1300
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$12;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$2000(Lcom/kantv/ui/fragment/VideoDetailFragment;)V

    .line 1301
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$12;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$2100(Lcom/kantv/ui/fragment/VideoDetailFragment;)V

    goto :goto_0

    .line 1306
    :cond_3
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$12;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1, v1, v2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$1802(Lcom/kantv/ui/fragment/VideoDetailFragment;J)J

    .line 1307
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$12;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1, v1, v2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$1902(Lcom/kantv/ui/fragment/VideoDetailFragment;J)J

    .line 1308
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$12;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$2000(Lcom/kantv/ui/fragment/VideoDetailFragment;)V

    .line 1309
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$12;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$2100(Lcom/kantv/ui/fragment/VideoDetailFragment;)V

    .line 1317
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SDcardTotalSize: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$12;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$1900(Lcom/kantv/ui/fragment/VideoDetailFragment;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/kantv/ui/fragment/VideoDetailFragment;->formetFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " SDcardUseSize: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$12;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$1800(Lcom/kantv/ui/fragment/VideoDetailFragment;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/kantv/ui/fragment/VideoDetailFragment;->formetFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "VideoDetailFragment"

    invoke-static {v1, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$12;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$2200(Lcom/kantv/ui/fragment/VideoDetailFragment;)V

    .line 1319
    iget-boolean p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$12;->val$login:Z

    if-eqz p1, :cond_6

    .line 1321
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$12;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$2300(Lcom/kantv/ui/fragment/VideoDetailFragment;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1322
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$12;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$2400(Lcom/kantv/ui/fragment/VideoDetailFragment;)V

    goto :goto_1

    .line 1324
    :cond_5
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$12;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-virtual {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->checkReadStorage()V

    goto :goto_1

    .line 1327
    :cond_6
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$12;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    const-string v1, "\u60a8\u5f53\u524d\u8fd8\u672a\u767b\u5f55\uff0c\u662f\u5426\u524d\u5f80\u767b\u5f55\uff1f"

    invoke-static {p1, v0, v1, p2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$100(Lcom/kantv/ui/fragment/VideoDetailFragment;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_7
    const-string p1, "\u4e0b\u8f7d\u529f\u80fd\u9700\u8981SD\u5361"

    .line 1313
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_1
    return-void
.end method
