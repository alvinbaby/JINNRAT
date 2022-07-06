.class Lcom/google/firebase/storage/TaskListenerImpl;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-storage@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "ListenerTypeT:Ljava/lang/Object;",
        "ResultT::",
        "Lcom/google/firebase/storage/StorageTask$ProvideError;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final handlerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<T",
            "ListenerTypeT;",
            "Lcom/google/firebase/storage/internal/SmartHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final listenerQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<T",
            "ListenerTypeT;",
            ">;"
        }
    .end annotation
.end field

.field private onRaise:Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/TaskListenerImpl$OnRaise",
            "<T",
            "ListenerTypeT;",
            "TResultT;>;"
        }
    .end annotation
.end field

.field private targetStates:I

.field private task:Lcom/google/firebase/storage/StorageTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/StorageTask",
            "<TResultT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/storage/StorageTask;ILcom/google/firebase/storage/TaskListenerImpl$OnRaise;)V
    .locals 1
    .param p1    # Lcom/google/firebase/storage/StorageTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "targetInternalStates"    # I
    .param p3    # Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/StorageTask",
            "<TResultT;>;I",
            "Lcom/google/firebase/storage/TaskListenerImpl$OnRaise",
            "<T",
            "ListenerTypeT;",
            "TResultT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/google/firebase/storage/TaskListenerImpl;, "Lcom/google/firebase/storage/TaskListenerImpl<TListenerTypeT;TResultT;>;"
    .local p1, "task":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p3, "onRaise":Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;, "Lcom/google/firebase/storage/TaskListenerImpl$OnRaise<TListenerTypeT;TResultT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/storage/TaskListenerImpl;->listenerQueue:Ljava/util/Queue;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/storage/TaskListenerImpl;->handlerMap:Ljava/util/HashMap;

    .line 43
    iput-object p1, p0, Lcom/google/firebase/storage/TaskListenerImpl;->task:Lcom/google/firebase/storage/StorageTask;

    .line 44
    iput p2, p0, Lcom/google/firebase/storage/TaskListenerImpl;->targetStates:I

    .line 45
    iput-object p3, p0, Lcom/google/firebase/storage/TaskListenerImpl;->onRaise:Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;

    .line 46
    return-void
.end method

.method static synthetic lambda$addListener$0(Lcom/google/firebase/storage/TaskListenerImpl;Ljava/lang/Object;)V
    .locals 0
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    .line 73
    .local p0, "this":Lcom/google/firebase/storage/TaskListenerImpl;, "Lcom/google/firebase/storage/TaskListenerImpl<TListenerTypeT;TResultT;>;"
    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$addListener$1(Lcom/google/firebase/storage/TaskListenerImpl;Ljava/lang/Object;Lcom/google/firebase/storage/StorageTask$ProvideError;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "snappedState"    # Lcom/google/firebase/storage/StorageTask$ProvideError;

    .prologue
    .line 79
    .local p0, "this":Lcom/google/firebase/storage/TaskListenerImpl;, "Lcom/google/firebase/storage/TaskListenerImpl<TListenerTypeT;TResultT;>;"
    iget-object v0, p0, Lcom/google/firebase/storage/TaskListenerImpl;->onRaise:Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;

    invoke-interface {v0, p1, p2}, Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;->raise(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onInternalStateChanged$2(Lcom/google/firebase/storage/TaskListenerImpl;Ljava/lang/Object;Lcom/google/firebase/storage/StorageTask$ProvideError;)V
    .locals 1
    .param p1, "finalCallback"    # Ljava/lang/Object;
    .param p2, "snappedState"    # Lcom/google/firebase/storage/StorageTask$ProvideError;

    .prologue
    .line 90
    .local p0, "this":Lcom/google/firebase/storage/TaskListenerImpl;, "Lcom/google/firebase/storage/TaskListenerImpl<TListenerTypeT;TResultT;>;"
    iget-object v0, p0, Lcom/google/firebase/storage/TaskListenerImpl;->onRaise:Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;

    invoke-interface {v0, p1, p2}, Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;->raise(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/Executor;",
            "T",
            "ListenerTypeT;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/google/firebase/storage/TaskListenerImpl;, "Lcom/google/firebase/storage/TaskListenerImpl<TListenerTypeT;TResultT;>;"
    .local p3, "listener":Ljava/lang/Object;, "TListenerTypeT;"
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const/4 v1, 0x0

    .line 61
    .local v1, "shouldFire":Z
    iget-object v3, p0, Lcom/google/firebase/storage/TaskListenerImpl;->task:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {v3}, Lcom/google/firebase/storage/StorageTask;->getSyncObject()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 62
    :try_start_0
    iget-object v3, p0, Lcom/google/firebase/storage/TaskListenerImpl;->task:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {v3}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v3

    iget v5, p0, Lcom/google/firebase/storage/TaskListenerImpl;->targetStates:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_0

    .line 63
    const/4 v1, 0x1

    .line 65
    :cond_0
    iget-object v3, p0, Lcom/google/firebase/storage/TaskListenerImpl;->listenerQueue:Ljava/util/Queue;

    invoke-interface {v3, p3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v0, Lcom/google/firebase/storage/internal/SmartHandler;

    invoke-direct {v0, p2}, Lcom/google/firebase/storage/internal/SmartHandler;-><init>(Ljava/util/concurrent/Executor;)V

    .line 67
    .local v0, "handler":Lcom/google/firebase/storage/internal/SmartHandler;
    iget-object v3, p0, Lcom/google/firebase/storage/TaskListenerImpl;->handlerMap:Ljava/util/HashMap;

    invoke-virtual {v3, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    if-eqz p1, :cond_2

    .line 69
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v3, v5, :cond_1

    .line 70
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    :goto_0
    const-string v5, "Activity is already destroyed!"

    invoke-static {v3, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 72
    :cond_1
    invoke-static {}, Lcom/google/firebase/storage/internal/ActivityLifecycleListener;->getInstance()Lcom/google/firebase/storage/internal/ActivityLifecycleListener;

    move-result-object v3

    invoke-static {p0, p3}, Lcom/google/firebase/storage/TaskListenerImpl$$Lambda$1;->lambdaFactory$(Lcom/google/firebase/storage/TaskListenerImpl;Ljava/lang/Object;)Ljava/lang/Runnable;

    move-result-object v5

    .line 73
    invoke-virtual {v3, p1, p3, v5}, Lcom/google/firebase/storage/internal/ActivityLifecycleListener;->runOnActivityStopped(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 75
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    if-eqz v1, :cond_3

    .line 78
    iget-object v3, p0, Lcom/google/firebase/storage/TaskListenerImpl;->task:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {v3}, Lcom/google/firebase/storage/StorageTask;->snapState()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v2

    .line 79
    .local v2, "snappedState":Lcom/google/firebase/storage/StorageTask$ProvideError;, "TResultT;"
    invoke-static {p0, p3, v2}, Lcom/google/firebase/storage/TaskListenerImpl$$Lambda$2;->lambdaFactory$(Lcom/google/firebase/storage/TaskListenerImpl;Ljava/lang/Object;Lcom/google/firebase/storage/StorageTask$ProvideError;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/firebase/storage/internal/SmartHandler;->callBack(Ljava/lang/Runnable;)V

    .line 81
    .end local v2    # "snappedState":Lcom/google/firebase/storage/StorageTask$ProvideError;, "TResultT;"
    :cond_3
    return-void

    .line 70
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 75
    .end local v0    # "handler":Lcom/google/firebase/storage/internal/SmartHandler;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getListenerCount()I
    .locals 2

    .prologue
    .line 50
    .local p0, "this":Lcom/google/firebase/storage/TaskListenerImpl;, "Lcom/google/firebase/storage/TaskListenerImpl<TListenerTypeT;TResultT;>;"
    iget-object v0, p0, Lcom/google/firebase/storage/TaskListenerImpl;->listenerQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/firebase/storage/TaskListenerImpl;->handlerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public onInternalStateChanged()V
    .locals 6

    .prologue
    .line 84
    .local p0, "this":Lcom/google/firebase/storage/TaskListenerImpl;, "Lcom/google/firebase/storage/TaskListenerImpl<TListenerTypeT;TResultT;>;"
    iget-object v4, p0, Lcom/google/firebase/storage/TaskListenerImpl;->task:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {v4}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v4

    iget v5, p0, Lcom/google/firebase/storage/TaskListenerImpl;->targetStates:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 85
    iget-object v4, p0, Lcom/google/firebase/storage/TaskListenerImpl;->task:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {v4}, Lcom/google/firebase/storage/StorageTask;->snapState()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v3

    .line 86
    .local v3, "snappedState":Lcom/google/firebase/storage/StorageTask$ProvideError;, "TResultT;"
    iget-object v4, p0, Lcom/google/firebase/storage/TaskListenerImpl;->listenerQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 87
    .local v0, "c":Ljava/lang/Object;, "TListenerTypeT;"
    move-object v1, v0

    .line 88
    .local v1, "finalCallback":Ljava/lang/Object;, "TListenerTypeT;"
    iget-object v5, p0, Lcom/google/firebase/storage/TaskListenerImpl;->handlerMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/storage/internal/SmartHandler;

    .line 89
    .local v2, "handler":Lcom/google/firebase/storage/internal/SmartHandler;
    if-eqz v2, :cond_0

    .line 90
    invoke-static {p0, v1, v3}, Lcom/google/firebase/storage/TaskListenerImpl$$Lambda$3;->lambdaFactory$(Lcom/google/firebase/storage/TaskListenerImpl;Ljava/lang/Object;Lcom/google/firebase/storage/StorageTask$ProvideError;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/firebase/storage/internal/SmartHandler;->callBack(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 94
    .end local v0    # "c":Ljava/lang/Object;, "TListenerTypeT;"
    .end local v1    # "finalCallback":Ljava/lang/Object;, "TListenerTypeT;"
    .end local v2    # "handler":Lcom/google/firebase/storage/internal/SmartHandler;
    .end local v3    # "snappedState":Lcom/google/firebase/storage/StorageTask$ProvideError;, "TResultT;"
    :cond_1
    return-void
.end method

.method public removeListener(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "ListenerTypeT;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/google/firebase/storage/TaskListenerImpl;, "Lcom/google/firebase/storage/TaskListenerImpl<TListenerTypeT;TResultT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TListenerTypeT;"
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/google/firebase/storage/TaskListenerImpl;->task:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageTask;->getSyncObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/storage/TaskListenerImpl;->handlerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/google/firebase/storage/TaskListenerImpl;->listenerQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 103
    invoke-static {}, Lcom/google/firebase/storage/internal/ActivityLifecycleListener;->getInstance()Lcom/google/firebase/storage/internal/ActivityLifecycleListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/internal/ActivityLifecycleListener;->removeCookie(Ljava/lang/Object;)V

    .line 104
    monitor-exit v1

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
