.class public Lcom/kantv/ui/photo/PermissionUtil;
.super Ljava/lang/Object;
.source "PermissionUtil.java"


# static fields
.field private static final MIN_SDK_PERMISSIONS:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_CONTACTS:I = 0x3

.field public static final REQUEST_LOCATION:I = 0x4

.field public static final REQUEST_READ_EXTERNAL_STORAGE:I = 0x1

.field public static final REQUEST_RECORD_AUDIO:I = 0x2

.field public static final REQUEST_SHOWCAMERA:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 25
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;-><init>(I)V

    sput-object v0, Lcom/kantv/ui/photo/PermissionUtil;->MIN_SDK_PERMISSIONS:Landroid/support/v4/util/SimpleArrayMap;

    .line 26
    sget-object v0, Lcom/kantv/ui/photo/PermissionUtil;->MIN_SDK_PERMISSIONS:Landroid/support/v4/util/SimpleArrayMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/kantv/ui/photo/PermissionUtil;->MIN_SDK_PERMISSIONS:Landroid/support/v4/util/SimpleArrayMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.BODY_SENSORS"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/kantv/ui/photo/PermissionUtil;->MIN_SDK_PERMISSIONS:Landroid/support/v4/util/SimpleArrayMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.READ_CALL_LOG"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/kantv/ui/photo/PermissionUtil;->MIN_SDK_PERMISSIONS:Landroid/support/v4/util/SimpleArrayMap;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/kantv/ui/photo/PermissionUtil;->MIN_SDK_PERMISSIONS:Landroid/support/v4/util/SimpleArrayMap;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.USE_SIP"

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/kantv/ui/photo/PermissionUtil;->MIN_SDK_PERMISSIONS:Landroid/support/v4/util/SimpleArrayMap;

    const-string v2, "android.permission.WRITE_CALL_LOG"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/kantv/ui/photo/PermissionUtil;->MIN_SDK_PERMISSIONS:Landroid/support/v4/util/SimpleArrayMap;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/kantv/ui/photo/PermissionUtil;->MIN_SDK_PERMISSIONS:Landroid/support/v4/util/SimpleArrayMap;

    const-string v2, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasCameraPermission(Landroid/app/Activity;)Z
    .locals 4

    const-string v0, "android.permission.CAMERA"

    .line 41
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 43
    invoke-static {v0}, Lcom/kantv/ui/photo/PermissionUtil;->permissionExists(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string p0, "permission"

    const-string v0, "your system does not suppportandroid.permission.CAMERA permission"

    .line 44
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 48
    new-array v1, v2, [Ljava/lang/String;

    aput-object v0, v1, v3

    invoke-static {p0, v1, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v3

    :cond_1
    return v2
.end method

.method public static hasContactsPermission(Landroid/app/Activity;)Z
    .locals 5

    const-string v0, "android.permission.WRITE_CONTACTS"

    .line 88
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "android.permission.READ_CONTACTS"

    .line 90
    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    return v4

    :cond_0
    const/4 v1, 0x2

    .line 96
    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    aput-object v2, v1, v4

    const/4 v0, 0x3

    invoke-static {p0, v1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v3
.end method

.method public static hasLocationPermission(Landroid/app/Activity;)Z
    .locals 5

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 102
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 104
    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-nez v1, :cond_0

    if-nez v3, :cond_0

    return v4

    :cond_0
    const/4 v1, 0x2

    .line 110
    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    aput-object v2, v1, v4

    const/4 v0, 0x4

    invoke-static {p0, v1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v3
.end method

.method public static hasReadExternalStoragePermission(Landroid/app/Activity;)Z
    .locals 4

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 57
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 59
    invoke-static {v0}, Lcom/kantv/ui/photo/PermissionUtil;->permissionExists(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string p0, "permission"

    const-string v0, "your system does not suppport android.permission.READ_EXTERNAL_STORAGE permission"

    .line 60
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 64
    new-array v1, v2, [Ljava/lang/String;

    aput-object v0, v1, v3

    invoke-static {p0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v3

    :cond_1
    return v2
.end method

.method public static hasRecordAudioPermission(Landroid/app/Activity;)Z
    .locals 4

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 72
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 74
    invoke-static {v0}, Lcom/kantv/ui/photo/PermissionUtil;->permissionExists(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string p0, "permission"

    const-string v0, "your system does not suppportandroid.permission.RECORD_AUDIO permission"

    .line 75
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 79
    new-array v1, v2, [Ljava/lang/String;

    aput-object v0, v1, v3

    const/4 v0, 0x2

    invoke-static {p0, v1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v3

    :cond_1
    return v2
.end method

.method private static permissionExists(Ljava/lang/String;)Z
    .locals 1

    .line 36
    sget-object v0, Lcom/kantv/ui/photo/PermissionUtil;->MIN_SDK_PERMISSIONS:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p0}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
