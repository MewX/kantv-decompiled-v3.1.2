.class Lcom/avos/avoscloud/RequestStatisticsUtil$1;
.super Lcom/avos/avoscloud/AsyncHttpResponseHandler;
.source "RequestStatisticsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/RequestStatisticsUtil;->sendData(Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/RequestStatisticsUtil;

.field final synthetic val$requestData:Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/RequestStatisticsUtil;Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$1;->this$0:Lcom/avos/avoscloud/RequestStatisticsUtil;

    iput-object p2, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$1;->val$requestData:Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;

    invoke-direct {p0}, Lcom/avos/avoscloud/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 0

    const/16 p2, 0xc8

    if-ne p2, p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$1;->this$0:Lcom/avos/avoscloud/RequestStatisticsUtil;

    invoke-static {p1}, Lcom/avos/avoscloud/RequestStatisticsUtil;->access$100(Lcom/avos/avoscloud/RequestStatisticsUtil;)V

    .line 131
    iget-object p1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$1;->this$0:Lcom/avos/avoscloud/RequestStatisticsUtil;

    invoke-static {p1}, Lcom/avos/avoscloud/RequestStatisticsUtil;->access$200(Lcom/avos/avoscloud/RequestStatisticsUtil;)Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;

    move-result-object p1

    iget-object p2, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$1;->val$requestData:Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;

    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->minus(Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;)V

    .line 132
    iget-object p1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$1;->this$0:Lcom/avos/avoscloud/RequestStatisticsUtil;

    invoke-static {p1}, Lcom/avos/avoscloud/RequestStatisticsUtil;->access$200(Lcom/avos/avoscloud/RequestStatisticsUtil;)Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->saveToPreference()V

    :cond_0
    return-void
.end method
