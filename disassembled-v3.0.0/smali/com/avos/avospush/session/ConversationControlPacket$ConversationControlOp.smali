.class public Lcom/avos/avospush/session/ConversationControlPacket$ConversationControlOp;
.super Ljava/lang/Object;
.source "ConversationControlPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avospush/session/ConversationControlPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConversationControlOp"
.end annotation


# static fields
.field public static final ADD:Ljava/lang/String; = "add"

.field public static final ADDED:Ljava/lang/String; = "added"

.field public static final ADD_SHUTUP:Ljava/lang/String; = "add_shutup"

.field public static final BLOCKED:Ljava/lang/String; = "blocked"

.field public static final COUNT:Ljava/lang/String; = "count"

.field public static final JOINED:Ljava/lang/String; = "joined"

.field public static final LEFT:Ljava/lang/String; = "left"

.field public static final MAX_READ:Ljava/lang/String; = "max_read"

.field public static final MEMBER_BLOCKED_NOTIFY:Ljava/lang/String; = "members_blocked"

.field public static final MEMBER_COUNT_QUERY_RESULT:Ljava/lang/String; = "result"

.field public static final MEMBER_INFO_CHANGED:Ljava/lang/String; = "member_info_changed"

.field public static final MEMBER_JOINED:Ljava/lang/String; = "members_joined"

.field public static final MEMBER_LEFTED:Ljava/lang/String; = "members_left"

.field public static final MEMBER_SHUTPED:Ljava/lang/String; = "members_shutuped"

.field public static final MEMBER_UNBLOCKED_NOTIFY:Ljava/lang/String; = "members_unblocked"

.field public static final MEMBER_UNSHUTUPED:Ljava/lang/String; = "members_unshutuped"

.field public static final MEMBER_UPDATE:Ljava/lang/String; = "member_info_update"

.field public static final MEMBER_UPDATED:Ljava/lang/String; = "member_info_updated"

.field public static final MUTE:Ljava/lang/String; = "mute"

.field public static final QUERY:Ljava/lang/String; = "query"

.field public static final QUERY_RESULT:Ljava/lang/String; = "results"

.field public static final QUERY_SHUTUP:Ljava/lang/String; = "query_shutup"

.field public static final QUERY_SHUTUP_RESULT:Ljava/lang/String; = "shutup_result"

.field public static final REMOVE:Ljava/lang/String; = "remove"

.field public static final REMOVED:Ljava/lang/String; = "removed"

.field public static final REMOVE_SHUTUP:Ljava/lang/String; = "remove_shutup"

.field public static final SHUTUPED:Ljava/lang/String; = "shutuped"

.field public static final SHUTUP_ADDED:Ljava/lang/String; = "shutup_added"

.field public static final SHUTUP_REMOVED:Ljava/lang/String; = "shutup_removed"

.field public static final START:Ljava/lang/String; = "start"

.field public static final STARTED:Ljava/lang/String; = "started"

.field public static final UNBLOCKED:Ljava/lang/String; = "unblocked"

.field public static final UNMUTE:Ljava/lang/String; = "unmute"

.field public static final UNSHUTUPED:Ljava/lang/String; = "unshutuped"

.field public static final UPDATE:Ljava/lang/String; = "update"

.field public static final UPDATED:Ljava/lang/String; = "updated"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
