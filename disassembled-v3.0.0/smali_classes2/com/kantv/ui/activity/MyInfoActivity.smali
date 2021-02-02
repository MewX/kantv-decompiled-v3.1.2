.class public Lcom/kantv/ui/activity/MyInfoActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "MyInfoActivity.java"


# static fields
.field private static final REQUEST_EDIT_ABOUT:I = 0x32

.field private static final REQUEST_EDIT_NICK_NAME:I = 0x28

.field private static clickFlag:Ljava/lang/String; = ""


# instance fields
.field private final REQUEST_CODE_ALBUM:I

.field private final REQUEST_CODE_CROUP_PHOTO:I

.field private final REQUEST_CODE_TAKE_PHOTO:I

.field private TAG:Ljava/lang/String;

.field aboutTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09000a
    .end annotation
.end field

.field areaTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090055
    .end annotation
.end field

.field private base64:Ljava/lang/String;

.field private bgBase64:Ljava/lang/String;

.field bgImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090067
    .end annotation
.end field

.field birthTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090077
    .end annotation
.end field

.field city:Ljava/lang/String;

.field cn:Ljava/lang/String;

.field private countryFlag:Ljava/lang/String;

.field private file:Ljava/io/File;

.field headTip:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09013d
    .end annotation
.end field

.field homeTip:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090146
    .end annotation
.end field

.field homeTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090147
    .end annotation
.end field

.field private isChange:Z

.field private mAddress:Lcom/kantv/ui/bean/AddressBean;

.field mAvatar:Lcom/kantv/ui/view/CircleImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09005b
    .end annotation
.end field

.field private mCurrentArea:Ljava/lang/String;

.field private mHomeTown:Lorg/json/JSONObject;

.field mTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bf
    .end annotation
.end field

.field private mUritempFile:Landroid/net/Uri;

.field nichengTip:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090279
    .end annotation
.end field

.field nickNameTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09027a
    .end annotation
.end field

.field options1Items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/CountryBean;",
            ">;"
        }
    .end annotation
.end field

.field options2Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field options3Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field province:Ljava/lang/String;

.field private pvOptions:Lcom/bigkoo/pickerview/view/OptionsPickerView;

.field private sexFlag:Ljava/lang/String;

.field sexInfoLayout:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090161
    .end annotation
.end field

.field sexTip:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090324
    .end annotation
.end field

.field sexTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090325
    .end annotation
.end field

.field shengriTip:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09032c
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

.field titleRightTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090395
    .end annotation
.end field

.field private uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 91
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    const/4 v0, 0x1

    .line 127
    iput v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->REQUEST_CODE_TAKE_PHOTO:I

    const/4 v0, 0x2

    .line 128
    iput v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->REQUEST_CODE_ALBUM:I

    const/4 v0, 0x3

    .line 129
    iput v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->REQUEST_CODE_CROUP_PHOTO:I

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->base64:Ljava/lang/String;

    .line 148
    iput-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->bgBase64:Ljava/lang/String;

    .line 149
    iput-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->sexFlag:Ljava/lang/String;

    .line 150
    iput-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->countryFlag:Ljava/lang/String;

    const/4 v1, 0x0

    .line 154
    iput-boolean v1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->isChange:Z

    .line 155
    iput-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->pvOptions:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    .line 158
    const-class v1, Lcom/kantv/ui/activity/MyInfoActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->TAG:Ljava/lang/String;

    .line 406
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->options1Items:Ljava/util/List;

    .line 407
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->options2Items:Ljava/util/ArrayList;

    .line 408
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->options3Items:Ljava/util/ArrayList;

    const-string v1, ""

    .line 410
    iput-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->cn:Ljava/lang/String;

    .line 411
    iput-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->province:Ljava/lang/String;

    .line 412
    iput-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->city:Ljava/lang/String;

    .line 416
    iput-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->mAddress:Lcom/kantv/ui/bean/AddressBean;

    return-void
.end method

.method static synthetic access$002(Lcom/kantv/ui/activity/MyInfoActivity;Z)Z
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->isChange:Z

    return p1
.end method

.method static synthetic access$100(Lcom/kantv/ui/activity/MyInfoActivity;Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/MyInfoActivity;->parseAreaJson(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/kantv/ui/activity/MyInfoActivity;)Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->bgBase64:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/kantv/ui/activity/MyInfoActivity;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/kantv/ui/activity/MyInfoActivity;->initSexDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/kantv/ui/activity/MyInfoActivity;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/kantv/ui/activity/MyInfoActivity;->showDatePickerDialog()V

    return-void
.end method

.method static synthetic access$1300(Lcom/kantv/ui/activity/MyInfoActivity;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/kantv/ui/activity/MyInfoActivity;->showHomePickerDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/kantv/ui/activity/MyInfoActivity;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/kantv/ui/activity/MyInfoActivity;->saveInfo()V

    return-void
.end method

.method static synthetic access$200(Lcom/kantv/ui/activity/MyInfoActivity;)Lorg/json/JSONObject;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->mHomeTown:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$202(Lcom/kantv/ui/activity/MyInfoActivity;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->mHomeTown:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic access$300(Lcom/kantv/ui/activity/MyInfoActivity;)Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->mCurrentArea:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/kantv/ui/activity/MyInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->mCurrentArea:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/kantv/ui/activity/MyInfoActivity;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/kantv/ui/activity/MyInfoActivity;->xuanqu()V

    return-void
.end method

.method static synthetic access$500(Lcom/kantv/ui/activity/MyInfoActivity;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/kantv/ui/activity/MyInfoActivity;->paizhao()V

    return-void
.end method

.method static synthetic access$602(Lcom/kantv/ui/activity/MyInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->sexFlag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/kantv/ui/activity/MyInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->countryFlag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/kantv/ui/activity/MyInfoActivity;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$900(Lcom/kantv/ui/activity/MyInfoActivity;)Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->base64:Ljava/lang/String;

    return-object p0
.end method

.method private initAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 910
    new-instance v0, Lcom/kantv/ui/view/AlertDialog;

    invoke-direct {v0, p0}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 911
    invoke-virtual {v0}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kantv/ui/view/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/MyInfoActivity$13;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/MyInfoActivity$13;-><init>(Lcom/kantv/ui/activity/MyInfoActivity;)V

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/MyInfoActivity$12;

    invoke-direct {p2, p0, p3}, Lcom/kantv/ui/activity/MyInfoActivity$12;-><init>(Lcom/kantv/ui/activity/MyInfoActivity;Ljava/lang/String;)V

    const-string p3, "\u4fee\u6539"

    .line 916
    invoke-virtual {p1, p3, p2}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    .line 927
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method

.method private initAreaDialog()V
    .locals 4

    .line 599
    new-instance v0, Lcom/kantv/ui/view/ActionSheetDialog;

    invoke-direct {v0, p0}, Lcom/kantv/ui/view/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 600
    invoke-virtual {v0}, Lcom/kantv/ui/view/ActionSheetDialog;->builder()Lcom/kantv/ui/view/ActionSheetDialog;

    const-string v1, "\u8bf7\u9009\u62e9\u5730\u533a"

    .line 601
    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/ActionSheetDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/ActionSheetDialog;

    move-result-object v0

    sget-object v1, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->Blue:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    new-instance v2, Lcom/kantv/ui/activity/MyInfoActivity$10;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/MyInfoActivity$10;-><init>(Lcom/kantv/ui/activity/MyInfoActivity;)V

    const-string v3, "\u6fb3\u6d32"

    invoke-virtual {v0, v3, v1, v2}, Lcom/kantv/ui/view/ActionSheetDialog;->addSheetItem(Ljava/lang/String;Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;)Lcom/kantv/ui/view/ActionSheetDialog;

    move-result-object v0

    sget-object v1, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->Blue:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    new-instance v2, Lcom/kantv/ui/activity/MyInfoActivity$9;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/MyInfoActivity$9;-><init>(Lcom/kantv/ui/activity/MyInfoActivity;)V

    const-string v3, "\u65b0\u897f\u5170"

    .line 610
    invoke-virtual {v0, v3, v1, v2}, Lcom/kantv/ui/view/ActionSheetDialog;->addSheetItem(Ljava/lang/String;Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;)Lcom/kantv/ui/view/ActionSheetDialog;

    move-result-object v0

    sget-object v1, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->Blue:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    new-instance v2, Lcom/kantv/ui/activity/MyInfoActivity$8;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/MyInfoActivity$8;-><init>(Lcom/kantv/ui/activity/MyInfoActivity;)V

    const-string v3, "\u52a0\u62ff\u5927"

    .line 620
    invoke-virtual {v0, v3, v1, v2}, Lcom/kantv/ui/view/ActionSheetDialog;->addSheetItem(Ljava/lang/String;Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;)Lcom/kantv/ui/view/ActionSheetDialog;

    move-result-object v0

    .line 629
    invoke-virtual {v0}, Lcom/kantv/ui/view/ActionSheetDialog;->show()V

    return-void
.end method

.method private initAvatarDialog()V
    .locals 4

    .line 549
    new-instance v0, Lcom/kantv/ui/view/ActionSheetDialog;

    invoke-direct {v0, p0}, Lcom/kantv/ui/view/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 550
    invoke-virtual {v0}, Lcom/kantv/ui/view/ActionSheetDialog;->builder()Lcom/kantv/ui/view/ActionSheetDialog;

    const-string v1, "\u8bf7\u9009\u62e9\u62cd\u7167\u65b9\u5f0f"

    .line 551
    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/ActionSheetDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/ActionSheetDialog;

    move-result-object v0

    sget-object v1, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->Blue:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    new-instance v2, Lcom/kantv/ui/activity/MyInfoActivity$5;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/MyInfoActivity$5;-><init>(Lcom/kantv/ui/activity/MyInfoActivity;)V

    const-string v3, "\u624b\u673a\u62cd\u7167"

    invoke-virtual {v0, v3, v1, v2}, Lcom/kantv/ui/view/ActionSheetDialog;->addSheetItem(Ljava/lang/String;Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;)Lcom/kantv/ui/view/ActionSheetDialog;

    move-result-object v0

    sget-object v1, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->Blue:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    new-instance v2, Lcom/kantv/ui/activity/MyInfoActivity$4;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/MyInfoActivity$4;-><init>(Lcom/kantv/ui/activity/MyInfoActivity;)V

    const-string v3, "\u76f8\u518c\u9009\u53d6"

    .line 560
    invoke-virtual {v0, v3, v1, v2}, Lcom/kantv/ui/view/ActionSheetDialog;->addSheetItem(Ljava/lang/String;Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;)Lcom/kantv/ui/view/ActionSheetDialog;

    move-result-object v0

    .line 566
    invoke-virtual {v0}, Lcom/kantv/ui/view/ActionSheetDialog;->show()V

    return-void
.end method

.method private initRedTip()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->headTip:Landroid/widget/TextView;

    const-string v1, "\u5934\u50cf <font color=\'#ff0000\'>*</font>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->nichengTip:Landroid/widget/TextView;

    const-string v1, "\u6635\u79f0 <font color=\'#ff0000\'>*</font>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->shengriTip:Landroid/widget/TextView;

    const-string v1, "\u751f\u65e5 <font color=\'#ff0000\'>*</font>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->sexTip:Landroid/widget/TextView;

    const-string v1, "\u6027\u522b <font color=\'#ff0000\'>*</font>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->homeTip:Landroid/widget/TextView;

    const-string v1, "\u5bb6\u4e61 <font color=\'#ff0000\'>*</font>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initSexDialog()V
    .locals 4

    .line 571
    new-instance v0, Lcom/kantv/ui/view/ActionSheetDialog;

    invoke-direct {v0, p0}, Lcom/kantv/ui/view/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 572
    invoke-virtual {v0}, Lcom/kantv/ui/view/ActionSheetDialog;->builder()Lcom/kantv/ui/view/ActionSheetDialog;

    const-string v1, "\u8bf7\u9009\u62e9\u6027\u522b"

    .line 573
    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/ActionSheetDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/ActionSheetDialog;

    move-result-object v0

    sget-object v1, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->Blue:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    new-instance v2, Lcom/kantv/ui/activity/MyInfoActivity$7;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/MyInfoActivity$7;-><init>(Lcom/kantv/ui/activity/MyInfoActivity;)V

    const-string v3, "\u7537"

    invoke-virtual {v0, v3, v1, v2}, Lcom/kantv/ui/view/ActionSheetDialog;->addSheetItem(Ljava/lang/String;Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;)Lcom/kantv/ui/view/ActionSheetDialog;

    move-result-object v0

    sget-object v1, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->Blue:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    new-instance v2, Lcom/kantv/ui/activity/MyInfoActivity$6;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/MyInfoActivity$6;-><init>(Lcom/kantv/ui/activity/MyInfoActivity;)V

    const-string v3, "\u5973"

    .line 584
    invoke-virtual {v0, v3, v1, v2}, Lcom/kantv/ui/view/ActionSheetDialog;->addSheetItem(Ljava/lang/String;Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;)Lcom/kantv/ui/view/ActionSheetDialog;

    move-result-object v0

    .line 594
    invoke-virtual {v0}, Lcom/kantv/ui/view/ActionSheetDialog;->show()V

    return-void
.end method

.method private initView()V
    .locals 6

    .line 189
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0600a2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 190
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 191
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x40

    invoke-static {v3, v4}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->titleLeftImg:Landroid/widget/ImageView;

    const v1, 0x7f0801dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->mTitle:Landroid/widget/TextView;

    const-string v1, "\u6211\u7684\u8d44\u6599"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->mTitle:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 197
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/MyInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0600bd

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->titleRightImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->titleRightTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->titleRightTv:Landroid/widget/TextView;

    const-string v1, "\u66f4\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->titleRightTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/MyInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->nickNameTv:Landroid/widget/TextView;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "name"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->birthTv:Landroid/widget/TextView;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "birthday"

    invoke-static {v1, v4, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->areaTv:Landroid/widget/TextView;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "area"

    invoke-static {v1, v4, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->aboutTv:Landroid/widget/TextView;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "aboutme"

    invoke-static {v1, v4, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sex"

    invoke-static {v0, v1, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 208
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "1"

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->sexTv:Landroid/widget/TextView;

    const-string v5, "\u7537"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v1, "2"

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    iget-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->sexTv:Landroid/widget/TextView;

    const-string v5, "\u5973"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->sexFlag:Ljava/lang/String;

    .line 217
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/kantv/ui/photo/FileUtil;->getCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "user-avatar.jpg"

    invoke-direct {v0, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->file:Ljava/io/File;

    .line 218
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_3

    .line 219
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->file:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->uri:Landroid/net/Uri;

    goto :goto_1

    .line 222
    :cond_3
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->file:Ljava/io/File;

    const-string v1, "com.kantv.ui"

    invoke-static {p0, v1, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->uri:Landroid/net/Uri;

    .line 224
    :goto_1
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Photo"

    invoke-static {v0, v1, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 225
    iget-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->mAvatar:Lcom/kantv/ui/view/CircleImageView;

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/GlideUtils;->loadimageRoundness(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 226
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "background"

    invoke-static {v0, v1, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 227
    iget-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->bgImg:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/GlideUtils;->loadimage2(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 229
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 230
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->nickNameTv:Landroid/widget/TextView;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :cond_4
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 233
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->aboutTv:Landroid/widget/TextView;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    :cond_5
    :try_start_0
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "contry"

    invoke-static {v0, v1, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 243
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "province"

    invoke-static {v1, v2, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 244
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "city"

    invoke-static {v2, v4, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 246
    invoke-static {v0, v1, v2}, Lcom/kantv/ui/bean/AddressBean;->getArea(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->mCurrentArea:Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->homeTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->mCurrentArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private paizhao()V
    .locals 4

    .line 634
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 635
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "orientation"

    const/4 v3, 0x0

    .line 636
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 637
    iget-object v2, p0, Lcom/kantv/ui/activity/MyInfoActivity;->uri:Landroid/net/Uri;

    const-string v3, "output"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 638
    invoke-virtual {p0, v0, v1}, Lcom/kantv/ui/activity/MyInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private parseAreaJson(Ljava/lang/String;)V
    .locals 9

    .line 420
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 422
    iget-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->options1Items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 423
    iget-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->options2Items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 424
    iget-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->options3Items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 427
    const-class v1, Lcom/kantv/ui/bean/AddressBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/bean/AddressBean;

    iput-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->mAddress:Lcom/kantv/ui/bean/AddressBean;

    .line 437
    iget-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->mAddress:Lcom/kantv/ui/bean/AddressBean;

    invoke-virtual {p1}, Lcom/kantv/ui/bean/AddressBean;->getCountry()Ljava/util/List;

    move-result-object p1

    .line 445
    iput-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->options1Items:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 447
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 448
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 449
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 451
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kantv/ui/bean/CountryBean;

    invoke-virtual {v4}, Lcom/kantv/ui/bean/CountryBean;->getChildren()Ljava/util/List;

    move-result-object v4

    const-string v5, ""

    if-nez v4, :cond_0

    .line 452
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 453
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_0
    const/4 v4, 0x0

    .line 457
    :goto_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kantv/ui/bean/CountryBean;

    invoke-virtual {v6}, Lcom/kantv/ui/bean/CountryBean;->getChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 458
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kantv/ui/bean/CountryBean;

    invoke-virtual {v6}, Lcom/kantv/ui/bean/CountryBean;->getChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kantv/ui/bean/Province;

    invoke-virtual {v6}, Lcom/kantv/ui/bean/Province;->getName()Ljava/lang/String;

    move-result-object v6

    .line 459
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 463
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kantv/ui/bean/CountryBean;

    invoke-virtual {v7}, Lcom/kantv/ui/bean/CountryBean;->getChildren()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kantv/ui/bean/Province;

    invoke-virtual {v7}, Lcom/kantv/ui/bean/Province;->getChildren()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 464
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kantv/ui/bean/CountryBean;

    invoke-virtual {v7}, Lcom/kantv/ui/bean/CountryBean;->getChildren()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kantv/ui/bean/Province;

    invoke-virtual {v7}, Lcom/kantv/ui/bean/Province;->getChildren()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    goto :goto_3

    .line 468
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kantv/ui/bean/CountryBean;

    invoke-virtual {v7}, Lcom/kantv/ui/bean/CountryBean;->getChildren()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kantv/ui/bean/Province;

    invoke-virtual {v7}, Lcom/kantv/ui/bean/Province;->getChildren()Ljava/util/List;

    move-result-object v7

    .line 469
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kantv/ui/bean/City;

    .line 470
    invoke-virtual {v8}, Lcom/kantv/ui/bean/City;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 465
    :cond_2
    :goto_3
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    :cond_3
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 484
    :cond_4
    :goto_4
    iget-object v4, p0, Lcom/kantv/ui/activity/MyInfoActivity;->options2Items:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    iget-object v2, p0, Lcom/kantv/ui/activity/MyInfoActivity;->options3Items:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 493
    :cond_5
    new-instance p1, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    new-instance v1, Lcom/kantv/ui/activity/MyInfoActivity$3;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/MyInfoActivity$3;-><init>(Lcom/kantv/ui/activity/MyInfoActivity;)V

    invoke-direct {p1, p0, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;-><init>(Landroid/content/Context;Lcom/bigkoo/pickerview/listener/OnOptionsSelectListener;)V

    .line 527
    invoke-virtual {p1, v0}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->isCenterLabel(Z)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object p1

    const/4 v1, 0x1

    .line 529
    invoke-virtual {p1, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->isRestoreItem(Z)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object p1

    const-string v1, "\u5bb6\u4e61"

    .line 530
    invoke-virtual {p1, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setTitleText(Ljava/lang/String;)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object p1

    .line 531
    invoke-virtual {p1, v0}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setOutSideCancelable(Z)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object p1

    const-string v0, "#F6F7F6"

    .line 532
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setBgColor(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object p1

    const/16 v0, 0x12

    .line 533
    invoke-virtual {p1, v0}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setTitleSize(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object p1

    .line 534
    invoke-virtual {p0}, Lcom/kantv/ui/activity/MyInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setTitleColor(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object p1

    .line 535
    invoke-virtual {p0}, Lcom/kantv/ui/activity/MyInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setSubmitColor(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object p1

    .line 536
    invoke-virtual {p0}, Lcom/kantv/ui/activity/MyInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setCancelColor(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object p1

    .line 538
    invoke-virtual {p1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->build()Lcom/bigkoo/pickerview/view/OptionsPickerView;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->pvOptions:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    .line 541
    iget-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->pvOptions:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->options1Items:Ljava/util/List;

    iget-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->options2Items:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/kantv/ui/activity/MyInfoActivity;->options3Items:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1, v2}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->setPicker(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 543
    iget-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->pvOptions:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->show()V

    return-void
.end method

.method private saveInfo()V
    .locals 7

    .line 752
    :try_start_0
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 753
    iget-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->nickNameTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 754
    iget-object v2, p0, Lcom/kantv/ui/activity/MyInfoActivity;->sexTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 755
    iget-object v3, p0, Lcom/kantv/ui/activity/MyInfoActivity;->birthTv:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 756
    iget-object v4, p0, Lcom/kantv/ui/activity/MyInfoActivity;->aboutTv:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 757
    iget-object v5, p0, Lcom/kantv/ui/activity/MyInfoActivity;->homeTv:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 759
    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u6635\u79f0"

    .line 760
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 763
    :cond_0
    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "\u8bf7\u9009\u62e9\u6027\u522b"

    .line 764
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 768
    :cond_1
    invoke-static {v3}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "\u751f\u65e5\u672a\u586b"

    .line 769
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 773
    :cond_2
    invoke-static {v5}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "\u5bb6\u4e61\u672a\u586b"

    .line 774
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 778
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 779
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    const-string v5, "name"

    .line 780
    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    iget-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->sexFlag:Ljava/lang/String;

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "gender"

    .line 782
    iget-object v5, p0, Lcom/kantv/ui/activity/MyInfoActivity;->sexFlag:Ljava/lang/String;

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    :cond_4
    iget-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->countryFlag:Ljava/lang/String;

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "country"

    .line 785
    iget-object v5, p0, Lcom/kantv/ui/activity/MyInfoActivity;->countryFlag:Ljava/lang/String;

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    :cond_5
    iget-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->base64:Ljava/lang/String;

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "photo"

    .line 788
    iget-object v5, p0, Lcom/kantv/ui/activity/MyInfoActivity;->base64:Ljava/lang/String;

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    :cond_6
    iget-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->bgBase64:Ljava/lang/String;

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "background"

    .line 791
    iget-object v5, p0, Lcom/kantv/ui/activity/MyInfoActivity;->bgBase64:Ljava/lang/String;

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string v1, "aboutme"

    .line 794
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "birthday"

    .line 795
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "noncestr"

    .line 796
    sget-object v3, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "timestamp"

    .line 797
    sget-object v3, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sbID"

    .line 798
    sget-object v3, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sign"

    .line 799
    sget-object v3, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "_token"

    .line 800
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "devicetype"

    const-string v1, "0"

    .line 801
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "from"

    const-string v1, "1"

    .line 803
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->mHomeTown:Lorg/json/JSONObject;

    if-eqz v0, :cond_8

    const-string v0, "hometown"

    .line 806
    iget-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->mHomeTown:Lorg/json/JSONObject;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v0, "interfaceVersion"

    .line 808
    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/kantv/common/api/ApiService;->updateUserInfos(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/MyInfoActivity$11;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/MyInfoActivity$11;-><init>(Lcom/kantv/ui/activity/MyInfoActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 898
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private showDatePickerDialog()V
    .locals 3

    .line 328
    new-instance v0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;

    new-instance v1, Lcom/kantv/ui/activity/MyInfoActivity$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/MyInfoActivity$1;-><init>(Lcom/kantv/ui/activity/MyInfoActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;-><init>(Landroid/content/Context;Lcom/bigkoo/pickerview/listener/OnTimeSelectListener;)V

    const/4 v1, 0x0

    .line 353
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->isCenterLabel(Z)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;

    move-result-object v0

    const/4 v2, 0x6

    new-array v2, v2, [Z

    fill-array-data v2, :array_0

    .line 354
    invoke-virtual {v0, v2}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->setType([Z)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;

    move-result-object v0

    const-string v2, "\u51fa\u751f"

    .line 355
    invoke-virtual {v0, v2}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->setTitleText(Ljava/lang/String;)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;

    move-result-object v0

    .line 356
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->setOutSideCancelable(Z)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;

    move-result-object v0

    const-string v1, "#F6F7F6"

    .line 357
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->setBgColor(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;

    move-result-object v0

    const/16 v1, 0x12

    .line 358
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->setTitleSize(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;

    move-result-object v0

    .line 359
    invoke-virtual {p0}, Lcom/kantv/ui/activity/MyInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->setTitleColor(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;

    move-result-object v0

    .line 360
    invoke-virtual {p0}, Lcom/kantv/ui/activity/MyInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->setSubmitColor(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;

    move-result-object v0

    .line 361
    invoke-virtual {p0}, Lcom/kantv/ui/activity/MyInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->setCancelColor(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->build()Lcom/bigkoo/pickerview/view/TimePickerView;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Lcom/bigkoo/pickerview/view/TimePickerView;->show()V

    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private showHomePickerDialog()V
    .locals 3

    .line 369
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->pvOptions:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->show()V

    return-void

    .line 374
    :cond_0
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "area_data"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 376
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 377
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "json_domain"

    const-string v2, "http://image.suramic.com"

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/area/area.json"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/kantv/common/api/ApiService;->getAreaJson(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/MyInfoActivity$2;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/MyInfoActivity$2;-><init>(Lcom/kantv/ui/activity/MyInfoActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0

    .line 400
    :cond_1
    invoke-direct {p0, v0}, Lcom/kantv/ui/activity/MyInfoActivity;->parseAreaJson(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private showSaveDialog()V
    .locals 7

    .line 945
    new-instance v5, Lcom/kantv/ui/activity/MyInfoActivity$14;

    invoke-direct {v5, p0}, Lcom/kantv/ui/activity/MyInfoActivity$14;-><init>(Lcom/kantv/ui/activity/MyInfoActivity;)V

    new-instance v6, Lcom/kantv/ui/activity/MyInfoActivity$15;

    invoke-direct {v6, p0}, Lcom/kantv/ui/activity/MyInfoActivity$15;-><init>(Lcom/kantv/ui/activity/MyInfoActivity;)V

    const-string v1, "\u63d0\u793a"

    const-string v2, "\u662f\u5426\u4fdd\u5b58\u4fee\u6539\uff1f"

    const-string v3, "\u4fdd\u5b58"

    const-string v4, "\u4e0d\u4fdd\u5b58"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/kantv/ui/viewmodel/CommonViewModel;->initAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private xuanqu()V
    .locals 2

    .line 643
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 644
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 645
    invoke-virtual {p0, v0, v1}, Lcom/kantv/ui/activity/MyInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 650
    invoke-super {p0, p1, p2, p3}, Lcom/kantv/ui/PackageActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x2

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_2

    .line 657
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 660
    invoke-static {p0, p1, v0}, Lcom/kantv/ui/viewmodel/CommonViewModel;->startPhotoZoom(Landroid/content/Context;Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->mUritempFile:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_1
    const-string p1, "\u6ca1\u6709\u5f97\u5230\u76f8\u518c\u56fe\u7247"

    .line 662
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    .line 665
    iget-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->uri:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/kantv/ui/viewmodel/CommonViewModel;->startPhotoZoom(Landroid/content/Context;Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->mUritempFile:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_3
    if-ne p1, v0, :cond_5

    .line 707
    :try_start_0
    invoke-virtual {p0}, Lcom/kantv/ui/activity/MyInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/kantv/ui/activity/MyInfoActivity;->mUritempFile:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 709
    sget-object p2, Lcom/kantv/ui/activity/MyInfoActivity;->clickFlag:Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 710
    sget-object p2, Lcom/kantv/ui/activity/MyInfoActivity;->clickFlag:Ljava/lang/String;

    const-string p3, "avatar"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 711
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->bitmapToBase64(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kantv/ui/activity/MyInfoActivity;->base64:Ljava/lang/String;

    .line 712
    iget-object p2, p0, Lcom/kantv/ui/activity/MyInfoActivity;->mAvatar:Lcom/kantv/ui/view/CircleImageView;

    invoke-virtual {p2, p1}, Lcom/kantv/ui/view/CircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 713
    iput-boolean v1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->isChange:Z

    goto :goto_0

    .line 715
    :cond_4
    sget-object p2, Lcom/kantv/ui/activity/MyInfoActivity;->clickFlag:Ljava/lang/String;

    const-string p3, "bg"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 716
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->bitmapToBase64(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kantv/ui/activity/MyInfoActivity;->bgBase64:Ljava/lang/String;

    .line 717
    iget-object p2, p0, Lcom/kantv/ui/activity/MyInfoActivity;->bgImg:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 718
    iput-boolean v1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->isChange:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 722
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_5
    const/16 p2, 0x28

    if-ne p1, p2, :cond_6

    if-eqz p3, :cond_6

    const-string p1, "nick_name"

    .line 736
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 737
    iget-object p2, p0, Lcom/kantv/ui/activity/MyInfoActivity;->nickNameTv:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 738
    iput-boolean v1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->isChange:Z

    goto :goto_0

    :cond_6
    const/16 p2, 0x32

    if-ne p1, p2, :cond_7

    if-eqz p3, :cond_7

    const-string p1, "about"

    .line 741
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 742
    iget-object p2, p0, Lcom/kantv/ui/activity/MyInfoActivity;->aboutTv:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    iput-boolean v1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->isChange:Z

    :cond_7
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090374,
            0x7f09015c,
            0x7f090160,
            0x7f090161,
            0x7f09015b,
            0x7f090376,
            0x7f09015e,
            0x7f09015d,
            0x7f09015a,
            0x7f09015f
        }
    .end annotation

    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090374

    if-eq p1, v0, :cond_4

    const v0, 0x7f090376

    if-eq p1, v0, :cond_3

    const-string v0, "1"

    const-string v1, "\u63d0\u793a"

    const-string v2, "0"

    const-string v3, "edit_birth"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 292
    :pswitch_0
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 293
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u6027\u522b\u4e0d\u652f\u6301\u4fee\u6539"

    .line 294
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_0
    const-string p1, "\u6027\u522b\u4ec5\u53ef\u4fee\u6539\u4e00\u6b21\uff0c\u662f\u5426\u4fee\u6539\uff1f"

    const-string v0, "sex"

    .line 296
    invoke-direct {p0, v1, p1, v0}, Lcom/kantv/ui/activity/MyInfoActivity;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 288
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/kantv/ui/activity/EditNicknameActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x28

    .line 289
    invoke-virtual {p0, p1, v0}, Lcom/kantv/ui/activity/MyInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 268
    :pswitch_2
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 269
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "\u5bb6\u4e61\u4e0d\u652f\u6301\u4fee\u6539"

    .line 270
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string p1, "\u5bb6\u4e61\u4ec5\u53ef\u4fee\u6539\u4e00\u6b21\uff0c\u662f\u5426\u4fee\u6539\uff1f"

    const-string v0, "home"

    .line 272
    invoke-direct {p0, v1, p1, v0}, Lcom/kantv/ui/activity/MyInfoActivity;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :pswitch_3
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 310
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "\u751f\u65e5\u4e0d\u652f\u6301\u4fee\u6539"

    .line 311
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string p1, "\u751f\u65e5\u4ec5\u53ef\u4fee\u6539\u4e00\u6b21\uff0c\u662f\u5426\u4fee\u6539\uff1f"

    const-string v0, "birth"

    .line 313
    invoke-direct {p0, v1, p1, v0}, Lcom/kantv/ui/activity/MyInfoActivity;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p1, "bg"

    .line 317
    sput-object p1, Lcom/kantv/ui/activity/MyInfoActivity;->clickFlag:Ljava/lang/String;

    .line 318
    invoke-direct {p0}, Lcom/kantv/ui/activity/MyInfoActivity;->initAvatarDialog()V

    goto :goto_0

    :pswitch_5
    const-string p1, "avatar"

    .line 284
    sput-object p1, Lcom/kantv/ui/activity/MyInfoActivity;->clickFlag:Ljava/lang/String;

    .line 285
    invoke-direct {p0}, Lcom/kantv/ui/activity/MyInfoActivity;->initAvatarDialog()V

    goto :goto_0

    .line 300
    :pswitch_6
    invoke-direct {p0}, Lcom/kantv/ui/activity/MyInfoActivity;->initAreaDialog()V

    goto :goto_0

    .line 321
    :pswitch_7
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/kantv/ui/activity/MeAboutActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x32

    .line 322
    invoke-virtual {p0, p1, v0}, Lcom/kantv/ui/activity/MyInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 303
    :cond_3
    iget-boolean p1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->isChange:Z

    if-eqz p1, :cond_6

    .line 304
    invoke-direct {p0}, Lcom/kantv/ui/activity/MyInfoActivity;->saveInfo()V

    goto :goto_0

    .line 277
    :cond_4
    iget-boolean p1, p0, Lcom/kantv/ui/activity/MyInfoActivity;->isChange:Z

    if-eqz p1, :cond_5

    .line 278
    invoke-direct {p0}, Lcom/kantv/ui/activity/MyInfoActivity;->showSaveDialog()V

    goto :goto_0

    .line 280
    :cond_5
    invoke-virtual {p0}, Lcom/kantv/ui/activity/MyInfoActivity;->finish()V

    :cond_6
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f09015a
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 164
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0029

    .line 165
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/MyInfoActivity;->setContentView(I)V

    .line 169
    invoke-virtual {p0}, Lcom/kantv/ui/activity/MyInfoActivity;->initBase()V

    .line 170
    invoke-virtual {p0}, Lcom/kantv/ui/activity/MyInfoActivity;->initStatusBar()V

    .line 171
    invoke-direct {p0}, Lcom/kantv/ui/activity/MyInfoActivity;->initView()V

    .line 172
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "\u6211_\u7f16\u8f91_\u4e2a\u4eba\u4fe1\u606f"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 173
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 175
    invoke-direct {p0}, Lcom/kantv/ui/activity/MyInfoActivity;->initRedTip()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 932
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 937
    iget-boolean v0, p0, Lcom/kantv/ui/activity/MyInfoActivity;->isChange:Z

    if-eqz v0, :cond_0

    .line 938
    invoke-direct {p0}, Lcom/kantv/ui/activity/MyInfoActivity;->showSaveDialog()V

    const/4 p1, 0x1

    return p1

    .line 941
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kantv/ui/PackageActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 0

    .line 259
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onResume()V

    return-void
.end method
