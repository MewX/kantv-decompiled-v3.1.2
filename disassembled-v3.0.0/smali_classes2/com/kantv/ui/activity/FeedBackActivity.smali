.class public Lcom/kantv/ui/activity/FeedBackActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "FeedBackActivity.java"


# instance fields
.field public b:Landroid/os/Bundle;

.field mEdit:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090102
    .end annotation
.end field

.field mMail:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090117
    .end annotation
.end field

.field mType:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090103
    .end annotation
.end field

.field public partId:Ljava/lang/String;

.field titleLeftImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090375
    .end annotation
.end field

.field titleLeftLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090374
    .end annotation
.end field

.field titleRelateLayout:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900be
    .end annotation
.end field

.field titleRightImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090377
    .end annotation
.end field

.field titleRightLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090376
    .end annotation
.end field

.field titleRightTxt:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090395
    .end annotation
.end field

.field titleTV:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bf
    .end annotation
.end field

.field public tvId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/FeedBackActivity;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->isDestroy:Z

    return p0
.end method

.method private initDialog()V
    .locals 4

    .line 201
    new-instance v0, Lcom/kantv/ui/view/ActionSheetDialog;

    invoke-direct {v0, p0}, Lcom/kantv/ui/view/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 202
    invoke-virtual {v0}, Lcom/kantv/ui/view/ActionSheetDialog;->builder()Lcom/kantv/ui/view/ActionSheetDialog;

    const-string v1, "\u8bf7\u9009\u62e9\u53cd\u9988\u7c7b\u578b"

    .line 203
    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/ActionSheetDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/ActionSheetDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/ActionSheetDialog;->setCancelable(Z)Lcom/kantv/ui/view/ActionSheetDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/ActionSheetDialog;->setCanceledOnTouchOutside(Z)Lcom/kantv/ui/view/ActionSheetDialog;

    move-result-object v0

    sget-object v1, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->Blue:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    new-instance v2, Lcom/kantv/ui/activity/FeedBackActivity$6;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/FeedBackActivity$6;-><init>(Lcom/kantv/ui/activity/FeedBackActivity;)V

    const-string v3, "\u610f\u89c1\u53cd\u9988"

    invoke-virtual {v0, v3, v1, v2}, Lcom/kantv/ui/view/ActionSheetDialog;->addSheetItem(Ljava/lang/String;Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;)Lcom/kantv/ui/view/ActionSheetDialog;

    move-result-object v0

    sget-object v1, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->Blue:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    new-instance v2, Lcom/kantv/ui/activity/FeedBackActivity$5;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/FeedBackActivity$5;-><init>(Lcom/kantv/ui/activity/FeedBackActivity;)V

    const-string v3, "\u6c42\u7247"

    .line 210
    invoke-virtual {v0, v3, v1, v2}, Lcom/kantv/ui/view/ActionSheetDialog;->addSheetItem(Ljava/lang/String;Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;)Lcom/kantv/ui/view/ActionSheetDialog;

    move-result-object v0

    sget-object v1, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->Blue:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    new-instance v2, Lcom/kantv/ui/activity/FeedBackActivity$4;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/FeedBackActivity$4;-><init>(Lcom/kantv/ui/activity/FeedBackActivity;)V

    const-string v3, "\u5e73\u53f0\u5408\u4f5c"

    .line 215
    invoke-virtual {v0, v3, v1, v2}, Lcom/kantv/ui/view/ActionSheetDialog;->addSheetItem(Ljava/lang/String;Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;)Lcom/kantv/ui/view/ActionSheetDialog;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lcom/kantv/ui/view/ActionSheetDialog;->show()V

    return-void
.end method

.method private initRequest()V
    .locals 6

    .line 144
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->mType:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/kantv/ui/activity/FeedBackActivity;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 146
    iget-object v2, p0, Lcom/kantv/ui/activity/FeedBackActivity;->mMail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u60a8\u60f3\u8981\u53cd\u9988\u7684\u5185\u5bb9\uff01"

    .line 148
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 151
    :cond_0
    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "\u8bf7\u8f93\u5165\u90ae\u7bb1\u5730\u5740\u3002"

    .line 152
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 155
    :cond_1
    iget-object v3, p0, Lcom/kantv/ui/activity/FeedBackActivity;->request:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 156
    iget-object v3, p0, Lcom/kantv/ui/activity/FeedBackActivity;->request:Ljava/util/Map;

    sget-object v4, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v5, "noncestr"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v3, p0, Lcom/kantv/ui/activity/FeedBackActivity;->request:Ljava/util/Map;

    sget-object v4, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v5, "timestamp"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v3, p0, Lcom/kantv/ui/activity/FeedBackActivity;->request:Ljava/util/Map;

    sget-object v4, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v5, "sbID"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v3, p0, Lcom/kantv/ui/activity/FeedBackActivity;->request:Ljava/util/Map;

    sget-object v4, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v5, "sign"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v3, p0, Lcom/kantv/ui/activity/FeedBackActivity;->request:Ljava/util/Map;

    const-string v4, "content"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\u6c42\u7247"

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "type"

    if-eqz v1, :cond_2

    .line 162
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->request:Ljava/util/Map;

    const-string v1, "request"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v1, "\u5e73\u53f0\u5408\u4f5c"

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 164
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->request:Ljava/util/Map;

    const-string v1, "cooperate"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->request:Ljava/util/Map;

    const-string v1, "adviceapp"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->tvId:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 170
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->request:Ljava/util/Map;

    iget-object v1, p0, Lcom/kantv/ui/activity/FeedBackActivity;->tvId:Ljava/lang/String;

    const-string v4, "tvid"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->request:Ljava/util/Map;

    const-string v1, "advice"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_4
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->partId:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 174
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->request:Ljava/util/Map;

    iget-object v1, p0, Lcom/kantv/ui/activity/FeedBackActivity;->partId:Ljava/lang/String;

    const-string v3, "part_id"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_5
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->request:Ljava/util/Map;

    const-string v1, "email"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->request:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->request:Ljava/util/Map;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "os"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->request:Ljava/util/Map;

    invoke-static {p0}, Lcom/kantv/common/utils/Utils;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "app_ver"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/FeedBackActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->feedback(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/FeedBackActivity$3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/FeedBackActivity$3;-><init>(Lcom/kantv/ui/activity/FeedBackActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initTitle()V
    .locals 5

    .line 87
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0600a2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 88
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 89
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x40

    invoke-static {v3, v4}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->titleLeftImg:Landroid/widget/ImageView;

    const v1, 0x7f0801dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->titleTV:Landroid/widget/TextView;

    const-string v1, "\u6211\u8981\u53cd\u9988"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->titleTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/FeedBackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0600bd

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->titleTV:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 96
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->titleRightImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->titleRightTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->titleRightTxt:Landroid/widget/TextView;

    const-string v1, "\u63d0\u4ea4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->titleRightTxt:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 100
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->titleRightTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/FeedBackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    invoke-virtual {p0}, Lcom/kantv/ui/activity/FeedBackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/kantv/ui/activity/FeedBackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->b:Landroid/os/Bundle;

    .line 104
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->b:Landroid/os/Bundle;

    const-string v1, "tvid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->tvId:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->b:Landroid/os/Bundle;

    const-string v1, "part_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->partId:Ljava/lang/String;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->mEdit:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 109
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 110
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 111
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 112
    new-instance v1, Lcom/kantv/ui/activity/FeedBackActivity$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/FeedBackActivity$1;-><init>(Lcom/kantv/ui/activity/FeedBackActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 120
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity;->mEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/kantv/ui/activity/FeedBackActivity$2;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/FeedBackActivity$2;-><init>(Lcom/kantv/ui/activity/FeedBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090395,
            0x7f090104,
            0x7f090374
        }
    .end annotation

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090104

    if-eq p1, v0, :cond_2

    const v0, 0x7f090374

    if-eq p1, v0, :cond_1

    const v0, 0x7f090395

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/FeedBackActivity;->mEdit:Landroid/widget/EditText;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 228
    invoke-direct {p0}, Lcom/kantv/ui/activity/FeedBackActivity;->initRequest()V

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/kantv/ui/activity/FeedBackActivity;->finish()V

    goto :goto_0

    .line 232
    :cond_2
    invoke-direct {p0}, Lcom/kantv/ui/activity/FeedBackActivity;->initDialog()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001f

    .line 78
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/FeedBackActivity;->setContentView(I)V

    .line 79
    invoke-virtual {p0}, Lcom/kantv/ui/activity/FeedBackActivity;->initBase()V

    .line 80
    invoke-virtual {p0}, Lcom/kantv/ui/activity/FeedBackActivity;->initStatusBar()V

    .line 81
    invoke-direct {p0}, Lcom/kantv/ui/activity/FeedBackActivity;->initTitle()V

    .line 82
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "\u5f71\u89c6_\u6c42\u7247"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    return-void
.end method
