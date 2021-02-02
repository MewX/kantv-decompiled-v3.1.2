.class Lcom/kantv/lib/verifyedittext/VerifyEditText$2;
.super Ljava/lang/Object;
.source "VerifyEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 181
    iput-object p1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText$2;->this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    const/4 p1, 0x0

    .line 185
    :goto_0
    iget-object p2, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText$2;->this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    iget-object p2, p2, Lcom/kantv/lib/verifyedittext/VerifyEditText;->editTextList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 186
    iget-object p2, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText$2;->this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    iget-object p2, p2, Lcom/kantv/lib/verifyedittext/VerifyEditText;->editTextList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kantv/lib/verifyedittext/HelperEditText;

    invoke-virtual {p2}, Lcom/kantv/lib/verifyedittext/HelperEditText;->isFocused()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 187
    iget-object p2, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText$2;->this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    invoke-static {p2, p1}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->access$002(Lcom/kantv/lib/verifyedittext/VerifyEditText;I)I

    .line 189
    :cond_0
    iget-object p2, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText$2;->this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    invoke-static {p2}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->access$200(Lcom/kantv/lib/verifyedittext/VerifyEditText;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 190
    iget-object p2, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText$2;->this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    invoke-static {p2}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->access$400(Lcom/kantv/lib/verifyedittext/VerifyEditText;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    iget-object v0, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText$2;->this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    invoke-static {v0}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->access$300(Lcom/kantv/lib/verifyedittext/VerifyEditText;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 193
    :cond_2
    iget-object p1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText$2;->this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    invoke-static {p1}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->access$200(Lcom/kantv/lib/verifyedittext/VerifyEditText;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 194
    iget-object p1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText$2;->this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    invoke-static {p1}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->access$400(Lcom/kantv/lib/verifyedittext/VerifyEditText;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText$2;->this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    invoke-static {p2}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->access$000(Lcom/kantv/lib/verifyedittext/VerifyEditText;)I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object p2, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText$2;->this$0:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    invoke-static {p2}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->access$500(Lcom/kantv/lib/verifyedittext/VerifyEditText;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    return-void
.end method
