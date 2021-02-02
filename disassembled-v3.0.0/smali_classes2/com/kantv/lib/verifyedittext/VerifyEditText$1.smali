.class Lcom/kantv/lib/verifyedittext/VerifyEditText$1;
.super Ljava/lang/Object;
.source "VerifyEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 158
    iput-object p1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText$1;->this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText$1;->this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    invoke-static {p1}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->access$000(Lcom/kantv/lib/verifyedittext/VerifyEditText;)I

    move-result p1

    iget-object v0, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText$1;->this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    iget-object v0, v0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->editTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    .line 172
    iget-object p1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText$1;->this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    invoke-static {p1}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->access$008(Lcom/kantv/lib/verifyedittext/VerifyEditText;)I

    .line 173
    iget-object p1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText$1;->this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    iget-object p1, p1, Lcom/kantv/lib/verifyedittext/VerifyEditText;->editTextList:Ljava/util/List;

    iget-object v0, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText$1;->this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    invoke-static {v0}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->access$000(Lcom/kantv/lib/verifyedittext/VerifyEditText;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/lib/verifyedittext/HelperEditText;

    invoke-virtual {p1}, Lcom/kantv/lib/verifyedittext/HelperEditText;->requestFocus()Z

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText$1;->this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    invoke-virtual {p1}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->isInputComplete()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText$1;->this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    invoke-static {p1}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->access$100(Lcom/kantv/lib/verifyedittext/VerifyEditText;)Lcom/kantv/lib/verifyedittext/VerifyEditText$inputCompleteListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 176
    iget-object p1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText$1;->this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    invoke-static {p1}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->access$100(Lcom/kantv/lib/verifyedittext/VerifyEditText;)Lcom/kantv/lib/verifyedittext/VerifyEditText$inputCompleteListener;

    move-result-object p1

    iget-object v0, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText$1;->this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    invoke-virtual {v0}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/kantv/lib/verifyedittext/VerifyEditText$inputCompleteListener;->inputComplete(Lcom/kantv/lib/verifyedittext/VerifyEditText;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
