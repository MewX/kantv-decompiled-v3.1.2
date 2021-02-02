.class Lcom/samsung/multiscreen/Player$DMPStatus;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/multiscreen/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DMPStatus"
.end annotation


# instance fields
.field mAppName:Ljava/lang/String;

.field mDMPRunning:Ljava/lang/Boolean;

.field mRunning:Ljava/lang/Boolean;

.field mVisible:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/samsung/multiscreen/Player;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Player;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/samsung/multiscreen/Player$DMPStatus;->this$0:Lcom/samsung/multiscreen/Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 163
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/multiscreen/Player$DMPStatus;->mVisible:Ljava/lang/Boolean;

    .line 164
    iput-object p1, p0, Lcom/samsung/multiscreen/Player$DMPStatus;->mDMPRunning:Ljava/lang/Boolean;

    .line 165
    iput-object p1, p0, Lcom/samsung/multiscreen/Player$DMPStatus;->mRunning:Ljava/lang/Boolean;

    const/4 p1, 0x0

    .line 166
    iput-object p1, p0, Lcom/samsung/multiscreen/Player$DMPStatus;->mAppName:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/samsung/multiscreen/Player;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/samsung/multiscreen/Player$DMPStatus;->this$0:Lcom/samsung/multiscreen/Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p2, p0, Lcom/samsung/multiscreen/Player$DMPStatus;->mVisible:Ljava/lang/Boolean;

    .line 181
    iput-object p4, p0, Lcom/samsung/multiscreen/Player$DMPStatus;->mRunning:Ljava/lang/Boolean;

    .line 182
    iput-object p3, p0, Lcom/samsung/multiscreen/Player$DMPStatus;->mDMPRunning:Ljava/lang/Boolean;

    .line 183
    iput-object p5, p0, Lcom/samsung/multiscreen/Player$DMPStatus;->mAppName:Ljava/lang/String;

    return-void
.end method
