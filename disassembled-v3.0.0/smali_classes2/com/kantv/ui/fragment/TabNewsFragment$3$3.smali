.class Lcom/kantv/ui/fragment/TabNewsFragment$3$3;
.super Ljava/lang/Object;
.source "TabNewsFragment.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/TabNewsFragment$3;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
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
.field final synthetic this$1:Lcom/kantv/ui/fragment/TabNewsFragment$3;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/TabNewsFragment$3;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/kantv/ui/fragment/TabNewsFragment$3$3;->this$1:Lcom/kantv/ui/fragment/TabNewsFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onException(Ljava/lang/Exception;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0

    .line 399
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kantv/ui/fragment/TabNewsFragment$3$3;->onException(Ljava/lang/Exception;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;Z)Z

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

    .line 408
    iget-object p1, p0, Lcom/kantv/ui/fragment/TabNewsFragment$3$3;->this$1:Lcom/kantv/ui/fragment/TabNewsFragment$3;

    iget-object p1, p1, Lcom/kantv/ui/fragment/TabNewsFragment$3;->this$0:Lcom/kantv/ui/fragment/TabNewsFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/TabNewsFragment;->access$500(Lcom/kantv/ui/fragment/TabNewsFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/kantv/ui/fragment/TabNewsFragment$3$3;->this$1:Lcom/kantv/ui/fragment/TabNewsFragment$3;

    iget-object p2, p2, Lcom/kantv/ui/fragment/TabNewsFragment$3;->this$0:Lcom/kantv/ui/fragment/TabNewsFragment;

    iget-object p2, p2, Lcom/kantv/ui/fragment/TabNewsFragment;->adPopRunnable:Ljava/lang/Runnable;

    const-wide/16 p3, 0x1f4

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .locals 0

    .line 399
    check-cast p1, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    check-cast p2, Ljava/lang/String;

    invoke-virtual/range {p0 .. p5}, Lcom/kantv/ui/fragment/TabNewsFragment$3$3;->onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;ZZ)Z

    move-result p1

    return p1
.end method
