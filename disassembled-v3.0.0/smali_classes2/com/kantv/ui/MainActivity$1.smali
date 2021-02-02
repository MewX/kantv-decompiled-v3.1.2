.class Lcom/kantv/ui/MainActivity$1;
.super Lcom/kantv/common/api/CommonCallBack;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/MainActivity;->requestFootTab(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/MainActivity;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kantv/ui/MainActivity;Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/kantv/ui/MainActivity$1;->this$0:Lcom/kantv/ui/MainActivity;

    iput-object p4, p0, Lcom/kantv/ui/MainActivity$1;->val$data:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0
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

    .line 245
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 246
    iget-object p1, p0, Lcom/kantv/ui/MainActivity$1;->this$0:Lcom/kantv/ui/MainActivity;

    invoke-static {p1}, Lcom/kantv/ui/MainActivity;->access$000(Lcom/kantv/ui/MainActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 247
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/MainActivity$1;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 248
    iget-object p1, p0, Lcom/kantv/ui/MainActivity$1;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 250
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "200"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 252
    iget-object p1, p0, Lcom/kantv/ui/MainActivity$1;->this$0:Lcom/kantv/ui/MainActivity;

    iget-object p2, p0, Lcom/kantv/ui/MainActivity$1;->json:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/kantv/ui/MainActivity;->access$100(Lcom/kantv/ui/MainActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/MainActivity$1;->val$data:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 255
    iget-object p1, p0, Lcom/kantv/ui/MainActivity$1;->this$0:Lcom/kantv/ui/MainActivity;

    iget-object p2, p0, Lcom/kantv/ui/MainActivity$1;->val$data:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/kantv/ui/MainActivity;->access$100(Lcom/kantv/ui/MainActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_3
    iget-object p1, p0, Lcom/kantv/ui/MainActivity$1;->this$0:Lcom/kantv/ui/MainActivity;

    invoke-static {p1}, Lcom/kantv/ui/MainActivity;->access$200(Lcom/kantv/ui/MainActivity;)V

    goto :goto_0

    .line 261
    :cond_4
    iget-object p1, p0, Lcom/kantv/ui/MainActivity$1;->val$data:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 262
    iget-object p1, p0, Lcom/kantv/ui/MainActivity$1;->this$0:Lcom/kantv/ui/MainActivity;

    iget-object p2, p0, Lcom/kantv/ui/MainActivity$1;->val$data:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/kantv/ui/MainActivity;->access$100(Lcom/kantv/ui/MainActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_5
    iget-object p1, p0, Lcom/kantv/ui/MainActivity$1;->this$0:Lcom/kantv/ui/MainActivity;

    invoke-static {p1}, Lcom/kantv/ui/MainActivity;->access$200(Lcom/kantv/ui/MainActivity;)V

    :goto_0
    return-void
.end method
