.class final Lcom/avos/avoscloud/AVOSCloud$3;
.super Lcom/avos/avoscloud/callback/AVServerDateCallback;
.source "AVOSCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVOSCloud;->getServerDate()Ljava/util/Date;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$results:[Ljava/util/Date;


# direct methods
.method constructor <init>([Ljava/util/Date;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/avos/avoscloud/AVOSCloud$3;->val$results:[Ljava/util/Date;

    invoke-direct {p0}, Lcom/avos/avoscloud/callback/AVServerDateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Ljava/util/Date;Lcom/avos/avoscloud/AVException;)V
    .locals 1

    if-nez p2, :cond_0

    .line 398
    iget-object p2, p0, Lcom/avos/avoscloud/AVOSCloud$3;->val$results:[Ljava/util/Date;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    goto :goto_0

    .line 400
    :cond_0
    invoke-static {p2}, Lcom/avos/avoscloud/AVExceptionHolder;->add(Lcom/avos/avoscloud/AVException;)V

    :goto_0
    return-void
.end method

.method public mustRunOnUIThread()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
