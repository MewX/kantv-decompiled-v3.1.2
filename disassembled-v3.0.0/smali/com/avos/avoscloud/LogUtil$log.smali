.class public Lcom/avos/avoscloud/LogUtil$log;
.super Ljava/lang/Object;
.source "LogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/LogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "log"
.end annotation


# static fields
.field public static Cname:Ljava/lang/String; = ""

.field public static Mname:Ljava/lang/String; = ""

.field public static final Tag:Ljava/lang/String; = "===AVOS Cloud==="

.field public static final show:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()V
    .locals 3

    const/4 v0, 0x4

    .line 145
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->shouldShow(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/LogUtil$log;->getTrace()V

    .line 149
    invoke-static {}, Lcom/avos/avoscloud/LogUtil;->access$000()Lcom/avos/avoscloud/AVLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===AVOS Cloud===->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/avos/avoscloud/LogUtil$log;->Mname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "===AVOS Cloud==="

    invoke-virtual {v0, v2, v1}, Lcom/avos/avoscloud/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static d(D)V
    .locals 2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static d(F)V
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static d(I)V
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    .line 103
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->shouldShow(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/LogUtil$log;->getTrace()V

    if-nez p0, :cond_1

    const-string p0, "null"

    .line 111
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/LogUtil;->access$000()Lcom/avos/avoscloud/AVLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/avos/avoscloud/LogUtil$log;->Cname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/avos/avoscloud/LogUtil$log;->Mname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "===AVOS Cloud==="

    invoke-virtual {v0, v1, p0}, Lcom/avos/avoscloud/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    const/16 v0, 0x20

    .line 161
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->shouldShow(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/avos/avoscloud/LogUtil$log;->Cname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/avos/avoscloud/LogUtil$log;->Mname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 164
    invoke-static {}, Lcom/avos/avoscloud/LogUtil;->access$000()Lcom/avos/avoscloud/AVLogger;

    move-result-object v0

    const-string v1, "===AVOS Cloud==="

    invoke-virtual {v0, v1, p0}, Lcom/avos/avoscloud/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    .line 153
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->shouldShow(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/LogUtil$log;->getTrace()V

    .line 157
    invoke-static {}, Lcom/avos/avoscloud/LogUtil;->access$000()Lcom/avos/avoscloud/AVLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/avos/avoscloud/LogUtil$log;->Cname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/avos/avoscloud/LogUtil$log;->Mname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/avos/avoscloud/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static d(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 115
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->shouldShow(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/LogUtil$log;->getTrace()V

    if-nez p0, :cond_1

    const-string p0, "null"

    goto :goto_0

    .line 123
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, ""

    .line 129
    :goto_0
    invoke-static {}, Lcom/avos/avoscloud/LogUtil;->access$000()Lcom/avos/avoscloud/AVLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/avos/avoscloud/LogUtil$log;->Cname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/avos/avoscloud/LogUtil$log;->Mname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "===AVOS Cloud==="

    invoke-virtual {v0, v1, p0}, Lcom/avos/avoscloud/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e()V
    .locals 3

    const/16 v0, 0x20

    .line 217
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->shouldShow(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 219
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/LogUtil$log;->getTrace()V

    .line 220
    invoke-static {}, Lcom/avos/avoscloud/LogUtil;->access$000()Lcom/avos/avoscloud/AVLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/avos/avoscloud/LogUtil$log;->Cname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/avos/avoscloud/LogUtil$log;->Mname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "===AVOS Cloud==="

    invoke-virtual {v0, v2, v1}, Lcom/avos/avoscloud/AVLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x20

    .line 205
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->shouldShow(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/LogUtil$log;->getTrace()V

    if-nez p0, :cond_1

    const-string p0, "null"

    .line 213
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/LogUtil;->access$000()Lcom/avos/avoscloud/AVLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/avos/avoscloud/LogUtil$log;->Cname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/avos/avoscloud/LogUtil$log;->Mname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "===AVOS Cloud==="

    invoke-virtual {v0, v1, p0}, Lcom/avos/avoscloud/AVLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    const/16 v0, 0x20

    .line 224
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->shouldShow(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/avos/avoscloud/LogUtil$log;->Mname:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "err:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 227
    invoke-static {}, Lcom/avos/avoscloud/LogUtil;->access$000()Lcom/avos/avoscloud/AVLogger;

    move-result-object v0

    const-string v1, "===AVOS Cloud==="

    invoke-virtual {v0, v1, p0}, Lcom/avos/avoscloud/AVLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x20

    .line 232
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->shouldShow(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 234
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/LogUtil$log;->getTrace()V

    .line 235
    invoke-static {}, Lcom/avos/avoscloud/LogUtil;->access$000()Lcom/avos/avoscloud/AVLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/avos/avoscloud/LogUtil$log;->Cname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/avos/avoscloud/LogUtil$log;->Mname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/avos/avoscloud/AVLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    const/16 v0, 0x20

    .line 239
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->shouldShow(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 241
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/LogUtil$log;->getTrace()V

    .line 242
    invoke-static {}, Lcom/avos/avoscloud/LogUtil;->access$000()Lcom/avos/avoscloud/AVLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/avos/avoscloud/LogUtil$log;->Cname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/avos/avoscloud/LogUtil$log;->Mname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " err:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/avos/avoscloud/AVLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static getTrace()V
    .locals 4

    .line 72
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    sput-object v1, Lcom/avos/avoscloud/LogUtil$log;->Cname:Ljava/lang/String;

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/LogUtil$log;->Mname:Ljava/lang/String;

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x8

    .line 173
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->shouldShow(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/LogUtil$log;->getTrace()V

    if-nez p0, :cond_1

    const-string p0, "null"

    .line 181
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/LogUtil;->access$000()Lcom/avos/avoscloud/AVLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/avos/avoscloud/LogUtil$log;->Mname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "===AVOS Cloud==="

    invoke-virtual {v0, v1, p0}, Lcom/avos/avoscloud/AVLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static shouldShow(I)Z
    .locals 1

    .line 68
    invoke-static {}, Lcom/avos/avoscloud/LogUtil;->access$000()Lcom/avos/avoscloud/AVLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVLogger;->getLogLevel()I

    move-result v0

    and-int/2addr p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static v(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    .line 87
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->shouldShow(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/LogUtil$log;->getTrace()V

    if-nez p0, :cond_1

    const-string p0, "null"

    .line 95
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/LogUtil;->access$000()Lcom/avos/avoscloud/AVLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/avos/avoscloud/LogUtil$log;->Mname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "===AVOS Cloud==="

    invoke-virtual {v0, v1, p0}, Lcom/avos/avoscloud/AVLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x10

    .line 189
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->shouldShow(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/LogUtil$log;->getTrace()V

    if-nez p0, :cond_1

    const-string p0, "null"

    .line 197
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/LogUtil;->access$000()Lcom/avos/avoscloud/AVLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/avos/avoscloud/LogUtil$log;->Mname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "===AVOS Cloud==="

    invoke-virtual {v0, v1, p0}, Lcom/avos/avoscloud/AVLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
