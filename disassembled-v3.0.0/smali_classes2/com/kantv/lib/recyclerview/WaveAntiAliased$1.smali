.class Lcom/kantv/lib/recyclerview/WaveAntiAliased$1;
.super Ljava/lang/Object;
.source "WaveAntiAliased.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/lib/recyclerview/WaveAntiAliased;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/lib/recyclerview/WaveAntiAliased;


# direct methods
.method constructor <init>(Lcom/kantv/lib/recyclerview/WaveAntiAliased;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased$1;->this$0:Lcom/kantv/lib/recyclerview/WaveAntiAliased;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased$1;->this$0:Lcom/kantv/lib/recyclerview/WaveAntiAliased;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {v0, p1}, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->access$002(Lcom/kantv/lib/recyclerview/WaveAntiAliased;F)F

    .line 82
    iget-object p1, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased$1;->this$0:Lcom/kantv/lib/recyclerview/WaveAntiAliased;

    invoke-virtual {p1}, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->invalidate()V

    return-void
.end method
