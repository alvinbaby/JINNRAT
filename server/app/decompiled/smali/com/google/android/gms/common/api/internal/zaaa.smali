.class public final Lcom/google/android/gms/common/api/internal/zaaa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"


# instance fields
.field private final zaa:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/internal/BasePendingResult",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final zab:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/WeakHashMap;

    move-object v1, v2

    move-object v2, v1

    .line 1
    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    move-object v2, v0

    move-object v3, v1

    .line 2
    invoke-static {v3}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zaaa;->zaa:Ljava/util/Map;

    new-instance v2, Ljava/util/WeakHashMap;

    move-object v1, v2

    move-object v2, v1

    .line 3
    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    move-object v2, v0

    move-object v3, v1

    .line 4
    invoke-static {v3}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zaaa;->zab:Ljava/util/Map;

    return-void
.end method

.method static synthetic zaf(Lcom/google/android/gms/common/api/internal/zaaa;)Ljava/util/Map;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaaa;->zaa:Ljava/util/Map;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zag(Lcom/google/android/gms/common/api/internal/zaaa;)Ljava/util/Map;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaaa;->zab:Ljava/util/Map;

    move-object v0, v1

    return-object v0
.end method

.method private final zah(ZLcom/google/android/gms/common/api/Status;)V
    .locals 8

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaa;->zaa:Ljava/util/Map;

    move-object v3, v6

    move-object v6, v3

    .line 1
    monitor-enter v6

    :try_start_0
    new-instance v6, Ljava/util/HashMap;

    move-object v4, v6

    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zaaa;->zaa:Ljava/util/Map;

    .line 2
    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v6, v3

    .line 3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaa;->zab:Ljava/util/Map;

    move-object v3, v6

    move-object v6, v3

    .line 4
    monitor-enter v6

    :try_start_1
    new-instance v6, Ljava/util/HashMap;

    move-object v5, v6

    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zaaa;->zab:Ljava/util/Map;

    .line 5
    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v6, v3

    .line 6
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v4

    .line 7
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v0, v6

    :cond_0
    :goto_0
    move-object v6, v0

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    move-object v3, v6

    move v6, v1

    if-nez v6, :cond_1

    move-object v6, v3

    .line 8
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_1
    move-object v6, v3

    .line 9
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    move-object v7, v2

    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->forceFailureUnlessReady(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_2
    move-object v6, v5

    .line 10
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v0, v6

    :cond_3
    :goto_1
    move-object v6, v0

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    move-object v3, v6

    move v6, v1

    if-nez v6, :cond_4

    move-object v6, v3

    .line 11
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_4
    move-object v6, v3

    .line 12
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    move-object v6, v3

    check-cast v6, Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-object v3, v6

    new-instance v6, Lcom/google/android/gms/common/api/ApiException;

    move-object v4, v6

    move-object v6, v4

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v6, v7}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    move-result v6

    goto :goto_1

    :cond_5
    return-void

    :catchall_0
    move-exception v6

    move-object v0, v6

    move-object v6, v3

    .line 3
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v6, v0

    throw v6

    :catchall_1
    move-exception v6

    move-object v0, v6

    .line 6
    move-object v6, v3

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3
    move-object v6, v0

    .line 6
    throw v6
.end method


# virtual methods
.method final zaa(Lcom/google/android/gms/common/api/internal/BasePendingResult;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BasePendingResult",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaa;->zaa:Ljava/util/Map;

    move-object v4, v1

    move v5, v2

    .line 1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v3, Lcom/google/android/gms/common/api/internal/zay;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v0

    move-object v5, v1

    .line 2
    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/api/internal/zay;-><init>(Lcom/google/android/gms/common/api/internal/zaaa;Lcom/google/android/gms/common/api/internal/BasePendingResult;)V

    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/PendingResult;->addStatusListener(Lcom/google/android/gms/common/api/PendingResult$StatusListener;)V

    return-void
.end method

.method final zab(Lcom/google/android/gms/tasks/TaskCompletionSource;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<TTResult;>;Z)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaaa;->zab:Ljava/util/Map;

    move-object v5, v1

    move v6, v2

    .line 1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v1

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    move-object v2, v4

    new-instance v4, Lcom/google/android/gms/common/api/internal/zaz;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/api/internal/zaz;-><init>(Lcom/google/android/gms/common/api/internal/zaaa;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    move-object v4, v2

    move-object v5, v3

    .line 3
    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    return-void
.end method

.method final zac()Z
    .locals 2

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaaa;->zaa:Ljava/util/Map;

    .line 1
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaaa;->zab:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public final zad()V
    .locals 4

    .prologue
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    .line 1
    sget-object v3, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaa:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/internal/zaaa;->zah(ZLcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method final zae(ILjava/lang/String;)V
    .locals 7
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v3, v4

    move-object v4, v3

    const-string v5, "The connection to Google Play services was lost"

    .line 1
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v4, v1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move-object v4, v3

    const-string v5, " due to service disconnection."

    .line 2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    :cond_0
    :goto_0
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v3

    const-string v5, " Last reason for disconnect: "

    .line 4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5
    :cond_1
    new-instance v4, Lcom/google/android/gms/common/api/Status;

    move-object v1, v4

    move-object v4, v1

    const/16 v5, 0x14

    move-object v6, v3

    .line 6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    move-object v4, v0

    const/4 v5, 0x1

    move-object v6, v1

    .line 7
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/api/internal/zaaa;->zah(ZLcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_2
    move v4, v1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    move-object v4, v3

    const-string v5, " due to dead object exception."

    .line 3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_0
.end method
