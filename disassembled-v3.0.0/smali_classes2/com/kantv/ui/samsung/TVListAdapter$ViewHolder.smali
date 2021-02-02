.class Lcom/kantv/ui/samsung/TVListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TVListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/samsung/TVListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field details:Landroid/widget/TextView;

.field name:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/kantv/ui/samsung/TVListAdapter;


# direct methods
.method private constructor <init>(Lcom/kantv/ui/samsung/TVListAdapter;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/kantv/ui/samsung/TVListAdapter$ViewHolder;->this$0:Lcom/kantv/ui/samsung/TVListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kantv/ui/samsung/TVListAdapter;Lcom/kantv/ui/samsung/TVListAdapter$1;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/kantv/ui/samsung/TVListAdapter$ViewHolder;-><init>(Lcom/kantv/ui/samsung/TVListAdapter;)V

    return-void
.end method
