.class Lcom/kantv/ui/activity/DownloadingActivity$1;
.super Lcom/kantv/ui/adapter/CommonAdapter;
.source "DownloadingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/DownloadingActivity;->initAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kantv/ui/adapter/CommonAdapter<",
        "Lcom/kantv/ui/bean/EntityVideo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/DownloadingActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/DownloadingActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity$1;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/kantv/ui/adapter/CommonAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/EntityVideo;I)V
    .locals 10

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "string8Bean"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  setProgressText(string8Bean)  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kantv/ui/activity/DownloadingActivity$1;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-static {v1, p2}, Lcom/kantv/ui/activity/DownloadingActivity;->access$000(Lcom/kantv/ui/activity/DownloadingActivity;Lcom/kantv/ui/bean/EntityVideo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "     "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/kantv/ui/bean/EntityVideo;->progress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadingActivity"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget v0, p2, Lcom/kantv/ui/bean/EntityVideo;->progress:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initAdapterprogress"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/kantv/ui/bean/EntityVideo;->part:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f090168

    .line 143
    invoke-virtual {p1, v2}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 144
    iget-boolean v3, p2, Lcom/kantv/ui/bean/EntityVideo;->isNOtShow:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 145
    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    .line 147
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 150
    :goto_0
    iget-boolean v3, p2, Lcom/kantv/ui/bean/EntityVideo;->isNotCheck:Z

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 151
    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 153
    :cond_1
    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    if-ltz v0, :cond_2

    const/16 v2, 0x64

    if-gt v0, v2, :cond_2

    const v2, 0x7f0902a5

    .line 158
    invoke-virtual {p1, v2, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setProgress(II)Lcom/kantv/ui/adapter/ViewHolder;

    :cond_2
    const v0, 0x7f09016c

    .line 161
    iget-object v2, p2, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 162
    iget-object v0, p2, Lcom/kantv/ui/bean/EntityVideo;->photo:Ljava/lang/String;

    const v2, 0x7f0903b2

    invoke-virtual {p1, v2}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/kantv/ui/utils/GlideUtils;->loadimage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 164
    iget-wide v2, p2, Lcom/kantv/ui/bean/EntityVideo;->size:J

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-lez v0, :cond_3

    const v0, 0x7f0903ad

    .line 165
    invoke-virtual {p1, v0, v5}, Lcom/kantv/ui/adapter/ViewHolder;->setVisible(IZ)Lcom/kantv/ui/adapter/ViewHolder;

    .line 166
    iget-object v2, p0, Lcom/kantv/ui/activity/DownloadingActivity$1;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    iget-wide v6, p2, Lcom/kantv/ui/bean/EntityVideo;->size:J

    const-wide/16 v8, 0x400

    mul-long v6, v6, v8

    mul-long v6, v6, v8

    invoke-virtual {v2, v6, v7}, Lcom/kantv/ui/activity/DownloadingActivity;->formetFileUnit(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity$1;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-static {v0, p2}, Lcom/kantv/ui/activity/DownloadingActivity;->access$000(Lcom/kantv/ui/activity/DownloadingActivity;Lcom/kantv/ui/bean/EntityVideo;)Ljava/lang/String;

    move-result-object v0

    .line 169
    iget v2, p2, Lcom/kantv/ui/bean/EntityVideo;->state:I

    const/4 v3, 0x2

    const v6, 0x7f09016a

    const v7, 0x7f090294

    if-ne v2, v3, :cond_4

    const-string v2, "\u4e0b\u8f7d\u4e2d"

    .line 170
    invoke-static {v1, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "-"

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 173
    aget-object v1, v0, v4

    invoke-virtual {p1, v6, v1}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 175
    array-length v1, v0

    if-le v1, v5, :cond_c

    .line 176
    aget-object v0, v0, v5

    invoke-virtual {p1, v7, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    goto/16 :goto_2

    .line 179
    :cond_4
    iget v0, p2, Lcom/kantv/ui/bean/EntityVideo;->state:I

    const/4 v2, -0x1

    const-string v3, "\u51c6\u5907\u7f13\u5b58"

    const-string v4, ""

    if-ne v0, v2, :cond_5

    const-string v0, "\u52a0\u5165\u961f\u5217\u7b49\u5f85\u4e0b\u8f7d"

    .line 180
    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1, v7, v4}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 182
    invoke-virtual {p1, v6, v3}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    goto :goto_2

    .line 184
    :cond_5
    iget v0, p2, Lcom/kantv/ui/bean/EntityVideo;->state:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    const-string v0, "\u4e0b\u8f7d\u5b8c\u6210"

    .line 185
    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1, v7, v4}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 187
    invoke-virtual {p1, v6, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    goto :goto_2

    .line 189
    :cond_6
    iget v0, p2, Lcom/kantv/ui/bean/EntityVideo;->state:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_7

    .line 190
    invoke-virtual {p1, v7, v4}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    const-string v0, "\u4e0b\u8f7d\u51fa\u9519\u4e86"

    .line 191
    invoke-virtual {p1, v6, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    goto :goto_2

    .line 212
    :cond_7
    iget v0, p2, Lcom/kantv/ui/bean/EntityVideo;->state:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_8

    .line 213
    invoke-virtual {p1, v7, v4}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    const-string v0, "\u7a7a\u95f4\u4e0d\u8db3"

    .line 214
    invoke-virtual {p1, v6, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    goto :goto_2

    .line 216
    :cond_8
    iget v0, p2, Lcom/kantv/ui/bean/EntityVideo;->state:I

    if-ne v0, v5, :cond_9

    .line 217
    invoke-virtual {p1, v7, v4}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 218
    invoke-virtual {p1, v6, v3}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    goto :goto_2

    .line 220
    :cond_9
    iget v0, p2, Lcom/kantv/ui/bean/EntityVideo;->state:I

    const/4 v2, 0x5

    const-string v3, "\u6682\u505c"

    if-ne v0, v2, :cond_a

    .line 221
    invoke-virtual {p1, v7, v4}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 222
    invoke-virtual {p1, v6, v3}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    goto :goto_2

    .line 224
    :cond_a
    iget v0, p2, Lcom/kantv/ui/bean/EntityVideo;->state:I

    if-nez v0, :cond_b

    .line 225
    invoke-virtual {p1, v7, v4}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 226
    invoke-virtual {p1, v6, v3}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    goto :goto_2

    :cond_b
    const-string v0, "\u6682\u505c\u4e2d"

    .line 229
    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p1, v7, v4}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    const-string v0, "\u5176\u4ed6\u60c5\u51b5"

    .line 231
    invoke-virtual {p1, v6, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    :cond_c
    :goto_2
    const v0, 0x7f0901b9

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(\u7b2c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/kantv/ui/bean/EntityVideo;->part:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u96c6\uff09"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    const v0, 0x7f09016b

    .line 237
    new-instance v1, Lcom/kantv/ui/activity/DownloadingActivity$1$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/kantv/ui/activity/DownloadingActivity$1$1;-><init>(Lcom/kantv/ui/activity/DownloadingActivity$1;Lcom/kantv/ui/bean/EntityVideo;I)V

    invoke-virtual {p1, v0, v1}, Lcom/kantv/ui/adapter/ViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/kantv/ui/adapter/ViewHolder;

    return-void
.end method

.method protected bridge synthetic convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 135
    check-cast p2, Lcom/kantv/ui/bean/EntityVideo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kantv/ui/activity/DownloadingActivity$1;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/EntityVideo;I)V

    return-void
.end method
