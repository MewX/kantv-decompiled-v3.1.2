.class final enum Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;
.super Ljava/lang/Enum;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/multiscreen/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AudioPlayerAttributes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

.field public static final enum albumArt:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

.field public static final enum albumName:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

.field public static final enum endTime:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

.field public static final enum title:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 39
    new-instance v0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    const/4 v1, 0x0

    const-string v2, "title"

    invoke-direct {v0, v2, v1}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->title:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    .line 40
    new-instance v0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    const/4 v2, 0x1

    const-string v3, "albumName"

    invoke-direct {v0, v3, v2}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->albumName:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    .line 41
    new-instance v0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    const/4 v3, 0x2

    const-string v4, "albumArt"

    invoke-direct {v0, v4, v3}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->albumArt:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    .line 42
    new-instance v0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    const/4 v4, 0x3

    const-string v5, "endTime"

    invoke-direct {v0, v5, v4}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->endTime:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    const/4 v0, 0x4

    .line 38
    new-array v0, v0, [Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    sget-object v5, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->title:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    aput-object v5, v0, v1

    sget-object v1, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->albumName:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->albumArt:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->endTime:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->$VALUES:[Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;
    .locals 1

    .line 38
    const-class v0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    return-object p0
.end method

.method public static values()[Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;
    .locals 1

    .line 38
    sget-object v0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->$VALUES:[Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    invoke-virtual {v0}, [Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    return-object v0
.end method
