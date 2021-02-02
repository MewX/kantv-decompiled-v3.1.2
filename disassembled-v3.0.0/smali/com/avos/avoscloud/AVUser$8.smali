.class Lcom/avos/avoscloud/AVUser$8;
.super Lcom/avos/avoscloud/LogInCallback;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUser;->refreshSessionToken()Lcom/avos/avoscloud/AVUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/LogInCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVUser;

.field final synthetic val$arrayList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVUser;Ljava/util/ArrayList;)V
    .locals 0

    .line 705
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$8;->this$0:Lcom/avos/avoscloud/AVUser;

    iput-object p2, p0, Lcom/avos/avoscloud/AVUser$8;->val$arrayList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/avos/avoscloud/LogInCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/avos/avoscloud/AVException;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 709
    invoke-static {p2}, Lcom/avos/avoscloud/AVExceptionHolder;->add(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 711
    :cond_0
    iget-object p2, p0, Lcom/avos/avoscloud/AVUser$8;->val$arrayList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
