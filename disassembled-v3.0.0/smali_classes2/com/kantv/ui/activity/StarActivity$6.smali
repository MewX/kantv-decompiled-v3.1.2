.class Lcom/kantv/ui/activity/StarActivity$6;
.super Ljava/lang/Object;
.source "StarActivity.java"

# interfaces
.implements Lcom/kantv/ui/view/ShareDialog$onClickback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/StarActivity;->initShareDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/StarActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/StarActivity;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/kantv/ui/activity/StarActivity$6;->this$0:Lcom/kantv/ui/activity/StarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShare(I)V
    .locals 9

    const-string v0, "imageUrl"

    const-string v1, "targetUrl"

    const v2, 0x7f0f00be

    const-string v3, "summary"

    const-string v4, "title"

    const-string v5, "req_type"

    const-string v6, "\u60a8\u7684\u8bbe\u5907\u5f53\u524d\u672a\u5b89\u88c5QQ\uff01"

    const-string v7, "\u60a8\u8fd8\u672a\u5b89\u88c5\u5fae\u4fe1\u5ba2\u6237\u7aef"

    const/4 v8, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 432
    :pswitch_0
    iget-object p1, p0, Lcom/kantv/ui/activity/StarActivity$6;->this$0:Lcom/kantv/ui/activity/StarActivity;

    invoke-static {p1}, Lcom/kantv/common/utils/Utils;->isQQClientAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 433
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 434
    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 435
    iget-object v5, p0, Lcom/kantv/ui/activity/StarActivity$6;->this$0:Lcom/kantv/ui/activity/StarActivity;

    invoke-static {v5}, Lcom/kantv/ui/activity/StarActivity;->access$1100(Lcom/kantv/ui/activity/StarActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/kantv/ui/activity/StarActivity;->access$1200(Lcom/kantv/ui/activity/StarActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v4, p0, Lcom/kantv/ui/activity/StarActivity$6;->this$0:Lcom/kantv/ui/activity/StarActivity;

    invoke-virtual {v4, v2}, Lcom/kantv/ui/activity/StarActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v2, p0, Lcom/kantv/ui/activity/StarActivity$6;->this$0:Lcom/kantv/ui/activity/StarActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/StarActivity;->access$1300(Lcom/kantv/ui/activity/StarActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 439
    iget-object v2, p0, Lcom/kantv/ui/activity/StarActivity$6;->this$0:Lcom/kantv/ui/activity/StarActivity;

    const v3, 0x7f0f00c0

    invoke-virtual {v2, v3}, Lcom/kantv/ui/activity/StarActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 441
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity$6;->this$0:Lcom/kantv/ui/activity/StarActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/StarActivity;->access$1500(Lcom/kantv/ui/activity/StarActivity;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/StarActivity$6;->this$0:Lcom/kantv/ui/activity/StarActivity;

    new-instance v2, Lcom/kantv/ui/activity/StarActivity$6$2;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/StarActivity$6$2;-><init>(Lcom/kantv/ui/activity/StarActivity$6;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/tencent/tauth/Tencent;->shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto/16 :goto_0

    .line 458
    :cond_0
    invoke-static {v6}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 424
    :pswitch_1
    iget-object p1, p0, Lcom/kantv/ui/activity/StarActivity$6;->this$0:Lcom/kantv/ui/activity/StarActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/StarActivity;->access$900(Lcom/kantv/ui/activity/StarActivity;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p1

    invoke-interface {p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 425
    invoke-static {v7}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 428
    :cond_1
    iget-object p1, p0, Lcom/kantv/ui/activity/StarActivity$6;->this$0:Lcom/kantv/ui/activity/StarActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/kantv/ui/activity/StarActivity;->access$1000(Lcom/kantv/ui/activity/StarActivity;I)V

    goto/16 :goto_0

    .line 394
    :pswitch_2
    iget-object p1, p0, Lcom/kantv/ui/activity/StarActivity$6;->this$0:Lcom/kantv/ui/activity/StarActivity;

    invoke-static {p1}, Lcom/kantv/common/utils/Utils;->isQQClientAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 395
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 396
    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 397
    iget-object v5, p0, Lcom/kantv/ui/activity/StarActivity$6;->this$0:Lcom/kantv/ui/activity/StarActivity;

    invoke-static {v5}, Lcom/kantv/ui/activity/StarActivity;->access$1100(Lcom/kantv/ui/activity/StarActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/kantv/ui/activity/StarActivity;->access$1200(Lcom/kantv/ui/activity/StarActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v4, p0, Lcom/kantv/ui/activity/StarActivity$6;->this$0:Lcom/kantv/ui/activity/StarActivity;

    invoke-virtual {v4, v2}, Lcom/kantv/ui/activity/StarActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v2, p0, Lcom/kantv/ui/activity/StarActivity$6;->this$0:Lcom/kantv/ui/activity/StarActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/StarActivity;->access$1300(Lcom/kantv/ui/activity/StarActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lcom/kantv/ui/activity/StarActivity$6;->this$0:Lcom/kantv/ui/activity/StarActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/StarActivity;->access$1400(Lcom/kantv/ui/activity/StarActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity$6;->this$0:Lcom/kantv/ui/activity/StarActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/StarActivity;->access$1500(Lcom/kantv/ui/activity/StarActivity;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/StarActivity$6;->this$0:Lcom/kantv/ui/activity/StarActivity;

    new-instance v2, Lcom/kantv/ui/activity/StarActivity$6$1;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/StarActivity$6$1;-><init>(Lcom/kantv/ui/activity/StarActivity$6;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto :goto_0

    .line 418
    :cond_2
    invoke-static {v6}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 386
    :pswitch_3
    iget-object p1, p0, Lcom/kantv/ui/activity/StarActivity$6;->this$0:Lcom/kantv/ui/activity/StarActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/StarActivity;->access$900(Lcom/kantv/ui/activity/StarActivity;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p1

    invoke-interface {p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 387
    invoke-static {v7}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 390
    :cond_3
    iget-object p1, p0, Lcom/kantv/ui/activity/StarActivity$6;->this$0:Lcom/kantv/ui/activity/StarActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kantv/ui/activity/StarActivity;->access$1000(Lcom/kantv/ui/activity/StarActivity;I)V

    goto :goto_0

    .line 378
    :pswitch_4
    iget-object p1, p0, Lcom/kantv/ui/activity/StarActivity$6;->this$0:Lcom/kantv/ui/activity/StarActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/StarActivity;->access$900(Lcom/kantv/ui/activity/StarActivity;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p1

    invoke-interface {p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result p1

    if-nez p1, :cond_4

    .line 379
    invoke-static {v7}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 382
    :cond_4
    iget-object p1, p0, Lcom/kantv/ui/activity/StarActivity$6;->this$0:Lcom/kantv/ui/activity/StarActivity;

    invoke-static {p1, v8}, Lcom/kantv/ui/activity/StarActivity;->access$1000(Lcom/kantv/ui/activity/StarActivity;I)V

    :goto_0
    :pswitch_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
