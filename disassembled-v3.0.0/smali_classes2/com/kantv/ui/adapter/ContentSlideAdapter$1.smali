.class Lcom/kantv/ui/adapter/ContentSlideAdapter$1;
.super Ljava/lang/Object;
.source "ContentSlideAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/adapter/ContentSlideAdapter;->onBindViewHolder(Lcom/kantv/ui/adapter/ContentSliderVH;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/adapter/ContentSlideAdapter;

.field final synthetic val$finalPosition:I


# direct methods
.method constructor <init>(Lcom/kantv/ui/adapter/ContentSlideAdapter;I)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter$1;->this$0:Lcom/kantv/ui/adapter/ContentSlideAdapter;

    iput p2, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter$1;->val$finalPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 139
    iget-object p1, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter$1;->this$0:Lcom/kantv/ui/adapter/ContentSlideAdapter;

    invoke-static {p1}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->access$000(Lcom/kantv/ui/adapter/ContentSlideAdapter;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/MainActivity;

    .line 140
    iget-object v0, p1, Lcom/kantv/ui/MainActivity;->mTabTvFragment:Lcom/kantv/ui/fragment/TabTvFragment;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 141
    :goto_0
    iget-object v1, p1, Lcom/kantv/ui/MainActivity;->mTabTvFragment:Lcom/kantv/ui/fragment/TabTvFragment;

    iget-object v1, v1, Lcom/kantv/ui/fragment/TabTvFragment;->mNavData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter$1;->this$0:Lcom/kantv/ui/adapter/ContentSlideAdapter;

    invoke-static {v1}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->access$100(Lcom/kantv/ui/adapter/ContentSlideAdapter;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter$1;->this$0:Lcom/kantv/ui/adapter/ContentSlideAdapter;

    invoke-static {v1}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->access$100(Lcom/kantv/ui/adapter/ContentSlideAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter$1;->val$finalPosition:I

    if-le v1, v2, :cond_0

    .line 143
    iget-object v1, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter$1;->this$0:Lcom/kantv/ui/adapter/ContentSlideAdapter;

    invoke-static {v1}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->access$100(Lcom/kantv/ui/adapter/ContentSlideAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter$1;->val$finalPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/kantv/ui/MainActivity;->mTabTvFragment:Lcom/kantv/ui/fragment/TabTvFragment;

    iget-object v2, v2, Lcom/kantv/ui/fragment/TabTvFragment;->mNavData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/NavBean;

    invoke-virtual {v2}, Lcom/kantv/ui/bean/NavBean;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p1, Lcom/kantv/ui/MainActivity;->mTabTvFragment:Lcom/kantv/ui/fragment/TabTvFragment;

    iget-object v1, v1, Lcom/kantv/ui/fragment/TabTvFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
