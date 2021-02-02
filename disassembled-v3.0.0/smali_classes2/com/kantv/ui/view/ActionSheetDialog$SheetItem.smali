.class public Lcom/kantv/ui/view/ActionSheetDialog$SheetItem;
.super Ljava/lang/Object;
.source "ActionSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/view/ActionSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SheetItem"
.end annotation


# instance fields
.field color:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

.field itemClickListener:Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;

.field name:Ljava/lang/String;

.field final synthetic this$0:Lcom/kantv/ui/view/ActionSheetDialog;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/view/ActionSheetDialog;Ljava/lang/String;Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/kantv/ui/view/ActionSheetDialog$SheetItem;->this$0:Lcom/kantv/ui/view/ActionSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p2, p0, Lcom/kantv/ui/view/ActionSheetDialog$SheetItem;->name:Ljava/lang/String;

    .line 192
    iput-object p3, p0, Lcom/kantv/ui/view/ActionSheetDialog$SheetItem;->color:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    .line 193
    iput-object p4, p0, Lcom/kantv/ui/view/ActionSheetDialog$SheetItem;->itemClickListener:Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;

    return-void
.end method
