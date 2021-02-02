.class Lcom/kantv/ui/activity/StarActivity$3;
.super Ljava/lang/Object;
.source "StarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/StarActivity;->parseStar(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/StarActivity;

.field final synthetic val$actorJson:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/StarActivity;Lorg/json/JSONObject;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/kantv/ui/activity/StarActivity$3;->this$0:Lcom/kantv/ui/activity/StarActivity;

    iput-object p2, p0, Lcom/kantv/ui/activity/StarActivity$3;->val$actorJson:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 276
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity$3;->this$0:Lcom/kantv/ui/activity/StarActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kantv/ui/activity/StarActivity$3;->val$actorJson:Lorg/json/JSONObject;

    const-string v3, "gender"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kantv/ui/activity/StarActivity$3;->val$actorJson:Lorg/json/JSONObject;

    const-string v4, "night"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kantv/ui/activity/StarActivity$3;->val$actorJson:Lorg/json/JSONObject;

    const-string v4, "job"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kantv/ui/activity/StarActivity$3;->val$actorJson:Lorg/json/JSONObject;

    const-string v3, "birthday"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kantv/ui/activity/StarActivity;->access$202(Lcom/kantv/ui/activity/StarActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity$3;->this$0:Lcom/kantv/ui/activity/StarActivity;

    iget-object v1, p0, Lcom/kantv/ui/activity/StarActivity$3;->val$actorJson:Lorg/json/JSONObject;

    const-string v2, "birthplace"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kantv/ui/activity/StarActivity;->access$302(Lcom/kantv/ui/activity/StarActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity$3;->this$0:Lcom/kantv/ui/activity/StarActivity;

    iget-object v1, p0, Lcom/kantv/ui/activity/StarActivity$3;->val$actorJson:Lorg/json/JSONObject;

    const-string v2, "msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kantv/ui/activity/StarActivity;->access$402(Lcom/kantv/ui/activity/StarActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity$3;->this$0:Lcom/kantv/ui/activity/StarActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/StarActivity;->mStarTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/ui/activity/StarActivity$3;->this$0:Lcom/kantv/ui/activity/StarActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/StarActivity;->access$200(Lcom/kantv/ui/activity/StarActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity$3;->this$0:Lcom/kantv/ui/activity/StarActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/StarActivity;->mStarPlace:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/ui/activity/StarActivity$3;->this$0:Lcom/kantv/ui/activity/StarActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/StarActivity;->access$300(Lcom/kantv/ui/activity/StarActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity$3;->this$0:Lcom/kantv/ui/activity/StarActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/StarActivity;->mStarMsg:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7b80\u4ecb: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kantv/ui/activity/StarActivity$3;->this$0:Lcom/kantv/ui/activity/StarActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/StarActivity;->access$400(Lcom/kantv/ui/activity/StarActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->stripHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
