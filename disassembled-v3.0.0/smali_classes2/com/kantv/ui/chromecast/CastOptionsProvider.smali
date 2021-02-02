.class public Lcom/kantv/ui/chromecast/CastOptionsProvider;
.super Ljava/lang/Object;
.source "CastOptionsProvider.java"

# interfaces
.implements Lcom/google/android/gms/cast/framework/OptionsProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdditionalSessionProviders(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/framework/SessionProvider;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCastOptions(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastOptions;
    .locals 3

    .line 34
    new-instance v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;-><init>()V

    const-class v1, Lcom/kantv/ui/chromecast/ExpandedControlsActivity;

    .line 35
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->setTargetActivityClassName(Ljava/lang/String;)Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->build()Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    move-result-object v0

    .line 37
    new-instance v1, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;-><init>()V

    .line 38
    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->setNotificationOptions(Lcom/google/android/gms/cast/framework/media/NotificationOptions;)Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;

    move-result-object v0

    const-class v1, Lcom/kantv/ui/chromecast/ExpandedControlsActivity;

    .line 39
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->setExpandedControllerActivityClassName(Ljava/lang/String;)Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->build()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/google/android/gms/cast/framework/CastOptions$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/cast/framework/CastOptions$Builder;-><init>()V

    const v2, 0x7f0f0021

    .line 43
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->setReceiverApplicationId(Ljava/lang/String;)Lcom/google/android/gms/cast/framework/CastOptions$Builder;

    move-result-object p1

    .line 44
    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->setCastMediaOptions(Lcom/google/android/gms/cast/framework/media/CastMediaOptions;)Lcom/google/android/gms/cast/framework/CastOptions$Builder;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->build()Lcom/google/android/gms/cast/framework/CastOptions;

    move-result-object p1

    return-object p1
.end method
