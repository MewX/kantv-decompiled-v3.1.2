.class Lcom/transitionseverywhere/utils/ViewGroupUtils$BaseViewGroupUtils$2;
.super Ljava/lang/Object;
.source "ViewGroupUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transitionseverywhere/utils/ViewGroupUtils$BaseViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transitionseverywhere/utils/ViewGroupUtils$BaseViewGroupUtils;

.field final synthetic val$group:Landroid/view/ViewGroup;

.field final synthetic val$layoutTransition:Landroid/animation/LayoutTransition;


# direct methods
.method constructor <init>(Lcom/transitionseverywhere/utils/ViewGroupUtils$BaseViewGroupUtils;Landroid/view/ViewGroup;Landroid/animation/LayoutTransition;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/transitionseverywhere/utils/ViewGroupUtils$BaseViewGroupUtils$2;->this$0:Lcom/transitionseverywhere/utils/ViewGroupUtils$BaseViewGroupUtils;

    iput-object p2, p0, Lcom/transitionseverywhere/utils/ViewGroupUtils$BaseViewGroupUtils$2;->val$group:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/transitionseverywhere/utils/ViewGroupUtils$BaseViewGroupUtils$2;->val$layoutTransition:Landroid/animation/LayoutTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/transitionseverywhere/utils/ViewGroupUtils$BaseViewGroupUtils$2;->val$group:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transitionseverywhere/utils/ViewGroupUtils$BaseViewGroupUtils$2;->val$layoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method
