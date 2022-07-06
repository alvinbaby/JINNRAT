.class abstract Lcom/google/android/gms/common/api/internal/zabb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"


# instance fields
.field private final zaa:Lcom/google/android/gms/common/api/internal/zaba;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/internal/zaba;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabb;->zaa:Lcom/google/android/gms/common/api/internal/zaba;

    return-void
.end method


# virtual methods
.method protected abstract zaa()V
.end method

.method public final zab(Lcom/google/android/gms/common/api/internal/zabd;)V
    .locals 6

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zabd;->zat(Lcom/google/android/gms/common/api/internal/zabd;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    .line 1
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object v4, v1

    .line 2
    :try_start_0
    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zabd;->zau(Lcom/google/android/gms/common/api/internal/zabd;)Lcom/google/android/gms/common/api/internal/zaba;

    move-result-object v4

    move-object v2, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabb;->zaa:Lcom/google/android/gms/common/api/internal/zaba;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    move-object v4, v2

    move-object v5, v3

    if-eq v4, v5, :cond_0

    move-object v4, v1

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zabd;->zat(Lcom/google/android/gms/common/api/internal/zabd;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    .line 3
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    .line 4
    :try_start_1
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabb;->zaa()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    move-object v4, v1

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zabd;->zat(Lcom/google/android/gms/common/api/internal/zabd;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    .line 3
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 4
    :catchall_0
    move-exception v4

    move-object v0, v4

    move-object v4, v1

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zabd;->zat(Lcom/google/android/gms/common/api/internal/zabd;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    .line 3
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v4, v0

    .line 5
    throw v4
.end method
