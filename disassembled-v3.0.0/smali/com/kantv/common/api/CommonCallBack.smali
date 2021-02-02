.class public abstract Lcom/kantv/common/api/CommonCallBack;
.super Ljava/lang/Object;
.source "CommonCallBack.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field protected json:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field protected mDialog:Lcom/kantv/common/view/CustomProgressDialog;

.field private mIsDialogShow:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/kantv/common/api/CommonCallBack;->mIsDialogShow:Z

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/kantv/common/api/CommonCallBack;->mDialog:Lcom/kantv/common/view/CustomProgressDialog;

    .line 46
    iput-object v0, p0, Lcom/kantv/common/api/CommonCallBack;->json:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/kantv/common/api/CommonCallBack;->mIsDialogShow:Z

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/kantv/common/api/CommonCallBack;->mDialog:Lcom/kantv/common/view/CustomProgressDialog;

    .line 46
    iput-object v0, p0, Lcom/kantv/common/api/CommonCallBack;->json:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/kantv/common/api/CommonCallBack;->mContext:Landroid/content/Context;

    .line 53
    iput-boolean p2, p0, Lcom/kantv/common/api/CommonCallBack;->mIsDialogShow:Z

    if-eqz p2, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/kantv/common/api/CommonCallBack;->initDialogShow()V

    :cond_0
    return-void
.end method

.method private dismissProgressDialog()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/kantv/common/api/CommonCallBack;->mDialog:Lcom/kantv/common/view/CustomProgressDialog;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Lcom/kantv/common/view/CustomProgressDialog;->cancel()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/kantv/common/api/CommonCallBack;->mDialog:Lcom/kantv/common/view/CustomProgressDialog;

    .line 99
    iput-object v0, p0, Lcom/kantv/common/api/CommonCallBack;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method private initDialogShow()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/kantv/common/api/CommonCallBack;->mDialog:Lcom/kantv/common/view/CustomProgressDialog;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/kantv/common/view/CustomProgressDialog;

    iget-object v1, p0, Lcom/kantv/common/api/CommonCallBack;->mContext:Landroid/content/Context;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/kantv/common/view/CustomProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/kantv/common/api/CommonCallBack;->mDialog:Lcom/kantv/common/view/CustomProgressDialog;

    .line 70
    iget-object v0, p0, Lcom/kantv/common/api/CommonCallBack;->mDialog:Lcom/kantv/common/view/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/kantv/common/view/CustomProgressDialog;->show()V

    .line 74
    iget-object v0, p0, Lcom/kantv/common/api/CommonCallBack;->mDialog:Lcom/kantv/common/view/CustomProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kantv/common/view/CustomProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 75
    iget-object v0, p0, Lcom/kantv/common/api/CommonCallBack;->mDialog:Lcom/kantv/common/view/CustomProgressDialog;

    new-instance v1, Lcom/kantv/common/api/CommonCallBack$1;

    invoke-direct {v1, p0}, Lcom/kantv/common/api/CommonCallBack$1;-><init>(Lcom/kantv/common/api/CommonCallBack;)V

    invoke-virtual {v0, v1}, Lcom/kantv/common/view/CustomProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {v0}, Lcom/kantv/common/view/CustomProgressDialog;->show()V

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/kantv/common/api/CommonCallBack;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 89
    iget-object v1, p0, Lcom/kantv/common/api/CommonCallBack;->mDialog:Lcom/kantv/common/view/CustomProgressDialog;

    invoke-virtual {v1, v0}, Lcom/kantv/common/view/CustomProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 156
    iget-object p1, p0, Lcom/kantv/common/api/CommonCallBack;->mDialog:Lcom/kantv/common/view/CustomProgressDialog;

    if-eqz p1, :cond_1

    .line 157
    invoke-virtual {p1}, Lcom/kantv/common/view/CustomProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 159
    :cond_0
    iget-boolean p2, p0, Lcom/kantv/common/api/CommonCallBack;->mIsDialogShow:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 160
    invoke-direct {p0}, Lcom/kantv/common/api/CommonCallBack;->dismissProgressDialog()V

    :cond_1
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Lretrofit2/Response<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 108
    :try_start_0
    sget-object p1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 109
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/common/api/CommonCallBack;->json:Ljava/lang/String;

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p1

    invoke-static {p1}, Lorg/msgpack/core/MessagePack;->newDefaultUnpacker([B)Lorg/msgpack/core/MessageUnpacker;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 113
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackValue()Lorg/msgpack/value/ImmutableValue;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kantv/common/api/CommonCallBack;->json:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->close()V

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 119
    iput-object p1, p0, Lcom/kantv/common/api/CommonCallBack;->json:Ljava/lang/String;

    .line 140
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/kantv/common/api/CommonCallBack;->mDialog:Lcom/kantv/common/view/CustomProgressDialog;

    if-eqz p1, :cond_4

    .line 141
    iget-object p1, p0, Lcom/kantv/common/api/CommonCallBack;->mDialog:Lcom/kantv/common/view/CustomProgressDialog;

    invoke-virtual {p1}, Lcom/kantv/common/view/CustomProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 143
    :cond_3
    iget-boolean p2, p0, Lcom/kantv/common/api/CommonCallBack;->mIsDialogShow:Z

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_4

    .line 144
    invoke-direct {p0}, Lcom/kantv/common/api/CommonCallBack;->dismissProgressDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 148
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method
