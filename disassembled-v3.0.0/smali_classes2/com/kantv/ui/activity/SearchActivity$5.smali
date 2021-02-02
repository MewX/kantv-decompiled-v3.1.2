.class Lcom/kantv/ui/activity/SearchActivity$5;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/SearchActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/SearchActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/SearchActivity;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/kantv/ui/activity/SearchActivity$5;->this$0:Lcom/kantv/ui/activity/SearchActivity;

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

    .line 211
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchActivity$5;->this$0:Lcom/kantv/ui/activity/SearchActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/SearchActivity;->mSearchEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 212
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchActivity$5;->this$0:Lcom/kantv/ui/activity/SearchActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/SearchActivity;->searchDeleteImg:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 214
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchActivity$5;->this$0:Lcom/kantv/ui/activity/SearchActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/SearchActivity;->searchDeleteImg:Landroid/widget/ImageView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
