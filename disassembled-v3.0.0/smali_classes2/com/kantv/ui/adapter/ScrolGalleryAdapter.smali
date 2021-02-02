.class public Lcom/kantv/ui/adapter/ScrolGalleryAdapter;
.super Lcom/kantv/lib/gallery/GalleryAdapter;
.source "ScrolGalleryAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScrolGalleryAdapter"


# instance fields
.field mContext:Landroid/content/Context;

.field private mImgData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/SlideImgBean;",
            ">;"
        }
    .end annotation
.end field

.field scrollImgSum:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/SlideImgBean;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lcom/kantv/lib/gallery/GalleryAdapter;-><init>()V

    const/4 v0, 0x6

    .line 30
    iput v0, p0, Lcom/kantv/ui/adapter/ScrolGalleryAdapter;->scrollImgSum:I

    .line 34
    iput-object p1, p0, Lcom/kantv/ui/adapter/ScrolGalleryAdapter;->mImgData:Ljava/util/List;

    .line 35
    iput-object p2, p0, Lcom/kantv/ui/adapter/ScrolGalleryAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/adapter/ScrolGalleryAdapter;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/kantv/ui/adapter/ScrolGalleryAdapter;->mImgData:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getGallerSize()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/kantv/ui/adapter/ScrolGalleryAdapter;->mImgData:Ljava/util/List;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/kantv/ui/adapter/ScrolGalleryAdapter;->scrollImgSum:I

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemView(I)Landroid/view/View;
    .locals 5

    .line 45
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0084

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902f2

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/view/ShapedImageView;

    .line 47
    iget-object v2, p0, Lcom/kantv/ui/adapter/ScrolGalleryAdapter;->mImgData:Ljava/util/List;

    if-eqz v2, :cond_0

    add-int/lit8 v3, p1, -0x1

    .line 49
    :try_start_0
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/SlideImgBean;

    invoke-virtual {v2}, Lcom/kantv/ui/bean/SlideImgBean;->getPhoto()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/kantv/ui/utils/GlideUtils;->loadimage2(Ljava/lang/String;Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 51
    sget-object v3, Lcom/kantv/ui/adapter/ScrolGalleryAdapter;->TAG:Ljava/lang/String;

    const-string v4, "*** Glide loadimage error ***"

    invoke-static {v3, v4}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    :cond_0
    :goto_0
    new-instance v2, Lcom/kantv/ui/adapter/ScrolGalleryAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/adapter/ScrolGalleryAdapter$1;-><init>(Lcom/kantv/ui/adapter/ScrolGalleryAdapter;I)V

    invoke-virtual {v1, v2}, Lcom/kantv/ui/view/ShapedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
