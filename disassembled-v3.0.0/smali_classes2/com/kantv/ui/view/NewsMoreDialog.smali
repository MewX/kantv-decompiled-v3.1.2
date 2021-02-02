.class public Lcom/kantv/ui/view/NewsMoreDialog;
.super Landroid/app/Dialog;
.source "NewsMoreDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/view/NewsMoreDialog$onClickback;
    }
.end annotation


# instance fields
.field private callback:Lcom/kantv/ui/view/NewsMoreDialog$onClickback;

.field private isCollect:Ljava/lang/String;

.field private mBigButton:Landroid/widget/RadioButton;

.field private mLargeButton:Landroid/widget/RadioButton;

.field private mMediumButton:Landroid/widget/RadioButton;

.field private mSmallButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string p1, "0"

    .line 27
    iput-object p1, p0, Lcom/kantv/ui/view/NewsMoreDialog;->isCollect:Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Lcom/kantv/ui/view/NewsMoreDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c005e

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 38
    iput-object p3, p0, Lcom/kantv/ui/view/NewsMoreDialog;->isCollect:Ljava/lang/String;

    const/4 p2, 0x1

    .line 39
    invoke-virtual {p0, p2}, Lcom/kantv/ui/view/NewsMoreDialog;->setCanceledOnTouchOutside(Z)V

    .line 40
    invoke-direct {p0, p1}, Lcom/kantv/ui/view/NewsMoreDialog;->setListener(Landroid/view/View;)V

    .line 41
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/kantv/ui/view/NewsMoreDialog$onClickback;Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f1000d7

    .line 30
    invoke-direct {p0, p1, v0, p3}, Lcom/kantv/ui/view/NewsMoreDialog;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 31
    iput-object p2, p0, Lcom/kantv/ui/view/NewsMoreDialog;->callback:Lcom/kantv/ui/view/NewsMoreDialog$onClickback;

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/view/NewsMoreDialog;)Lcom/kantv/ui/view/NewsMoreDialog$onClickback;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/kantv/ui/view/NewsMoreDialog;->callback:Lcom/kantv/ui/view/NewsMoreDialog$onClickback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/view/NewsMoreDialog;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/kantv/ui/view/NewsMoreDialog;->isCollect:Ljava/lang/String;

    return-object p0
.end method

.method private setListener(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f090269

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/kantv/ui/view/NewsMoreDialog;->mSmallButton:Landroid/widget/RadioButton;

    const v0, 0x7f090268

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/kantv/ui/view/NewsMoreDialog;->mMediumButton:Landroid/widget/RadioButton;

    const v0, 0x7f090266

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/kantv/ui/view/NewsMoreDialog;->mBigButton:Landroid/widget/RadioButton;

    const v0, 0x7f090267

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/kantv/ui/view/NewsMoreDialog;->mLargeButton:Landroid/widget/RadioButton;

    const v0, 0x7f09026f

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 59
    new-instance v1, Lcom/kantv/ui/view/NewsMoreDialog$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/view/NewsMoreDialog$1;-><init>(Lcom/kantv/ui/view/NewsMoreDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 83
    iget-object v0, p0, Lcom/kantv/ui/view/NewsMoreDialog;->isCollect:Ljava/lang/String;

    const-string v1, "1"

    const v2, 0x7f090274

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0801f1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0801f0

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const v0, 0x7f0900dc

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/kantv/ui/view/NewsMoreDialog$2;

    invoke-direct {v2, p0}, Lcom/kantv/ui/view/NewsMoreDialog$2;-><init>(Lcom/kantv/ui/view/NewsMoreDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090275

    .line 94
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/kantv/ui/view/NewsMoreDialog$3;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/view/NewsMoreDialog$3;-><init>(Lcom/kantv/ui/view/NewsMoreDialog;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "2"

    const-string v2, "texttype"

    invoke-static {p1, v2, v0}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 110
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 111
    iget-object p1, p0, Lcom/kantv/ui/view/NewsMoreDialog;->mSmallButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 112
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    iget-object p1, p0, Lcom/kantv/ui/view/NewsMoreDialog;->mMediumButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_2
    const-string v0, "3"

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 115
    iget-object p1, p0, Lcom/kantv/ui/view/NewsMoreDialog;->mBigButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 117
    :cond_3
    iget-object p1, p0, Lcom/kantv/ui/view/NewsMoreDialog;->mLargeButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/kantv/ui/view/NewsMoreDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public show()V
    .locals 0

    .line 123
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
