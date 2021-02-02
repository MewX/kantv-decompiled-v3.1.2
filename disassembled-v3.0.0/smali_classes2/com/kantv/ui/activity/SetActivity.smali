.class public Lcom/kantv/ui/activity/SetActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "SetActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SetActivity"


# instance fields
.field signOutLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090331
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

.field titleTV:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bf
    .end annotation
.end field

.field typeSwitch:Landroid/widget/Switch;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900e8
    .end annotation
.end field

.field wxHelpTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0903ea
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    return-void
.end method

.method private deleteMovies()V
    .locals 3

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Kantv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Kantvphoto"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    invoke-static {v2}, Lcom/kantv/ui/activity/SetActivity;->recursionDeleteFile(Ljava/io/File;)V

    .line 192
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    invoke-static {v0}, Lcom/kantv/ui/activity/SetActivity;->recursionDeleteFile(Ljava/io/File;)V

    :cond_1
    return-void
.end method

.method private havePermissionForWriteStorage()Z
    .locals 4

    .line 169
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 170
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/SetActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Permission Allowed"

    const-string v3, "true"

    .line 172
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/16 v0, 0x3b6

    invoke-virtual {p0, v1, v0}, Lcom/kantv/ui/activity/SetActivity;->requestPermissions([Ljava/lang/String;I)V

    return v2

    :cond_1
    return v1
.end method

.method private initAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 216
    new-instance v0, Lcom/kantv/ui/view/AlertDialog;

    invoke-direct {v0, p0}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 217
    invoke-virtual {v0}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kantv/ui/view/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/SetActivity$3;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/SetActivity$3;-><init>(Lcom/kantv/ui/activity/SetActivity;)V

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/SetActivity$2;

    invoke-direct {p2, p0, p3}, Lcom/kantv/ui/activity/SetActivity$2;-><init>(Lcom/kantv/ui/activity/SetActivity;Ljava/lang/String;)V

    const-string p3, "\u786e\u5b9a"

    .line 226
    invoke-virtual {p1, p3, p2}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    .line 247
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method

.method private initTitle()V
    .locals 5

    .line 79
    iget-object v0, p0, Lcom/kantv/ui/activity/SetActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0600a2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 80
    iget-object v0, p0, Lcom/kantv/ui/activity/SetActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 81
    iget-object v0, p0, Lcom/kantv/ui/activity/SetActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x40

    invoke-static {v3, v4}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v0, p0, Lcom/kantv/ui/activity/SetActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/kantv/ui/activity/SetActivity;->titleLeftImg:Landroid/widget/ImageView;

    const v1, 0x7f0801dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    iget-object v0, p0, Lcom/kantv/ui/activity/SetActivity;->titleTV:Landroid/widget/TextView;

    const-string v1, "\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/kantv/ui/activity/SetActivity;->titleTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/SetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    iget-object v0, p0, Lcom/kantv/ui/activity/SetActivity;->titleTV:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 88
    iget-object v0, p0, Lcom/kantv/ui/activity/SetActivity;->titleRightImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 92
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "Login_State"

    invoke-static {v0, v3, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/kantv/ui/activity/SetActivity;->signOutLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/SetActivity;->signOutLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/activity/SetActivity;->wxHelpTv:Landroid/widget/TextView;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "weixing"

    const-string v3, "kantvhelp3"

    invoke-static {v1, v2, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "download_type_wifi"

    invoke-static {v0, v2, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 101
    iget-object v1, p0, Lcom/kantv/ui/activity/SetActivity;->typeSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 102
    iget-object v0, p0, Lcom/kantv/ui/activity/SetActivity;->typeSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/kantv/ui/activity/SetActivity$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/SetActivity$1;-><init>(Lcom/kantv/ui/activity/SetActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public static recursionDeleteFile(Ljava/io/File;)V
    .locals 4

    .line 198
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    .line 202
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 203
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 204
    array-length v1, v0

    if-nez v1, :cond_1

    goto :goto_1

    .line 208
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 209
    invoke-static {v3}, Lcom/kantv/ui/activity/SetActivity;->recursionDeleteFile(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 205
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090331,
            0x7f090374,
            0x7f0902d8,
            0x7f0900a8,
            0x7f0900ce,
            0x7f0902bf,
            0x7f090320,
            0x7f090321
        }
    .end annotation

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 123
    :sswitch_0
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SetActivity;->finish()V

    goto :goto_0

    :sswitch_1
    const-string p1, "\u63d0\u793a"

    const-string v0, "\u662f\u5426\u8981\u9000\u51fa\u767b\u5f55\uff1f"

    const-string v1, "0"

    .line 120
    invoke-direct {p0, p1, v0, v1}, Lcom/kantv/ui/activity/SetActivity;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :sswitch_2
    iget-object p1, p0, Lcom/kantv/ui/activity/SetActivity;->typeSwitch:Landroid/widget/Switch;

    if-eqz p1, :cond_2

    .line 149
    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 150
    iget-object p1, p0, Lcom/kantv/ui/activity/SetActivity;->typeSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/SetActivity;->typeSwitch:Landroid/widget/Switch;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 145
    :sswitch_3
    const-class p1, Lcom/kantv/ui/activity/FilePathSetActivity;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/SetActivity;->gotoActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 157
    :sswitch_4
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Login_State"

    invoke-static {p1, v1, v0}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 159
    const-class p1, Lcom/kantv/ui/activity/SafeCenterActivity;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/SetActivity;->gotoActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 161
    :cond_1
    const-class p1, Lcom/kantv/ui/activity/AccountLoginActivity;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/SetActivity;->gotoActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 142
    :sswitch_5
    const-class p1, Lcom/kantv/ui/activity/ForumActivity;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/SetActivity;->gotoActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 139
    :sswitch_6
    const-class p1, Lcom/kantv/ui/activity/FeedBackActivity;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/SetActivity;->gotoActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 126
    :sswitch_7
    invoke-direct {p0}, Lcom/kantv/ui/activity/SetActivity;->havePermissionForWriteStorage()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 127
    invoke-direct {p0}, Lcom/kantv/ui/activity/SetActivity;->deleteMovies()V

    const-string p1, "\u6e05\u9664\u9996\u9875\u7f13\u5b58\u6210\u529f\uff01"

    .line 128
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900a8 -> :sswitch_7
        0x7f0900ce -> :sswitch_6
        0x7f0902bf -> :sswitch_5
        0x7f0902d8 -> :sswitch_4
        0x7f090320 -> :sswitch_3
        0x7f090321 -> :sswitch_2
        0x7f090331 -> :sswitch_1
        0x7f090374 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0033

    .line 69
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/SetActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SetActivity;->initBase()V

    .line 71
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SetActivity;->initStatusBar()V

    .line 72
    invoke-direct {p0}, Lcom/kantv/ui/activity/SetActivity;->initTitle()V

    .line 73
    invoke-direct {p0}, Lcom/kantv/ui/activity/SetActivity;->initView()V

    .line 74
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "\u6211_\u8bbe\u7f6e"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 75
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

    .line 252
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    return-void
.end method
