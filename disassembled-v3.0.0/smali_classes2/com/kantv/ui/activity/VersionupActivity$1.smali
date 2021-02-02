.class Lcom/kantv/ui/activity/VersionupActivity$1;
.super Lcom/kantv/common/api/CommonCallBack;
.source "VersionupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VersionupActivity;->initVersionUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VersionupActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VersionupActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/kantv/ui/activity/VersionupActivity$1;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

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

    .line 137
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 138
    iget-object p1, p0, Lcom/kantv/ui/activity/VersionupActivity$1;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VersionupActivity;->access$000(Lcom/kantv/ui/activity/VersionupActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 139
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/VersionupActivity$1;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 140
    iget-object p1, p0, Lcom/kantv/ui/activity/VersionupActivity$1;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 142
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "data"

    .line 143
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 145
    :cond_2
    iget-object p2, p0, Lcom/kantv/ui/activity/VersionupActivity$1;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    const-string v0, "version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/kantv/ui/activity/VersionupActivity;->access$102(Lcom/kantv/ui/activity/VersionupActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    iget-object p2, p0, Lcom/kantv/ui/activity/VersionupActivity$1;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    iget-object p2, p2, Lcom/kantv/ui/activity/VersionupActivity;->mText:Landroid/widget/TextView;

    const-string v1, "content"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "version_update_content"

    invoke-static {p2, v2, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    iget-object p2, p0, Lcom/kantv/ui/activity/VersionupActivity$1;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    invoke-static {p2}, Lcom/kantv/common/utils/Utils;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge p2, v1, :cond_7

    .line 149
    iget-object p2, p0, Lcom/kantv/ui/activity/VersionupActivity$1;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    iget-object p2, p2, Lcom/kantv/ui/activity/VersionupActivity;->mPresent:Landroid/widget/TextView;

    const-string v1, "\u5f53\u524d\u6709\u7248\u672c\u66f4\u65b0"

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p2, "link"

    .line 150
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 151
    iget-object v1, p0, Lcom/kantv/ui/activity/VersionupActivity$1;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 154
    iget-object p1, p0, Lcom/kantv/ui/activity/VersionupActivity$1;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    sget-object p2, Lcom/kantv/ui/MainActivity;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 156
    :cond_3
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/downloadapk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    new-instance v2, Lcom/kantv/ui/utils/DownloadUtils;

    iget-object v3, p0, Lcom/kantv/ui/activity/VersionupActivity$1;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    invoke-direct {v2, v3, p1}, Lcom/kantv/ui/utils/DownloadUtils;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 158
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 159
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 161
    :cond_4
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kantv"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".apk"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 163
    iget-object v1, p0, Lcom/kantv/ui/activity/VersionupActivity$1;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/kantv/common/utils/Utils;->validateApk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 164
    iget-object p1, p0, Lcom/kantv/ui/activity/VersionupActivity$1;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VersionupActivity;->access$200(Lcom/kantv/ui/activity/VersionupActivity;)V

    goto :goto_1

    .line 167
    :cond_5
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 169
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    :goto_0
    iget-object v1, p0, Lcom/kantv/ui/activity/VersionupActivity$1;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Lcom/kantv/ui/activity/VersionupActivity;->downloadAPK(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 174
    :cond_6
    iget-object v1, p0, Lcom/kantv/ui/activity/VersionupActivity$1;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Lcom/kantv/ui/activity/VersionupActivity;->downloadAPK(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 178
    :cond_7
    iget-object p1, p0, Lcom/kantv/ui/activity/VersionupActivity$1;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VersionupActivity;->mPresent:Landroid/widget/TextView;

    const-string p2, "\u5f53\u524d\u5df2\u7ecf\u662f\u6700\u65b0\u7248\u672c\uff0c\u65e0\u9700\u66f4\u65b0\uff01"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_1
    return-void
.end method
