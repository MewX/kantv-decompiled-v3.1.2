.class final Lcom/kantv/ui/viewmodel/CommonViewModel$2;
.super Lcom/kantv/common/api/CommonCallBack;
.source "CommonViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/viewmodel/CommonViewModel;->checkHadBindEmak(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$gone:Landroid/view/View;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;ZLandroid/content/Context;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 112
    iput-object p3, p0, Lcom/kantv/ui/viewmodel/CommonViewModel$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/kantv/ui/viewmodel/CommonViewModel$2;->val$view:Landroid/view/View;

    iput-object p5, p0, Lcom/kantv/ui/viewmodel/CommonViewModel$2;->val$gone:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
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

    .line 115
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 117
    iget-object p1, p0, Lcom/kantv/ui/viewmodel/CommonViewModel$2;->val$context:Landroid/content/Context;

    if-eqz p1, :cond_3

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/viewmodel/CommonViewModel$2;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 121
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 124
    :try_start_0
    iget-object p2, p0, Lcom/kantv/ui/viewmodel/CommonViewModel$2;->json:Ljava/lang/String;

    const-class v0, Lcom/kantv/ui/bean/MineBean;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/bean/MineBean;

    if-nez p1, :cond_1

    return-void

    .line 126
    :cond_1
    invoke-virtual {p1}, Lcom/kantv/ui/bean/MineBean;->getStatus()I

    move-result p2

    const-string v0, "200"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 129
    invoke-virtual {p1}, Lcom/kantv/ui/bean/MineBean;->getData()Lcom/kantv/ui/bean/MineBean$DataBean;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 131
    :cond_2
    invoke-virtual {p1}, Lcom/kantv/ui/bean/MineBean$DataBean;->getUserInfo()Lcom/kantv/ui/bean/UserInfoBean;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Lcom/kantv/ui/bean/UserInfoBean;->getMail()Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 134
    iget-object p1, p0, Lcom/kantv/ui/viewmodel/CommonViewModel$2;->val$view:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object p1, p0, Lcom/kantv/ui/viewmodel/CommonViewModel$2;->val$gone:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 136
    iget-object p1, p0, Lcom/kantv/ui/viewmodel/CommonViewModel$2;->val$gone:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 141
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method
