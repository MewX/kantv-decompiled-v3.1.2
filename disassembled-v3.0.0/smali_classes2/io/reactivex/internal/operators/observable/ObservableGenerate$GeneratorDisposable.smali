.class final Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;
.super Ljava/lang/Object;
.source "ObservableGenerate.java"

# interfaces
.implements Lio/reactivex/Emitter;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableGenerate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GeneratorDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Emitter<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field volatile cancelled:Z

.field final disposeState:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-TS;>;"
        }
    .end annotation
.end field

.field final generator:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "TS;-",
            "Lio/reactivex/Emitter<",
            "TT;>;TS;>;"
        }
    .end annotation
.end field

.field state:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field terminate:Z


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/BiFunction;Lio/reactivex/functions/Consumer;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/functions/BiFunction<",
            "TS;-",
            "Lio/reactivex/Emitter<",
            "TT;>;TS;>;",
            "Lio/reactivex/functions/Consumer<",
            "-TS;>;TS;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->actual:Lio/reactivex/Observer;

    .line 71
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->generator:Lio/reactivex/functions/BiFunction;

    .line 72
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->disposeState:Lio/reactivex/functions/Consumer;

    .line 73
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->state:Ljava/lang/Object;

    return-void
.end method

.method private dispose(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 117
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->disposeState:Lio/reactivex/functions/Consumer;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 119
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 120
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->cancelled:Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->cancelled:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->terminate:Z

    .line 155
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->actual:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    if-nez p1, :cond_0

    .line 146
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->terminate:Z

    .line 149
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 137
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .locals 5

    .line 77
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->state:Ljava/lang/Object;

    .line 79
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->cancelled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 80
    iput-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->state:Ljava/lang/Object;

    .line 81
    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->dispose(Ljava/lang/Object;)V

    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->generator:Lio/reactivex/functions/BiFunction;

    .line 89
    :cond_1
    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->cancelled:Z

    if-eqz v3, :cond_2

    .line 90
    iput-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->state:Ljava/lang/Object;

    .line 91
    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->dispose(Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v3, 0x1

    .line 96
    :try_start_0
    invoke-interface {v1, v0, p0}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    iget-boolean v4, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->terminate:Z

    if-eqz v4, :cond_1

    .line 106
    iput-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->cancelled:Z

    .line 107
    iput-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->state:Ljava/lang/Object;

    .line 108
    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->dispose(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    .line 98
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 99
    iput-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->state:Ljava/lang/Object;

    .line 100
    iput-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->cancelled:Z

    .line 101
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->actual:Lio/reactivex/Observer;

    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
