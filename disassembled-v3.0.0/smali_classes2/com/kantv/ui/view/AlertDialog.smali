.class public Lcom/kantv/ui/view/AlertDialog;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# instance fields
.field private btn_neg:Landroid/widget/Button;

.field private btn_pos:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private dialog:Landroid/app/Dialog;

.field private display:Landroid/view/Display;

.field private img_line:Landroid/widget/ImageView;

.field private lLayout_bg:Landroid/widget/LinearLayout;

.field private op:Landroid/graphics/Typeface;

.field private showMsg:Z

.field private showNegBtn:Z

.field private showPosBtn:Z

.field private showTitle:Z

.field private txt_msg:Landroid/widget/TextView;

.field private txt_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/kantv/ui/view/AlertDialog;->showTitle:Z

    .line 35
    iput-boolean v0, p0, Lcom/kantv/ui/view/AlertDialog;->showMsg:Z

    .line 36
    iput-boolean v0, p0, Lcom/kantv/ui/view/AlertDialog;->showPosBtn:Z

    .line 37
    iput-boolean v0, p0, Lcom/kantv/ui/view/AlertDialog;->showNegBtn:Z

    .line 40
    iput-object p1, p0, Lcom/kantv/ui/view/AlertDialog;->context:Landroid/content/Context;

    const-string v0, "window"

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 43
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/view/AlertDialog;->display:Landroid/view/Display;

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/view/AlertDialog;)Landroid/app/Dialog;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/kantv/ui/view/AlertDialog;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method private setLayout()V
    .locals 4

    .line 131
    iget-boolean v0, p0, Lcom/kantv/ui/view/AlertDialog;->showTitle:Z

    const-string v1, ""

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/kantv/ui/view/AlertDialog;->showMsg:Z

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/kantv/ui/view/AlertDialog;->txt_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/kantv/ui/view/AlertDialog;->txt_title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    :cond_0
    iget-boolean v0, p0, Lcom/kantv/ui/view/AlertDialog;->showTitle:Z

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/kantv/ui/view/AlertDialog;->txt_title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    :cond_1
    iget-boolean v0, p0, Lcom/kantv/ui/view/AlertDialog;->showMsg:Z

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/kantv/ui/view/AlertDialog;->txt_msg:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    :cond_2
    iget-boolean v0, p0, Lcom/kantv/ui/view/AlertDialog;->showPosBtn:Z

    const v3, 0x7f080073

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/kantv/ui/view/AlertDialog;->showNegBtn:Z

    if-nez v0, :cond_3

    .line 145
    iget-object v0, p0, Lcom/kantv/ui/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/kantv/ui/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/kantv/ui/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 148
    iget-object v0, p0, Lcom/kantv/ui/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    new-instance v1, Lcom/kantv/ui/view/AlertDialog$3;

    invoke-direct {v1, p0}, Lcom/kantv/ui/view/AlertDialog$3;-><init>(Lcom/kantv/ui/view/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    :cond_3
    iget-boolean v0, p0, Lcom/kantv/ui/view/AlertDialog;->showPosBtn:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/kantv/ui/view/AlertDialog;->showNegBtn:Z

    if-eqz v0, :cond_4

    .line 157
    iget-object v0, p0, Lcom/kantv/ui/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/kantv/ui/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    const v1, 0x7f080072

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 159
    iget-object v0, p0, Lcom/kantv/ui/view/AlertDialog;->btn_neg:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/kantv/ui/view/AlertDialog;->btn_neg:Landroid/widget/Button;

    const v1, 0x7f080071

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 161
    iget-object v0, p0, Lcom/kantv/ui/view/AlertDialog;->img_line:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    :cond_4
    iget-boolean v0, p0, Lcom/kantv/ui/view/AlertDialog;->showPosBtn:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/kantv/ui/view/AlertDialog;->showNegBtn:Z

    if-nez v0, :cond_5

    .line 165
    iget-object v0, p0, Lcom/kantv/ui/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/kantv/ui/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 169
    :cond_5
    iget-boolean v0, p0, Lcom/kantv/ui/view/AlertDialog;->showPosBtn:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/kantv/ui/view/AlertDialog;->showNegBtn:Z

    if-eqz v0, :cond_6

    .line 170
    iget-object v0, p0, Lcom/kantv/ui/view/AlertDialog;->btn_neg:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/kantv/ui/view/AlertDialog;->btn_neg:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_6
    return-void
.end method


# virtual methods
.method public builder()Lcom/kantv/ui/view/AlertDialog;
    .locals 6

    .line 47
    iget-object v0, p0, Lcom/kantv/ui/view/AlertDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00dc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901df

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/kantv/ui/view/AlertDialog;->lLayout_bg:Landroid/widget/LinearLayout;

    const v1, 0x7f09039b

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kantv/ui/view/AlertDialog;->txt_title:Landroid/widget/TextView;

    .line 51
    iget-object v1, p0, Lcom/kantv/ui/view/AlertDialog;->txt_title:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    iget-object v1, p0, Lcom/kantv/ui/view/AlertDialog;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    const v1, 0x7f09039a

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kantv/ui/view/AlertDialog;->txt_msg:Landroid/widget/TextView;

    .line 54
    iget-object v1, p0, Lcom/kantv/ui/view/AlertDialog;->txt_msg:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f090085

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/kantv/ui/view/AlertDialog;->btn_neg:Landroid/widget/Button;

    .line 56
    iget-object v1, p0, Lcom/kantv/ui/view/AlertDialog;->btn_neg:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    const v1, 0x7f090086

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/kantv/ui/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    .line 58
    iget-object v1, p0, Lcom/kantv/ui/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    const v1, 0x7f090158

    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/kantv/ui/view/AlertDialog;->img_line:Landroid/widget/ImageView;

    .line 60
    iget-object v1, p0, Lcom/kantv/ui/view/AlertDialog;->img_line:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/kantv/ui/view/AlertDialog;->context:Landroid/content/Context;

    const v3, 0x7f100005

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/kantv/ui/view/AlertDialog;->dialog:Landroid/app/Dialog;

    .line 62
    iget-object v1, p0, Lcom/kantv/ui/view/AlertDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 63
    iget-object v0, p0, Lcom/kantv/ui/view/AlertDialog;->lLayout_bg:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/kantv/ui/view/AlertDialog;->display:Landroid/view/Display;

    .line 64
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3feb333333333333L    # 0.85

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int v2, v2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public setCancelable(Z)Lcom/kantv/ui/view/AlertDialog;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/kantv/ui/view/AlertDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p0
.end method

.method public setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;
    .locals 2

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/kantv/ui/view/AlertDialog;->showMsg:Z

    const-string v0, ""

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/kantv/ui/view/AlertDialog;->txt_msg:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/view/AlertDialog;->txt_msg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;
    .locals 2

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/kantv/ui/view/AlertDialog;->showNegBtn:Z

    const-string v0, ""

    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/kantv/ui/view/AlertDialog;->btn_neg:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/view/AlertDialog;->btn_neg:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :goto_0
    iget-object p1, p0, Lcom/kantv/ui/view/AlertDialog;->btn_neg:Landroid/widget/Button;

    new-instance v0, Lcom/kantv/ui/view/AlertDialog$2;

    invoke-direct {v0, p0, p2}, Lcom/kantv/ui/view/AlertDialog$2;-><init>(Lcom/kantv/ui/view/AlertDialog;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;
    .locals 2

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/kantv/ui/view/AlertDialog;->showPosBtn:Z

    const-string v0, ""

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/kantv/ui/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :goto_0
    iget-object p1, p0, Lcom/kantv/ui/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    new-instance v0, Lcom/kantv/ui/view/AlertDialog$1;

    invoke-direct {v0, p0, p2}, Lcom/kantv/ui/view/AlertDialog$1;-><init>(Lcom/kantv/ui/view/AlertDialog;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;
    .locals 2

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/kantv/ui/view/AlertDialog;->showTitle:Z

    const-string v0, ""

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/kantv/ui/view/AlertDialog;->txt_title:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/view/AlertDialog;->txt_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-object p0
.end method

.method public show()V
    .locals 1

    .line 176
    invoke-direct {p0}, Lcom/kantv/ui/view/AlertDialog;->setLayout()V

    .line 177
    iget-object v0, p0, Lcom/kantv/ui/view/AlertDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
