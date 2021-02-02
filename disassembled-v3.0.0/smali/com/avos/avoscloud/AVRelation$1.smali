.class Lcom/avos/avoscloud/AVRelation$1;
.super Ljava/util/HashMap;
.source "AVRelation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVRelation;->getQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVRelation;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVRelation;)V
    .locals 1

    .line 96
    iput-object p1, p0, Lcom/avos/avoscloud/AVRelation$1;->this$0:Lcom/avos/avoscloud/AVRelation;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 98
    iget-object p1, p0, Lcom/avos/avoscloud/AVRelation$1;->this$0:Lcom/avos/avoscloud/AVRelation;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVRelation;->getParent()Lcom/avos/avoscloud/AVObject;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->mapFromPointerObject(Lcom/avos/avoscloud/AVObject;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "object"

    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVRelation$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object p1, p0, Lcom/avos/avoscloud/AVRelation$1;->this$0:Lcom/avos/avoscloud/AVRelation;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVRelation;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key"

    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVRelation$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
