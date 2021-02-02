.class Lcom/kantv/ui/activity/FilterActivity$1$1$1;
.super Ljava/lang/Object;
.source "FilterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/FilterActivity$1$1;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/FilterBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/kantv/ui/activity/FilterActivity$1$1;

.field final synthetic val$childsnbBean:Lcom/kantv/ui/bean/FilterBean;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/FilterActivity$1$1;Lcom/kantv/ui/bean/FilterBean;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/kantv/ui/activity/FilterActivity$1$1$1;->this$2:Lcom/kantv/ui/activity/FilterActivity$1$1;

    iput-object p2, p0, Lcom/kantv/ui/activity/FilterActivity$1$1$1;->val$childsnbBean:Lcom/kantv/ui/bean/FilterBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x0

    .line 183
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity$1$1$1;->this$2:Lcom/kantv/ui/activity/FilterActivity$1$1;

    iget-object v0, v0, Lcom/kantv/ui/activity/FilterActivity$1$1;->val$filterBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity$1$1$1;->this$2:Lcom/kantv/ui/activity/FilterActivity$1$1;

    iget-object v0, v0, Lcom/kantv/ui/activity/FilterActivity$1$1;->val$filterBeanList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/FilterBean;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/kantv/ui/bean/FilterBean;->setType(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 186
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/FilterActivity$1$1$1;->val$childsnbBean:Lcom/kantv/ui/bean/FilterBean;

    const-string v0, "1"

    invoke-virtual {p1, v0}, Lcom/kantv/ui/bean/FilterBean;->setType(Ljava/lang/String;)V

    .line 187
    iget-object p1, p0, Lcom/kantv/ui/activity/FilterActivity$1$1$1;->this$2:Lcom/kantv/ui/activity/FilterActivity$1$1;

    invoke-virtual {p1}, Lcom/kantv/ui/activity/FilterActivity$1$1;->notifyDataSetChanged()V

    .line 188
    iget-object p1, p0, Lcom/kantv/ui/activity/FilterActivity$1$1$1;->this$2:Lcom/kantv/ui/activity/FilterActivity$1$1;

    iget-object p1, p1, Lcom/kantv/ui/activity/FilterActivity$1$1;->this$1:Lcom/kantv/ui/activity/FilterActivity$1;

    iget-object p1, p1, Lcom/kantv/ui/activity/FilterActivity$1;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/kantv/ui/activity/FilterActivity;->access$102(Lcom/kantv/ui/activity/FilterActivity;I)I

    .line 189
    iget-object p1, p0, Lcom/kantv/ui/activity/FilterActivity$1$1$1;->this$2:Lcom/kantv/ui/activity/FilterActivity$1$1;

    iget-object p1, p1, Lcom/kantv/ui/activity/FilterActivity$1$1;->this$1:Lcom/kantv/ui/activity/FilterActivity$1;

    iget-object p1, p1, Lcom/kantv/ui/activity/FilterActivity$1;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/FilterActivity;->access$200(Lcom/kantv/ui/activity/FilterActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 190
    iget-object p1, p0, Lcom/kantv/ui/activity/FilterActivity$1$1$1;->this$2:Lcom/kantv/ui/activity/FilterActivity$1$1;

    iget-object p1, p1, Lcom/kantv/ui/activity/FilterActivity$1$1;->this$1:Lcom/kantv/ui/activity/FilterActivity$1;

    iget-object p1, p1, Lcom/kantv/ui/activity/FilterActivity$1;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/FilterActivity;->access$200(Lcom/kantv/ui/activity/FilterActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 191
    :cond_1
    iget-object p1, p0, Lcom/kantv/ui/activity/FilterActivity$1$1$1;->this$2:Lcom/kantv/ui/activity/FilterActivity$1$1;

    iget-object p1, p1, Lcom/kantv/ui/activity/FilterActivity$1$1;->this$1:Lcom/kantv/ui/activity/FilterActivity$1;

    iget-object p1, p1, Lcom/kantv/ui/activity/FilterActivity$1;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/FilterActivity;->access$300(Lcom/kantv/ui/activity/FilterActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 192
    iget-object p1, p0, Lcom/kantv/ui/activity/FilterActivity$1$1$1;->this$2:Lcom/kantv/ui/activity/FilterActivity$1$1;

    iget-object p1, p1, Lcom/kantv/ui/activity/FilterActivity$1$1;->this$1:Lcom/kantv/ui/activity/FilterActivity$1;

    iget-object p1, p1, Lcom/kantv/ui/activity/FilterActivity$1;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/FilterActivity;->access$300(Lcom/kantv/ui/activity/FilterActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    .line 193
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/activity/FilterActivity$1$1$1;->this$2:Lcom/kantv/ui/activity/FilterActivity$1$1;

    iget-object p1, p1, Lcom/kantv/ui/activity/FilterActivity$1$1;->this$1:Lcom/kantv/ui/activity/FilterActivity$1;

    iget-object p1, p1, Lcom/kantv/ui/activity/FilterActivity$1;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-static {p1, v0}, Lcom/kantv/ui/activity/FilterActivity;->access$400(Lcom/kantv/ui/activity/FilterActivity;Z)V

    .line 195
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f71\u89c6_\u7b5b\u9009_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kantv/ui/activity/FilterActivity$1$1$1;->this$2:Lcom/kantv/ui/activity/FilterActivity$1$1;

    iget-object v2, v2, Lcom/kantv/ui/activity/FilterActivity$1$1;->this$1:Lcom/kantv/ui/activity/FilterActivity$1;

    iget-object v2, v2, Lcom/kantv/ui/activity/FilterActivity$1;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    iget-object v2, v2, Lcom/kantv/ui/activity/FilterActivity;->titleTV:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    const-string v1, "\u70b9\u51fb"

    .line 196
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/FilterActivity$1$1$1;->this$2:Lcom/kantv/ui/activity/FilterActivity$1$1;

    iget-object v1, v1, Lcom/kantv/ui/activity/FilterActivity$1$1;->this$1:Lcom/kantv/ui/activity/FilterActivity$1;

    iget-object v1, v1, Lcom/kantv/ui/activity/FilterActivity$1;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    iget-object v1, v1, Lcom/kantv/ui/activity/FilterActivity;->filterTV:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v0

    .line 195
    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    return-void
.end method
