.class final enum Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;
.super Ljava/lang/Enum;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/multiscreen/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AudioPlayerInternalEvents"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

.field public static final enum bufferingcomplete:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

.field public static final enum bufferingprogress:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

.field public static final enum bufferingstart:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

.field public static final enum currentplaytime:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

.field public static final enum streamcompleted:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

.field public static final enum totalduration:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 46
    new-instance v0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

    const/4 v1, 0x0

    const-string v2, "streamcompleted"

    invoke-direct {v0, v2, v1}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;->streamcompleted:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

    .line 47
    new-instance v0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

    const/4 v2, 0x1

    const-string v3, "currentplaytime"

    invoke-direct {v0, v3, v2}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;->currentplaytime:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

    .line 48
    new-instance v0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

    const/4 v3, 0x2

    const-string v4, "totalduration"

    invoke-direct {v0, v4, v3}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;->totalduration:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

    .line 49
    new-instance v0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

    const/4 v4, 0x3

    const-string v5, "bufferingstart"

    invoke-direct {v0, v5, v4}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;->bufferingstart:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

    .line 50
    new-instance v0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

    const/4 v5, 0x4

    const-string v6, "bufferingprogress"

    invoke-direct {v0, v6, v5}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;->bufferingprogress:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

    .line 51
    new-instance v0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

    const/4 v6, 0x5

    const-string v7, "bufferingcomplete"

    invoke-direct {v0, v7, v6}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;->bufferingcomplete:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

    const/4 v0, 0x6

    .line 45
    new-array v0, v0, [Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

    sget-object v7, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;->streamcompleted:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

    aput-object v7, v0, v1

    sget-object v1, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;->currentplaytime:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;->totalduration:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;->bufferingstart:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;->bufferingprogress:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;->bufferingcomplete:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;->$VALUES:[Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;
    .locals 1

    .line 45
    const-class v0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

    return-object p0
.end method

.method public static values()[Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;
    .locals 1

    .line 45
    sget-object v0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;->$VALUES:[Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

    invoke-virtual {v0}, [Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

    return-object v0
.end method
