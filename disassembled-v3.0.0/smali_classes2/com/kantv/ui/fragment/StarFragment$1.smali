.class Lcom/kantv/ui/fragment/StarFragment$1;
.super Lcom/kantv/ui/adapter/CommonAdapter;
.source "StarFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/StarFragment;->InItView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kantv/ui/adapter/CommonAdapter<",
        "Lcom/kantv/ui/bean/String12Bean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/StarFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/StarFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/kantv/ui/fragment/StarFragment$1;->this$0:Lcom/kantv/ui/fragment/StarFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/kantv/ui/adapter/CommonAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String12Bean;I)V
    .locals 2

    .line 81
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String12Bean;->getStr3()Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f090182

    invoke-virtual {p1, v0, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 82
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String12Bean;->getStr6()Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f090181

    invoke-virtual {p1, v0, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 83
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String12Bean;->getStr4()Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f09017c

    invoke-virtual {p1, v0, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 84
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String12Bean;->getStr2()Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f09017e

    invoke-virtual {p1, v0, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setImageURL(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 85
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String12Bean;->getStr12()Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f0901cf

    invoke-virtual {p1, v0, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 87
    new-instance p3, Ljava/text/DecimalFormat;

    const-string v0, "0.0"

    invoke-direct {p3, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String12Bean;->getStr7()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 89
    invoke-virtual {p3, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f090180

    .line 90
    invoke-virtual {p1, v0, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 91
    new-instance p3, Lcom/kantv/ui/fragment/StarFragment$1$1;

    invoke-direct {p3, p0, p2}, Lcom/kantv/ui/fragment/StarFragment$1$1;-><init>(Lcom/kantv/ui/fragment/StarFragment$1;Lcom/kantv/ui/bean/String12Bean;)V

    const p2, 0x7f09017f

    invoke-virtual {p1, p2, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/kantv/ui/adapter/ViewHolder;

    return-void
.end method

.method protected bridge synthetic convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 78
    check-cast p2, Lcom/kantv/ui/bean/String12Bean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kantv/ui/fragment/StarFragment$1;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String12Bean;I)V

    return-void
.end method
