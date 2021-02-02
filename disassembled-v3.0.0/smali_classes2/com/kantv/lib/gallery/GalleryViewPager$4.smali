.class Lcom/kantv/lib/gallery/GalleryViewPager$4;
.super Ljava/util/TimerTask;
.source "GalleryViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/lib/gallery/GalleryViewPager;->recoverCycle()V
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

    .line 205
    iput-object p1, p0, Lcom/kantv/lib/gallery/GalleryViewPager$4;->this$0:Lcom/kantv/lib/gallery/GalleryViewPager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager$4;->this$0:Lcom/kantv/lib/gallery/GalleryViewPager;

    invoke-virtual {v0}, Lcom/kantv/lib/gallery/GalleryViewPager;->startAutoCycle()V

    return-void
.end method
