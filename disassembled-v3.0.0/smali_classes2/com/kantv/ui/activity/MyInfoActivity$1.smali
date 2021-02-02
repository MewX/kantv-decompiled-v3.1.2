.class Lcom/kantv/ui/activity/MyInfoActivity$1;
.super Ljava/lang/Object;
.source "MyInfoActivity.java"

# interfaces
.implements Lcom/bigkoo/pickerview/listener/OnTimeSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/MyInfoActivity;->showDatePickerDialog()V
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

    .line 328
    iput-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity$1;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSelect(Ljava/util/Date;Landroid/view/View;)V
    .locals 8

    const-string p2, "-"

    .line 332
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 333
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 334
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    .line 335
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    .line 336
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    .line 337
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 339
    :try_start_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long v7, v5, v0

    if-lez v7, :cond_0

    const-string p1, "\u751f\u65e5\u4e0d\u80fd\u8d85\u8fc7\u5f53\u524d\u65e5\u671f"

    .line 340
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity$1;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/MyInfoActivity;->birthTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object p2, p0, Lcom/kantv/ui/activity/MyInfoActivity$1;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    invoke-static {p2, p1}, Lcom/kantv/ui/activity/MyInfoActivity;->access$002(Lcom/kantv/ui/activity/MyInfoActivity;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 349
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
