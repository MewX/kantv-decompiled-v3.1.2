.class Lcom/kantv/ui/MainActivity$10;
.super Lcom/kantv/common/api/CommonCallBack;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/MainActivity;->initVersionUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/MainActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/kantv/ui/MainActivity$10;->this$0:Lcom/kantv/ui/MainActivity;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 6
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

    .line 605
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 606
    iget-object p1, p0, Lcom/kantv/ui/MainActivity$10;->this$0:Lcom/kantv/ui/MainActivity;

    invoke-static {p1}, Lcom/kantv/ui/MainActivity;->access$1100(Lcom/kantv/ui/MainActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 607
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/MainActivity$10;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 608
    iget-object p1, p0, Lcom/kantv/ui/MainActivity$10;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 610
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "data"

    .line 611
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string p2, "forced"

    .line 613
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 614
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "version"

    if-eqz v2, :cond_3

    .line 615
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, p2, v4}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 617
    :cond_3
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v2, "wx"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "weixing"

    invoke-static {p2, v4, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 618
    iget-object p2, p0, Lcom/kantv/ui/MainActivity$10;->this$0:Lcom/kantv/ui/MainActivity;

    invoke-static {p2}, Lcom/kantv/common/utils/Utils;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ge p2, v2, :cond_7

    const-string p2, "link"

    .line 619
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 620
    iget-object v2, p0, Lcom/kantv/ui/MainActivity$10;->this$0:Lcom/kantv/ui/MainActivity;

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v2, v4}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    .line 623
    iget-object p1, p0, Lcom/kantv/ui/MainActivity$10;->this$0:Lcom/kantv/ui/MainActivity;

    sget-object p2, Lcom/kantv/ui/MainActivity;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    invoke-static {p1, p2, v4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 625
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 626
    iget-object v0, p0, Lcom/kantv/ui/MainActivity$10;->this$0:Lcom/kantv/ui/MainActivity;

    invoke-static {v0}, Lcom/kantv/ui/utils/NetWorkUtils;->isWifi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 627
    iget-object v0, p0, Lcom/kantv/ui/MainActivity$10;->this$0:Lcom/kantv/ui/MainActivity;

    invoke-static {v0, p2, p1}, Lcom/kantv/ui/MainActivity;->access$1200(Lcom/kantv/ui/MainActivity;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 630
    :cond_5
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    .line 632
    iget-object v0, p0, Lcom/kantv/ui/MainActivity$10;->this$0:Lcom/kantv/ui/MainActivity;

    invoke-static {v0}, Lcom/kantv/ui/utils/NetWorkUtils;->isWifi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 633
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 634
    iget-object v0, p0, Lcom/kantv/ui/MainActivity$10;->this$0:Lcom/kantv/ui/MainActivity;

    invoke-static {v0, p2, p1}, Lcom/kantv/ui/MainActivity;->access$1200(Lcom/kantv/ui/MainActivity;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 637
    :cond_6
    iget-object v0, p0, Lcom/kantv/ui/MainActivity$10;->this$0:Lcom/kantv/ui/MainActivity;

    invoke-static {v0, p2, p1}, Lcom/kantv/ui/MainActivity;->access$1200(Lcom/kantv/ui/MainActivity;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_7
    :goto_0
    return-void
.end method
