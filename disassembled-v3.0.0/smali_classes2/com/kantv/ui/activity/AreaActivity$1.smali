.class Lcom/kantv/ui/activity/AreaActivity$1;
.super Lcom/kantv/common/api/CommonCallBack;
.source "AreaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/AreaActivity;->initRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/AreaActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/AreaActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/kantv/ui/activity/AreaActivity$1;->this$0:Lcom/kantv/ui/activity/AreaActivity;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 7
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

    .line 89
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 90
    iget-object p1, p0, Lcom/kantv/ui/activity/AreaActivity$1;->this$0:Lcom/kantv/ui/activity/AreaActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/AreaActivity;->access$000(Lcom/kantv/ui/activity/AreaActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/AreaActivity$1;->json:Ljava/lang/String;

    const-string p2, "AreaActivity"

    invoke-static {p2, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/kantv/ui/activity/AreaActivity$1;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 93
    iget-object p1, p0, Lcom/kantv/ui/activity/AreaActivity$1;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 95
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "data"

    .line 96
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 97
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p2, 0x0

    .line 100
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_5

    .line 101
    iget-object v0, p0, Lcom/kantv/ui/activity/AreaActivity$1;->this$0:Lcom/kantv/ui/activity/AreaActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/AreaActivity;->access$100(Lcom/kantv/ui/activity/AreaActivity;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/bean/StateBean;

    invoke-static {p1, p2}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "photo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-static {p1, p2}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "area_code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-static {p1, p2}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name_cn"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 104
    invoke-static {p1, p2}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "iso_code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kantv/ui/bean/StateBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 107
    :cond_3
    iget-object p1, p0, Lcom/kantv/ui/activity/AreaActivity$1;->this$0:Lcom/kantv/ui/activity/AreaActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/AreaActivity;->access$200(Lcom/kantv/ui/activity/AreaActivity;)V

    goto :goto_1

    .line 110
    :cond_4
    iget-object p1, p0, Lcom/kantv/ui/activity/AreaActivity$1;->this$0:Lcom/kantv/ui/activity/AreaActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/AreaActivity;->access$200(Lcom/kantv/ui/activity/AreaActivity;)V

    .line 113
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/kantv/ui/activity/AreaActivity$1;->this$0:Lcom/kantv/ui/activity/AreaActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/AreaActivity;->access$300(Lcom/kantv/ui/activity/AreaActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 114
    iget-object p1, p0, Lcom/kantv/ui/activity/AreaActivity$1;->this$0:Lcom/kantv/ui/activity/AreaActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/AreaActivity;->access$300(Lcom/kantv/ui/activity/AreaActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    :cond_6
    return-void
.end method
