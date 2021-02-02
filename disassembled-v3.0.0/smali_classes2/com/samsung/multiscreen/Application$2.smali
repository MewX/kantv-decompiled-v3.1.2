.class Lcom/samsung/multiscreen/Application$2;
.super Ljava/lang/Object;
.source "Application.java"

# interfaces
.implements Lcom/samsung/multiscreen/util/HttpUtil$ResultCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Application;->install(Lcom/samsung/multiscreen/Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/multiscreen/util/HttpUtil$ResultCreator<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/Application;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Application;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/samsung/multiscreen/Application$2;->this$0:Lcom/samsung/multiscreen/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createResult(Ljava/util/Map;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 200
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic createResult(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0

    .line 197
    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/Application$2;->createResult(Ljava/util/Map;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
