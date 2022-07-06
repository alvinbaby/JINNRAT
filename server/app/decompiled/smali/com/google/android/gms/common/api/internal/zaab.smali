.class public final Lcom/google/android/gms/common/api/internal/zaab;
.super Lcom/google/android/gms/common/api/internal/zap;
.source "com.google.android.gms:play-services-base@@17.6.0"


# instance fields
.field private final zad:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet",
            "<",
            "Lcom/google/android/gms/common/api/internal/ApiKey",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zae:Lcom/google/android/gms/common/api/internal/GoogleApiManager;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;Lcom/google/android/gms/common/api/internal/GoogleApiManager;Lcom/google/android/gms/common/GoogleApiAvailability;)V
    .locals 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    .line 1
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/api/internal/zap;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;Lcom/google/android/gms/common/GoogleApiAvailability;)V

    .line 2
    new-instance v4, Landroidx/collection/ArraySet;

    move-object v1, v4

    move-object v4, v1

    invoke-direct {v4}, Landroidx/collection/ArraySet;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zaab;->zad:Landroidx/collection/ArraySet;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zaab;->zae:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-object v4, v0

    .line 3
    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaab;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    const-string v5, "ConnectionlessLifecycleHelper"

    move-object v6, v0

    invoke-interface {v4, v5, v6}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->addCallback(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void
.end method

.method public static zaa(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/GoogleApiManager;Lcom/google/android/gms/common/api/internal/ApiKey;)V
    .locals 8
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/common/api/internal/GoogleApiManager;",
            "Lcom/google/android/gms/common/api/internal/ApiKey",
            "<*>;)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    .line 1
    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zaab;->getFragment(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    move-result-object v4

    move-object v0, v4

    move-object v4, v0

    const-string v5, "ConnectionlessLifecycleHelper"

    const-class v6, Lcom/google/android/gms/common/api/internal/zaab;

    .line 2
    invoke-interface {v4, v5, v6}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->getCallbackOrNull(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/internal/zaab;

    move-object v3, v4

    move-object v4, v3

    if-nez v4, :cond_0

    new-instance v4, Lcom/google/android/gms/common/api/internal/zaab;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v0

    move-object v6, v1

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/common/api/internal/zaab;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;Lcom/google/android/gms/common/api/internal/GoogleApiManager;Lcom/google/android/gms/common/GoogleApiAvailability;)V

    move-object v4, v3

    move-object v0, v4

    :goto_0
    move-object v4, v2

    const-string v5, "ApiKey cannot be null"

    .line 4
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaab;->zad:Landroidx/collection/ArraySet;

    move-object v5, v2

    .line 5
    invoke-virtual {v4, v5}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v4

    move-object v4, v1

    move-object v5, v0

    .line 6
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zae(Lcom/google/android/gms/common/api/internal/zaab;)V

    return-void

    :cond_0
    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method private final zac()V
    .locals 3

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaab;->zad:Landroidx/collection/ArraySet;

    .line 1
    invoke-virtual {v1}, Landroidx/collection/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaab;->zae:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-object v2, v0

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zae(Lcom/google/android/gms/common/api/internal/zaab;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method


# virtual methods
.method public final onResume()V
    .locals 2

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    invoke-super {v1}, Lcom/google/android/gms/common/api/internal/zap;->onResume()V

    move-object v1, v0

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zaab;->zac()V

    return-void
.end method

.method public final onStart()V
    .locals 2

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    invoke-super {v1}, Lcom/google/android/gms/common/api/internal/zap;->onStart()V

    move-object v1, v0

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zaab;->zac()V

    return-void
.end method

.method public final onStop()V
    .locals 3

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    invoke-super {v1}, Lcom/google/android/gms/common/api/internal/zap;->onStop()V

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaab;->zae:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-object v2, v0

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaf(Lcom/google/android/gms/common/api/internal/zaab;)V

    return-void
.end method

.method final zab()Landroidx/collection/ArraySet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/ArraySet",
            "<",
            "Lcom/google/android/gms/common/api/internal/ApiKey",
            "<*>;>;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaab;->zad:Landroidx/collection/ArraySet;

    move-object v0, v1

    return-object v0
.end method

.method protected final zad(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 6

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaab;->zae:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-object v4, v1

    move v5, v2

    .line 1
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method protected final zae()V
    .locals 2

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaab;->zae:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zai()V

    return-void
.end method
