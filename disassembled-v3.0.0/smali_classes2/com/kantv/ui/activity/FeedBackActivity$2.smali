.class Lcom/kantv/ui/activity/FeedBackActivity$2;
.super Ljava/lang/Object;
.source "FeedBackActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/FeedBackActivity;->initTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/FeedBackActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/FeedBackActivity;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/kantv/ui/activity/FeedBackActivity$2;->this$0:Lcom/kantv/ui/activity/FeedBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 128
    iget-object p1, p0, Lcom/kantv/ui/activity/FeedBackActivity$2;->this$0:Lcom/kantv/ui/activity/FeedBackActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/FeedBackActivity;->mEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/kantv/ui/activity/FeedBackActivity$2;->this$0:Lcom/kantv/ui/activity/FeedBackActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/FeedBackActivity;->titleRightTxt:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/kantv/ui/activity/FeedBackActivity$2;->this$0:Lcom/kantv/ui/activity/FeedBackActivity;

    invoke-virtual {p2}, Lcom/kantv/ui/activity/FeedBackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0600bd

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/FeedBackActivity$2;->this$0:Lcom/kantv/ui/activity/FeedBackActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/FeedBackActivity;->titleRightTxt:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/kantv/ui/activity/FeedBackActivity$2;->this$0:Lcom/kantv/ui/activity/FeedBackActivity;

    invoke-virtual {p2}, Lcom/kantv/ui/activity/FeedBackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f06005c

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method
