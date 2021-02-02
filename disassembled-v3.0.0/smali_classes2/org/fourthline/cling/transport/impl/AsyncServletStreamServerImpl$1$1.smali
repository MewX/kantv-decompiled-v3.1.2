.class Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1$1;
.super Ljava/lang/Object;
.source "AsyncServletStreamServerImpl.java"

# interfaces
.implements Ljavax/servlet/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1;->service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1;

.field final synthetic val$counter:I

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1;JI)V
    .locals 0

    .line 110
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1$1;->this$1:Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1;

    iput-wide p2, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1$1;->val$startTime:J

    iput p4, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1$1;->val$counter:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljavax/servlet/AsyncEvent;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1$1;->val$startTime:J

    sub-long/2addr v0, v2

    .line 138
    invoke-static {}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->access$100()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    invoke-static {}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->access$100()Ljava/util/logging/Logger;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1$1;->val$counter:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    invoke-virtual {p1}, Ljavax/servlet/AsyncEvent;->getSuppliedResponse()Ljavax/servlet/ServletResponse;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "AsyncListener.onComplete(): id: %3d, duration: %,4d, response: %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onError(Ljavax/servlet/AsyncEvent;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1$1;->val$startTime:J

    sub-long/2addr v0, v2

    .line 130
    invoke-static {}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->access$100()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    invoke-static {}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->access$100()Ljava/util/logging/Logger;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1$1;->val$counter:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    invoke-virtual {p1}, Ljavax/servlet/AsyncEvent;->getSuppliedResponse()Ljavax/servlet/ServletResponse;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "AsyncListener.onError(): id: %3d, duration: %,4d, response: %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStartAsync(Ljavax/servlet/AsyncEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-static {}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1$1;->val$counter:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljavax/servlet/AsyncEvent;->getSuppliedRequest()Ljavax/servlet/ServletRequest;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "AsyncListener.onStartAsync(): id: %3d, request: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTimeout(Ljavax/servlet/AsyncEvent;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1$1;->val$startTime:J

    sub-long/2addr v0, v2

    .line 115
    invoke-static {}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->access$100()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    invoke-static {}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->access$100()Ljava/util/logging/Logger;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1$1;->val$counter:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    invoke-virtual {p1}, Ljavax/servlet/AsyncEvent;->getSuppliedRequest()Ljavax/servlet/ServletRequest;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "AsyncListener.onTimeout(): id: %3d, duration: %,4d, request: %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
