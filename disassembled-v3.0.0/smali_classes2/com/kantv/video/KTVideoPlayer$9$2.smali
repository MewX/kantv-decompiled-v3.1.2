.class Lcom/kantv/video/KTVideoPlayer$9$2;
.super Ljava/lang/Object;
.source "KTVideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/video/KTVideoPlayer$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/video/KTVideoPlayer$9;

.field final synthetic val$play_delay_contain:Landroid/view/View;

.field final synthetic val$videomore_content_layout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/kantv/video/KTVideoPlayer$9;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$2;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iput-object p2, p0, Lcom/kantv/video/KTVideoPlayer$9$2;->val$videomore_content_layout:Landroid/view/View;

    iput-object p3, p0, Lcom/kantv/video/KTVideoPlayer$9$2;->val$play_delay_contain:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 368
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$2;->val$videomore_content_layout:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 369
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$2;->val$play_delay_contain:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
