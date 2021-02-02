.class public Lcom/avos/avoscloud/AVSaveOption;
.super Ljava/lang/Object;
.source "AVSaveOption.java"


# instance fields
.field fetchWhenSave:Z

.field matchQuery:Lcom/avos/avoscloud/AVQuery;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public query(Lcom/avos/avoscloud/AVQuery;)Lcom/avos/avoscloud/AVSaveOption;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/avos/avoscloud/AVSaveOption;->matchQuery:Lcom/avos/avoscloud/AVQuery;

    return-object p0
.end method

.method public setFetchWhenSave(Z)Lcom/avos/avoscloud/AVSaveOption;
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVSaveOption;->fetchWhenSave:Z

    return-object p0
.end method
