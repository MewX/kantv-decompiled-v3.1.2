.class public Lcom/avos/avoscloud/AVDeleteOption;
.super Ljava/lang/Object;
.source "AVDeleteOption.java"


# instance fields
.field matchQuery:Lcom/avos/avoscloud/AVQuery;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public query(Lcom/avos/avoscloud/AVQuery;)Lcom/avos/avoscloud/AVDeleteOption;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/avos/avoscloud/AVDeleteOption;->matchQuery:Lcom/avos/avoscloud/AVQuery;

    return-object p0
.end method
