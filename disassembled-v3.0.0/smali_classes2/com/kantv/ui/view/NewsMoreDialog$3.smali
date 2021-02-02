.class Lcom/kantv/ui/view/NewsMoreDialog$3;
.super Ljava/lang/Object;
.source "NewsMoreDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/view/NewsMoreDialog;->setListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/view/NewsMoreDialog;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/kantv/ui/view/NewsMoreDialog;Landroid/view/View;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/kantv/ui/view/NewsMoreDialog$3;->this$0:Lcom/kantv/ui/view/NewsMoreDialog;

    iput-object p2, p0, Lcom/kantv/ui/view/NewsMoreDialog$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 97
    iget-object p1, p0, Lcom/kantv/ui/view/NewsMoreDialog$3;->this$0:Lcom/kantv/ui/view/NewsMoreDialog;

    invoke-static {p1}, Lcom/kantv/ui/view/NewsMoreDialog;->access$000(Lcom/kantv/ui/view/NewsMoreDialog;)Lcom/kantv/ui/view/NewsMoreDialog$onClickback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/kantv/ui/view/NewsMoreDialog$3;->this$0:Lcom/kantv/ui/view/NewsMoreDialog;

    invoke-static {p1}, Lcom/kantv/ui/view/NewsMoreDialog;->access$000(Lcom/kantv/ui/view/NewsMoreDialog;)Lcom/kantv/ui/view/NewsMoreDialog$onClickback;

    move-result-object p1

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Lcom/kantv/ui/view/NewsMoreDialog$onClickback;->onClick(I)V

    .line 98
    :cond_0
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Login_State"

    invoke-static {p1, v1, v0}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 100
    iget-object p1, p0, Lcom/kantv/ui/view/NewsMoreDialog$3;->this$0:Lcom/kantv/ui/view/NewsMoreDialog;

    invoke-static {p1}, Lcom/kantv/ui/view/NewsMoreDialog;->access$100(Lcom/kantv/ui/view/NewsMoreDialog;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f090274

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/kantv/ui/view/NewsMoreDialog$3;->this$0:Lcom/kantv/ui/view/NewsMoreDialog;

    invoke-static {p1}, Lcom/kantv/ui/view/NewsMoreDialog;->access$100(Lcom/kantv/ui/view/NewsMoreDialog;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 101
    iget-object p1, p0, Lcom/kantv/ui/view/NewsMoreDialog$3;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0801f1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object p1, p0, Lcom/kantv/ui/view/NewsMoreDialog$3;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0801f0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method
