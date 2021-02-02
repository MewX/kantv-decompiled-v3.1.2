.class Lcom/avos/avoscloud/AVFriendshipQuery$2;
.super Lcom/avos/avoscloud/callback/AVFriendshipCallback;
.source "AVFriendshipQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVFriendshipQuery;->get()Lcom/avos/avoscloud/AVFriendship;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVFriendshipQuery;

.field final synthetic val$result:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVFriendshipQuery;[Ljava/lang/Object;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/avos/avoscloud/AVFriendshipQuery$2;->this$0:Lcom/avos/avoscloud/AVFriendshipQuery;

    iput-object p2, p0, Lcom/avos/avoscloud/AVFriendshipQuery$2;->val$result:[Ljava/lang/Object;

    invoke-direct {p0}, Lcom/avos/avoscloud/callback/AVFriendshipCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVFriendship;Lcom/avos/avoscloud/AVException;)V
    .locals 1

    if-nez p2, :cond_0

    .line 99
    iget-object p2, p0, Lcom/avos/avoscloud/AVFriendshipQuery$2;->val$result:[Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {p2}, Lcom/avos/avoscloud/AVExceptionHolder;->add(Lcom/avos/avoscloud/AVException;)V

    :goto_0
    return-void
.end method

.method protected mustRunOnUIThread()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
