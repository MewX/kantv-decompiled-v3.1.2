.class public Lcom/kantv/ui/samsung/TVListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TVListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/samsung/TVListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/samsung/multiscreen/Service;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const-string v0, "layout_inflater"

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/kantv/ui/samsung/TVListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 25
    iput p2, p0, Lcom/kantv/ui/samsung/TVListAdapter;->mLayoutResourceId:I

    const-string p2, "layout_inflater"

    .line 26
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/kantv/ui/samsung/TVListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public contains(Lcom/samsung/multiscreen/Service;)Z
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/kantv/ui/samsung/TVListAdapter;->getPosition(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 62
    new-instance p2, Lcom/kantv/ui/samsung/TVListAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/kantv/ui/samsung/TVListAdapter$ViewHolder;-><init>(Lcom/kantv/ui/samsung/TVListAdapter;Lcom/kantv/ui/samsung/TVListAdapter$1;)V

    .line 64
    iget-object v0, p0, Lcom/kantv/ui/samsung/TVListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c005c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0901f1

    .line 65
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/kantv/ui/samsung/TVListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 67
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/kantv/ui/samsung/TVListAdapter$ViewHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 74
    :goto_0
    invoke-virtual {p0, p1}, Lcom/kantv/ui/samsung/TVListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/multiscreen/Service;

    if-nez p1, :cond_1

    return-object p3

    .line 76
    :cond_1
    iget-object p2, p2, Lcom/kantv/ui/samsung/TVListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Service;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method

.method public replace(Lcom/samsung/multiscreen/Service;)V
    .locals 1

    .line 42
    invoke-virtual {p0, p1}, Lcom/kantv/ui/samsung/TVListAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 45
    invoke-virtual {p0, p1}, Lcom/kantv/ui/samsung/TVListAdapter;->remove(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/kantv/ui/samsung/TVListAdapter;->insert(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method
