.class public final enum Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;
.super Ljava/lang/Enum;
.source "ActionSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/view/ActionSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SheetItemColor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

.field public static final enum Blue:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

.field public static final enum DrgGreen:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

.field public static final enum Red:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 198
    new-instance v0, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    const/4 v1, 0x0

    const-string v2, "Blue"

    const-string v3, "#1D94F0"

    invoke-direct {v0, v2, v1, v3}, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->Blue:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    new-instance v0, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    const/4 v2, 0x1

    const-string v3, "Red"

    const-string v4, "#FD4A2E"

    invoke-direct {v0, v3, v2, v4}, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->Red:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    .line 199
    new-instance v0, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    const/4 v3, 0x2

    const-string v4, "DrgGreen"

    const-string v5, "#00b6c8"

    invoke-direct {v0, v4, v3, v5}, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->DrgGreen:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    const/4 v0, 0x3

    .line 197
    new-array v0, v0, [Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    sget-object v4, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->Blue:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    aput-object v4, v0, v1

    sget-object v1, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->Red:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->DrgGreen:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->$VALUES:[Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 202
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 203
    iput-object p3, p0, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;
    .locals 1

    .line 197
    const-class v0, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    return-object p0
.end method

.method public static values()[Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;
    .locals 1

    .line 197
    sget-object v0, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->$VALUES:[Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    invoke-virtual {v0}, [Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->name:Ljava/lang/String;

    return-void
.end method
