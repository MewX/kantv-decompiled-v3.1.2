.class Lcom/kantv/ui/activity/StarActivity$4;
.super Lcom/kantv/common/api/CommonCallBack;
.source "StarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/StarActivity;->initRequestStar(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/StarActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/StarActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/kantv/ui/activity/StarActivity$4;->this$0:Lcom/kantv/ui/activity/StarActivity;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
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

    .line 313
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 314
    iget-object p1, p0, Lcom/kantv/ui/activity/StarActivity$4;->this$0:Lcom/kantv/ui/activity/StarActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/StarActivity;->access$500(Lcom/kantv/ui/activity/StarActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 315
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/StarActivity$4;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 316
    iget-object p1, p0, Lcom/kantv/ui/activity/StarActivity$4;->this$0:Lcom/kantv/ui/activity/StarActivity;

    iget-object p2, p0, Lcom/kantv/ui/activity/StarActivity$4;->json:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/kantv/ui/activity/StarActivity;->access$600(Lcom/kantv/ui/activity/StarActivity;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
