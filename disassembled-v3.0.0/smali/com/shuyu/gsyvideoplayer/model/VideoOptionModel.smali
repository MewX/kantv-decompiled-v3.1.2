.class public Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;
.super Ljava/lang/Object;
.source "VideoOptionModel.java"


# static fields
.field public static final VALUE_TYPE_INT:I = 0x0

.field public static final VALUE_TYPE_STRING:I = 0x1


# instance fields
.field category:I

.field name:Ljava/lang/String;

.field valueInt:I

.field valueString:Ljava/lang/String;

.field valueType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;->valueType:I

    .line 26
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;->category:I

    .line 27
    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;->name:Ljava/lang/String;

    .line 28
    iput p3, p0, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;->valueInt:I

    .line 29
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;->valueType:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;->valueType:I

    .line 34
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;->category:I

    .line 35
    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;->name:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;->valueString:Ljava/lang/String;

    const/4 p1, 0x1

    .line 37
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;->valueType:I

    return-void
.end method


# virtual methods
.method public getCategory()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;->category:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValueInt()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;->valueInt:I

    return v0
.end method

.method public getValueString()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;->valueString:Ljava/lang/String;

    return-object v0
.end method

.method public getValueType()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;->valueType:I

    return v0
.end method

.method public setCategory(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;->category:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setValueInt(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;->valueInt:I

    const/4 p1, 0x0

    .line 62
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;->valueType:I

    return-void
.end method

.method public setValueString(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;->valueString:Ljava/lang/String;

    const/4 p1, 0x1

    .line 79
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;->valueType:I

    return-void
.end method

.method public setValueType(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;->valueType:I

    return-void
.end method
