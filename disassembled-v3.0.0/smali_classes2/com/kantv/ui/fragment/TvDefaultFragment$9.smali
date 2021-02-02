.class Lcom/kantv/ui/fragment/TvDefaultFragment$9;
.super Ljava/lang/Object;
.source "TvDefaultFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/TvDefaultFragment;->fillDataView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/TvDefaultFragment;)V
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$9;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 583
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Login_State"

    invoke-static {p1, v1, v0}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 585
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$9;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    const-class v0, Lcom/kantv/ui/activity/HistoryActivity;

    invoke-virtual {p1, v0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->gotoActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 587
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$9;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    const-string v0, "\u63d0\u793a"

    const-string v1, "\u60a8\u5f53\u524d\u8fd8\u672a\u767b\u5f55\uff0c\u662f\u5426\u524d\u5f80\u767b\u5f55\uff1f"

    invoke-static {p1, v0, v1}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$1000(Lcom/kantv/ui/fragment/TvDefaultFragment;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
