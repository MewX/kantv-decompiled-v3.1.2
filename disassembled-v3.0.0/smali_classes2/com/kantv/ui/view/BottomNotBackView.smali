.class public Lcom/kantv/ui/view/BottomNotBackView;
.super Ljava/lang/Object;
.source "BottomNotBackView.java"


# instance fields
.field private animationStyle:I

.field private bv:Landroid/app/Dialog;

.field private context:Landroid/content/Context;

.field private convertView:Landroid/view/View;

.field private isTop:Z

.field private keylistener:Landroid/content/DialogInterface$OnKeyListener;

.field private theme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/kantv/ui/view/BottomNotBackView;->isTop:Z

    .line 67
    new-instance v0, Lcom/kantv/ui/view/BottomNotBackView$1;

    invoke-direct {v0, p0}, Lcom/kantv/ui/view/BottomNotBackView$1;-><init>(Lcom/kantv/ui/view/BottomNotBackView;)V

    iput-object v0, p0, Lcom/kantv/ui/view/BottomNotBackView;->keylistener:Landroid/content/DialogInterface$OnKeyListener;

    .line 31
    iput p2, p0, Lcom/kantv/ui/view/BottomNotBackView;->theme:I

    .line 32
    iput-object p1, p0, Lcom/kantv/ui/view/BottomNotBackView;->context:Landroid/content/Context;

    const/4 p2, 0x0

    .line 33
    check-cast p2, Landroid/view/ViewGroup;

    invoke-static {p1, p3, p2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/view/BottomNotBackView;->convertView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/view/View;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/kantv/ui/view/BottomNotBackView;->isTop:Z

    .line 67
    new-instance v0, Lcom/kantv/ui/view/BottomNotBackView$1;

    invoke-direct {v0, p0}, Lcom/kantv/ui/view/BottomNotBackView$1;-><init>(Lcom/kantv/ui/view/BottomNotBackView;)V

    iput-object v0, p0, Lcom/kantv/ui/view/BottomNotBackView;->keylistener:Landroid/content/DialogInterface$OnKeyListener;

    .line 25
    iput p2, p0, Lcom/kantv/ui/view/BottomNotBackView;->theme:I

    .line 26
    iput-object p1, p0, Lcom/kantv/ui/view/BottomNotBackView;->context:Landroid/content/Context;

    .line 27
    iput-object p3, p0, Lcom/kantv/ui/view/BottomNotBackView;->convertView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public dismissBottomView()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/kantv/ui/view/BottomNotBackView;->bv:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/kantv/ui/view/BottomNotBackView;->convertView:Landroid/view/View;

    return-object v0
.end method

.method public setAnimation(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/kantv/ui/view/BottomNotBackView;->animationStyle:I

    return-void
.end method

.method public setTopIfNecessary()V
    .locals 1

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/kantv/ui/view/BottomNotBackView;->isTop:Z

    return-void
.end method

.method public showBottomView(Z)V
    .locals 3

    .line 37
    iget v0, p0, Lcom/kantv/ui/view/BottomNotBackView;->theme:I

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/kantv/ui/view/BottomNotBackView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kantv/ui/view/BottomNotBackView;->bv:Landroid/app/Dialog;

    goto :goto_0

    .line 40
    :cond_0
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/kantv/ui/view/BottomNotBackView;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/kantv/ui/view/BottomNotBackView;->bv:Landroid/app/Dialog;

    .line 43
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/view/BottomNotBackView;->bv:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 44
    iget-object p1, p0, Lcom/kantv/ui/view/BottomNotBackView;->bv:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 45
    iget-object p1, p0, Lcom/kantv/ui/view/BottomNotBackView;->bv:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/kantv/ui/view/BottomNotBackView;->convertView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 46
    iget-object p1, p0, Lcom/kantv/ui/view/BottomNotBackView;->bv:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/kantv/ui/view/BottomNotBackView;->keylistener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 47
    iget-object p1, p0, Lcom/kantv/ui/view/BottomNotBackView;->bv:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 49
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 50
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 51
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 52
    iget-boolean v0, p0, Lcom/kantv/ui/view/BottomNotBackView;->isTop:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x30

    .line 53
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1

    :cond_1
    const/16 v0, 0x50

    .line 55
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 58
    :goto_1
    iget v0, p0, Lcom/kantv/ui/view/BottomNotBackView;->animationStyle:I

    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 62
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 63
    iget-object p1, p0, Lcom/kantv/ui/view/BottomNotBackView;->bv:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
