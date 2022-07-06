.class final Lcom/google/android/gms/common/api/zab;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult$StatusListener;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/Batch;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Batch;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/api/zab;->zaa:Lcom/google/android/gms/common/api/Batch;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/common/api/Status;)V
    .locals 7

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/zab;->zaa:Lcom/google/android/gms/common/api/Batch;

    invoke-static {v4}, Lcom/google/android/gms/common/api/Batch;->zaa(Lcom/google/android/gms/common/api/Batch;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    monitor-enter v4

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/android/gms/common/api/zab;->zaa:Lcom/google/android/gms/common/api/Batch;

    .line 1
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isCanceled()Z

    move-result v4

    move v3, v4

    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v2

    .line 2
    monitor-exit v4

    .line 11
    :goto_0
    return-void

    .line 2
    :cond_0
    move-object v4, v1

    .line 3
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/Status;->isCanceled()Z

    move-result v4

    move v3, v4

    move v4, v3

    if-eqz v4, :cond_5

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/zab;->zaa:Lcom/google/android/gms/common/api/Batch;

    const/4 v5, 0x1

    .line 4
    invoke-static {v4, v5}, Lcom/google/android/gms/common/api/Batch;->zab(Lcom/google/android/gms/common/api/Batch;Z)Z

    move-result v4

    :cond_1
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/zab;->zaa:Lcom/google/android/gms/common/api/Batch;

    .line 7
    invoke-static {v4}, Lcom/google/android/gms/common/api/Batch;->zad(Lcom/google/android/gms/common/api/Batch;)I

    move-result v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/zab;->zaa:Lcom/google/android/gms/common/api/Batch;

    invoke-static {v4}, Lcom/google/android/gms/common/api/Batch;->zae(Lcom/google/android/gms/common/api/Batch;)I

    move-result v4

    move v1, v4

    move v4, v1

    if-nez v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/zab;->zaa:Lcom/google/android/gms/common/api/Batch;

    invoke-static {v4}, Lcom/google/android/gms/common/api/Batch;->zaf(Lcom/google/android/gms/common/api/Batch;)Z

    move-result v4

    move v1, v4

    move v4, v1

    if-eqz v4, :cond_3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/zab;->zaa:Lcom/google/android/gms/common/api/Batch;

    .line 8
    invoke-static {v4}, Lcom/google/android/gms/common/api/Batch;->zag(Lcom/google/android/gms/common/api/Batch;)V

    :cond_2
    :goto_2
    move-object v4, v2

    .line 11
    monitor-exit v4

    goto :goto_0

    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/zab;->zaa:Lcom/google/android/gms/common/api/Batch;

    invoke-static {v4}, Lcom/google/android/gms/common/api/Batch;->zah(Lcom/google/android/gms/common/api/Batch;)Z

    move-result v4

    move v1, v4

    move v4, v1

    if-eqz v4, :cond_4

    new-instance v4, Lcom/google/android/gms/common/api/Status;

    move-object v1, v4

    move-object v4, v1

    const/16 v5, 0xd

    .line 9
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    :goto_3
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/zab;->zaa:Lcom/google/android/gms/common/api/Batch;

    move-object v0, v4

    new-instance v4, Lcom/google/android/gms/common/api/BatchResult;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    move-object v6, v0

    invoke-static {v6}, Lcom/google/android/gms/common/api/Batch;->zai(Lcom/google/android/gms/common/api/Batch;)[Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v6

    .line 10
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/api/BatchResult;-><init>(Lcom/google/android/gms/common/api/Status;[Lcom/google/android/gms/common/api/PendingResult;)V

    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_2

    :cond_4
    sget-object v4, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    move-object v1, v4

    goto :goto_3

    :cond_5
    move-object v4, v1

    .line 5
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v4

    move v1, v4

    move v4, v1

    if-nez v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/zab;->zaa:Lcom/google/android/gms/common/api/Batch;

    const/4 v5, 0x1

    .line 6
    invoke-static {v4, v5}, Lcom/google/android/gms/common/api/Batch;->zac(Lcom/google/android/gms/common/api/Batch;Z)Z

    move-result v4

    goto :goto_1

    :catchall_0
    move-exception v4

    move-object v0, v4

    .line 11
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    move-object v4, v0

    .line 11
    throw v4
.end method
