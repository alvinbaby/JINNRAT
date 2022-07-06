.class final Lcom/google/android/gms/common/api/internal/zaa;
.super Lcom/google/android/gms/common/api/internal/LifecycleCallback;
.source "com.google.android.gms:play-services-base@@17.6.0"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
    otherwise = 0x2
.end annotation


# instance fields
.field private zaa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
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

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zaa;->zaa:Ljava/util/List;

    move-object v2, v0

    .line 3
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaa;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    const-string v3, "LifecycleObserverOnStop"

    move-object v4, v0

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->addCallback(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void
.end method

.method static synthetic zaa(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/zaa;
    .locals 6

    move-object v0, p0

    move-object v3, v0

    monitor-enter v3

    move-object v3, v0

    :try_start_0
    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zaa;->getFragment(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    move-result-object v3

    move-object v1, v3

    move-object v3, v1

    const-string v4, "LifecycleObserverOnStop"

    const-class v5, Lcom/google/android/gms/common/api/internal/zaa;

    invoke-interface {v3, v4, v5}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->getCallbackOrNull(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/internal/zaa;

    move-object v2, v3

    move-object v3, v2

    if-nez v3, :cond_0

    new-instance v3, Lcom/google/android/gms/common/api/internal/zaa;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/internal/zaa;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    move-object v3, v2

    move-object v1, v3

    :goto_0
    move-object v3, v0

    monitor-exit v3

    move-object v3, v1

    move-object v0, v3

    return-object v0

    :cond_0
    move-object v3, v2

    move-object v1, v3

    goto :goto_0

    :catchall_0
    move-exception v3

    move-object v1, v3

    move-object v3, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v1

    throw v3
.end method

.method static synthetic zab(Lcom/google/android/gms/common/api/internal/zaa;Ljava/lang/Runnable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/internal/zaa;->zac(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final declared-synchronized zac(Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaa;->zaa:Ljava/util/List;

    move-object v3, v1

    .line 1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit v4

    return-void

    .line 4294967295
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method


# virtual methods
.method public final onStop()V
    .locals 5
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v3, v0

    monitor-enter v3

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaa;->zaa:Ljava/util/List;

    move-object v1, v3

    new-instance v3, Ljava/util/ArrayList;

    move-object v2, v3

    move-object v3, v2

    .line 1
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zaa;->zaa:Ljava/util/List;

    move-object v3, v0

    .line 2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v1

    .line 3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v0, v3

    :goto_0
    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 4
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    move-object v1, v3

    .line 2
    move-object v3, v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    move-object v3, v1

    .line 2
    throw v3
.end method
