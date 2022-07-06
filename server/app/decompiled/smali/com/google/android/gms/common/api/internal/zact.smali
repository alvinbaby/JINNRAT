.class final Lcom/google/android/gms/common/api/internal/zact;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/Result;

.field final synthetic zab:Lcom/google/android/gms/common/api/internal/zacv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zacv;Lcom/google/android/gms/common/api/Result;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zact;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zact;->zaa:Lcom/google/android/gms/common/api/Result;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 1
    move-object v0, p0

    :try_start_0
    sget-object v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa:Ljava/lang/ThreadLocal;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zact;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    move-object v1, v3

    move-object v3, v1

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zacv;->zac(Lcom/google/android/gms/common/api/internal/zacv;)Lcom/google/android/gms/common/api/ResultTransform;

    move-result-object v3

    move-object v1, v3

    move-object v3, v1

    .line 2
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/common/api/ResultTransform;

    move-object v1, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zact;->zaa:Lcom/google/android/gms/common/api/Result;

    move-object v2, v3

    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/ResultTransform;->onSuccess(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v3

    move-object v1, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zact;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zacv;->zad(Lcom/google/android/gms/common/api/internal/zacv;)Lcom/google/android/gms/common/api/internal/zacu;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zact;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zacv;->zad(Lcom/google/android/gms/common/api/internal/zacv;)Lcom/google/android/gms/common/api/internal/zacu;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v1

    .line 3
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/common/api/internal/zacu;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 4
    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/zacu;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    sget-object v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa:Ljava/lang/ThreadLocal;

    const/4 v4, 0x0

    .line 7
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zact;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zact;->zaa:Lcom/google/android/gms/common/api/Result;

    .line 8
    invoke-static {v3, v4}, Lcom/google/android/gms/common/api/internal/zacv;->zae(Lcom/google/android/gms/common/api/internal/zacv;Lcom/google/android/gms/common/api/Result;)V

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zact;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zacv;->zaf(Lcom/google/android/gms/common/api/internal/zacv;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/GoogleApiClient;

    move-object v1, v3

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zact;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    .line 10
    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/GoogleApiClient;->zap(Lcom/google/android/gms/common/api/internal/zacv;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    move-object v3, v0

    :try_start_1
    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zact;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    move-object v2, v3

    move-object v3, v2

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zacv;->zad(Lcom/google/android/gms/common/api/internal/zacv;)Lcom/google/android/gms/common/api/internal/zacu;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zact;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zacv;->zad(Lcom/google/android/gms/common/api/internal/zacv;)Lcom/google/android/gms/common/api/internal/zacu;

    move-result-object v4

    const/4 v5, 0x1

    move-object v6, v1

    .line 5
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/common/api/internal/zacu;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 6
    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/zacu;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 7
    sget-object v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa:Ljava/lang/ThreadLocal;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zact;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zact;->zaa:Lcom/google/android/gms/common/api/Result;

    .line 8
    invoke-static {v3, v4}, Lcom/google/android/gms/common/api/internal/zacv;->zae(Lcom/google/android/gms/common/api/internal/zacv;Lcom/google/android/gms/common/api/Result;)V

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zact;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zacv;->zaf(Lcom/google/android/gms/common/api/internal/zacv;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/GoogleApiClient;

    move-object v1, v3

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zact;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    .line 10
    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/GoogleApiClient;->zap(Lcom/google/android/gms/common/api/internal/zacv;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    move-object v1, v3

    .line 7
    sget-object v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa:Ljava/lang/ThreadLocal;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zact;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zact;->zaa:Lcom/google/android/gms/common/api/Result;

    .line 8
    invoke-static {v3, v4}, Lcom/google/android/gms/common/api/internal/zacv;->zae(Lcom/google/android/gms/common/api/internal/zacv;Lcom/google/android/gms/common/api/Result;)V

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zact;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zacv;->zaf(Lcom/google/android/gms/common/api/internal/zacv;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/GoogleApiClient;

    move-object v2, v3

    move-object v3, v2

    if-nez v3, :cond_1

    :goto_1
    move-object v3, v1

    .line 11
    throw v3

    :cond_1
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zact;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    .line 10
    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/GoogleApiClient;->zap(Lcom/google/android/gms/common/api/internal/zacv;)V

    goto :goto_1
.end method
