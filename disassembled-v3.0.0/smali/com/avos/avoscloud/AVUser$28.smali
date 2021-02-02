.class Lcom/avos/avoscloud/AVUser$28;
.super Lcom/avos/avoscloud/FindCallback;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUser;->getRolesInBackground(Lcom/avos/avoscloud/AVCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/FindCallback<",
        "Lcom/avos/avoscloud/AVRole;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVUser;

.field final synthetic val$callback:Lcom/avos/avoscloud/AVCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/AVCallback;)V
    .locals 0

    .line 1716
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$28;->this$0:Lcom/avos/avoscloud/AVUser;

    iput-object p2, p0, Lcom/avos/avoscloud/AVUser$28;->val$callback:Lcom/avos/avoscloud/AVCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/FindCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Ljava/util/List;Lcom/avos/avoscloud/AVException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/AVRole;",
            ">;",
            "Lcom/avos/avoscloud/AVException;",
            ")V"
        }
    .end annotation

    .line 1719
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$28;->val$callback:Lcom/avos/avoscloud/AVCallback;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method
