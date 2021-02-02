.class Lcom/kantv/lib/verifyedittext/HelperEditText$MyInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "HelperEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/lib/verifyedittext/HelperEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyInputConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/lib/verifyedittext/HelperEditText;


# direct methods
.method public constructor <init>(Lcom/kantv/lib/verifyedittext/HelperEditText;Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/kantv/lib/verifyedittext/HelperEditText$MyInputConnection;->this$0:Lcom/kantv/lib/verifyedittext/HelperEditText;

    .line 42
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public deleteSurroundingText(II)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    move-result p1

    return p1

    .line 59
    :cond_1
    :goto_0
    new-instance p1, Landroid/view/KeyEvent;

    const/16 p2, 0x43

    const/4 v1, 0x0

    invoke-direct {p1, v1, p2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/kantv/lib/verifyedittext/HelperEditText$MyInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Landroid/view/KeyEvent;

    invoke-direct {p1, v0, p2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/kantv/lib/verifyedittext/HelperEditText$MyInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/kantv/lib/verifyedittext/HelperEditText$MyInputConnection;->this$0:Lcom/kantv/lib/verifyedittext/HelperEditText;

    invoke-static {v0}, Lcom/kantv/lib/verifyedittext/HelperEditText;->access$000(Lcom/kantv/lib/verifyedittext/HelperEditText;)Landroid/view/View$OnKeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/kantv/lib/verifyedittext/HelperEditText$MyInputConnection;->this$0:Lcom/kantv/lib/verifyedittext/HelperEditText;

    invoke-static {v0}, Lcom/kantv/lib/verifyedittext/HelperEditText;->access$000(Lcom/kantv/lib/verifyedittext/HelperEditText;)Landroid/view/View$OnKeyListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/lib/verifyedittext/HelperEditText$MyInputConnection;->this$0:Lcom/kantv/lib/verifyedittext/HelperEditText;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 51
    :cond_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
