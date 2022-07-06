.class public final Lcom/google/android/gms/common/api/internal/zacv;
.super Lcom/google/android/gms/common/api/TransformedResult;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/TransformedResult",
        "<TR;>;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private zaa:Lcom/google/android/gms/common/api/ResultTransform;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultTransform",
            "<-TR;+",
            "Lcom/google/android/gms/common/api/Result;",
            ">;"
        }
    .end annotation
.end field

.field private zab:Lcom/google/android/gms/common/api/internal/zacv;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zacv",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zac:Lcom/google/android/gms/common/api/ResultCallbacks;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultCallbacks",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private zad:Lcom/google/android/gms/common/api/PendingResult;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/PendingResult",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final zae:Ljava/lang/Object;

.field private zaf:Lcom/google/android/gms/common/api/Status;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zag:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ">;"
        }
    .end annotation
.end field

.field private final zah:Lcom/google/android/gms/common/api/internal/zacu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zacu;"
        }
    .end annotation
.end field

.field private zai:Z


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ">;)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/gms/common/api/TransformedResult;-><init>()V

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zacv;->zaa:Lcom/google/android/gms/common/api/ResultTransform;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zacv;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zacv;->zac:Lcom/google/android/gms/common/api/ResultCallbacks;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zacv;->zad:Lcom/google/android/gms/common/api/PendingResult;

    new-instance v3, Ljava/lang/Object;

    move-object v2, v3

    move-object v3, v2

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zacv;->zae:Ljava/lang/Object;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zacv;->zaf:Lcom/google/android/gms/common/api/Status;

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/android/gms/common/api/internal/zacv;->zai:Z

    move-object v3, v1

    const-string v4, "GoogleApiClient reference must not be null"

    .line 1
    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zacv;->zag:Ljava/lang/ref/WeakReference;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zacv;->zag:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/GoogleApiClient;

    move-object v1, v3

    new-instance v3, Lcom/google/android/gms/common/api/internal/zacu;

    move-object v2, v3

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/GoogleApiClient;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v2

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/api/internal/zacu;-><init>(Lcom/google/android/gms/common/api/internal/zacv;Landroid/os/Looper;)V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zacv;->zah:Lcom/google/android/gms/common/api/internal/zacu;

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v1, v3

    goto :goto_0
.end method

.method static synthetic zac(Lcom/google/android/gms/common/api/internal/zacv;)Lcom/google/android/gms/common/api/ResultTransform;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zacv;->zaa:Lcom/google/android/gms/common/api/ResultTransform;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zad(Lcom/google/android/gms/common/api/internal/zacv;)Lcom/google/android/gms/common/api/internal/zacu;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zacv;->zah:Lcom/google/android/gms/common/api/internal/zacu;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zae(Lcom/google/android/gms/common/api/internal/zacv;Lcom/google/android/gms/common/api/Result;)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zacv;->zan(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method static synthetic zaf(Lcom/google/android/gms/common/api/internal/zacv;)Ljava/lang/ref/WeakReference;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zacv;->zag:Ljava/lang/ref/WeakReference;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zag(Lcom/google/android/gms/common/api/internal/zacv;)Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zacv;->zae:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zah(Lcom/google/android/gms/common/api/internal/zacv;)Lcom/google/android/gms/common/api/internal/zacv;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zacv;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zai(Lcom/google/android/gms/common/api/internal/zacv;Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/internal/zacv;->zak(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method private final zaj()V
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mSyncToken"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zacv;->zaa:Lcom/google/android/gms/common/api/ResultTransform;

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zacv;->zac:Lcom/google/android/gms/common/api/ResultCallbacks;

    if-eqz v2, :cond_4

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zacv;->zag:Ljava/lang/ref/WeakReference;

    .line 1
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient;

    move-object v1, v2

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/gms/common/api/internal/zacv;->zai:Z

    if-nez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zacv;->zaa:Lcom/google/android/gms/common/api/ResultTransform;

    if-eqz v2, :cond_1

    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    move-object v3, v0

    .line 2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient;->zao(Lcom/google/android/gms/common/api/internal/zacv;)V

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/gms/common/api/internal/zacv;->zai:Z

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zacv;->zaf:Lcom/google/android/gms/common/api/Status;

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_2

    move-object v2, v0

    move-object v3, v1

    .line 3
    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/internal/zacv;->zal(Lcom/google/android/gms/common/api/Status;)V

    .line 4
    :goto_0
    return-void

    .line 3
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zacv;->zad:Lcom/google/android/gms/common/api/PendingResult;

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_3

    move-object v2, v1

    move-object v3, v0

    .line 4
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0

    :cond_3
    goto :goto_0

    :cond_4
    goto :goto_0
.end method

.method private final zak(Lcom/google/android/gms/common/api/Status;)V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zacv;->zae:Ljava/lang/Object;

    move-object v2, v3

    move-object v3, v2

    monitor-enter v3

    move-object v3, v0

    move-object v4, v1

    :try_start_0
    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zacv;->zaf:Lcom/google/android/gms/common/api/Status;

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zacv;->zaf:Lcom/google/android/gms/common/api/Status;

    .line 1
    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/internal/zacv;->zal(Lcom/google/android/gms/common/api/Status;)V

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

.method private final zal(Lcom/google/android/gms/common/api/Status;)V
    .locals 6

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zacv;->zae:Ljava/lang/Object;

    move-object v2, v4

    move-object v4, v2

    monitor-enter v4

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zacv;->zaa:Lcom/google/android/gms/common/api/ResultTransform;

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    move-object v5, v1

    .line 1
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/ResultTransform;->onFailure(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v4

    move-object v1, v4

    const-string v4, "onFailure must not return null"

    move-object v3, v4

    move-object v4, v1

    move-object v5, v3

    .line 2
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/common/api/Status;

    move-object v1, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zacv;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    .line 3
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/internal/zacv;

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/internal/zacv;->zak(Lcom/google/android/gms/common/api/Status;)V

    :cond_0
    :goto_0
    move-object v4, v2

    .line 6
    monitor-exit v4

    return-void

    :cond_1
    move-object v4, v0

    .line 4
    invoke-direct {v4}, Lcom/google/android/gms/common/api/internal/zacv;->zam()Z

    move-result v4

    move v3, v4

    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zacv;->zac:Lcom/google/android/gms/common/api/ResultCallbacks;

    move-object v0, v4

    move-object v4, v0

    .line 5
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/ResultCallbacks;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/ResultCallbacks;->onFailure(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    move-object v0, v4

    .line 6
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    move-object v4, v0

    .line 6
    throw v4
.end method

.method private final zam()Z
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mSyncToken"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zacv;->zag:Ljava/lang/ref/WeakReference;

    .line 1
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient;

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zacv;->zac:Lcom/google/android/gms/common/api/ResultCallbacks;

    if-eqz v2, :cond_0

    move-object v2, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private static final zan(Lcom/google/android/gms/common/api/Result;)V
    .locals 7

    .prologue
    move-object v0, p0

    move-object v4, v0

    .line 1
    instance-of v4, v4, Lcom/google/android/gms/common/api/Releasable;

    if-eqz v4, :cond_0

    move-object v4, v0

    .line 2
    :try_start_0
    check-cast v4, Lcom/google/android/gms/common/api/Releasable;

    invoke-interface {v4}, Lcom/google/android/gms/common/api/Releasable;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :goto_0
    return-void

    .line 2
    :cond_0
    goto :goto_0

    :catch_0
    move-exception v4

    move-object v1, v4

    move-object v4, v0

    .line 3
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v3, v4

    move-object v4, v3

    move v5, v2

    const/16 v6, 0x12

    add-int/lit8 v5, v5, 0x12

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v3

    const-string v5, "Unable to release "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v4, "TransformedResultImpl"

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-static {v4, v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    goto :goto_0
.end method


# virtual methods
.method public final andFinally(Lcom/google/android/gms/common/api/ResultCallbacks;)V
    .locals 7
    .param p1    # Lcom/google/android/gms/common/api/ResultCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallbacks",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zacv;->zae:Ljava/lang/Object;

    move-object v3, v5

    move-object v5, v3

    monitor-enter v5

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zacv;->zac:Lcom/google/android/gms/common/api/ResultCallbacks;

    move-object v2, v5

    move-object v5, v2

    if-nez v5, :cond_1

    const/4 v5, 0x1

    move v2, v5

    :goto_0
    const-string v5, "Cannot call andFinally() twice."

    move-object v4, v5

    move v5, v2

    move-object v6, v4

    .line 1
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zacv;->zaa:Lcom/google/android/gms/common/api/ResultTransform;

    move-object v2, v5

    move-object v5, v2

    if-nez v5, :cond_0

    const/4 v5, 0x1

    move v2, v5

    :goto_1
    move v5, v2

    const-string v6, "Cannot call then() and andFinally() on the same TransformedResult."

    .line 2
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/zacv;->zac:Lcom/google/android/gms/common/api/ResultCallbacks;

    move-object v5, v0

    .line 3
    invoke-direct {v5}, Lcom/google/android/gms/common/api/internal/zacv;->zaj()V

    move-object v5, v3

    .line 4
    monitor-exit v5

    return-void

    :cond_0
    const/4 v5, 0x0

    move v2, v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    move v2, v5

    goto :goto_0

    :catchall_0
    move-exception v5

    move-object v0, v5

    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v0

    throw v5
.end method

.method public final onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zacv;->zae:Ljava/lang/Object;

    move-object v2, v5

    move-object v5, v2

    monitor-enter v5

    move-object v5, v1

    .line 1
    :try_start_0
    invoke-interface {v5}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v5

    move v3, v5

    move v5, v3

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zacv;->zaa:Lcom/google/android/gms/common/api/ResultTransform;

    move-object v3, v5

    move-object v5, v3

    if-eqz v5, :cond_1

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/api/internal/zacj;->zaa()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    move-object v3, v5

    new-instance v5, Lcom/google/android/gms/common/api/internal/zact;

    move-object v4, v5

    move-object v5, v4

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/common/api/internal/zact;-><init>(Lcom/google/android/gms/common/api/internal/zacv;Lcom/google/android/gms/common/api/Result;)V

    move-object v5, v3

    move-object v6, v4

    .line 3
    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v5

    :cond_0
    :goto_0
    move-object v5, v2

    .line 8
    monitor-exit v5

    return-void

    :cond_1
    move-object v5, v0

    .line 4
    invoke-direct {v5}, Lcom/google/android/gms/common/api/internal/zacv;->zam()Z

    move-result v5

    move v3, v5

    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zacv;->zac:Lcom/google/android/gms/common/api/ResultCallbacks;

    move-object v0, v5

    move-object v5, v0

    .line 5
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/api/ResultCallbacks;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/api/ResultCallbacks;->onSuccess(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0

    :cond_2
    move-object v5, v0

    move-object v6, v1

    .line 6
    invoke-interface {v6}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/gms/common/api/internal/zacv;->zak(Lcom/google/android/gms/common/api/Status;)V

    move-object v5, v1

    .line 7
    invoke-static {v5}, Lcom/google/android/gms/common/api/internal/zacv;->zan(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    move-object v0, v5

    .line 8
    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    move-object v5, v0

    .line 8
    throw v5
.end method

.method public final then(Lcom/google/android/gms/common/api/ResultTransform;)Lcom/google/android/gms/common/api/TransformedResult;
    .locals 7
    .param p1    # Lcom/google/android/gms/common/api/ResultTransform;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lcom/google/android/gms/common/api/Result;",
            ">(",
            "Lcom/google/android/gms/common/api/ResultTransform",
            "<-TR;+TS;>;)",
            "Lcom/google/android/gms/common/api/TransformedResult",
            "<TS;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zacv;->zae:Ljava/lang/Object;

    move-object v3, v5

    move-object v5, v3

    monitor-enter v5

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zacv;->zaa:Lcom/google/android/gms/common/api/ResultTransform;

    move-object v2, v5

    move-object v5, v2

    if-nez v5, :cond_1

    const/4 v5, 0x1

    move v2, v5

    :goto_0
    const-string v5, "Cannot call then() twice."

    move-object v4, v5

    move v5, v2

    move-object v6, v4

    .line 1
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zacv;->zac:Lcom/google/android/gms/common/api/ResultCallbacks;

    move-object v2, v5

    move-object v5, v2

    if-nez v5, :cond_0

    const/4 v5, 0x1

    move v2, v5

    :goto_1
    move v5, v2

    const-string v6, "Cannot call then() and andFinally() on the same TransformedResult."

    .line 2
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/zacv;->zaa:Lcom/google/android/gms/common/api/ResultTransform;

    new-instance v5, Lcom/google/android/gms/common/api/internal/zacv;

    move-object v1, v5

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zacv;->zag:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {v5, v6}, Lcom/google/android/gms/common/api/internal/zacv;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/zacv;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    move-object v5, v0

    .line 4
    invoke-direct {v5}, Lcom/google/android/gms/common/api/internal/zacv;->zaj()V

    move-object v5, v3

    .line 5
    monitor-exit v5

    move-object v5, v1

    move-object v0, v5

    return-object v0

    :cond_0
    const/4 v5, 0x0

    move v2, v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    move v2, v5

    goto :goto_0

    :catchall_0
    move-exception v5

    move-object v0, v5

    .line 6
    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    move-object v5, v0

    .line 6
    throw v5
.end method

.method public final zaa(Lcom/google/android/gms/common/api/PendingResult;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<*>;)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zacv;->zae:Ljava/lang/Object;

    move-object v2, v3

    move-object v3, v2

    monitor-enter v3

    move-object v3, v0

    move-object v4, v1

    :try_start_0
    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zacv;->zad:Lcom/google/android/gms/common/api/PendingResult;

    move-object v3, v0

    .line 1
    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zacv;->zaj()V

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

.method final zab()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zacv;->zac:Lcom/google/android/gms/common/api/ResultCallbacks;

    return-void
.end method
