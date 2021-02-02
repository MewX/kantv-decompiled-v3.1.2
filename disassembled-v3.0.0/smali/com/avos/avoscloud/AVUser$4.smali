.class final Lcom/avos/avoscloud/AVUser$4;
.super Lcom/avos/avoscloud/LogInCallback;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUser;->loginByMobilePhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/LogInCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$list:[Lcom/avos/avoscloud/AVUser;


# direct methods
.method constructor <init>([Lcom/avos/avoscloud/AVUser;)V
    .locals 0

    .line 514
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$4;->val$list:[Lcom/avos/avoscloud/AVUser;

    invoke-direct {p0}, Lcom/avos/avoscloud/LogInCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/AVException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/avos/avoscloud/AVException;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 519
    invoke-static {p2}, Lcom/avos/avoscloud/AVExceptionHolder;->add(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 521
    :cond_0
    iget-object p2, p0, Lcom/avos/avoscloud/AVUser$4;->val$list:[Lcom/avos/avoscloud/AVUser;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    :goto_0
    return-void
.end method

.method public mustRunOnUIThread()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
