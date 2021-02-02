.class Lcom/kantv/ui/fragment/VideoDetailFragment$9;
.super Lcom/kantv/common/api/CommonCallBack;
.source "VideoDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/VideoDetailFragment;->requestCollect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoDetailFragment;Landroid/content/Context;Z)V
    .locals 0

    .line 1181
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$9;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

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

    .line 1184
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 1185
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$9;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$1300(Lcom/kantv/ui/fragment/VideoDetailFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1186
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$9;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1187
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$9;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 1189
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    .line 1190
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "msg"

    if-eqz v0, :cond_5

    .line 1191
    iget-object p2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$9;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$1400(Lcom/kantv/ui/fragment/VideoDetailFragment;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "is_collect"

    const-string v2, "0"

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$9;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$1400(Lcom/kantv/ui/fragment/VideoDetailFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1192
    iget-object p2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$9;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    const-string v2, "1"

    invoke-static {p2, v2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$1402(Lcom/kantv/ui/fragment/VideoDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1193
    iget-object p2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$9;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object p2, p2, Lcom/kantv/ui/fragment/VideoDetailFragment;->collectImg:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    .line 1194
    iget-object p2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$9;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object p2, p2, Lcom/kantv/ui/fragment/VideoDetailFragment;->collectImg:Landroid/widget/ImageView;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0802b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1195
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p2, v0, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1198
    :cond_2
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "\u70b9\u51fb\u6536\u85cf"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto :goto_0

    .line 1200
    :cond_3
    iget-object p2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$9;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p2, v2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$1402(Lcom/kantv/ui/fragment/VideoDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1201
    iget-object p2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$9;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object p2, p2, Lcom/kantv/ui/fragment/VideoDetailFragment;->collectImg:Landroid/widget/ImageView;

    if-eqz p2, :cond_4

    .line 1202
    iget-object p2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$9;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object p2, p2, Lcom/kantv/ui/fragment/VideoDetailFragment;->collectImg:Landroid/widget/ImageView;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0802b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1203
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p2, v0, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1206
    :cond_4
    :goto_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    const-string v0, "401"

    .line 1207
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1208
    invoke-static {}, Ldebug/KanApplication;->exitLogin()V

    .line 1209
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$9;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-virtual {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f0079

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1211
    :cond_6
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_1
    return-void
.end method
