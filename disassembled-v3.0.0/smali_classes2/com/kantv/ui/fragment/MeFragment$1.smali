.class Lcom/kantv/ui/fragment/MeFragment$1;
.super Lcom/kantv/common/api/CommonCallBack;
.source "MeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/MeFragment;->initRequestMyInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/MeFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/MeFragment;Landroid/content/Context;Z)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/kantv/ui/fragment/MeFragment$1;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

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

    .line 206
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 207
    iget-object p1, p0, Lcom/kantv/ui/fragment/MeFragment$1;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/MeFragment;->access$000(Lcom/kantv/ui/fragment/MeFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 209
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/fragment/MeFragment$1;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 211
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 214
    :try_start_0
    iget-object p2, p0, Lcom/kantv/ui/fragment/MeFragment$1;->json:Ljava/lang/String;

    const-class v0, Lcom/kantv/ui/bean/MineBean;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/bean/MineBean;

    if-nez p1, :cond_1

    return-void

    .line 216
    :cond_1
    invoke-virtual {p1}, Lcom/kantv/ui/bean/MineBean;->getStatus()I

    move-result p2

    const-string v0, "200"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 219
    invoke-virtual {p1}, Lcom/kantv/ui/bean/MineBean;->getData()Lcom/kantv/ui/bean/MineBean$DataBean;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 221
    :cond_2
    invoke-virtual {p1}, Lcom/kantv/ui/bean/MineBean$DataBean;->getUserInfo()Lcom/kantv/ui/bean/UserInfoBean;

    move-result-object p1

    .line 222
    iget-object p2, p0, Lcom/kantv/ui/fragment/MeFragment$1;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    iget-object p2, p2, Lcom/kantv/ui/fragment/MeFragment;->mName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/kantv/ui/bean/UserInfoBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    invoke-virtual {p1}, Lcom/kantv/ui/bean/UserInfoBean;->getPhoto()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/kantv/ui/fragment/MeFragment$1;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    iget-object p2, p2, Lcom/kantv/ui/fragment/MeFragment;->mHead:Lcom/kantv/ui/view/CircleImageView;

    invoke-static {p1, p2}, Lcom/kantv/ui/utils/GlideUtils;->loadimageRoundness(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 224
    new-instance p1, Lcom/google/gson/JsonParser;

    invoke-direct {p1}, Lcom/google/gson/JsonParser;-><init>()V

    .line 225
    iget-object p2, p0, Lcom/kantv/ui/fragment/MeFragment$1;->json:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 226
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string p2, "data"

    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string p2, "userInfo"

    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 227
    iget-object p2, p0, Lcom/kantv/ui/fragment/MeFragment$1;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    invoke-virtual {p2}, Lcom/kantv/ui/fragment/MeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/kantv/ui/viewmodel/CommonViewModel;->inputUserBean(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 230
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method
