.class Lcom/kantv/video/KTVideoPlayer$9$8;
.super Ljava/lang/Object;
.source "KTVideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/video/KTVideoPlayer$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/video/KTVideoPlayer$9;

.field final synthetic val$mVideoMoreBv:Lcom/tandong/bottomview/view/BottomView;


# direct methods
.method constructor <init>(Lcom/kantv/video/KTVideoPlayer$9;Lcom/tandong/bottomview/view/BottomView;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$8;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iput-object p2, p0, Lcom/kantv/video/KTVideoPlayer$9$8;->val$mVideoMoreBv:Lcom/tandong/bottomview/view/BottomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 453
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Login_State"

    invoke-static {p1, v1, v0}, Lcom/kantv/video/util/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 455
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "is_collect"

    invoke-static {p1, v1, v0}, Lcom/kantv/video/util/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 457
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$8;->val$mVideoMoreBv:Lcom/tandong/bottomview/view/BottomView;

    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object p1

    sget v1, Lcom/kantv/video/R$id;->videoset_collect:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/video/KTVideoPlayer$9$8;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iget-object v1, v1, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v1}, Lcom/kantv/video/KTVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/kantv/video/R$drawable;->videoset_collection:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 459
    :cond_0
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$8;->val$mVideoMoreBv:Lcom/tandong/bottomview/view/BottomView;

    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object p1

    sget v1, Lcom/kantv/video/R$id;->videoset_collect:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/video/KTVideoPlayer$9$8;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iget-object v1, v1, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v1}, Lcom/kantv/video/KTVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/kantv/video/R$drawable;->videoset_collection_b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 462
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$8;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {p1}, Lcom/kantv/video/KTVideoPlayer;->access$100(Lcom/kantv/video/KTVideoPlayer;)Lcom/kantv/common/interfaces/ClickCallback;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 463
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$8;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {p1}, Lcom/kantv/video/KTVideoPlayer;->access$100(Lcom/kantv/video/KTVideoPlayer;)Lcom/kantv/common/interfaces/ClickCallback;

    move-result-object p1

    const/16 v0, 0x13

    invoke-interface {p1, v0}, Lcom/kantv/common/interfaces/ClickCallback;->onShare(I)V

    :cond_2
    return-void
.end method
