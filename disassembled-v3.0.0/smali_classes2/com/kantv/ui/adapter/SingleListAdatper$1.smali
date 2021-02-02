.class Lcom/kantv/ui/adapter/SingleListAdatper$1;
.super Ljava/lang/Object;
.source "SingleListAdatper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/adapter/SingleListAdatper;->onBindViewHolder(Lcom/kantv/ui/adapter/SingleListVH;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/adapter/SingleListAdatper;

.field final synthetic val$finalPosition:I


# direct methods
.method constructor <init>(Lcom/kantv/ui/adapter/SingleListAdatper;I)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/kantv/ui/adapter/SingleListAdatper$1;->this$0:Lcom/kantv/ui/adapter/SingleListAdatper;

    iput p2, p0, Lcom/kantv/ui/adapter/SingleListAdatper$1;->val$finalPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 121
    iget-object p1, p0, Lcom/kantv/ui/adapter/SingleListAdatper$1;->this$0:Lcom/kantv/ui/adapter/SingleListAdatper;

    invoke-static {p1}, Lcom/kantv/ui/adapter/SingleListAdatper;->access$000(Lcom/kantv/ui/adapter/SingleListAdatper;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/kantv/ui/adapter/SingleListAdatper$1;->val$finalPosition:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/bean/MovieBean;

    invoke-virtual {p1}, Lcom/kantv/ui/bean/MovieBean;->getUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 122
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 126
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 127
    iget-object p1, p0, Lcom/kantv/ui/adapter/SingleListAdatper$1;->this$0:Lcom/kantv/ui/adapter/SingleListAdatper;

    invoke-static {p1}, Lcom/kantv/ui/adapter/SingleListAdatper;->access$100(Lcom/kantv/ui/adapter/SingleListAdatper;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 129
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kantv/ui/adapter/SingleListAdatper$1;->this$0:Lcom/kantv/ui/adapter/SingleListAdatper;

    invoke-static {v1}, Lcom/kantv/ui/adapter/SingleListAdatper;->access$100(Lcom/kantv/ui/adapter/SingleListAdatper;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "tid"

    .line 131
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcom/kantv/ui/adapter/SingleListAdatper$1;->this$0:Lcom/kantv/ui/adapter/SingleListAdatper;

    invoke-static {p1}, Lcom/kantv/ui/adapter/SingleListAdatper;->access$000(Lcom/kantv/ui/adapter/SingleListAdatper;)Ljava/util/List;

    move-result-object p1

    iget v2, p0, Lcom/kantv/ui/adapter/SingleListAdatper$1;->val$finalPosition:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/bean/MovieBean;

    invoke-virtual {p1}, Lcom/kantv/ui/bean/MovieBean;->getSeo()Ljava/lang/String;

    move-result-object p1

    const-string v2, "seo"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 134
    iget-object p1, p0, Lcom/kantv/ui/adapter/SingleListAdatper$1;->this$0:Lcom/kantv/ui/adapter/SingleListAdatper;

    invoke-static {p1}, Lcom/kantv/ui/adapter/SingleListAdatper;->access$100(Lcom/kantv/ui/adapter/SingleListAdatper;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 139
    :goto_0
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v1, "\u5f71\u89c6"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    const-string v1, "\u70b9\u51fb"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/adapter/SingleListAdatper$1;->this$0:Lcom/kantv/ui/adapter/SingleListAdatper;

    invoke-static {v1}, Lcom/kantv/ui/adapter/SingleListAdatper;->access$000(Lcom/kantv/ui/adapter/SingleListAdatper;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/kantv/ui/adapter/SingleListAdatper$1;->val$finalPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/MovieBean;

    invoke-virtual {v1}, Lcom/kantv/ui/bean/MovieBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    return-void
.end method
