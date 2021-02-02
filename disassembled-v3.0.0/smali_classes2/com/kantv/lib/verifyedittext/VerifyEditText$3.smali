.class Lcom/kantv/lib/verifyedittext/VerifyEditText$3;
.super Ljava/lang/Object;
.source "VerifyEditText.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/lib/verifyedittext/VerifyEditText;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;


# direct methods
.method constructor <init>(Lcom/kantv/lib/verifyedittext/VerifyEditText;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText$3;->this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0x43

    if-ne p2, p1, :cond_4

    .line 205
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    return p2

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText$3;->this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    iget-object p1, p1, Lcom/kantv/lib/verifyedittext/VerifyEditText;->editTextList:Ljava/util/List;

    iget-object p3, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText$3;->this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    invoke-static {p3}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->access$000(Lcom/kantv/lib/verifyedittext/VerifyEditText;)I

    move-result p3

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/lib/verifyedittext/HelperEditText;

    invoke-virtual {p1}, Lcom/kantv/lib/verifyedittext/HelperEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 209
    iget-object p1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText$3;->this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    invoke-static {p1}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->access$000(Lcom/kantv/lib/verifyedittext/VerifyEditText;)I

    move-result p1

    if-gtz p1, :cond_1

    return p2

    .line 213
    :cond_1
    iget-object p1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText$3;->this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    invoke-static {p1}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->access$000(Lcom/kantv/lib/verifyedittext/VerifyEditText;)I

    move-result p1

    :goto_0
    if-ltz p1, :cond_3

    .line 214
    iget-object p3, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText$3;->this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    invoke-static {p3, p1}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->access$002(Lcom/kantv/lib/verifyedittext/VerifyEditText;I)I

    .line 215
    iget-object p3, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText$3;->this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    iget-object p3, p3, Lcom/kantv/lib/verifyedittext/VerifyEditText;->editTextList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/kantv/lib/verifyedittext/HelperEditText;

    invoke-virtual {p3}, Lcom/kantv/lib/verifyedittext/HelperEditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 220
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText$3;->this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    iget-object p1, p1, Lcom/kantv/lib/verifyedittext/VerifyEditText;->editTextList:Ljava/util/List;

    iget-object p3, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText$3;->this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    invoke-static {p3}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->access$000(Lcom/kantv/lib/verifyedittext/VerifyEditText;)I

    move-result p3

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/lib/verifyedittext/HelperEditText;

    invoke-virtual {p1}, Lcom/kantv/lib/verifyedittext/HelperEditText;->requestFocus()Z

    .line 221
    iget-object p1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText$3;->this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    iget-object p1, p1, Lcom/kantv/lib/verifyedittext/VerifyEditText;->editTextList:Ljava/util/List;

    iget-object p3, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText$3;->this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    invoke-static {p3}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->access$000(Lcom/kantv/lib/verifyedittext/VerifyEditText;)I

    move-result p3

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/lib/verifyedittext/HelperEditText;

    invoke-virtual {p1}, Lcom/kantv/lib/verifyedittext/HelperEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    return p2

    :cond_4
    const/4 p1, 0x0

    return p1
.end method
