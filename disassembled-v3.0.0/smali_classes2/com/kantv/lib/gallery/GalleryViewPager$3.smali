.class Lcom/kantv/lib/gallery/GalleryViewPager$3;
.super Ljava/util/TimerTask;
.source "GalleryViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/lib/gallery/GalleryViewPager;->startAutoCycle(JJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/lib/gallery/GalleryViewPager;


# direct methods
.method constructor <init>(Lcom/kantv/lib/gallery/GalleryViewPager;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/kantv/lib/gallery/GalleryViewPager$3;->this$0:Lcom/kantv/lib/gallery/GalleryViewPager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager$3;->this$0:Lcom/kantv/lib/gallery/GalleryViewPager;

    invoke-static {v0}, Lcom/kantv/lib/gallery/GalleryViewPager;->access$000(Lcom/kantv/lib/gallery/GalleryViewPager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
