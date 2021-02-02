.class Lcom/kantv/ui/activity/NewsDetailActivity$20$2;
.super Lcom/kantv/ui/adapter/CommonAdapter;
.source "NewsDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/NewsDetailActivity$20;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/CommentChildBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kantv/ui/adapter/CommonAdapter<",
        "Lcom/kantv/ui/bean/String8Bean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/NewsDetailActivity$20;

.field final synthetic val$replyLength:I


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/NewsDetailActivity$20;Landroid/content/Context;ILjava/util/List;I)V
    .locals 0

    .line 1515
    iput-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$20$2;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$20;

    iput p5, p0, Lcom/kantv/ui/activity/NewsDetailActivity$20$2;->val$replyLength:I

    invoke-direct {p0, p2, p3, p4}, Lcom/kantv/ui/adapter/CommonAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String8Bean;I)V
    .locals 2

    .line 1518
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String8Bean;->getStr8()Ljava/lang/String;

    move-result-object p3

    const-string v0, "0"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const v0, 0x7f0901c5

    if-eqz p3, :cond_0

    .line 1519
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/kantv/ui/bean/String8Bean;->getStr1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  \u56de\u590d  "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/kantv/ui/bean/String8Bean;->getStr2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff1a"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/kantv/ui/bean/String8Bean;->getStr3()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    goto :goto_0

    .line 1520
    :cond_0
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String8Bean;->getStr8()Ljava/lang/String;

    move-result-object p2

    const-string p3, "1"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1521
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u5171"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/kantv/ui/activity/NewsDetailActivity$20$2;->val$replyLength:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\u6761\u56de\u590d"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 1522
    iget-object p2, p0, Lcom/kantv/ui/activity/NewsDetailActivity$20$2;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$20;

    iget-object p2, p2, Lcom/kantv/ui/activity/NewsDetailActivity$20;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-virtual {p2}, Lcom/kantv/ui/activity/NewsDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0600a8

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/adapter/ViewHolder;->setTextColor(II)Lcom/kantv/ui/adapter/ViewHolder;

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 1515
    check-cast p2, Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kantv/ui/activity/NewsDetailActivity$20$2;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String8Bean;I)V

    return-void
.end method
