.class public Lcom/kantv/ui/view/ActionSheetDialog;
.super Ljava/lang/Object;
.source "ActionSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;,
        Lcom/kantv/ui/view/ActionSheetDialog$SheetItem;,
        Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dialog:Landroid/app/Dialog;

.field private display:Landroid/view/Display;

.field private lLayout_content:Landroid/widget/LinearLayout;

.field private sLayout_content:Landroid/widget/ScrollView;

.field private sheetItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/view/ActionSheetDialog$SheetItem;",
            ">;"
        }
    .end annotation
.end field

.field private showTitle:Z

.field private txt_cancel:Landroid/widget/TextView;

.field private txt_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/kantv/ui/view/ActionSheetDialog;->showTitle:Z

    .line 38
    iput-object p1, p0, Lcom/kantv/ui/view/ActionSheetDialog;->context:Landroid/content/Context;

    const-string v0, "window"

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 41
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/view/ActionSheetDialog;->display:Landroid/view/Display;

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/view/ActionSheetDialog;)Landroid/app/Dialog;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/kantv/ui/view/ActionSheetDialog;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method private setSheetItems()V
    .locals 9

    .line 103
    iget-object v0, p0, Lcom/kantv/ui/view/ActionSheetDialog;->sheetItemList:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_3

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/view/ActionSheetDialog;->sheetItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/kantv/ui/view/ActionSheetDialog;->sLayout_content:Landroid/widget/ScrollView;

    .line 109
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 110
    iget-object v2, p0, Lcom/kantv/ui/view/ActionSheetDialog;->display:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 111
    iget-object v2, p0, Lcom/kantv/ui/view/ActionSheetDialog;->sLayout_content:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    if-gt v2, v0, :cond_9

    .line 116
    iget-object v3, p0, Lcom/kantv/ui/view/ActionSheetDialog;->sheetItemList:Ljava/util/List;

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kantv/ui/view/ActionSheetDialog$SheetItem;

    .line 117
    iget-object v4, v3, Lcom/kantv/ui/view/ActionSheetDialog$SheetItem;->name:Ljava/lang/String;

    .line 118
    iget-object v5, v3, Lcom/kantv/ui/view/ActionSheetDialog$SheetItem;->color:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    .line 119
    iget-object v3, v3, Lcom/kantv/ui/view/ActionSheetDialog$SheetItem;->itemClickListener:Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;

    .line 120
    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/kantv/ui/view/ActionSheetDialog;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41900000    # 18.0f

    .line 122
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v4, 0x11

    .line 123
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setGravity(I)V

    const v4, 0x7f08005b

    if-ne v0, v1, :cond_3

    .line 125
    iget-boolean v7, p0, Lcom/kantv/ui/view/ActionSheetDialog;->showTitle:Z

    if-eqz v7, :cond_2

    .line 126
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    const v4, 0x7f080061

    .line 128
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 131
    :cond_3
    iget-boolean v7, p0, Lcom/kantv/ui/view/ActionSheetDialog;->showTitle:Z

    const v8, 0x7f08005e

    if-eqz v7, :cond_5

    if-lt v2, v1, :cond_4

    if-ge v2, v0, :cond_4

    .line 133
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 135
    :cond_4
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_5
    if-ne v2, v1, :cond_6

    const v4, 0x7f080064

    .line 139
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_6
    if-ge v2, v0, :cond_7

    .line 141
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 143
    :cond_7
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_1
    if-nez v5, :cond_8

    .line 150
    sget-object v4, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->Blue:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    .line 151
    invoke-virtual {v4}, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->getName()Ljava/lang/String;

    move-result-object v4

    .line 150
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 153
    :cond_8
    invoke-virtual {v5}, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    :goto_2
    iget-object v4, p0, Lcom/kantv/ui/view/ActionSheetDialog;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x42340000    # 45.0f

    mul-float v4, v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 159
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v5, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    new-instance v4, Lcom/kantv/ui/view/ActionSheetDialog$2;

    invoke-direct {v4, p0, v3, v2}, Lcom/kantv/ui/view/ActionSheetDialog$2;-><init>(Lcom/kantv/ui/view/ActionSheetDialog;Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;I)V

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v3, p0, Lcom/kantv/ui/view/ActionSheetDialog;->lLayout_content:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    :goto_3
    return-void
.end method


# virtual methods
.method public addSheetItem(Ljava/lang/String;Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;)Lcom/kantv/ui/view/ActionSheetDialog;
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/kantv/ui/view/ActionSheetDialog;->sheetItemList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/view/ActionSheetDialog;->sheetItemList:Ljava/util/List;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/view/ActionSheetDialog;->sheetItemList:Ljava/util/List;

    new-instance v1, Lcom/kantv/ui/view/ActionSheetDialog$SheetItem;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/kantv/ui/view/ActionSheetDialog$SheetItem;-><init>(Lcom/kantv/ui/view/ActionSheetDialog;Ljava/lang/String;Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public builder()Lcom/kantv/ui/view/ActionSheetDialog;
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/kantv/ui/view/ActionSheetDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00db

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/kantv/ui/view/ActionSheetDialog;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    const v1, 0x7f0902d7

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/kantv/ui/view/ActionSheetDialog;->sLayout_content:Landroid/widget/ScrollView;

    const v1, 0x7f0901e0

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/kantv/ui/view/ActionSheetDialog;->lLayout_content:Landroid/widget/LinearLayout;

    const v1, 0x7f09039b

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kantv/ui/view/ActionSheetDialog;->txt_title:Landroid/widget/TextView;

    const v1, 0x7f090399

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kantv/ui/view/ActionSheetDialog;->txt_cancel:Landroid/widget/TextView;

    .line 51
    iget-object v1, p0, Lcom/kantv/ui/view/ActionSheetDialog;->txt_cancel:Landroid/widget/TextView;

    new-instance v2, Lcom/kantv/ui/view/ActionSheetDialog$1;

    invoke-direct {v2, p0}, Lcom/kantv/ui/view/ActionSheetDialog$1;-><init>(Lcom/kantv/ui/view/ActionSheetDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/kantv/ui/view/ActionSheetDialog;->context:Landroid/content/Context;

    const v3, 0x7f100001

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/kantv/ui/view/ActionSheetDialog;->dialog:Landroid/app/Dialog;

    .line 59
    iget-object v1, p0, Lcom/kantv/ui/view/ActionSheetDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Lcom/kantv/ui/view/ActionSheetDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x53

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 62
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    .line 63
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 64
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-object p0
.end method

.method public setCancelable(Z)Lcom/kantv/ui/view/ActionSheetDialog;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/kantv/ui/view/ActionSheetDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/kantv/ui/view/ActionSheetDialog;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/kantv/ui/view/ActionSheetDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/ActionSheetDialog;
    .locals 2

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/kantv/ui/view/ActionSheetDialog;->showTitle:Z

    .line 71
    iget-object v0, p0, Lcom/kantv/ui/view/ActionSheetDialog;->txt_title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/kantv/ui/view/ActionSheetDialog;->txt_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public show()V
    .locals 1

    .line 176
    invoke-direct {p0}, Lcom/kantv/ui/view/ActionSheetDialog;->setSheetItems()V

    .line 177
    iget-object v0, p0, Lcom/kantv/ui/view/ActionSheetDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
