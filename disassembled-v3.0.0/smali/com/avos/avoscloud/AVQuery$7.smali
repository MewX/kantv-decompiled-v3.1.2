.class Lcom/avos/avoscloud/AVQuery$7;
.super Lcom/avos/avoscloud/GetCallback;
.source "AVQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVQuery;->getFirst()Lcom/avos/avoscloud/AVObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/GetCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVQuery;

.field final synthetic val$result:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVQuery;[Ljava/lang/Object;)V
    .locals 0

    .line 1354
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery$7;->this$0:Lcom/avos/avoscloud/AVQuery;

    iput-object p2, p0, Lcom/avos/avoscloud/AVQuery$7;->val$result:[Ljava/lang/Object;

    invoke-direct {p0}, Lcom/avos/avoscloud/GetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVException;)V
    .locals 1

    if-nez p2, :cond_0

    .line 1358
    iget-object p2, p0, Lcom/avos/avoscloud/AVQuery$7;->val$result:[Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    goto :goto_0

    .line 1360
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
