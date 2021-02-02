.class synthetic Lcom/avos/avoscloud/AVLiveQueryEventHandler$1;
.super Ljava/lang/Object;
.source "AVLiveQueryEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVLiveQueryEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$avos$avoscloud$AVLiveQuery$EventType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    invoke-static {}, Lcom/avos/avoscloud/AVLiveQuery$EventType;->values()[Lcom/avos/avoscloud/AVLiveQuery$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/avos/avoscloud/AVLiveQueryEventHandler$1;->$SwitchMap$com$avos$avoscloud$AVLiveQuery$EventType:[I

    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/AVLiveQueryEventHandler$1;->$SwitchMap$com$avos$avoscloud$AVLiveQuery$EventType:[I

    sget-object v1, Lcom/avos/avoscloud/AVLiveQuery$EventType;->ENTER:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVLiveQuery$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/avos/avoscloud/AVLiveQueryEventHandler$1;->$SwitchMap$com$avos$avoscloud$AVLiveQuery$EventType:[I

    sget-object v1, Lcom/avos/avoscloud/AVLiveQuery$EventType;->UPDATE:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVLiveQuery$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/avos/avoscloud/AVLiveQueryEventHandler$1;->$SwitchMap$com$avos$avoscloud$AVLiveQuery$EventType:[I

    sget-object v1, Lcom/avos/avoscloud/AVLiveQuery$EventType;->DELETE:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVLiveQuery$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/avos/avoscloud/AVLiveQueryEventHandler$1;->$SwitchMap$com$avos$avoscloud$AVLiveQuery$EventType:[I

    sget-object v1, Lcom/avos/avoscloud/AVLiveQuery$EventType;->LEAVE:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVLiveQuery$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/avos/avoscloud/AVLiveQueryEventHandler$1;->$SwitchMap$com$avos$avoscloud$AVLiveQuery$EventType:[I

    sget-object v1, Lcom/avos/avoscloud/AVLiveQuery$EventType;->LOGIN:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVLiveQuery$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/avos/avoscloud/AVLiveQueryEventHandler$1;->$SwitchMap$com$avos$avoscloud$AVLiveQuery$EventType:[I

    sget-object v1, Lcom/avos/avoscloud/AVLiveQuery$EventType;->CREATE:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVLiveQuery$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
