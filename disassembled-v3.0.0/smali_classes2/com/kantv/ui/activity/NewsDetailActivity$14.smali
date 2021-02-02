.class Lcom/kantv/ui/activity/NewsDetailActivity$14;
.super Ljava/lang/Object;
.source "NewsDetailActivity.java"

# interfaces
.implements Lcom/kantv/ui/view/NewsMoreDialog$onClickback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/NewsDetailActivity;->initNewsMoreDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/NewsDetailActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/NewsDetailActivity;)V
    .locals 0

    .line 1132
    iput-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$14;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 3

    const/4 v0, 0x1

    const-string v1, "1"

    const-string v2, "texttype"

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 1157
    :cond_0
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "Login_State"

    invoke-static {p1, v2, v0}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1159
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$14;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$3300(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1160
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$14;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$3300(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/kantv/ui/activity/NewsDetailActivity;->requestCollect(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1163
    :cond_1
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$14;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$14;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-virtual {v1}, Lcom/kantv/ui/activity/NewsDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$900(Lcom/kantv/ui/activity/NewsDetailActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1153
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$14;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$000(Lcom/kantv/ui/activity/NewsDetailActivity;)Landroid/webkit/WebSettings;

    move-result-object p1

    const/16 v0, 0xc8

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 1154
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "4"

    invoke-static {p1, v2, v0}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1148
    :cond_3
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$14;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$000(Lcom/kantv/ui/activity/NewsDetailActivity;)Landroid/webkit/WebSettings;

    move-result-object p1

    const/16 v0, 0x96

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 1149
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "3"

    invoke-static {p1, v2, v0}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1143
    :cond_4
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$14;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$000(Lcom/kantv/ui/activity/NewsDetailActivity;)Landroid/webkit/WebSettings;

    move-result-object p1

    const/16 v0, 0x78

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 1144
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "2"

    invoke-static {p1, v2, v0}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1138
    :cond_5
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$14;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$000(Lcom/kantv/ui/activity/NewsDetailActivity;)Landroid/webkit/WebSettings;

    move-result-object p1

    const/16 v0, 0x4b

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 1139
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    :goto_0
    return-void
.end method
