.class Lcom/kantv/ui/fragment/VideoDetailFragment$17;
.super Lcom/kantv/common/api/CommonCallBack;
.source "VideoDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/VideoDetailFragment;->requestAjaxPlay(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

.field final synthetic val$part:Ljava/lang/String;

.field final synthetic val$part_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoDetailFragment;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1698
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$17;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iput-object p4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$17;->val$part_id:Ljava/lang/String;

    iput-object p5, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$17;->val$part:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
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

    .line 1701
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 1702
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$17;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1703
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$17;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "status"

    .line 1705
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "data"

    .line 1706
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 1708
    :cond_1
    iget-object p2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$17;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    const-string v0, "size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$3402(Lcom/kantv/ui/fragment/VideoDetailFragment;J)J

    .line 1710
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$17;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object p2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$17;->val$part_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$17;->val$part:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$3500(Lcom/kantv/ui/fragment/VideoDetailFragment;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
