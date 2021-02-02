.class Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;
.super Ljava/lang/Object;
.source "VideoDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/VideoDetailFragment$15;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String8Bean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

.field final synthetic val$position:I

.field final synthetic val$string8Bean:Lcom/kantv/ui/bean/String8Bean;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoDetailFragment$15;Lcom/kantv/ui/bean/String8Bean;I)V
    .locals 0

    .line 1464
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    iput-object p2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->val$string8Bean:Lcom/kantv/ui/bean/String8Bean;

    iput p3, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 1467
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$2500(Lcom/kantv/ui/fragment/VideoDetailFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1470
    :cond_0
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/utils/NetWorkUtils;->isWifi(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1471
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "download_type_wifi"

    invoke-static {p1, v1, v0}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1473
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    const-string v0, "\u63d0\u793a"

    const-string v1, "\u68c0\u6d4b\u5230\u6b63\u5728\u4f7f\u7528\u79fb\u52a8\u7f51\u7edc\uff0c\u5df2\u4e3a\u60a8\u5173\u95ed\u4e0b\u8f7d"

    invoke-static {p1, v0, v1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$2600(Lcom/kantv/ui/fragment/VideoDetailFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    :cond_1
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$1700(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1478
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->val$string8Bean:Lcom/kantv/ui/bean/String8Bean;

    iget-object p1, p1, Lcom/kantv/ui/bean/String8Bean;->str9:Ljava/lang/String;

    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "\u8be5\u89c6\u9891\u5df2\u7f13\u5b58\u5b8c\u6bd5"

    .line 1479
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 1482
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->val$string8Bean:Lcom/kantv/ui/bean/String8Bean;

    iget-object p1, p1, Lcom/kantv/ui/bean/String8Bean;->str9:Ljava/lang/String;

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "url"

    const-string v2, "_id"

    const-string v3, "part"

    const-string v4, "    title  "

    const-string v5, "mPartinfo position"

    const-string v6, "VideoDetailFragment"

    const/4 v7, 0x0

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    .line 1483
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$1700(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 1484
    iget v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->val$position:I

    if-ne v0, p1, :cond_4

    .line 1485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->val$position:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    iget-object v4, v4, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v4}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$2700(Lcom/kantv/ui/fragment/VideoDetailFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$1700(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object p1

    .line 1487
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1488
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1489
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1490
    :goto_1
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v1, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_5

    .line 1491
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v1, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v1, v1, Lcom/kantv/ui/bean/EntityVideo;->id:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1492
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    iget-object v1, v1, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->val$position:I

    invoke-static {v1, p1, v0, v2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$2800(Lcom/kantv/ui/fragment/VideoDetailFragment;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void

    .line 1502
    :cond_6
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    iget v8, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->val$position:I

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/bean/String8Bean;

    iput-object v0, p1, Lcom/kantv/ui/bean/String8Bean;->str9:Ljava/lang/String;

    .line 1503
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mDownloadAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz p1, :cond_7

    .line 1504
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mDownloadAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {p1}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    .line 1505
    :cond_7
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->val$string8Bean:Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/String8Bean;->getStr3()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPart:Ljava/lang/String;

    .line 1506
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->val$string8Bean:Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {p1}, Lcom/kantv/ui/bean/String8Bean;->getStr1()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPartId:Ljava/lang/String;

    .line 1508
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPart"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   mPartId"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPartId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1, v7}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$1202(Lcom/kantv/ui/fragment/VideoDetailFragment;Z)Z

    .line 1511
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$2900(Lcom/kantv/ui/fragment/VideoDetailFragment;)V

    .line 1512
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$3000(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_9

    .line 1513
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$3000(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$3000(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-lez p1, :cond_8

    .line 1516
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$3108(Lcom/kantv/ui/fragment/VideoDetailFragment;)I

    .line 1517
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$3200(Lcom/kantv/ui/fragment/VideoDetailFragment;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    iget-object v9, v9, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v9}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$3100(Lcom/kantv/ui/fragment/VideoDetailFragment;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1519
    :cond_8
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$3108(Lcom/kantv/ui/fragment/VideoDetailFragment;)I

    .line 1520
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$3200(Lcom/kantv/ui/fragment/VideoDetailFragment;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    iget-object v9, v9, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v9}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$3100(Lcom/kantv/ui/fragment/VideoDetailFragment;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1523
    :cond_9
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$3108(Lcom/kantv/ui/fragment/VideoDetailFragment;)I

    .line 1524
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$3200(Lcom/kantv/ui/fragment/VideoDetailFragment;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    iget-object v9, v9, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v9}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$3100(Lcom/kantv/ui/fragment/VideoDetailFragment;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1526
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPartinfo   position    "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->val$position:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "        "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$1700(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    :goto_4
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$1700(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-ge v7, p1, :cond_b

    .line 1529
    iget p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->val$position:I

    if-ne p1, v7, :cond_a

    .line 1530
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->val$position:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$2700(Lcom/kantv/ui/fragment/VideoDetailFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$1700(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1, v7}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object p1

    .line 1532
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1533
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1534
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1535
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1, v2, v0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$3300(Lcom/kantv/ui/fragment/VideoDetailFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_b
    :goto_5
    return-void
.end method
