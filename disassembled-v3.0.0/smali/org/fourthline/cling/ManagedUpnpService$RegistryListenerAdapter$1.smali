.class Lorg/fourthline/cling/ManagedUpnpService$RegistryListenerAdapter$1;
.super Ljavax/enterprise/util/AnnotationLiteral;
.source "ManagedUpnpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/ManagedUpnpService$RegistryListenerAdapter;->beforeShutdown(Lorg/fourthline/cling/registry/Registry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/enterprise/util/AnnotationLiteral<",
        "Lorg/fourthline/cling/registry/event/Before;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/ManagedUpnpService$RegistryListenerAdapter;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/ManagedUpnpService$RegistryListenerAdapter;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lorg/fourthline/cling/ManagedUpnpService$RegistryListenerAdapter$1;->this$0:Lorg/fourthline/cling/ManagedUpnpService$RegistryListenerAdapter;

    invoke-direct {p0}, Ljavax/enterprise/util/AnnotationLiteral;-><init>()V

    return-void
.end method
