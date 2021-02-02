.class Lcom/kantv/ui/activity/NewsDetailActivity$13;
.super Ljava/lang/Object;
.source "NewsDetailActivity.java"

# interfaces
.implements Lcom/kantv/ui/view/ShareDialog$onClickback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/NewsDetailActivity;->initShareDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/NewsDetailActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/NewsDetailActivity;)V
    .locals 0

    .line 1035
    iput-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$13;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShare(I)V
    .locals 10

    const v0, 0x7f0f00c0

    const-string v1, "imageUrl"

    const-string v2, "targetUrl"

    const v3, 0x7f0f00c1

    const-string v4, "summary"

    const-string v5, "title"

    const-string v6, "req_type"

    const-string v7, "\u60a8\u7684\u8bbe\u5907\u5f53\u524d\u672a\u5b89\u88c5QQ\uff01"

    const-string v8, "\u60a8\u8fd8\u672a\u5b89\u88c5\u5fae\u4fe1\u5ba2\u6237\u7aef"

    const/4 v9, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1096
    :pswitch_0
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$13;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {p1}, Lcom/kantv/common/utils/Utils;->isQQClientAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1097
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1098
    invoke-virtual {p1, v6, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1099
    iget-object v6, p0, Lcom/kantv/ui/activity/NewsDetailActivity$13;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {v6}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$3000(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    iget-object v5, p0, Lcom/kantv/ui/activity/NewsDetailActivity$13;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-virtual {v5, v3}, Lcom/kantv/ui/activity/NewsDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    iget-object v3, p0, Lcom/kantv/ui/activity/NewsDetailActivity$13;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {v3}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$3100(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1103
    iget-object v3, p0, Lcom/kantv/ui/activity/NewsDetailActivity$13;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-virtual {v3, v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1104
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1105
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$13;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$3200(Lcom/kantv/ui/activity/NewsDetailActivity;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$13;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    new-instance v2, Lcom/kantv/ui/activity/NewsDetailActivity$13$2;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/NewsDetailActivity$13$2;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity$13;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/tencent/tauth/Tencent;->shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto/16 :goto_0

    .line 1122
    :cond_0
    invoke-static {v7}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1088
    :pswitch_1
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$13;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$2800(Lcom/kantv/ui/activity/NewsDetailActivity;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p1

    invoke-interface {p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1089
    invoke-static {v8}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 1092
    :cond_1
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$13;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$2900(Lcom/kantv/ui/activity/NewsDetailActivity;I)V

    goto/16 :goto_0

    .line 1058
    :pswitch_2
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$13;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {p1}, Lcom/kantv/common/utils/Utils;->isQQClientAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1059
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1060
    invoke-virtual {p1, v6, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1061
    iget-object v6, p0, Lcom/kantv/ui/activity/NewsDetailActivity$13;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {v6}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$3000(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    iget-object v5, p0, Lcom/kantv/ui/activity/NewsDetailActivity$13;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-virtual {v5, v3}, Lcom/kantv/ui/activity/NewsDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    iget-object v3, p0, Lcom/kantv/ui/activity/NewsDetailActivity$13;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {v3}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$3100(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    iget-object v2, p0, Lcom/kantv/ui/activity/NewsDetailActivity$13;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-virtual {v2, v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$13;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$3200(Lcom/kantv/ui/activity/NewsDetailActivity;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$13;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    new-instance v2, Lcom/kantv/ui/activity/NewsDetailActivity$13$1;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/NewsDetailActivity$13$1;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity$13;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto :goto_0

    .line 1082
    :cond_2
    invoke-static {v7}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1050
    :pswitch_3
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$13;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$2800(Lcom/kantv/ui/activity/NewsDetailActivity;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p1

    invoke-interface {p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1051
    invoke-static {v8}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 1054
    :cond_3
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$13;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$2900(Lcom/kantv/ui/activity/NewsDetailActivity;I)V

    goto :goto_0

    .line 1042
    :pswitch_4
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$13;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$2800(Lcom/kantv/ui/activity/NewsDetailActivity;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p1

    invoke-interface {p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1043
    invoke-static {v8}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 1046
    :cond_4
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$13;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {p1, v9}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$2900(Lcom/kantv/ui/activity/NewsDetailActivity;I)V

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
