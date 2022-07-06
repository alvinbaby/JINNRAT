.class final Lcom/google/android/gms/common/api/internal/zaai;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;


# instance fields
.field private final zaa:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/common/api/internal/zaar;",
            ">;"
        }
    .end annotation
.end field

.field private final zab:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<*>;"
        }
    .end annotation
.end field

.field private final zac:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaar;Lcom/google/android/gms/common/api/Api;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zaar;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/lang/ref/WeakReference;

    move-object v4, v5

    move-object v5, v4

    move-object v6, v1

    .line 1
    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/zaai;->zaa:Ljava/lang/ref/WeakReference;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/zaai;->zab:Lcom/google/android/gms/common/api/Api;

    move-object v5, v0

    move v6, v3

    iput-boolean v6, v5, Lcom/google/android/gms/common/api/internal/zaai;->zac:Z

    return-void
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zaai;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/gms/common/api/internal/zaai;->zac:Z

    move v0, v1

    return v0
.end method


# virtual methods
.method public final onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 8
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaai;->zaa:Ljava/lang/ref/WeakReference;

    .line 1
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/internal/zaar;

    move-object v3, v4

    move-object v4, v3

    if-nez v4, :cond_0

    .line 6
    :goto_0
    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    move-object v5, v3

    invoke-static {v5}, Lcom/google/android/gms/common/api/internal/zaar;->zal(Lcom/google/android/gms/common/api/internal/zaar;)Lcom/google/android/gms/common/api/internal/zabd;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabd;->zag:Lcom/google/android/gms/common/api/internal/zaaz;

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/GoogleApiClient;->getLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    move v2, v4

    :goto_1
    move v4, v2

    const-string v5, "onReportServiceBinding must be called on the GoogleApiClient handler thread"

    .line 3
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    move-object v4, v3

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zaar;->zak(Lcom/google/android/gms/common/api/internal/zaar;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    .line 4
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object v4, v3

    const/4 v5, 0x0

    .line 5
    :try_start_0
    invoke-static {v4, v5}, Lcom/google/android/gms/common/api/internal/zaar;->zav(Lcom/google/android/gms/common/api/internal/zaar;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    move v2, v4

    move v4, v2

    if-nez v4, :cond_1

    move-object v4, v3

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zaar;->zak(Lcom/google/android/gms/common/api/internal/zaar;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    .line 6
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_1
    move-object v4, v1

    .line 7
    :try_start_1
    invoke-virtual {v4}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v4

    move v2, v4

    move v4, v2

    if-nez v4, :cond_2

    move-object v4, v3

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaai;->zab:Lcom/google/android/gms/common/api/Api;

    move-object v7, v0

    iget-boolean v7, v7, Lcom/google/android/gms/common/api/internal/zaai;->zac:Z

    .line 8
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/common/api/internal/zaar;->zaw(Lcom/google/android/gms/common/api/internal/zaar;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V

    :cond_2
    move-object v4, v3

    .line 9
    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zaar;->zax(Lcom/google/android/gms/common/api/internal/zaar;)Z

    move-result v4

    move v0, v4

    move v4, v0

    if-eqz v4, :cond_3

    move-object v4, v3

    .line 10
    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zaar;->zau(Lcom/google/android/gms/common/api/internal/zaar;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    move-object v4, v3

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zaar;->zak(Lcom/google/android/gms/common/api/internal/zaar;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    .line 6
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v4

    move-object v0, v4

    move-object v4, v3

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zaar;->zak(Lcom/google/android/gms/common/api/internal/zaar;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v4, v0

    .line 11
    throw v4

    :cond_4
    const/4 v4, 0x0

    move v2, v4

    goto :goto_1
.end method
