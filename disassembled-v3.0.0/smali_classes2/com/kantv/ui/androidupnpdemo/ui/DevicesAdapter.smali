.class public Lcom/kantv/ui/androidupnpdemo/ui/DevicesAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DevicesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const-string v0, "layout_inflater"

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/DevicesAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 28
    iget-object p2, p0, Lcom/kantv/ui/androidupnpdemo/ui/DevicesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0c005c

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 29
    :cond_0
    invoke-virtual {p0, p1}, Lcom/kantv/ui/androidupnpdemo/ui/DevicesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    if-eqz p1, :cond_2

    .line 30
    invoke-virtual {p1}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p1}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1

    const p3, 0x7f0901f0

    .line 36
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v0, 0x7f0800f9

    .line 37
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const p3, 0x7f0901f1

    .line 39
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 40
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-object p2
.end method
