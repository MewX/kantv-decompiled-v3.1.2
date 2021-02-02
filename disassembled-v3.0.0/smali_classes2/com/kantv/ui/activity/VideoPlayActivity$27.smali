.class Lcom/kantv/ui/activity/VideoPlayActivity$27;
.super Lcom/kantv/common/api/CommonCallBack;
.source "VideoPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity;->initVersionUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 1890
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$27;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

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

    .line 1893
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 1894
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$27;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$4600(Lcom/kantv/ui/activity/VideoPlayActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1895
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$27;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1896
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$27;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 1898
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "data"

    .line 1899
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 1901
    :cond_2
    iget-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$27;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p2}, Lcom/kantv/common/utils/Utils;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    const-string v0, "version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ge p2, p1, :cond_3

    .line 1902
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$27;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const-string p2, "\u5f53\u524d\u7248\u672c\u6709\u66f4\u65b0"

    const-string v0, "\u66f4\u65b0\u540e\uff0c\u89c2\u770b\u4f53\u9a8c\u66f4\u597d\uff01"

    invoke-static {p1, p2, v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$4700(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
