.class Lcom/samsung/multiscreen/StandbyDeviceList$1;
.super Ljava/util/TimerTask;
.source "StandbyDeviceList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/StandbyDeviceList;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/StandbyDeviceList;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/StandbyDeviceList;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$1;->this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 207
    iget-object v0, p0, Lcom/samsung/multiscreen/StandbyDeviceList$1;->this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/multiscreen/StandbyDeviceList;->access$502(Lcom/samsung/multiscreen/StandbyDeviceList;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 208
    iget-object v0, p0, Lcom/samsung/multiscreen/StandbyDeviceList$1;->this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

    invoke-static {v0}, Lcom/samsung/multiscreen/StandbyDeviceList;->access$600(Lcom/samsung/multiscreen/StandbyDeviceList;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 209
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 210
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/multiscreen/Service;

    if-eqz v2, :cond_0

    .line 212
    iget-object v3, p0, Lcom/samsung/multiscreen/StandbyDeviceList$1;->this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

    invoke-static {v3}, Lcom/samsung/multiscreen/StandbyDeviceList;->access$000(Lcom/samsung/multiscreen/StandbyDeviceList;)Lcom/samsung/multiscreen/Search$SearchListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/samsung/multiscreen/Search$SearchListener;->onFound(Lcom/samsung/multiscreen/Service;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
