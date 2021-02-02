.class public Lcom/tandong/bottomview/view/BottomView;
.super Ljava/lang/Object;
.source "BottomView.java"


# instance fields
.field private animationStyle:I

.field private bv:Landroid/app/Dialog;

.field private context:Landroid/content/Context;

.field private convertView:Landroid/view/View;

.field private isTop:Z

.field private theme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/tandong/bottomview/view/BottomView;->isTop:Z

    .line 32
    iput p2, p0, Lcom/tandong/bottomview/view/BottomView;->theme:I

    .line 33
    iput-object p1, p0, Lcom/tandong/bottomview/view/BottomView;->context:Landroid/content/Context;

    const/4 p2, 0x0

    .line 34
    invoke-static {p1, p3, p2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tandong/bottomview/view/BottomView;->convertView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/view/View;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/tandong/bottomview/view/BottomView;->isTop:Z

    .line 26
    iput p2, p0, Lcom/tandong/bottomview/view/BottomView;->theme:I

    .line 27
    iput-object p1, p0, Lcom/tandong/bottomview/view/BottomView;->context:Landroid/content/Context;

    .line 28
    iput-object p3, p0, Lcom/tandong/bottomview/view/BottomView;->convertView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public dismissBottomView()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/tandong/bottomview/view/BottomView;->bv:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/tandong/bottomview/view/BottomView;->convertView:Landroid/view/View;

    return-object v0
.end method

.method public setAnimation(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/tandong/bottomview/view/BottomView;->animationStyle:I

    return-void
.end method

.method public setTopIfNecessary()V
    .locals 1

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/tandong/bottomview/view/BottomView;->isTop:Z

    return-void
.end method

.method public showBottomView(Z)V
    .locals 3

    .line 38
    iget v0, p0, Lcom/tandong/bottomview/view/BottomView;->theme:I

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/tandong/bottomview/view/BottomView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tandong/bottomview/view/BottomView;->bv:Landroid/app/Dialog;

    goto :goto_0

    .line 41
    :cond_0
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/tandong/bottomview/view/BottomView;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/tandong/bottomview/view/BottomView;->bv:Landroid/app/Dialog;

    .line 43
    :goto_0
    iget-object v0, p0, Lcom/tandong/bottomview/view/BottomView;->bv:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 44
    iget-object p1, p0, Lcom/tandong/bottomview/view/BottomView;->bv:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 45
    iget-object p1, p0, Lcom/tandong/bottomview/view/BottomView;->bv:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/tandong/bottomview/view/BottomView;->convertView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 46
    iget-object p1, p0, Lcom/tandong/bottomview/view/BottomView;->bv:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 48
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 49
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 50
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 51
    iget-boolean v0, p0, Lcom/tandong/bottomview/view/BottomView;->isTop:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x30

    .line 52
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1

    :cond_1
    const/16 v0, 0x50

    .line 54
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 56
    :goto_1
    iget v0, p0, Lcom/tandong/bottomview/view/BottomView;->animationStyle:I

    if-eqz v0, :cond_2

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 60
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 61
    iget-object p1, p0, Lcom/tandong/bottomview/view/BottomView;->bv:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
