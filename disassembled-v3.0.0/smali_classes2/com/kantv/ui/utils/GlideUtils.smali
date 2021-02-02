.class public Lcom/kantv/ui/utils/GlideUtils;
.super Ljava/lang/Object;
.source "GlideUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;IIILcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .locals 3

    .line 116
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 117
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-eqz p6, :cond_1

    const-string p6, "x-oss-process"

    .line 123
    invoke-virtual {p1, p6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p6

    if-eqz p6, :cond_0

    .line 124
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p6

    invoke-virtual {p6, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p6

    invoke-virtual {p6, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->skipMemoryCache(Z)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p6

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p6, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p6

    invoke-virtual {p6, p3}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p6

    .line 125
    invoke-virtual {p6, p4, p5}, Lcom/bumptech/glide/DrawableRequestBuilder;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p6

    .line 126
    invoke-virtual {p6, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0

    .line 128
    :cond_0
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "w_"

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    const-string v1, "?x-oss-process=image/resize,w_w,h_h,m_fill/sharpen,100/quality,Q_100"

    const-string v2, "w_w"

    invoke-virtual {v1, v2, p6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "h_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "h_h"

    invoke-virtual {p6, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p6

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p6

    invoke-virtual {p6, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p6

    invoke-virtual {p6, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->skipMemoryCache(Z)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p6

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p6, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p6

    invoke-virtual {p6, p3}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p6

    .line 131
    invoke-virtual {p6, p4, p5}, Lcom/bumptech/glide/DrawableRequestBuilder;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p6

    .line 132
    invoke-virtual {p6, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0

    .line 135
    :cond_1
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p6

    invoke-virtual {p6, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p6

    invoke-virtual {p6, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->skipMemoryCache(Z)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p6

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p6, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p6

    invoke-virtual {p6, p3}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p6

    .line 136
    invoke-virtual {p6, p4, p5}, Lcom/bumptech/glide/DrawableRequestBuilder;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p6

    .line 137
    invoke-virtual {p6, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 144
    :goto_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->skipMemoryCache(Z)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p0

    sget-object p1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p0

    .line 145
    invoke-virtual {p0, p4, p5}, Lcom/bumptech/glide/DrawableRequestBuilder;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p0

    .line 146
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_1

    .line 148
    :cond_2
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->skipMemoryCache(Z)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p0

    sget-object p1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p0

    .line 149
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    move-result-object p0

    invoke-interface {p0, p6}, Lcom/bumptech/glide/request/target/Target;->getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static loadImageBlur(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 6

    .line 96
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 97
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p0

    const v0, 0x7f0600a5

    .line 98
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p0

    .line 99
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->error(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p0

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/bumptech/glide/load/Transformation;

    new-instance v2, Ljp/wasabeef/glide/transformations/BlurTransformation;

    .line 101
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x17

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Ljp/wasabeef/glide/transformations/BlurTransformation;-><init>(Landroid/content/Context;II)V

    aput-object v2, v1, v0

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p0

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 102
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p0

    .line 103
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public static loadimage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .line 30
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p0

    const v0, 0x7f080207

    .line 32
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p0

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p0

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 34
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p0

    .line 35
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public static loadimage2(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .line 46
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 47
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p0

    const v0, 0x7f080208

    .line 48
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p0

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p0

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 50
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p0

    .line 51
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public static loadimage3(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .line 61
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 62
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p0

    const v0, 0x7f080209

    .line 63
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p0

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p0

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 65
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p0

    .line 66
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public static loadimage4(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .line 71
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 72
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p0

    const v0, 0x7f08020a

    .line 73
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p0

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p0

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 75
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p0

    .line 76
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public static loadimageRoundness(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .line 81
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p0

    const v0, 0x7f080207

    .line 83
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p0

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p0

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 85
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p0

    new-instance v0, Lcom/kantv/ui/utils/GlideUtils$1;

    invoke-direct {v0, p1}, Lcom/kantv/ui/utils/GlideUtils$1;-><init>(Landroid/widget/ImageView;)V

    .line 86
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method
