.class Lcom/kantv/ui/activity/VideoPlayActivity$15;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Lcom/kantv/common/interfaces/ClickCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/activity/VideoPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V
    .locals 0

    .line 754
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShare(I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_a

    const/16 v2, 0x9

    const/4 v3, 0x1

    if-eq v1, v2, :cond_8

    const-string v4, "imageUrl"

    const-string v5, "targetUrl"

    const v6, 0x7f0f00c2

    const-string v7, "summary"

    const-string v8, "\u3011,\u770b\u4e00\u6b21\u8d5a\u5230\u4e00\u6b21"

    const-string v9, "\u6211\u6b63\u5728\u770bTV\u4e0a\u770b\u3010"

    const-string v10, "title"

    const-string v11, "req_type"

    const-string v12, "\u60a8\u7684\u8bbe\u5907\u5f53\u524d\u672a\u5b89\u88c5QQ\uff01"

    const-string v13, "\u60a8\u8fd8\u672a\u5b89\u88c5\u5fae\u4fe1\u5ba2\u6237\u7aef"

    const-string v14, "qudao"

    const-string v15, "num"

    const-string v2, "1"

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_1

    .line 931
    :pswitch_0
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v1, v1, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    if-eqz v1, :cond_c

    .line 932
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v1, v1, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-virtual {v1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->requestCollect()V

    goto/16 :goto_1

    .line 936
    :pswitch_1
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v1, v1, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    if-eqz v1, :cond_c

    .line 937
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v1, v1, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    const-string v2, "download"

    invoke-virtual {v1, v2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->initOnlineStatus(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 926
    :pswitch_2
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v1, v1, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    if-eqz v1, :cond_c

    .line 927
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v1, v1, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-virtual {v1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->showFullSelectVideoDialog()V

    goto/16 :goto_1

    .line 905
    :pswitch_3
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v1, v1, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    iget-object v4, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v3, v1, v4}, Lcom/kantv/ui/viewmodel/CommonViewModel;->play_delay(ZLcom/kantv/video/KTVideoPlayer;Lcom/kantv/ui/activity/VideoPlayActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 909
    :cond_0
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v1, v1, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v1, v1, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v1, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v1, v1, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v1, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    .line 910
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 911
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v1, v1, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget v1, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPosition:I

    add-int/2addr v1, v3

    iget-object v4, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v4, v4, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v4, v4, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 912
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v1, v1, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v1, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    iget-object v4, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v4, v4, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget v4, v4, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPosition:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {v1, v2}, Lcom/kantv/ui/bean/String8Bean;->setStr8(Ljava/lang/String;)V

    .line 913
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v1, v1, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v1, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    iget-object v2, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v2, v2, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget v2, v2, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPosition:I

    add-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/String8Bean;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/kantv/ui/bean/String8Bean;->setStr8(Ljava/lang/String;)V

    .line 914
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v2, v1, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v2, v2, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    iget-object v4, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v4, v4, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget v4, v4, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPosition:I

    add-int/2addr v4, v3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {v2}, Lcom/kantv/ui/bean/String8Bean;->getStr1()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/kantv/ui/activity/VideoPlayActivity;->mPartId:Ljava/lang/String;

    .line 915
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v1, v1, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v1, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    iget-object v2, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v2, v2, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget v2, v2, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPosition:I

    add-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {v1}, Lcom/kantv/ui/bean/String8Bean;->getStr2()Ljava/lang/String;

    move-result-object v1

    .line 916
    iget-object v2, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v2, v2, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v2, v2, Lcom/kantv/ui/fragment/VideoDetailFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz v2, :cond_1

    .line 917
    iget-object v2, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v2, v2, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v2, v2, Lcom/kantv/ui/fragment/VideoDetailFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {v2}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    .line 918
    :cond_1
    iget-object v2, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v2, v2, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v3, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v3, v3, Lcom/kantv/ui/activity/VideoPlayActivity;->mPartId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->requestSwitchVideo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const-string v1, "\u6700\u540e\u4e00\u96c6\u4e86\uff01"

    .line 921
    invoke-static {v1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 831
    :pswitch_4
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v1}, Lcom/kantv/common/utils/Utils;->isQQClientAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 832
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 833
    invoke-virtual {v1, v11, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 834
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v9}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$900(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v10, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    iget-object v3, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {v3, v6}, Lcom/kantv/ui/activity/VideoPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    iget-object v3, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v3, v3, Lcom/kantv/ui/activity/VideoPlayActivity;->uniShareUrl:Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 838
    iget-object v5, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const v6, 0x7f0f00c0

    invoke-virtual {v5, v6}, Lcom/kantv/ui/activity/VideoPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 840
    iget-object v3, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v3}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$1800(Lcom/kantv/ui/activity/VideoPlayActivity;)Lcom/tencent/tauth/Tencent;

    move-result-object v3

    iget-object v4, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    new-instance v5, Lcom/kantv/ui/activity/VideoPlayActivity$15$2;

    invoke-direct {v5, v0}, Lcom/kantv/ui/activity/VideoPlayActivity$15$2;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity$15;)V

    invoke-virtual {v3, v4, v1, v5}, Lcom/tencent/tauth/Tencent;->shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 856
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 857
    invoke-virtual {v1, v15, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "QQ\u7a7a\u95f4"

    .line 858
    invoke-virtual {v1, v14, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 861
    :cond_3
    invoke-static {v12}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 819
    :pswitch_5
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$1600(Lcom/kantv/ui/activity/VideoPlayActivity;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 820
    invoke-static {v13}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 823
    :cond_4
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$1700(Lcom/kantv/ui/activity/VideoPlayActivity;I)V

    .line 824
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 825
    invoke-virtual {v1, v15, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "\u5fae\u4fe1\u6536\u85cf"

    .line 826
    invoke-virtual {v1, v14, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 788
    :pswitch_6
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v1}, Lcom/kantv/common/utils/Utils;->isQQClientAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 789
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 790
    invoke-virtual {v1, v11, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 791
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v9}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$900(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v10, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    iget-object v3, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {v3, v6}, Lcom/kantv/ui/activity/VideoPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    iget-object v3, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v3, v3, Lcom/kantv/ui/activity/VideoPlayActivity;->uniShareUrl:Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    iget-object v3, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const v5, 0x7f0f00c0

    invoke-virtual {v3, v5}, Lcom/kantv/ui/activity/VideoPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    iget-object v3, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v3}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$1800(Lcom/kantv/ui/activity/VideoPlayActivity;)Lcom/tencent/tauth/Tencent;

    move-result-object v3

    iget-object v4, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    new-instance v5, Lcom/kantv/ui/activity/VideoPlayActivity$15$1;

    invoke-direct {v5, v0}, Lcom/kantv/ui/activity/VideoPlayActivity$15$1;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity$15;)V

    invoke-virtual {v3, v4, v1, v5}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 808
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 809
    invoke-virtual {v1, v15, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "QQ\u597d\u53cb"

    .line 810
    invoke-virtual {v1, v14, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 813
    :cond_5
    invoke-static {v12}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 776
    :pswitch_7
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$1600(Lcom/kantv/ui/activity/VideoPlayActivity;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 777
    invoke-static {v13}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 780
    :cond_6
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$1700(Lcom/kantv/ui/activity/VideoPlayActivity;I)V

    .line 781
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 782
    invoke-virtual {v1, v15, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "\u5fae\u4fe1\u597d\u53cb"

    .line 783
    invoke-virtual {v1, v14, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 764
    :pswitch_8
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$1600(Lcom/kantv/ui/activity/VideoPlayActivity;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v1

    if-nez v1, :cond_7

    .line 765
    invoke-static {v13}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 768
    :cond_7
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v1, v3}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$1700(Lcom/kantv/ui/activity/VideoPlayActivity;I)V

    .line 769
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 770
    invoke-virtual {v1, v15, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "\u5fae\u4fe1\u670b\u53cb\u5708"

    .line 771
    invoke-virtual {v1, v14, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 759
    :pswitch_9
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 760
    invoke-virtual {v1, v15, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 889
    :cond_8
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$1900(Lcom/kantv/ui/activity/VideoPlayActivity;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 891
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "line_num"

    invoke-static {v2, v5, v4}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2002(Lcom/kantv/ui/activity/VideoPlayActivity;I)I

    .line 892
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2100(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2100(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_c

    .line 893
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2000(Lcom/kantv/ui/activity/VideoPlayActivity;)I

    move-result v1

    iget-object v2, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2100(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 894
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2000(Lcom/kantv/ui/activity/VideoPlayActivity;)I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2200(Lcom/kantv/ui/activity/VideoPlayActivity;I)V

    goto :goto_1

    .line 896
    :cond_9
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v1, v3}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2200(Lcom/kantv/ui/activity/VideoPlayActivity;I)V

    goto :goto_1

    .line 865
    :cond_a
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v1, v1, Lcom/kantv/ui/activity/VideoPlayActivity;->currentUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 866
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/kantv/ui/activity/VideoPlayActivity$15$3;

    invoke-direct {v2, v0}, Lcom/kantv/ui/activity/VideoPlayActivity$15$3;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity$15;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 871
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 872
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 873
    iget-object v2, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v2, v2, Lcom/kantv/ui/activity/VideoPlayActivity;->currentUrl:Ljava/lang/String;

    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    iget-object v2, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v2, v2, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v2}, Lcom/kantv/video/KTVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result v2

    .line 877
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "full"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VideoPlayActivity"

    invoke-static {v4, v3}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_b

    .line 879
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const-class v4, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 881
    :cond_b
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const-class v4, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 884
    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 885
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const/16 v3, 0x3ed

    invoke-virtual {v1, v2, v3}, Lcom/kantv/ui/activity/VideoPlayActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_c
    :goto_1
    :pswitch_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_a
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
