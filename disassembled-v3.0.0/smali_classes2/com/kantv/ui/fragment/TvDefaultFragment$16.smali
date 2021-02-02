.class Lcom/kantv/ui/fragment/TvDefaultFragment$16;
.super Lcom/kantv/common/api/CommonCallBack;
.source "TvDefaultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/TvDefaultFragment;->initRequestPopAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/TvDefaultFragment;Landroid/content/Context;Z)V
    .locals 0

    .line 973
    iput-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$16;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 5
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

    .line 976
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 977
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$16;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$1400(Lcom/kantv/ui/fragment/TvDefaultFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 978
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$16;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 979
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$16;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 981
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "data"

    .line 982
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string p2, "photo"

    .line 984
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 985
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 986
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$16;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    new-instance v1, Lcom/tandong/bottomview/view/BottomView;

    invoke-virtual {v0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f1000af

    const v4, 0x7f0c0079

    invoke-direct {v1, v2, v3, v4}, Lcom/tandong/bottomview/view/BottomView;-><init>(Landroid/content/Context;II)V

    invoke-static {v0, v1}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$1502(Lcom/kantv/ui/fragment/TvDefaultFragment;Lcom/tandong/bottomview/view/BottomView;)Lcom/tandong/bottomview/view/BottomView;

    .line 987
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$16;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$1500(Lcom/kantv/ui/fragment/TvDefaultFragment;)Lcom/tandong/bottomview/view/BottomView;

    move-result-object v0

    const v1, 0x7f1000ad

    invoke-virtual {v0, v1}, Lcom/tandong/bottomview/view/BottomView;->setAnimation(I)V

    .line 988
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$16;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$1500(Lcom/kantv/ui/fragment/TvDefaultFragment;)Lcom/tandong/bottomview/view/BottomView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090166

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 989
    iget-object v1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$16;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    invoke-static {v1}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$1500(Lcom/kantv/ui/fragment/TvDefaultFragment;)Lcom/tandong/bottomview/view/BottomView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090167

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 990
    new-instance v2, Lcom/kantv/ui/fragment/TvDefaultFragment$16$1;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/fragment/TvDefaultFragment$16$1;-><init>(Lcom/kantv/ui/fragment/TvDefaultFragment$16;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1018
    new-instance p1, Lcom/kantv/ui/fragment/TvDefaultFragment$16$2;

    invoke-direct {p1, p0}, Lcom/kantv/ui/fragment/TvDefaultFragment$16$2;-><init>(Lcom/kantv/ui/fragment/TvDefaultFragment$16;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1027
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_4

    add-int/lit8 v0, p1, -0x3

    .line 1029
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "gif"

    .line 1030
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1031
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableTypeRequest;->asGif()Lcom/bumptech/glide/GifTypeRequest;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/GifTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/GifRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0

    .line 1033
    :cond_3
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 1034
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    const/4 p2, 0x0

    .line 1035
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/DrawableTypeRequest;->skipMemoryCache(Z)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 1037
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/fragment/TvDefaultFragment$16$3;

    invoke-direct {p2, p0}, Lcom/kantv/ui/fragment/TvDefaultFragment$16$3;-><init>(Lcom/kantv/ui/fragment/TvDefaultFragment$16;)V

    .line 1038
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 1051
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    :cond_4
    :goto_0
    return-void
.end method
