.class Lcom/kantv/ui/activity/WelcomeActivity$5$1;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/WelcomeActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/WelcomeActivity$5;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/WelcomeActivity$5;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/kantv/ui/activity/WelcomeActivity$5$1;->this$1:Lcom/kantv/ui/activity/WelcomeActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/kantv/ui/activity/WelcomeActivity$5$1;->this$1:Lcom/kantv/ui/activity/WelcomeActivity$5;

    iget-object v0, v0, Lcom/kantv/ui/activity/WelcomeActivity$5;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/WelcomeActivity;->access$500(Lcom/kantv/ui/activity/WelcomeActivity;)V

    return-void
.end method
