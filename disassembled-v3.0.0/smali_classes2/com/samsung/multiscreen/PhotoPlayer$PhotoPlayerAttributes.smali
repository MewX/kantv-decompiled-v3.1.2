.class final enum Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;
.super Ljava/lang/Enum;
.source "PhotoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/multiscreen/PhotoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PhotoPlayerAttributes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;

.field public static final enum title:Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;

    const/4 v1, 0x0

    const-string v2, "title"

    invoke-direct {v0, v2, v1}, Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;->title:Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;

    const/4 v0, 0x1

    .line 35
    new-array v0, v0, [Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;

    sget-object v2, Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;->title:Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;->$VALUES:[Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;
    .locals 1

    .line 35
    const-class v0, Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;

    return-object p0
.end method

.method public static values()[Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;
    .locals 1

    .line 35
    sget-object v0, Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;->$VALUES:[Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;

    invoke-virtual {v0}, [Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;

    return-object v0
.end method
