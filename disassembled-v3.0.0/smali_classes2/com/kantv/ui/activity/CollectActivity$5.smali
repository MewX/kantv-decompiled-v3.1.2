.class Lcom/kantv/ui/activity/CollectActivity$5;
.super Lcom/kantv/common/api/CommonCallBack;
.source "CollectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/CollectActivity;->removeBatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/CollectActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/CollectActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$5;->this$0:Lcom/kantv/ui/activity/CollectActivity;

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

    .line 289
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 290
    iget-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$5;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/CollectActivity;->access$700(Lcom/kantv/ui/activity/CollectActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 291
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$5;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 292
    iget-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$5;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 294
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 295
    iget-object p2, p0, Lcom/kantv/ui/activity/CollectActivity$5;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/kantv/ui/activity/CollectActivity;->access$502(Lcom/kantv/ui/activity/CollectActivity;I)I

    .line 296
    iget-object p2, p0, Lcom/kantv/ui/activity/CollectActivity$5;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    iget-object p2, p2, Lcom/kantv/ui/activity/CollectActivity;->titleRightTv:Landroid/widget/TextView;

    const-string v1, "\u7f16\u8f91"

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object p2, p0, Lcom/kantv/ui/activity/CollectActivity$5;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    iget-object p2, p2, Lcom/kantv/ui/activity/CollectActivity;->collectEditLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 298
    iget-object p2, p0, Lcom/kantv/ui/activity/CollectActivity$5;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-static {p2}, Lcom/kantv/ui/activity/CollectActivity;->access$200(Lcom/kantv/ui/activity/CollectActivity;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 299
    iget-object p2, p0, Lcom/kantv/ui/activity/CollectActivity$5;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-static {p2}, Lcom/kantv/ui/activity/CollectActivity;->access$200(Lcom/kantv/ui/activity/CollectActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 300
    :cond_2
    iget-object p2, p0, Lcom/kantv/ui/activity/CollectActivity$5;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-static {p2}, Lcom/kantv/ui/activity/CollectActivity;->access$300(Lcom/kantv/ui/activity/CollectActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 301
    iget-object p2, p0, Lcom/kantv/ui/activity/CollectActivity$5;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-static {p2}, Lcom/kantv/ui/activity/CollectActivity;->access$300(Lcom/kantv/ui/activity/CollectActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    .line 302
    :cond_3
    iget-object p2, p0, Lcom/kantv/ui/activity/CollectActivity$5;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-static {p2, v0}, Lcom/kantv/ui/activity/CollectActivity;->access$400(Lcom/kantv/ui/activity/CollectActivity;Z)V

    const-string p2, "msg"

    .line 303
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method
