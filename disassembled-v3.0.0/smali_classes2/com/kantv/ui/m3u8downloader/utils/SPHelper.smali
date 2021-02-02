.class public Lcom/kantv/ui/m3u8downloader/utils/SPHelper;
.super Ljava/lang/Object;
.source "SPHelper.java"


# static fields
.field private static final NULL_KEY:Ljava/lang/String; = "NULL_KEY"

.field private static PREFERENCES:Landroid/content/SharedPreferences; = null

.field private static final TAG_NAME:Ljava/lang/String; = "M3U8PreferenceHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkKeyNonNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "NULL_KEY"

    const-string v0, "Key is null!!!"

    .line 35
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0
.end method

.method public static clearPreference()V
    .locals 1

    .line 108
    invoke-static {}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->newEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    sget-object v0, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->PREFERENCES:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return p1

    .line 51
    :cond_0
    invoke-static {p0}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->checkKeyNonNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getFloat(Ljava/lang/String;F)F
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 77
    sget-object v0, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->PREFERENCES:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->checkKeyNonNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ddd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getConnTimeout"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->PREFERENCES:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return p1

    .line 61
    :cond_0
    invoke-static {p0}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->checkKeyNonNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 69
    sget-object v0, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->PREFERENCES:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->checkKeyNonNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 85
    sget-object v0, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->PREFERENCES:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-object p1

    .line 86
    :cond_0
    invoke-static {p0}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->checkKeyNonNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 94
    sget-object v0, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->PREFERENCES:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->checkKeyNonNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static increaseCount(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-static {p0, v0}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 100
    invoke-static {p0, v0}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "M3U8PreferenceHelper"

    const/4 v1, 0x0

    .line 23
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->PREFERENCES:Landroid/content/SharedPreferences;

    return-void
.end method

.method private static newEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 42
    sget-object v0, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->PREFERENCES:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static onSetPrefBoolSetting(Ljava/lang/String;Ljava/lang/Boolean;Landroid/content/Context;)V
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    const-string v1, "M3U8PreferenceHelper"

    .line 28
    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 29
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public static putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    invoke-static {}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->newEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p0}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->checkKeyNonNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static putFloat(Ljava/lang/String;F)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 73
    invoke-static {}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->newEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p0}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->checkKeyNonNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static putInt(Ljava/lang/String;I)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    invoke-static {}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->newEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p0}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->checkKeyNonNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static putLong(Ljava/lang/String;J)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 65
    invoke-static {}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->newEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p0}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->checkKeyNonNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 81
    invoke-static {}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->newEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p0}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->checkKeyNonNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static putStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 90
    invoke-static {}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->newEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p0}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->checkKeyNonNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 1

    .line 104
    invoke-static {}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->newEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
