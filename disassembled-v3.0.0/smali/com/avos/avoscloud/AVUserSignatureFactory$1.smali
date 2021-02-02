.class Lcom/avos/avoscloud/AVUserSignatureFactory$1;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVUserSignatureFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUserSignatureFactory;->createSignature(Ljava/lang/String;Ljava/util/List;)Lcom/avos/avoscloud/Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVUserSignatureFactory;

.field final synthetic val$stringBuffer:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVUserSignatureFactory;Ljava/lang/StringBuffer;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/avos/avoscloud/AVUserSignatureFactory$1;->this$0:Lcom/avos/avoscloud/AVUserSignatureFactory;

    iput-object p2, p0, Lcom/avos/avoscloud/AVUserSignatureFactory$1;->val$stringBuffer:Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 41
    new-instance p1, Lcom/avos/avoscloud/SignatureFactory$SignatureException;

    const/16 v0, 0x1006

    invoke-direct {p1, v0, p2}, Lcom/avos/avoscloud/SignatureFactory$SignatureException;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/avos/avoscloud/AVExceptionHolder;->add(Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 32
    new-instance p1, Lcom/avos/avoscloud/SignatureFactory$SignatureException;

    const/16 v0, 0x1006

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to create signature. cause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/avos/avoscloud/SignatureFactory$SignatureException;-><init>(ILjava/lang/String;)V

    .line 32
    invoke-static {p1}, Lcom/avos/avoscloud/AVExceptionHolder;->add(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 35
    :cond_0
    iget-object p2, p0, Lcom/avos/avoscloud/AVUserSignatureFactory$1;->val$stringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    return-void
.end method
