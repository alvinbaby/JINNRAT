.class public abstract Lcom/google/firebase/storage/StorageTask;
.super Lcom/google/firebase/storage/ControllableTask;
.source "com.google.firebase:firebase-storage@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/storage/StorageTask$SnapshotBase;,
        Lcom/google/firebase/storage/StorageTask$ProvideError;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT::",
        "Lcom/google/firebase/storage/StorageTask$ProvideError;",
        ">",
        "Lcom/google/firebase/storage/ControllableTask",
        "<TResultT;>;"
    }
.end annotation


# static fields
.field static final INTERNAL_STATE_CANCELED:I = 0x100

.field static final INTERNAL_STATE_CANCELING:I = 0x20

.field static final INTERNAL_STATE_FAILURE:I = 0x40

.field static final INTERNAL_STATE_IN_PROGRESS:I = 0x4

.field static final INTERNAL_STATE_NOT_STARTED:I = 0x1

.field static final INTERNAL_STATE_PAUSED:I = 0x10

.field static final INTERNAL_STATE_PAUSING:I = 0x8

.field static final INTERNAL_STATE_QUEUED:I = 0x2

.field static final INTERNAL_STATE_SUCCESS:I = 0x80

.field static final STATES_CANCELED:I = 0x100

.field static final STATES_COMPLETE:I = 0x1c0

.field static final STATES_FAILURE:I = 0x40

.field static final STATES_INPROGRESS:I = -0x1d1

.field static final STATES_PAUSED:I = 0x10

.field static final STATES_SUCCESS:I = 0x80

.field private static final TAG:Ljava/lang/String; = "StorageTask"

.field private static final ValidTaskInitiatedStateChanges:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final ValidUserInitiatedStateChanges:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field final cancelManager:Lcom/google/firebase/storage/TaskListenerImpl;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/TaskListenerImpl",
            "<",
            "Lcom/google/android/gms/tasks/OnCanceledListener;",
            "TResultT;>;"
        }
    .end annotation
.end field

.field final completeListener:Lcom/google/firebase/storage/TaskListenerImpl;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/TaskListenerImpl",
            "<",
            "Lcom/google/android/gms/tasks/OnCompleteListener",
            "<TResultT;>;TResultT;>;"
        }
    .end annotation
.end field

.field private volatile currentState:I

.field final failureManager:Lcom/google/firebase/storage/TaskListenerImpl;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/TaskListenerImpl",
            "<",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            "TResultT;>;"
        }
    .end annotation
.end field

.field private finalResult:Lcom/google/firebase/storage/StorageTask$ProvideError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResultT;"
        }
    .end annotation
.end field

.field final pausedManager:Lcom/google/firebase/storage/TaskListenerImpl;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/TaskListenerImpl",
            "<",
            "Lcom/google/firebase/storage/OnPausedListener",
            "<-TResultT;>;TResultT;>;"
        }
    .end annotation
.end field

.field final progressManager:Lcom/google/firebase/storage/TaskListenerImpl;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/TaskListenerImpl",
            "<",
            "Lcom/google/firebase/storage/OnProgressListener",
            "<-TResultT;>;TResultT;>;"
        }
    .end annotation
.end field

.field final successManager:Lcom/google/firebase/storage/TaskListenerImpl;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/TaskListenerImpl",
            "<",
            "Lcom/google/android/gms/tasks/OnSuccessListener",
            "<-TResultT;>;TResultT;>;"
        }
    .end annotation
.end field

.field protected final syncObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/16 v8, 0x40

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/storage/StorageTask;->ValidUserInitiatedStateChanges:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/storage/StorageTask;->ValidTaskInitiatedStateChanges:Ljava/util/HashMap;

    .line 66
    sget-object v0, Lcom/google/firebase/storage/StorageTask;->ValidUserInitiatedStateChanges:Ljava/util/HashMap;

    .line 67
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v5, [Ljava/lang/Integer;

    const/16 v4, 0x10

    .line 68
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/16 v4, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 66
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/google/firebase/storage/StorageTask;->ValidUserInitiatedStateChanges:Ljava/util/HashMap;

    .line 71
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v5, [Ljava/lang/Integer;

    const/16 v4, 0x8

    .line 72
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/16 v4, 0x20

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 70
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/google/firebase/storage/StorageTask;->ValidUserInitiatedStateChanges:Ljava/util/HashMap;

    const/4 v1, 0x4

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v5, [Ljava/lang/Integer;

    const/16 v4, 0x8

    .line 76
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/16 v4, 0x20

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 74
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/google/firebase/storage/StorageTask;->ValidUserInitiatedStateChanges:Ljava/util/HashMap;

    const/16 v1, 0x10

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v5, [Ljava/lang/Integer;

    .line 80
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/16 v4, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 78
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/google/firebase/storage/StorageTask;->ValidUserInitiatedStateChanges:Ljava/util/HashMap;

    .line 83
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v5, [Ljava/lang/Integer;

    .line 84
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/16 v4, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 82
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/google/firebase/storage/StorageTask;->ValidTaskInitiatedStateChanges:Ljava/util/HashMap;

    .line 87
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v5, [Ljava/lang/Integer;

    .line 88
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 86
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/google/firebase/storage/StorageTask;->ValidTaskInitiatedStateChanges:Ljava/util/HashMap;

    .line 91
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v9, [Ljava/lang/Integer;

    const/4 v4, 0x4

    .line 94
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 93
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 90
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/google/firebase/storage/StorageTask;->ValidTaskInitiatedStateChanges:Ljava/util/HashMap;

    const/4 v1, 0x4

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v9, [Ljava/lang/Integer;

    const/4 v4, 0x4

    .line 100
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 99
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 96
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/google/firebase/storage/StorageTask;->ValidTaskInitiatedStateChanges:Ljava/util/HashMap;

    const/16 v1, 0x8

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v9, [Ljava/lang/Integer;

    const/16 v4, 0x10

    .line 105
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 102
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/google/firebase/storage/StorageTask;->ValidTaskInitiatedStateChanges:Ljava/util/HashMap;

    const/16 v1, 0x20

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v9, [Ljava/lang/Integer;

    const/16 v4, 0x100

    .line 111
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 110
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 107
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 167
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-direct {p0}, Lcom/google/firebase/storage/ControllableTask;-><init>()V

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask;->syncObject:Ljava/lang/Object;

    .line 116
    new-instance v0, Lcom/google/firebase/storage/TaskListenerImpl;

    const/16 v1, 0x80

    invoke-static {p0}, Lcom/google/firebase/storage/StorageTask$$Lambda$1;->lambdaFactory$(Lcom/google/firebase/storage/StorageTask;)Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/storage/TaskListenerImpl;-><init>(Lcom/google/firebase/storage/StorageTask;ILcom/google/firebase/storage/TaskListenerImpl$OnRaise;)V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask;->successManager:Lcom/google/firebase/storage/TaskListenerImpl;

    .line 126
    new-instance v0, Lcom/google/firebase/storage/TaskListenerImpl;

    const/16 v1, 0x40

    invoke-static {p0}, Lcom/google/firebase/storage/StorageTask$$Lambda$4;->lambdaFactory$(Lcom/google/firebase/storage/StorageTask;)Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/storage/TaskListenerImpl;-><init>(Lcom/google/firebase/storage/StorageTask;ILcom/google/firebase/storage/TaskListenerImpl$OnRaise;)V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask;->failureManager:Lcom/google/firebase/storage/TaskListenerImpl;

    .line 136
    new-instance v0, Lcom/google/firebase/storage/TaskListenerImpl;

    const/16 v1, 0x1c0

    invoke-static {p0}, Lcom/google/firebase/storage/StorageTask$$Lambda$5;->lambdaFactory$(Lcom/google/firebase/storage/StorageTask;)Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/storage/TaskListenerImpl;-><init>(Lcom/google/firebase/storage/StorageTask;ILcom/google/firebase/storage/TaskListenerImpl$OnRaise;)V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask;->completeListener:Lcom/google/firebase/storage/TaskListenerImpl;

    .line 146
    new-instance v0, Lcom/google/firebase/storage/TaskListenerImpl;

    const/16 v1, 0x100

    invoke-static {p0}, Lcom/google/firebase/storage/StorageTask$$Lambda$6;->lambdaFactory$(Lcom/google/firebase/storage/StorageTask;)Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/storage/TaskListenerImpl;-><init>(Lcom/google/firebase/storage/StorageTask;ILcom/google/firebase/storage/TaskListenerImpl$OnRaise;)V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask;->cancelManager:Lcom/google/firebase/storage/TaskListenerImpl;

    .line 156
    new-instance v0, Lcom/google/firebase/storage/TaskListenerImpl;

    const/16 v1, -0x1d1

    invoke-static {}, Lcom/google/firebase/storage/StorageTask$$Lambda$7;->lambdaFactory$()Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/storage/TaskListenerImpl;-><init>(Lcom/google/firebase/storage/StorageTask;ILcom/google/firebase/storage/TaskListenerImpl$OnRaise;)V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask;->progressManager:Lcom/google/firebase/storage/TaskListenerImpl;

    .line 160
    new-instance v0, Lcom/google/firebase/storage/TaskListenerImpl;

    const/16 v1, 0x10

    invoke-static {}, Lcom/google/firebase/storage/StorageTask$$Lambda$8;->lambdaFactory$()Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/storage/TaskListenerImpl;-><init>(Lcom/google/firebase/storage/StorageTask;ILcom/google/firebase/storage/TaskListenerImpl$OnRaise;)V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask;->pausedManager:Lcom/google/firebase/storage/TaskListenerImpl;

    .line 168
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/firebase/storage/StorageTask;->currentState:I

    .line 169
    return-void
.end method

.method private continueWithImpl(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/Continuation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContinuationResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation",
            "<TResultT;TContinuationResultT;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TContinuationResultT;>;"
        }
    .end annotation

    .prologue
    .line 887
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p2, "continuation":Lcom/google/android/gms/tasks/Continuation;, "Lcom/google/android/gms/tasks/Continuation<TResultT;TContinuationResultT;>;"
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 888
    .local v0, "source":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<TContinuationResultT;>;"
    iget-object v1, p0, Lcom/google/firebase/storage/StorageTask;->completeListener:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v2, 0x0

    invoke-static {p0, p2, v0}, Lcom/google/firebase/storage/StorageTask$$Lambda$9;->lambdaFactory$(Lcom/google/firebase/storage/StorageTask;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/tasks/OnCompleteListener;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 910
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method private continueWithTaskImpl(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/Continuation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContinuationResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation",
            "<TResultT;",
            "Lcom/google/android/gms/tasks/Task",
            "<TContinuationResultT;>;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TContinuationResultT;>;"
        }
    .end annotation

    .prologue
    .line 985
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p2, "continuation":Lcom/google/android/gms/tasks/Continuation;, "Lcom/google/android/gms/tasks/Continuation<TResultT;Lcom/google/android/gms/tasks/Task<TContinuationResultT;>;>;"
    new-instance v1, Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/CancellationTokenSource;-><init>()V

    .line 986
    .local v1, "cancellationTokenSource":Lcom/google/android/gms/tasks/CancellationTokenSource;
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/CancellationTokenSource;->getToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object v0

    .line 987
    .local v0, "cancellationToken":Lcom/google/android/gms/tasks/CancellationToken;
    new-instance v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>(Lcom/google/android/gms/tasks/CancellationToken;)V

    .line 989
    .local v2, "source":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<TContinuationResultT;>;"
    iget-object v3, p0, Lcom/google/firebase/storage/StorageTask;->completeListener:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v4, 0x0

    invoke-static {p0, p2, v2, v1}, Lcom/google/firebase/storage/StorageTask$$Lambda$10;->lambdaFactory$(Lcom/google/firebase/storage/StorageTask;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/CancellationTokenSource;)Lcom/google/android/gms/tasks/OnCompleteListener;

    move-result-object v5

    invoke-virtual {v3, v4, p1, v5}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 1020
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    return-object v3
.end method

.method private ensureFinalState()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    const/4 v2, 0x0

    .line 1086
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1089
    const/16 v0, 0x100

    invoke-virtual {p0, v0, v2}, Lcom/google/firebase/storage/StorageTask;->tryChangeState(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1090
    const/16 v0, 0x40

    invoke-virtual {p0, v0, v2}, Lcom/google/firebase/storage/StorageTask;->tryChangeState(IZ)Z

    .line 1093
    :cond_0
    return-void
.end method

.method private getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation

    .prologue
    .line 444
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->finalResult:Lcom/google/firebase/storage/StorageTask$ProvideError;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->finalResult:Lcom/google/firebase/storage/StorageTask$ProvideError;

    .line 455
    :goto_0
    return-object v0

    .line 448
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->isComplete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 449
    const/4 v0, 0x0

    goto :goto_0

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->finalResult:Lcom/google/firebase/storage/StorageTask$ProvideError;

    if-nez v0, :cond_2

    .line 453
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->snapState()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask;->finalResult:Lcom/google/firebase/storage/StorageTask$ProvideError;

    .line 455
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->finalResult:Lcom/google/firebase/storage/StorageTask$ProvideError;

    goto :goto_0
.end method

.method private getStateString(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1110
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    sparse-switch p1, :sswitch_data_0

    .line 1130
    const-string v0, "Unknown Internal State!"

    :goto_0
    return-object v0

    .line 1112
    :sswitch_0
    const-string v0, "INTERNAL_STATE_NOT_STARTED"

    goto :goto_0

    .line 1114
    :sswitch_1
    const-string v0, "INTERNAL_STATE_QUEUED"

    goto :goto_0

    .line 1116
    :sswitch_2
    const-string v0, "INTERNAL_STATE_IN_PROGRESS"

    goto :goto_0

    .line 1118
    :sswitch_3
    const-string v0, "INTERNAL_STATE_PAUSING"

    goto :goto_0

    .line 1120
    :sswitch_4
    const-string v0, "INTERNAL_STATE_PAUSED"

    goto :goto_0

    .line 1122
    :sswitch_5
    const-string v0, "INTERNAL_STATE_CANCELING"

    goto :goto_0

    .line 1124
    :sswitch_6
    const-string v0, "INTERNAL_STATE_FAILURE"

    goto :goto_0

    .line 1126
    :sswitch_7
    const-string v0, "INTERNAL_STATE_SUCCESS"

    goto :goto_0

    .line 1128
    :sswitch_8
    const-string v0, "INTERNAL_STATE_CANCELED"

    goto :goto_0

    .line 1110
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
    .end sparse-switch
.end method

.method private getStateString([I)Ljava/lang/String;
    .locals 7
    .param p1, "states"    # [I

    .prologue
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    const/4 v3, 0x0

    .line 1096
    array-length v2, p1

    if-nez v2, :cond_0

    .line 1097
    const-string v2, ""

    .line 1106
    :goto_0
    return-object v2

    .line 1100
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1102
    .local v0, "builder":Ljava/lang/StringBuilder;
    array-length v4, p1

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_1

    aget v1, p1, v2

    .line 1103
    .local v1, "state":I
    invoke-direct {p0, v1}, Lcom/google/firebase/storage/StorageTask;->getStateString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1106
    .end local v1    # "state":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static synthetic lambda$continueWithImpl$4(Lcom/google/firebase/storage/StorageTask;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/Task;)V
    .locals 3
    .param p1, "continuation"    # Lcom/google/android/gms/tasks/Continuation;
    .param p2, "source"    # Lcom/google/android/gms/tasks/TaskCompletionSource;
    .param p3, "task"    # Lcom/google/android/gms/tasks/Task;

    .prologue
    .line 894
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    :try_start_0
    invoke-interface {p1, p0}, Lcom/google/android/gms/tasks/Continuation;->then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 906
    .local v1, "result":Ljava/lang/Object;, "TContinuationResultT;"
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 907
    invoke-virtual {p2, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 909
    .end local v1    # "result":Ljava/lang/Object;, "TContinuationResultT;"
    :cond_0
    :goto_0
    return-void

    .line 895
    :catch_0
    move-exception v0

    .line 896
    .local v0, "e":Lcom/google/android/gms/tasks/RuntimeExecutionException;
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Exception;

    if-eqz v2, :cond_1

    .line 897
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 899
    :cond_1
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 902
    .end local v0    # "e":Lcom/google/android/gms/tasks/RuntimeExecutionException;
    :catch_1
    move-exception v0

    .line 903
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic lambda$continueWithTaskImpl$5(Lcom/google/firebase/storage/StorageTask;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/CancellationTokenSource;Lcom/google/android/gms/tasks/Task;)V
    .locals 4
    .param p1, "continuation"    # Lcom/google/android/gms/tasks/Continuation;
    .param p2, "source"    # Lcom/google/android/gms/tasks/TaskCompletionSource;
    .param p3, "cancellationTokenSource"    # Lcom/google/android/gms/tasks/CancellationTokenSource;
    .param p4, "task"    # Lcom/google/android/gms/tasks/Task;

    .prologue
    .line 995
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    :try_start_0
    invoke-interface {p1, p0}, Lcom/google/android/gms/tasks/Continuation;->then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1008
    .local v1, "resultTask":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<TContinuationResultT;>;"
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1009
    if-nez v1, :cond_2

    .line 1010
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Continuation returned null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 1018
    .end local v1    # "resultTask":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<TContinuationResultT;>;"
    :cond_0
    :goto_0
    return-void

    .line 996
    :catch_0
    move-exception v0

    .line 997
    .local v0, "e":Lcom/google/android/gms/tasks/RuntimeExecutionException;
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Exception;

    if-eqz v2, :cond_1

    .line 998
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1000
    :cond_1
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1003
    .end local v0    # "e":Lcom/google/android/gms/tasks/RuntimeExecutionException;
    :catch_1
    move-exception v0

    .line 1004
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1014
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "resultTask":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<TContinuationResultT;>;"
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/google/firebase/storage/StorageTask$$Lambda$16;->lambdaFactory$(Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/tasks/OnSuccessListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 1015
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/google/firebase/storage/StorageTask$$Lambda$17;->lambdaFactory$(Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/tasks/OnFailureListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 1016
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lcom/google/firebase/storage/StorageTask$$Lambda$18;->lambdaFactory$(Lcom/google/android/gms/tasks/CancellationTokenSource;)Lcom/google/android/gms/tasks/OnCanceledListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0
.end method

.method static synthetic lambda$getRunnable$7(Lcom/google/firebase/storage/StorageTask;)V
    .locals 1

    .prologue
    .line 1072
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1074
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->ensureFinalState()V

    .line 1076
    return-void

    .line 1074
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->ensureFinalState()V

    throw v0
.end method

.method static synthetic lambda$new$0(Lcom/google/firebase/storage/StorageTask;Lcom/google/android/gms/tasks/OnSuccessListener;Lcom/google/firebase/storage/StorageTask$ProvideError;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/tasks/OnSuccessListener;
    .param p2, "snappedState"    # Lcom/google/firebase/storage/StorageTask$ProvideError;

    .prologue
    .line 122
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskManager;->getInstance()Lcom/google/firebase/storage/StorageTaskManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/storage/StorageTaskManager;->unRegister(Lcom/google/firebase/storage/StorageTask;)V

    .line 123
    invoke-interface {p1, p2}, Lcom/google/android/gms/tasks/OnSuccessListener;->onSuccess(Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method static synthetic lambda$new$1(Lcom/google/firebase/storage/StorageTask;Lcom/google/android/gms/tasks/OnFailureListener;Lcom/google/firebase/storage/StorageTask$ProvideError;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/tasks/OnFailureListener;
    .param p2, "snappedState"    # Lcom/google/firebase/storage/StorageTask$ProvideError;

    .prologue
    .line 132
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskManager;->getInstance()Lcom/google/firebase/storage/StorageTaskManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/storage/StorageTaskManager;->unRegister(Lcom/google/firebase/storage/StorageTask;)V

    .line 133
    invoke-interface {p2}, Lcom/google/firebase/storage/StorageTask$ProvideError;->getError()Ljava/lang/Exception;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/tasks/OnFailureListener;->onFailure(Ljava/lang/Exception;)V

    .line 134
    return-void
.end method

.method static synthetic lambda$new$2(Lcom/google/firebase/storage/StorageTask;Lcom/google/android/gms/tasks/OnCompleteListener;Lcom/google/firebase/storage/StorageTask$ProvideError;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/tasks/OnCompleteListener;
    .param p2, "snappedState"    # Lcom/google/firebase/storage/StorageTask$ProvideError;

    .prologue
    .line 142
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskManager;->getInstance()Lcom/google/firebase/storage/StorageTaskManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/storage/StorageTaskManager;->unRegister(Lcom/google/firebase/storage/StorageTask;)V

    .line 143
    invoke-interface {p1, p0}, Lcom/google/android/gms/tasks/OnCompleteListener;->onComplete(Lcom/google/android/gms/tasks/Task;)V

    .line 144
    return-void
.end method

.method static synthetic lambda$new$3(Lcom/google/firebase/storage/StorageTask;Lcom/google/android/gms/tasks/OnCanceledListener;Lcom/google/firebase/storage/StorageTask$ProvideError;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/tasks/OnCanceledListener;
    .param p2, "snappedState"    # Lcom/google/firebase/storage/StorageTask$ProvideError;

    .prologue
    .line 152
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskManager;->getInstance()Lcom/google/firebase/storage/StorageTaskManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/storage/StorageTaskManager;->unRegister(Lcom/google/firebase/storage/StorageTask;)V

    .line 153
    invoke-interface {p1}, Lcom/google/android/gms/tasks/OnCanceledListener;->onCanceled()V

    .line 154
    return-void
.end method

.method static synthetic lambda$successTaskImpl$6(Lcom/google/android/gms/tasks/SuccessContinuation;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/CancellationTokenSource;Lcom/google/firebase/storage/StorageTask$ProvideError;)V
    .locals 3
    .param p0, "continuation"    # Lcom/google/android/gms/tasks/SuccessContinuation;
    .param p1, "source"    # Lcom/google/android/gms/tasks/TaskCompletionSource;
    .param p2, "cancellationTokenSource"    # Lcom/google/android/gms/tasks/CancellationTokenSource;
    .param p3, "result"    # Lcom/google/firebase/storage/StorageTask$ProvideError;

    .prologue
    .line 1038
    :try_start_0
    invoke-interface {p0, p3}, Lcom/google/android/gms/tasks/SuccessContinuation;->then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1051
    .local v1, "resultTask":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<TContinuationResultT;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/firebase/storage/StorageTask$$Lambda$13;->lambdaFactory$(Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/tasks/OnSuccessListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 1052
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/firebase/storage/StorageTask$$Lambda$14;->lambdaFactory$(Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/tasks/OnFailureListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 1053
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/google/firebase/storage/StorageTask$$Lambda$15;->lambdaFactory$(Lcom/google/android/gms/tasks/CancellationTokenSource;)Lcom/google/android/gms/tasks/OnCanceledListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    .line 1054
    .end local v1    # "resultTask":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<TContinuationResultT;>;"
    :goto_0
    return-void

    .line 1039
    :catch_0
    move-exception v0

    .line 1040
    .local v0, "e":Lcom/google/android/gms/tasks/RuntimeExecutionException;
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Exception;

    if-eqz v2, :cond_0

    .line 1041
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1043
    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1046
    .end local v0    # "e":Lcom/google/android/gms/tasks/RuntimeExecutionException;
    :catch_1
    move-exception v0

    .line 1047
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private successTaskImpl(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/SuccessContinuation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContinuationResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/SuccessContinuation",
            "<TResultT;TContinuationResultT;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TContinuationResultT;>;"
        }
    .end annotation

    .prologue
    .line 1027
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p2, "continuation":Lcom/google/android/gms/tasks/SuccessContinuation;, "Lcom/google/android/gms/tasks/SuccessContinuation<TResultT;TContinuationResultT;>;"
    new-instance v1, Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/CancellationTokenSource;-><init>()V

    .line 1028
    .local v1, "cancellationTokenSource":Lcom/google/android/gms/tasks/CancellationTokenSource;
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/CancellationTokenSource;->getToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object v0

    .line 1029
    .local v0, "cancellationToken":Lcom/google/android/gms/tasks/CancellationToken;
    new-instance v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>(Lcom/google/android/gms/tasks/CancellationToken;)V

    .line 1032
    .local v2, "source":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<TContinuationResultT;>;"
    iget-object v3, p0, Lcom/google/firebase/storage/StorageTask;->successManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v4, 0x0

    invoke-static {p2, v2, v1}, Lcom/google/firebase/storage/StorageTask$$Lambda$11;->lambdaFactory$(Lcom/google/android/gms/tasks/SuccessContinuation;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/CancellationTokenSource;)Lcom/google/android/gms/tasks/OnSuccessListener;

    move-result-object v5

    invoke-virtual {v3, v4, p1, v5}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 1055
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public bridge synthetic addOnCanceledListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnCanceledListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnCanceledListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/android/gms/tasks/OnCanceledListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageTask;->addOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addOnCanceledListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnCanceledListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnCanceledListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public addOnCanceledListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/google/android/gms/tasks/OnCanceledListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnCanceledListener;",
            ")",
            "Lcom/google/firebase/storage/StorageTask",
            "<TResultT;>;"
        }
    .end annotation

    .prologue
    .line 838
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->cancelManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 841
    return-object p0
.end method

.method public addOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1, "listener"    # Lcom/google/android/gms/tasks/OnCanceledListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnCanceledListener;",
            ")",
            "Lcom/google/firebase/storage/StorageTask",
            "<TResultT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    const/4 v1, 0x0

    .line 799
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->cancelManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v0, v1, v1, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 801
    return-object p0
.end method

.method public addOnCanceledListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/google/android/gms/tasks/OnCanceledListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnCanceledListener;",
            ")",
            "Lcom/google/firebase/storage/StorageTask",
            "<TResultT;>;"
        }
    .end annotation

    .prologue
    .line 817
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->cancelManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 820
    return-object p0
.end method

.method public bridge synthetic addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnCompleteListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/android/gms/tasks/OnCompleteListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageTask;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnCompleteListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnCompleteListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnCompleteListener",
            "<TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask",
            "<TResultT;>;"
        }
    .end annotation

    .prologue
    .line 771
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p2, "listener":Lcom/google/android/gms/tasks/OnCompleteListener;, "Lcom/google/android/gms/tasks/OnCompleteListener<TResultT;>;"
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->completeListener:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 775
    return-object p0
.end method

.method public addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1    # Lcom/google/android/gms/tasks/OnCompleteListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnCompleteListener",
            "<TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask",
            "<TResultT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p1, "listener":Lcom/google/android/gms/tasks/OnCompleteListener;, "Lcom/google/android/gms/tasks/OnCompleteListener<TResultT;>;"
    const/4 v1, 0x0

    .line 729
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->completeListener:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v0, v1, v1, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 731
    return-object p0
.end method

.method public addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnCompleteListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnCompleteListener",
            "<TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask",
            "<TResultT;>;"
        }
    .end annotation

    .prologue
    .line 749
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p2, "listener":Lcom/google/android/gms/tasks/OnCompleteListener;, "Lcom/google/android/gms/tasks/OnCompleteListener<TResultT;>;"
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->completeListener:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 753
    return-object p0
.end method

.method public bridge synthetic addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnFailureListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/android/gms/tasks/OnFailureListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageTask;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnFailureListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/google/android/gms/tasks/OnFailureListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/firebase/storage/StorageTask",
            "<TResultT;>;"
        }
    .end annotation

    .prologue
    .line 700
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->failureManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 704
    return-object p0
.end method

.method public addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1, "listener"    # Lcom/google/android/gms/tasks/OnFailureListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/firebase/storage/StorageTask",
            "<TResultT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    const/4 v1, 0x0

    .line 657
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->failureManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v0, v1, v1, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 659
    return-object p0
.end method

.method public addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/google/android/gms/tasks/OnFailureListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/firebase/storage/StorageTask",
            "<TResultT;>;"
        }
    .end annotation

    .prologue
    .line 677
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->failureManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 681
    return-object p0
.end method

.method public bridge synthetic addOnPausedListener(Landroid/app/Activity;Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/ControllableTask;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/storage/OnPausedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnPausedListener(Landroid/app/Activity;Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addOnPausedListener(Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/ControllableTask;
    .locals 1
    .param p1    # Lcom/google/firebase/storage/OnPausedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageTask;->addOnPausedListener(Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addOnPausedListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/ControllableTask;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/storage/OnPausedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnPausedListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public addOnPausedListener(Landroid/app/Activity;Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/storage/OnPausedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/storage/OnPausedListener",
            "<-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask",
            "<TResultT;>;"
        }
    .end annotation

    .prologue
    .line 501
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p2, "listener":Lcom/google/firebase/storage/OnPausedListener;, "Lcom/google/firebase/storage/OnPausedListener<-TResultT;>;"
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->pausedManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 504
    return-object p0
.end method

.method public addOnPausedListener(Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1    # Lcom/google/firebase/storage/OnPausedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/OnPausedListener",
            "<-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask",
            "<TResultT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p1, "listener":Lcom/google/firebase/storage/OnPausedListener;, "Lcom/google/firebase/storage/OnPausedListener<-TResultT;>;"
    const/4 v1, 0x0

    .line 467
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->pausedManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v0, v1, v1, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 469
    return-object p0
.end method

.method public addOnPausedListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/storage/OnPausedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/firebase/storage/OnPausedListener",
            "<-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask",
            "<TResultT;>;"
        }
    .end annotation

    .prologue
    .line 482
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p2, "listener":Lcom/google/firebase/storage/OnPausedListener;, "Lcom/google/firebase/storage/OnPausedListener<-TResultT;>;"
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->pausedManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 485
    return-object p0
.end method

.method public bridge synthetic addOnProgressListener(Landroid/app/Activity;Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/CancellableTask;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/storage/OnProgressListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnProgressListener(Landroid/app/Activity;Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addOnProgressListener(Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/CancellableTask;
    .locals 1
    .param p1    # Lcom/google/firebase/storage/OnProgressListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageTask;->addOnProgressListener(Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addOnProgressListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/CancellableTask;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/storage/OnProgressListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnProgressListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public addOnProgressListener(Landroid/app/Activity;Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/storage/OnProgressListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/storage/OnProgressListener",
            "<-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask",
            "<TResultT;>;"
        }
    .end annotation

    .prologue
    .line 557
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p2, "listener":Lcom/google/firebase/storage/OnProgressListener;, "Lcom/google/firebase/storage/OnProgressListener<-TResultT;>;"
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->progressManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 560
    return-object p0
.end method

.method public addOnProgressListener(Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1    # Lcom/google/firebase/storage/OnProgressListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/OnProgressListener",
            "<-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask",
            "<TResultT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p1, "listener":Lcom/google/firebase/storage/OnProgressListener;, "Lcom/google/firebase/storage/OnProgressListener<-TResultT;>;"
    const/4 v1, 0x0

    .line 525
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->progressManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v0, v1, v1, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 527
    return-object p0
.end method

.method public addOnProgressListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/storage/OnProgressListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/firebase/storage/OnProgressListener",
            "<-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask",
            "<TResultT;>;"
        }
    .end annotation

    .prologue
    .line 540
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p2, "listener":Lcom/google/firebase/storage/OnProgressListener;, "Lcom/google/firebase/storage/OnProgressListener<-TResultT;>;"
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->progressManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 543
    return-object p0
.end method

.method public bridge synthetic addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnSuccessListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/android/gms/tasks/OnSuccessListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageTask;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnSuccessListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnSuccessListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnSuccessListener",
            "<-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask",
            "<TResultT;>;"
        }
    .end annotation

    .prologue
    .line 628
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p2, "listener":Lcom/google/android/gms/tasks/OnSuccessListener;, "Lcom/google/android/gms/tasks/OnSuccessListener<-TResultT;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->successManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 631
    return-object p0
.end method

.method public addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1    # Lcom/google/android/gms/tasks/OnSuccessListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnSuccessListener",
            "<-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask",
            "<TResultT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p1, "listener":Lcom/google/android/gms/tasks/OnSuccessListener;, "Lcom/google/android/gms/tasks/OnSuccessListener<-TResultT;>;"
    const/4 v1, 0x0

    .line 584
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->successManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v0, v1, v1, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 586
    return-object p0
.end method

.method public addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnSuccessListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnSuccessListener",
            "<-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask",
            "<TResultT;>;"
        }
    .end annotation

    .prologue
    .line 605
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p2, "listener":Lcom/google/android/gms/tasks/OnSuccessListener;, "Lcom/google/android/gms/tasks/OnSuccessListener<-TResultT;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->successManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 608
    return-object p0
.end method

.method public cancel()Z
    .locals 2

    .prologue
    .line 231
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/storage/StorageTask;->tryChangeState([IZ)Z

    move-result v0

    return v0

    :array_0
    .array-data 4
        0x100
        0x20
    .end array-data
.end method

.method public continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/android/gms/tasks/Continuation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContinuationResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Continuation",
            "<TResultT;TContinuationResultT;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TContinuationResultT;>;"
        }
    .end annotation

    .prologue
    .line 864
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p1, "continuation":Lcom/google/android/gms/tasks/Continuation;, "Lcom/google/android/gms/tasks/Continuation<TResultT;TContinuationResultT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/storage/StorageTask;->continueWithImpl(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/Continuation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContinuationResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation",
            "<TResultT;TContinuationResultT;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TContinuationResultT;>;"
        }
    .end annotation

    .prologue
    .line 879
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p2, "continuation":Lcom/google/android/gms/tasks/Continuation;, "Lcom/google/android/gms/tasks/Continuation<TResultT;TContinuationResultT;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->continueWithImpl(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/android/gms/tasks/Continuation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContinuationResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Continuation",
            "<TResultT;",
            "Lcom/google/android/gms/tasks/Task",
            "<TContinuationResultT;>;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TContinuationResultT;>;"
        }
    .end annotation

    .prologue
    .line 925
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p1, "continuation":Lcom/google/android/gms/tasks/Continuation;, "Lcom/google/android/gms/tasks/Continuation<TResultT;Lcom/google/android/gms/tasks/Task<TContinuationResultT;>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/storage/StorageTask;->continueWithTaskImpl(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/Continuation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContinuationResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation",
            "<TResultT;",
            "Lcom/google/android/gms/tasks/Task",
            "<TContinuationResultT;>;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TContinuationResultT;>;"
        }
    .end annotation

    .prologue
    .line 940
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p2, "continuation":Lcom/google/android/gms/tasks/Continuation;, "Lcom/google/android/gms/tasks/Continuation<TResultT;Lcom/google/android/gms/tasks/Task<TContinuationResultT;>;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->continueWithTaskImpl(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 313
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    if-nez v0, :cond_0

    .line 314
    const/4 v0, 0x0

    .line 316
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/storage/StorageTask$ProvideError;->getError()Ljava/lang/Exception;

    move-result-object v0

    goto :goto_0
.end method

.method getInternalState()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 331
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    iget v0, p0, Lcom/google/firebase/storage/StorageTask;->currentState:I

    return v0
.end method

.method public getResult()Lcom/google/firebase/storage/StorageTask$ProvideError;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v1

    if-nez v1, :cond_0

    .line 274
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 276
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/firebase/storage/StorageTask$ProvideError;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 277
    .local v0, "t":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 278
    new-instance v1, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 280
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v1

    return-object v1
.end method

.method public getResult(Ljava/lang/Class;)Lcom/google/firebase/storage/StorageTask$ProvideError;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class",
            "<TX;>;)TResultT;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 293
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p1, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v1

    if-nez v1, :cond_0

    .line 294
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 296
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/firebase/storage/StorageTask$ProvideError;->getError()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/firebase/storage/StorageTask$ProvideError;->getError()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 299
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/firebase/storage/StorageTask$ProvideError;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 300
    .local v0, "t":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 301
    new-instance v1, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 303
    :cond_2
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageTask;->getResult(Ljava/lang/Class;)Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    return-object v0
.end method

.method getRunnable()Ljava/lang/Runnable;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 1070
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-static {p0}, Lcom/google/firebase/storage/StorageTask$$Lambda$12;->lambdaFactory$(Lcom/google/firebase/storage/StorageTask;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public getSnapshot()Lcom/google/firebase/storage/StorageTask$ProvideError;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->snapState()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    return-object v0
.end method

.method abstract getStorage()Lcom/google/firebase/storage/StorageReference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end method

.method getSyncObject()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 336
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->syncObject:Ljava/lang/Object;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 2

    .prologue
    .line 249
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 237
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v0

    and-int/lit16 v0, v0, 0x1c0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInProgress()Z
    .locals 1

    .prologue
    .line 255
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v0

    and-int/lit16 v0, v0, -0x1d1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 261
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccessful()Z
    .locals 1

    .prologue
    .line 243
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCanceled()V
    .locals 0

    .prologue
    .line 441
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    return-void
.end method

.method protected onFailure()V
    .locals 0

    .prologue
    .line 437
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    return-void
.end method

.method protected onPaused()V
    .locals 0

    .prologue
    .line 435
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    return-void
.end method

.method protected onProgress()V
    .locals 0

    .prologue
    .line 433
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    return-void
.end method

.method protected onQueued()V
    .locals 0

    .prologue
    .line 431
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    return-void
.end method

.method protected onSuccess()V
    .locals 0

    .prologue
    .line 439
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    return-void
.end method

.method public onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/android/gms/tasks/SuccessContinuation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContinuationResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/SuccessContinuation",
            "<TResultT;TContinuationResultT;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TContinuationResultT;>;"
        }
    .end annotation

    .prologue
    .line 959
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p1, "continuation":Lcom/google/android/gms/tasks/SuccessContinuation;, "Lcom/google/android/gms/tasks/SuccessContinuation<TResultT;TContinuationResultT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/storage/StorageTask;->successTaskImpl(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/SuccessContinuation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContinuationResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/SuccessContinuation",
            "<TResultT;TContinuationResultT;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TContinuationResultT;>;"
        }
    .end annotation

    .prologue
    .line 978
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p2, "continuation":Lcom/google/android/gms/tasks/SuccessContinuation;, "Lcom/google/android/gms/tasks/SuccessContinuation<TResultT;TContinuationResultT;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->successTaskImpl(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public pause()Z
    .locals 2

    .prologue
    .line 221
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/storage/StorageTask;->tryChangeState([IZ)Z

    move-result v0

    return v0

    :array_0
    .array-data 4
        0x10
        0x8
    .end array-data
.end method

.method queue()Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    const/4 v0, 0x0

    .line 179
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/storage/StorageTask;->tryChangeState(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->schedule()V

    .line 181
    const/4 v0, 0x1

    .line 183
    :cond_0
    return v0
.end method

.method public removeOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/tasks/OnCanceledListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnCanceledListener;",
            ")",
            "Lcom/google/firebase/storage/StorageTask",
            "<TResultT;>;"
        }
    .end annotation

    .prologue
    .line 847
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->cancelManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->removeListener(Ljava/lang/Object;)V

    .line 849
    return-object p0
.end method

.method public removeOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 1
    .param p1    # Lcom/google/android/gms/tasks/OnCompleteListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnCompleteListener",
            "<TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask",
            "<TResultT;>;"
        }
    .end annotation

    .prologue
    .line 782
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p1, "listener":Lcom/google/android/gms/tasks/OnCompleteListener;, "Lcom/google/android/gms/tasks/OnCompleteListener<TResultT;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->completeListener:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->removeListener(Ljava/lang/Object;)V

    .line 784
    return-object p0
.end method

.method public removeOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/tasks/OnFailureListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/firebase/storage/StorageTask",
            "<TResultT;>;"
        }
    .end annotation

    .prologue
    .line 710
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->failureManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->removeListener(Ljava/lang/Object;)V

    .line 712
    return-object p0
.end method

.method public removeOnPausedListener(Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 1
    .param p1    # Lcom/google/firebase/storage/OnPausedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/OnPausedListener",
            "<-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask",
            "<TResultT;>;"
        }
    .end annotation

    .prologue
    .line 511
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p1, "listener":Lcom/google/firebase/storage/OnPausedListener;, "Lcom/google/firebase/storage/OnPausedListener<-TResultT;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->pausedManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->removeListener(Ljava/lang/Object;)V

    .line 513
    return-object p0
.end method

.method public removeOnProgressListener(Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 1
    .param p1    # Lcom/google/firebase/storage/OnProgressListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/OnProgressListener",
            "<-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask",
            "<TResultT;>;"
        }
    .end annotation

    .prologue
    .line 567
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p1, "listener":Lcom/google/firebase/storage/OnProgressListener;, "Lcom/google/firebase/storage/OnProgressListener<-TResultT;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->progressManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->removeListener(Ljava/lang/Object;)V

    .line 569
    return-object p0
.end method

.method public removeOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 1
    .param p1    # Lcom/google/android/gms/tasks/OnSuccessListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnSuccessListener",
            "<-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask",
            "<TResultT;>;"
        }
    .end annotation

    .prologue
    .line 638
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p1, "listener":Lcom/google/android/gms/tasks/OnSuccessListener;, "Lcom/google/android/gms/tasks/OnSuccessListener<-TResultT;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->successManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->removeListener(Ljava/lang/Object;)V

    .line 640
    return-object p0
.end method

.method resetState()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    return-void
.end method

.method public resume()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    const/4 v0, 0x1

    .line 205
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/storage/StorageTask;->tryChangeState(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->resetState()V

    .line 207
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->schedule()V

    .line 210
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract run()V
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end method

.method abstract schedule()V
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end method

.method snapState()Lcom/google/firebase/storage/StorageTask$ProvideError;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    iget-object v1, p0, Lcom/google/firebase/storage/StorageTask;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 343
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->snapStateImpl()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method abstract snapStateImpl()Lcom/google/firebase/storage/StorageTask$ProvideError;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation
.end method

.method tryChangeState(IZ)Z
    .locals 2
    .param p1, "newState"    # I
    .param p2, "userInitiated"    # Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 426
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0, p2}, Lcom/google/firebase/storage/StorageTask;->tryChangeState([IZ)Z

    move-result v0

    return v0
.end method

.method tryChangeState([IZ)Z
    .locals 8
    .param p1, "requestedStates"    # [I
    .param p2, "userInitiated"    # Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    const/4 v3, 0x0

    .line 360
    if-eqz p2, :cond_1

    sget-object v1, Lcom/google/firebase/storage/StorageTask;->ValidUserInitiatedStateChanges:Ljava/util/HashMap;

    .line 362
    .local v1, "table":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    :goto_0
    iget-object v5, p0, Lcom/google/firebase/storage/StorageTask;->syncObject:Ljava/lang/Object;

    monitor-enter v5

    .line 363
    :try_start_0
    array-length v6, p1

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_3

    aget v0, p1, v4

    .line 364
    .local v0, "newState":I
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 365
    .local v2, "validStates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 366
    iput v0, p0, Lcom/google/firebase/storage/StorageTask;->currentState:I

    .line 367
    iget v3, p0, Lcom/google/firebase/storage/StorageTask;->currentState:I

    sparse-switch v3, :sswitch_data_0

    .line 389
    :goto_2
    iget-object v3, p0, Lcom/google/firebase/storage/StorageTask;->successManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v3}, Lcom/google/firebase/storage/TaskListenerImpl;->onInternalStateChanged()V

    .line 390
    iget-object v3, p0, Lcom/google/firebase/storage/StorageTask;->failureManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v3}, Lcom/google/firebase/storage/TaskListenerImpl;->onInternalStateChanged()V

    .line 391
    iget-object v3, p0, Lcom/google/firebase/storage/StorageTask;->cancelManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v3}, Lcom/google/firebase/storage/TaskListenerImpl;->onInternalStateChanged()V

    .line 392
    iget-object v3, p0, Lcom/google/firebase/storage/StorageTask;->completeListener:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v3}, Lcom/google/firebase/storage/TaskListenerImpl;->onInternalStateChanged()V

    .line 393
    iget-object v3, p0, Lcom/google/firebase/storage/StorageTask;->pausedManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v3}, Lcom/google/firebase/storage/TaskListenerImpl;->onInternalStateChanged()V

    .line 394
    iget-object v3, p0, Lcom/google/firebase/storage/StorageTask;->progressManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v3}, Lcom/google/firebase/storage/TaskListenerImpl;->onInternalStateChanged()V

    .line 396
    const-string v3, "StorageTask"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 397
    const-string v3, "StorageTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changed internal state to: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 400
    invoke-direct {p0, v0}, Lcom/google/firebase/storage/StorageTask;->getStateString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " isUser: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " from state:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/google/firebase/storage/StorageTask;->currentState:I

    .line 404
    invoke-direct {p0, v6}, Lcom/google/firebase/storage/StorageTask;->getStateString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 397
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    const/4 v3, 0x1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    .end local v0    # "newState":I
    .end local v2    # "validStates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_3
    return v3

    .line 360
    .end local v1    # "table":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    :cond_1
    sget-object v1, Lcom/google/firebase/storage/StorageTask;->ValidTaskInitiatedStateChanges:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 369
    .restart local v0    # "newState":I
    .restart local v1    # "table":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    .restart local v2    # "validStates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :sswitch_0
    :try_start_1
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskManager;->getInstance()Lcom/google/firebase/storage/StorageTaskManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/firebase/storage/StorageTaskManager;->ensureRegistered(Lcom/google/firebase/storage/StorageTask;)V

    .line 370
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->onQueued()V

    goto :goto_2

    .line 421
    .end local v0    # "newState":I
    .end local v2    # "validStates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 373
    .restart local v0    # "newState":I
    .restart local v2    # "validStates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :sswitch_1
    :try_start_2
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->onProgress()V

    goto :goto_2

    .line 376
    :sswitch_2
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->onPaused()V

    goto :goto_2

    .line 379
    :sswitch_3
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->onFailure()V

    goto :goto_2

    .line 382
    :sswitch_4
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->onSuccess()V

    goto/16 :goto_2

    .line 385
    :sswitch_5
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->onCanceled()V

    goto/16 :goto_2

    .line 363
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 411
    .end local v0    # "newState":I
    .end local v2    # "validStates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_3
    const-string v4, "StorageTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unable to change internal state to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 414
    invoke-direct {p0, p1}, Lcom/google/firebase/storage/StorageTask;->getStateString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isUser: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/google/firebase/storage/StorageTask;->currentState:I

    .line 418
    invoke-direct {p0, v7}, Lcom/google/firebase/storage/StorageTask;->getStateString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 411
    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 367
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x10 -> :sswitch_2
        0x40 -> :sswitch_3
        0x80 -> :sswitch_4
        0x100 -> :sswitch_5
    .end sparse-switch
.end method
