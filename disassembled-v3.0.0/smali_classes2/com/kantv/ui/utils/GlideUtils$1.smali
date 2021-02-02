.class final Lcom/kantv/ui/utils/GlideUtils$1;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "GlideUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/utils/GlideUtils;->loadimageRoundness(Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/kantv/ui/utils/GlideUtils$1;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation<",
            "-",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;)V"
        }
    .end annotation

    .line 89
    iget-object p2, p0, Lcom/kantv/ui/utils/GlideUtils$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0

    .line 86
    check-cast p1, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/utils/GlideUtils$1;->onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method
