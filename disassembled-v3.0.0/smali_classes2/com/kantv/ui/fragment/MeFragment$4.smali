.class Lcom/kantv/ui/fragment/MeFragment$4;
.super Ljava/lang/Object;
.source "MeFragment.java"

# interfaces
.implements Lcom/kantv/ui/view/ShareDialog$onClickback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/MeFragment;->initShareDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/MeFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/MeFragment;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/kantv/ui/fragment/MeFragment$4;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShare(I)V
    .locals 13

    const v0, 0x7f0f00be

    const-string v1, "summary"

    const v2, 0x7f0f00bd

    const-string v3, "title"

    const-string v4, "req_type"

    const-string v5, "\u60a8\u7684\u8bbe\u5907\u5f53\u524d\u672a\u5b89\u88c5QQ\uff01"

    const-string v6, "\u60a8\u8fd8\u672a\u5b89\u88c5\u5fae\u4fe1\u5ba2\u6237\u7aef"

    const/4 v7, 0x1

    const-string v8, "\u70b9\u51fb"

    const-string v9, "\u6211_\u5206\u4eabkantv"

    const-string v10, "qudao"

    const-string v11, "1"

    const-string v12, "num"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 505
    :pswitch_0
    iget-object p1, p0, Lcom/kantv/ui/fragment/MeFragment$4;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    invoke-virtual {p1}, Lcom/kantv/ui/fragment/MeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/Utils;->isQQClientAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 506
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 507
    invoke-virtual {p1, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 508
    iget-object v4, p0, Lcom/kantv/ui/fragment/MeFragment$4;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    invoke-virtual {v4, v2}, Lcom/kantv/ui/fragment/MeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v2, p0, Lcom/kantv/ui/fragment/MeFragment$4;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    invoke-virtual {v2, v0}, Lcom/kantv/ui/fragment/MeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment$4;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    const v1, 0x7f0f00bf

    invoke-virtual {v0, v1}, Lcom/kantv/ui/fragment/MeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "targetUrl"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 512
    iget-object v1, p0, Lcom/kantv/ui/fragment/MeFragment$4;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    const v2, 0x7f0f00c0

    invoke-virtual {v1, v2}, Lcom/kantv/ui/fragment/MeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "imageUrl"

    .line 513
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 514
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment$4;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/MeFragment;->access$400(Lcom/kantv/ui/fragment/MeFragment;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/MeFragment$4;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    invoke-virtual {v1}, Lcom/kantv/ui/fragment/MeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/kantv/ui/fragment/MeFragment$4$2;

    invoke-direct {v2, p0}, Lcom/kantv/ui/fragment/MeFragment$4$2;-><init>(Lcom/kantv/ui/fragment/MeFragment$4;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/tencent/tauth/Tencent;->shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 530
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 531
    invoke-virtual {p1, v12, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "QQ\u7a7a\u95f4"

    .line 532
    invoke-virtual {p1, v10, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {v0, v9}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    const-string v1, "QQ\u7a7a\u95f4"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 537
    :cond_0
    invoke-static {v5}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 491
    :pswitch_1
    iget-object p1, p0, Lcom/kantv/ui/fragment/MeFragment$4;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/MeFragment;->access$200(Lcom/kantv/ui/fragment/MeFragment;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p1

    invoke-interface {p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 492
    invoke-static {v6}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 495
    :cond_1
    iget-object p1, p0, Lcom/kantv/ui/fragment/MeFragment$4;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/kantv/ui/fragment/MeFragment;->access$300(Lcom/kantv/ui/fragment/MeFragment;I)V

    .line 496
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 497
    invoke-virtual {p1, v12, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u5fae\u4fe1\u6536\u85cf"

    .line 498
    invoke-virtual {p1, v10, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {v0, v9}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    const-string v1, "\u5fae\u4fe1\u6536\u85cf"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 455
    :pswitch_2
    iget-object p1, p0, Lcom/kantv/ui/fragment/MeFragment$4;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    invoke-virtual {p1}, Lcom/kantv/ui/fragment/MeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/Utils;->isQQClientAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 456
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 457
    invoke-virtual {p1, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 458
    iget-object v4, p0, Lcom/kantv/ui/fragment/MeFragment$4;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    invoke-virtual {v4, v2}, Lcom/kantv/ui/fragment/MeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v2, p0, Lcom/kantv/ui/fragment/MeFragment$4;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    invoke-virtual {v2, v0}, Lcom/kantv/ui/fragment/MeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment$4;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    const v1, 0x7f0f00bf

    invoke-virtual {v0, v1}, Lcom/kantv/ui/fragment/MeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "targetUrl"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment$4;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    const v1, 0x7f0f00c0

    invoke-virtual {v0, v1}, Lcom/kantv/ui/fragment/MeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "imageUrl"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment$4;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/MeFragment;->access$400(Lcom/kantv/ui/fragment/MeFragment;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/MeFragment$4;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    invoke-virtual {v1}, Lcom/kantv/ui/fragment/MeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/kantv/ui/fragment/MeFragment$4$1;

    invoke-direct {v2, p0}, Lcom/kantv/ui/fragment/MeFragment$4$1;-><init>(Lcom/kantv/ui/fragment/MeFragment$4;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 478
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 479
    invoke-virtual {p1, v12, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "QQ\u597d\u53cb"

    .line 480
    invoke-virtual {p1, v10, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {v0, v9}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    const-string v1, "QQ\u597d\u53cb"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 485
    :cond_2
    invoke-static {v5}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 441
    :pswitch_3
    iget-object p1, p0, Lcom/kantv/ui/fragment/MeFragment$4;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/MeFragment;->access$200(Lcom/kantv/ui/fragment/MeFragment;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p1

    invoke-interface {p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 442
    invoke-static {v6}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 445
    :cond_3
    iget-object p1, p0, Lcom/kantv/ui/fragment/MeFragment$4;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kantv/ui/fragment/MeFragment;->access$300(Lcom/kantv/ui/fragment/MeFragment;I)V

    .line 446
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 447
    invoke-virtual {p1, v12, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u5fae\u4fe1\u597d\u53cb"

    .line 448
    invoke-virtual {p1, v10, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {v1, v9}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto :goto_0

    .line 427
    :pswitch_4
    iget-object p1, p0, Lcom/kantv/ui/fragment/MeFragment$4;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/MeFragment;->access$200(Lcom/kantv/ui/fragment/MeFragment;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p1

    invoke-interface {p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result p1

    if-nez p1, :cond_4

    .line 428
    invoke-static {v6}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 431
    :cond_4
    iget-object p1, p0, Lcom/kantv/ui/fragment/MeFragment$4;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    invoke-static {p1, v7}, Lcom/kantv/ui/fragment/MeFragment;->access$300(Lcom/kantv/ui/fragment/MeFragment;I)V

    .line 432
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 433
    invoke-virtual {p1, v12, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u670b\u53cb\u5708"

    .line 434
    invoke-virtual {p1, v10, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {v1, v9}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto :goto_0

    .line 420
    :pswitch_5
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 421
    invoke-virtual {p1, v12, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v1, "\u6211_\u53d6\u6d88\u5206\u4eabkantv"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    :goto_0
    :pswitch_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
