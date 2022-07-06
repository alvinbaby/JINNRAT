.class final Lcom/google/android/gms/tasks/zzv;
.super Lcom/google/android/gms/common/api/internal/LifecycleCallback;
.source "com.google.android.gms:play-services-tasks@@17.2.1"


# instance fields
.field private final zza:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/tasks/zzq",
            "<*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    .line 1
    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    new-instance v2, Ljava/util/ArrayList;

    move-object v1, v2

    move-object v2, v1

    .line 2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/tasks/zzv;->zza:Ljava/util/List;

    move-object v2, v0

    .line 3
    iget-object v2, v2, Lcom/google/android/gms/tasks/zzv;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    const-string v3, "TaskOnStopCallback"

    move-object v4, v0

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->addCallback(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void
.end method

.method public static zza(Landroid/app/Activity;)Lcom/google/android/gms/tasks/zzv;
    .locals 5

    .prologue
    move-object v0, p0

    move-object v2, v0

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/tasks/zzv;->getFragment(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    move-result-object v2

    move-object v0, v2

    move-object v2, v0

    const-string v3, "TaskOnStopCallback"

    const-class v4, Lcom/google/android/gms/tasks/zzv;

    .line 2
    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->getCallbackOrNull(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/tasks/zzv;

    move-object v1, v2

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/tasks/zzv;

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    .line 3
    invoke-direct {v2, v3}, Lcom/google/android/gms/tasks/zzv;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    move-object v2, v1

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final onStop()V
    .locals 5
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/tasks/zzv;->zza:Ljava/util/List;

    move-object v1, v4

    move-object v4, v1

    .line 1
    monitor-enter v4

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/android/gms/tasks/zzv;->zza:Ljava/util/List;

    .line 2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :cond_0
    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    move v3, v4

    move v4, v3

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/tasks/zzq;

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    .line 4
    invoke-interface {v4}, Lcom/google/android/gms/tasks/zzq;->zzb()V

    goto :goto_0

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/tasks/zzv;->zza:Ljava/util/List;

    .line 5
    invoke-interface {v4}, Ljava/util/List;->clear()V

    move-object v4, v1

    .line 6
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v4

    move-object v0, v4

    move-object v4, v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v0

    throw v4
.end method

.method public final zzb(Lcom/google/android/gms/tasks/zzq;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/zzq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/tasks/zzv;->zza:Ljava/util/List;

    move-object v2, v4

    move-object v4, v2

    .line 1
    monitor-enter v4

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/android/gms/tasks/zzv;->zza:Ljava/util/List;

    move-object v0, v4

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    .line 2
    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v4, v0

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    move-object v4, v2

    .line 3
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v4

    move-object v0, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v0

    throw v4
.end method
