.class Ldebug/KanApplication$1;
.super Ljava/lang/Object;
.source "KanApplication.java"

# interfaces
.implements Lcom/crashlytics/android/core/CrashlyticsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldebug/KanApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldebug/KanApplication;


# direct methods
.method constructor <init>(Ldebug/KanApplication;)V
    .locals 0

    .line 84
    iput-object p1, p0, Ldebug/KanApplication$1;->this$0:Ldebug/KanApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public crashlyticsDidDetectCrashDuringPreviousExecution()V
    .locals 1

    .line 87
    invoke-static {}, Ldebug/KanApplication;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/ui/utils/PreferenceUtil;->clear(Landroid/content/Context;)V

    return-void
.end method
