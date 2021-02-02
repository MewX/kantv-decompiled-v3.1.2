.class Lcom/kantv/lib/gallery/GalleryViewPager$2;
.super Landroid/os/Handler;
.source "GalleryViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/lib/gallery/GalleryViewPager;
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

    .line 104
    iput-object p1, p0, Lcom/kantv/lib/gallery/GalleryViewPager$2;->this$0:Lcom/kantv/lib/gallery/GalleryViewPager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 107
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 108
    iget-object p1, p0, Lcom/kantv/lib/gallery/GalleryViewPager$2;->this$0:Lcom/kantv/lib/gallery/GalleryViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/kantv/lib/gallery/GalleryViewPager;->moveNextPosition(Z)V

    return-void
.end method
