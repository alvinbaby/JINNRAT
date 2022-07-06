.class public final Lcom/google/android/gms/common/api/internal/zabw;
.super Lcom/google/android/gms/common/api/internal/zap;
.source "com.google.android.gms:play-services-base@@17.6.0"


# instance fields
.field private zad:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/api/internal/zap;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;Lcom/google/android/gms/common/GoogleApiAvailability;)V

    .line 2
    new-instance v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-object v1, v2

    move-object v2, v1

    invoke-direct {v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabw;->zad:Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-object v2, v0

    .line 3
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabw;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    const-string v3, "GmsAvailabilityHelper"

    move-object v4, v0

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->addCallback(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void
.end method

.method public static zaa(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/zabw;
    .locals 5
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v2, v0

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zabw;->getFragment(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    move-result-object v2

    move-object v0, v2

    move-object v2, v0

    const-string v3, "GmsAvailabilityHelper"

    const-class v4, Lcom/google/android/gms/common/api/internal/zabw;

    .line 2
    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->getCallbackOrNull(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/zabw;

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabw;->zad:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-object v0, v2

    move-object v2, v0

    .line 4
    invoke-direct {v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabw;->zad:Lcom/google/android/gms/tasks/TaskCompletionSource;

    :cond_0
    move-object v2, v1

    move-object v0, v2

    .line 5
    :goto_0
    return-object v0

    .line 4
    :cond_1
    new-instance v2, Lcom/google/android/gms/common/api/internal/zabw;

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    .line 5
    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/internal/zabw;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final onDestroy()V
    .locals 4

    .prologue
    move-object v0, p0

    move-object v2, v0

    .line 1
    invoke-super {v2}, Lcom/google/android/gms/common/api/internal/zap;->onDestroy()V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabw;->zad:Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-object v0, v2

    .line 2
    new-instance v2, Ljava/util/concurrent/CancellationException;

    move-object v1, v2

    move-object v2, v1

    const-string v3, "Host activity was destroyed before Google Play services could be made available."

    invoke-direct {v2, v3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    move-result v2

    return-void
.end method

.method public final zab()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabw;->zad:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method protected final zad(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 9

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v1

    .line 1
    invoke-virtual {v5}, Lcom/google/android/gms/common/ConnectionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    if-nez v5, :cond_0

    const-string v5, "Error connecting to Google Play services"

    move-object v2, v5

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabw;->zad:Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-object v0, v5

    .line 2
    new-instance v5, Lcom/google/android/gms/common/api/ApiException;

    move-object v3, v5

    new-instance v5, Lcom/google/android/gms/common/api/Status;

    move-object v4, v5

    move-object v5, v4

    move-object v6, v1

    move-object v7, v2

    move-object v8, v1

    .line 3
    invoke-virtual {v8}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/gms/common/api/Status;-><init>(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;I)V

    move-object v5, v3

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    move-object v5, v0

    move-object v6, v3

    .line 2
    invoke-virtual {v5, v6}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method protected final zae()V
    .locals 6

    .prologue
    move-object v0, p0

    move-object v3, v0

    .line 1
    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabw;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    invoke-interface {v3}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->getLifecycleActivity()Landroid/app/Activity;

    move-result-object v3

    move-object v1, v3

    move-object v3, v1

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabw;->zad:Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-object v0, v3

    .line 2
    new-instance v3, Lcom/google/android/gms/common/api/ApiException;

    move-object v1, v3

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    move-object v2, v3

    move-object v3, v2

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    move-object v3, v1

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    move-result v3

    .line 7
    :goto_0
    return-void

    .line 2
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabw;->zac:Lcom/google/android/gms/common/GoogleApiAvailability;

    move-object v4, v1

    .line 3
    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v3

    move v1, v3

    move v3, v1

    if-nez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabw;->zad:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabw;->zad:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 6
    new-instance v3, Lcom/google/android/gms/common/ConnectionResult;

    move-object v2, v3

    move-object v3, v2

    move v4, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x0

    .line 7
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/common/api/internal/zap;->zaf(Lcom/google/android/gms/common/ConnectionResult;I)V

    goto :goto_0

    :cond_2
    goto :goto_0
.end method
