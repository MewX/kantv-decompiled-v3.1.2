.class Lcom/kantv/ui/activity/MoreRecommendActivity$1;
.super Lcom/kantv/common/api/CommonCallBack;
.source "MoreRecommendActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/MoreRecommendActivity;->initRequest(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/MoreRecommendActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/MoreRecommendActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/kantv/ui/activity/MoreRecommendActivity$1;->this$0:Lcom/kantv/ui/activity/MoreRecommendActivity;

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

    .line 109
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 110
    iget-object p1, p0, Lcom/kantv/ui/activity/MoreRecommendActivity$1;->this$0:Lcom/kantv/ui/activity/MoreRecommendActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/MoreRecommendActivity;->access$000(Lcom/kantv/ui/activity/MoreRecommendActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/MoreRecommendActivity$1;->this$0:Lcom/kantv/ui/activity/MoreRecommendActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/MoreRecommendActivity;->moreRecommendRV:Lcom/kantv/lib/recyclerview/XRecyclerView;

    if-eqz p1, :cond_1

    .line 112
    iget-object p1, p0, Lcom/kantv/ui/activity/MoreRecommendActivity$1;->this$0:Lcom/kantv/ui/activity/MoreRecommendActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/MoreRecommendActivity;->moreRecommendRV:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->refreshComplete()V

    .line 113
    :cond_1
    iget-object p1, p0, Lcom/kantv/ui/activity/MoreRecommendActivity$1;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 114
    iget-object p1, p0, Lcom/kantv/ui/activity/MoreRecommendActivity$1;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string p2, "status"

    .line 116
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "data"

    .line 117
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 118
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 121
    :cond_3
    iget-object p2, p0, Lcom/kantv/ui/activity/MoreRecommendActivity$1;->this$0:Lcom/kantv/ui/activity/MoreRecommendActivity;

    iget-object p2, p2, Lcom/kantv/ui/activity/MoreRecommendActivity;->mTodayRDData:Ljava/util/List;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/kantv/ui/activity/MoreRecommendActivity$1;->this$0:Lcom/kantv/ui/activity/MoreRecommendActivity;

    invoke-static {p2}, Lcom/kantv/ui/activity/MoreRecommendActivity;->access$100(Lcom/kantv/ui/activity/MoreRecommendActivity;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    .line 122
    iget-object p2, p0, Lcom/kantv/ui/activity/MoreRecommendActivity$1;->this$0:Lcom/kantv/ui/activity/MoreRecommendActivity;

    iget-object p2, p2, Lcom/kantv/ui/activity/MoreRecommendActivity;->mTodayRDData:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 124
    :cond_4
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    const/4 v0, 0x0

    .line 125
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 126
    invoke-static {p1, v0}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 128
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/kantv/ui/bean/MovieBean;

    invoke-virtual {p2, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/MovieBean;

    .line 129
    iget-object v2, p0, Lcom/kantv/ui/activity/MoreRecommendActivity$1;->this$0:Lcom/kantv/ui/activity/MoreRecommendActivity;

    iget-object v2, v2, Lcom/kantv/ui/activity/MoreRecommendActivity;->mTodayRDData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_6
    iget-object p1, p0, Lcom/kantv/ui/activity/MoreRecommendActivity$1;->this$0:Lcom/kantv/ui/activity/MoreRecommendActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/MoreRecommendActivity;->todayRDAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz p1, :cond_7

    .line 135
    iget-object p1, p0, Lcom/kantv/ui/activity/MoreRecommendActivity$1;->this$0:Lcom/kantv/ui/activity/MoreRecommendActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/MoreRecommendActivity;->todayRDAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {p1}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    :cond_7
    return-void
.end method
