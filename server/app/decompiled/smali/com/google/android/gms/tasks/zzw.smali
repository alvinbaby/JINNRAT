.class final Lcom/google/android/gms/tasks/zzw;
.super Lcom/google/android/gms/tasks/Task;
.source "com.google.android.gms:play-services-tasks@@17.2.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/tasks/Task",
        "<TTResult;>;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:Lcom/google/android/gms/tasks/zzr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/zzr",
            "<TTResult;>;"
        }
    .end annotation
.end field

.field private zzc:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private volatile zzd:Z

.field private zze:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private zzf:Ljava/lang/Exception;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/gms/tasks/Task;-><init>()V

    new-instance v2, Ljava/lang/Object;

    move-object v1, v2

    move-object v2, v1

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/tasks/zzr;

    move-object v1, v2

    move-object v2, v1

    .line 1
    invoke-direct {v2}, Lcom/google/android/gms/tasks/zzr;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    return-void
.end method

.method private final zzf()V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    const-string v2, "Task is not yet complete"

    .line 1
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method

.method private final zzg()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/tasks/DuplicateTaskCompletionException;->of(Lcom/google/android/gms/tasks/Task;)Ljava/lang/IllegalStateException;

    move-result-object v1

    throw v1

    :cond_0
    return-void
.end method

.method private final zzh()V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/gms/tasks/zzw;->zzd:Z

    if-eqz v1, :cond_0

    .line 1
    new-instance v1, Ljava/util/concurrent/CancellationException;

    move-object v0, v1

    move-object v1, v0

    const-string v2, "Task is already canceled."

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    throw v1

    :cond_0
    return-void
.end method

.method private final zzi()V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    move-object v1, v3

    move-object v3, v1

    monitor-enter v3

    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    move v2, v3

    move v3, v2

    if-nez v3, :cond_0

    move-object v3, v1

    .line 1
    monitor-exit v3

    .line 3
    :goto_0
    return-void

    .line 1
    :cond_0
    move-object v3, v1

    .line 2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    move-object v4, v0

    .line 3
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/zzr;->zzb(Lcom/google/android/gms/tasks/Task;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    move-object v0, v3

    .line 2
    move-object v3, v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    move-object v3, v0

    .line 2
    throw v3
.end method


# virtual methods
.method public final addOnCanceledListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnCanceledListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnCanceledListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Lcom/google/android/gms/tasks/zzh;

    move-object v3, v4

    move-object v4, v3

    .line 1
    sget-object v5, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    move-object v6, v2

    .line 2
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/tasks/zzh;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    move-object v5, v3

    .line 3
    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/zzr;->zza(Lcom/google/android/gms/tasks/zzq;)V

    move-object v4, v1

    .line 4
    invoke-static {v4}, Lcom/google/android/gms/tasks/zzv;->zza(Landroid/app/Activity;)Lcom/google/android/gms/tasks/zzv;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/zzv;->zzb(Lcom/google/android/gms/tasks/zzq;)V

    move-object v4, v0

    .line 5
    invoke-direct {v4}, Lcom/google/android/gms/tasks/zzw;->zzi()V

    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public final addOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .param p1    # Lcom/google/android/gms/tasks/OnCanceledListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnCanceledListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    .line 6
    sget-object v3, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/tasks/Task;->addOnCanceledListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public final addOnCanceledListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;
    .locals 8
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnCanceledListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnCanceledListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    move-object v3, v5

    new-instance v5, Lcom/google/android/gms/tasks/zzh;

    move-object v4, v5

    move-object v5, v4

    move-object v6, v1

    move-object v7, v2

    .line 7
    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/tasks/zzh;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)V

    move-object v5, v3

    move-object v6, v4

    .line 8
    invoke-virtual {v5, v6}, Lcom/google/android/gms/tasks/zzr;->zza(Lcom/google/android/gms/tasks/zzq;)V

    move-object v5, v0

    .line 9
    invoke-direct {v5}, Lcom/google/android/gms/tasks/zzw;->zzi()V

    move-object v5, v0

    move-object v0, v5

    return-object v0
.end method

.method public final addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnCompleteListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnCompleteListener",
            "<TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Lcom/google/android/gms/tasks/zzj;

    move-object v3, v4

    move-object v4, v3

    .line 1
    sget-object v5, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    move-object v6, v2

    .line 2
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/tasks/zzj;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    move-object v5, v3

    .line 3
    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/zzr;->zza(Lcom/google/android/gms/tasks/zzq;)V

    move-object v4, v1

    .line 4
    invoke-static {v4}, Lcom/google/android/gms/tasks/zzv;->zza(Landroid/app/Activity;)Lcom/google/android/gms/tasks/zzv;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/zzv;->zzb(Lcom/google/android/gms/tasks/zzq;)V

    move-object v4, v0

    .line 5
    invoke-direct {v4}, Lcom/google/android/gms/tasks/zzw;->zzi()V

    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public final addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .locals 8
    .param p1    # Lcom/google/android/gms/tasks/OnCompleteListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnCompleteListener",
            "<TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 6
    move-object v0, p0

    move-object v1, p1

    sget-object v5, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    move-object v2, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    move-object v3, v5

    new-instance v5, Lcom/google/android/gms/tasks/zzj;

    move-object v4, v5

    move-object v5, v4

    move-object v6, v2

    move-object v7, v1

    .line 7
    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/tasks/zzj;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    move-object v5, v3

    move-object v6, v4

    .line 8
    invoke-virtual {v5, v6}, Lcom/google/android/gms/tasks/zzr;->zza(Lcom/google/android/gms/tasks/zzq;)V

    move-object v5, v0

    .line 9
    invoke-direct {v5}, Lcom/google/android/gms/tasks/zzw;->zzi()V

    move-object v5, v0

    move-object v0, v5

    return-object v0
.end method

.method public final addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .locals 8
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnCompleteListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnCompleteListener",
            "<TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    move-object v3, v5

    new-instance v5, Lcom/google/android/gms/tasks/zzj;

    move-object v4, v5

    move-object v5, v4

    move-object v6, v1

    move-object v7, v2

    .line 10
    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/tasks/zzj;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    move-object v5, v3

    move-object v6, v4

    .line 11
    invoke-virtual {v5, v6}, Lcom/google/android/gms/tasks/zzr;->zza(Lcom/google/android/gms/tasks/zzq;)V

    move-object v5, v0

    .line 12
    invoke-direct {v5}, Lcom/google/android/gms/tasks/zzw;->zzi()V

    move-object v5, v0

    move-object v0, v5

    return-object v0
.end method

.method public final addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnFailureListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Lcom/google/android/gms/tasks/zzl;

    move-object v3, v4

    move-object v4, v3

    .line 1
    sget-object v5, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    move-object v6, v2

    .line 2
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/tasks/zzl;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    move-object v5, v3

    .line 3
    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/zzr;->zza(Lcom/google/android/gms/tasks/zzq;)V

    move-object v4, v1

    .line 4
    invoke-static {v4}, Lcom/google/android/gms/tasks/zzv;->zza(Landroid/app/Activity;)Lcom/google/android/gms/tasks/zzv;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/zzv;->zzb(Lcom/google/android/gms/tasks/zzq;)V

    move-object v4, v0

    .line 5
    invoke-direct {v4}, Lcom/google/android/gms/tasks/zzw;->zzi()V

    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public final addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .param p1    # Lcom/google/android/gms/tasks/OnFailureListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    .line 6
    sget-object v3, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/tasks/zzw;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public final addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .locals 8
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnFailureListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    move-object v3, v5

    new-instance v5, Lcom/google/android/gms/tasks/zzl;

    move-object v4, v5

    move-object v5, v4

    move-object v6, v1

    move-object v7, v2

    .line 7
    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/tasks/zzl;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V

    move-object v5, v3

    move-object v6, v4

    .line 8
    invoke-virtual {v5, v6}, Lcom/google/android/gms/tasks/zzr;->zza(Lcom/google/android/gms/tasks/zzq;)V

    move-object v5, v0

    .line 9
    invoke-direct {v5}, Lcom/google/android/gms/tasks/zzw;->zzi()V

    move-object v5, v0

    move-object v0, v5

    return-object v0
.end method

.method public final addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnSuccessListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnSuccessListener",
            "<-TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Lcom/google/android/gms/tasks/zzn;

    move-object v3, v4

    move-object v4, v3

    .line 1
    sget-object v5, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    move-object v6, v2

    .line 2
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/tasks/zzn;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    move-object v5, v3

    .line 3
    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/zzr;->zza(Lcom/google/android/gms/tasks/zzq;)V

    move-object v4, v1

    .line 4
    invoke-static {v4}, Lcom/google/android/gms/tasks/zzv;->zza(Landroid/app/Activity;)Lcom/google/android/gms/tasks/zzv;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/zzv;->zzb(Lcom/google/android/gms/tasks/zzq;)V

    move-object v4, v0

    .line 5
    invoke-direct {v4}, Lcom/google/android/gms/tasks/zzw;->zzi()V

    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public final addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .param p1    # Lcom/google/android/gms/tasks/OnSuccessListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnSuccessListener",
            "<-TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    .line 6
    sget-object v3, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/tasks/zzw;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public final addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .locals 8
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnSuccessListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnSuccessListener",
            "<-TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    move-object v3, v5

    new-instance v5, Lcom/google/android/gms/tasks/zzn;

    move-object v4, v5

    move-object v5, v4

    move-object v6, v1

    move-object v7, v2

    .line 7
    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/tasks/zzn;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    move-object v5, v3

    move-object v6, v4

    .line 8
    invoke-virtual {v5, v6}, Lcom/google/android/gms/tasks/zzr;->zza(Lcom/google/android/gms/tasks/zzq;)V

    move-object v5, v0

    .line 9
    invoke-direct {v5}, Lcom/google/android/gms/tasks/zzw;->zzi()V

    move-object v5, v0

    move-object v0, v5

    return-object v0
.end method

.method public final continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .param p1    # Lcom/google/android/gms/tasks/Continuation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Continuation",
            "<TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    .line 1
    sget-object v3, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public final continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 10
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/Continuation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation",
            "<TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v6, Lcom/google/android/gms/tasks/zzw;

    move-object v3, v6

    move-object v6, v3

    .line 2
    invoke-direct {v6}, Lcom/google/android/gms/tasks/zzw;-><init>()V

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    move-object v4, v6

    new-instance v6, Lcom/google/android/gms/tasks/zzd;

    move-object v5, v6

    move-object v6, v5

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    .line 3
    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/gms/tasks/zzd;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/zzw;)V

    move-object v6, v4

    move-object v7, v5

    .line 4
    invoke-virtual {v6, v7}, Lcom/google/android/gms/tasks/zzr;->zza(Lcom/google/android/gms/tasks/zzq;)V

    move-object v6, v0

    .line 5
    invoke-direct {v6}, Lcom/google/android/gms/tasks/zzw;->zzi()V

    move-object v6, v3

    move-object v0, v6

    return-object v0
.end method

.method public final continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .param p1    # Lcom/google/android/gms/tasks/Continuation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Continuation",
            "<TTResult;",
            "Lcom/google/android/gms/tasks/Task",
            "<TTContinuationResult;>;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    .line 1
    sget-object v3, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public final continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 10
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/Continuation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation",
            "<TTResult;",
            "Lcom/google/android/gms/tasks/Task",
            "<TTContinuationResult;>;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v6, Lcom/google/android/gms/tasks/zzw;

    move-object v3, v6

    move-object v6, v3

    .line 2
    invoke-direct {v6}, Lcom/google/android/gms/tasks/zzw;-><init>()V

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    move-object v4, v6

    new-instance v6, Lcom/google/android/gms/tasks/zzf;

    move-object v5, v6

    move-object v6, v5

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    .line 3
    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/gms/tasks/zzf;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/zzw;)V

    move-object v6, v4

    move-object v7, v5

    .line 4
    invoke-virtual {v6, v7}, Lcom/google/android/gms/tasks/zzr;->zza(Lcom/google/android/gms/tasks/zzq;)V

    move-object v6, v0

    .line 5
    invoke-direct {v6}, Lcom/google/android/gms/tasks/zzw;->zzi()V

    move-object v6, v3

    move-object v0, v6

    return-object v0
.end method

.method public final getException()Ljava/lang/Exception;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    move-object v1, v2

    move-object v2, v1

    monitor-enter v2

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/android/gms/tasks/zzw;->zzf:Ljava/lang/Exception;

    move-object v0, v2

    move-object v2, v1

    .line 1
    monitor-exit v2

    move-object v2, v0

    move-object v0, v2

    return-object v0

    :catchall_0
    move-exception v2

    move-object v0, v2

    .line 2
    move-object v2, v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1
    move-object v2, v0

    .line 2
    throw v2
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    move-object v1, v3

    move-object v3, v1

    monitor-enter v3

    move-object v3, v0

    .line 1
    :try_start_0
    invoke-direct {v3}, Lcom/google/android/gms/tasks/zzw;->zzf()V

    move-object v3, v0

    .line 2
    invoke-direct {v3}, Lcom/google/android/gms/tasks/zzw;->zzh()V

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/tasks/zzw;->zzf:Ljava/lang/Exception;

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_0

    new-instance v3, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    move-object v0, v3

    move-object v3, v0

    move-object v4, v2

    .line 3
    invoke-direct {v3, v4}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    move-object v3, v0

    throw v3

    .line 4
    :catchall_0
    move-exception v3

    move-object v0, v3

    .line 5
    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    move-object v3, v0

    .line 5
    throw v3

    .line 3
    :cond_0
    move-object v3, v0

    :try_start_1
    iget-object v3, v3, Lcom/google/android/gms/tasks/zzw;->zze:Ljava/lang/Object;

    move-object v0, v3

    move-object v3, v1

    .line 4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public final getResult(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class",
            "<TX;>;)TTResult;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    move-object v2, v4

    move-object v4, v2

    monitor-enter v4

    move-object v4, v0

    .line 6
    :try_start_0
    invoke-direct {v4}, Lcom/google/android/gms/tasks/zzw;->zzf()V

    move-object v4, v0

    .line 7
    invoke-direct {v4}, Lcom/google/android/gms/tasks/zzw;->zzh()V

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/tasks/zzw;->zzf:Ljava/lang/Exception;

    .line 8
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    move v3, v4

    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/tasks/zzw;->zzf:Ljava/lang/Exception;

    .line 9
    invoke-virtual {v4, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 11
    :catchall_0
    move-exception v4

    move-object v0, v4

    .line 12
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    move-object v4, v0

    .line 12
    throw v4

    .line 9
    :cond_0
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Lcom/google/android/gms/tasks/zzw;->zzf:Ljava/lang/Exception;

    move-object v1, v4

    move-object v4, v1

    if-eqz v4, :cond_1

    new-instance v4, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    move-object v0, v4

    move-object v4, v0

    move-object v5, v1

    .line 10
    invoke-direct {v4, v5}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    move-object v4, v0

    throw v4

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/tasks/zzw;->zze:Ljava/lang/Object;

    move-object v0, v4

    move-object v4, v2

    .line 11
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public final isCanceled()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/gms/tasks/zzw;->zzd:Z

    move v0, v1

    return v0
.end method

.method public final isComplete()Z
    .locals 3

    .prologue
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    move-object v1, v2

    move-object v2, v1

    monitor-enter v2

    move-object v2, v0

    :try_start_0
    iget-boolean v2, v2, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    move v0, v2

    move-object v2, v1

    .line 1
    monitor-exit v2

    move v2, v0

    move v0, v2

    return v0

    :catchall_0
    move-exception v2

    move-object v0, v2

    .line 2
    move-object v2, v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1
    move-object v2, v0

    .line 2
    throw v2
.end method

.method public final isSuccessful()Z
    .locals 4

    .prologue
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    move-object v1, v3

    move-object v3, v1

    monitor-enter v3

    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    move v2, v3

    move v3, v2

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/android/gms/tasks/zzw;->zzd:Z

    move v2, v3

    move v3, v2

    if-nez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/tasks/zzw;->zzf:Ljava/lang/Exception;

    move-object v0, v3

    move-object v3, v0

    if-nez v3, :cond_0

    const/4 v3, 0x1

    move v0, v3

    :goto_0
    move-object v3, v1

    .line 1
    monitor-exit v3

    move v3, v0

    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    :catchall_0
    move-exception v3

    move-object v0, v3

    .line 2
    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1
    move-object v3, v0

    .line 2
    throw v3
.end method

.method public final onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;
    .locals 10
    .param p1    # Lcom/google/android/gms/tasks/SuccessContinuation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/SuccessContinuation",
            "<TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 1
    move-object v0, p0

    move-object v1, p1

    sget-object v6, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    move-object v2, v6

    new-instance v6, Lcom/google/android/gms/tasks/zzw;

    move-object v3, v6

    move-object v6, v3

    .line 2
    invoke-direct {v6}, Lcom/google/android/gms/tasks/zzw;-><init>()V

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    move-object v4, v6

    new-instance v6, Lcom/google/android/gms/tasks/zzp;

    move-object v5, v6

    move-object v6, v5

    move-object v7, v2

    move-object v8, v1

    move-object v9, v3

    .line 3
    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/gms/tasks/zzp;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;Lcom/google/android/gms/tasks/zzw;)V

    move-object v6, v4

    move-object v7, v5

    .line 4
    invoke-virtual {v6, v7}, Lcom/google/android/gms/tasks/zzr;->zza(Lcom/google/android/gms/tasks/zzq;)V

    move-object v6, v0

    .line 5
    invoke-direct {v6}, Lcom/google/android/gms/tasks/zzw;->zzi()V

    move-object v6, v3

    move-object v0, v6

    return-object v0
.end method

.method public final onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/SuccessContinuation",
            "<TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v6, Lcom/google/android/gms/tasks/zzw;

    move-object v3, v6

    move-object v6, v3

    .line 6
    invoke-direct {v6}, Lcom/google/android/gms/tasks/zzw;-><init>()V

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    move-object v4, v6

    new-instance v6, Lcom/google/android/gms/tasks/zzp;

    move-object v5, v6

    move-object v6, v5

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    .line 7
    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/gms/tasks/zzp;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;Lcom/google/android/gms/tasks/zzw;)V

    move-object v6, v4

    move-object v7, v5

    .line 8
    invoke-virtual {v6, v7}, Lcom/google/android/gms/tasks/zzr;->zza(Lcom/google/android/gms/tasks/zzq;)V

    move-object v6, v0

    .line 9
    invoke-direct {v6}, Lcom/google/android/gms/tasks/zzw;->zzi()V

    move-object v6, v3

    move-object v0, v6

    return-object v0
.end method

.method public final zza(Ljava/lang/Object;)V
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    move-object v2, v3

    move-object v3, v2

    monitor-enter v3

    move-object v3, v0

    .line 1
    :try_start_0
    invoke-direct {v3}, Lcom/google/android/gms/tasks/zzw;->zzg()V

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/tasks/zzw;->zze:Ljava/lang/Object;

    move-object v3, v2

    .line 2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    move-object v4, v0

    .line 3
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/zzr;->zzb(Lcom/google/android/gms/tasks/Task;)V

    return-void

    :catchall_0
    move-exception v3

    move-object v0, v3

    .line 2
    move-object v3, v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    move-object v3, v0

    .line 2
    throw v3
.end method

.method public final zzb(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    move-object v2, v4

    move-object v4, v2

    monitor-enter v4

    move-object v4, v0

    :try_start_0
    iget-boolean v4, v4, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    move v3, v4

    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v2

    .line 1
    monitor-exit v4

    const/4 v4, 0x0

    move v0, v4

    .line 3
    :goto_0
    return v0

    .line 1
    :cond_0
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/android/gms/tasks/zzw;->zze:Ljava/lang/Object;

    move-object v4, v2

    .line 2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    move-object v5, v0

    .line 3
    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/zzr;->zzb(Lcom/google/android/gms/tasks/Task;)V

    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    :catchall_0
    move-exception v4

    move-object v0, v4

    .line 2
    move-object v4, v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    move-object v4, v0

    .line 2
    throw v4
.end method

.method public final zzc(Ljava/lang/Exception;)V
    .locals 5
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    const-string v4, "Exception must not be null"

    .line 1
    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    move-object v2, v3

    move-object v3, v2

    monitor-enter v3

    move-object v3, v0

    .line 2
    :try_start_0
    invoke-direct {v3}, Lcom/google/android/gms/tasks/zzw;->zzg()V

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/tasks/zzw;->zzf:Ljava/lang/Exception;

    move-object v3, v2

    .line 3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    move-object v4, v0

    .line 4
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/zzr;->zzb(Lcom/google/android/gms/tasks/Task;)V

    return-void

    :catchall_0
    move-exception v3

    move-object v0, v3

    .line 3
    move-object v3, v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    move-object v3, v0

    .line 3
    throw v3
.end method

.method public final zzd(Ljava/lang/Exception;)Z
    .locals 6
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    const-string v5, "Exception must not be null"

    .line 1
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    move-object v2, v4

    move-object v4, v2

    monitor-enter v4

    move-object v4, v0

    :try_start_0
    iget-boolean v4, v4, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    move v3, v4

    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v2

    .line 2
    monitor-exit v4

    const/4 v4, 0x0

    move v0, v4

    .line 4
    :goto_0
    return v0

    .line 2
    :cond_0
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/android/gms/tasks/zzw;->zzf:Ljava/lang/Exception;

    move-object v4, v2

    .line 3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    move-object v5, v0

    .line 4
    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/zzr;->zzb(Lcom/google/android/gms/tasks/Task;)V

    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    :catchall_0
    move-exception v4

    move-object v0, v4

    .line 3
    move-object v4, v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    move-object v4, v0

    .line 3
    throw v4
.end method

.method public final zze()Z
    .locals 5

    .prologue
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    move-object v1, v3

    move-object v3, v1

    monitor-enter v3

    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    move v2, v3

    move v3, v2

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 1
    monitor-exit v3

    const/4 v3, 0x0

    move v0, v3

    .line 3
    :goto_0
    return v0

    .line 1
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/android/gms/tasks/zzw;->zzd:Z

    move-object v3, v1

    .line 2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    move-object v4, v0

    .line 3
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/zzr;->zzb(Lcom/google/android/gms/tasks/Task;)V

    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    :catchall_0
    move-exception v3

    move-object v0, v3

    .line 2
    move-object v3, v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    move-object v3, v0

    .line 2
    throw v3
.end method
