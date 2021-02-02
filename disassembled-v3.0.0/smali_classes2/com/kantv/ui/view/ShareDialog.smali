.class public Lcom/kantv/ui/view/ShareDialog;
.super Landroid/app/Dialog;
.source "ShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/view/ShareDialog$onClickback;
    }
.end annotation


# instance fields
.field private callback:Lcom/kantv/ui/view/ShareDialog$onClickback;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 29
    invoke-virtual {p0}, Lcom/kantv/ui/view/ShareDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c005f

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    .line 30
    invoke-virtual {p0, p2}, Lcom/kantv/ui/view/ShareDialog;->setCanceledOnTouchOutside(Z)V

    .line 31
    invoke-direct {p0, p1}, Lcom/kantv/ui/view/ShareDialog;->setListener(Landroid/view/View;)V

    .line 32
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/kantv/ui/view/ShareDialog$onClickback;)V
    .locals 1

    const v0, 0x7f1000d7

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/view/ShareDialog;-><init>(Landroid/content/Context;I)V

    .line 23
    iput-object p2, p0, Lcom/kantv/ui/view/ShareDialog;->callback:Lcom/kantv/ui/view/ShareDialog$onClickback;

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/view/ShareDialog;)Lcom/kantv/ui/view/ShareDialog$onClickback;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/kantv/ui/view/ShareDialog;->callback:Lcom/kantv/ui/view/ShareDialog$onClickback;

    return-object p0
.end method

.method private setListener(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0900dd

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/view/ShareDialog$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/view/ShareDialog$1;-><init>(Lcom/kantv/ui/view/ShareDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900de

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/view/ShareDialog$2;

    invoke-direct {v1, p0}, Lcom/kantv/ui/view/ShareDialog$2;-><init>(Lcom/kantv/ui/view/ShareDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900df

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/view/ShareDialog$3;

    invoke-direct {v1, p0}, Lcom/kantv/ui/view/ShareDialog$3;-><init>(Lcom/kantv/ui/view/ShareDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900e0

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/view/ShareDialog$4;

    invoke-direct {v1, p0}, Lcom/kantv/ui/view/ShareDialog$4;-><init>(Lcom/kantv/ui/view/ShareDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900e1

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/view/ShareDialog$5;

    invoke-direct {v1, p0}, Lcom/kantv/ui/view/ShareDialog$5;-><init>(Lcom/kantv/ui/view/ShareDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900e2

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/view/ShareDialog$6;

    invoke-direct {v1, p0}, Lcom/kantv/ui/view/ShareDialog$6;-><init>(Lcom/kantv/ui/view/ShareDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900e3

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/kantv/ui/view/ShareDialog$7;

    invoke-direct {v0, p0}, Lcom/kantv/ui/view/ShareDialog$7;-><init>(Lcom/kantv/ui/view/ShareDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 37
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/kantv/ui/view/ShareDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public show()V
    .locals 0

    .line 110
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
