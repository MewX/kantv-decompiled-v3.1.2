.class Lcom/androidquery/util/WebImage$1;
.super Ljava/lang/Object;
.source "WebImage.java"

# interfaces
.implements Landroid/webkit/WebView$PictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidquery/util/WebImage;->delaySetup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidquery/util/WebImage;


# direct methods
.method constructor <init>(Lcom/androidquery/util/WebImage;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/androidquery/util/WebImage$1;->this$0:Lcom/androidquery/util/WebImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V
    .locals 0

    .line 130
    iget-object p1, p0, Lcom/androidquery/util/WebImage$1;->this$0:Lcom/androidquery/util/WebImage;

    invoke-static {p1}, Lcom/androidquery/util/WebImage;->access$000(Lcom/androidquery/util/WebImage;)Landroid/webkit/WebView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 131
    iget-object p1, p0, Lcom/androidquery/util/WebImage$1;->this$0:Lcom/androidquery/util/WebImage;

    invoke-static {p1}, Lcom/androidquery/util/WebImage;->access$100(Lcom/androidquery/util/WebImage;)V

    return-void
.end method
