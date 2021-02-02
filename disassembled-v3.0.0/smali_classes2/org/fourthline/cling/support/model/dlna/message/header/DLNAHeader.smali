.class public abstract Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;
.super Lorg/fourthline/cling/model/message/header/UpnpHeader;
.source "DLNAHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/fourthline/cling/model/message/header/UpnpHeader<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    return-void
.end method

.method public static newInstance(Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    .line 131
    :goto_0
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->getHeaderTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_1

    if-nez v2, :cond_1

    .line 132
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->getHeaderTypes()[Ljava/lang/Class;

    move-result-object v3

    aget-object v3, v3, v1

    .line 134
    :try_start_0
    sget-object v4, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying to parse \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\' with class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;
    :try_end_0
    .catch Lorg/fourthline/cling/model/message/header/InvalidHeaderException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_0

    .line 137
    :try_start_1
    invoke-virtual {v4, p1}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;->setString(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/fourthline/cling/model/message/header/InvalidHeaderException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v3, v2

    move-object v2, v4

    goto :goto_2

    :cond_0
    :goto_1
    move-object v2, v4

    goto :goto_3

    :catch_1
    move-exception v3

    .line 143
    :goto_2
    sget-object v4, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error instantiating header of type \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\' with value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 144
    sget-object v4, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {v3}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    const-string v6, "Exception root cause: "

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_2
    move-exception v2

    .line 140
    sget-object v4, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid header value for tested type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    move-object v2, v0

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    return-object v2
.end method
