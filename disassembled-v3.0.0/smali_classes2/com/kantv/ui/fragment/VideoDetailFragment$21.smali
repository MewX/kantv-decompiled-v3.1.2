.class Lcom/kantv/ui/fragment/VideoDetailFragment$21;
.super Lcom/kantv/common/api/CommonCallBack;
.source "VideoDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/VideoDetailFragment;->initRequestLikeThis(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoDetailFragment;Landroid/content/Context;ZI)V
    .locals 0

    .line 2124
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$21;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iput p4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$21;->val$position:I

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

    .line 2127
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 2128
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$21;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$4100(Lcom/kantv/ui/fragment/VideoDetailFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2129
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$21;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 2130
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$21;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 2132
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2133
    iget-object p2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$21;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$800(Lcom/kantv/ui/fragment/VideoDetailFragment;)Ljava/util/List;

    move-result-object p2

    iget v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$21;->val$position:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kantv/ui/bean/CommentChildBean;

    const-string v0, "1"

    invoke-virtual {p2, v0}, Lcom/kantv/ui/bean/CommentChildBean;->setStr4(Ljava/lang/String;)V

    .line 2134
    iget-object p2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$21;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$800(Lcom/kantv/ui/fragment/VideoDetailFragment;)Ljava/util/List;

    move-result-object p2

    iget v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$21;->val$position:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kantv/ui/bean/CommentChildBean;

    invoke-virtual {p2}, Lcom/kantv/ui/bean/CommentChildBean;->getStr8()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 2135
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$21;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$800(Lcom/kantv/ui/fragment/VideoDetailFragment;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$21;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/CommentChildBean;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/kantv/ui/bean/CommentChildBean;->setStr8(Ljava/lang/String;)V

    .line 2136
    iget-object p2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$21;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$900(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2137
    iget-object p2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$21;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$900(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    :cond_2
    const-string p2, "msg"

    .line 2139
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
