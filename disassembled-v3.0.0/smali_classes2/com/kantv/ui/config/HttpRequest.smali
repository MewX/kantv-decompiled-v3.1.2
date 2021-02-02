.class public Lcom/kantv/ui/config/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# static fields
.field public static request:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kantv/ui/config/HttpRequest;->request:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MemoryPlayTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 39
    sget-object v0, Lcom/kantv/ui/config/HttpRequest;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 40
    sget-object v0, Lcom/kantv/ui/config/HttpRequest;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/kantv/ui/config/HttpRequest;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/kantv/ui/config/HttpRequest;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/kantv/ui/config/HttpRequest;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/kantv/ui/config/HttpRequest;->request:Ljava/util/Map;

    const-string v1, "tvid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object p1, Lcom/kantv/ui/config/HttpRequest;->request:Ljava/util/Map;

    const-string v0, "part_id"

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object p1, Lcom/kantv/ui/config/HttpRequest;->request:Ljava/util/Map;

    const-string p3, "sec"

    invoke-interface {p1, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, ""

    const-string v0, "play_time"

    invoke-static {p1, v0, p3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "validsec"

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isNum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/kantv/common/utils/StringUtils;->isNum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 51
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, p1, :cond_1

    .line 53
    sget-object v2, Lcom/kantv/ui/config/HttpRequest;->request:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 57
    :cond_0
    sget-object p1, Lcom/kantv/ui/config/HttpRequest;->request:Ljava/util/Map;

    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_1
    :goto_0
    sget-object p1, Lcom/kantv/ui/config/HttpRequest;->request:Ljava/util/Map;

    const-string p3, "long"

    invoke-interface {p1, p3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object p1, Lcom/kantv/ui/config/HttpRequest;->request:Ljava/util/Map;

    const-string p3, "seo"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object p1, Lcom/kantv/ui/config/HttpRequest;->request:Ljava/util/Map;

    const-string p2, "_token"

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object p1, Lcom/kantv/ui/config/HttpRequest;->request:Ljava/util/Map;

    const-string p2, "devicetype"

    const-string p3, "0"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object p1, Lcom/kantv/ui/config/HttpRequest;->request:Ljava/util/Map;

    const-string p2, "app_ver"

    invoke-interface {p1, p2, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object p1, Lcom/kantv/ui/config/HttpRequest;->request:Ljava/util/Map;

    const-string p2, "platform"

    const-string p3, "app"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object p1, Lcom/kantv/ui/config/HttpRequest;->request:Ljava/util/Map;

    sget-object p2, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string p3, "interfaceVersion"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {p7}, Lcom/kantv/common/api/Api;->getService(Ljava/lang/String;)Lcom/kantv/common/api/ApiService;

    move-result-object p1

    sget-object p2, Lcom/kantv/ui/config/HttpRequest;->request:Ljava/util/Map;

    invoke-interface {p1, p2}, Lcom/kantv/common/api/ApiService;->newViewSec(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/config/HttpRequest$1;

    invoke-direct {p2, p0}, Lcom/kantv/ui/config/HttpRequest$1;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
