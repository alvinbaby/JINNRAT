.class final Lcom/google/android/gms/internal/base/zan;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/base/zal;


# direct methods
.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/base/zam;)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zaa(II)Ljava/util/concurrent/ExecutorService;
    .locals 7

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    const/4 v4, 0x4

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/internal/base/zan;->zab(ILjava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public final zab(ILjava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;
    .locals 13

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move/from16 v3, p3

    new-instance v5, Ljava/util/concurrent/ThreadPoolExecutor;

    move-object v0, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v3, v5

    new-instance v5, Ljava/util/concurrent/LinkedBlockingQueue;

    move-object v4, v5

    move-object v5, v4

    .line 1
    invoke-direct {v5}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v5, v0

    move v6, v1

    move v7, v1

    const-wide/16 v8, 0x3c

    move-object v10, v3

    move-object v11, v4

    move-object v12, v2

    invoke-direct/range {v5 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    move-object v5, v0

    const/4 v6, 0x1

    .line 2
    invoke-virtual {v5, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    move-object v5, v0

    .line 3
    invoke-static {v5}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public final zac(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;
    .locals 7

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    const/4 v4, 0x1

    move-object v5, v1

    const/4 v6, 0x1

    .line 1
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/internal/base/zan;->zab(ILjava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method
