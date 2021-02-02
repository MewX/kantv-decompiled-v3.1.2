.class Lcom/kantv/ui/fragment/VideoClassFragment$5;
.super Lcom/kantv/common/api/CommonCallBack;
.source "VideoClassFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/VideoClassFragment;->initRequest(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/VideoClassFragment;

.field final synthetic val$Data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoClassFragment;Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0

    .line 552
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment$5;->this$0:Lcom/kantv/ui/fragment/VideoClassFragment;

    iput-object p4, p0, Lcom/kantv/ui/fragment/VideoClassFragment$5;->val$Data:Ljava/lang/String;

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

    .line 584
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    .line 585
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment$5;->val$Data:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 586
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment$5;->this$0:Lcom/kantv/ui/fragment/VideoClassFragment;

    iget-object p2, p0, Lcom/kantv/ui/fragment/VideoClassFragment$5;->val$Data:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/kantv/ui/fragment/VideoClassFragment;->access$700(Lcom/kantv/ui/fragment/VideoClassFragment;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

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

    .line 555
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 556
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment$5;->this$0:Lcom/kantv/ui/fragment/VideoClassFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoClassFragment;->access$600(Lcom/kantv/ui/fragment/VideoClassFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 558
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment$5;->this$0:Lcom/kantv/ui/fragment/VideoClassFragment;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoClassFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    if-eqz p1, :cond_1

    .line 559
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment$5;->this$0:Lcom/kantv/ui/fragment/VideoClassFragment;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoClassFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->refreshComplete()V

    .line 560
    :cond_1
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment$5;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 561
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment$5;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string p2, "status"

    .line 563
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "200"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 565
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment$5;->this$0:Lcom/kantv/ui/fragment/VideoClassFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/VideoClassFragment;->access$300(Lcom/kantv/ui/fragment/VideoClassFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_json"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment$5;->json:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 566
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment$5;->this$0:Lcom/kantv/ui/fragment/VideoClassFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/VideoClassFragment;->access$300(Lcom/kantv/ui/fragment/VideoClassFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_time"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 569
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment$5;->this$0:Lcom/kantv/ui/fragment/VideoClassFragment;

    iget-object p2, p0, Lcom/kantv/ui/fragment/VideoClassFragment$5;->json:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/kantv/ui/fragment/VideoClassFragment;->access$700(Lcom/kantv/ui/fragment/VideoClassFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 571
    :cond_3
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment$5;->val$Data:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 572
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment$5;->this$0:Lcom/kantv/ui/fragment/VideoClassFragment;

    iget-object p2, p0, Lcom/kantv/ui/fragment/VideoClassFragment$5;->val$Data:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/kantv/ui/fragment/VideoClassFragment;->access$700(Lcom/kantv/ui/fragment/VideoClassFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 576
    :cond_4
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment$5;->val$Data:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 577
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment$5;->this$0:Lcom/kantv/ui/fragment/VideoClassFragment;

    iget-object p2, p0, Lcom/kantv/ui/fragment/VideoClassFragment$5;->val$Data:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/kantv/ui/fragment/VideoClassFragment;->access$700(Lcom/kantv/ui/fragment/VideoClassFragment;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method
