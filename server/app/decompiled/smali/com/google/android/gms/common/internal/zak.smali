.class public final Lcom/google/android/gms/common/internal/zak;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final zaa:Ljava/util/ArrayList;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final zab:Lcom/google/android/gms/common/internal/zaj;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field private final zac:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final zad:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zae:Z

.field private final zaf:Ljava/util/concurrent/atomic/AtomicInteger;

.field private zag:Z

.field private final zah:Landroid/os/Handler;

.field private final zai:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/zaj;)V
    .locals 7

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    move-object v3, v4

    move-object v4, v3

    .line 1
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/android/gms/common/internal/zak;->zac:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    move-object v3, v4

    move-object v4, v3

    .line 2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/android/gms/common/internal/zak;->zaa:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    move-object v3, v4

    move-object v4, v3

    .line 3
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/android/gms/common/internal/zak;->zad:Ljava/util/ArrayList;

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/android/gms/common/internal/zak;->zae:Z

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v3, v4

    move-object v4, v3

    const/4 v5, 0x0

    .line 4
    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/android/gms/common/internal/zak;->zaf:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/android/gms/common/internal/zak;->zag:Z

    new-instance v4, Ljava/lang/Object;

    move-object v3, v4

    move-object v4, v3

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/android/gms/common/internal/zak;->zai:Ljava/lang/Object;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/android/gms/common/internal/zak;->zab:Lcom/google/android/gms/common/internal/zaj;

    new-instance v4, Lcom/google/android/gms/internal/base/zap;

    move-object v2, v4

    move-object v4, v2

    move-object v5, v1

    move-object v6, v0

    .line 5
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/internal/base/zap;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/android/gms/common/internal/zak;->zah:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    .line 1
    iget v4, v4, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    move-object v4, v1

    .line 2
    iget-object v4, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    move-object v1, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zak;->zai:Ljava/lang/Object;

    move-object v2, v4

    move-object v4, v2

    monitor-enter v4

    move-object v4, v0

    :try_start_0
    iget-boolean v4, v4, Lcom/google/android/gms/common/internal/zak;->zae:Z

    move v3, v4

    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zak;->zab:Lcom/google/android/gms/common/internal/zaj;

    .line 3
    invoke-interface {v4}, Lcom/google/android/gms/common/internal/zaj;->isConnected()Z

    move-result v4

    move v3, v4

    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zak;->zac:Ljava/util/ArrayList;

    move-object v5, v1

    .line 4
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    move v0, v4

    move v4, v0

    if-eqz v4, :cond_0

    move-object v4, v1

    const/4 v5, 0x0

    .line 5
    invoke-interface {v4, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;->onConnected(Landroid/os/Bundle;)V

    :cond_0
    move-object v4, v2

    .line 6
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    move v0, v4

    .line 7
    :goto_0
    return v0

    .line 6
    :cond_1
    move-object v4, v1

    .line 7
    iget v4, v4, Landroid/os/Message;->what:I

    move v0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v1, v4

    move-object v4, v1

    const/16 v5, 0x2d

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v1

    const-string v5, "Don\'t know how to handle message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v1

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    new-instance v4, Ljava/lang/Exception;

    move-object v1, v4

    move-object v4, v1

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    const-string v4, "GmsClientEvents"

    move-object v5, v0

    move-object v6, v1

    invoke-static {v4, v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :catchall_0
    move-exception v4

    move-object v0, v4

    .line 6
    move-object v4, v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    move-object v4, v0

    .line 6
    throw v4
.end method

.method public final zaa()V
    .locals 3

    .prologue
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/gms/common/internal/zak;->zae:Z

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/internal/zak;->zaf:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    return-void
.end method

.method public final zab()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/common/internal/zak;->zae:Z

    return-void
.end method

.method public final zac(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/zak;->zah:Landroid/os/Handler;

    const-string v8, "onConnectionSuccess must only be called on the Handler thread"

    .line 1
    invoke-static {v7, v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/zak;->zai:Ljava/lang/Object;

    move-object v3, v7

    move-object v7, v3

    monitor-enter v7

    move-object v7, v0

    :try_start_0
    iget-boolean v7, v7, Lcom/google/android/gms/common/internal/zak;->zag:Z

    move v2, v7

    move v7, v2

    const/4 v8, 0x1

    xor-int/lit8 v7, v7, 0x1

    move v2, v7

    move v7, v2

    .line 2
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/zak;->zah:Landroid/os/Handler;

    const/4 v8, 0x1

    .line 3
    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/google/android/gms/common/internal/zak;->zag:Z

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/zak;->zaa:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v2, v7

    move v7, v2

    if-nez v7, :cond_3

    const/4 v7, 0x1

    move v2, v7

    :goto_0
    move v7, v2

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    new-instance v7, Ljava/util/ArrayList;

    move-object v2, v7

    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/internal/zak;->zac:Ljava/util/ArrayList;

    .line 5
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/zak;->zaf:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    move v4, v7

    move-object v7, v2

    .line 7
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v7

    :cond_0
    :goto_1
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    move v5, v7

    move v7, v5

    if-eqz v7, :cond_1

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    move-object v5, v7

    move-object v7, v0

    iget-boolean v7, v7, Lcom/google/android/gms/common/internal/zak;->zae:Z

    move v6, v7

    move v7, v6

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/zak;->zab:Lcom/google/android/gms/common/internal/zaj;

    .line 8
    invoke-interface {v7}, Lcom/google/android/gms/common/internal/zaj;->isConnected()Z

    move-result v7

    move v6, v7

    move v7, v6

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/zak;->zaf:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    move v6, v7

    move v7, v6

    move v8, v4

    if-eq v7, v8, :cond_2

    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/zak;->zaa:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/google/android/gms/common/internal/zak;->zag:Z

    move-object v7, v3

    .line 13
    monitor-exit v7

    return-void

    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/zak;->zaa:Ljava/util/ArrayList;

    move-object v8, v5

    .line 10
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    move v6, v7

    move v7, v6

    if-nez v7, :cond_0

    move-object v7, v5

    move-object v8, v1

    .line 11
    invoke-interface {v7, v8}, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;->onConnected(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    move v2, v7

    goto :goto_0

    :catchall_0
    move-exception v7

    move-object v0, v7

    .line 13
    move-object v7, v3

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    move-object v7, v0

    .line 13
    throw v7
.end method

.method public final zad(I)V
    .locals 9
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/zak;->zah:Landroid/os/Handler;

    const-string v8, "onUnintentionalDisconnection must only be called on the Handler thread"

    .line 1
    invoke-static {v7, v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/zak;->zah:Landroid/os/Handler;

    const/4 v8, 0x1

    .line 2
    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/zak;->zai:Ljava/lang/Object;

    move-object v2, v7

    move-object v7, v2

    monitor-enter v7

    move-object v7, v0

    const/4 v8, 0x1

    :try_start_0
    iput-boolean v8, v7, Lcom/google/android/gms/common/internal/zak;->zag:Z

    new-instance v7, Ljava/util/ArrayList;

    move-object v3, v7

    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/internal/zak;->zac:Ljava/util/ArrayList;

    .line 3
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/zak;->zaf:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    move v4, v7

    move-object v7, v3

    .line 5
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v3, v7

    :cond_0
    :goto_0
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    move v5, v7

    move v7, v5

    if-eqz v7, :cond_1

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    move-object v5, v7

    move-object v7, v0

    iget-boolean v7, v7, Lcom/google/android/gms/common/internal/zak;->zae:Z

    move v6, v7

    move v7, v6

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/zak;->zaf:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    move v6, v7

    move v7, v6

    move v8, v4

    if-eq v7, v8, :cond_2

    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/zak;->zaa:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/google/android/gms/common/internal/zak;->zag:Z

    move-object v7, v2

    .line 10
    monitor-exit v7

    return-void

    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/zak;->zac:Ljava/util/ArrayList;

    move-object v8, v5

    .line 7
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    move v6, v7

    move v7, v6

    if-eqz v7, :cond_0

    move-object v7, v5

    move v8, v1

    .line 8
    invoke-interface {v7, v8}, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;->onConnectionSuspended(I)V

    goto :goto_0

    :catchall_0
    move-exception v7

    move-object v0, v7

    .line 10
    move-object v7, v2

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    move-object v7, v0

    .line 10
    throw v7
.end method

.method public final zae(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 9
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/zak;->zah:Landroid/os/Handler;

    const-string v8, "onConnectionFailure must only be called on the Handler thread"

    .line 1
    invoke-static {v7, v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/zak;->zah:Landroid/os/Handler;

    const/4 v8, 0x1

    .line 2
    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/zak;->zai:Ljava/lang/Object;

    move-object v2, v7

    move-object v7, v2

    monitor-enter v7

    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    move-object v3, v7

    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/internal/zak;->zad:Ljava/util/ArrayList;

    .line 3
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/zak;->zaf:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    move v4, v7

    move-object v7, v3

    .line 5
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v3, v7

    :cond_0
    :goto_0
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    move v5, v7

    move v7, v5

    if-eqz v7, :cond_3

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    move-object v5, v7

    move-object v7, v0

    iget-boolean v7, v7, Lcom/google/android/gms/common/internal/zak;->zae:Z

    move v6, v7

    move v7, v6

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/zak;->zaf:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    move v6, v7

    move v7, v6

    move v8, v4

    if-eq v7, v8, :cond_2

    :cond_1
    move-object v7, v2

    .line 9
    monitor-exit v7

    .line 10
    :goto_1
    return-void

    .line 9
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/zak;->zad:Ljava/util/ArrayList;

    move-object v8, v5

    .line 7
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    move v6, v7

    move v7, v6

    if-eqz v7, :cond_0

    move-object v7, v5

    move-object v8, v1

    .line 8
    invoke-interface {v7, v8}, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_3
    move-object v7, v2

    .line 10
    monitor-exit v7

    goto :goto_1

    :catchall_0
    move-exception v7

    move-object v0, v7

    move-object v7, v2

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v0

    throw v7
.end method

.method public final zaf(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .locals 11

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    .line 1
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/zak;->zai:Ljava/lang/Object;

    move-object v2, v7

    move-object v7, v2

    monitor-enter v7

    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/google/android/gms/common/internal/zak;->zac:Ljava/util/ArrayList;

    move-object v8, v1

    .line 2
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    move v3, v7

    move v7, v3

    if-eqz v7, :cond_1

    const-string v7, "GmsClientEvents"

    move-object v3, v7

    move-object v7, v1

    .line 3
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    move-object v7, v4

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v5, v7

    add-int/lit8 v5, v5, 0x3e

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v6, v7

    move-object v7, v6

    move v8, v5

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v7, v6

    const-string v8, "registerConnectionCallbacks(): listener "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v6

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v6

    const-string v8, " is already registered"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v3

    move-object v8, v6

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    :goto_0
    move-object v7, v2

    .line 5
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/zak;->zab:Lcom/google/android/gms/common/internal/zaj;

    .line 6
    invoke-interface {v7}, Lcom/google/android/gms/common/internal/zaj;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/zak;->zah:Landroid/os/Handler;

    move-object v0, v7

    move-object v7, v0

    move-object v8, v0

    const/4 v9, 0x1

    move-object v10, v1

    .line 7
    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v7

    :goto_1
    return-void

    :cond_0
    goto :goto_1

    :cond_1
    move-object v7, v0

    :try_start_1
    iget-object v7, v7, Lcom/google/android/gms/common/internal/zak;->zac:Ljava/util/ArrayList;

    move-object v8, v1

    .line 4
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_0

    :catchall_0
    move-exception v7

    move-object v0, v7

    .line 5
    move-object v7, v2

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    move-object v7, v0

    .line 5
    throw v7
.end method

.method public final zag(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z
    .locals 5

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    .line 1
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/internal/zak;->zai:Ljava/lang/Object;

    move-object v2, v3

    move-object v3, v2

    monitor-enter v3

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/android/gms/common/internal/zak;->zac:Ljava/util/ArrayList;

    move-object v4, v1

    .line 2
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    move-object v3, v2

    monitor-exit v3

    move v3, v0

    move v0, v3

    return v0

    :catchall_0
    move-exception v3

    move-object v0, v3

    .line 3
    move-object v3, v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    move-object v3, v0

    .line 3
    throw v3
.end method

.method public final zah(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .locals 7

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    .line 1
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/internal/zak;->zai:Ljava/lang/Object;

    move-object v2, v5

    move-object v5, v2

    monitor-enter v5

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/google/android/gms/common/internal/zak;->zac:Ljava/util/ArrayList;

    move-object v6, v1

    .line 2
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    move v3, v5

    move v5, v3

    if-nez v5, :cond_1

    const-string v5, "GmsClientEvents"

    move-object v0, v5

    move-object v5, v1

    .line 3
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    move-object v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v5

    add-int/lit8 v3, v3, 0x34

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v4, v5

    move-object v5, v4

    move v6, v3

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v5, v4

    const-string v6, "unregisterConnectionCallbacks(): listener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v4

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    :cond_0
    :goto_0
    move-object v5, v2

    .line 5
    monitor-exit v5

    return-void

    :cond_1
    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/android/gms/common/internal/zak;->zag:Z

    move v3, v5

    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/internal/zak;->zaa:Ljava/util/ArrayList;

    move-object v6, v1

    .line 4
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0

    :catchall_0
    move-exception v5

    move-object v0, v5

    .line 5
    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    move-object v5, v0

    .line 5
    throw v5
.end method

.method public final zai(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    .line 1
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/internal/zak;->zai:Ljava/lang/Object;

    move-object v2, v5

    move-object v5, v2

    monitor-enter v5

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/google/android/gms/common/internal/zak;->zad:Ljava/util/ArrayList;

    move-object v6, v1

    .line 2
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    move v3, v5

    move v5, v3

    if-eqz v5, :cond_0

    const-string v5, "GmsClientEvents"

    move-object v0, v5

    move-object v5, v1

    .line 3
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    move-object v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v5

    add-int/lit8 v3, v3, 0x43

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v4, v5

    move-object v5, v4

    move v6, v3

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v5, v4

    const-string v6, "registerConnectionFailedListener(): listener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v4

    const-string v6, " is already registered"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    :goto_0
    move-object v5, v2

    .line 5
    monitor-exit v5

    return-void

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/internal/zak;->zad:Ljava/util/ArrayList;

    move-object v6, v1

    .line 4
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0

    :catchall_0
    move-exception v5

    move-object v0, v5

    .line 5
    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    move-object v5, v0

    .line 5
    throw v5
.end method

.method public final zaj(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z
    .locals 5

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    .line 1
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/internal/zak;->zai:Ljava/lang/Object;

    move-object v2, v3

    move-object v3, v2

    monitor-enter v3

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/android/gms/common/internal/zak;->zad:Ljava/util/ArrayList;

    move-object v4, v1

    .line 2
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    move-object v3, v2

    monitor-exit v3

    move v3, v0

    move v0, v3

    return v0

    :catchall_0
    move-exception v3

    move-object v0, v3

    .line 3
    move-object v3, v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    move-object v3, v0

    .line 3
    throw v3
.end method

.method public final zak(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    .line 1
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/internal/zak;->zai:Ljava/lang/Object;

    move-object v2, v5

    move-object v5, v2

    monitor-enter v5

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/google/android/gms/common/internal/zak;->zad:Ljava/util/ArrayList;

    move-object v6, v1

    .line 2
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    move v0, v5

    move v5, v0

    if-nez v5, :cond_0

    const-string v5, "GmsClientEvents"

    move-object v0, v5

    move-object v5, v1

    .line 3
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    move-object v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v5

    add-int/lit8 v3, v3, 0x39

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v4, v5

    move-object v5, v4

    move v6, v3

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v5, v4

    const-string v6, "unregisterConnectionFailedListener(): listener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v4

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    :cond_0
    move-object v5, v2

    .line 4
    monitor-exit v5

    return-void

    :catchall_0
    move-exception v5

    move-object v0, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v0

    throw v5
.end method
