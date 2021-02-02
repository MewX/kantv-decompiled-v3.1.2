.class public Lcom/kantv/ui/activity/BasicInfoActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "BasicInfoActivity.java"


# static fields
.field private static final REQUEST_EDIT_NICK_NAME:I = 0x28


# instance fields
.field private final REQUEST_CODE_ALBUM:I

.field private final REQUEST_CODE_CROUP_PHOTO:I

.field private final REQUEST_CODE_TAKE_PHOTO:I

.field private base64:Ljava/lang/String;

.field private file:Ljava/io/File;

.field mAvatar:Lcom/kantv/ui/view/CircleImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09005b
    .end annotation
.end field

.field mTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bf
    .end annotation
.end field

.field private mUritempFile:Landroid/net/Uri;

.field nickNameTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09027a
    .end annotation
.end field

.field private sexFlag:Ljava/lang/String;

.field sexTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090325
    .end annotation
.end field

.field titleLeftLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090374
    .end annotation
.end field

.field titleRightLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090376
    .end annotation
.end field

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    const/4 v0, 0x1

    .line 68
    iput v0, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->REQUEST_CODE_TAKE_PHOTO:I

    const/4 v0, 0x2

    .line 69
    iput v0, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->REQUEST_CODE_ALBUM:I

    const/4 v0, 0x3

    .line 70
    iput v0, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->REQUEST_CODE_CROUP_PHOTO:I

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->base64:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->sexFlag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/BasicInfoActivity;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/kantv/ui/activity/BasicInfoActivity;->xuanqu()V

    return-void
.end method

.method static synthetic access$100(Lcom/kantv/ui/activity/BasicInfoActivity;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/kantv/ui/activity/BasicInfoActivity;->paizhao()V

    return-void
.end method

.method static synthetic access$202(Lcom/kantv/ui/activity/BasicInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->sexFlag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/kantv/ui/activity/BasicInfoActivity;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$400(Lcom/kantv/ui/activity/BasicInfoActivity;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->base64:Ljava/lang/String;

    return-object p0
.end method

.method private basicRegister()V
    .locals 4

    .line 277
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 278
    iget-object v1, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->nickNameTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 279
    iget-object v2, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->sexTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u6635\u79f0"

    .line 281
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 284
    :cond_0
    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "\u8bf7\u9009\u62e9\u6027\u522b"

    .line 285
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 288
    :cond_1
    iget-object v2, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->request:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 289
    iget-object v2, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->request:Ljava/util/Map;

    const-string v3, "name"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v1, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->sexFlag:Ljava/lang/String;

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 291
    iget-object v1, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->request:Ljava/util/Map;

    iget-object v2, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->sexFlag:Ljava/lang/String;

    const-string v3, "gender"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_2
    iget-object v1, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->base64:Ljava/lang/String;

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 294
    iget-object v1, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->request:Ljava/util/Map;

    iget-object v2, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->base64:Ljava/lang/String;

    const-string v3, "image"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v1, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v3, "noncestr"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v1, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v1, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v3, "sbID"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v1, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v3, "sign"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v1, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v0, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->request:Ljava/util/Map;

    const-string v1, "0"

    const-string v2, "devicetype"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v0, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v3, "interfaceVersion"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v0, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->request:Ljava/util/Map;

    const-string v2, "from"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->updateUserInfo(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/BasicInfoActivity$5;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/BasicInfoActivity$5;-><init>(Lcom/kantv/ui/activity/BasicInfoActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    :cond_3
    const-string v0, "\u8bf7\u9009\u62e9\u5934\u50cf"

    .line 296
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initAvatarDialog()V
    .locals 4

    .line 135
    new-instance v0, Lcom/kantv/ui/view/ActionSheetDialog;

    invoke-direct {v0, p0}, Lcom/kantv/ui/view/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 136
    invoke-virtual {v0}, Lcom/kantv/ui/view/ActionSheetDialog;->builder()Lcom/kantv/ui/view/ActionSheetDialog;

    const-string v1, "\u8bf7\u9009\u62e9\u62cd\u7167\u65b9\u5f0f"

    .line 137
    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/ActionSheetDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/ActionSheetDialog;

    move-result-object v0

    sget-object v1, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->Blue:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    new-instance v2, Lcom/kantv/ui/activity/BasicInfoActivity$2;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/BasicInfoActivity$2;-><init>(Lcom/kantv/ui/activity/BasicInfoActivity;)V

    const-string v3, "\u624b\u673a\u62cd\u7167"

    invoke-virtual {v0, v3, v1, v2}, Lcom/kantv/ui/view/ActionSheetDialog;->addSheetItem(Ljava/lang/String;Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;)Lcom/kantv/ui/view/ActionSheetDialog;

    move-result-object v0

    sget-object v1, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->Blue:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    new-instance v2, Lcom/kantv/ui/activity/BasicInfoActivity$1;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/BasicInfoActivity$1;-><init>(Lcom/kantv/ui/activity/BasicInfoActivity;)V

    const-string v3, "\u76f8\u518c\u9009\u53d6"

    .line 146
    invoke-virtual {v0, v3, v1, v2}, Lcom/kantv/ui/view/ActionSheetDialog;->addSheetItem(Ljava/lang/String;Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;)Lcom/kantv/ui/view/ActionSheetDialog;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/kantv/ui/view/ActionSheetDialog;->show()V

    return-void
.end method

.method private initSexDialog()V
    .locals 4

    .line 157
    new-instance v0, Lcom/kantv/ui/view/ActionSheetDialog;

    invoke-direct {v0, p0}, Lcom/kantv/ui/view/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 158
    invoke-virtual {v0}, Lcom/kantv/ui/view/ActionSheetDialog;->builder()Lcom/kantv/ui/view/ActionSheetDialog;

    const-string v1, "\u8bf7\u9009\u62e9\u6027\u522b"

    .line 159
    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/ActionSheetDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/ActionSheetDialog;

    move-result-object v0

    sget-object v1, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->Blue:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    new-instance v2, Lcom/kantv/ui/activity/BasicInfoActivity$4;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/BasicInfoActivity$4;-><init>(Lcom/kantv/ui/activity/BasicInfoActivity;)V

    const-string v3, "\u7537"

    invoke-virtual {v0, v3, v1, v2}, Lcom/kantv/ui/view/ActionSheetDialog;->addSheetItem(Ljava/lang/String;Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;)Lcom/kantv/ui/view/ActionSheetDialog;

    move-result-object v0

    sget-object v1, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->Blue:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    new-instance v2, Lcom/kantv/ui/activity/BasicInfoActivity$3;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/BasicInfoActivity$3;-><init>(Lcom/kantv/ui/activity/BasicInfoActivity;)V

    const-string v3, "\u5973"

    .line 167
    invoke-virtual {v0, v3, v1, v2}, Lcom/kantv/ui/view/ActionSheetDialog;->addSheetItem(Ljava/lang/String;Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;)Lcom/kantv/ui/view/ActionSheetDialog;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/kantv/ui/view/ActionSheetDialog;->show()V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->mTitle:Landroid/widget/TextView;

    const-string v1, "\u57fa\u7840\u8d44\u6599"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 93
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/kantv/ui/photo/FileUtil;->getCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "user-avatar.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->file:Ljava/io/File;

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->file:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->uri:Landroid/net/Uri;

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->file:Ljava/io/File;

    const-string v1, "com.kantv.ui"

    invoke-static {p0, v1, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->uri:Landroid/net/Uri;

    .line 100
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Basic@@"

    invoke-static {v2, v0}, Lcom/kantv/common/log/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Photo"

    invoke-static {v0, v2, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->mAvatar:Lcom/kantv/ui/view/CircleImageView;

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/GlideUtils;->loadimageRoundness(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method private paizhao()V
    .locals 4

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "orientation"

    const/4 v3, 0x0

    .line 181
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    iget-object v2, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->uri:Landroid/net/Uri;

    const-string v3, "output"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, v0, v1}, Lcom/kantv/ui/activity/BasicInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private xuanqu()V
    .locals 2

    .line 188
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 189
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 190
    invoke-virtual {p0, v0, v1}, Lcom/kantv/ui/activity/BasicInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 195
    invoke-super {p0, p1, p2, p3}, Lcom/kantv/ui/PackageActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_2

    .line 203
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 206
    invoke-static {p0, p1, v1}, Lcom/kantv/ui/viewmodel/CommonViewModel;->startPhotoZoom(Landroid/content/Context;Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->mUritempFile:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    const-string p1, "\u6ca1\u6709\u5f97\u5230\u76f8\u518c\u56fe\u7247"

    .line 208
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    .line 211
    iget-object p1, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->uri:Landroid/net/Uri;

    invoke-static {p0, p1, v1}, Lcom/kantv/ui/viewmodel/CommonViewModel;->startPhotoZoom(Landroid/content/Context;Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->mUritempFile:Landroid/net/Uri;

    goto :goto_0

    :cond_3
    if-ne p1, v1, :cond_4

    .line 217
    :try_start_0
    invoke-virtual {p0}, Lcom/kantv/ui/activity/BasicInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->mUritempFile:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 218
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->bitmapToBase64(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->base64:Ljava/lang/String;

    .line 219
    iget-object p2, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->mAvatar:Lcom/kantv/ui/view/CircleImageView;

    invoke-virtual {p2, p1}, Lcom/kantv/ui/view/CircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 221
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    const/16 p2, 0x28

    if-ne p1, p2, :cond_5

    if-eqz p3, :cond_5

    const-string p1, "nick_name"

    .line 238
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 239
    iget-object p2, p0, Lcom/kantv/ui/activity/BasicInfoActivity;->nickNameTv:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090374,
            0x7f090062,
            0x7f090063,
            0x7f090065,
            0x7f090064
        }
    .end annotation

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090374

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 125
    :pswitch_0
    invoke-direct {p0}, Lcom/kantv/ui/activity/BasicInfoActivity;->initSexDialog()V

    goto :goto_0

    .line 128
    :pswitch_1
    invoke-direct {p0}, Lcom/kantv/ui/activity/BasicInfoActivity;->basicRegister()V

    goto :goto_0

    .line 121
    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/kantv/ui/activity/EditNicknameActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x28

    .line 122
    invoke-virtual {p0, p1, v0}, Lcom/kantv/ui/activity/BasicInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 117
    :pswitch_3
    invoke-direct {p0}, Lcom/kantv/ui/activity/BasicInfoActivity;->initAvatarDialog()V

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/ui/activity/BasicInfoActivity;->finish()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f090062
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c009f

    .line 81
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/BasicInfoActivity;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Lcom/kantv/ui/activity/BasicInfoActivity;->initBase()V

    .line 83
    invoke-direct {p0}, Lcom/kantv/ui/activity/BasicInfoActivity;->initView()V

    .line 84
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "\u7528\u6237\u4fe1\u606f_\u57fa\u7840\u4fe1\u606f"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 342
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 107
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onResume()V

    return-void
.end method
