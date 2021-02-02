.class Lcom/kantv/ui/activity/SearchResultActivity$3;
.super Lcom/kantv/common/api/CommonCallBack;
.source "SearchResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/SearchResultActivity;->initRequest(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/SearchResultActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/SearchResultActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity$3;->this$0:Lcom/kantv/ui/activity/SearchResultActivity;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 266
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    const-string p1, "\u7f51\u7edc\u51fa\u73b0\u5f02\u5e38"

    .line 268
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    .line 269
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity$3;->this$0:Lcom/kantv/ui/activity/SearchResultActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/SearchResultActivity;->mLoadErrorLayout:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 270
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity$3;->this$0:Lcom/kantv/ui/activity/SearchResultActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/SearchResultActivity;->mSearchResultLayout:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 8
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

    .line 184
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 185
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity$3;->this$0:Lcom/kantv/ui/activity/SearchResultActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/SearchResultActivity;->access$200(Lcom/kantv/ui/activity/SearchResultActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 186
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity$3;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 187
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity$3;->json:Ljava/lang/String;

    const-string p2, "\u641c\u7d22\u63a5\u53e3=="

    invoke-static {p2, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity$3;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 190
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    const-string p2, "data"

    .line 191
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    .line 193
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity$3;->this$0:Lcom/kantv/ui/activity/SearchResultActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/SearchResultActivity;->mLoadErrorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 194
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity$3;->this$0:Lcom/kantv/ui/activity/SearchResultActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/SearchResultActivity;->mSearchResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_2
    const-string p2, "channelList"

    .line 198
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 199
    invoke-static {p2}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 200
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 201
    invoke-static {p2, v0}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v3

    .line 202
    iget-object v4, p0, Lcom/kantv/ui/activity/SearchResultActivity$3;->this$0:Lcom/kantv/ui/activity/SearchResultActivity;

    iget-object v4, v4, Lcom/kantv/ui/activity/SearchResultActivity;->mSearchData:Ljava/util/List;

    new-instance v5, Lcom/kantv/ui/bean/String2Bean;

    const-string v6, "id"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "value"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Lcom/kantv/ui/bean/String2Bean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string p2, "rows"

    .line 223
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_4

    .line 226
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity$3;->this$0:Lcom/kantv/ui/activity/SearchResultActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/SearchResultActivity;->access$300(Lcom/kantv/ui/activity/SearchResultActivity;)V

    return-void

    :cond_4
    const-string p2, "row"

    .line 229
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 230
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-nez p1, :cond_5

    .line 231
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity$3;->this$0:Lcom/kantv/ui/activity/SearchResultActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/SearchResultActivity;->mLoadErrorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 232
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity$3;->this$0:Lcom/kantv/ui/activity/SearchResultActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/SearchResultActivity;->mSearchResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 245
    :cond_5
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity$3;->this$0:Lcom/kantv/ui/activity/SearchResultActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/SearchResultActivity;->access$300(Lcom/kantv/ui/activity/SearchResultActivity;)V

    goto :goto_1

    .line 247
    :cond_6
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "404"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "msg"

    .line 248
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    .line 249
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity$3;->this$0:Lcom/kantv/ui/activity/SearchResultActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/SearchResultActivity;->mLoadErrorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 250
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity$3;->this$0:Lcom/kantv/ui/activity/SearchResultActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/SearchResultActivity;->mSearchResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_7
    :goto_1
    return-void
.end method
