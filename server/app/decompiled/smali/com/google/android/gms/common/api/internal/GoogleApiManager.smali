.class public Lcom/google/android/gms/common/api/internal/GoogleApiManager;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation


# static fields
.field public static final zaa:Lcom/google/android/gms/common/api/Status;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field private static final zab:Lcom/google/android/gms/common/api/Status;

.field private static final zag:Ljava/lang/Object;

.field private static zaj:Lcom/google/android/gms/common/api/internal/GoogleApiManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# instance fields
.field private zac:J

.field private zad:J

.field private zae:J

.field private zaf:Z

.field private zah:Lcom/google/android/gms/common/internal/TelemetryData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zai:Lcom/google/android/gms/common/internal/TelemetryLoggingClient;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zak:Landroid/content/Context;

.field private final zal:Lcom/google/android/gms/common/GoogleApiAvailability;

.field private final zam:Lcom/google/android/gms/common/internal/zal;

.field private final zan:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zao:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/internal/ApiKey",
            "<*>;",
            "Lcom/google/android/gms/common/api/internal/zabl",
            "<*>;>;"
        }
    .end annotation
.end field

.field private zaq:Lcom/google/android/gms/common/api/internal/zaab;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final zar:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/internal/ApiKey",
            "<*>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final zas:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/internal/ApiKey",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zat:Landroid/os/Handler;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field private volatile zau:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 1
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    move-object v0, v1

    move-object v1, v0

    const/4 v2, 0x4

    const-string v3, "Sign-out occurred while this API call was in progress."

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaa:Lcom/google/android/gms/common/api/Status;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    move-object v0, v1

    move-object v1, v0

    const/4 v2, 0x4

    const-string v3, "The user must be signed in to make this API call."

    .line 2
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zab:Lcom/google/android/gms/common/api/Status;

    new-instance v1, Ljava/lang/Object;

    move-object v0, v1

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zag:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailability;)V
    .locals 9
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    const-wide/16 v6, 0x1388

    iput-wide v6, v5, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zac:J

    move-object v5, v0

    const-wide/32 v6, 0x1d4c0

    iput-wide v6, v5, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zad:J

    move-object v5, v0

    const-wide/16 v6, 0x2710

    iput-wide v6, v5, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zae:J

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaf:Z

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v4, v5

    move-object v5, v4

    const/4 v6, 0x1

    .line 1
    invoke-direct {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v4, v5

    move-object v5, v4

    const/4 v6, 0x0

    .line 2
    invoke-direct {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zao:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v4, v5

    move-object v5, v4

    const/4 v6, 0x5

    const/high16 v7, 0x3f400000    # 0.75f

    const/4 v8, 0x1

    .line 3
    invoke-direct {v5, v6, v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/Map;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Lcom/google/android/gms/common/api/internal/zaab;

    .line 4
    new-instance v5, Landroidx/collection/ArraySet;

    move-object v4, v5

    move-object v5, v4

    invoke-direct {v5}, Landroidx/collection/ArraySet;-><init>()V

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Ljava/util/Set;

    new-instance v5, Landroidx/collection/ArraySet;

    move-object v4, v5

    move-object v5, v4

    .line 5
    invoke-direct {v5}, Landroidx/collection/ArraySet;-><init>()V

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas:Ljava/util/Set;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zau:Z

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zak:Landroid/content/Context;

    new-instance v5, Lcom/google/android/gms/internal/base/zap;

    move-object v4, v5

    move-object v5, v4

    move-object v6, v2

    move-object v7, v0

    .line 6
    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/internal/base/zap;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zal:Lcom/google/android/gms/common/GoogleApiAvailability;

    new-instance v5, Lcom/google/android/gms/common/internal/zal;

    move-object v2, v5

    move-object v5, v2

    move-object v6, v3

    .line 7
    invoke-direct {v5, v6}, Lcom/google/android/gms/common/internal/zal;-><init>(Lcom/google/android/gms/common/GoogleApiAvailabilityLight;)V

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Lcom/google/android/gms/common/internal/zal;

    move-object v5, v1

    .line 8
    invoke-static {v5}, Lcom/google/android/gms/common/util/DeviceProperties;->isAuto(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zau:Z

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    move-object v0, v5

    move-object v5, v0

    move-object v6, v0

    const/4 v7, 0x6

    .line 9
    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v5

    return-void
.end method

.method public static reportSignOut()V
    .locals 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    sget-object v2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zag:Ljava/lang/Object;

    move-object v0, v2

    move-object v2, v0

    .line 1
    monitor-enter v2

    :try_start_0
    sget-object v2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaj:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaj:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-object v1, v2

    move-object v2, v1

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zao:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    move-object v2, v1

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    move-object v1, v2

    move-object v2, v1

    move-object v3, v1

    const/16 v4, 0xa

    .line 3
    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result v2

    :cond_0
    move-object v2, v0

    .line 4
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    throw v2
.end method

.method static synthetic zaA(Lcom/google/android/gms/common/api/internal/GoogleApiManager;Z)Z
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaf:Z

    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method static synthetic zaB()Lcom/google/android/gms/common/api/Status;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zab:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method static synthetic zaC(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zau:Z

    move v0, v1

    return v0
.end method

.method static synthetic zaD(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Lcom/google/android/gms/common/GoogleApiAvailability;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zal:Lcom/google/android/gms/common/GoogleApiAvailability;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zaE(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)J
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zae:J

    move-wide v0, v1

    return-wide v0
.end method

.method static synthetic zaF(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaJ(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic zaG(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Ljava/util/Map;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/Map;

    move-object v0, v1

    return-object v0
.end method

.method private final zaH(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/common/api/internal/zabl;
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApi",
            "<*>;)",
            "Lcom/google/android/gms/common/api/internal/zabl",
            "<*>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    .line 1
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/GoogleApi;->getApiKey()Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v4

    move-object v2, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/Map;

    move-object v5, v2

    .line 2
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/internal/zabl;

    move-object v3, v4

    move-object v4, v3

    if-nez v4, :cond_1

    new-instance v4, Lcom/google/android/gms/common/api/internal/zabl;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v0

    move-object v6, v1

    .line 3
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/api/internal/zabl;-><init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;Lcom/google/android/gms/common/api/GoogleApi;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/Map;

    move-object v5, v2

    move-object v6, v3

    .line 4
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v3

    move-object v1, v4

    :goto_0
    move-object v4, v1

    .line 5
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabl;->zap()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas:Ljava/util/Set;

    move-object v5, v2

    .line 6
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    :cond_0
    move-object v4, v1

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabl;->zam()V

    move-object v4, v1

    move-object v0, v4

    return-object v0

    :cond_1
    move-object v4, v3

    move-object v1, v4

    goto :goto_0
.end method

.method private final zaI(Lcom/google/android/gms/tasks/TaskCompletionSource;ILcom/google/android/gms/common/api/GoogleApi;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<TT;>;I",
            "Lcom/google/android/gms/common/api/GoogleApi;",
            ")V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v2

    if-eqz v4, :cond_0

    move-object v4, v0

    move v5, v2

    move-object v6, v3

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/GoogleApi;->getApiKey()Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v6

    .line 1
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/api/internal/zabx;->zaa(Lcom/google/android/gms/common/api/internal/GoogleApiManager;ILcom/google/android/gms/common/api/internal/ApiKey;)Lcom/google/android/gms/common/api/internal/zabx;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v1

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    move-object v1, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    move-object v0, v4

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v4, v1

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/gms/common/api/internal/zabf;->zaa(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method private static zaJ(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/ApiKey",
            "<*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ")",
            "Lcom/google/android/gms/common/api/Status;"
        }
    .end annotation

    .prologue
    .line 1
    move-object v0, p0

    move-object v1, p1

    new-instance v7, Lcom/google/android/gms/common/api/Status;

    move-object v2, v7

    move-object v7, v0

    .line 2
    invoke-virtual {v7}, Lcom/google/android/gms/common/api/internal/ApiKey;->zab()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    move-object v7, v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    move-object v7, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v4, v7

    move-object v7, v3

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v5, v7

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v6, v7

    move-object v7, v6

    move v8, v4

    const/16 v9, 0x3f

    add-int/lit8 v8, v8, 0x3f

    move v9, v5

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v7, v6

    const-string v8, "API: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v6

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v6

    const-string v8, " is not available on this device. Connection failed with: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v6

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v2

    move-object v8, v1

    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/google/android/gms/common/api/Status;-><init>(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    move-object v7, v2

    move-object v0, v7

    return-object v0
.end method

.method private final zaK()V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zah:Lcom/google/android/gms/common/internal/TelemetryData;

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_2

    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/TelemetryData;->zaa()I

    move-result v2

    if-gtz v2, :cond_0

    move-object v2, v0

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v2, v0

    .line 2
    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaL()Lcom/google/android/gms/common/internal/TelemetryLoggingClient;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/google/android/gms/common/internal/TelemetryLoggingClient;->log(Lcom/google/android/gms/common/internal/TelemetryData;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zah:Lcom/google/android/gms/common/internal/TelemetryData;

    :goto_0
    return-void

    :cond_2
    goto :goto_0
.end method

.method private final zaL()Lcom/google/android/gms/common/internal/TelemetryLoggingClient;
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zai:Lcom/google/android/gms/common/internal/TelemetryLoggingClient;

    if-nez v1, :cond_0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zak:Landroid/content/Context;

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/TelemetryLogging;->getClient(Landroid/content/Context;)Lcom/google/android/gms/common/internal/TelemetryLoggingClient;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zai:Lcom/google/android/gms/common/internal/TelemetryLoggingClient;

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zai:Lcom/google/android/gms/common/internal/TelemetryLoggingClient;

    move-object v0, v1

    return-object v0
.end method

.method public static zaa(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/GoogleApiManager;
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    sget-object v4, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zag:Ljava/lang/Object;

    move-object v1, v4

    move-object v4, v1

    .line 1
    monitor-enter v4

    :try_start_0
    sget-object v4, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaj:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-object v2, v4

    move-object v4, v2

    if-nez v4, :cond_0

    new-instance v4, Landroid/os/HandlerThread;

    move-object v2, v4

    move-object v4, v2

    const-string v5, "GoogleApiHandler"

    const/16 v6, 0x9

    .line 2
    invoke-direct {v4, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    move-object v4, v2

    .line 3
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    move-object v4, v2

    .line 4
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    move-object v2, v4

    new-instance v4, Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-object v3, v4

    move-object v4, v0

    .line 5
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object v0, v4

    move-object v4, v3

    move-object v5, v0

    move-object v6, v2

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailability;)V

    move-object v4, v3

    sput-object v4, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaj:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    :cond_0
    sget-object v4, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaj:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-object v0, v4

    move-object v4, v1

    .line 6
    monitor-exit v4

    move-object v4, v0

    move-object v0, v4

    return-object v0

    :catchall_0
    move-exception v4

    move-object v0, v4

    .line 7
    move-object v4, v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    move-object v4, v0

    .line 7
    throw v4
.end method

.method public static zab()Lcom/google/android/gms/common/api/internal/GoogleApiManager;
    .locals 5
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    sget-object v3, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zag:Ljava/lang/Object;

    move-object v0, v3

    move-object v3, v0

    .line 1
    monitor-enter v3

    :try_start_0
    sget-object v3, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaj:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-object v1, v3

    const-string v3, "Must guarantee manager is non-null before using getInstance"

    move-object v2, v3

    move-object v3, v1

    move-object v4, v2

    .line 2
    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v3, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaj:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-object v1, v3

    move-object v3, v0

    .line 3
    monitor-exit v3

    move-object v3, v1

    move-object v0, v3

    return-object v0

    :catchall_0
    move-exception v3

    move-object v1, v3

    .line 4
    move-object v3, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    move-object v3, v1

    .line 4
    throw v3
.end method

.method static synthetic zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zat(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/content/Context;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zak:Landroid/content/Context;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zau(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)J
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zac:J

    move-wide v0, v1

    return-wide v0
.end method

.method static synthetic zav(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)J
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zad:J

    move-wide v0, v1

    return-wide v0
.end method

.method static synthetic zaw(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Lcom/google/android/gms/common/internal/zal;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Lcom/google/android/gms/common/internal/zal;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zax()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zag:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zay(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Lcom/google/android/gms/common/api/internal/zaab;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Lcom/google/android/gms/common/api/internal/zaab;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zaz(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Ljava/util/Set;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Ljava/util/Set;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    move-object v1, p0

    move-object v2, p1

    move-object v8, v2

    .line 1
    iget v8, v8, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 84
    move-object v8, v2

    .line 85
    iget v8, v8, Landroid/os/Message;->what:I

    move v1, v8

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v2, v8

    move-object v8, v2

    const/16 v9, 0x1f

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v8, v2

    const-string v9, "Unknown message id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v8, v2

    move v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v8, "GoogleApiManager"

    move-object v9, v2

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    const/4 v8, 0x0

    move v1, v8

    :goto_0
    return v1

    .line 1
    :pswitch_0
    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/Map;

    .line 2
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v1, v8

    :goto_1
    move-object v8, v1

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/common/api/internal/zabl;

    move-object v2, v8

    move-object v8, v2

    .line 3
    invoke-virtual {v8}, Lcom/google/android/gms/common/api/internal/zabl;->zah()V

    move-object v8, v2

    .line 4
    invoke-virtual {v8}, Lcom/google/android/gms/common/api/internal/zabl;->zam()V

    goto :goto_1

    :pswitch_1
    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zak:Landroid/content/Context;

    .line 5
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    instance-of v8, v8, Landroid/app/Application;

    if-eqz v8, :cond_0

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zak:Landroid/content/Context;

    .line 6
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Landroid/app/Application;

    .line 7
    invoke-static {v8}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->initialize(Landroid/app/Application;)V

    .line 8
    invoke-static {}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->getInstance()Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    move-result-object v8

    move-object v2, v8

    new-instance v8, Lcom/google/android/gms/common/api/internal/zabg;

    move-object v3, v8

    move-object v8, v3

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/google/android/gms/common/api/internal/zabg;-><init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)V

    move-object v8, v2

    move-object v9, v3

    .line 9
    invoke-virtual {v8, v9}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->addListener(Lcom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;)V

    .line 10
    invoke-static {}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->getInstance()Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    move-result-object v8

    const/4 v9, 0x1

    .line 11
    invoke-virtual {v8, v9}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->readCurrentStateIfPossible(Z)Z

    move-result v8

    if-nez v8, :cond_0

    move-object v8, v1

    const-wide/32 v9, 0x493e0

    iput-wide v9, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zae:J

    .line 4
    :cond_0
    :goto_2
    const/4 v8, 0x1

    move v1, v8

    goto :goto_0

    .line 11
    :pswitch_2
    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas:Ljava/util/Set;

    .line 12
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v2, v8

    :cond_1
    :goto_3
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v3, v8

    move-object v8, v3

    check-cast v8, Lcom/google/android/gms/common/api/internal/ApiKey;

    move-object v3, v8

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/Map;

    move-object v9, v3

    .line 13
    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/common/api/internal/zabl;

    move-object v3, v8

    move-object v8, v3

    if-eqz v8, :cond_1

    move-object v8, v3

    .line 14
    invoke-virtual {v8}, Lcom/google/android/gms/common/api/internal/zabl;->zae()V

    goto :goto_3

    :cond_2
    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas:Ljava/util/Set;

    .line 15
    invoke-interface {v8}, Ljava/util/Set;->clear()V

    goto :goto_2

    :pswitch_3
    move-object v8, v2

    .line 16
    iget-object v8, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/common/api/internal/zaby;

    move-object v2, v8

    move-object v8, v2

    .line 17
    iget-wide v8, v8, Lcom/google/android/gms/common/api/internal/zaby;->zac:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 18
    new-instance v8, Lcom/google/android/gms/common/internal/TelemetryData;

    move-object v3, v8

    move-object v8, v2

    iget v8, v8, Lcom/google/android/gms/common/api/internal/zaby;->zab:I

    move v4, v8

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/google/android/gms/common/internal/MethodInvocation;

    move-object v5, v8

    move-object v8, v5

    const/4 v9, 0x0

    move-object v10, v2

    iget-object v10, v10, Lcom/google/android/gms/common/api/internal/zaby;->zaa:Lcom/google/android/gms/common/internal/MethodInvocation;

    aput-object v10, v8, v9

    move-object v8, v3

    move v9, v4

    move-object v10, v5

    .line 19
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/google/android/gms/common/internal/TelemetryData;-><init>(ILjava/util/List;)V

    move-object v8, v1

    .line 20
    invoke-direct {v8}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaL()Lcom/google/android/gms/common/internal/TelemetryLoggingClient;

    move-result-object v8

    move-object v9, v3

    invoke-interface {v8, v9}, Lcom/google/android/gms/common/internal/TelemetryLoggingClient;->log(Lcom/google/android/gms/common/internal/TelemetryData;)Lcom/google/android/gms/tasks/Task;

    move-result-object v8

    goto :goto_2

    :cond_3
    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zah:Lcom/google/android/gms/common/internal/TelemetryData;

    move-object v3, v8

    move-object v8, v3

    if-eqz v8, :cond_5

    move-object v8, v3

    invoke-virtual {v8}, Lcom/google/android/gms/common/internal/TelemetryData;->zab()Ljava/util/List;

    move-result-object v8

    move-object v3, v8

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zah:Lcom/google/android/gms/common/internal/TelemetryData;

    .line 21
    invoke-virtual {v8}, Lcom/google/android/gms/common/internal/TelemetryData;->zaa()I

    move-result v8

    move-object v9, v2

    iget v9, v9, Lcom/google/android/gms/common/api/internal/zaby;->zab:I

    if-ne v8, v9, :cond_4

    move-object v8, v3

    if-eqz v8, :cond_6

    move-object v8, v3

    .line 22
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move-object v9, v2

    iget v9, v9, Lcom/google/android/gms/common/api/internal/zaby;->zad:I

    if-lt v8, v9, :cond_6

    :cond_4
    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    const/16 v9, 0x11

    .line 24
    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    move-object v8, v1

    .line 25
    invoke-direct {v8}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()V

    :cond_5
    :goto_4
    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zah:Lcom/google/android/gms/common/internal/TelemetryData;

    if-nez v8, :cond_0

    new-instance v8, Ljava/util/ArrayList;

    move-object v3, v8

    move-object v8, v3

    .line 26
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v3

    move-object v9, v2

    .line 27
    iget-object v9, v9, Lcom/google/android/gms/common/api/internal/zaby;->zaa:Lcom/google/android/gms/common/internal/MethodInvocation;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 28
    new-instance v8, Lcom/google/android/gms/common/internal/TelemetryData;

    move-object v4, v8

    move-object v8, v4

    move-object v9, v2

    iget v9, v9, Lcom/google/android/gms/common/api/internal/zaby;->zab:I

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lcom/google/android/gms/common/internal/TelemetryData;-><init>(ILjava/util/List;)V

    move-object v8, v1

    move-object v9, v4

    iput-object v9, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zah:Lcom/google/android/gms/common/internal/TelemetryData;

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    move-object v1, v8

    move-object v8, v1

    move-object v9, v1

    const/16 v10, 0x11

    .line 29
    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    move-object v10, v2

    iget-wide v10, v10, Lcom/google/android/gms/common/api/internal/zaby;->zac:J

    .line 30
    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v8

    goto/16 :goto_2

    :cond_6
    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zah:Lcom/google/android/gms/common/internal/TelemetryData;

    move-object v9, v2

    .line 23
    iget-object v9, v9, Lcom/google/android/gms/common/api/internal/zaby;->zaa:Lcom/google/android/gms/common/internal/MethodInvocation;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/common/internal/TelemetryData;->zac(Lcom/google/android/gms/common/internal/MethodInvocation;)V

    goto :goto_4

    :pswitch_4
    move-object v8, v1

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaf:Z

    goto/16 :goto_2

    :pswitch_5
    move-object v8, v1

    .line 31
    invoke-direct {v8}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()V

    goto/16 :goto_2

    :pswitch_6
    move-object v8, v2

    .line 32
    iget-object v8, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/common/api/internal/zabm;

    move-object v2, v8

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/Map;

    move-object v9, v2

    .line 33
    invoke-static {v9}, Lcom/google/android/gms/common/api/internal/zabm;->zaa(Lcom/google/android/gms/common/api/internal/zabm;)Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/Map;

    move-object v9, v2

    .line 34
    invoke-static {v9}, Lcom/google/android/gms/common/api/internal/zabm;->zaa(Lcom/google/android/gms/common/api/internal/zabm;)Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/common/api/internal/zabl;

    move-object v9, v2

    invoke-static {v8, v9}, Lcom/google/android/gms/common/api/internal/zabl;->zav(Lcom/google/android/gms/common/api/internal/zabl;Lcom/google/android/gms/common/api/internal/zabm;)V

    goto/16 :goto_2

    :pswitch_7
    move-object v8, v2

    .line 35
    iget-object v8, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/common/api/internal/zabm;

    move-object v2, v8

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/Map;

    move-object v9, v2

    .line 36
    invoke-static {v9}, Lcom/google/android/gms/common/api/internal/zabm;->zaa(Lcom/google/android/gms/common/api/internal/zabm;)Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/Map;

    move-object v9, v2

    .line 37
    invoke-static {v9}, Lcom/google/android/gms/common/api/internal/zabm;->zaa(Lcom/google/android/gms/common/api/internal/zabm;)Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/common/api/internal/zabl;

    move-object v9, v2

    invoke-static {v8, v9}, Lcom/google/android/gms/common/api/internal/zabl;->zau(Lcom/google/android/gms/common/api/internal/zabl;Lcom/google/android/gms/common/api/internal/zabm;)V

    goto/16 :goto_2

    :pswitch_8
    move-object v8, v2

    .line 38
    iget-object v8, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/common/api/internal/zaac;

    move-object v2, v8

    move-object v8, v2

    .line 39
    invoke-virtual {v8}, Lcom/google/android/gms/common/api/internal/zaac;->zaa()Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v8

    move-object v3, v8

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/Map;

    move-object v9, v3

    .line 40
    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    move-object v8, v2

    .line 41
    invoke-virtual {v8}, Lcom/google/android/gms/common/api/internal/zaac;->zab()Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_7
    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/Map;

    move-object v1, v8

    move-object v8, v1

    move-object v9, v3

    .line 42
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v1, v8

    move-object v8, v1

    check-cast v8, Lcom/google/android/gms/common/api/internal/zabl;

    move-object v1, v8

    move-object v8, v1

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/google/android/gms/common/api/internal/zabl;->zat(Lcom/google/android/gms/common/api/internal/zabl;Z)Z

    move-result v8

    move v1, v8

    move-object v8, v2

    .line 43
    invoke-virtual {v8}, Lcom/google/android/gms/common/api/internal/zaac;->zab()Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object v8

    move v9, v1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_9
    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/Map;

    move-object v9, v2

    .line 44
    iget-object v9, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/Map;

    move-object v9, v2

    .line 45
    iget-object v9, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/common/api/internal/zabl;

    invoke-virtual {v8}, Lcom/google/android/gms/common/api/internal/zabl;->zal()Z

    move-result v8

    goto/16 :goto_2

    :pswitch_a
    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/Map;

    move-object v9, v2

    .line 46
    iget-object v9, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/Map;

    move-object v9, v2

    .line 47
    iget-object v9, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/common/api/internal/zabl;

    invoke-virtual {v8}, Lcom/google/android/gms/common/api/internal/zabl;->zak()V

    goto/16 :goto_2

    :pswitch_b
    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/Map;

    move-object v9, v2

    .line 48
    iget-object v9, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/Map;

    move-object v9, v2

    .line 49
    iget-object v9, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/common/api/internal/zabl;

    invoke-virtual {v8}, Lcom/google/android/gms/common/api/internal/zabl;->zaj()V

    goto/16 :goto_2

    :pswitch_c
    move-object v8, v1

    move-object v9, v2

    .line 50
    iget-object v9, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/gms/common/api/GoogleApi;

    invoke-direct {v8, v9}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaH(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/common/api/internal/zabl;

    move-result-object v8

    goto/16 :goto_2

    :pswitch_d
    move-object v8, v2

    .line 51
    iget v8, v8, Landroid/os/Message;->arg1:I

    move v3, v8

    move-object v8, v2

    iget-object v8, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/common/ConnectionResult;

    move-object v4, v8

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/Map;

    .line 52
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v2, v8

    :cond_8
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/common/api/internal/zabl;

    move-object v5, v8

    move-object v8, v5

    .line 53
    invoke-virtual {v8}, Lcom/google/android/gms/common/api/internal/zabl;->zaq()I

    move-result v8

    move v9, v3

    if-ne v8, v9, :cond_8

    move-object v8, v5

    move-object v2, v8

    :goto_5
    move-object v8, v2

    if-eqz v8, :cond_a

    move-object v8, v4

    .line 54
    invoke-virtual {v8}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_9

    .line 55
    new-instance v8, Lcom/google/android/gms/common/api/Status;

    move-object v3, v8

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zal:Lcom/google/android/gms/common/GoogleApiAvailability;

    move-object v9, v4

    .line 56
    invoke-virtual {v9}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorString(I)Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    move-object v8, v4

    .line 57
    invoke-virtual {v8}, Lcom/google/android/gms/common/ConnectionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    move-object v8, v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move v5, v8

    move-object v8, v4

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    move-object v8, v6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move v6, v8

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v7, v8

    move-object v8, v7

    move v9, v5

    const/16 v10, 0x45

    add-int/lit8 v9, v9, 0x45

    move v10, v6

    add-int/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v8, v7

    const-string v9, "Error resolution was canceled by the user, original error message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v8, v7

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v8, v7

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v8, v7

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v8, v3

    const/16 v9, 0x11

    move-object v10, v7

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    move-object v8, v2

    move-object v9, v3

    .line 55
    invoke-static {v8, v9}, Lcom/google/android/gms/common/api/internal/zabl;->zaw(Lcom/google/android/gms/common/api/internal/zabl;Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_2

    :cond_9
    move-object v8, v2

    move-object v9, v2

    invoke-static {v9}, Lcom/google/android/gms/common/api/internal/zabl;->zax(Lcom/google/android/gms/common/api/internal/zabl;)Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v9

    move-object v10, v4

    .line 58
    invoke-static {v9, v10}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaJ(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/android/gms/common/api/internal/zabl;->zaw(Lcom/google/android/gms/common/api/internal/zabl;Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_2

    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v1, v8

    move-object v8, v1

    const/16 v9, 0x4c

    .line 59
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v8, v1

    const-string v9, "Could not find API instance "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v8, v1

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v8, v1

    const-string v9, " while trying to fail enqueued calls."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    new-instance v8, Ljava/lang/Exception;

    move-object v2, v8

    move-object v8, v2

    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    const-string v8, "GoogleApiManager"

    move-object v9, v1

    move-object v10, v2

    invoke-static {v8, v9, v10}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v8

    goto/16 :goto_2

    :cond_b
    const/4 v8, 0x0

    move-object v2, v8

    goto/16 :goto_5

    :pswitch_e
    move-object v8, v2

    .line 60
    iget-object v8, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/common/api/internal/zacb;

    move-object v3, v8

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/Map;

    move-object v9, v3

    .line 61
    iget-object v9, v9, Lcom/google/android/gms/common/api/internal/zacb;->zac:Lcom/google/android/gms/common/api/GoogleApi;

    invoke-virtual {v9}, Lcom/google/android/gms/common/api/GoogleApi;->getApiKey()Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/common/api/internal/zabl;

    move-object v2, v8

    move-object v8, v2

    if-nez v8, :cond_c

    move-object v8, v1

    move-object v9, v3

    .line 62
    iget-object v9, v9, Lcom/google/android/gms/common/api/internal/zacb;->zac:Lcom/google/android/gms/common/api/GoogleApi;

    invoke-direct {v8, v9}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaH(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/common/api/internal/zabl;

    move-result-object v8

    move-object v2, v8

    :cond_c
    move-object v8, v2

    .line 63
    invoke-virtual {v8}, Lcom/google/android/gms/common/api/internal/zabl;->zap()Z

    move-result v8

    if-eqz v8, :cond_d

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zao:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    move-object v9, v3

    iget v9, v9, Lcom/google/android/gms/common/api/internal/zacb;->zab:I

    if-eq v8, v9, :cond_d

    move-object v8, v3

    .line 65
    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zacb;->zaa:Lcom/google/android/gms/common/api/internal/zai;

    sget-object v9, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaa:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/common/api/internal/zai;->zac(Lcom/google/android/gms/common/api/Status;)V

    move-object v8, v2

    .line 66
    invoke-virtual {v8}, Lcom/google/android/gms/common/api/internal/zabl;->zae()V

    goto/16 :goto_2

    :cond_d
    move-object v8, v2

    move-object v9, v3

    .line 64
    iget-object v9, v9, Lcom/google/android/gms/common/api/internal/zacb;->zaa:Lcom/google/android/gms/common/api/internal/zai;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/common/api/internal/zabl;->zad(Lcom/google/android/gms/common/api/internal/zai;)V

    goto/16 :goto_2

    :pswitch_f
    move-object v8, v2

    .line 67
    iget-object v8, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/common/api/internal/zal;

    move-object v2, v8

    move-object v8, v2

    .line 68
    invoke-virtual {v8}, Lcom/google/android/gms/common/api/internal/zal;->zaa()Ljava/util/Set;

    move-result-object v8

    .line 69
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    :goto_6
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/common/api/internal/ApiKey;

    move-object v4, v8

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/Map;

    move-object v9, v4

    .line 70
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/common/api/internal/zabl;

    move-object v5, v8

    move-object v8, v5

    if-nez v8, :cond_e

    .line 78
    new-instance v8, Lcom/google/android/gms/common/ConnectionResult;

    move-object v1, v8

    move-object v8, v1

    const/16 v9, 0xd

    invoke-direct {v8, v9}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    move-object v8, v2

    move-object v9, v4

    move-object v10, v1

    const/4 v11, 0x0

    .line 79
    invoke-virtual {v8, v9, v10, v11}, Lcom/google/android/gms/common/api/internal/zal;->zac(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    move-object v8, v5

    .line 71
    invoke-virtual {v8}, Lcom/google/android/gms/common/api/internal/zabl;->zao()Z

    move-result v8

    if-eqz v8, :cond_f

    move-object v8, v2

    move-object v9, v4

    .line 72
    sget-object v10, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    move-object v11, v5

    invoke-virtual {v11}, Lcom/google/android/gms/common/api/internal/zabl;->zaf()Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v11

    .line 73
    invoke-interface {v11}, Lcom/google/android/gms/common/api/Api$Client;->getEndpointPackageName()Ljava/lang/String;

    move-result-object v11

    .line 72
    invoke-virtual {v8, v9, v10, v11}, Lcom/google/android/gms/common/api/internal/zal;->zac(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    move-object v8, v5

    .line 74
    invoke-virtual {v8}, Lcom/google/android/gms/common/api/internal/zabl;->zai()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v8

    move-object v6, v8

    move-object v8, v6

    if-eqz v8, :cond_10

    move-object v8, v2

    move-object v9, v4

    move-object v10, v6

    const/4 v11, 0x0

    .line 75
    invoke-virtual {v8, v9, v10, v11}, Lcom/google/android/gms/common/api/internal/zal;->zac(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    goto :goto_6

    :cond_10
    move-object v8, v5

    move-object v9, v2

    .line 76
    invoke-virtual {v8, v9}, Lcom/google/android/gms/common/api/internal/zabl;->zan(Lcom/google/android/gms/common/api/internal/zal;)V

    move-object v8, v5

    .line 77
    invoke-virtual {v8}, Lcom/google/android/gms/common/api/internal/zabl;->zam()V

    goto :goto_6

    :pswitch_10
    const/4 v8, 0x1

    move-object v9, v2

    .line 80
    iget-object v9, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eq v8, v9, :cond_11

    const-wide/32 v8, 0x493e0

    move-wide v3, v8

    :goto_7
    move-object v8, v1

    move-wide v9, v3

    iput-wide v9, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zae:J

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    const/16 v9, 0xc

    .line 81
    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/Map;

    .line 82
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v2, v8

    :goto_8
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v3, v8

    move-object v8, v3

    check-cast v8, Lcom/google/android/gms/common/api/internal/ApiKey;

    move-object v3, v8

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    move-object v4, v8

    move-object v8, v4

    move-object v9, v4

    const/16 v10, 0xc

    move-object v11, v3

    .line 83
    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object v10, v1

    iget-wide v10, v10, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zae:J

    .line 84
    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v8

    goto :goto_8

    :cond_11
    const-wide/16 v8, 0x2710

    move-wide v3, v8

    goto :goto_7

    .line 1
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_1
        :pswitch_c
        :pswitch_e
        :pswitch_b
        :pswitch_2
        :pswitch_a
        :pswitch_9
        :pswitch_e
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final zac()I
    .locals 2

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public final zad(Lcom/google/android/gms/common/api/GoogleApi;)V
    .locals 6
    .param p1    # Lcom/google/android/gms/common/api/GoogleApi;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApi",
            "<*>;)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    move-object v0, v2

    move-object v2, v0

    move-object v3, v0

    const/4 v4, 0x7

    move-object v5, v1

    .line 1
    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    return-void
.end method

.method public final zae(Lcom/google/android/gms/common/api/internal/zaab;)V
    .locals 6
    .param p1    # Lcom/google/android/gms/common/api/internal/zaab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    sget-object v4, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zag:Ljava/lang/Object;

    move-object v2, v4

    move-object v4, v2

    .line 1
    monitor-enter v4

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Lcom/google/android/gms/common/api/internal/zaab;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    if-eq v4, v5, :cond_0

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Lcom/google/android/gms/common/api/internal/zaab;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Ljava/util/Set;

    .line 2
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Ljava/util/Set;

    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/zaab;->zab()Landroidx/collection/ArraySet;

    move-result-object v5

    .line 3
    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v4

    move-object v4, v2

    .line 4
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

.method final zaf(Lcom/google/android/gms/common/api/internal/zaab;)V
    .locals 6
    .param p1    # Lcom/google/android/gms/common/api/internal/zaab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    sget-object v4, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zag:Ljava/lang/Object;

    move-object v2, v4

    move-object v4, v2

    .line 1
    monitor-enter v4

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Lcom/google/android/gms/common/api/internal/zaab;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    if-ne v4, v5, :cond_0

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Lcom/google/android/gms/common/api/internal/zaab;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Ljava/util/Set;

    .line 2
    invoke-interface {v4}, Ljava/util/Set;->clear()V

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

.method final zag(Lcom/google/android/gms/common/api/internal/ApiKey;)Lcom/google/android/gms/common/api/internal/zabl;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/ApiKey",
            "<*>;)",
            "Lcom/google/android/gms/common/api/internal/zabl;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/Map;

    move-object v3, v1

    .line 1
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/zabl;

    move-object v0, v2

    return-object v0
.end method

.method public final zah(Ljava/lang/Iterable;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .param p1    # Ljava/lang/Iterable;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/android/gms/common/api/HasApiKey",
            "<*>;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/internal/ApiKey",
            "<*>;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Lcom/google/android/gms/common/api/internal/zal;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    .line 1
    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/internal/zal;-><init>(Ljava/lang/Iterable;)V

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    move-object v0, v3

    move-object v3, v0

    move-object v4, v0

    const/4 v5, 0x2

    move-object v6, v2

    .line 2
    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    move-object v3, v2

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zal;->zab()Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public final zai()V
    .locals 4

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    move-object v0, v1

    move-object v1, v0

    move-object v2, v0

    const/4 v3, 0x3

    .line 1
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    return-void
.end method

.method public final zaj(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .param p1    # Lcom/google/android/gms/common/api/GoogleApi;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApi",
            "<*>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Lcom/google/android/gms/common/api/internal/zaac;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/GoogleApi;->getApiKey()Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v4

    .line 1
    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/internal/zaac;-><init>(Lcom/google/android/gms/common/api/internal/ApiKey;)V

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    move-object v0, v3

    move-object v3, v0

    move-object v4, v0

    const/16 v5, 0xe

    move-object v6, v2

    .line 2
    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    move-object v3, v2

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zaac;->zab()Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public final zak(Lcom/google/android/gms/common/api/GoogleApi;ILcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)V
    .locals 9
    .param p1    # Lcom/google/android/gms/common/api/GoogleApi;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/GoogleApi",
            "<TO;>;I",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            ">;)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    new-instance v5, Lcom/google/android/gms/common/api/internal/zae;

    move-object v4, v5

    move-object v5, v4

    move v6, v2

    move-object v7, v3

    .line 1
    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/common/api/internal/zae;-><init>(ILcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    move-object v2, v5

    new-instance v5, Lcom/google/android/gms/common/api/internal/zacb;

    move-object v3, v5

    move-object v5, v3

    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zao:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    move-object v8, v1

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/gms/common/api/internal/zacb;-><init>(Lcom/google/android/gms/common/api/internal/zai;ILcom/google/android/gms/common/api/GoogleApi;)V

    move-object v5, v2

    move-object v6, v2

    const/4 v7, 0x4

    move-object v8, v3

    .line 3
    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 4
    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v5

    return-void
.end method

.method public final zal(Lcom/google/android/gms/common/api/GoogleApi;ILcom/google/android/gms/common/api/internal/TaskApiCall;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;)V
    .locals 12
    .param p1    # Lcom/google/android/gms/common/api/GoogleApi;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/api/internal/TaskApiCall;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/tasks/TaskCompletionSource;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            "ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/GoogleApi",
            "<TO;>;I",
            "Lcom/google/android/gms/common/api/internal/TaskApiCall",
            "<",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "TResultT;>;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<TResultT;>;",
            "Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;",
            ")V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v7, v0

    move-object v8, v4

    move-object v9, v3

    .line 1
    invoke-virtual {v9}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->zab()I

    move-result v9

    move-object v10, v1

    invoke-direct {v7, v8, v9, v10}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaI(Lcom/google/android/gms/tasks/TaskCompletionSource;ILcom/google/android/gms/common/api/GoogleApi;)V

    new-instance v7, Lcom/google/android/gms/common/api/internal/zag;

    move-object v6, v7

    move-object v7, v6

    move v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    .line 2
    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/android/gms/common/api/internal/zag;-><init>(ILcom/google/android/gms/common/api/internal/TaskApiCall;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;)V

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    move-object v2, v7

    new-instance v7, Lcom/google/android/gms/common/api/internal/zacb;

    move-object v3, v7

    move-object v7, v3

    move-object v8, v6

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zao:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    move-object v10, v1

    invoke-direct {v7, v8, v9, v10}, Lcom/google/android/gms/common/api/internal/zacb;-><init>(Lcom/google/android/gms/common/api/internal/zai;ILcom/google/android/gms/common/api/GoogleApi;)V

    move-object v7, v2

    move-object v8, v2

    const/4 v9, 0x4

    move-object v10, v3

    .line 4
    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 5
    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v7

    return-void
.end method

.method final zam()Z
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaf:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    move v0, v2

    .line 3
    :goto_0
    return v0

    .line 1
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->getInstance()Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->getConfig()Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->getMethodInvocationTelemetryEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Lcom/google/android/gms/common/internal/zal;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zak:Landroid/content/Context;

    const v4, 0xc1f7c30

    .line 3
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/common/internal/zal;->zab(Landroid/content/Context;I)I

    move-result v2

    move v0, v2

    move v2, v0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    move v2, v0

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public final zan(Lcom/google/android/gms/common/api/GoogleApi;Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;
    .locals 12
    .param p1    # Lcom/google/android/gms/common/api/GoogleApi;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/GoogleApi",
            "<TO;>;",
            "Lcom/google/android/gms/common/api/internal/RegisterListenerMethod",
            "<",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "*>;",
            "Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod",
            "<",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    new-instance v8, Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-object v5, v8

    move-object v8, v5

    invoke-direct {v8}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    move-object v8, v0

    move-object v9, v5

    move-object v10, v2

    .line 2
    invoke-virtual {v10}, Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;->zab()I

    move-result v10

    move-object v11, v1

    invoke-direct {v8, v9, v10, v11}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaI(Lcom/google/android/gms/tasks/TaskCompletionSource;ILcom/google/android/gms/common/api/GoogleApi;)V

    new-instance v8, Lcom/google/android/gms/common/api/internal/zaf;

    move-object v6, v8

    new-instance v8, Lcom/google/android/gms/common/api/internal/zacc;

    move-object v7, v8

    move-object v8, v7

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    .line 3
    invoke-direct {v8, v9, v10, v11}, Lcom/google/android/gms/common/api/internal/zacc;-><init>(Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;Ljava/lang/Runnable;)V

    move-object v8, v6

    move-object v9, v7

    move-object v10, v5

    invoke-direct {v8, v9, v10}, Lcom/google/android/gms/common/api/internal/zaf;-><init>(Lcom/google/android/gms/common/api/internal/zacc;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    move-object v2, v8

    new-instance v8, Lcom/google/android/gms/common/api/internal/zacb;

    move-object v3, v8

    move-object v8, v3

    move-object v9, v6

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zao:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    move-object v11, v1

    invoke-direct {v8, v9, v10, v11}, Lcom/google/android/gms/common/api/internal/zacb;-><init>(Lcom/google/android/gms/common/api/internal/zai;ILcom/google/android/gms/common/api/GoogleApi;)V

    move-object v8, v2

    move-object v9, v2

    const/16 v10, 0x8

    move-object v11, v3

    .line 5
    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 6
    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v8

    move-object v8, v5

    .line 7
    invoke-virtual {v8}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v8

    move-object v0, v8

    return-object v0
.end method

.method public final zao(Lcom/google/android/gms/common/api/GoogleApi;Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;I)Lcom/google/android/gms/tasks/Task;
    .locals 10
    .param p1    # Lcom/google/android/gms/common/api/GoogleApi;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/GoogleApi",
            "<TO;>;",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;",
            "I)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    new-instance v6, Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-object v4, v6

    move-object v6, v4

    invoke-direct {v6}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    move-object v6, v0

    move-object v7, v4

    move v8, v3

    move-object v9, v1

    .line 2
    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaI(Lcom/google/android/gms/tasks/TaskCompletionSource;ILcom/google/android/gms/common/api/GoogleApi;)V

    new-instance v6, Lcom/google/android/gms/common/api/internal/zah;

    move-object v3, v6

    move-object v6, v3

    move-object v7, v2

    move-object v8, v4

    .line 3
    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/common/api/internal/zah;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    move-object v2, v6

    new-instance v6, Lcom/google/android/gms/common/api/internal/zacb;

    move-object v5, v6

    move-object v6, v5

    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zao:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    move-object v9, v1

    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/gms/common/api/internal/zacb;-><init>(Lcom/google/android/gms/common/api/internal/zai;ILcom/google/android/gms/common/api/GoogleApi;)V

    move-object v6, v2

    move-object v7, v2

    const/16 v8, 0xd

    move-object v9, v5

    .line 5
    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 6
    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v6

    move-object v6, v4

    .line 7
    invoke-virtual {v6}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method

.method final zap(Lcom/google/android/gms/common/ConnectionResult;I)Z
    .locals 7

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zal:Lcom/google/android/gms/common/GoogleApiAvailability;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zak:Landroid/content/Context;

    move-object v5, v1

    move v6, v2

    .line 1
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/common/GoogleApiAvailability;->zac(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public final zaq(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 9
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    .line 1
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    move-object v0, v3

    move-object v3, v0

    move-object v4, v0

    const/4 v5, 0x5

    move v6, v2

    const/4 v7, 0x0

    move-object v8, v1

    .line 2
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 3
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method final zar(Lcom/google/android/gms/common/internal/MethodInvocation;IJI)V
    .locals 13

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Landroid/os/Handler;

    move-object v0, v7

    new-instance v7, Lcom/google/android/gms/common/api/internal/zaby;

    move-object v6, v7

    move-object v7, v6

    move-object v8, v1

    move v9, v2

    move-wide v10, v3

    move v12, v5

    .line 1
    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/common/api/internal/zaby;-><init>(Lcom/google/android/gms/common/internal/MethodInvocation;IJI)V

    move-object v7, v0

    move-object v8, v0

    const/16 v9, 0x12

    move-object v10, v6

    .line 2
    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 1
    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v7

    return-void
.end method
