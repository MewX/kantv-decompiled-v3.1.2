.class Lcom/kantv/ui/fragment/VideoDetailFragment$8;
.super Lcom/kantv/common/api/CommonCallBack;
.source "VideoDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/VideoDetailFragment;->requestSwitchVideo(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

.field final synthetic val$part:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoDetailFragment;Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0

    .line 1015
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iput-object p4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->val$part:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 10
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

    .line 1018
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 1019
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$1000(Lcom/kantv/ui/fragment/VideoDetailFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1020
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 1021
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 1023
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "data"

    .line 1024
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 1026
    :cond_2
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    const-string v1, "playinfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->playinfo:Lorg/json/JSONObject;

    .line 1027
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->playinfo:Lorg/json/JSONObject;

    if-nez v0, :cond_3

    return-void

    :cond_3
    const-string v0, "info"

    .line 1028
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    .line 1030
    :cond_4
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    const-string v1, "seo_title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->title:Ljava/lang/String;

    .line 1031
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v1, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->playinfo:Lorg/json/JSONObject;

    const-string v2, "uniShareUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->shareurl:Ljava/lang/String;

    .line 1032
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    const-string v1, "photo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->photo:Ljava/lang/String;

    .line 1033
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->playinfo:Lorg/json/JSONObject;

    const-string v1, "must_shared"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1034
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->playinfo:Lorg/json/JSONObject;

    const-string v1, "limitIp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_5

    return-void

    .line 1036
    :cond_5
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string p2, "msg"

    .line 1037
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1038
    iget-object p2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object p2, p2, Lcom/kantv/ui/fragment/VideoDetailFragment;->playinfo:Lorg/json/JSONObject;

    const-string v0, "watch_condition"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string p2, "_id"

    .line 1039
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->tvid:Ljava/lang/String;

    .line 1063
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->val$part:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isNum(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1064
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u7b2c"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->val$part:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u96c6"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->title:Ljava/lang/String;

    goto :goto_0

    .line 1066
    :cond_6
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->val$part:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->title:Ljava/lang/String;

    .line 1068
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u5207\u6362\u6807\u9898"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object p2, p2, Lcom/kantv/ui/fragment/VideoDetailFragment;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoDetailFragment"

    invoke-static {p2, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$200(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lcom/kantv/ui/activity/VideoPlayActivity;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 1070
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$200(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lcom/kantv/ui/activity/VideoPlayActivity;

    move-result-object p1

    iget-boolean p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->tpChoice:Z

    const-string v0, "url"

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$200(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lcom/kantv/ui/activity/VideoPlayActivity;

    move-result-object p1

    iget-boolean p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->isnotshow:Z

    if-eqz p1, :cond_7

    goto :goto_1

    .line 1086
    :cond_7
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$200(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lcom/kantv/ui/activity/VideoPlayActivity;

    move-result-object v1

    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->playinfo:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->playinfo:Lorg/json/JSONObject;

    const-string p2, "playlogo"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v4, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->title:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->playinfo:Lorg/json/JSONObject;

    const-string p2, "prologue"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->playinfo:Lorg/json/JSONObject;

    const-string p2, "epilogue"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual/range {v1 .. v9}, Lcom/kantv/ui/activity/VideoPlayActivity;->switchPlayVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1071
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$200(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lcom/kantv/ui/activity/VideoPlayActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v1, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->playinfo:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->currentUrl:Ljava/lang/String;

    .line 1072
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5207\u6362\u6295\u5c4furl"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v1, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->playinfo:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$200(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lcom/kantv/ui/activity/VideoPlayActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->play()V

    .line 1090
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    const/4 p2, 0x0

    iput p2, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->isplay:I

    const/4 p2, 0x1

    .line 1091
    invoke-static {p1, p2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$1102(Lcom/kantv/ui/fragment/VideoDetailFragment;Z)Z

    .line 1093
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1, p2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$1202(Lcom/kantv/ui/fragment/VideoDetailFragment;Z)Z

    goto :goto_3

    :cond_a
    const-string p1, "\u6570\u636e\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002\u3002"

    .line 1096
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_3
    return-void
.end method
