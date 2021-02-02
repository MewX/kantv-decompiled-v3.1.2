.class final Lcom/avos/avoscloud/AVOSCloud$2;
.super Lcom/avos/avoscloud/GetCallback;
.source "AVOSCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVOSCloud;->onUpgrade(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/GetCallback<",
        "Lcom/avos/avoscloud/AVObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 343
    invoke-direct {p0}, Lcom/avos/avoscloud/GetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVException;)V
    .locals 0

    .line 347
    check-cast p1, Lcom/avos/avoscloud/AVUser;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVUser;->changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V

    return-void
.end method
