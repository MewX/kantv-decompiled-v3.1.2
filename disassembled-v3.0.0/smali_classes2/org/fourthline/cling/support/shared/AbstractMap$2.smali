.class Lorg/fourthline/cling/support/shared/AbstractMap$2;
.super Ljava/util/AbstractCollection;
.source "AbstractMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/support/shared/AbstractMap;->values()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/shared/AbstractMap;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/shared/AbstractMap;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lorg/fourthline/cling/support/shared/AbstractMap$2;->this$0:Lorg/fourthline/cling/support/shared/AbstractMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 474
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/AbstractMap$2;->this$0:Lorg/fourthline/cling/support/shared/AbstractMap;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/support/shared/AbstractMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 478
    new-instance v0, Lorg/fourthline/cling/support/shared/AbstractMap$2$1;

    invoke-direct {v0, p0}, Lorg/fourthline/cling/support/shared/AbstractMap$2$1;-><init>(Lorg/fourthline/cling/support/shared/AbstractMap$2;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 470
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/AbstractMap$2;->this$0:Lorg/fourthline/cling/support/shared/AbstractMap;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/shared/AbstractMap;->size()I

    move-result v0

    return v0
.end method
