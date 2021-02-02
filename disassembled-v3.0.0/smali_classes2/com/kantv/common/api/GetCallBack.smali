.class public abstract Lcom/kantv/common/api/GetCallBack;
.super Ljava/lang/Object;
.source "GetCallBack.java"

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
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/kantv/common/api/GetCallBack;->mIsDialogShow:Z

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/kantv/common/api/GetCallBack;->mDialog:Lcom/kantv/common/view/CustomProgressDialog;

    .line 33
    iput-object v0, p0, Lcom/kantv/common/api/GetCallBack;->json:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/kantv/common/api/GetCallBack;->mContext:Landroid/content/Context;

    .line 40
    iput-boolean p2, p0, Lcom/kantv/common/api/GetCallBack;->mIsDialogShow:Z

    if-eqz p2, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/kantv/common/api/GetCallBack;->initDialogShow()V

    :cond_0
    return-void
.end method

.method private dismissProgressDialog()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/kantv/common/api/GetCallBack;->mDialog:Lcom/kantv/common/view/CustomProgressDialog;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Lcom/kantv/common/view/CustomProgressDialog;->cancel()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/kantv/common/api/GetCallBack;->mDialog:Lcom/kantv/common/view/CustomProgressDialog;

    .line 82
    iput-object v0, p0, Lcom/kantv/common/api/GetCallBack;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method private initDialogShow()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/kantv/common/api/GetCallBack;->mDialog:Lcom/kantv/common/view/CustomProgressDialog;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/kantv/common/view/CustomProgressDialog;

    iget-object v1, p0, Lcom/kantv/common/api/GetCallBack;->mContext:Landroid/content/Context;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/kantv/common/view/CustomProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/kantv/common/api/GetCallBack;->mDialog:Lcom/kantv/common/view/CustomProgressDialog;

    .line 53
    iget-object v0, p0, Lcom/kantv/common/api/GetCallBack;->mDialog:Lcom/kantv/common/view/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/kantv/common/view/CustomProgressDialog;->show()V

    .line 57
    iget-object v0, p0, Lcom/kantv/common/api/GetCallBack;->mDialog:Lcom/kantv/common/view/CustomProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kantv/common/view/CustomProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 58
    iget-object v0, p0, Lcom/kantv/common/api/GetCallBack;->mDialog:Lcom/kantv/common/view/CustomProgressDialog;

    new-instance v1, Lcom/kantv/common/api/GetCallBack$1;

    invoke-direct {v1, p0}, Lcom/kantv/common/api/GetCallBack$1;-><init>(Lcom/kantv/common/api/GetCallBack;)V

    invoke-virtual {v0, v1}, Lcom/kantv/common/view/CustomProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v0}, Lcom/kantv/common/view/CustomProgressDialog;->show()V

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/kantv/common/api/GetCallBack;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 72
    iget-object v1, p0, Lcom/kantv/common/api/GetCallBack;->mDialog:Lcom/kantv/common/view/CustomProgressDialog;

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

    .line 112
    iget-object p1, p0, Lcom/kantv/common/api/GetCallBack;->mDialog:Lcom/kantv/common/view/CustomProgressDialog;

    if-eqz p1, :cond_1

    .line 113
    invoke-virtual {p1}, Lcom/kantv/common/view/CustomProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 115
    :cond_0
    iget-boolean p2, p0, Lcom/kantv/common/api/GetCallBack;->mIsDialogShow:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 116
    invoke-direct {p0}, Lcom/kantv/common/api/GetCallBack;->dismissProgressDialog()V

    :cond_1
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0
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

    if-eqz p2, :cond_0

    .line 91
    :try_start_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/common/api/GetCallBack;->json:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 93
    iput-object p1, p0, Lcom/kantv/common/api/GetCallBack;->json:Ljava/lang/String;

    .line 96
    :goto_0
    iget-object p1, p0, Lcom/kantv/common/api/GetCallBack;->mDialog:Lcom/kantv/common/view/CustomProgressDialog;

    if-eqz p1, :cond_2

    .line 97
    iget-object p1, p0, Lcom/kantv/common/api/GetCallBack;->mDialog:Lcom/kantv/common/view/CustomProgressDialog;

    invoke-virtual {p1}, Lcom/kantv/common/view/CustomProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 99
    :cond_1
    iget-boolean p2, p0, Lcom/kantv/common/api/GetCallBack;->mIsDialogShow:Z

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 100
    invoke-direct {p0}, Lcom/kantv/common/api/GetCallBack;->dismissProgressDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
