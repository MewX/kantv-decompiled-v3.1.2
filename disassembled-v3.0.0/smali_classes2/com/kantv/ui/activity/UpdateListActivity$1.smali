.class Lcom/kantv/ui/activity/UpdateListActivity$1;
.super Lcom/kantv/common/api/CommonCallBack;
.source "UpdateListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/UpdateListActivity;->initRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/UpdateListActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/UpdateListActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/kantv/ui/activity/UpdateListActivity$1;->this$0:Lcom/kantv/ui/activity/UpdateListActivity;

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

    .line 136
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 137
    iget-object p1, p0, Lcom/kantv/ui/activity/UpdateListActivity$1;->this$0:Lcom/kantv/ui/activity/UpdateListActivity;

    iget-object p2, p0, Lcom/kantv/ui/activity/UpdateListActivity$1;->json:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/kantv/ui/activity/UpdateListActivity;->access$000(Lcom/kantv/ui/activity/UpdateListActivity;Ljava/lang/String;)V

    return-void
.end method
