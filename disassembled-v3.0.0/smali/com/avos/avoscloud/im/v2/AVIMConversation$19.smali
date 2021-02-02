.class final Lcom/avos/avoscloud/im/v2/AVIMConversation$19;
.super Ljava/lang/Object;
.source "AVIMConversation.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/im/v2/AVIMConversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMMessage;)I
    .locals 5

    .line 1949
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1951
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const/4 p1, 0x1

    return p1

    .line 1954
    :cond_1
    iget-object p1, p1, Lcom/avos/avoscloud/im/v2/AVIMMessage;->messageId:Ljava/lang/String;

    iget-object p2, p2, Lcom/avos/avoscloud/im/v2/AVIMMessage;->messageId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1946
    check-cast p1, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    check-cast p2, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversation$19;->compare(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMMessage;)I

    move-result p1

    return p1
.end method
