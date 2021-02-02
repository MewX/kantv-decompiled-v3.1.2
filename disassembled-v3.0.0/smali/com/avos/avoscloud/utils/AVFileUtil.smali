.class public Lcom/avos/avoscloud/utils/AVFileUtil;
.super Ljava/lang/Object;
.source "AVFileUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileMimeType(Lcom/avos/avoscloud/AVFile;)Ljava/lang/String;
    .locals 3

    .line 12
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getName()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object p0

    .line 14
    sget-object v1, Lcom/avos/avoscloud/AVFile;->DEFAULTMIMETYPE:Ljava/lang/String;

    .line 15
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 16
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->getMimeTypeFromLocalFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 18
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->getMimeTypeFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method
