.class public abstract Landroidx/lifecycle/LiveData;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/LiveData$AlwaysActiveObserver;,
        Landroidx/lifecycle/LiveData$ObserverWrapper;,
        Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final NOT_SET:Ljava/lang/Object;

.field static final START_VERSION:I = -0x1


# instance fields
.field mActiveCount:I

.field private mChangingActiveState:Z

.field private volatile mData:Ljava/lang/Object;

.field final mDataLock:Ljava/lang/Object;

.field private mDispatchInvalidated:Z

.field private mDispatchingValue:Z

.field private mObservers:Landroidx/arch/core/internal/SafeIterableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/internal/SafeIterableMap",
            "<",
            "Landroidx/lifecycle/Observer",
            "<-TT;>;",
            "Landroidx/lifecycle/LiveData",
            "<TT;>.ObserverWrapper;>;"
        }
    .end annotation
.end field

.field volatile mPendingData:Ljava/lang/Object;

.field private final mPostValueRunnable:Ljava/lang/Runnable;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 60
    move-object v1, v0

    new-instance v2, Ljava/lang/Object;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Landroidx/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    .line 66
    move-object v1, v0

    new-instance v2, Landroidx/arch/core/internal/SafeIterableMap;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroidx/arch/core/internal/SafeIterableMap;-><init>()V

    iput-object v2, v1, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    .line 70
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/lifecycle/LiveData;->mActiveCount:I

    .line 77
    move-object v1, v0

    sget-object v2, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    iput-object v2, v1, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    .line 84
    move-object v1, v0

    new-instance v2, Landroidx/lifecycle/LiveData$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/lifecycle/LiveData$1;-><init>(Landroidx/lifecycle/LiveData;)V

    iput-object v2, v1, Landroidx/lifecycle/LiveData;->mPostValueRunnable:Ljava/lang/Runnable;

    .line 111
    move-object v1, v0

    sget-object v2, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    iput-object v2, v1, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    .line 112
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/lifecycle/LiveData;->mVersion:I

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 60
    move-object v2, v0

    new-instance v3, Ljava/lang/Object;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v2, Landroidx/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    .line 66
    move-object v2, v0

    new-instance v3, Landroidx/arch/core/internal/SafeIterableMap;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroidx/arch/core/internal/SafeIterableMap;-><init>()V

    iput-object v3, v2, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    .line 70
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/lifecycle/LiveData;->mActiveCount:I

    .line 77
    move-object v2, v0

    sget-object v3, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    iput-object v3, v2, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    .line 84
    move-object v2, v0

    new-instance v3, Landroidx/lifecycle/LiveData$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/lifecycle/LiveData$1;-><init>(Landroidx/lifecycle/LiveData;)V

    iput-object v3, v2, Landroidx/lifecycle/LiveData;->mPostValueRunnable:Ljava/lang/Runnable;

    .line 103
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    .line 104
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/lifecycle/LiveData;->mVersion:I

    .line 105
    return-void
.end method

.method static assertMainThread(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 486
    move-object v0, p0

    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/arch/core/executor/ArchTaskExecutor;->isMainThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 487
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot invoke "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on a background thread"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 490
    :cond_0
    return-void
.end method

.method private considerNotify(Landroidx/lifecycle/LiveData$ObserverWrapper;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData",
            "<TT;>.ObserverWrapper;)V"
        }
    .end annotation

    .prologue
    .line 117
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget-boolean v2, v2, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-nez v2, :cond_0

    .line 134
    :goto_0
    return-void

    .line 125
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData$ObserverWrapper;->shouldBeActive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 126
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/lifecycle/LiveData$ObserverWrapper;->activeStateChanged(Z)V

    .line 127
    goto :goto_0

    .line 129
    :cond_1
    move-object v2, v1

    iget v2, v2, Landroidx/lifecycle/LiveData$ObserverWrapper;->mLastVersion:I

    move-object v3, v0

    iget v3, v3, Landroidx/lifecycle/LiveData;->mVersion:I

    if-lt v2, v3, :cond_2

    .line 130
    goto :goto_0

    .line 132
    :cond_2
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/lifecycle/LiveData;->mVersion:I

    iput v3, v2, Landroidx/lifecycle/LiveData$ObserverWrapper;->mLastVersion:I

    .line 133
    move-object v2, v1

    iget-object v2, v2, Landroidx/lifecycle/LiveData$ObserverWrapper;->mObserver:Landroidx/lifecycle/Observer;

    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    invoke-interface {v2, v3}, Landroidx/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    .line 134
    goto :goto_0
.end method


# virtual methods
.method changeActiveCounter(I)V
    .locals 10
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 378
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    iget v6, v6, Landroidx/lifecycle/LiveData;->mActiveCount:I

    move v2, v6

    .line 379
    move-object v6, v0

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Landroidx/lifecycle/LiveData;->mActiveCount:I

    move v8, v1

    add-int/2addr v7, v8

    iput v7, v6, Landroidx/lifecycle/LiveData;->mActiveCount:I

    .line 380
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/lifecycle/LiveData;->mChangingActiveState:Z

    if-eqz v6, :cond_0

    .line 398
    :goto_0
    return-void

    .line 383
    :cond_0
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/lifecycle/LiveData;->mChangingActiveState:Z

    .line 385
    :goto_1
    move v6, v2

    move-object v7, v0

    :try_start_0
    iget v7, v7, Landroidx/lifecycle/LiveData;->mActiveCount:I

    if-eq v6, v7, :cond_5

    .line 386
    move v6, v2

    if-nez v6, :cond_2

    move-object v6, v0

    iget v6, v6, Landroidx/lifecycle/LiveData;->mActiveCount:I

    if-lez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    move v3, v6

    .line 387
    move v6, v2

    if-lez v6, :cond_3

    move-object v6, v0

    iget v6, v6, Landroidx/lifecycle/LiveData;->mActiveCount:I

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_3
    move v4, v6

    .line 388
    move-object v6, v0

    iget v6, v6, Landroidx/lifecycle/LiveData;->mActiveCount:I

    move v2, v6

    .line 389
    move v6, v3

    if-eqz v6, :cond_4

    .line 390
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->onActive()V

    .line 394
    :cond_1
    :goto_4
    goto :goto_1

    .line 386
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 387
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 391
    :cond_4
    move v6, v4

    if-eqz v6, :cond_1

    .line 392
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->onInactive()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 396
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/lifecycle/LiveData;->mChangingActiveState:Z

    .line 397
    move-object v6, v5

    throw v6

    .line 396
    :cond_5
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/lifecycle/LiveData;->mChangingActiveState:Z

    .line 398
    goto :goto_0
.end method

.method dispatchingValue(Landroidx/lifecycle/LiveData$ObserverWrapper;)V
    .locals 5
    .param p1    # Landroidx/lifecycle/LiveData$ObserverWrapper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData",
            "<TT;>.ObserverWrapper;)V"
        }
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/lifecycle/LiveData;->mDispatchingValue:Z

    if-eqz v3, :cond_0

    .line 139
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/lifecycle/LiveData;->mDispatchInvalidated:Z

    .line 159
    :goto_0
    return-void

    .line 142
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/lifecycle/LiveData;->mDispatchingValue:Z

    .line 144
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/lifecycle/LiveData;->mDispatchInvalidated:Z

    .line 145
    move-object v3, v1

    if-eqz v3, :cond_3

    .line 146
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/lifecycle/LiveData;->considerNotify(Landroidx/lifecycle/LiveData$ObserverWrapper;)V

    .line 147
    const/4 v3, 0x0

    move-object v1, v3

    .line 157
    :cond_2
    :goto_1
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/lifecycle/LiveData;->mDispatchInvalidated:Z

    if-nez v3, :cond_1

    .line 158
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/lifecycle/LiveData;->mDispatchingValue:Z

    .line 159
    goto :goto_0

    .line 149
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    .line 150
    invoke-virtual {v3}, Landroidx/arch/core/internal/SafeIterableMap;->iteratorWithAdditions()Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;

    move-result-object v3

    move-object v2, v3

    :cond_4
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 151
    move-object v3, v0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/LiveData$ObserverWrapper;

    invoke-direct {v3, v4}, Landroidx/lifecycle/LiveData;->considerNotify(Landroidx/lifecycle/LiveData$ObserverWrapper;)V

    .line 152
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/lifecycle/LiveData;->mDispatchInvalidated:Z

    if-eqz v3, :cond_4

    .line 153
    goto :goto_1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 322
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    move-object v1, v2

    .line 323
    move-object v2, v1

    sget-object v3, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    .line 324
    move-object v2, v1

    move-object v0, v2

    .line 326
    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method getVersion()I
    .locals 2

    .prologue
    .line 330
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/lifecycle/LiveData;->mVersion:I

    move v0, v1

    return v0
.end method

.method public hasActiveObservers()Z
    .locals 2

    .prologue
    .line 373
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/lifecycle/LiveData;->mActiveCount:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasObservers()Z
    .locals 2

    .prologue
    .line 363
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v1}, Landroidx/arch/core/internal/SafeIterableMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 11
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Observer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 191
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string v5, "observe"

    invoke-static {v5}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 192
    move-object v5, v1

    invoke-interface {v5}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v5

    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v5, v6, :cond_0

    .line 206
    :goto_0
    return-void

    .line 196
    :cond_0
    new-instance v5, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v6, v7, v8, v9}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    move-object v3, v5

    .line 197
    move-object v5, v0

    iget-object v5, v5, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroidx/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/lifecycle/LiveData$ObserverWrapper;

    move-object v4, v5

    .line 198
    move-object v5, v4

    if-eqz v5, :cond_1

    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/lifecycle/LiveData$ObserverWrapper;->isAttachedTo(Landroidx/lifecycle/LifecycleOwner;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 199
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "Cannot add the same observer with different lifecycles"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 202
    :cond_1
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 203
    goto :goto_0

    .line 205
    :cond_2
    move-object v5, v1

    invoke-interface {v5}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 206
    goto :goto_0
.end method

.method public observeForever(Landroidx/lifecycle/Observer;)V
    .locals 9
    .param p1    # Landroidx/lifecycle/Observer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 224
    move-object v0, p0

    move-object v1, p1

    const-string v4, "observeForever"

    invoke-static {v4}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 225
    new-instance v4, Landroidx/lifecycle/LiveData$AlwaysActiveObserver;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Landroidx/lifecycle/LiveData$AlwaysActiveObserver;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    move-object v2, v4

    .line 226
    move-object v4, v0

    iget-object v4, v4, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/LiveData$ObserverWrapper;

    move-object v3, v4

    .line 227
    move-object v4, v3

    instance-of v4, v4, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    if-eqz v4, :cond_0

    .line 228
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Cannot add the same observer with different lifecycles"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 231
    :cond_0
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 235
    :goto_0
    return-void

    .line 234
    :cond_1
    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/lifecycle/LiveData$AlwaysActiveObserver;->activeStateChanged(Z)V

    .line 235
    goto :goto_0
.end method

.method protected onActive()V
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method protected onInactive()V
    .locals 0

    .prologue
    .line 354
    return-void
.end method

.method protected postValue(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 286
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroidx/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v3, v6

    monitor-enter v5

    .line 287
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    sget-object v6, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v2, v5

    .line 288
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    .line 289
    move-object v5, v3

    monitor-exit v5

    .line 290
    move v5, v2

    if-nez v5, :cond_1

    .line 294
    :goto_1
    return-void

    .line 287
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 289
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5

    .line 293
    :cond_1
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/lifecycle/LiveData;->mPostValueRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroidx/arch/core/executor/ArchTaskExecutor;->postToMainThread(Ljava/lang/Runnable;)V

    .line 294
    goto :goto_1
.end method

.method public removeObserver(Landroidx/lifecycle/Observer;)V
    .locals 5
    .param p1    # Landroidx/lifecycle/Observer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 244
    move-object v0, p0

    move-object v1, p1

    const-string v3, "removeObserver"

    invoke-static {v3}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 245
    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/arch/core/internal/SafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/LiveData$ObserverWrapper;

    move-object v2, v3

    .line 246
    move-object v3, v2

    if-nez v3, :cond_0

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData$ObserverWrapper;->detachObserver()V

    .line 250
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/lifecycle/LiveData$ObserverWrapper;->activeStateChanged(Z)V

    .line 251
    goto :goto_0
.end method

.method public removeObservers(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 6
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 261
    move-object v0, p0

    move-object v1, p1

    const-string v4, "removeObservers"

    invoke-static {v4}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 262
    move-object v4, v0

    iget-object v4, v4, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v4}, Landroidx/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v3, v4

    .line 263
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/LiveData$ObserverWrapper;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/lifecycle/LiveData$ObserverWrapper;->isAttachedTo(Landroidx/lifecycle/LifecycleOwner;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 264
    move-object v4, v0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/lifecycle/Observer;

    invoke-virtual {v4, v5}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 266
    :cond_0
    goto :goto_0

    .line 267
    :cond_1
    return-void
.end method

.method protected setValue(Ljava/lang/Object;)V
    .locals 6
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 306
    move-object v0, p0

    move-object v1, p1

    const-string v2, "setValue"

    invoke-static {v2}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 307
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroidx/lifecycle/LiveData;->mVersion:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroidx/lifecycle/LiveData;->mVersion:I

    .line 308
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    .line 309
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/lifecycle/LiveData;->dispatchingValue(Landroidx/lifecycle/LiveData$ObserverWrapper;)V

    .line 310
    return-void
.end method
