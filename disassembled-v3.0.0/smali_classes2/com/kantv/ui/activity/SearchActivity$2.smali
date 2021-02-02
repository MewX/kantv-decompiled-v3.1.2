.class Lcom/kantv/ui/activity/SearchActivity$2;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/SearchActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/SearchActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/SearchActivity;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/kantv/ui/activity/SearchActivity$2;->this$0:Lcom/kantv/ui/activity/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 132
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchActivity$2;->this$0:Lcom/kantv/ui/activity/SearchActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/SearchActivity;->topHistoryLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 133
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchActivity$2;->this$0:Lcom/kantv/ui/activity/SearchActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/SearchActivity;->access$000(Lcom/kantv/ui/activity/SearchActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 134
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchActivity$2;->this$0:Lcom/kantv/ui/activity/SearchActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/SearchActivity;->access$100(Lcom/kantv/ui/activity/SearchActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchActivity$2;->this$0:Lcom/kantv/ui/activity/SearchActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/SearchActivity;->access$100(Lcom/kantv/ui/activity/SearchActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    .line 136
    :cond_0
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Search"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
