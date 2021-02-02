.class Lcom/kantv/ui/activity/MyInfoActivity$3;
.super Ljava/lang/Object;
.source "MyInfoActivity.java"

# interfaces
.implements Lcom/bigkoo/pickerview/listener/OnOptionsSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/MyInfoActivity;->parseAreaJson(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/MyInfoActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/MyInfoActivity;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity$3;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionsSelect(IIILandroid/view/View;)V
    .locals 6

    const-string p4, "city"

    const-string v0, "province"

    const-string v1, "country"

    .line 497
    iget-object v2, p0, Lcom/kantv/ui/activity/MyInfoActivity$3;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/kantv/ui/activity/MyInfoActivity;->access$002(Lcom/kantv/ui/activity/MyInfoActivity;Z)Z

    .line 498
    iget-object v2, p0, Lcom/kantv/ui/activity/MyInfoActivity$3;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v2, v4}, Lcom/kantv/ui/activity/MyInfoActivity;->access$202(Lcom/kantv/ui/activity/MyInfoActivity;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 499
    iget-object v2, p0, Lcom/kantv/ui/activity/MyInfoActivity$3;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    const-string v4, ""

    invoke-static {v2, v4}, Lcom/kantv/ui/activity/MyInfoActivity;->access$302(Lcom/kantv/ui/activity/MyInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 502
    :try_start_0
    iget-object v2, p0, Lcom/kantv/ui/activity/MyInfoActivity$3;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/MyInfoActivity;->access$200(Lcom/kantv/ui/activity/MyInfoActivity;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 503
    iget-object v2, p0, Lcom/kantv/ui/activity/MyInfoActivity$3;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/MyInfoActivity;->access$200(Lcom/kantv/ui/activity/MyInfoActivity;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 504
    iget-object v2, p0, Lcom/kantv/ui/activity/MyInfoActivity$3;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/MyInfoActivity;->access$200(Lcom/kantv/ui/activity/MyInfoActivity;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, p4, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 506
    iget-object v2, p0, Lcom/kantv/ui/activity/MyInfoActivity$3;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    iget-object v4, p0, Lcom/kantv/ui/activity/MyInfoActivity$3;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    iget-object v4, v4, Lcom/kantv/ui/activity/MyInfoActivity;->options1Items:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kantv/ui/bean/CountryBean;

    invoke-virtual {v4}, Lcom/kantv/ui/bean/CountryBean;->getPickerViewText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/kantv/ui/activity/MyInfoActivity;->cn:Ljava/lang/String;

    .line 507
    iget-object v2, p0, Lcom/kantv/ui/activity/MyInfoActivity$3;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    iget-object v4, p0, Lcom/kantv/ui/activity/MyInfoActivity$3;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    iget-object v4, v4, Lcom/kantv/ui/activity/MyInfoActivity;->options2Items:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v2, Lcom/kantv/ui/activity/MyInfoActivity;->province:Ljava/lang/String;

    .line 508
    iget-object v2, p0, Lcom/kantv/ui/activity/MyInfoActivity$3;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    iget-object v4, p0, Lcom/kantv/ui/activity/MyInfoActivity$3;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    iget-object v4, v4, Lcom/kantv/ui/activity/MyInfoActivity;->options3Items:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v2, Lcom/kantv/ui/activity/MyInfoActivity;->city:Ljava/lang/String;

    .line 510
    iget-object v2, p0, Lcom/kantv/ui/activity/MyInfoActivity$3;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kantv/ui/activity/MyInfoActivity$3;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    iget-object v5, v5, Lcom/kantv/ui/activity/MyInfoActivity;->cn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kantv/ui/activity/MyInfoActivity$3;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    iget-object v5, v5, Lcom/kantv/ui/activity/MyInfoActivity;->province:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kantv/ui/activity/MyInfoActivity$3;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    iget-object v5, v5, Lcom/kantv/ui/activity/MyInfoActivity;->city:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/kantv/ui/activity/MyInfoActivity;->access$302(Lcom/kantv/ui/activity/MyInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 511
    iget-object v2, p0, Lcom/kantv/ui/activity/MyInfoActivity$3;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    iget-object v2, v2, Lcom/kantv/ui/activity/MyInfoActivity;->homeTv:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/kantv/ui/activity/MyInfoActivity$3;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    invoke-static {v4}, Lcom/kantv/ui/activity/MyInfoActivity;->access$300(Lcom/kantv/ui/activity/MyInfoActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v2, p0, Lcom/kantv/ui/activity/MyInfoActivity$3;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/MyInfoActivity;->access$200(Lcom/kantv/ui/activity/MyInfoActivity;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v4, p0, Lcom/kantv/ui/activity/MyInfoActivity$3;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    iget-object v4, v4, Lcom/kantv/ui/activity/MyInfoActivity;->options1Items:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kantv/ui/bean/CountryBean;

    invoke-virtual {v4}, Lcom/kantv/ui/bean/CountryBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 514
    iget-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity$3;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    iget-object v1, v1, Lcom/kantv/ui/activity/MyInfoActivity;->options1Items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/CountryBean;

    invoke-virtual {v1}, Lcom/kantv/ui/bean/CountryBean;->getChildren()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity$3;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    iget-object v1, v1, Lcom/kantv/ui/activity/MyInfoActivity;->options1Items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/CountryBean;

    invoke-virtual {v1}, Lcom/kantv/ui/bean/CountryBean;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-le v1, p2, :cond_0

    .line 515
    iget-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity$3;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    iget-object v1, v1, Lcom/kantv/ui/activity/MyInfoActivity;->options1Items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/CountryBean;

    invoke-virtual {v1}, Lcom/kantv/ui/bean/CountryBean;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/Province;

    .line 516
    iget-object v2, p0, Lcom/kantv/ui/activity/MyInfoActivity$3;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/MyInfoActivity;->access$200(Lcom/kantv/ui/activity/MyInfoActivity;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1}, Lcom/kantv/ui/bean/Province;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 517
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity$3;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/MyInfoActivity;->options1Items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/CountryBean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/CountryBean;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/Province;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/Province;->getChildren()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity$3;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/MyInfoActivity;->options1Items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/CountryBean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/CountryBean;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/Province;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/Province;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-le v0, p3, :cond_0

    .line 518
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity$3;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/MyInfoActivity;->options1Items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/bean/CountryBean;

    invoke-virtual {p1}, Lcom/kantv/ui/bean/CountryBean;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/bean/Province;

    invoke-virtual {p1}, Lcom/kantv/ui/bean/Province;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/bean/City;

    .line 519
    iget-object p2, p0, Lcom/kantv/ui/activity/MyInfoActivity$3;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    invoke-static {p2}, Lcom/kantv/ui/activity/MyInfoActivity;->access$200(Lcom/kantv/ui/activity/MyInfoActivity;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1}, Lcom/kantv/ui/bean/City;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 524
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
