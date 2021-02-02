.class final Lcom/avos/avoscloud/AVObject$FetchObjectCallback;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FetchObjectCallback"
.end annotation


# instance fields
.field private final internalCallback:Lcom/avos/avoscloud/AVCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/avos/avoscloud/AVCallback<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/avos/avoscloud/AVObject;


# direct methods
.method private constructor <init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVCallback<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;->internalCallback:Lcom/avos/avoscloud/AVCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/AVObject$1;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;-><init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVCallback;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;->internalCallback:Lcom/avos/avoscloud/AVCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 98
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    .line 82
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromJsonStringToAVObject(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V

    .line 84
    iget-object p1, p0, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/avos/avoscloud/AVObject;->access$002(Lcom/avos/avoscloud/AVObject;Z)Z

    .line 85
    iget-object p1, p0, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVObject;->onDataSynchronized()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 88
    new-instance p2, Lcom/avos/avoscloud/AVException;

    const/16 p1, 0x65

    const-string v1, "The object is not Found"

    invoke-direct {p2, p1, v1}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    .line 90
    :goto_0
    iget-object p1, p0, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;->internalCallback:Lcom/avos/avoscloud/AVCallback;

    if-eqz p1, :cond_1

    .line 91
    invoke-virtual {p1, v0, p2}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_1
    return-void
.end method
