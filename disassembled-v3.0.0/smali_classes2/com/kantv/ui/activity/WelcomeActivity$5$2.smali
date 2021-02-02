.class Lcom/kantv/ui/activity/WelcomeActivity$5$2;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/WelcomeActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Ljava/lang/String;",
        "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/WelcomeActivity$5;

.field final synthetic val$dg:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/WelcomeActivity$5;Lorg/json/JSONObject;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/kantv/ui/activity/WelcomeActivity$5$2;->this$1:Lcom/kantv/ui/activity/WelcomeActivity$5;

    iput-object p2, p0, Lcom/kantv/ui/activity/WelcomeActivity$5$2;->val$dg:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onException(Ljava/lang/Exception;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0

    .line 277
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kantv/ui/activity/WelcomeActivity$5$2;->onException(Ljava/lang/Exception;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;Z)Z

    move-result p1

    return p1
.end method

.method public onException(Ljava/lang/Exception;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;Z)Z"
        }
    .end annotation

    .line 280
    iget-object p1, p0, Lcom/kantv/ui/activity/WelcomeActivity$5$2;->this$1:Lcom/kantv/ui/activity/WelcomeActivity$5;

    iget-object p1, p1, Lcom/kantv/ui/activity/WelcomeActivity$5;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/WelcomeActivity;->access$500(Lcom/kantv/ui/activity/WelcomeActivity;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;ZZ)Z"
        }
    .end annotation

    .line 287
    iget-object p1, p0, Lcom/kantv/ui/activity/WelcomeActivity$5$2;->this$1:Lcom/kantv/ui/activity/WelcomeActivity$5;

    iget-object p1, p1, Lcom/kantv/ui/activity/WelcomeActivity$5;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/WelcomeActivity;->bottomImg:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    iget-object p1, p0, Lcom/kantv/ui/activity/WelcomeActivity$5$2;->this$1:Lcom/kantv/ui/activity/WelcomeActivity$5;

    iget-object p1, p1, Lcom/kantv/ui/activity/WelcomeActivity$5;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/WelcomeActivity;->welcomeImg:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 289
    iget-object p1, p0, Lcom/kantv/ui/activity/WelcomeActivity$5$2;->this$1:Lcom/kantv/ui/activity/WelcomeActivity$5;

    iget-object p1, p1, Lcom/kantv/ui/activity/WelcomeActivity$5;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    iget-object p3, p0, Lcom/kantv/ui/activity/WelcomeActivity$5$2;->val$dg:Lorg/json/JSONObject;

    const-string p4, "duration"

    invoke-virtual {p3, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    mul-int/lit8 p3, p3, 0xa

    invoke-static {p1, p3}, Lcom/kantv/ui/activity/WelcomeActivity;->access$202(Lcom/kantv/ui/activity/WelcomeActivity;I)I

    .line 290
    iget-object p1, p0, Lcom/kantv/ui/activity/WelcomeActivity$5$2;->this$1:Lcom/kantv/ui/activity/WelcomeActivity$5;

    iget-object p1, p1, Lcom/kantv/ui/activity/WelcomeActivity$5;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/WelcomeActivity;->access$100(Lcom/kantv/ui/activity/WelcomeActivity;)Lcom/kantv/ui/view/CircularProgressBar;

    move-result-object p1

    iget-object p3, p0, Lcom/kantv/ui/activity/WelcomeActivity$5$2;->this$1:Lcom/kantv/ui/activity/WelcomeActivity$5;

    iget-object p3, p3, Lcom/kantv/ui/activity/WelcomeActivity$5;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {p3}, Lcom/kantv/ui/activity/WelcomeActivity;->access$200(Lcom/kantv/ui/activity/WelcomeActivity;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/kantv/ui/view/CircularProgressBar;->setMax(I)V

    .line 291
    iget-object p1, p0, Lcom/kantv/ui/activity/WelcomeActivity$5$2;->this$1:Lcom/kantv/ui/activity/WelcomeActivity$5;

    iget-object p1, p1, Lcom/kantv/ui/activity/WelcomeActivity$5;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/WelcomeActivity;->access$100(Lcom/kantv/ui/activity/WelcomeActivity;)Lcom/kantv/ui/view/CircularProgressBar;

    move-result-object p1

    iget-object p3, p0, Lcom/kantv/ui/activity/WelcomeActivity$5$2;->this$1:Lcom/kantv/ui/activity/WelcomeActivity$5;

    iget-object p3, p3, Lcom/kantv/ui/activity/WelcomeActivity$5;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {p3}, Lcom/kantv/ui/activity/WelcomeActivity;->access$000(Lcom/kantv/ui/activity/WelcomeActivity;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/kantv/ui/view/CircularProgressBar;->setProgress(I)V

    .line 292
    iget-object p1, p0, Lcom/kantv/ui/activity/WelcomeActivity$5$2;->this$1:Lcom/kantv/ui/activity/WelcomeActivity$5;

    iget-object p1, p1, Lcom/kantv/ui/activity/WelcomeActivity$5;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/WelcomeActivity;->access$800(Lcom/kantv/ui/activity/WelcomeActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 293
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string p4, "isfirst"

    invoke-static {p1, p4, p3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 295
    iget-object p1, p0, Lcom/kantv/ui/activity/WelcomeActivity$5$2;->this$1:Lcom/kantv/ui/activity/WelcomeActivity$5;

    iget-object p1, p1, Lcom/kantv/ui/activity/WelcomeActivity$5;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/WelcomeActivity;->access$300(Lcom/kantv/ui/activity/WelcomeActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p3, p0, Lcom/kantv/ui/activity/WelcomeActivity$5$2;->this$1:Lcom/kantv/ui/activity/WelcomeActivity$5;

    iget-object p3, p3, Lcom/kantv/ui/activity/WelcomeActivity$5;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {p3}, Lcom/kantv/ui/activity/WelcomeActivity;->access$008(Lcom/kantv/ui/activity/WelcomeActivity;)I

    move-result p3

    const-wide/16 p4, 0x64

    invoke-virtual {p1, p3, p4, p5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 297
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/WelcomeActivity$5$2;->val$dg:Lorg/json/JSONObject;

    const-string p3, "url"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p3, 0x3

    if-lt p1, p3, :cond_1

    .line 299
    iget-object p1, p0, Lcom/kantv/ui/activity/WelcomeActivity$5$2;->this$1:Lcom/kantv/ui/activity/WelcomeActivity$5;

    iget-object p1, p1, Lcom/kantv/ui/activity/WelcomeActivity$5;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/WelcomeActivity;->welcomeImg:Landroid/widget/ImageView;

    new-instance p3, Lcom/kantv/ui/activity/WelcomeActivity$5$2$1;

    invoke-direct {p3, p0}, Lcom/kantv/ui/activity/WelcomeActivity$5$2$1;-><init>(Lcom/kantv/ui/activity/WelcomeActivity$5$2;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return p2
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .locals 0

    .line 277
    check-cast p1, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    check-cast p2, Ljava/lang/String;

    invoke-virtual/range {p0 .. p5}, Lcom/kantv/ui/activity/WelcomeActivity$5$2;->onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;ZZ)Z

    move-result p1

    return p1
.end method
