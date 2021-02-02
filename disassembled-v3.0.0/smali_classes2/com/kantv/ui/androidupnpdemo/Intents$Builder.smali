.class public Lcom/kantv/ui/androidupnpdemo/Intents$Builder;
.super Ljava/lang/Object;
.source "Intents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/androidupnpdemo/Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.zane.androidupnpdemo."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/Intents$Builder;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)Lcom/kantv/ui/androidupnpdemo/Intents$Builder;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/Intents$Builder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/io/Serializable;)Lcom/kantv/ui/androidupnpdemo/Intents$Builder;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/Intents$Builder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/kantv/ui/androidupnpdemo/Intents$Builder;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/Intents$Builder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public add(Ljava/lang/String;[I)Lcom/kantv/ui/androidupnpdemo/Intents$Builder;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/Intents$Builder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    return-object p0
.end method

.method public add(Ljava/lang/String;[Ljava/lang/CharSequence;)Lcom/kantv/ui/androidupnpdemo/Intents$Builder;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/Intents$Builder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/content/Intent;

    return-object p0
.end method

.method public add(Ljava/lang/String;[Z)Lcom/kantv/ui/androidupnpdemo/Intents$Builder;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/Intents$Builder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    return-object p0
.end method

.method public toIntent()Landroid/content/Intent;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/Intents$Builder;->intent:Landroid/content/Intent;

    return-object v0
.end method
