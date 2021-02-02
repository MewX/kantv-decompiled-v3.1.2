.class Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;
.super Ljava/lang/Object;
.source "RequestStatisticsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/RequestStatisticsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestStatistics"
.end annotation


# static fields
.field private static final REQUEST_2xx_NUM:Ljava/lang/String; = "request_2xx_num"

.field private static final REQUEST_2xx_TOTAL_TIME:Ljava/lang/String; = "request_2xx_total_time"

.field private static final REQUEST_4xx_NUM:Ljava/lang/String; = "request_4xx_num"

.field private static final REQUEST_5xx_NUM:Ljava/lang/String; = "request_5xx_num"

.field private static final REQUEST_TIMEOUT_NUM:Ljava/lang/String; = "request_timeout_num"

.field private static final REQUEST_TOTAL_NUM:Ljava/lang/String; = "request_total_num"


# instance fields
.field private request2xxNum:I

.field private request2xxTotalTime:J

.field private request4xxNum:I

.field private request5xxNum:I

.field private timeoutNum:I

.field private totalNum:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 182
    iput v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->totalNum:I

    .line 187
    iput v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->timeoutNum:I

    .line 192
    iput v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxNum:I

    .line 197
    iput v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request4xxNum:I

    .line 202
    iput v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request5xxNum:I

    const-wide/16 v0, 0x0

    .line 207
    iput-wide v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxTotalTime:J

    .line 210
    invoke-direct {p0}, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->updateFromPreference()V

    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;)I
    .locals 0

    .line 171
    iget p0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->totalNum:I

    return p0
.end method

.method private declared-synchronized updateFromPreference()V
    .locals 4

    monitor-enter p0

    .line 271
    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-string v1, "com.avos.avoscloud.RequestStatisticsUtil.data"

    const/4 v2, 0x0

    .line 272
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "request_timeout_num"

    .line 273
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->timeoutNum:I

    const-string v1, "request_total_num"

    .line 274
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->totalNum:I

    const-string v1, "request_2xx_num"

    .line 275
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxNum:I

    const-string v1, "request_4xx_num"

    .line 276
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request4xxNum:I

    const-string v1, "request_5xx_num"

    .line 277
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request5xxNum:I

    const-string v1, "request_2xx_total_time"

    const-wide/16 v2, 0x0

    .line 278
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxTotalTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addRequestData(IZJ)V
    .locals 0

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 215
    :try_start_0
    iget p1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->totalNum:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->totalNum:I

    .line 216
    iget p1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->timeoutNum:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->timeoutNum:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/16 p2, 0x64

    if-le p1, p2, :cond_3

    .line 219
    div-int/2addr p1, p2

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 221
    iget p1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->totalNum:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->totalNum:I

    .line 222
    iget p1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxNum:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxNum:I

    .line 223
    iget-wide p1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxTotalTime:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxTotalTime:J

    goto :goto_1

    :cond_1
    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    .line 225
    iget p1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->totalNum:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->totalNum:I

    .line 226
    iget p1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request4xxNum:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request4xxNum:I

    goto :goto_1

    :cond_2
    const/4 p2, 0x5

    if-ne p1, p2, :cond_3

    .line 228
    iget p1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->totalNum:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->totalNum:I

    .line 229
    iget p1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request5xxNum:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request5xxNum:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    monitor-exit p0

    throw p1

    .line 233
    :cond_3
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized minus(Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 237
    :try_start_0
    iget v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->totalNum:I

    iget v1, p1, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->totalNum:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->totalNum:I

    .line 238
    iget v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->timeoutNum:I

    iget v1, p1, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->timeoutNum:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->timeoutNum:I

    .line 239
    iget v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxNum:I

    iget v1, p1, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxNum:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxNum:I

    .line 240
    iget v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request4xxNum:I

    iget v1, p1, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request4xxNum:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request4xxNum:I

    .line 241
    iget v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request5xxNum:I

    iget v1, p1, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request5xxNum:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request5xxNum:I

    .line 242
    iget-wide v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxTotalTime:J

    iget-wide v2, p1, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxTotalTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxTotalTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 244
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized saveToPreference()V
    .locals 4

    monitor-enter p0

    .line 247
    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-string v1, "com.avos.avoscloud.RequestStatisticsUtil.data"

    const/4 v2, 0x0

    .line 248
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 249
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "request_timeout_num"

    .line 250
    iget v2, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->timeoutNum:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "request_total_num"

    .line 251
    iget v2, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->totalNum:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "request_2xx_num"

    .line 252
    iget v2, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxNum:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "request_4xx_num"

    .line 253
    iget v2, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request4xxNum:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "request_5xx_num"

    .line 254
    iget v2, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request5xxNum:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "request_2xx_total_time"

    .line 255
    iget-wide v2, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxTotalTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 256
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toPostDataMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 260
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "total"

    .line 261
    iget v2, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->totalNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "timeout"

    .line 262
    iget v2, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->timeoutNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "2xx"

    .line 263
    iget v2, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "4xx"

    .line 264
    iget v2, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request4xxNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "5xx"

    .line 265
    iget v2, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request5xxNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "avg"

    .line 266
    iget v2, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxNum:I

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxTotalTime:J

    iget v4, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxNum:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
