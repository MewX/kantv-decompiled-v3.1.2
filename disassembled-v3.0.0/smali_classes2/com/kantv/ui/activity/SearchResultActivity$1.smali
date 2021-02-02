.class Lcom/kantv/ui/activity/SearchResultActivity$1;
.super Ljava/lang/Object;
.source "SearchResultActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/SearchResultActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/SearchResultActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/SearchResultActivity;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity$1;->this$0:Lcom/kantv/ui/activity/SearchResultActivity;

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

    .line 89
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity$1;->this$0:Lcom/kantv/ui/activity/SearchResultActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/SearchResultActivity;->searchEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity$1;->this$0:Lcom/kantv/ui/activity/SearchResultActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/SearchResultActivity;->searchDeleteImg:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity$1;->this$0:Lcom/kantv/ui/activity/SearchResultActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/SearchResultActivity;->searchDeleteImg:Landroid/widget/ImageView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
