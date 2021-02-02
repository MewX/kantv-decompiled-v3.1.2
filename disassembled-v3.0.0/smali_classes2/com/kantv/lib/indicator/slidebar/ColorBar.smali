.class public Lcom/kantv/lib/indicator/slidebar/ColorBar;
.super Ljava/lang/Object;
.source "ColorBar.java"

# interfaces
.implements Lcom/kantv/lib/indicator/slidebar/ScrollBar;


# instance fields
.field protected color:I

.field protected gravity:Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

.field protected height:I

.field protected view:Landroid/view/View;

.field protected width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 18
    sget-object v0, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;->BOTTOM:Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/kantv/lib/indicator/slidebar/ColorBar;-><init>(Landroid/content/Context;IILcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kantv/lib/indicator/slidebar/ColorBar;->view:Landroid/view/View;

    .line 23
    iput p2, p0, Lcom/kantv/lib/indicator/slidebar/ColorBar;->color:I

    .line 24
    iget-object p1, p0, Lcom/kantv/lib/indicator/slidebar/ColorBar;->view:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 25
    iput p3, p0, Lcom/kantv/lib/indicator/slidebar/ColorBar;->height:I

    .line 26
    iput-object p4, p0, Lcom/kantv/lib/indicator/slidebar/ColorBar;->gravity:Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/kantv/lib/indicator/slidebar/ColorBar;->color:I

    return v0
.end method

.method public getGravity()Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/kantv/lib/indicator/slidebar/ColorBar;->gravity:Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    return-object v0
.end method

.method public getHeight(I)I
    .locals 1

    .line 44
    iget v0, p0, Lcom/kantv/lib/indicator/slidebar/ColorBar;->height:I

    if-nez v0, :cond_0

    return p1

    :cond_0
    return v0
.end method

.method public getSlideView()Landroid/view/View;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/kantv/lib/indicator/slidebar/ColorBar;->view:Landroid/view/View;

    return-object v0
.end method

.method public getWidth(I)I
    .locals 1

    .line 56
    iget v0, p0, Lcom/kantv/lib/indicator/slidebar/ColorBar;->width:I

    if-nez v0, :cond_0

    return p1

    :cond_0
    return v0
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 34
    iput p1, p0, Lcom/kantv/lib/indicator/slidebar/ColorBar;->color:I

    .line 35
    iget-object v0, p0, Lcom/kantv/lib/indicator/slidebar/ColorBar;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setGravity(Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/kantv/lib/indicator/slidebar/ColorBar;->gravity:Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/kantv/lib/indicator/slidebar/ColorBar;->height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/kantv/lib/indicator/slidebar/ColorBar;->width:I

    return-void
.end method
