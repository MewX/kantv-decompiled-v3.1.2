.class Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody$1;
.super Lokio/ForwardingSource;
.source "AVHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody;->source(Lokio/Source;)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody;

.field totalBytesRead:J


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody;Lokio/Source;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody$1;->this$0:Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    const-wide/16 p1, 0x0

    .line 171
    iput-wide p1, p0, Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody$1;->totalBytesRead:J

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide p1

    .line 176
    iget-wide v0, p0, Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody$1;->totalBytesRead:J

    const-wide/16 v2, -0x1

    cmp-long p3, p1, v2

    if-eqz p3, :cond_0

    move-wide v4, p1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody$1;->totalBytesRead:J

    .line 177
    iget-object p3, p0, Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody$1;->this$0:Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody;

    invoke-static {p3}, Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody;->access$200(Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody;)Lcom/avos/avoscloud/AVHttpClient$ProgressListener;

    move-result-object v4

    iget-wide v5, p0, Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody$1;->totalBytesRead:J

    iget-object p3, p0, Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody$1;->this$0:Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody;

    invoke-static {p3}, Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody;->access$100(Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody;)Lokhttp3/ResponseBody;

    move-result-object p3

    invoke-virtual {p3}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v7

    cmp-long p3, p1, v2

    if-nez p3, :cond_1

    const/4 p3, 0x1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    const/4 v9, 0x0

    :goto_1
    invoke-interface/range {v4 .. v9}, Lcom/avos/avoscloud/AVHttpClient$ProgressListener;->update(JJZ)V

    return-wide p1
.end method
