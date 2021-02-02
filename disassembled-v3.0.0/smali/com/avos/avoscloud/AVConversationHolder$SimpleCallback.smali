.class abstract Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;
.super Ljava/lang/Object;
.source "AVConversationHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVConversationHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SimpleCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/AVConversationHolder$1;)V
    .locals 0

    .line 1200
    invoke-direct {p0}, Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done()V
.end method
