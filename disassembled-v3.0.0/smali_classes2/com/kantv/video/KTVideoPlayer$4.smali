.class Lcom/kantv/video/KTVideoPlayer$4;
.super Ljava/lang/Object;
.source "KTVideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/video/KTVideoPlayer;->moreHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/video/KTVideoPlayer;


# direct methods
.method constructor <init>(Lcom/kantv/video/KTVideoPlayer;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer$4;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 231
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$4;->this$0:Lcom/kantv/video/KTVideoPlayer;

    const-wide/16 v0, 0xbb8

    invoke-static {p1, v0, v1}, Lcom/kantv/video/KTVideoPlayer;->access$200(Lcom/kantv/video/KTVideoPlayer;J)V

    return-void
.end method
