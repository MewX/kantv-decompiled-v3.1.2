.class final Lcom/samsung/multiscreen/Service$1;
.super Ljava/lang/Object;
.source "Service.java"

# interfaces
.implements Lcom/samsung/multiscreen/util/HttpUtil$ResultCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Service;->getByURI(Landroid/net/Uri;ILcom/samsung/multiscreen/Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/multiscreen/util/HttpUtil$ResultCreator<",
        "Lcom/samsung/multiscreen/Service;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createResult(Ljava/util/Map;)Lcom/samsung/multiscreen/Service;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/samsung/multiscreen/Service;"
        }
    .end annotation

    .line 217
    invoke-static {p1}, Lcom/samsung/multiscreen/Service;->access$000(Ljava/util/Map;)Lcom/samsung/multiscreen/Service;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createResult(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0

    .line 214
    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/Service$1;->createResult(Ljava/util/Map;)Lcom/samsung/multiscreen/Service;

    move-result-object p1

    return-object p1
.end method
