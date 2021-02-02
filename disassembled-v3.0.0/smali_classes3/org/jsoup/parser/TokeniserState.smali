.class abstract enum Lorg/jsoup/parser/TokeniserState;
.super Ljava/lang/Enum;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jsoup/parser/TokeniserState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jsoup/parser/TokeniserState;

.field public static final enum AfterAttributeName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AfterAttributeValue_quoted:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AfterDoctypeName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AfterDoctypePublicIdentifier:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AfterDoctypePublicKeyword:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AfterDoctypeSystemIdentifier:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AfterDoctypeSystemKeyword:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AttributeName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AttributeValue_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AttributeValue_singleQuoted:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AttributeValue_unquoted:Lorg/jsoup/parser/TokeniserState;

.field public static final enum BeforeAttributeName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum BeforeAttributeValue:Lorg/jsoup/parser/TokeniserState;

.field public static final enum BeforeDoctypeName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum BeforeDoctypePublicIdentifier:Lorg/jsoup/parser/TokeniserState;

.field public static final enum BeforeDoctypeSystemIdentifier:Lorg/jsoup/parser/TokeniserState;

.field public static final enum BetweenDoctypePublicAndSystemIdentifiers:Lorg/jsoup/parser/TokeniserState;

.field public static final enum BogusComment:Lorg/jsoup/parser/TokeniserState;

.field public static final enum BogusDoctype:Lorg/jsoup/parser/TokeniserState;

.field public static final enum CdataSection:Lorg/jsoup/parser/TokeniserState;

.field public static final enum CharacterReferenceInData:Lorg/jsoup/parser/TokeniserState;

.field public static final enum CharacterReferenceInRcdata:Lorg/jsoup/parser/TokeniserState;

.field public static final enum Comment:Lorg/jsoup/parser/TokeniserState;

.field public static final enum CommentEnd:Lorg/jsoup/parser/TokeniserState;

.field public static final enum CommentEndBang:Lorg/jsoup/parser/TokeniserState;

.field public static final enum CommentEndDash:Lorg/jsoup/parser/TokeniserState;

.field public static final enum CommentStart:Lorg/jsoup/parser/TokeniserState;

.field public static final enum CommentStartDash:Lorg/jsoup/parser/TokeniserState;

.field public static final enum Data:Lorg/jsoup/parser/TokeniserState;

.field public static final enum Doctype:Lorg/jsoup/parser/TokeniserState;

.field public static final enum DoctypeName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum DoctypePublicIdentifier_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

.field public static final enum DoctypePublicIdentifier_singleQuoted:Lorg/jsoup/parser/TokeniserState;

.field public static final enum DoctypeSystemIdentifier_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

.field public static final enum DoctypeSystemIdentifier_singleQuoted:Lorg/jsoup/parser/TokeniserState;

.field public static final enum EndTagOpen:Lorg/jsoup/parser/TokeniserState;

.field public static final enum MarkupDeclarationOpen:Lorg/jsoup/parser/TokeniserState;

.field public static final enum PLAINTEXT:Lorg/jsoup/parser/TokeniserState;

.field public static final enum RCDATAEndTagName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum RCDATAEndTagOpen:Lorg/jsoup/parser/TokeniserState;

.field public static final enum Rawtext:Lorg/jsoup/parser/TokeniserState;

.field public static final enum RawtextEndTagName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum RawtextEndTagOpen:Lorg/jsoup/parser/TokeniserState;

.field public static final enum RawtextLessthanSign:Lorg/jsoup/parser/TokeniserState;

.field public static final enum Rcdata:Lorg/jsoup/parser/TokeniserState;

.field public static final enum RcdataLessthanSign:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptData:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataDoubleEscapeEnd:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataDoubleEscapeStart:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataDoubleEscaped:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataDoubleEscapedDash:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataDoubleEscapedDashDash:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataDoubleEscapedLessthanSign:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEndTagName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEndTagOpen:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEscapeStart:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEscapeStartDash:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEscaped:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEscapedDash:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEscapedDashDash:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEscapedEndTagName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEscapedEndTagOpen:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEscapedLessthanSign:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataLessthanSign:Lorg/jsoup/parser/TokeniserState;

.field public static final enum SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState;

.field public static final enum TagName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum TagOpen:Lorg/jsoup/parser/TokeniserState;

.field private static final attributeDoubleValueCharsSorted:[C

.field private static final attributeNameCharsSorted:[C

.field private static final attributeSingleValueCharsSorted:[C

.field private static final attributeValueUnquoted:[C

.field private static final eof:C = '\uffff'

.field static final nullChar:C = '\u0000'

.field private static final replacementChar:C = '\ufffd'

.field private static final replacementStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 9
    new-instance v0, Lorg/jsoup/parser/TokeniserState$1;

    const/4 v1, 0x0

    const-string v2, "Data"

    invoke-direct {v0, v2, v1}, Lorg/jsoup/parser/TokeniserState$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 33
    new-instance v0, Lorg/jsoup/parser/TokeniserState$2;

    const/4 v2, 0x1

    const-string v3, "CharacterReferenceInData"

    invoke-direct {v0, v3, v2}, Lorg/jsoup/parser/TokeniserState$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->CharacterReferenceInData:Lorg/jsoup/parser/TokeniserState;

    .line 39
    new-instance v0, Lorg/jsoup/parser/TokeniserState$3;

    const/4 v3, 0x2

    const-string v4, "Rcdata"

    invoke-direct {v0, v4, v3}, Lorg/jsoup/parser/TokeniserState$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    .line 64
    new-instance v0, Lorg/jsoup/parser/TokeniserState$4;

    const/4 v4, 0x3

    const-string v5, "CharacterReferenceInRcdata"

    invoke-direct {v0, v5, v4}, Lorg/jsoup/parser/TokeniserState$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->CharacterReferenceInRcdata:Lorg/jsoup/parser/TokeniserState;

    .line 69
    new-instance v0, Lorg/jsoup/parser/TokeniserState$5;

    const/4 v5, 0x4

    const-string v6, "Rawtext"

    invoke-direct {v0, v6, v5}, Lorg/jsoup/parser/TokeniserState$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->Rawtext:Lorg/jsoup/parser/TokeniserState;

    .line 74
    new-instance v0, Lorg/jsoup/parser/TokeniserState$6;

    const/4 v6, 0x5

    const-string v7, "ScriptData"

    invoke-direct {v0, v7, v6}, Lorg/jsoup/parser/TokeniserState$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptData:Lorg/jsoup/parser/TokeniserState;

    .line 79
    new-instance v0, Lorg/jsoup/parser/TokeniserState$7;

    const/4 v7, 0x6

    const-string v8, "PLAINTEXT"

    invoke-direct {v0, v8, v7}, Lorg/jsoup/parser/TokeniserState$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->PLAINTEXT:Lorg/jsoup/parser/TokeniserState;

    .line 97
    new-instance v0, Lorg/jsoup/parser/TokeniserState$8;

    const/4 v8, 0x7

    const-string v9, "TagOpen"

    invoke-direct {v0, v9, v8}, Lorg/jsoup/parser/TokeniserState$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->TagOpen:Lorg/jsoup/parser/TokeniserState;

    .line 123
    new-instance v0, Lorg/jsoup/parser/TokeniserState$9;

    const/16 v9, 0x8

    const-string v10, "EndTagOpen"

    invoke-direct {v0, v10, v9}, Lorg/jsoup/parser/TokeniserState$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->EndTagOpen:Lorg/jsoup/parser/TokeniserState;

    .line 141
    new-instance v0, Lorg/jsoup/parser/TokeniserState$10;

    const/16 v10, 0x9

    const-string v11, "TagName"

    invoke-direct {v0, v11, v10}, Lorg/jsoup/parser/TokeniserState$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->TagName:Lorg/jsoup/parser/TokeniserState;

    .line 174
    new-instance v0, Lorg/jsoup/parser/TokeniserState$11;

    const/16 v11, 0xa

    const-string v12, "RcdataLessthanSign"

    invoke-direct {v0, v12, v11}, Lorg/jsoup/parser/TokeniserState$11;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->RcdataLessthanSign:Lorg/jsoup/parser/TokeniserState;

    .line 193
    new-instance v0, Lorg/jsoup/parser/TokeniserState$12;

    const/16 v12, 0xb

    const-string v13, "RCDATAEndTagOpen"

    invoke-direct {v0, v13, v12}, Lorg/jsoup/parser/TokeniserState$12;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->RCDATAEndTagOpen:Lorg/jsoup/parser/TokeniserState;

    .line 206
    new-instance v0, Lorg/jsoup/parser/TokeniserState$13;

    const/16 v13, 0xc

    const-string v14, "RCDATAEndTagName"

    invoke-direct {v0, v14, v13}, Lorg/jsoup/parser/TokeniserState$13;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->RCDATAEndTagName:Lorg/jsoup/parser/TokeniserState;

    .line 252
    new-instance v0, Lorg/jsoup/parser/TokeniserState$14;

    const/16 v14, 0xd

    const-string v15, "RawtextLessthanSign"

    invoke-direct {v0, v15, v14}, Lorg/jsoup/parser/TokeniserState$14;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->RawtextLessthanSign:Lorg/jsoup/parser/TokeniserState;

    .line 263
    new-instance v0, Lorg/jsoup/parser/TokeniserState$15;

    const/16 v15, 0xe

    const-string v14, "RawtextEndTagOpen"

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$15;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->RawtextEndTagOpen:Lorg/jsoup/parser/TokeniserState;

    .line 268
    new-instance v0, Lorg/jsoup/parser/TokeniserState$16;

    const-string v14, "RawtextEndTagName"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$16;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->RawtextEndTagName:Lorg/jsoup/parser/TokeniserState;

    .line 273
    new-instance v0, Lorg/jsoup/parser/TokeniserState$17;

    const-string v14, "ScriptDataLessthanSign"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$17;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataLessthanSign:Lorg/jsoup/parser/TokeniserState;

    .line 291
    new-instance v0, Lorg/jsoup/parser/TokeniserState$18;

    const-string v14, "ScriptDataEndTagOpen"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$18;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataEndTagOpen:Lorg/jsoup/parser/TokeniserState;

    .line 296
    new-instance v0, Lorg/jsoup/parser/TokeniserState$19;

    const-string v14, "ScriptDataEndTagName"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$19;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataEndTagName:Lorg/jsoup/parser/TokeniserState;

    .line 301
    new-instance v0, Lorg/jsoup/parser/TokeniserState$20;

    const-string v14, "ScriptDataEscapeStart"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$20;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapeStart:Lorg/jsoup/parser/TokeniserState;

    .line 311
    new-instance v0, Lorg/jsoup/parser/TokeniserState$21;

    const-string v14, "ScriptDataEscapeStartDash"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$21;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapeStartDash:Lorg/jsoup/parser/TokeniserState;

    .line 321
    new-instance v0, Lorg/jsoup/parser/TokeniserState$22;

    const-string v14, "ScriptDataEscaped"

    const/16 v15, 0x15

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$22;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscaped:Lorg/jsoup/parser/TokeniserState;

    .line 348
    new-instance v0, Lorg/jsoup/parser/TokeniserState$23;

    const-string v14, "ScriptDataEscapedDash"

    const/16 v15, 0x16

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$23;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedDash:Lorg/jsoup/parser/TokeniserState;

    .line 376
    new-instance v0, Lorg/jsoup/parser/TokeniserState$24;

    const-string v14, "ScriptDataEscapedDashDash"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$24;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedDashDash:Lorg/jsoup/parser/TokeniserState;

    .line 407
    new-instance v0, Lorg/jsoup/parser/TokeniserState$25;

    const-string v14, "ScriptDataEscapedLessthanSign"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$25;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedLessthanSign:Lorg/jsoup/parser/TokeniserState;

    .line 423
    new-instance v0, Lorg/jsoup/parser/TokeniserState$26;

    const-string v14, "ScriptDataEscapedEndTagOpen"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$26;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedEndTagOpen:Lorg/jsoup/parser/TokeniserState;

    .line 436
    new-instance v0, Lorg/jsoup/parser/TokeniserState$27;

    const-string v14, "ScriptDataEscapedEndTagName"

    const/16 v15, 0x1a

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$27;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedEndTagName:Lorg/jsoup/parser/TokeniserState;

    .line 441
    new-instance v0, Lorg/jsoup/parser/TokeniserState$28;

    const-string v14, "ScriptDataDoubleEscapeStart"

    const/16 v15, 0x1b

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$28;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapeStart:Lorg/jsoup/parser/TokeniserState;

    .line 446
    new-instance v0, Lorg/jsoup/parser/TokeniserState$29;

    const-string v14, "ScriptDataDoubleEscaped"

    const/16 v15, 0x1c

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$29;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscaped:Lorg/jsoup/parser/TokeniserState;

    .line 473
    new-instance v0, Lorg/jsoup/parser/TokeniserState$30;

    const-string v14, "ScriptDataDoubleEscapedDash"

    const/16 v15, 0x1d

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$30;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapedDash:Lorg/jsoup/parser/TokeniserState;

    .line 500
    new-instance v0, Lorg/jsoup/parser/TokeniserState$31;

    const-string v14, "ScriptDataDoubleEscapedDashDash"

    const/16 v15, 0x1e

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$31;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapedDashDash:Lorg/jsoup/parser/TokeniserState;

    .line 530
    new-instance v0, Lorg/jsoup/parser/TokeniserState$32;

    const-string v14, "ScriptDataDoubleEscapedLessthanSign"

    const/16 v15, 0x1f

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$32;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapedLessthanSign:Lorg/jsoup/parser/TokeniserState;

    .line 541
    new-instance v0, Lorg/jsoup/parser/TokeniserState$33;

    const-string v14, "ScriptDataDoubleEscapeEnd"

    const/16 v15, 0x20

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$33;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapeEnd:Lorg/jsoup/parser/TokeniserState;

    .line 546
    new-instance v0, Lorg/jsoup/parser/TokeniserState$34;

    const-string v14, "BeforeAttributeName"

    const/16 v15, 0x21

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$34;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->BeforeAttributeName:Lorg/jsoup/parser/TokeniserState;

    .line 590
    new-instance v0, Lorg/jsoup/parser/TokeniserState$35;

    const-string v14, "AttributeName"

    const/16 v15, 0x22

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$35;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->AttributeName:Lorg/jsoup/parser/TokeniserState;

    .line 632
    new-instance v0, Lorg/jsoup/parser/TokeniserState$36;

    const-string v14, "AfterAttributeName"

    const/16 v15, 0x23

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$36;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->AfterAttributeName:Lorg/jsoup/parser/TokeniserState;

    .line 677
    new-instance v0, Lorg/jsoup/parser/TokeniserState$37;

    const-string v14, "BeforeAttributeValue"

    const/16 v15, 0x24

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$37;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->BeforeAttributeValue:Lorg/jsoup/parser/TokeniserState;

    .line 726
    new-instance v0, Lorg/jsoup/parser/TokeniserState$38;

    const-string v14, "AttributeValue_doubleQuoted"

    const/16 v15, 0x25

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$38;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->AttributeValue_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

    .line 758
    new-instance v0, Lorg/jsoup/parser/TokeniserState$39;

    const-string v14, "AttributeValue_singleQuoted"

    const/16 v15, 0x26

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$39;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->AttributeValue_singleQuoted:Lorg/jsoup/parser/TokeniserState;

    .line 790
    new-instance v0, Lorg/jsoup/parser/TokeniserState$40;

    const-string v14, "AttributeValue_unquoted"

    const/16 v15, 0x27

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$40;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->AttributeValue_unquoted:Lorg/jsoup/parser/TokeniserState;

    .line 838
    new-instance v0, Lorg/jsoup/parser/TokeniserState$41;

    const-string v14, "AfterAttributeValue_quoted"

    const/16 v15, 0x28

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$41;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->AfterAttributeValue_quoted:Lorg/jsoup/parser/TokeniserState;

    .line 868
    new-instance v0, Lorg/jsoup/parser/TokeniserState$42;

    const-string v14, "SelfClosingStartTag"

    const/16 v15, 0x29

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$42;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState;

    .line 888
    new-instance v0, Lorg/jsoup/parser/TokeniserState$43;

    const-string v14, "BogusComment"

    const/16 v15, 0x2a

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$43;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->BogusComment:Lorg/jsoup/parser/TokeniserState;

    .line 901
    new-instance v0, Lorg/jsoup/parser/TokeniserState$44;

    const-string v14, "MarkupDeclarationOpen"

    const/16 v15, 0x2b

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$44;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->MarkupDeclarationOpen:Lorg/jsoup/parser/TokeniserState;

    .line 919
    new-instance v0, Lorg/jsoup/parser/TokeniserState$45;

    const-string v14, "CommentStart"

    const/16 v15, 0x2c

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$45;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->CommentStart:Lorg/jsoup/parser/TokeniserState;

    .line 947
    new-instance v0, Lorg/jsoup/parser/TokeniserState$46;

    const-string v14, "CommentStartDash"

    const/16 v15, 0x2d

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$46;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->CommentStartDash:Lorg/jsoup/parser/TokeniserState;

    .line 975
    new-instance v0, Lorg/jsoup/parser/TokeniserState$47;

    const-string v14, "Comment"

    const/16 v15, 0x2e

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$47;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->Comment:Lorg/jsoup/parser/TokeniserState;

    .line 997
    new-instance v0, Lorg/jsoup/parser/TokeniserState$48;

    const-string v14, "CommentEndDash"

    const/16 v15, 0x2f

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$48;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->CommentEndDash:Lorg/jsoup/parser/TokeniserState;

    .line 1020
    new-instance v0, Lorg/jsoup/parser/TokeniserState$49;

    const-string v14, "CommentEnd"

    const/16 v15, 0x30

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$49;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->CommentEnd:Lorg/jsoup/parser/TokeniserState;

    .line 1053
    new-instance v0, Lorg/jsoup/parser/TokeniserState$50;

    const-string v14, "CommentEndBang"

    const/16 v15, 0x31

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$50;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->CommentEndBang:Lorg/jsoup/parser/TokeniserState;

    .line 1081
    new-instance v0, Lorg/jsoup/parser/TokeniserState$51;

    const-string v14, "Doctype"

    const/16 v15, 0x32

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$51;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->Doctype:Lorg/jsoup/parser/TokeniserState;

    .line 1108
    new-instance v0, Lorg/jsoup/parser/TokeniserState$52;

    const-string v14, "BeforeDoctypeName"

    const/16 v15, 0x33

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$52;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->BeforeDoctypeName:Lorg/jsoup/parser/TokeniserState;

    .line 1143
    new-instance v0, Lorg/jsoup/parser/TokeniserState$53;

    const-string v14, "DoctypeName"

    const/16 v15, 0x34

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$53;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->DoctypeName:Lorg/jsoup/parser/TokeniserState;

    .line 1178
    new-instance v0, Lorg/jsoup/parser/TokeniserState$54;

    const-string v14, "AfterDoctypeName"

    const/16 v15, 0x35

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$54;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->AfterDoctypeName:Lorg/jsoup/parser/TokeniserState;

    .line 1204
    new-instance v0, Lorg/jsoup/parser/TokeniserState$55;

    const-string v14, "AfterDoctypePublicKeyword"

    const/16 v15, 0x36

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$55;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->AfterDoctypePublicKeyword:Lorg/jsoup/parser/TokeniserState;

    .line 1244
    new-instance v0, Lorg/jsoup/parser/TokeniserState$56;

    const-string v14, "BeforeDoctypePublicIdentifier"

    const/16 v15, 0x37

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$56;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->BeforeDoctypePublicIdentifier:Lorg/jsoup/parser/TokeniserState;

    .line 1281
    new-instance v0, Lorg/jsoup/parser/TokeniserState$57;

    const-string v14, "DoctypePublicIdentifier_doubleQuoted"

    const/16 v15, 0x38

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$57;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->DoctypePublicIdentifier_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

    .line 1309
    new-instance v0, Lorg/jsoup/parser/TokeniserState$58;

    const-string v14, "DoctypePublicIdentifier_singleQuoted"

    const/16 v15, 0x39

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$58;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->DoctypePublicIdentifier_singleQuoted:Lorg/jsoup/parser/TokeniserState;

    .line 1337
    new-instance v0, Lorg/jsoup/parser/TokeniserState$59;

    const-string v14, "AfterDoctypePublicIdentifier"

    const/16 v15, 0x3a

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$59;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->AfterDoctypePublicIdentifier:Lorg/jsoup/parser/TokeniserState;

    .line 1375
    new-instance v0, Lorg/jsoup/parser/TokeniserState$60;

    const-string v14, "BetweenDoctypePublicAndSystemIdentifiers"

    const/16 v15, 0x3b

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$60;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->BetweenDoctypePublicAndSystemIdentifiers:Lorg/jsoup/parser/TokeniserState;

    .line 1412
    new-instance v0, Lorg/jsoup/parser/TokeniserState$61;

    const-string v14, "AfterDoctypeSystemKeyword"

    const/16 v15, 0x3c

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$61;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->AfterDoctypeSystemKeyword:Lorg/jsoup/parser/TokeniserState;

    .line 1452
    new-instance v0, Lorg/jsoup/parser/TokeniserState$62;

    const-string v14, "BeforeDoctypeSystemIdentifier"

    const/16 v15, 0x3d

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$62;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->BeforeDoctypeSystemIdentifier:Lorg/jsoup/parser/TokeniserState;

    .line 1489
    new-instance v0, Lorg/jsoup/parser/TokeniserState$63;

    const-string v14, "DoctypeSystemIdentifier_doubleQuoted"

    const/16 v15, 0x3e

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$63;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->DoctypeSystemIdentifier_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

    .line 1517
    new-instance v0, Lorg/jsoup/parser/TokeniserState$64;

    const-string v14, "DoctypeSystemIdentifier_singleQuoted"

    const/16 v15, 0x3f

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$64;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->DoctypeSystemIdentifier_singleQuoted:Lorg/jsoup/parser/TokeniserState;

    .line 1545
    new-instance v0, Lorg/jsoup/parser/TokeniserState$65;

    const-string v14, "AfterDoctypeSystemIdentifier"

    const/16 v15, 0x40

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$65;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->AfterDoctypeSystemIdentifier:Lorg/jsoup/parser/TokeniserState;

    .line 1572
    new-instance v0, Lorg/jsoup/parser/TokeniserState$66;

    const-string v14, "BogusDoctype"

    const/16 v15, 0x41

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$66;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->BogusDoctype:Lorg/jsoup/parser/TokeniserState;

    .line 1590
    new-instance v0, Lorg/jsoup/parser/TokeniserState$67;

    const-string v14, "CdataSection"

    const/16 v15, 0x42

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/TokeniserState$67;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->CdataSection:Lorg/jsoup/parser/TokeniserState;

    const/16 v0, 0x43

    .line 8
    new-array v0, v0, [Lorg/jsoup/parser/TokeniserState;

    sget-object v14, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    aput-object v14, v0, v1

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->CharacterReferenceInData:Lorg/jsoup/parser/TokeniserState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->CharacterReferenceInRcdata:Lorg/jsoup/parser/TokeniserState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->Rawtext:Lorg/jsoup/parser/TokeniserState;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->ScriptData:Lorg/jsoup/parser/TokeniserState;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->PLAINTEXT:Lorg/jsoup/parser/TokeniserState;

    aput-object v1, v0, v7

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->TagOpen:Lorg/jsoup/parser/TokeniserState;

    aput-object v1, v0, v8

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->EndTagOpen:Lorg/jsoup/parser/TokeniserState;

    aput-object v1, v0, v9

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->TagName:Lorg/jsoup/parser/TokeniserState;

    aput-object v1, v0, v10

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->RcdataLessthanSign:Lorg/jsoup/parser/TokeniserState;

    aput-object v1, v0, v11

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->RCDATAEndTagOpen:Lorg/jsoup/parser/TokeniserState;

    aput-object v1, v0, v12

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->RCDATAEndTagName:Lorg/jsoup/parser/TokeniserState;

    aput-object v1, v0, v13

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->RawtextLessthanSign:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->RawtextEndTagOpen:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->RawtextEndTagName:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->ScriptDataLessthanSign:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->ScriptDataEndTagOpen:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->ScriptDataEndTagName:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapeStart:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapeStartDash:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscaped:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedDash:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedDashDash:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedLessthanSign:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedEndTagOpen:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedEndTagName:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapeStart:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscaped:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapedDash:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapedDashDash:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapedLessthanSign:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapeEnd:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->BeforeAttributeName:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->AttributeName:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->AfterAttributeName:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->BeforeAttributeValue:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->AttributeValue_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->AttributeValue_singleQuoted:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->AttributeValue_unquoted:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->AfterAttributeValue_quoted:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->BogusComment:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->MarkupDeclarationOpen:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->CommentStart:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->CommentStartDash:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->Comment:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->CommentEndDash:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->CommentEnd:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x30

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->CommentEndBang:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x31

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->Doctype:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x32

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->BeforeDoctypeName:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x33

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->DoctypeName:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x34

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->AfterDoctypeName:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x35

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->AfterDoctypePublicKeyword:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x36

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->BeforeDoctypePublicIdentifier:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x37

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->DoctypePublicIdentifier_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x38

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->DoctypePublicIdentifier_singleQuoted:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x39

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->AfterDoctypePublicIdentifier:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->BetweenDoctypePublicAndSystemIdentifiers:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->AfterDoctypeSystemKeyword:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->BeforeDoctypeSystemIdentifier:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->DoctypeSystemIdentifier_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->DoctypeSystemIdentifier_singleQuoted:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->AfterDoctypeSystemIdentifier:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x40

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->BogusDoctype:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x41

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->CdataSection:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x42

    aput-object v1, v0, v2

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->$VALUES:[Lorg/jsoup/parser/TokeniserState;

    .line 1603
    new-array v0, v4, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->attributeSingleValueCharsSorted:[C

    .line 1604
    new-array v0, v4, [C

    fill-array-data v0, :array_1

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->attributeDoubleValueCharsSorted:[C

    .line 1605
    new-array v0, v13, [C

    fill-array-data v0, :array_2

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->attributeNameCharsSorted:[C

    const/16 v0, 0xd

    .line 1606
    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->attributeValueUnquoted:[C

    const v0, 0xfffd

    .line 1609
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->replacementStr:Ljava/lang/String;

    .line 1613
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->attributeSingleValueCharsSorted:[C

    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    .line 1614
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->attributeDoubleValueCharsSorted:[C

    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    .line 1615
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->attributeNameCharsSorted:[C

    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    .line 1616
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->attributeValueUnquoted:[C

    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    return-void

    nop

    :array_0
    .array-data 2
        0x27s
        0x26s
        0x0s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x22s
        0x26s
        0x0s
    .end array-data

    nop

    :array_2
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
        0x2fs
        0x3ds
        0x3es
        0x0s
        0x22s
        0x27s
        0x3cs
    .end array-data

    :array_3
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
        0x26s
        0x3es
        0x0s
        0x22s
        0x27s
        0x3cs
        0x3ds
        0x60s
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/jsoup/parser/TokeniserState$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/TokeniserState;)V
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lorg/jsoup/parser/TokeniserState;->readCharRef(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/TokeniserState;)V

    return-void
.end method

.method static synthetic access$1000()[C
    .locals 1

    .line 8
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->attributeValueUnquoted:[C

    return-object v0
.end method

.method static synthetic access$200(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V
    .locals 0

    .line 8
    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/parser/TokeniserState;->readData(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 8
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->replacementStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V
    .locals 0

    .line 8
    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/parser/TokeniserState;->readEndTag(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V

    return-void
.end method

.method static synthetic access$500(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;)V
    .locals 0

    .line 8
    invoke-static {p0, p1, p2}, Lorg/jsoup/parser/TokeniserState;->handleDataEndTag(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;)V

    return-void
.end method

.method static synthetic access$600(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V
    .locals 0

    .line 8
    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/parser/TokeniserState;->handleDataDoubleEscapeTag(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V

    return-void
.end method

.method static synthetic access$700()[C
    .locals 1

    .line 8
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->attributeNameCharsSorted:[C

    return-object v0
.end method

.method static synthetic access$800()[C
    .locals 1

    .line 8
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->attributeDoubleValueCharsSorted:[C

    return-object v0
.end method

.method static synthetic access$900()[C
    .locals 1

    .line 8
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->attributeSingleValueCharsSorted:[C

    return-object v0
.end method

.method private static handleDataDoubleEscapeTag(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V
    .locals 2

    .line 1703
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->matchesLetter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1704
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->consumeLetterSequence()Ljava/lang/String;

    move-result-object p1

    .line 1705
    iget-object p2, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1706
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    return-void

    .line 1710
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->consume()C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_1

    .line 1726
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->unconsume()V

    .line 1727
    invoke-virtual {p0, p3}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_1

    .line 1719
    :cond_1
    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "script"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1720
    invoke-virtual {p0, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 1722
    :cond_2
    invoke-virtual {p0, p3}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 1723
    :goto_0
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    :goto_1
    return-void
.end method

.method private static handleDataEndTag(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;)V
    .locals 3

    .line 1624
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->matchesLetter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1625
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->consumeLetterSequence()Ljava/lang/String;

    move-result-object p1

    .line 1626
    iget-object p2, p0, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/Token$Tag;->appendTagName(Ljava/lang/String;)V

    .line 1627
    iget-object p0, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1632
    invoke-virtual {p0}, Lorg/jsoup/parser/Tokeniser;->isAppropriateEndTagToken()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1633
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->consume()C

    move-result p1

    const/16 v1, 0x9

    if-eq p1, v1, :cond_3

    const/16 v1, 0xa

    if-eq p1, v1, :cond_3

    const/16 v1, 0xc

    if-eq p1, v1, :cond_3

    const/16 v1, 0xd

    if-eq p1, v1, :cond_3

    const/16 v1, 0x20

    if-eq p1, v1, :cond_3

    const/16 v1, 0x2f

    if-eq p1, v1, :cond_2

    const/16 v1, 0x3e

    if-eq p1, v1, :cond_1

    .line 1650
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1646
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/parser/Tokeniser;->emitTagPending()V

    .line 1647
    sget-object p1, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 1643
    :cond_2
    sget-object p1, Lorg/jsoup/parser/TokeniserState;->SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 1640
    :cond_3
    sget-object p1, Lorg/jsoup/parser/TokeniserState;->BeforeAttributeName:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    :goto_0
    const/4 v2, 0x0

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 1658
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "</"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    .line 1659
    invoke-virtual {p0, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    :cond_5
    return-void
.end method

.method private static readCharRef(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/TokeniserState;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1684
    invoke-virtual {p0, v0, v1}, Lorg/jsoup/parser/Tokeniser;->consumeCharacterReference(Ljava/lang/Character;Z)[I

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x26

    .line 1686
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    goto :goto_0

    .line 1688
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->emit([I)V

    .line 1689
    :goto_0
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    return-void
.end method

.method private static readData(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V
    .locals 1

    .line 1664
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->current()C

    move-result v0

    if-eqz v0, :cond_2

    const/16 p2, 0x3c

    if-eq v0, p2, :cond_1

    const p2, 0xffff

    if-eq v0, p2, :cond_0

    const/4 p2, 0x2

    .line 1677
    new-array p2, p2, [C

    fill-array-data p2, :array_0

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/CharacterReader;->consumeToAny([C)Ljava/lang/String;

    move-result-object p1

    .line 1678
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    goto :goto_0

    .line 1674
    :cond_0
    new-instance p1, Lorg/jsoup/parser/Token$EOF;

    invoke-direct {p1}, Lorg/jsoup/parser/Token$EOF;-><init>()V

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->emit(Lorg/jsoup/parser/Token;)V

    goto :goto_0

    .line 1666
    :cond_1
    invoke-virtual {p0, p3}, Lorg/jsoup/parser/Tokeniser;->advanceTransition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 1669
    :cond_2
    invoke-virtual {p0, p2}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 1670
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->advance()V

    const p1, 0xfffd

    .line 1671
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 2
        0x3cs
        0x0s
    .end array-data
.end method

.method private static readEndTag(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V
    .locals 0

    .line 1693
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->matchesLetter()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1694
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->createTagPending(Z)Lorg/jsoup/parser/Token$Tag;

    .line 1695
    invoke-virtual {p0, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_0
    const-string p1, "</"

    .line 1697
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    .line 1698
    invoke-virtual {p0, p3}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    :goto_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/parser/TokeniserState;
    .locals 1

    .line 8
    const-class v0, Lorg/jsoup/parser/TokeniserState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jsoup/parser/TokeniserState;

    return-object p0
.end method

.method public static values()[Lorg/jsoup/parser/TokeniserState;
    .locals 1

    .line 8
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->$VALUES:[Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v0}, [Lorg/jsoup/parser/TokeniserState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jsoup/parser/TokeniserState;

    return-object v0
.end method


# virtual methods
.method abstract read(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
.end method
