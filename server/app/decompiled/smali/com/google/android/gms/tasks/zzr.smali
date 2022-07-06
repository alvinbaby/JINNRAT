.class final Lcom/google/android/gms/tasks/zzr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@17.2.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/Object;

.field private zzb:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/tasks/zzq",
            "<TTResult;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private zzc:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 4

    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/Object;

    move-object v1, v2

    move-object v2, v1

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/tasks/zzq;)V
    .locals 6
    .param p1    # Lcom/google/android/gms/tasks/zzq;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/zzq",
            "<TTResult;>;)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    move-object v2, v4

    move-object v4, v2

    monitor-enter v4

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/util/Queue;

    move-object v3, v4

    move-object v4, v3

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayDeque;

    move-object v3, v4

    move-object v4, v3

    .line 1
    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/util/Queue;

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/util/Queue;

    move-object v5, v1

    .line 2
    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

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

.method public final zzb(Lcom/google/android/gms/tasks/Task;)V
    .locals 6
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    move-object v2, v4

    move-object v4, v2

    monitor-enter v4

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/util/Queue;

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    move v3, v4

    move v4, v3

    if-eqz v4, :cond_1

    :cond_0
    move-object v4, v2

    .line 1
    monitor-exit v4

    .line 6
    :goto_0
    return-void

    .line 1
    :cond_1
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    move-object v4, v2

    .line 2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    move-object v2, v4

    move-object v4, v2

    monitor-enter v4

    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/util/Queue;

    .line 3
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/tasks/zzq;

    move-object v3, v4

    move-object v4, v3

    if-nez v4, :cond_2

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    move-object v4, v2

    .line 6
    monitor-exit v4

    goto :goto_0

    :cond_2
    move-object v4, v2

    .line 4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v3

    move-object v5, v1

    .line 5
    invoke-interface {v4, v5}, Lcom/google/android/gms/tasks/zzq;->zza(Lcom/google/android/gms/tasks/Task;)V

    goto :goto_1

    :catchall_0
    move-exception v4

    move-object v0, v4

    move-object v4, v2

    .line 2
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v0

    throw v4

    :catchall_1
    move-exception v4

    move-object v0, v4

    .line 4
    move-object v4, v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2
    move-object v4, v0

    .line 4
    throw v4
.end method
