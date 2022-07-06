.class final Lcom/google/android/gms/tasks/zzac;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@17.2.1"

# interfaces
.implements Lcom/google/android/gms/tasks/zzab;


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/tasks/zzw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/zzw",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private zzd:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private zze:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private zzf:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private zzg:Ljava/lang/Exception;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private zzh:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/google/android/gms/tasks/zzw;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/tasks/zzw",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/lang/Object;

    move-object v3, v4

    move-object v4, v3

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/android/gms/tasks/zzac;->zza:Ljava/lang/Object;

    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/google/android/gms/tasks/zzac;->zzb:I

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/android/gms/tasks/zzac;->zzc:Lcom/google/android/gms/tasks/zzw;

    return-void
.end method

.method private final zza()V
    .locals 9
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v6, v0

    iget v6, v6, Lcom/google/android/gms/tasks/zzac;->zzd:I

    move v1, v6

    move-object v6, v0

    iget v6, v6, Lcom/google/android/gms/tasks/zzac;->zze:I

    move v2, v6

    move-object v6, v0

    iget v6, v6, Lcom/google/android/gms/tasks/zzac;->zzf:I

    move v3, v6

    move-object v6, v0

    iget v6, v6, Lcom/google/android/gms/tasks/zzac;->zzb:I

    move v4, v6

    move v6, v1

    move v7, v2

    add-int/2addr v6, v7

    move v7, v3

    add-int/2addr v6, v7

    move v7, v4

    if-ne v6, v7, :cond_2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/tasks/zzac;->zzg:Ljava/lang/Exception;

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/tasks/zzac;->zzc:Lcom/google/android/gms/tasks/zzw;

    move-object v1, v6

    .line 1
    new-instance v6, Ljava/util/concurrent/ExecutionException;

    move-object v3, v6

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v5, v6

    move-object v6, v5

    const/16 v7, 0x36

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v5

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v5

    const-string v7, " out of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v5

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v5

    const-string v7, " underlying tasks failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/tasks/zzac;->zzg:Ljava/lang/Exception;

    invoke-direct {v6, v7, v8}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/google/android/gms/tasks/zzw;->zzc(Ljava/lang/Exception;)V

    .line 3
    :goto_0
    return-void

    .line 1
    :cond_0
    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/android/gms/tasks/zzac;->zzh:Z

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/tasks/zzac;->zzc:Lcom/google/android/gms/tasks/zzw;

    .line 2
    invoke-virtual {v6}, Lcom/google/android/gms/tasks/zzw;->zze()Z

    move-result v6

    goto :goto_0

    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/tasks/zzac;->zzc:Lcom/google/android/gms/tasks/zzw;

    const/4 v7, 0x0

    .line 3
    invoke-virtual {v6, v7}, Lcom/google/android/gms/tasks/zzw;->zza(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    goto :goto_0
.end method


# virtual methods
.method public final onCanceled()V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/tasks/zzac;->zza:Ljava/lang/Object;

    move-object v1, v2

    move-object v2, v1

    monitor-enter v2

    move-object v2, v0

    move-object v3, v0

    :try_start_0
    iget v3, v3, Lcom/google/android/gms/tasks/zzac;->zzf:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/gms/tasks/zzac;->zzf:I

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/gms/tasks/zzac;->zzh:Z

    move-object v2, v0

    .line 1
    invoke-direct {v2}, Lcom/google/android/gms/tasks/zzac;->zza()V

    move-object v2, v1

    .line 2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v2

    move-object v0, v2

    move-object v2, v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    throw v2
.end method

.method public final onFailure(Ljava/lang/Exception;)V
    .locals 6
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/tasks/zzac;->zza:Ljava/lang/Object;

    move-object v2, v3

    move-object v3, v2

    monitor-enter v3

    move-object v3, v0

    move-object v4, v0

    :try_start_0
    iget v4, v4, Lcom/google/android/gms/tasks/zzac;->zze:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/google/android/gms/tasks/zzac;->zze:I

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/tasks/zzac;->zzg:Ljava/lang/Exception;

    move-object v3, v0

    .line 1
    invoke-direct {v3}, Lcom/google/android/gms/tasks/zzac;->zza()V

    move-object v3, v2

    .line 2
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v3

    move-object v0, v3

    move-object v3, v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v0

    throw v3
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/tasks/zzac;->zza:Ljava/lang/Object;

    move-object v1, v2

    move-object v2, v1

    monitor-enter v2

    move-object v2, v0

    move-object v3, v0

    :try_start_0
    iget v3, v3, Lcom/google/android/gms/tasks/zzac;->zzd:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/gms/tasks/zzac;->zzd:I

    move-object v2, v0

    .line 1
    invoke-direct {v2}, Lcom/google/android/gms/tasks/zzac;->zza()V

    move-object v2, v1

    .line 2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v2

    move-object v0, v2

    move-object v2, v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    throw v2
.end method
