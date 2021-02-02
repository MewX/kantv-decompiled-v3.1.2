.class Lcom/transitionseverywhere/ChangeText$6;
.super Lcom/transitionseverywhere/Transition$TransitionListenerAdapter;
.source "ChangeText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transitionseverywhere/ChangeText;->createAnimator(Landroid/view/ViewGroup;Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mPausedColor:I

.field final synthetic this$0:Lcom/transitionseverywhere/ChangeText;

.field final synthetic val$endColor:I

.field final synthetic val$endSelectionEnd:I

.field final synthetic val$endSelectionStart:I

.field final synthetic val$endText:Ljava/lang/CharSequence;

.field final synthetic val$startSelectionEnd:I

.field final synthetic val$startSelectionStart:I

.field final synthetic val$startText:Ljava/lang/CharSequence;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/transitionseverywhere/ChangeText;Landroid/widget/TextView;Ljava/lang/CharSequence;IIILjava/lang/CharSequence;II)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/transitionseverywhere/ChangeText$6;->this$0:Lcom/transitionseverywhere/ChangeText;

    iput-object p2, p0, Lcom/transitionseverywhere/ChangeText$6;->val$view:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/transitionseverywhere/ChangeText$6;->val$endText:Ljava/lang/CharSequence;

    iput p4, p0, Lcom/transitionseverywhere/ChangeText$6;->val$endSelectionStart:I

    iput p5, p0, Lcom/transitionseverywhere/ChangeText$6;->val$endSelectionEnd:I

    iput p6, p0, Lcom/transitionseverywhere/ChangeText$6;->val$endColor:I

    iput-object p7, p0, Lcom/transitionseverywhere/ChangeText$6;->val$startText:Ljava/lang/CharSequence;

    iput p8, p0, Lcom/transitionseverywhere/ChangeText$6;->val$startSelectionStart:I

    iput p9, p0, Lcom/transitionseverywhere/ChangeText$6;->val$startSelectionEnd:I

    invoke-direct {p0}, Lcom/transitionseverywhere/Transition$TransitionListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 269
    iput p1, p0, Lcom/transitionseverywhere/ChangeText$6;->mPausedColor:I

    return-void
.end method


# virtual methods
.method public onTransitionPause(Lcom/transitionseverywhere/Transition;)V
    .locals 3

    .line 273
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeText$6;->this$0:Lcom/transitionseverywhere/ChangeText;

    invoke-static {p1}, Lcom/transitionseverywhere/ChangeText;->access$100(Lcom/transitionseverywhere/ChangeText;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 274
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeText$6;->val$view:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transitionseverywhere/ChangeText$6;->val$endText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeText$6;->val$view:Landroid/widget/TextView;

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/transitionseverywhere/ChangeText$6;->this$0:Lcom/transitionseverywhere/ChangeText;

    check-cast p1, Landroid/widget/EditText;

    iget v1, p0, Lcom/transitionseverywhere/ChangeText$6;->val$endSelectionStart:I

    iget v2, p0, Lcom/transitionseverywhere/ChangeText$6;->val$endSelectionEnd:I

    invoke-static {v0, p1, v1, v2}, Lcom/transitionseverywhere/ChangeText;->access$000(Lcom/transitionseverywhere/ChangeText;Landroid/widget/EditText;II)V

    .line 279
    :cond_0
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeText$6;->this$0:Lcom/transitionseverywhere/ChangeText;

    invoke-static {p1}, Lcom/transitionseverywhere/ChangeText;->access$100(Lcom/transitionseverywhere/ChangeText;)I

    move-result p1

    if-lez p1, :cond_1

    .line 280
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeText$6;->val$view:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    iput p1, p0, Lcom/transitionseverywhere/ChangeText$6;->mPausedColor:I

    .line 281
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeText$6;->val$view:Landroid/widget/TextView;

    iget v0, p0, Lcom/transitionseverywhere/ChangeText$6;->val$endColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public onTransitionResume(Lcom/transitionseverywhere/Transition;)V
    .locals 3

    .line 287
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeText$6;->this$0:Lcom/transitionseverywhere/ChangeText;

    invoke-static {p1}, Lcom/transitionseverywhere/ChangeText;->access$100(Lcom/transitionseverywhere/ChangeText;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 288
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeText$6;->val$view:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transitionseverywhere/ChangeText$6;->val$startText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeText$6;->val$view:Landroid/widget/TextView;

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/transitionseverywhere/ChangeText$6;->this$0:Lcom/transitionseverywhere/ChangeText;

    check-cast p1, Landroid/widget/EditText;

    iget v1, p0, Lcom/transitionseverywhere/ChangeText$6;->val$startSelectionStart:I

    iget v2, p0, Lcom/transitionseverywhere/ChangeText$6;->val$startSelectionEnd:I

    invoke-static {v0, p1, v1, v2}, Lcom/transitionseverywhere/ChangeText;->access$000(Lcom/transitionseverywhere/ChangeText;Landroid/widget/EditText;II)V

    .line 293
    :cond_0
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeText$6;->this$0:Lcom/transitionseverywhere/ChangeText;

    invoke-static {p1}, Lcom/transitionseverywhere/ChangeText;->access$100(Lcom/transitionseverywhere/ChangeText;)I

    move-result p1

    if-lez p1, :cond_1

    .line 294
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeText$6;->val$view:Landroid/widget/TextView;

    iget v0, p0, Lcom/transitionseverywhere/ChangeText$6;->mPausedColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method
