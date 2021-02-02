.class public abstract Lcom/kantv/common/log/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field protected static final A:I = 0x6

.field public static final D:I = 0x2

.field protected static final DEFAULT_MESSAGE:Ljava/lang/String; = "execute"

.field public static final E:I = 0x5

.field public static final I:I = 0x3

.field protected static final JSON:I = 0x7

.field protected static final JSON_INDENT:I = 0x4

.field protected static final LINE_SEPARATOR:Ljava/lang/String;

.field protected static final NULL_TIPS:Ljava/lang/String; = "Log with null object"

.field public static final V:I = 0x1

.field public static final W:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    .line 8
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kantv/common/log/Constant;->LINE_SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
