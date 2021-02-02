.class final Lcom/avos/avoscloud/Messages$StatusType$1;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages$StatusType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/avos/avoscloud/Messages$StatusType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1074
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/avos/avoscloud/Messages$StatusType;
    .locals 0

    .line 1076
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$StatusType;->forNumber(I)Lcom/avos/avoscloud/Messages$StatusType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    .line 1074
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$StatusType$1;->findValueByNumber(I)Lcom/avos/avoscloud/Messages$StatusType;

    move-result-object p1

    return-object p1
.end method
