.class final enum Lcom/samsung/multiscreen/Player$PlayerControlEvents;
.super Ljava/lang/Enum;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/multiscreen/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PlayerControlEvents"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/multiscreen/Player$PlayerControlEvents;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/multiscreen/Player$PlayerControlEvents;

.field public static final enum FF:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

.field public static final enum RWD:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

.field public static final enum getControlStatus:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

.field public static final enum getVolume:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

.field public static final enum mute:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

.field public static final enum next:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

.field public static final enum pause:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

.field public static final enum play:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

.field public static final enum playMusic:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

.field public static final enum previous:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

.field public static final enum repeat:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

.field public static final enum seekTo:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

.field public static final enum setRepeat:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

.field public static final enum setShuffle:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

.field public static final enum setVolume:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

.field public static final enum shuffle:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

.field public static final enum stop:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

.field public static final enum stopMusic:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

.field public static final enum unMute:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

.field public static final enum volumeDown:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

.field public static final enum volumeUp:Lcom/samsung/multiscreen/Player$PlayerControlEvents;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 81
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    const/4 v1, 0x0

    const-string v2, "play"

    invoke-direct {v0, v2, v1}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->play:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    .line 82
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    const/4 v2, 0x1

    const-string v3, "pause"

    invoke-direct {v0, v3, v2}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->pause:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    .line 83
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    const/4 v3, 0x2

    const-string v4, "stop"

    invoke-direct {v0, v4, v3}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->stop:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    .line 84
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    const/4 v4, 0x3

    const-string v5, "mute"

    invoke-direct {v0, v5, v4}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->mute:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    .line 85
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    const/4 v5, 0x4

    const-string v6, "unMute"

    invoke-direct {v0, v6, v5}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->unMute:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    .line 86
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    const/4 v6, 0x5

    const-string v7, "setVolume"

    invoke-direct {v0, v7, v6}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->setVolume:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    .line 87
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    const/4 v7, 0x6

    const-string v8, "getControlStatus"

    invoke-direct {v0, v8, v7}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->getControlStatus:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    .line 88
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    const/4 v8, 0x7

    const-string v9, "getVolume"

    invoke-direct {v0, v9, v8}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->getVolume:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    .line 89
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    const/16 v9, 0x8

    const-string v10, "volumeUp"

    invoke-direct {v0, v10, v9}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->volumeUp:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    .line 90
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    const/16 v10, 0x9

    const-string v11, "volumeDown"

    invoke-direct {v0, v11, v10}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->volumeDown:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    .line 91
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    const/16 v11, 0xa

    const-string v12, "previous"

    invoke-direct {v0, v12, v11}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->previous:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    .line 92
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    const/16 v12, 0xb

    const-string v13, "next"

    invoke-direct {v0, v13, v12}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->next:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    .line 94
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    const/16 v13, 0xc

    const-string v14, "FF"

    invoke-direct {v0, v14, v13}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->FF:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    .line 95
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    const/16 v14, 0xd

    const-string v15, "RWD"

    invoke-direct {v0, v15, v14}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->RWD:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    .line 97
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    const/16 v15, 0xe

    const-string v14, "seekTo"

    invoke-direct {v0, v14, v15}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->seekTo:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    .line 98
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    const-string v14, "repeat"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->repeat:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    .line 99
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    const-string v14, "setRepeat"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->setRepeat:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    .line 101
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    const-string v14, "shuffle"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->shuffle:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    .line 102
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    const-string v14, "setShuffle"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->setShuffle:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    .line 105
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    const-string v14, "playMusic"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->playMusic:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    .line 106
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    const-string v14, "stopMusic"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v15}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->stopMusic:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    const/16 v0, 0x15

    .line 79
    new-array v0, v0, [Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    sget-object v14, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->play:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    aput-object v14, v0, v1

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->pause:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->stop:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->mute:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->unMute:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->setVolume:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->getControlStatus:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->getVolume:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->volumeUp:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->volumeDown:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    aput-object v1, v0, v10

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->previous:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    aput-object v1, v0, v11

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->next:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    aput-object v1, v0, v12

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->FF:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->RWD:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->seekTo:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->repeat:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->setRepeat:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->shuffle:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->setShuffle:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->playMusic:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->stopMusic:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->$VALUES:[Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/multiscreen/Player$PlayerControlEvents;
    .locals 1

    .line 79
    const-class v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    return-object p0
.end method

.method public static values()[Lcom/samsung/multiscreen/Player$PlayerControlEvents;
    .locals 1

    .line 79
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->$VALUES:[Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, [Lcom/samsung/multiscreen/Player$PlayerControlEvents;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    return-object v0
.end method
