.class public Lcom/avos/avospush/session/BlacklistCommandPacket$BlacklistCommandOp;
.super Ljava/lang/Object;
.source "BlacklistCommandPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avospush/session/BlacklistCommandPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlacklistCommandOp"
.end annotation


# static fields
.field public static final BLOCK:Ljava/lang/String; = "block"

.field public static final BLOCKED:Ljava/lang/String; = "blocked"

.field public static final MEMBER_BLOCKED:Ljava/lang/String; = "members_blocked"

.field public static final MEMBER_UNBLOCKED:Ljava/lang/String; = "members_unblocked"

.field public static final QUERY:Ljava/lang/String; = "query"

.field public static final QUERY_RESULT:Ljava/lang/String; = "query_result"

.field public static final UNBLOCK:Ljava/lang/String; = "unblock"

.field public static final UNBLOCKED:Ljava/lang/String; = "unblocked"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
