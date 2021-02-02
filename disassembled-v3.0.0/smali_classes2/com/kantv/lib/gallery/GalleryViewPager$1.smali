.class Lcom/kantv/lib/gallery/GalleryViewPager$1;
.super Ljava/lang/Object;
.source "GalleryViewPager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/lib/gallery/GalleryViewPager;->init()V
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

    .line 45
    iput-object p1, p0, Lcom/kantv/lib/gallery/GalleryViewPager$1;->this$0:Lcom/kantv/lib/gallery/GalleryViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 48
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/kantv/lib/gallery/GalleryViewPager$1;->this$0:Lcom/kantv/lib/gallery/GalleryViewPager;

    invoke-virtual {p1}, Lcom/kantv/lib/gallery/GalleryViewPager;->recoverCycle()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
