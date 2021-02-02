.class Lcom/kantv/ui/activity/WelcomeActivity$5;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/WelcomeActivity;->parse(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/WelcomeActivity;

.field final synthetic val$data:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/WelcomeActivity;Lorg/json/JSONArray;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/kantv/ui/activity/WelcomeActivity$5;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    iput-object p2, p0, Lcom/kantv/ui/activity/WelcomeActivity$5;->val$data:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/kantv/ui/activity/WelcomeActivity$5;->val$data:Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "photo"

    .line 248
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    iget-object v0, p0, Lcom/kantv/ui/activity/WelcomeActivity$5;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/WelcomeActivity;->access$500(Lcom/kantv/ui/activity/WelcomeActivity;)V

    return-void

    .line 254
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "gif"

    .line 263
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const v4, 0x7f0802ba

    if-eqz v3, :cond_1

    .line 264
    iget-object v0, p0, Lcom/kantv/ui/activity/WelcomeActivity$5;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->asGif()Lcom/bumptech/glide/GifTypeRequest;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/bumptech/glide/GifTypeRequest;->placeholder(I)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/GifRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/WelcomeActivity$5;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    iget-object v1, v1, Lcom/kantv/ui/activity/WelcomeActivity;->welcomeImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/GifRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 265
    iget-object v0, p0, Lcom/kantv/ui/activity/WelcomeActivity$5;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/WelcomeActivity;->access$300(Lcom/kantv/ui/activity/WelcomeActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/WelcomeActivity$5$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/WelcomeActivity$5$1;-><init>(Lcom/kantv/ui/activity/WelcomeActivity$5;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 272
    :cond_1
    iget-object v3, p0, Lcom/kantv/ui/activity/WelcomeActivity$5;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    .line 273
    invoke-virtual {v3, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    .line 274
    invoke-virtual {v2, v4}, Lcom/bumptech/glide/DrawableTypeRequest;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    .line 275
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 276
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    new-instance v2, Lcom/kantv/ui/activity/WelcomeActivity$5$2;

    invoke-direct {v2, p0, v0}, Lcom/kantv/ui/activity/WelcomeActivity$5$2;-><init>(Lcom/kantv/ui/activity/WelcomeActivity$5;Lorg/json/JSONObject;)V

    .line 277
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/WelcomeActivity$5;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    iget-object v1, v1, Lcom/kantv/ui/activity/WelcomeActivity;->welcomeImg:Landroid/widget/ImageView;

    .line 333
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 336
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 337
    iget-object v0, p0, Lcom/kantv/ui/activity/WelcomeActivity$5;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/WelcomeActivity;->access$500(Lcom/kantv/ui/activity/WelcomeActivity;)V

    :goto_0
    return-void
.end method
