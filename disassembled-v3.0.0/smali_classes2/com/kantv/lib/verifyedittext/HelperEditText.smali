.class public Lcom/kantv/lib/verifyedittext/HelperEditText;
.super Landroid/support/v7/widget/AppCompatEditText;
.source "HelperEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/lib/verifyedittext/HelperEditText$MyInputConnection;
    }
.end annotation


# instance fields
.field private keyListener:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/lib/verifyedittext/HelperEditText;)Landroid/view/View$OnKeyListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/kantv/lib/verifyedittext/HelperEditText;->keyListener:Landroid/view/View$OnKeyListener;

    return-object p0
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 34
    new-instance v0, Lcom/kantv/lib/verifyedittext/HelperEditText$MyInputConnection;

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/kantv/lib/verifyedittext/HelperEditText$MyInputConnection;-><init>(Lcom/kantv/lib/verifyedittext/HelperEditText;Landroid/view/inputmethod/InputConnection;Z)V

    return-object v0
.end method

.method public setDeleteEventListener(Landroid/view/View$OnKeyListener;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/kantv/lib/verifyedittext/HelperEditText;->keyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method
