.class Lcom/avos/avoscloud/AVFileDownloader$1;
.super Ljava/lang/Object;
.source "AVFileDownloader.java"

# interfaces
.implements Lcom/avos/avoscloud/AVHttpClient$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVFileDownloader;->downloadFileFromNetwork(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVFileDownloader;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVFileDownloader;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/avos/avoscloud/AVFileDownloader$1;->this$0:Lcom/avos/avoscloud/AVFileDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(JJZ)V
    .locals 3

    .line 116
    iget-object p5, p0, Lcom/avos/avoscloud/AVFileDownloader$1;->this$0:Lcom/avos/avoscloud/AVFileDownloader;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const-wide/16 v1, 0x62

    mul-long p1, p1, v1

    long-to-float p1, p1

    long-to-float p2, p3

    div-float/2addr p1, p2

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-static {p5, v0}, Lcom/avos/avoscloud/AVFileDownloader;->access$000(Lcom/avos/avoscloud/AVFileDownloader;[Ljava/lang/Object;)V

    return-void
.end method
