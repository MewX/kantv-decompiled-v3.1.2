.class public Lorg/fourthline/cling/support/shared/NewPlatformApple;
.super Ljava/lang/Object;
.source "NewPlatformApple.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/support/shared/NewPlatformApple$AppListenerProxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setup(Lorg/fourthline/cling/support/shared/ShutdownHandler;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "true"

    const-string v1, "apple.laf.useScreenMenuBar"

    .line 29
    invoke-static {v1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "com.apple.mrj.application.apple.menu.about.name"

    .line 30
    invoke-static {v1, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "apple.awt.showGrowBox"

    .line 31
    invoke-static {p1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "com.apple.eawt.Application"

    .line 34
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "com.apple.eawt.ApplicationListener"

    .line 36
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    .line 37
    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "addApplicationListener"

    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const-string v1, "com.apple.eawt.ApplicationAdapter"

    .line 40
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p0}, Lorg/fourthline/cling/support/shared/NewPlatformApple$AppListenerProxy;->newInstance(Ljava/lang/Object;Lorg/fourthline/cling/support/shared/ShutdownHandler;)Ljava/lang/Object;

    move-result-object p0

    .line 42
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
