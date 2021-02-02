.class Lcom/kantv/ui/activity/CollectActivity$1$2;
.super Ljava/lang/Object;
.source "CollectActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/CollectActivity$1;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String15Bean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/CollectActivity$1;

.field final synthetic val$string15Bean:Lcom/kantv/ui/bean/String15Bean;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/CollectActivity$1;Lcom/kantv/ui/bean/String15Bean;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$1$2;->this$1:Lcom/kantv/ui/activity/CollectActivity$1;

    iput-object p2, p0, Lcom/kantv/ui/activity/CollectActivity$1$2;->val$string15Bean:Lcom/kantv/ui/bean/String15Bean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 131
    iget-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$1$2;->val$string15Bean:Lcom/kantv/ui/bean/String15Bean;

    const-string p2, "1"

    invoke-virtual {p1, p2}, Lcom/kantv/ui/bean/String15Bean;->setStr13(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$1$2;->val$string15Bean:Lcom/kantv/ui/bean/String15Bean;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Lcom/kantv/ui/bean/String15Bean;->setStr13(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
