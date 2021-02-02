.class Lcom/bigkoo/pickerview/view/WheelTime$1;
.super Ljava/lang/Object;
.source "WheelTime.java"

# interfaces
.implements Lcom/contrarywind/listener/OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bigkoo/pickerview/view/WheelTime;->setLunar(IIIZIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bigkoo/pickerview/view/WheelTime;


# direct methods
.method constructor <init>(Lcom/bigkoo/pickerview/view/WheelTime;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$000(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v0

    add-int/2addr p1, v0

    .line 157
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    new-instance v1, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    invoke-static {p1}, Lcom/bigkoo/pickerview/utils/ChinaDate;->getMonths(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 158
    invoke-static {p1}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapMonth(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v0

    invoke-static {p1}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapMonth(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 165
    :goto_0
    invoke-static {p1}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapMonth(I)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v0

    invoke-static {p1}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapMonth(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_2

    .line 166
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v0

    invoke-static {p1}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapMonth(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_1

    .line 167
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$200(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    new-instance v1, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    invoke-static {p1}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapDays(I)I

    move-result v2

    invoke-static {v2}, Lcom/bigkoo/pickerview/utils/ChinaDate;->getLunarDays(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 168
    invoke-static {p1}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapDays(I)I

    move-result p1

    goto :goto_1

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$200(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    new-instance v1, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    invoke-static {p1, v2}, Lcom/bigkoo/pickerview/utils/ChinaDate;->monthDays(II)I

    move-result v2

    invoke-static {v2}, Lcom/bigkoo/pickerview/utils/ChinaDate;->getLunarDays(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 171
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v0

    invoke-static {p1, v0}, Lcom/bigkoo/pickerview/utils/ChinaDate;->monthDays(II)I

    move-result p1

    goto :goto_1

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$200(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    new-instance v1, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v2}, Lcom/bigkoo/pickerview/utils/ChinaDate;->monthDays(II)I

    move-result v2

    invoke-static {v2}, Lcom/bigkoo/pickerview/utils/ChinaDate;->getLunarDays(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 175
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/bigkoo/pickerview/utils/ChinaDate;->monthDays(II)I

    move-result p1

    .line 178
    :goto_1
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$200(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v0

    add-int/lit8 p1, p1, -0x1

    if-le v0, p1, :cond_3

    .line 179
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$200(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 182
    :cond_3
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {p1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$300(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 183
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {p1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$300(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;->onTimeSelectChanged()V

    :cond_4
    return-void
.end method
