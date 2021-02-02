.class Lio/reactivex/internal/operators/observable/ObservableRedo$1;
.super Ljava/lang/Object;
.source "ObservableRedo.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/reactivex/internal/operators/observable/ObservableRedo;->subscribeActual(Lio/reactivex/Observer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lio/reactivex/Notification<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/reactivex/internal/operators/observable/ObservableRedo;

.field final synthetic val$parent:Lio/reactivex/internal/operators/observable/ObservableRedo$RedoObserver;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObservableRedo;Lio/reactivex/internal/operators/observable/ObservableRedo$RedoObserver;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableRedo$1;->this$0:Lio/reactivex/internal/operators/observable/ObservableRedo;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableRedo$1;->val$parent:Lio/reactivex/internal/operators/observable/ObservableRedo$RedoObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lio/reactivex/Notification;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Notification<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRedo$1;->val$parent:Lio/reactivex/internal/operators/observable/ObservableRedo$RedoObserver;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableRedo$RedoObserver;->handle(Lio/reactivex/Notification;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    check-cast p1, Lio/reactivex/Notification;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableRedo$1;->accept(Lio/reactivex/Notification;)V

    return-void
.end method
