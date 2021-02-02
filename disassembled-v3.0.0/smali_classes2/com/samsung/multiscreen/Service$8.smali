.class Lcom/samsung/multiscreen/Service$8;
.super Ljava/lang/Object;
.source "Service.java"

# interfaces
.implements Lcom/samsung/multiscreen/util/HttpUtil$ResultCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Service;->getDeviceInfo(Lcom/samsung/multiscreen/Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/multiscreen/util/HttpUtil$ResultCreator<",
        "Lcom/samsung/multiscreen/Device;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/Service;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Service;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lcom/samsung/multiscreen/Service$8;->this$0:Lcom/samsung/multiscreen/Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createResult(Ljava/util/Map;)Lcom/samsung/multiscreen/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/samsung/multiscreen/Device;"
        }
    .end annotation

    const-string v0, "device"

    .line 534
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 535
    invoke-static {p1}, Lcom/samsung/multiscreen/Device;->create(Ljava/util/Map;)Lcom/samsung/multiscreen/Device;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createResult(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0

    .line 531
    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/Service$8;->createResult(Ljava/util/Map;)Lcom/samsung/multiscreen/Device;

    move-result-object p1

    return-object p1
.end method
