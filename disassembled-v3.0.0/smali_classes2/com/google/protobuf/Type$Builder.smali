.class public final Lcom/google/protobuf/Type$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Type.java"

# interfaces
.implements Lcom/google/protobuf/TypeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/protobuf/Type$Builder;",
        ">;",
        "Lcom/google/protobuf/TypeOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private fieldsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/protobuf/Field;",
            "Lcom/google/protobuf/Field$Builder;",
            "Lcom/google/protobuf/FieldOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private fields_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/Field;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/Object;

.field private oneofs_:Lcom/google/protobuf/LazyStringList;

.field private optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/protobuf/Option;",
            "Lcom/google/protobuf/Option$Builder;",
            "Lcom/google/protobuf/OptionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private options_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/Option;",
            ">;"
        }
    .end annotation
.end field

.field private sourceContextBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/protobuf/SourceContext;",
            "Lcom/google/protobuf/SourceContext$Builder;",
            "Lcom/google/protobuf/SourceContextOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private sourceContext_:Lcom/google/protobuf/SourceContext;

.field private syntax_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 641
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 879
    iput-object v0, p0, Lcom/google/protobuf/Type$Builder;->name_:Ljava/lang/Object;

    .line 969
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Type$Builder;->fields_:Ljava/util/List;

    .line 1280
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protobuf/Type$Builder;->oneofs_:Lcom/google/protobuf/LazyStringList;

    .line 1411
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Type$Builder;->options_:Ljava/util/List;

    const/4 v0, 0x0

    .line 1722
    iput-object v0, p0, Lcom/google/protobuf/Type$Builder;->sourceContext_:Lcom/google/protobuf/SourceContext;

    const/4 v0, 0x0

    .line 1875
    iput v0, p0, Lcom/google/protobuf/Type$Builder;->syntax_:I

    .line 642
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 647
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 879
    iput-object p1, p0, Lcom/google/protobuf/Type$Builder;->name_:Ljava/lang/Object;

    .line 969
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Type$Builder;->fields_:Ljava/util/List;

    .line 1280
    sget-object p1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/google/protobuf/Type$Builder;->oneofs_:Lcom/google/protobuf/LazyStringList;

    .line 1411
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Type$Builder;->options_:Ljava/util/List;

    const/4 p1, 0x0

    .line 1722
    iput-object p1, p0, Lcom/google/protobuf/Type$Builder;->sourceContext_:Lcom/google/protobuf/SourceContext;

    const/4 p1, 0x0

    .line 1875
    iput p1, p0, Lcom/google/protobuf/Type$Builder;->syntax_:I

    .line 648
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/Type$1;)V
    .locals 0

    .line 624
    invoke-direct {p0, p1}, Lcom/google/protobuf/Type$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Type$1;)V
    .locals 0

    .line 624
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;-><init>()V

    return-void
.end method

.method private ensureFieldsIsMutable()V
    .locals 3

    .line 971
    iget v0, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 972
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/Type$Builder;->fields_:Ljava/util/List;

    .line 973
    iget v0, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureOneofsIsMutable()V
    .locals 3

    .line 1282
    iget v0, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 1283
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/google/protobuf/Type$Builder;->oneofs_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/protobuf/Type$Builder;->oneofs_:Lcom/google/protobuf/LazyStringList;

    .line 1284
    iget v0, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureOptionsIsMutable()V
    .locals 3

    .line 1413
    iget v0, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 1414
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/Type$Builder;->options_:Ljava/util/List;

    .line 1415
    iget v0, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 630
    sget-object v0, Lcom/google/protobuf/TypeProto;->internal_static_google_protobuf_Type_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getFieldsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/protobuf/Field;",
            "Lcom/google/protobuf/Field$Builder;",
            "Lcom/google/protobuf/FieldOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1268
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fieldsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1269
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/protobuf/Type$Builder;->fields_:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1273
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 1274
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/protobuf/Type$Builder;->fieldsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 1275
    iput-object v0, p0, Lcom/google/protobuf/Type$Builder;->fields_:Ljava/util/List;

    .line 1277
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fieldsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getOptionsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/protobuf/Option;",
            "Lcom/google/protobuf/Option$Builder;",
            "Lcom/google/protobuf/OptionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1710
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1711
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/protobuf/Type$Builder;->options_:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1715
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 1716
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/protobuf/Type$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 1717
    iput-object v0, p0, Lcom/google/protobuf/Type$Builder;->options_:Ljava/util/List;

    .line 1719
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getSourceContextFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/protobuf/SourceContext;",
            "Lcom/google/protobuf/SourceContext$Builder;",
            "Lcom/google/protobuf/SourceContextOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1864
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->sourceContextBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1865
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 1867
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->getSourceContext()Lcom/google/protobuf/SourceContext;

    move-result-object v1

    .line 1868
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1869
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/protobuf/Type$Builder;->sourceContextBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1870
    iput-object v0, p0, Lcom/google/protobuf/Type$Builder;->sourceContext_:Lcom/google/protobuf/SourceContext;

    .line 1872
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->sourceContextBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 651
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 653
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->getFieldsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 654
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->getOptionsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllFields(Ljava/lang/Iterable;)Lcom/google/protobuf/Type$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Field;",
            ">;)",
            "Lcom/google/protobuf/Type$Builder;"
        }
    .end annotation

    .line 1147
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fieldsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1148
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->ensureFieldsIsMutable()V

    .line 1149
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1151
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1153
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllOneofs(Ljava/lang/Iterable;)Lcom/google/protobuf/Type$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/protobuf/Type$Builder;"
        }
    .end annotation

    .line 1372
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->ensureOneofsIsMutable()V

    .line 1373
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->oneofs_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1375
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllOptions(Ljava/lang/Iterable;)Lcom/google/protobuf/Type$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Option;",
            ">;)",
            "Lcom/google/protobuf/Type$Builder;"
        }
    .end annotation

    .line 1589
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1590
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->ensureOptionsIsMutable()V

    .line 1591
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1593
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1595
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addFields(ILcom/google/protobuf/Field$Builder;)Lcom/google/protobuf/Type$Builder;
    .locals 1

    .line 1129
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fieldsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1130
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->ensureFieldsIsMutable()V

    .line 1131
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/Field$Builder;->build()Lcom/google/protobuf/Field;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1132
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1134
    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/Field$Builder;->build()Lcom/google/protobuf/Field;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addFields(ILcom/google/protobuf/Field;)Lcom/google/protobuf/Type$Builder;
    .locals 1

    .line 1090
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fieldsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 1094
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->ensureFieldsIsMutable()V

    .line 1095
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1096
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1092
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 1098
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addFields(Lcom/google/protobuf/Field$Builder;)Lcom/google/protobuf/Type$Builder;
    .locals 1

    .line 1111
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fieldsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1112
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->ensureFieldsIsMutable()V

    .line 1113
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/Field$Builder;->build()Lcom/google/protobuf/Field;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1114
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1116
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Field$Builder;->build()Lcom/google/protobuf/Field;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addFields(Lcom/google/protobuf/Field;)Lcom/google/protobuf/Type$Builder;
    .locals 1

    .line 1069
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fieldsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 1073
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->ensureFieldsIsMutable()V

    .line 1074
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1075
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1071
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 1077
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addFieldsBuilder()Lcom/google/protobuf/Field$Builder;
    .locals 2

    .line 1239
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->getFieldsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1240
    invoke-static {}, Lcom/google/protobuf/Field;->getDefaultInstance()Lcom/google/protobuf/Field;

    move-result-object v1

    .line 1239
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Field$Builder;

    return-object v0
.end method

.method public addFieldsBuilder(I)Lcom/google/protobuf/Field$Builder;
    .locals 2

    .line 1251
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->getFieldsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1252
    invoke-static {}, Lcom/google/protobuf/Field;->getDefaultInstance()Lcom/google/protobuf/Field;

    move-result-object v1

    .line 1251
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Field$Builder;

    return-object p1
.end method

.method public addOneofs(Ljava/lang/String;)Lcom/google/protobuf/Type$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1358
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->ensureOneofsIsMutable()V

    .line 1359
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->oneofs_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 1360
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    return-object p0

    .line 1356
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addOneofsBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Type$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1403
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1404
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->ensureOneofsIsMutable()V

    .line 1405
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->oneofs_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 1406
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    return-object p0

    .line 1401
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addOptions(ILcom/google/protobuf/Option$Builder;)Lcom/google/protobuf/Type$Builder;
    .locals 1

    .line 1571
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1572
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->ensureOptionsIsMutable()V

    .line 1573
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/Option$Builder;->build()Lcom/google/protobuf/Option;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1574
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1576
    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/Option$Builder;->build()Lcom/google/protobuf/Option;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addOptions(ILcom/google/protobuf/Option;)Lcom/google/protobuf/Type$Builder;
    .locals 1

    .line 1532
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 1536
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->ensureOptionsIsMutable()V

    .line 1537
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1538
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1534
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 1540
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addOptions(Lcom/google/protobuf/Option$Builder;)Lcom/google/protobuf/Type$Builder;
    .locals 1

    .line 1553
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1554
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->ensureOptionsIsMutable()V

    .line 1555
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/Option$Builder;->build()Lcom/google/protobuf/Option;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1556
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1558
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Option$Builder;->build()Lcom/google/protobuf/Option;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addOptions(Lcom/google/protobuf/Option;)Lcom/google/protobuf/Type$Builder;
    .locals 1

    .line 1511
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 1515
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->ensureOptionsIsMutable()V

    .line 1516
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1517
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1513
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 1519
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addOptionsBuilder()Lcom/google/protobuf/Option$Builder;
    .locals 2

    .line 1681
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->getOptionsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1682
    invoke-static {}, Lcom/google/protobuf/Option;->getDefaultInstance()Lcom/google/protobuf/Option;

    move-result-object v1

    .line 1681
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Option$Builder;

    return-object v0
.end method

.method public addOptionsBuilder(I)Lcom/google/protobuf/Option$Builder;
    .locals 2

    .line 1693
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->getOptionsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1694
    invoke-static {}, Lcom/google/protobuf/Option;->getDefaultInstance()Lcom/google/protobuf/Option;

    move-result-object v1

    .line 1693
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Option$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 624
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Type$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 624
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Type$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Type$Builder;
    .locals 0

    .line 766
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Type$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 624
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->build()Lcom/google/protobuf/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 624
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->build()Lcom/google/protobuf/Type;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protobuf/Type;
    .locals 2

    .line 696
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->buildPartial()Lcom/google/protobuf/Type;

    move-result-object v0

    .line 697
    invoke-virtual {v0}, Lcom/google/protobuf/Type;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 698
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/Type$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 624
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->buildPartial()Lcom/google/protobuf/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 624
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->buildPartial()Lcom/google/protobuf/Type;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/Type;
    .locals 3

    .line 704
    new-instance v0, Lcom/google/protobuf/Type;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/Type;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/Type$1;)V

    .line 705
    iget v1, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    .line 707
    iget-object v1, p0, Lcom/google/protobuf/Type$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/Type;->access$302(Lcom/google/protobuf/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    iget-object v1, p0, Lcom/google/protobuf/Type$Builder;->fieldsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    .line 709
    iget v1, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 710
    iget-object v1, p0, Lcom/google/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Type$Builder;->fields_:Ljava/util/List;

    .line 711
    iget v1, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    .line 713
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protobuf/Type;->access$402(Lcom/google/protobuf/Type;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 715
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/Type;->access$402(Lcom/google/protobuf/Type;Ljava/util/List;)Ljava/util/List;

    .line 717
    :goto_0
    iget v1, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 718
    iget-object v1, p0, Lcom/google/protobuf/Type$Builder;->oneofs_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Type$Builder;->oneofs_:Lcom/google/protobuf/LazyStringList;

    .line 719
    iget v1, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    .line 721
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/Type$Builder;->oneofs_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/google/protobuf/Type;->access$502(Lcom/google/protobuf/Type;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 722
    iget-object v1, p0, Lcom/google/protobuf/Type$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_4

    .line 723
    iget v1, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 724
    iget-object v1, p0, Lcom/google/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Type$Builder;->options_:Ljava/util/List;

    .line 725
    iget v1, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    .line 727
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protobuf/Type;->access$602(Lcom/google/protobuf/Type;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 729
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/Type;->access$602(Lcom/google/protobuf/Type;Ljava/util/List;)Ljava/util/List;

    .line 731
    :goto_1
    iget-object v1, p0, Lcom/google/protobuf/Type$Builder;->sourceContextBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_5

    .line 732
    iget-object v1, p0, Lcom/google/protobuf/Type$Builder;->sourceContext_:Lcom/google/protobuf/SourceContext;

    invoke-static {v0, v1}, Lcom/google/protobuf/Type;->access$702(Lcom/google/protobuf/Type;Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/SourceContext;

    goto :goto_2

    .line 734
    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/SourceContext;

    invoke-static {v0, v1}, Lcom/google/protobuf/Type;->access$702(Lcom/google/protobuf/Type;Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/SourceContext;

    .line 736
    :goto_2
    iget v1, p0, Lcom/google/protobuf/Type$Builder;->syntax_:I

    invoke-static {v0, v1}, Lcom/google/protobuf/Type;->access$802(Lcom/google/protobuf/Type;I)I

    const/4 v1, 0x0

    .line 737
    invoke-static {v0, v1}, Lcom/google/protobuf/Type;->access$902(Lcom/google/protobuf/Type;I)I

    .line 738
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 624
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->clear()Lcom/google/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 624
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->clear()Lcom/google/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 624
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->clear()Lcom/google/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 624
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->clear()Lcom/google/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/Type$Builder;
    .locals 2

    .line 658
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 659
    iput-object v0, p0, Lcom/google/protobuf/Type$Builder;->name_:Ljava/lang/Object;

    .line 661
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fieldsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 662
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Type$Builder;->fields_:Ljava/util/List;

    .line 663
    iget v0, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    goto :goto_0

    .line 665
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 667
    :goto_0
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protobuf/Type$Builder;->oneofs_:Lcom/google/protobuf/LazyStringList;

    .line 668
    iget v0, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    .line 669
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 670
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Type$Builder;->options_:Ljava/util/List;

    .line 671
    iget v0, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    goto :goto_1

    .line 673
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 675
    :goto_1
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->sourceContextBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 676
    iput-object v1, p0, Lcom/google/protobuf/Type$Builder;->sourceContext_:Lcom/google/protobuf/SourceContext;

    goto :goto_2

    .line 678
    :cond_2
    iput-object v1, p0, Lcom/google/protobuf/Type$Builder;->sourceContext_:Lcom/google/protobuf/SourceContext;

    .line 679
    iput-object v1, p0, Lcom/google/protobuf/Type$Builder;->sourceContextBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_2
    const/4 v0, 0x0

    .line 681
    iput v0, p0, Lcom/google/protobuf/Type$Builder;->syntax_:I

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 624
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Type$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 624
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Type$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Type$Builder;
    .locals 0

    .line 752
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Type$Builder;

    return-object p1
.end method

.method public clearFields()Lcom/google/protobuf/Type$Builder;
    .locals 1

    .line 1165
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fieldsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1166
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Type$Builder;->fields_:Ljava/util/List;

    .line 1167
    iget v0, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    .line 1168
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1170
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearName()Lcom/google/protobuf/Type$Builder;
    .locals 1

    .line 945
    invoke-static {}, Lcom/google/protobuf/Type;->getDefaultInstance()Lcom/google/protobuf/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Type;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Type$Builder;->name_:Ljava/lang/Object;

    .line 946
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 624
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Type$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 624
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Type$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 624
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Type$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Type$Builder;
    .locals 0

    .line 756
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Type$Builder;

    return-object p1
.end method

.method public clearOneofs()Lcom/google/protobuf/Type$Builder;
    .locals 1

    .line 1386
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protobuf/Type$Builder;->oneofs_:Lcom/google/protobuf/LazyStringList;

    .line 1387
    iget v0, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    .line 1388
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOptions()Lcom/google/protobuf/Type$Builder;
    .locals 1

    .line 1607
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1608
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Type$Builder;->options_:Ljava/util/List;

    .line 1609
    iget v0, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    .line 1610
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1612
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearSourceContext()Lcom/google/protobuf/Type$Builder;
    .locals 2

    .line 1817
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->sourceContextBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1818
    iput-object v1, p0, Lcom/google/protobuf/Type$Builder;->sourceContext_:Lcom/google/protobuf/SourceContext;

    .line 1819
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1821
    :cond_0
    iput-object v1, p0, Lcom/google/protobuf/Type$Builder;->sourceContext_:Lcom/google/protobuf/SourceContext;

    .line 1822
    iput-object v1, p0, Lcom/google/protobuf/Type$Builder;->sourceContextBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearSyntax()Lcom/google/protobuf/Type$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1934
    iput v0, p0, Lcom/google/protobuf/Type$Builder;->syntax_:I

    .line 1935
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 624
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->clone()Lcom/google/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 624
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->clone()Lcom/google/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 624
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->clone()Lcom/google/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 624
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->clone()Lcom/google/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 624
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->clone()Lcom/google/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/Type$Builder;
    .locals 1

    .line 743
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Type$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 624
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->clone()Lcom/google/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 624
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 624
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/Type;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/Type;
    .locals 1

    .line 692
    invoke-static {}, Lcom/google/protobuf/Type;->getDefaultInstance()Lcom/google/protobuf/Type;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 688
    sget-object v0, Lcom/google/protobuf/TypeProto;->internal_static_google_protobuf_Type_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getFields(I)Lcom/google/protobuf/Field;
    .locals 1

    .line 1016
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fieldsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Field;

    return-object p1

    .line 1019
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Field;

    return-object p1
.end method

.method public getFieldsBuilder(I)Lcom/google/protobuf/Field$Builder;
    .locals 1

    .line 1200
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->getFieldsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Field$Builder;

    return-object p1
.end method

.method public getFieldsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Field$Builder;",
            ">;"
        }
    .end annotation

    .line 1263
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->getFieldsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFieldsCount()I
    .locals 1

    .line 1002
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fieldsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 1005
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getFieldsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Field;",
            ">;"
        }
    .end annotation

    .line 988
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fieldsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 991
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFieldsOrBuilder(I)Lcom/google/protobuf/FieldOrBuilder;
    .locals 1

    .line 1211
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fieldsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/FieldOrBuilder;

    return-object p1

    .line 1213
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/FieldOrBuilder;

    return-object p1
.end method

.method public getFieldsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/FieldOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1225
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fieldsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 1226
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1228
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 888
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->name_:Ljava/lang/Object;

    .line 889
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 890
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 892
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 893
    iput-object v0, p0, Lcom/google/protobuf/Type$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 896
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 908
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->name_:Ljava/lang/Object;

    .line 909
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 910
    check-cast v0, Ljava/lang/String;

    .line 911
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 913
    iput-object v0, p0, Lcom/google/protobuf/Type$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 916
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getOneofs(I)Ljava/lang/String;
    .locals 1

    .line 1316
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->oneofs_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getOneofsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1327
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->oneofs_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getOneofsCount()I
    .locals 1

    .line 1306
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->oneofs_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getOneofsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 1296
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->oneofs_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOneofsList()Ljava/util/List;
    .locals 1

    .line 624
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->getOneofsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getOptions(I)Lcom/google/protobuf/Option;
    .locals 1

    .line 1458
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1459
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Option;

    return-object p1

    .line 1461
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Option;

    return-object p1
.end method

.method public getOptionsBuilder(I)Lcom/google/protobuf/Option$Builder;
    .locals 1

    .line 1642
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->getOptionsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Option$Builder;

    return-object p1
.end method

.method public getOptionsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Option$Builder;",
            ">;"
        }
    .end annotation

    .line 1705
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->getOptionsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsCount()I
    .locals 1

    .line 1444
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1445
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 1447
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Option;",
            ">;"
        }
    .end annotation

    .line 1430
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1431
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1433
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsOrBuilder(I)Lcom/google/protobuf/OptionOrBuilder;
    .locals 1

    .line 1653
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1654
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/OptionOrBuilder;

    return-object p1

    .line 1655
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/OptionOrBuilder;

    return-object p1
.end method

.method public getOptionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/OptionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1667
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 1668
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1670
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSourceContext()Lcom/google/protobuf/SourceContext;
    .locals 1

    .line 1743
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->sourceContextBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1744
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->sourceContext_:Lcom/google/protobuf/SourceContext;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/SourceContext;->getDefaultInstance()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    :cond_0
    return-object v0

    .line 1746
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/SourceContext;

    return-object v0
.end method

.method public getSourceContextBuilder()Lcom/google/protobuf/SourceContext$Builder;
    .locals 1

    .line 1836
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    .line 1837
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->getSourceContextFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/SourceContext$Builder;

    return-object v0
.end method

.method public getSourceContextOrBuilder()Lcom/google/protobuf/SourceContextOrBuilder;
    .locals 1

    .line 1847
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->sourceContextBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 1848
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/SourceContextOrBuilder;

    return-object v0

    .line 1850
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->sourceContext_:Lcom/google/protobuf/SourceContext;

    if-nez v0, :cond_1

    .line 1851
    invoke-static {}, Lcom/google/protobuf/SourceContext;->getDefaultInstance()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getSyntax()Lcom/google/protobuf/Syntax;
    .locals 1

    .line 1906
    iget v0, p0, Lcom/google/protobuf/Type$Builder;->syntax_:I

    invoke-static {v0}, Lcom/google/protobuf/Syntax;->valueOf(I)Lcom/google/protobuf/Syntax;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1907
    sget-object v0, Lcom/google/protobuf/Syntax;->UNRECOGNIZED:Lcom/google/protobuf/Syntax;

    :cond_0
    return-object v0
.end method

.method public getSyntaxValue()I
    .locals 1

    .line 1884
    iget v0, p0, Lcom/google/protobuf/Type$Builder;->syntax_:I

    return v0
.end method

.method public hasSourceContext()Z
    .locals 1

    .line 1733
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->sourceContextBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->sourceContext_:Lcom/google/protobuf/SourceContext;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 635
    sget-object v0, Lcom/google/protobuf/TypeProto;->internal_static_google_protobuf_Type_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/google/protobuf/Type;

    const-class v2, Lcom/google/protobuf/Type$Builder;

    .line 636
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

    .line 624
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Type$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 624
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Type$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Type$Builder;

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

    .line 624
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Type$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Type$Builder;

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

    .line 624
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Type$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 624
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Type$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Type$Builder;

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

    .line 624
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Type$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Type$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 866
    :try_start_0
    invoke-static {}, Lcom/google/protobuf/Type;->access$1000()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Type;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 872
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Type$Builder;->mergeFrom(Lcom/google/protobuf/Type;)Lcom/google/protobuf/Type$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 868
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Type;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 869
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

    .line 872
    invoke-virtual {p0, v0}, Lcom/google/protobuf/Type$Builder;->mergeFrom(Lcom/google/protobuf/Type;)Lcom/google/protobuf/Type$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Type$Builder;
    .locals 1

    .line 769
    instance-of v0, p1, Lcom/google/protobuf/Type;

    if-eqz v0, :cond_0

    .line 770
    check-cast p1, Lcom/google/protobuf/Type;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Type$Builder;->mergeFrom(Lcom/google/protobuf/Type;)Lcom/google/protobuf/Type$Builder;

    move-result-object p1

    return-object p1

    .line 772
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Type;)Lcom/google/protobuf/Type$Builder;
    .locals 3

    .line 778
    invoke-static {}, Lcom/google/protobuf/Type;->getDefaultInstance()Lcom/google/protobuf/Type;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 779
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Type;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 780
    invoke-static {p1}, Lcom/google/protobuf/Type;->access$300(Lcom/google/protobuf/Type;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Type$Builder;->name_:Ljava/lang/Object;

    .line 781
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    .line 783
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fieldsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 784
    invoke-static {p1}, Lcom/google/protobuf/Type;->access$400(Lcom/google/protobuf/Type;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 785
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 786
    invoke-static {p1}, Lcom/google/protobuf/Type;->access$400(Lcom/google/protobuf/Type;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Type$Builder;->fields_:Ljava/util/List;

    .line 787
    iget v0, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    goto :goto_0

    .line 789
    :cond_2
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->ensureFieldsIsMutable()V

    .line 790
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/Type;->access$400(Lcom/google/protobuf/Type;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 792
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    goto :goto_2

    .line 795
    :cond_3
    invoke-static {p1}, Lcom/google/protobuf/Type;->access$400(Lcom/google/protobuf/Type;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 796
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fieldsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 797
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fieldsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 798
    iput-object v1, p0, Lcom/google/protobuf/Type$Builder;->fieldsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 799
    invoke-static {p1}, Lcom/google/protobuf/Type;->access$400(Lcom/google/protobuf/Type;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Type$Builder;->fields_:Ljava/util/List;

    .line 800
    iget v0, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    .line 801
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_4

    .line 803
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->getFieldsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/protobuf/Type$Builder;->fieldsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    .line 805
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fieldsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/protobuf/Type;->access$400(Lcom/google/protobuf/Type;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 809
    :cond_6
    :goto_2
    invoke-static {p1}, Lcom/google/protobuf/Type;->access$500(Lcom/google/protobuf/Type;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 810
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->oneofs_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 811
    invoke-static {p1}, Lcom/google/protobuf/Type;->access$500(Lcom/google/protobuf/Type;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Type$Builder;->oneofs_:Lcom/google/protobuf/LazyStringList;

    .line 812
    iget v0, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    goto :goto_3

    .line 814
    :cond_7
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->ensureOneofsIsMutable()V

    .line 815
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->oneofs_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/google/protobuf/Type;->access$500(Lcom/google/protobuf/Type;)Lcom/google/protobuf/LazyStringList;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 817
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    .line 819
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_a

    .line 820
    invoke-static {p1}, Lcom/google/protobuf/Type;->access$600(Lcom/google/protobuf/Type;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 821
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 822
    invoke-static {p1}, Lcom/google/protobuf/Type;->access$600(Lcom/google/protobuf/Type;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Type$Builder;->options_:Ljava/util/List;

    .line 823
    iget v0, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    goto :goto_4

    .line 825
    :cond_9
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->ensureOptionsIsMutable()V

    .line 826
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/Type;->access$600(Lcom/google/protobuf/Type;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 828
    :goto_4
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    goto :goto_5

    .line 831
    :cond_a
    invoke-static {p1}, Lcom/google/protobuf/Type;->access$600(Lcom/google/protobuf/Type;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 832
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 833
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 834
    iput-object v1, p0, Lcom/google/protobuf/Type$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 835
    invoke-static {p1}, Lcom/google/protobuf/Type;->access$600(Lcom/google/protobuf/Type;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Type$Builder;->options_:Ljava/util/List;

    .line 836
    iget v0, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/Type$Builder;->bitField0_:I

    .line 837
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_b

    .line 839
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->getOptionsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_b
    iput-object v1, p0, Lcom/google/protobuf/Type$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_5

    .line 841
    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/protobuf/Type;->access$600(Lcom/google/protobuf/Type;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 845
    :cond_d
    :goto_5
    invoke-virtual {p1}, Lcom/google/protobuf/Type;->hasSourceContext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 846
    invoke-virtual {p1}, Lcom/google/protobuf/Type;->getSourceContext()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/Type$Builder;->mergeSourceContext(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/Type$Builder;

    .line 848
    :cond_e
    invoke-static {p1}, Lcom/google/protobuf/Type;->access$800(Lcom/google/protobuf/Type;)I

    move-result v0

    if-eqz v0, :cond_f

    .line 849
    invoke-virtual {p1}, Lcom/google/protobuf/Type;->getSyntaxValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/Type$Builder;->setSyntaxValue(I)Lcom/google/protobuf/Type$Builder;

    .line 851
    :cond_f
    iget-object p1, p1, Lcom/google/protobuf/Type;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Type$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Type$Builder;

    .line 852
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeSourceContext(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/Type$Builder;
    .locals 1

    .line 1795
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->sourceContextBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1796
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->sourceContext_:Lcom/google/protobuf/SourceContext;

    if-eqz v0, :cond_0

    .line 1798
    invoke-static {v0}, Lcom/google/protobuf/SourceContext;->newBuilder(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/SourceContext$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SourceContext$Builder;->mergeFrom(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/SourceContext$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/SourceContext$Builder;->buildPartial()Lcom/google/protobuf/SourceContext;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Type$Builder;->sourceContext_:Lcom/google/protobuf/SourceContext;

    goto :goto_0

    .line 1800
    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/Type$Builder;->sourceContext_:Lcom/google/protobuf/SourceContext;

    .line 1802
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    goto :goto_1

    .line 1804
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 624
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Type$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 624
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Type$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 624
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Type$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Type$Builder;
    .locals 0

    .line 1945
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Type$Builder;

    return-object p1
.end method

.method public removeFields(I)Lcom/google/protobuf/Type$Builder;
    .locals 1

    .line 1182
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fieldsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1183
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->ensureFieldsIsMutable()V

    .line 1184
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1185
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1187
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeOptions(I)Lcom/google/protobuf/Type$Builder;
    .locals 1

    .line 1624
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1625
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->ensureOptionsIsMutable()V

    .line 1626
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1627
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1629
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 624
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Type$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 624
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Type$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Type$Builder;
    .locals 0

    .line 748
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Type$Builder;

    return-object p1
.end method

.method public setFields(ILcom/google/protobuf/Field$Builder;)Lcom/google/protobuf/Type$Builder;
    .locals 1

    .line 1052
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fieldsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1053
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->ensureFieldsIsMutable()V

    .line 1054
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/Field$Builder;->build()Lcom/google/protobuf/Field;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1055
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1057
    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/Field$Builder;->build()Lcom/google/protobuf/Field;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setFields(ILcom/google/protobuf/Field;)Lcom/google/protobuf/Type$Builder;
    .locals 1

    .line 1031
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fieldsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 1035
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->ensureFieldsIsMutable()V

    .line 1036
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1037
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1033
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 1039
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/Type$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 932
    iput-object p1, p0, Lcom/google/protobuf/Type$Builder;->name_:Ljava/lang/Object;

    .line 933
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    return-object p0

    .line 929
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Type$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 961
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 963
    iput-object p1, p0, Lcom/google/protobuf/Type$Builder;->name_:Ljava/lang/Object;

    .line 964
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    return-object p0

    .line 959
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setOneofs(ILjava/lang/String;)Lcom/google/protobuf/Type$Builder;
    .locals 1

    if-eqz p2, :cond_0

    .line 1341
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->ensureOneofsIsMutable()V

    .line 1342
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->oneofs_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1343
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    return-object p0

    .line 1339
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setOptions(ILcom/google/protobuf/Option$Builder;)Lcom/google/protobuf/Type$Builder;
    .locals 1

    .line 1494
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1495
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->ensureOptionsIsMutable()V

    .line 1496
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/Option$Builder;->build()Lcom/google/protobuf/Option;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1497
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1499
    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/Option$Builder;->build()Lcom/google/protobuf/Option;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setOptions(ILcom/google/protobuf/Option;)Lcom/google/protobuf/Type$Builder;
    .locals 1

    .line 1473
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 1477
    invoke-direct {p0}, Lcom/google/protobuf/Type$Builder;->ensureOptionsIsMutable()V

    .line 1478
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1479
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1475
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 1481
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 624
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/Type$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 624
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/Type$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Type$Builder;
    .locals 0

    .line 761
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Type$Builder;

    return-object p1
.end method

.method public setSourceContext(Lcom/google/protobuf/SourceContext$Builder;)Lcom/google/protobuf/Type$Builder;
    .locals 1

    .line 1778
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->sourceContextBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1779
    invoke-virtual {p1}, Lcom/google/protobuf/SourceContext$Builder;->build()Lcom/google/protobuf/SourceContext;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Type$Builder;->sourceContext_:Lcom/google/protobuf/SourceContext;

    .line 1780
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1782
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/SourceContext$Builder;->build()Lcom/google/protobuf/SourceContext;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setSourceContext(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/Type$Builder;
    .locals 1

    .line 1757
    iget-object v0, p0, Lcom/google/protobuf/Type$Builder;->sourceContextBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 1761
    iput-object p1, p0, Lcom/google/protobuf/Type$Builder;->sourceContext_:Lcom/google/protobuf/SourceContext;

    .line 1762
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1759
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 1764
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setSyntax(Lcom/google/protobuf/Syntax;)Lcom/google/protobuf/Type$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 1921
    invoke-virtual {p1}, Lcom/google/protobuf/Syntax;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/Type$Builder;->syntax_:I

    .line 1922
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    return-object p0

    .line 1918
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setSyntaxValue(I)Lcom/google/protobuf/Type$Builder;
    .locals 0

    .line 1894
    iput p1, p0, Lcom/google/protobuf/Type$Builder;->syntax_:I

    .line 1895
    invoke-virtual {p0}, Lcom/google/protobuf/Type$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 624
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Type$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 624
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Type$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Type$Builder;
    .locals 0

    .line 1940
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFieldsProto3(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Type$Builder;

    return-object p1
.end method
