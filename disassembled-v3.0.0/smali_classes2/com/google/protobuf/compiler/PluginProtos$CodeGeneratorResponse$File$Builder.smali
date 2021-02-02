.class public final Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "PluginProtos.java"

# interfaces
.implements Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$FileOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;",
        ">;",
        "Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$FileOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private content_:Ljava/lang/Object;

.field private insertionPoint_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3814
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 3957
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->name_:Ljava/lang/Object;

    .line 4111
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->insertionPoint_:Ljava/lang/Object;

    .line 4403
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->content_:Ljava/lang/Object;

    .line 3815
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 3820
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 3957
    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->name_:Ljava/lang/Object;

    .line 4111
    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->insertionPoint_:Ljava/lang/Object;

    .line 4403
    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->content_:Ljava/lang/Object;

    .line 3821
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/compiler/PluginProtos$1;)V
    .locals 0

    .line 3797
    invoke-direct {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/compiler/PluginProtos$1;)V
    .locals 0

    .line 3797
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3803
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos;->access$2900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 3825
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->access$3300()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3797
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3797
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;
    .locals 0

    .line 3901
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 3797
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->build()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3797
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->build()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;
    .locals 2

    .line 3849
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->buildPartial()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    move-result-object v0

    .line 3850
    invoke-virtual {v0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3851
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 3797
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->buildPartial()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3797
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->buildPartial()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;
    .locals 5

    .line 3857
    new-instance v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/compiler/PluginProtos$1;)V

    .line 3858
    iget v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3863
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->access$3502(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 3867
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->insertionPoint_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->access$3602(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 3871
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->content_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->access$3702(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3872
    invoke-static {v0, v3}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->access$3802(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;I)I

    .line 3873
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3797
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->clear()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3797
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->clear()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3797
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->clear()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3797
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->clear()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;
    .locals 2

    .line 3829
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 3830
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->name_:Ljava/lang/Object;

    .line 3831
    iget v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    .line 3832
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->insertionPoint_:Ljava/lang/Object;

    .line 3833
    iget v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    .line 3834
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->content_:Ljava/lang/Object;

    .line 3835
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearContent()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;
    .locals 1

    .line 4480
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    .line 4481
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->content_:Ljava/lang/Object;

    .line 4482
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3797
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3797
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;
    .locals 0

    .line 3887
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    return-object p1
.end method

.method public clearInsertionPoint()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;
    .locals 1

    .line 4348
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    .line 4349
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->getInsertionPoint()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->insertionPoint_:Ljava/lang/Object;

    .line 4350
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->onChanged()V

    return-object p0
.end method

.method public clearName()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;
    .locals 1

    .line 4079
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    .line 4080
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->name_:Ljava/lang/Object;

    .line 4081
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3797
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3797
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3797
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;
    .locals 0

    .line 3891
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3797
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->clone()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3797
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->clone()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3797
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->clone()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3797
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->clone()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3797
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->clone()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;
    .locals 1

    .line 3878
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3797
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->clone()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 2

    .line 4422
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->content_:Ljava/lang/Object;

    .line 4423
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 4424
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4426
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4427
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4428
    iput-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->content_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 4432
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4444
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->content_:Ljava/lang/Object;

    .line 4445
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4446
    check-cast v0, Ljava/lang/String;

    .line 4447
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4449
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->content_:Ljava/lang/Object;

    return-object v0

    .line 4452
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 3797
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3797
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;
    .locals 1

    .line 3845
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3841
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos;->access$2900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInsertionPoint()Ljava/lang/String;
    .locals 2

    .line 4194
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->insertionPoint_:Ljava/lang/Object;

    .line 4195
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 4196
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4198
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4199
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4200
    iput-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->insertionPoint_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 4204
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInsertionPointBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4248
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->insertionPoint_:Ljava/lang/Object;

    .line 4249
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4250
    check-cast v0, Ljava/lang/String;

    .line 4251
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4253
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->insertionPoint_:Ljava/lang/Object;

    return-object v0

    .line 4256
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 3994
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->name_:Ljava/lang/Object;

    .line 3995
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3996
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3998
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3999
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4000
    iput-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->name_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 4004
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4025
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->name_:Ljava/lang/Object;

    .line 4026
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4027
    check-cast v0, Ljava/lang/String;

    .line 4028
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4030
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 4033
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasContent()Z
    .locals 2

    .line 4412
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInsertionPoint()Z
    .locals 2

    .line 4152
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasName()Z
    .locals 2

    .line 3975
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 3808
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos;->access$3000()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    const-class v2, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    .line 3809
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3797
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3797
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3797
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3797
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3797
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3797
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3944
    :try_start_0
    sget-object v1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 3950
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->mergeFrom(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3946
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3947
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 3950
    invoke-virtual {p0, v0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->mergeFrom(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;
    .locals 1

    .line 3904
    instance-of v0, p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    if-eqz v0, :cond_0

    .line 3905
    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->mergeFrom(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object p1

    return-object p1

    .line 3907
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;
    .locals 1

    .line 3913
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3914
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3915
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    .line 3916
    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->access$3500(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->name_:Ljava/lang/Object;

    .line 3917
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->onChanged()V

    .line 3919
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->hasInsertionPoint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3920
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    .line 3921
    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->access$3600(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->insertionPoint_:Ljava/lang/Object;

    .line 3922
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->onChanged()V

    .line 3924
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3925
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    .line 3926
    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->access$3700(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->content_:Ljava/lang/Object;

    .line 3927
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->onChanged()V

    .line 3929
    :cond_3
    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->access$3900(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    .line 3930
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3797
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3797
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3797
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;
    .locals 0

    .line 4509
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    return-object p1
.end method

.method public setContent(Ljava/lang/String;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4467
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    .line 4468
    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->content_:Ljava/lang/Object;

    .line 4469
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->onChanged()V

    return-object p0

    .line 4465
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setContentBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4497
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    .line 4498
    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->content_:Ljava/lang/Object;

    .line 4499
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->onChanged()V

    return-object p0

    .line 4495
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3797
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3797
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;
    .locals 0

    .line 3883
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    return-object p1
.end method

.method public setInsertionPoint(Ljava/lang/String;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4303
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    .line 4304
    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->insertionPoint_:Ljava/lang/Object;

    .line 4305
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->onChanged()V

    return-object p0

    .line 4301
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setInsertionPointBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4397
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    .line 4398
    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->insertionPoint_:Ljava/lang/Object;

    .line 4399
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->onChanged()V

    return-object p0

    .line 4395
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4057
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    .line 4058
    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->name_:Ljava/lang/Object;

    .line 4059
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->onChanged()V

    return-object p0

    .line 4055
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4105
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->bitField0_:I

    .line 4106
    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->name_:Ljava/lang/Object;

    .line 4107
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->onChanged()V

    return-object p0

    .line 4103
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3797
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3797
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;
    .locals 0

    .line 3896
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3797
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3797
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;
    .locals 0

    .line 4504
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    return-object p1
.end method
