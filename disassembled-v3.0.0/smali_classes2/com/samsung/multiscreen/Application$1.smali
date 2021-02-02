.class Lcom/samsung/multiscreen/Application$1;
.super Ljava/lang/Object;
.source "Application.java"

# interfaces
.implements Lcom/samsung/multiscreen/util/HttpUtil$ResultCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Application;->getInfo(Lcom/samsung/multiscreen/Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/multiscreen/util/HttpUtil$ResultCreator<",
        "Lcom/samsung/multiscreen/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/Application;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Application;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/samsung/multiscreen/Application$1;->this$0:Lcom/samsung/multiscreen/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createResult(Ljava/util/Map;)Lcom/samsung/multiscreen/ApplicationInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/samsung/multiscreen/ApplicationInfo;"
        }
    .end annotation

    .line 133
    invoke-static {p1}, Lcom/samsung/multiscreen/ApplicationInfo;->create(Ljava/util/Map;)Lcom/samsung/multiscreen/ApplicationInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createResult(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/Application$1;->createResult(Ljava/util/Map;)Lcom/samsung/multiscreen/ApplicationInfo;

    move-result-object p1

    return-object p1
.end method
