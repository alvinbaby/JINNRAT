.class public abstract Lcom/google/android/gms/common/api/internal/BasePendingResult;
.super Lcom/google/android/gms/common/api/PendingResult;
.source "com.google.android.gms:play-services-base@@17.6.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/PendingResult",
        "<TR;>;"
    }
.end annotation


# static fields
.field static final zaa:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic zad:I


# instance fields
.field private mResultGuardian:Lcom/google/android/gms/common/api/internal/zar;
    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zar;"
        }
    .end annotation
.end field

.field protected final zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler",
            "<TR;>;"
        }
    .end annotation
.end field

.field protected final zac:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ">;"
        }
    .end annotation
.end field

.field private final zae:Ljava/lang/Object;

.field private final zaf:Ljava/util/concurrent/CountDownLatch;

.field private final zag:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/PendingResult$StatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private zah:Lcom/google/android/gms/common/api/ResultCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private final zai:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/gms/common/api/internal/zacw;",
            ">;"
        }
    .end annotation
.end field

.field private zaj:Lcom/google/android/gms/common/api/Result;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private zak:Lcom/google/android/gms/common/api/Status;

.field private volatile zal:Z

.field private zam:Z

.field private zan:Z

.field private zao:Lcom/google/android/gms/common/internal/ICancelToken;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private volatile zap:Lcom/google/android/gms/common/api/internal/zacv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zacv",
            "<TR;>;"
        }
    .end annotation
.end field

.field private zaq:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v1, Lcom/google/android/gms/common/api/internal/zaq;

    move-object v0, v1

    move-object v1, v0

    .line 1
    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zaq;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    new-instance v2, Ljava/lang/Object;

    move-object v1, v2

    move-object v2, v1

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    move-object v1, v2

    move-object v2, v1

    const/4 v3, 0x1

    .line 1
    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaf:Ljava/util/concurrent/CountDownLatch;

    new-instance v2, Ljava/util/ArrayList;

    move-object v1, v2

    move-object v2, v1

    .line 2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zag:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    move-object v1, v2

    move-object v2, v1

    .line 3
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zai:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaq:Z

    new-instance v2, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    move-object v1, v2

    move-object v2, v1

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;-><init>(Landroid/os/Looper;)V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    new-instance v2, Ljava/lang/ref/WeakReference;

    move-object v1, v2

    move-object v2, v1

    const/4 v3, 0x0

    .line 5
    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zac:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 5
    .param p1    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    new-instance v3, Ljava/lang/Object;

    move-object v2, v3

    move-object v3, v2

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    move-object v2, v3

    move-object v3, v2

    const/4 v4, 0x1

    .line 6
    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaf:Ljava/util/concurrent/CountDownLatch;

    new-instance v3, Ljava/util/ArrayList;

    move-object v2, v3

    move-object v3, v2

    .line 7
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zag:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    move-object v2, v3

    move-object v3, v2

    .line 8
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zai:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaq:Z

    new-instance v3, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    .line 9
    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;-><init>(Landroid/os/Looper;)V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v1, v3

    move-object v3, v1

    const/4 v4, 0x0

    .line 10
    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zac:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 6
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-direct {v4}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    new-instance v4, Ljava/lang/Object;

    move-object v2, v4

    move-object v4, v2

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    move-object v2, v4

    move-object v4, v2

    const/4 v5, 0x1

    .line 11
    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaf:Ljava/util/concurrent/CountDownLatch;

    new-instance v4, Ljava/util/ArrayList;

    move-object v2, v4

    move-object v4, v2

    .line 12
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zag:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    move-object v2, v4

    move-object v4, v2

    .line 13
    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zai:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaq:Z

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    .line 14
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/GoogleApiClient;->getLooper()Landroid/os/Looper;

    move-result-object v4

    move-object v2, v4

    :goto_0
    new-instance v4, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v2

    .line 15
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;-><init>(Landroid/os/Looper;)V

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v2, v4

    move-object v4, v2

    move-object v5, v1

    .line 16
    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zac:Ljava/lang/ref/WeakReference;

    return-void

    .line 14
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    move-object v2, v4

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;)V
    .locals 6
    .param p1    # Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    new-instance v3, Ljava/lang/Object;

    move-object v2, v3

    move-object v3, v2

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    move-object v2, v3

    move-object v3, v2

    const/4 v4, 0x1

    .line 17
    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaf:Ljava/util/concurrent/CountDownLatch;

    new-instance v3, Ljava/util/ArrayList;

    move-object v2, v3

    move-object v3, v2

    .line 18
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zag:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    move-object v2, v3

    move-object v3, v2

    .line 19
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zai:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaq:Z

    move-object v3, v0

    move-object v4, v1

    const-string v5, "CallbackHandler must not be null"

    .line 20
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v1, v3

    move-object v3, v1

    const/4 v4, 0x0

    .line 21
    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zac:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final zaa()Lcom/google/android/gms/common/api/Result;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    move-object v1, v4

    move-object v4, v1

    monitor-enter v4

    move-object v4, v0

    :try_start_0
    iget-boolean v4, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal:Z

    move v2, v4

    move v4, v2

    const/4 v5, 0x1

    xor-int/lit8 v4, v4, 0x1

    move v2, v4

    const-string v4, "Result has already been consumed."

    move-object v3, v4

    move v4, v2

    move-object v5, v3

    .line 1
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    move-object v4, v0

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    move-result v4

    const-string v5, "Result is not ready."

    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaj:Lcom/google/android/gms/common/api/Result;

    move-object v2, v4

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaj:Lcom/google/android/gms/common/api/Result;

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zah:Lcom/google/android/gms/common/api/ResultCallback;

    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal:Z

    move-object v4, v1

    .line 3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zai:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v5, 0x0

    .line 4
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/internal/zacw;

    move-object v1, v4

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zacw;->zaa:Lcom/google/android/gms/common/api/internal/zacx;

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zacx;->zab:Ljava/util/Set;

    move-object v5, v0

    .line 5
    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    :cond_0
    move-object v4, v2

    .line 6
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/Result;

    move-object v0, v4

    return-object v0

    :catchall_0
    move-exception v4

    move-object v0, v4

    .line 3
    move-object v4, v1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    move-object v4, v0

    .line 3
    throw v4
.end method

.method private final zab(Lcom/google/android/gms/common/api/Result;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaj:Lcom/google/android/gms/common/api/Result;

    move-object v4, v0

    move-object v5, v1

    .line 1
    invoke-interface {v5}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zak:Lcom/google/android/gms/common/api/Status;

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zao:Lcom/google/android/gms/common/internal/ICancelToken;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaf:Ljava/util/concurrent/CountDownLatch;

    .line 2
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zam:Z

    if-eqz v4, :cond_2

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zah:Lcom/google/android/gms/common/api/ResultCallback;

    :cond_0
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zag:Ljava/util/ArrayList;

    move-object v2, v4

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v3, v4

    const/4 v4, 0x0

    move v1, v4

    :goto_1
    move v4, v1

    move v5, v3

    if-ge v4, v5, :cond_1

    move-object v4, v2

    move v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 7
    check-cast v4, Lcom/google/android/gms/common/api/PendingResult$StatusListener;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zak:Lcom/google/android/gms/common/api/Status;

    .line 8
    invoke-interface {v4, v5}, Lcom/google/android/gms/common/api/PendingResult$StatusListener;->onComplete(Lcom/google/android/gms/common/api/Status;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zag:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zah:Lcom/google/android/gms/common/api/ResultCallback;

    move-object v1, v4

    move-object v4, v1

    if-nez v4, :cond_3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaj:Lcom/google/android/gms/common/api/Result;

    .line 3
    instance-of v4, v4, Lcom/google/android/gms/common/api/Releasable;

    if-eqz v4, :cond_0

    new-instance v4, Lcom/google/android/gms/common/api/internal/zar;

    move-object v1, v4

    move-object v4, v1

    move-object v5, v0

    const/4 v6, 0x0

    .line 4
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/api/internal/zar;-><init>(Lcom/google/android/gms/common/api/internal/BasePendingResult;Lcom/google/android/gms/common/api/internal/zaq;)V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->mResultGuardian:Lcom/google/android/gms/common/api/internal/zar;

    goto :goto_0

    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    const/4 v5, 0x2

    .line 5
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;->removeMessages(I)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    move-object v5, v1

    move-object v6, v0

    .line 6
    invoke-direct {v6}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa()Lcom/google/android/gms/common/api/Result;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;->zaa(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0
.end method

.method public static zal(Lcom/google/android/gms/common/api/Result;)V
    .locals 7
    .param p0    # Lcom/google/android/gms/common/api/Result;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

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

    const-string v4, "BasePendingResult"

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-static {v4, v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    goto :goto_0
.end method

.method static synthetic zam(Lcom/google/android/gms/common/api/internal/BasePendingResult;)Lcom/google/android/gms/common/api/Result;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaj:Lcom/google/android/gms/common/api/Result;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public final addStatusListener(Lcom/google/android/gms/common/api/PendingResult$StatusListener;)V
    .locals 6
    .param p1    # Lcom/google/android/gms/common/api/PendingResult$StatusListener;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    move v2, v4

    :goto_0
    move v4, v2

    const-string v5, "Callback cannot be null."

    .line 1
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    move-object v2, v4

    move-object v4, v2

    monitor-enter v4

    move-object v4, v0

    .line 2
    :try_start_0
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    move-result v4

    move v3, v4

    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zak:Lcom/google/android/gms/common/api/Status;

    .line 4
    invoke-interface {v4, v5}, Lcom/google/android/gms/common/api/PendingResult$StatusListener;->onComplete(Lcom/google/android/gms/common/api/Status;)V

    :goto_1
    move-object v4, v2

    .line 5
    monitor-exit v4

    return-void

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zag:Ljava/util/ArrayList;

    move-object v5, v1

    .line 3
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    move v2, v4

    goto :goto_0

    :catchall_0
    move-exception v4

    move-object v0, v4

    .line 5
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    move-object v4, v0

    .line 5
    throw v4
.end method

.method public final await()Lcom/google/android/gms/common/api/Result;
    .locals 4
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    const-string v2, "await must not be called on the UI thread"

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotMainThread(Ljava/lang/String;)V

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal:Z

    const/4 v3, 0x1

    xor-int/lit8 v2, v2, 0x1

    const-string v3, "Result has already been consumed"

    .line 2
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zap:Lcom/google/android/gms/common/api/internal/zacv;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move v1, v2

    :goto_0
    move v2, v1

    const-string v3, "Cannot await if then() has been called."

    .line 3
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaf:Ljava/util/concurrent/CountDownLatch;

    .line 4
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v2, v0

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    move-result v2

    const-string v3, "Result is not ready."

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    move-object v2, v0

    .line 7
    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa()Lcom/google/android/gms/common/api/Result;

    move-result-object v2

    move-object v0, v2

    return-object v0

    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 5
    :catch_0
    move-exception v2

    move-object v2, v0

    sget-object v3, Lcom/google/android/gms/common/api/Status;->RESULT_INTERRUPTED:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->forceFailureUnlessReady(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1
.end method

.method public final await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;
    .locals 11
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    .prologue
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    const-string v6, "await must not be called on the UI thread when time is greater than zero."

    .line 8
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotMainThread(Ljava/lang/String;)V

    :cond_0
    move-object v6, v1

    iget-boolean v6, v6, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal:Z

    const/4 v7, 0x1

    xor-int/lit8 v6, v6, 0x1

    const-string v7, "Result has already been consumed."

    .line 9
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    move-object v6, v1

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zap:Lcom/google/android/gms/common/api/internal/zacv;

    if-nez v6, :cond_2

    const/4 v6, 0x1

    move v5, v6

    :goto_0
    move v6, v5

    const-string v7, "Cannot await if then() has been called."

    .line 10
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    move-object v6, v1

    :try_start_0
    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaf:Ljava/util/concurrent/CountDownLatch;

    move-wide v7, v2

    move-object v9, v4

    .line 11
    invoke-virtual {v6, v7, v8, v9}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v6

    move v4, v6

    move v6, v4

    if-nez v6, :cond_1

    move-object v6, v1

    .line 12
    sget-object v7, Lcom/google/android/gms/common/api/Status;->RESULT_TIMEOUT:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->forceFailureUnlessReady(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move-object v6, v1

    .line 14
    invoke-virtual {v6}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    move-result v6

    const-string v7, "Result is not ready."

    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    move-object v6, v1

    .line 15
    invoke-direct {v6}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa()Lcom/google/android/gms/common/api/Result;

    move-result-object v6

    move-object v1, v6

    return-object v1

    :cond_2
    const/4 v6, 0x0

    move v5, v6

    goto :goto_0

    .line 13
    :catch_0
    move-exception v6

    move-object v6, v1

    sget-object v7, Lcom/google/android/gms/common/api/Status;->RESULT_INTERRUPTED:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->forceFailureUnlessReady(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1
.end method

.method public cancel()V
    .locals 6
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    move-object v1, v3

    move-object v3, v1

    monitor-enter v3

    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zam:Z

    move v2, v3

    move v3, v2

    if-nez v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal:Z

    move v2, v3

    move v3, v2

    if-eqz v3, :cond_1

    :cond_0
    move-object v3, v1

    .line 1
    monitor-exit v3

    .line 5
    :goto_0
    return-void

    .line 1
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zao:Lcom/google/android/gms/common/internal/ICancelToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    .line 2
    :try_start_1
    invoke-interface {v3}, Lcom/google/android/gms/common/internal/ICancelToken;->cancel()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    move-object v3, v0

    :try_start_2
    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaj:Lcom/google/android/gms/common/api/Result;

    .line 3
    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal(Lcom/google/android/gms/common/api/Result;)V

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zam:Z

    move-object v3, v0

    move-object v4, v0

    .line 4
    sget-object v5, Lcom/google/android/gms/common/api/Status;->RESULT_CANCELED:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab(Lcom/google/android/gms/common/api/Result;)V

    move-object v3, v1

    .line 5
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v3

    move-object v0, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v0

    throw v3

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method protected abstract createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")TR;"
        }
    .end annotation
.end method

.method public final forceFailureUnlessReady(Lcom/google/android/gms/common/api/Status;)V
    .locals 7
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    move-object v2, v4

    move-object v4, v2

    monitor-enter v4

    move-object v4, v0

    .line 1
    :try_start_0
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    move-result v4

    move v3, v4

    move v4, v3

    if-nez v4, :cond_0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v1

    .line 2
    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zan:Z

    :cond_0
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

.method public final isCanceled()Z
    .locals 3

    .prologue
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    move-object v1, v2

    move-object v2, v1

    monitor-enter v2

    move-object v2, v0

    :try_start_0
    iget-boolean v2, v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zam:Z

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

.method public final isReady()Z
    .locals 6
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v1, p0

    move-object v2, v1

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaf:Ljava/util/concurrent/CountDownLatch;

    .line 1
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method protected final setCancelToken(Lcom/google/android/gms/common/internal/ICancelToken;)V
    .locals 5
    .param p1    # Lcom/google/android/gms/common/internal/ICancelToken;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    move-object v2, v3

    move-object v3, v2

    monitor-enter v3

    move-object v3, v0

    move-object v4, v1

    :try_start_0
    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zao:Lcom/google/android/gms/common/internal/ICancelToken;

    move-object v3, v2

    .line 1
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

.method public final setResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 7
    .param p1    # Lcom/google/android/gms/common/api/Result;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    move-object v2, v5

    move-object v5, v2

    monitor-enter v5

    move-object v5, v0

    :try_start_0
    iget-boolean v5, v5, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zan:Z

    move v3, v5

    move v5, v3

    if-nez v5, :cond_0

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zam:Z

    move v3, v5

    move v5, v3

    if-nez v5, :cond_0

    move-object v5, v0

    .line 3
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    move-result v5

    move-object v5, v0

    .line 4
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    move-result v5

    move v3, v5

    move v5, v3

    const/4 v6, 0x1

    xor-int/lit8 v5, v5, 0x1

    move v3, v5

    const-string v5, "Results have already been set"

    move-object v4, v5

    move v5, v3

    move-object v6, v4

    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal:Z

    move v3, v5

    move v5, v3

    const/4 v6, 0x1

    xor-int/lit8 v5, v5, 0x1

    move v3, v5

    move v5, v3

    const-string v6, "Result has already been consumed"

    .line 5
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    move-object v5, v0

    move-object v6, v1

    .line 6
    invoke-direct {v5, v6}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab(Lcom/google/android/gms/common/api/Result;)V

    move-object v5, v2

    .line 7
    monitor-exit v5

    :goto_0
    return-void

    :cond_0
    move-object v5, v1

    .line 1
    invoke-static {v5}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal(Lcom/google/android/gms/common/api/Result;)V

    move-object v5, v2

    .line 2
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v5

    move-object v0, v5

    .line 7
    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    move-object v5, v0

    .line 7
    throw v5
.end method

.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    .locals 8
    .param p1    # Lcom/google/android/gms/common/api/ResultCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    move-object v3, v5

    move-object v5, v3

    monitor-enter v5

    move-object v5, v1

    if-nez v5, :cond_0

    move-object v5, v0

    const/4 v6, 0x0

    :try_start_0
    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zah:Lcom/google/android/gms/common/api/ResultCallback;

    move-object v5, v3

    .line 1
    monitor-exit v5

    .line 8
    :goto_0
    return-void

    .line 1
    :cond_0
    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal:Z

    move v2, v5

    move v5, v2

    const/4 v6, 0x1

    xor-int/lit8 v5, v5, 0x1

    move v2, v5

    const-string v5, "Result has already been consumed."

    move-object v4, v5

    move v5, v2

    move-object v6, v4

    .line 2
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zap:Lcom/google/android/gms/common/api/internal/zacv;

    move-object v2, v5

    move-object v5, v2

    if-nez v5, :cond_3

    const/4 v5, 0x1

    move v2, v5

    :goto_1
    move v5, v2

    const-string v6, "Cannot set callbacks if then() has been called."

    .line 3
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    move-object v5, v0

    .line 4
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isCanceled()Z

    move-result v5

    move v2, v5

    move v5, v2

    if-eqz v5, :cond_1

    move-object v5, v3

    .line 5
    monitor-exit v5

    goto :goto_0

    :cond_1
    move-object v5, v0

    .line 6
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    move-result v5

    move v2, v5

    move v5, v2

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    move-object v6, v1

    move-object v7, v0

    .line 7
    invoke-direct {v7}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa()Lcom/google/android/gms/common/api/Result;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;->zaa(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    :goto_2
    move-object v5, v3

    .line 8
    monitor-exit v5

    goto :goto_0

    :cond_2
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zah:Lcom/google/android/gms/common/api/ResultCallback;

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    move v2, v5

    goto :goto_1

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

.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V
    .locals 14
    .param p1    # Lcom/google/android/gms/common/api/ResultCallback;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-TR;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    move-object v6, v10

    move-object v10, v6

    monitor-enter v10

    move-object v10, v1

    if-nez v10, :cond_0

    move-object v10, v0

    const/4 v11, 0x0

    :try_start_0
    iput-object v11, v10, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zah:Lcom/google/android/gms/common/api/ResultCallback;

    move-object v10, v6

    .line 9
    monitor-exit v10

    .line 17
    :goto_0
    return-void

    .line 9
    :cond_0
    move-object v10, v0

    iget-boolean v10, v10, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal:Z

    move v5, v10

    move v10, v5

    const/4 v11, 0x1

    xor-int/lit8 v10, v10, 0x1

    move v5, v10

    const-string v10, "Result has already been consumed."

    move-object v7, v10

    move v10, v5

    move-object v11, v7

    .line 10
    invoke-static {v10, v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zap:Lcom/google/android/gms/common/api/internal/zacv;

    move-object v5, v10

    move-object v10, v5

    if-nez v10, :cond_3

    const/4 v10, 0x1

    move v5, v10

    :goto_1
    move v10, v5

    const-string v11, "Cannot set callbacks if then() has been called."

    .line 11
    invoke-static {v10, v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    move-object v10, v0

    .line 12
    invoke-virtual {v10}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isCanceled()Z

    move-result v10

    move v5, v10

    move v10, v5

    if-eqz v10, :cond_1

    move-object v10, v6

    .line 13
    monitor-exit v10

    goto :goto_0

    :cond_1
    move-object v10, v0

    .line 14
    invoke-virtual {v10}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    move-result v10

    move v5, v10

    move v10, v5

    if-eqz v10, :cond_2

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    move-object v11, v1

    move-object v12, v0

    .line 16
    invoke-direct {v12}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa()Lcom/google/android/gms/common/api/Result;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;->zaa(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    :goto_2
    move-object v10, v6

    .line 17
    monitor-exit v10

    goto :goto_0

    :cond_2
    move-object v10, v0

    move-object v11, v1

    iput-object v11, v10, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zah:Lcom/google/android/gms/common/api/ResultCallback;

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    move-object v1, v10

    move-object v10, v4

    move-wide v11, v2

    .line 15
    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    move-wide v8, v10

    move-object v10, v1

    move-object v11, v1

    const/4 v12, 0x2

    move-object v13, v0

    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-wide v12, v8

    invoke-virtual {v10, v11, v12, v13}, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v10

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    move v5, v10

    goto :goto_1

    :catchall_0
    move-exception v10

    move-object v0, v10

    .line 17
    move-object v10, v6

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    move-object v10, v0

    .line 17
    throw v10
.end method

.method public final then(Lcom/google/android/gms/common/api/ResultTransform;)Lcom/google/android/gms/common/api/TransformedResult;
    .locals 7
    .param p1    # Lcom/google/android/gms/common/api/ResultTransform;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
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

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal:Z

    const/4 v5, 0x1

    xor-int/lit8 v4, v4, 0x1

    const-string v5, "Result has already been consumed."

    .line 1
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    move-object v3, v4

    move-object v4, v3

    monitor-enter v4

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zap:Lcom/google/android/gms/common/api/internal/zacv;

    move-object v2, v4

    move-object v4, v2

    if-nez v4, :cond_2

    const/4 v4, 0x1

    move v2, v4

    :goto_0
    move v4, v2

    const-string v5, "Cannot call then() twice."

    .line 2
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zah:Lcom/google/android/gms/common/api/ResultCallback;

    move-object v2, v4

    move-object v4, v2

    if-nez v4, :cond_1

    const/4 v4, 0x1

    move v2, v4

    :goto_1
    move v4, v2

    const-string v5, "Cannot call then() if callbacks are set."

    .line 3
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zam:Z

    move v2, v4

    move v4, v2

    const/4 v5, 0x1

    xor-int/lit8 v4, v4, 0x1

    move v2, v4

    move v4, v2

    const-string v5, "Cannot call then() if result was canceled."

    .line 4
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaq:Z

    .line 5
    new-instance v4, Lcom/google/android/gms/common/api/internal/zacv;

    move-object v2, v4

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zac:Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/internal/zacv;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zap:Lcom/google/android/gms/common/api/internal/zacv;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zap:Lcom/google/android/gms/common/api/internal/zacv;

    move-object v5, v1

    .line 6
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/zacv;->then(Lcom/google/android/gms/common/api/ResultTransform;)Lcom/google/android/gms/common/api/TransformedResult;

    move-result-object v4

    move-object v1, v4

    move-object v4, v0

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    move-result v4

    move v2, v4

    move v4, v2

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zap:Lcom/google/android/gms/common/api/internal/zacv;

    move-object v6, v0

    .line 8
    invoke-direct {v6}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa()Lcom/google/android/gms/common/api/Result;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;->zaa(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    :goto_2
    move-object v4, v3

    .line 9
    monitor-exit v4

    move-object v4, v1

    move-object v0, v4

    return-object v0

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zap:Lcom/google/android/gms/common/api/internal/zacv;

    move-object v2, v4

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zah:Lcom/google/android/gms/common/api/ResultCallback;

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    move v2, v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    move v2, v4

    goto :goto_0

    :catchall_0
    move-exception v4

    move-object v0, v4

    .line 10
    move-object v4, v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    move-object v4, v0

    .line 10
    throw v4
.end method

.method public final zaj()Z
    .locals 4

    .prologue
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    move-object v1, v3

    move-object v3, v1

    monitor-enter v3

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zac:Ljava/lang/ref/WeakReference;

    .line 1
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/GoogleApiClient;

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaq:Z

    move v2, v3

    move v3, v2

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v0

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->cancel()V

    :cond_1
    move-object v3, v0

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isCanceled()Z

    move-result v3

    move v0, v3

    move-object v3, v1

    monitor-exit v3

    move v3, v0

    move v0, v3

    return v0

    :catchall_0
    move-exception v3

    move-object v0, v3

    .line 4
    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    move-object v3, v0

    .line 4
    throw v3
.end method

.method public final zak()V
    .locals 4

    .prologue
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaq:Z

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa:Ljava/lang/ThreadLocal;

    .line 1
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v1, v2

    :goto_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaq:Z

    return-void

    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    move v1, v2

    goto :goto_0
.end method

.method public final zan(Lcom/google/android/gms/common/api/internal/zacw;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/common/api/internal/zacw;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zai:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v3, v1

    .line 1
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
