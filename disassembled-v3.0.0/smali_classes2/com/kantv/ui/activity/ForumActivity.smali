.class public Lcom/kantv/ui/activity/ForumActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "ForumActivity.java"


# instance fields
.field mEdit:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090116
    .end annotation
.end field

.field mMail:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090117
    .end annotation
.end field

.field mType:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09011a
    .end annotation
.end field

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

.field titleRightLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090376
    .end annotation
.end field

.field titleTV:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bf
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/ForumActivity;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/kantv/ui/activity/ForumActivity;->isDestroy:Z

    return p0
.end method

.method private initDialog()V
    .locals 4

    .line 124
    new-instance v0, Lcom/kantv/ui/view/ActionSheetDialog;

    invoke-direct {v0, p0}, Lcom/kantv/ui/view/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-virtual {v0}, Lcom/kantv/ui/view/ActionSheetDialog;->builder()Lcom/kantv/ui/view/ActionSheetDialog;

    const-string v1, "\u8bf7\u9009\u62e9\u8d44\u6e90\u7c7b\u522b"

    .line 126
    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/ActionSheetDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/ActionSheetDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/ActionSheetDialog;->setCancelable(Z)Lcom/kantv/ui/view/ActionSheetDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/ActionSheetDialog;->setCanceledOnTouchOutside(Z)Lcom/kantv/ui/view/ActionSheetDialog;

    move-result-object v0

    sget-object v1, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->Blue:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    new-instance v2, Lcom/kantv/ui/activity/ForumActivity$6;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/ForumActivity$6;-><init>(Lcom/kantv/ui/activity/ForumActivity;)V

    const-string v3, "\u7535\u89c6\u5267"

    invoke-virtual {v0, v3, v1, v2}, Lcom/kantv/ui/view/ActionSheetDialog;->addSheetItem(Ljava/lang/String;Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;)Lcom/kantv/ui/view/ActionSheetDialog;

    move-result-object v0

    sget-object v1, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->Blue:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    new-instance v2, Lcom/kantv/ui/activity/ForumActivity$5;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/ForumActivity$5;-><init>(Lcom/kantv/ui/activity/ForumActivity;)V

    const-string v3, "\u7535\u5f71"

    .line 133
    invoke-virtual {v0, v3, v1, v2}, Lcom/kantv/ui/view/ActionSheetDialog;->addSheetItem(Ljava/lang/String;Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;)Lcom/kantv/ui/view/ActionSheetDialog;

    move-result-object v0

    sget-object v1, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->Blue:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    new-instance v2, Lcom/kantv/ui/activity/ForumActivity$4;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/ForumActivity$4;-><init>(Lcom/kantv/ui/activity/ForumActivity;)V

    const-string v3, "\u52a8\u6f2b"

    .line 138
    invoke-virtual {v0, v3, v1, v2}, Lcom/kantv/ui/view/ActionSheetDialog;->addSheetItem(Ljava/lang/String;Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;)Lcom/kantv/ui/view/ActionSheetDialog;

    move-result-object v0

    sget-object v1, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->Blue:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    new-instance v2, Lcom/kantv/ui/activity/ForumActivity$3;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/ForumActivity$3;-><init>(Lcom/kantv/ui/activity/ForumActivity;)V

    const-string v3, "\u7efc\u827a"

    .line 143
    invoke-virtual {v0, v3, v1, v2}, Lcom/kantv/ui/view/ActionSheetDialog;->addSheetItem(Ljava/lang/String;Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;)Lcom/kantv/ui/view/ActionSheetDialog;

    move-result-object v0

    sget-object v1, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->Blue:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    new-instance v2, Lcom/kantv/ui/activity/ForumActivity$2;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/ForumActivity$2;-><init>(Lcom/kantv/ui/activity/ForumActivity;)V

    const-string v3, "\u7eaa\u5f55\u7247"

    .line 148
    invoke-virtual {v0, v3, v1, v2}, Lcom/kantv/ui/view/ActionSheetDialog;->addSheetItem(Ljava/lang/String;Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;)Lcom/kantv/ui/view/ActionSheetDialog;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/kantv/ui/view/ActionSheetDialog;->show()V

    return-void
.end method

.method private initRequest()V
    .locals 6

    .line 84
    iget-object v0, p0, Lcom/kantv/ui/activity/ForumActivity;->mType:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/kantv/ui/activity/ForumActivity;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 86
    iget-object v2, p0, Lcom/kantv/ui/activity/ForumActivity;->mMail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u60a8\u60f3\u8981\u7684\u8d44\u6e90\u540d\u79f0\uff01"

    .line 88
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 91
    :cond_0
    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "\u8bf7\u8f93\u5165\u90ae\u7bb1\u5730\u5740\u3002"

    .line 92
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 95
    :cond_1
    iget-object v3, p0, Lcom/kantv/ui/activity/ForumActivity;->request:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 96
    iget-object v3, p0, Lcom/kantv/ui/activity/ForumActivity;->request:Ljava/util/Map;

    sget-object v4, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v5, "noncestr"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v3, p0, Lcom/kantv/ui/activity/ForumActivity;->request:Ljava/util/Map;

    sget-object v4, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v5, "timestamp"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v3, p0, Lcom/kantv/ui/activity/ForumActivity;->request:Ljava/util/Map;

    sget-object v4, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v5, "sbID"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v3, p0, Lcom/kantv/ui/activity/ForumActivity;->request:Ljava/util/Map;

    sget-object v4, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v5, "sign"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v3, p0, Lcom/kantv/ui/activity/ForumActivity;->request:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6c42"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@\uff1a"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/kantv/ui/activity/ForumActivity;->request:Ljava/util/Map;

    const-string v1, "type"

    const-string v3, "request"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/kantv/ui/activity/ForumActivity;->request:Ljava/util/Map;

    const-string v1, "email"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/kantv/ui/activity/ForumActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/kantv/ui/activity/ForumActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/ForumActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->feedback(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/ForumActivity$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/ForumActivity$1;-><init>(Lcom/kantv/ui/activity/ForumActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initTitle()V
    .locals 5

    .line 70
    iget-object v0, p0, Lcom/kantv/ui/activity/ForumActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0600a2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 71
    iget-object v0, p0, Lcom/kantv/ui/activity/ForumActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 72
    iget-object v0, p0, Lcom/kantv/ui/activity/ForumActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x40

    invoke-static {v3, v4}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object v0, p0, Lcom/kantv/ui/activity/ForumActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/kantv/ui/activity/ForumActivity;->titleLeftImg:Landroid/widget/ImageView;

    const v1, 0x7f0801dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    iget-object v0, p0, Lcom/kantv/ui/activity/ForumActivity;->titleTV:Landroid/widget/TextView;

    const-string v1, "\u6c42\u7247"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/kantv/ui/activity/ForumActivity;->titleTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/ForumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    iget-object v0, p0, Lcom/kantv/ui/activity/ForumActivity;->titleTV:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 79
    iget-object v0, p0, Lcom/kantv/ui/activity/ForumActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090118,
            0x7f090119,
            0x7f090374
        }
    .end annotation

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 166
    :sswitch_0
    invoke-virtual {p0}, Lcom/kantv/ui/activity/ForumActivity;->finish()V

    goto :goto_0

    .line 163
    :sswitch_1
    invoke-direct {p0}, Lcom/kantv/ui/activity/ForumActivity;->initDialog()V

    goto :goto_0

    .line 160
    :sswitch_2
    invoke-direct {p0}, Lcom/kantv/ui/activity/ForumActivity;->initRequest()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090118 -> :sswitch_2
        0x7f090119 -> :sswitch_1
        0x7f090374 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0021

    .line 61
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/ForumActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/kantv/ui/activity/ForumActivity;->initBase()V

    .line 63
    invoke-virtual {p0}, Lcom/kantv/ui/activity/ForumActivity;->initStatusBar()V

    .line 64
    invoke-direct {p0}, Lcom/kantv/ui/activity/ForumActivity;->initTitle()V

    .line 65
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "\u5f71\u89c6_\u6c42\u7247"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    return-void
.end method
