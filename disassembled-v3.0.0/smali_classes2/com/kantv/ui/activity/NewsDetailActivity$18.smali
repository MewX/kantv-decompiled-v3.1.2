.class Lcom/kantv/ui/activity/NewsDetailActivity$18;
.super Lcom/kantv/common/api/CommonCallBack;
.source "NewsDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/NewsDetailActivity;->initRequestLikeThis(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/NewsDetailActivity;Landroid/content/Context;ZI)V
    .locals 0

    .line 1305
    iput-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$18;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    iput p4, p0, Lcom/kantv/ui/activity/NewsDetailActivity$18;->val$position:I

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

    .line 1308
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 1309
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$18;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$5000(Lcom/kantv/ui/activity/NewsDetailActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1310
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$18;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1311
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$18;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 1313
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1314
    iget-object p2, p0, Lcom/kantv/ui/activity/NewsDetailActivity$18;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {p2}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$2200(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/List;

    move-result-object p2

    iget v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$18;->val$position:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kantv/ui/bean/CommentChildBean;

    const-string v0, "1"

    invoke-virtual {p2, v0}, Lcom/kantv/ui/bean/CommentChildBean;->setStr4(Ljava/lang/String;)V

    .line 1315
    iget-object p2, p0, Lcom/kantv/ui/activity/NewsDetailActivity$18;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {p2}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$2200(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/List;

    move-result-object p2

    iget v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$18;->val$position:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kantv/ui/bean/CommentChildBean;

    invoke-virtual {p2}, Lcom/kantv/ui/bean/CommentChildBean;->getStr8()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 1316
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$18;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$2200(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$18;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/CommentChildBean;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/kantv/ui/bean/CommentChildBean;->setStr8(Ljava/lang/String;)V

    .line 1317
    iget-object p2, p0, Lcom/kantv/ui/activity/NewsDetailActivity$18;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {p2}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$5100(Lcom/kantv/ui/activity/NewsDetailActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1318
    iget-object p2, p0, Lcom/kantv/ui/activity/NewsDetailActivity$18;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {p2}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$5100(Lcom/kantv/ui/activity/NewsDetailActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    :cond_2
    const-string p2, "msg"

    .line 1320
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
