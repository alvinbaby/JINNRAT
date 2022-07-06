.class final Lcom/google/android/gms/common/api/internal/zav;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zabt;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/zax;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zax;Lcom/google/android/gms/common/api/internal/zau;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zaa(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zax;->zao(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    .line 1
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    move-object v3, v1

    .line 2
    invoke-static {v2, v3}, Lcom/google/android/gms/common/api/internal/zax;->zaq(Lcom/google/android/gms/common/api/internal/zax;Landroid/os/Bundle;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    move-object v1, v2

    move-object v2, v1

    .line 3
    sget-object v3, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/api/internal/zax;->zar(Lcom/google/android/gms/common/api/internal/zax;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zax;->zap(Lcom/google/android/gms/common/api/internal/zax;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zax;->zao(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 4
    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zax;->zao(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v2, v1

    .line 6
    throw v2
.end method

.method public final zab(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zax;->zao(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    .line 1
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    move-object v3, v1

    .line 2
    invoke-static {v2, v3}, Lcom/google/android/gms/common/api/internal/zax;->zar(Lcom/google/android/gms/common/api/internal/zax;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zax;->zap(Lcom/google/android/gms/common/api/internal/zax;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zax;->zao(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 3
    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zax;->zao(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v2, v1

    .line 5
    throw v2
.end method

.method public final zac(IZ)V
    .locals 7

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zax;->zao(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    .line 1
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zax;->zas(Lcom/google/android/gms/common/api/internal/zax;)Z

    move-result v4

    move v3, v4

    move v4, v3

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zax;->zat(Lcom/google/android/gms/common/api/internal/zax;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zax;->zat(Lcom/google/android/gms/common/api/internal/zax;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v4

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v4

    move v3, v4

    move v4, v3

    if-nez v4, :cond_1

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    const/4 v5, 0x0

    .line 3
    invoke-static {v4, v5}, Lcom/google/android/gms/common/api/internal/zax;->zau(Lcom/google/android/gms/common/api/internal/zax;Z)Z

    move-result v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    move v5, v1

    move v6, v2

    .line 4
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/api/internal/zax;->zav(Lcom/google/android/gms/common/api/internal/zax;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zax;->zao(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    .line 5
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_1
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    const/4 v5, 0x1

    .line 6
    invoke-static {v4, v5}, Lcom/google/android/gms/common/api/internal/zax;->zau(Lcom/google/android/gms/common/api/internal/zax;Z)Z

    move-result v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zax;->zaw(Lcom/google/android/gms/common/api/internal/zax;)Lcom/google/android/gms/common/api/internal/zabd;

    move-result-object v4

    move v5, v1

    .line 7
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/zabd;->onConnectionSuspended(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zax;->zao(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    .line 5
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 7
    :catchall_0
    move-exception v4

    move-object v1, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zax;->zao(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    .line 5
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v4, v1

    .line 8
    throw v4
.end method
