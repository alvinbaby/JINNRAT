.class public final Lcom/google/android/gms/common/api/internal/zabl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/common/api/internal/zat;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
        "Lcom/google/android/gms/common/api/internal/zat;"
    }
.end annotation


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

.field private final zab:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/common/api/internal/zai;",
            ">;"
        }
    .end annotation
.end field

.field private final zac:Lcom/google/android/gms/common/api/Api$Client;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field private final zad:Lcom/google/android/gms/common/api/internal/ApiKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/ApiKey",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final zae:Lcom/google/android/gms/common/api/internal/zaaa;

.field private final zaf:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/internal/zal;",
            ">;"
        }
    .end annotation
.end field

.field private final zag:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey",
            "<*>;",
            "Lcom/google/android/gms/common/api/internal/zacc;",
            ">;"
        }
    .end annotation
.end field

.field private final zah:I

.field private final zai:Lcom/google/android/gms/common/api/internal/zaco;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zaj:Z

.field private final zak:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/internal/zabm;",
            ">;"
        }
    .end annotation
.end field

.field private zal:Lcom/google/android/gms/common/ConnectionResult;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zam:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;Lcom/google/android/gms/common/api/GoogleApi;)V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApi",
            "<TO;>;)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/LinkedList;

    move-object v3, v4

    move-object v4, v3

    .line 1
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zabl;->zab:Ljava/util/Queue;

    new-instance v4, Ljava/util/HashSet;

    move-object v3, v4

    move-object v4, v3

    .line 2
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zabl;->zaf:Ljava/util/Set;

    new-instance v4, Ljava/util/HashMap;

    move-object v3, v4

    move-object v4, v3

    .line 3
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zabl;->zag:Ljava/util/Map;

    new-instance v4, Ljava/util/ArrayList;

    move-object v3, v4

    move-object v4, v3

    .line 4
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zabl;->zak:Ljava/util/List;

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zabl;->zal:Lcom/google/android/gms/common/ConnectionResult;

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/google/android/gms/common/api/internal/zabl;->zam:I

    move-object v4, v0

    move-object v5, v2

    move-object v6, v1

    invoke-static {v6}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v6

    .line 5
    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/common/api/GoogleApi;->zaa(Landroid/os/Looper;Lcom/google/android/gms/common/api/internal/zabl;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    move-object v4, v0

    move-object v5, v2

    .line 6
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/GoogleApi;->getApiKey()Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zabl;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    new-instance v4, Lcom/google/android/gms/common/api/internal/zaaa;

    move-object v3, v4

    move-object v4, v3

    .line 7
    invoke-direct {v4}, Lcom/google/android/gms/common/api/internal/zaaa;-><init>()V

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zabl;->zae:Lcom/google/android/gms/common/api/internal/zaaa;

    move-object v4, v0

    move-object v5, v2

    .line 8
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/GoogleApi;->zab()I

    move-result v5

    iput v5, v4, Lcom/google/android/gms/common/api/internal/zabl;->zah:I

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 9
    invoke-interface {v4}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v2

    move-object v6, v1

    invoke-static {v6}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/content/Context;

    move-result-object v6

    move-object v7, v1

    invoke-static {v7}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v7

    .line 10
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/common/api/GoogleApi;->zac(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/common/api/internal/zaco;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zabl;->zai:Lcom/google/android/gms/common/api/internal/zaco;

    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zabl;->zai:Lcom/google/android/gms/common/api/internal/zaco;

    goto :goto_0
.end method

.method static synthetic zaA(Lcom/google/android/gms/common/api/internal/zabl;)Lcom/google/android/gms/common/api/Api$Client;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    move-object v0, v1

    return-object v0
.end method

.method private final zaB()V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v5, v0

    .line 1
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/zabl;->zah()V

    move-object v5, v0

    .line 2
    sget-object v6, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v5, v6}, Lcom/google/android/gms/common/api/internal/zabl;->zaM(Lcom/google/android/gms/common/ConnectionResult;)V

    move-object v5, v0

    .line 3
    invoke-direct {v5}, Lcom/google/android/gms/common/api/internal/zabl;->zaJ()V

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabl;->zag:Ljava/util/Map;

    .line 4
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v5

    :goto_0
    move-object v5, v1

    .line 5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v1

    .line 6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/api/internal/zacc;

    move-object v2, v5

    move-object v5, v0

    move-object v6, v2

    .line 7
    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zacc;->zaa:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;->getRequiredFeatures()[Lcom/google/android/gms/common/Feature;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/gms/common/api/internal/zabl;->zaN([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/Feature;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v5, v1

    .line 8
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    move-object v5, v2

    .line 9
    :try_start_0
    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zacc;->zaa:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

    move-object v2, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    move-object v3, v5

    new-instance v5, Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-object v4, v5

    move-object v5, v4

    invoke-direct {v5}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    move-object v5, v2

    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;->registerListener(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 11
    :catch_0
    move-exception v5

    move-object v5, v0

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/api/internal/zabl;->onConnectionSuspended(I)V

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    const-string v6, "DeadObjectException thrown while calling register listener method."

    .line 12
    invoke-interface {v5, v6}, Lcom/google/android/gms/common/api/Api$Client;->disconnect(Ljava/lang/String;)V

    .line 9
    :cond_1
    move-object v5, v0

    .line 13
    invoke-direct {v5}, Lcom/google/android/gms/common/api/internal/zabl;->zaE()V

    move-object v5, v0

    .line 14
    invoke-direct {v5}, Lcom/google/android/gms/common/api/internal/zabl;->zaK()V

    return-void

    .line 10
    :catch_1
    move-exception v5

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private final zaC(I)V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabl;->zah()V

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/gms/common/api/internal/zabl;->zaj:Z

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabl;->zae:Lcom/google/android/gms/common/api/internal/zaaa;

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 2
    invoke-interface {v4}, Lcom/google/android/gms/common/api/Api$Client;->getLastDisconnectMessage()Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/common/api/internal/zaaa;->zae(ILjava/lang/String;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x9

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabl;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 4
    invoke-static {v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zau(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)J

    move-result-wide v4

    .line 5
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xb

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabl;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 6
    invoke-static {v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zav(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)J

    move-result-wide v4

    .line 7
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaw(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Lcom/google/android/gms/common/internal/zal;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zal;->zac()V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabl;->zag:Ljava/util/Map;

    .line 9
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v0, v2

    :goto_0
    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/zacc;

    .line 10
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zacc;->zac:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zaD(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 7
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 1
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zax()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    monitor-enter v4

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zay(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Lcom/google/android/gms/common/api/internal/zaab;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaz(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Ljava/util/Set;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabl;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 2
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    move v3, v4

    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zay(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Lcom/google/android/gms/common/api/internal/zaab;

    move-result-object v4

    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/google/android/gms/common/api/internal/zabl;->zah:I

    .line 4
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/common/api/internal/zap;->zaf(Lcom/google/android/gms/common/ConnectionResult;I)V

    move-object v4, v2

    .line 5
    monitor-exit v4

    const/4 v4, 0x1

    move v0, v4

    :goto_0
    return v0

    :cond_0
    move-object v4, v2

    .line 3
    monitor-exit v4

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :catchall_0
    move-exception v4

    move-object v0, v4

    .line 6
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    move-object v4, v0

    .line 6
    throw v4
.end method

.method private final zaE()V
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    move-object v0, p0

    new-instance v5, Ljava/util/ArrayList;

    move-object v2, v5

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zabl;->zab:Ljava/util/Queue;

    .line 1
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    const/4 v5, 0x0

    move v1, v5

    :goto_0
    move v5, v1

    move v6, v3

    if-ge v5, v6, :cond_0

    move-object v5, v2

    move v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/api/internal/zai;

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 2
    invoke-interface {v5}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v5, v0

    move-object v6, v4

    .line 3
    invoke-direct {v5, v6}, Lcom/google/android/gms/common/api/internal/zabl;->zaF(Lcom/google/android/gms/common/api/internal/zai;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabl;->zab:Ljava/util/Queue;

    move-object v6, v4

    .line 4
    invoke-interface {v5, v6}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private final zaF(Lcom/google/android/gms/common/api/internal/zai;)Z
    .locals 14
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v10, v1

    .line 1
    instance-of v10, v10, Lcom/google/android/gms/common/api/internal/zac;

    if-nez v10, :cond_0

    move-object v10, v0

    move-object v11, v1

    .line 2
    invoke-direct {v10, v11}, Lcom/google/android/gms/common/api/internal/zabl;->zaG(Lcom/google/android/gms/common/api/internal/zai;)V

    const/4 v10, 0x1

    move v0, v10

    .line 18
    :goto_0
    return v0

    .line 2
    :cond_0
    move-object v10, v1

    .line 3
    check-cast v10, Lcom/google/android/gms/common/api/internal/zac;

    move-object v2, v10

    move-object v10, v0

    move-object v11, v2

    move-object v12, v0

    .line 4
    invoke-virtual {v11, v12}, Lcom/google/android/gms/common/api/internal/zac;->zaa(Lcom/google/android/gms/common/api/internal/zabl;)[Lcom/google/android/gms/common/Feature;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/google/android/gms/common/api/internal/zabl;->zaN([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/Feature;

    move-result-object v10

    move-object v3, v10

    move-object v10, v3

    if-nez v10, :cond_1

    move-object v10, v0

    move-object v11, v1

    .line 5
    invoke-direct {v10, v11}, Lcom/google/android/gms/common/api/internal/zabl;->zaG(Lcom/google/android/gms/common/api/internal/zai;)V

    const/4 v10, 0x1

    move v0, v10

    goto :goto_0

    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 6
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v1, v10

    move-object v10, v3

    .line 7
    invoke-virtual {v10}, Lcom/google/android/gms/common/Feature;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    move-object v10, v3

    .line 8
    invoke-virtual {v10}, Lcom/google/android/gms/common/Feature;->getVersion()J

    move-result-wide v10

    move-wide v5, v10

    move-object v10, v1

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    move-object v10, v7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v7, v10

    move-object v10, v4

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v8, v10

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v9, v10

    move-object v10, v9

    move v11, v7

    const/16 v12, 0x4d

    add-int/lit8 v11, v11, 0x4d

    move v12, v8

    add-int/2addr v11, v12

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v10, v9

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v10, v9

    const-string v11, " could not execute call because it requires feature ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v10, v9

    move-object v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v10, v9

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v10, v9

    move-wide v11, v5

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v10, v9

    const-string v11, ")."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v10, "GoogleApiManager"

    move-object v11, v9

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 9
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 10
    invoke-static {v10}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaC(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v10, v2

    move-object v11, v0

    .line 11
    invoke-virtual {v10, v11}, Lcom/google/android/gms/common/api/internal/zac;->zab(Lcom/google/android/gms/common/api/internal/zabl;)Z

    move-result v10

    if-eqz v10, :cond_4

    new-instance v10, Lcom/google/android/gms/common/api/internal/zabm;

    move-object v1, v10

    move-object v10, v1

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/gms/common/api/internal/zabl;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    move-object v12, v3

    const/4 v13, 0x0

    .line 13
    invoke-direct {v10, v11, v12, v13}, Lcom/google/android/gms/common/api/internal/zabm;-><init>(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/Feature;Lcom/google/android/gms/common/api/internal/zabg;)V

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/gms/common/api/internal/zabl;->zak:Ljava/util/List;

    move-object v11, v1

    .line 14
    invoke-interface {v10, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    move v2, v10

    move v10, v2

    if-ltz v10, :cond_3

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/gms/common/api/internal/zabl;->zak:Ljava/util/List;

    move v11, v2

    .line 15
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/common/api/internal/zabm;

    move-object v1, v10

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v10}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0xf

    move-object v12, v1

    .line 16
    invoke-virtual {v10, v11, v12}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v10}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v11}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0xf

    move-object v13, v1

    .line 17
    invoke-static {v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v12}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zau(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)J

    move-result-wide v12

    .line 18
    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v10

    :cond_2
    :goto_1
    const/4 v10, 0x0

    move v0, v10

    goto/16 :goto_0

    :cond_3
    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/gms/common/api/internal/zabl;->zak:Ljava/util/List;

    move-object v11, v1

    .line 19
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v10}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v11}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0xf

    move-object v13, v1

    .line 20
    invoke-static {v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v12}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zau(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)J

    move-result-wide v12

    .line 21
    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v10

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v10}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v11}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x10

    move-object v13, v1

    .line 22
    invoke-static {v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v12}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zav(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)J

    move-result-wide v12

    .line 23
    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v10

    .line 24
    new-instance v10, Lcom/google/android/gms/common/ConnectionResult;

    move-object v1, v10

    move-object v10, v1

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    move-object v10, v0

    move-object v11, v1

    .line 25
    invoke-direct {v10, v11}, Lcom/google/android/gms/common/api/internal/zabl;->zaD(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v10

    if-nez v10, :cond_2

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-object v11, v1

    move-object v12, v0

    iget v12, v12, Lcom/google/android/gms/common/api/internal/zabl;->zah:I

    .line 26
    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v10

    goto :goto_1

    .line 12
    :cond_4
    new-instance v10, Lcom/google/android/gms/common/api/UnsupportedApiCallException;

    move-object v0, v10

    move-object v10, v0

    move-object v11, v3

    invoke-direct {v10, v11}, Lcom/google/android/gms/common/api/UnsupportedApiCallException;-><init>(Lcom/google/android/gms/common/Feature;)V

    move-object v10, v2

    move-object v11, v0

    invoke-virtual {v10, v11}, Lcom/google/android/gms/common/api/internal/zac;->zad(Ljava/lang/Exception;)V

    const/4 v10, 0x1

    move v0, v10

    goto/16 :goto_0
.end method

.method private final zaG(Lcom/google/android/gms/common/api/internal/zai;)V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabl;->zae:Lcom/google/android/gms/common/api/internal/zaaa;

    move-object v5, v0

    .line 1
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/zabl;->zap()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/common/api/internal/zai;->zae(Lcom/google/android/gms/common/api/internal/zaaa;Z)V

    move-object v3, v1

    move-object v4, v0

    .line 2
    :try_start_0
    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/zai;->zaf(Lcom/google/android/gms/common/api/internal/zabl;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    return-void

    .line 2
    :catchall_0
    move-exception v3

    move-object v1, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v2, v3

    move-object v3, v2

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v3, "Error in GoogleApi implementation for client %s."

    move-object v4, v2

    .line 4
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v0

    move-object v5, v1

    .line 5
    invoke-direct {v3, v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v2

    throw v3

    .line 6
    :catch_0
    move-exception v3

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/zabl;->onConnectionSuspended(I)V

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    const-string v4, "DeadObjectException thrown while running ApiCallRunner."

    .line 7
    invoke-interface {v3, v4}, Lcom/google/android/gms/common/api/Api$Client;->disconnect(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final zaH(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V
    .locals 8
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v6}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v6

    .line 1
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    move-object v6, v1

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move-object v6, v2

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    move v5, v6

    :goto_1
    move v6, v4

    move v7, v5

    if-ne v6, v7, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v0, v6

    move-object v6, v0

    const-string v7, "Status XOR exception should be null"

    .line 2
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    throw v6

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zabl;->zab:Ljava/util/Queue;

    .line 3
    invoke-interface {v6}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v0, v6

    :cond_1
    :goto_2
    move-object v6, v0

    .line 4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v0

    .line 5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/api/internal/zai;

    move-object v4, v6

    move v6, v3

    if-eqz v6, :cond_2

    move-object v6, v4

    .line 6
    iget v6, v6, Lcom/google/android/gms/common/api/internal/zai;->zac:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    :cond_2
    move-object v6, v1

    if-eqz v6, :cond_3

    move-object v6, v4

    move-object v7, v1

    .line 7
    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/api/internal/zai;->zac(Lcom/google/android/gms/common/api/Status;)V

    :goto_3
    move-object v6, v0

    .line 9
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_3
    move-object v6, v4

    move-object v7, v2

    .line 8
    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/api/internal/zai;->zad(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_4
    return-void

    :cond_5
    const/4 v6, 0x1

    move v5, v6

    goto :goto_1

    :cond_6
    const/4 v6, 0x1

    move v4, v6

    goto :goto_0
.end method

.method private final zaI(Lcom/google/android/gms/common/api/Status;)V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v2

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2
    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/common/api/internal/zabl;->zaH(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void
.end method

.method private final zaJ()V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/gms/common/api/internal/zabl;->zaj:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabl;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 1
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabl;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 2
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/gms/common/api/internal/zabl;->zaj:Z

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method private final zaK()V
    .locals 6

    .prologue
    move-object v1, p0

    move-object v2, v1

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc

    move-object v4, v1

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabl;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 1
    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    move-object v2, v1

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v2

    move-object v3, v1

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xc

    move-object v5, v1

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabl;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 2
    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaE(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)J

    move-result-wide v4

    .line 3
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    return-void
.end method

.method private final zaL(Z)Z
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v2

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabl;->zag:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabl;->zae:Lcom/google/android/gms/common/api/internal/zaaa;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zaaa;->zac()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 4
    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/zabl;->zaK()V

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    .line 5
    :goto_0
    return v0

    .line 4
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    const-string v3, "Timing out service connection."

    .line 5
    invoke-interface {v2, v3}, Lcom/google/android/gms/common/api/Api$Client;->disconnect(Ljava/lang/String;)V

    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private final zaM(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabl;->zaf:Ljava/util/Set;

    .line 1
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/api/internal/zal;

    move-object v4, v5

    move-object v5, v1

    .line 2
    sget-object v6, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 3
    invoke-interface {v5}, Lcom/google/android/gms/common/api/Api$Client;->getEndpointPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    :goto_1
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zabl;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    move-object v7, v1

    move-object v8, v2

    .line 4
    invoke-virtual {v5, v6, v7, v8}, Lcom/google/android/gms/common/api/internal/zal;->zac(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    move-object v2, v5

    goto :goto_1

    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabl;->zaf:Ljava/util/Set;

    .line 5
    invoke-interface {v5}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private final zaN([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/Feature;
    .locals 10
    .param p1    # [Lcom/google/android/gms/common/Feature;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v1

    array-length v6, v6

    if-nez v6, :cond_1

    :cond_0
    const/4 v6, 0x0

    move-object v0, v6

    .line 7
    :goto_0
    return-object v0

    .line 4294967295
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 1
    invoke-interface {v6}, Lcom/google/android/gms/common/api/Api$Client;->getAvailableFeatures()[Lcom/google/android/gms/common/Feature;

    move-result-object v6

    move-object v0, v6

    move-object v6, v0

    if-nez v6, :cond_2

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/google/android/gms/common/Feature;

    move-object v0, v6

    :cond_2
    move-object v6, v0

    array-length v6, v6

    move v3, v6

    .line 2
    new-instance v6, Landroidx/collection/ArrayMap;

    move-object v4, v6

    move-object v6, v4

    move v7, v3

    invoke-direct {v6, v7}, Landroidx/collection/ArrayMap;-><init>(I)V

    const/4 v6, 0x0

    move v2, v6

    :goto_1
    move v6, v2

    move v7, v3

    if-ge v6, v7, :cond_3

    move-object v6, v0

    move v7, v2

    .line 3
    aget-object v6, v6, v7

    move-object v5, v6

    move-object v6, v4

    move-object v7, v5

    .line 4
    invoke-virtual {v7}, Lcom/google/android/gms/common/Feature;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v8}, Lcom/google/android/gms/common/Feature;->getVersion()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move-object v6, v1

    array-length v6, v6

    move v2, v6

    const/4 v6, 0x0

    move v0, v6

    :goto_2
    move v6, v0

    move v7, v2

    if-ge v6, v7, :cond_6

    move-object v6, v1

    move v7, v0

    .line 5
    aget-object v6, v6, v7

    move-object v3, v6

    move-object v6, v4

    move-object v7, v3

    .line 6
    invoke-virtual {v7}, Lcom/google/android/gms/common/Feature;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    move-object v5, v6

    move-object v6, v5

    if-eqz v6, :cond_4

    move-object v6, v5

    .line 7
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v8, v3

    invoke-virtual {v8}, Lcom/google/android/gms/common/Feature;->getVersion()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_5

    :cond_4
    move-object v6, v3

    move-object v0, v6

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method static synthetic zat(Lcom/google/android/gms/common/api/internal/zabl;Z)Z
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/internal/zabl;->zaL(Z)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method static synthetic zau(Lcom/google/android/gms/common/api/internal/zabl;Lcom/google/android/gms/common/api/internal/zabm;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabl;->zak:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/gms/common/api/internal/zabl;->zaj:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabl;->zam()V

    goto :goto_0

    :cond_2
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/zabl;->zaE()V

    goto :goto_0
.end method

.method static synthetic zav(Lcom/google/android/gms/common/api/internal/zabl;Lcom/google/android/gms/common/api/internal/zabm;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zabl;->zak:Ljava/util/List;

    move-object v8, v1

    invoke-interface {v7, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v7}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0xf

    move-object v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v7}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x10

    move-object v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    move-object v7, v1

    invoke-static {v7}, Lcom/google/android/gms/common/api/internal/zabm;->zab(Lcom/google/android/gms/common/api/internal/zabm;)Lcom/google/android/gms/common/Feature;

    move-result-object v7

    move-object v2, v7

    new-instance v7, Ljava/util/ArrayList;

    move-object v3, v7

    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zabl;->zab:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zabl;->zab:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v1, v7

    :cond_0
    :goto_0
    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/api/internal/zai;

    move-object v4, v7

    move-object v7, v4

    instance-of v7, v7, Lcom/google/android/gms/common/api/internal/zac;

    if-eqz v7, :cond_0

    move-object v7, v4

    check-cast v7, Lcom/google/android/gms/common/api/internal/zac;

    move-object v8, v0

    invoke-virtual {v7, v8}, Lcom/google/android/gms/common/api/internal/zac;->zaa(Lcom/google/android/gms/common/api/internal/zabl;)[Lcom/google/android/gms/common/Feature;

    move-result-object v7

    move-object v5, v7

    move-object v7, v5

    if-eqz v7, :cond_0

    move-object v7, v5

    move-object v8, v2

    invoke-static {v7, v8}, Lcom/google/android/gms/common/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_0

    :cond_1
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v4, v7

    const/4 v7, 0x0

    move v1, v7

    :goto_1
    move v7, v1

    move v8, v4

    if-ge v7, v8, :cond_2

    move-object v7, v3

    move v8, v1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/api/internal/zai;

    move-object v5, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zabl;->zab:Ljava/util/Queue;

    move-object v8, v5

    invoke-interface {v7, v8}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v7

    new-instance v7, Lcom/google/android/gms/common/api/UnsupportedApiCallException;

    move-object v6, v7

    move-object v7, v6

    move-object v8, v2

    invoke-direct {v7, v8}, Lcom/google/android/gms/common/api/UnsupportedApiCallException;-><init>(Lcom/google/android/gms/common/Feature;)V

    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v7, v8}, Lcom/google/android/gms/common/api/internal/zai;->zad(Ljava/lang/Exception;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic zaw(Lcom/google/android/gms/common/api/internal/zabl;Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/internal/zabl;->zaI(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method static synthetic zax(Lcom/google/android/gms/common/api/internal/zabl;)Lcom/google/android/gms/common/api/internal/ApiKey;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabl;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zay(Lcom/google/android/gms/common/api/internal/zabl;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zabl;->zaB()V

    return-void
.end method

.method static synthetic zaz(Lcom/google/android/gms/common/api/internal/zabl;I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/internal/zabl;->zaC(I)V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v3, v0

    .line 2
    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zabl;->zaB()V

    .line 3
    :goto_0
    return-void

    .line 2
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-object v1, v3

    move-object v3, v1

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v3

    move-object v1, v3

    new-instance v3, Lcom/google/android/gms/common/api/internal/zabh;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v0

    .line 3
    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/internal/zabh;-><init>(Lcom/google/android/gms/common/api/internal/zabl;)V

    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v3

    goto :goto_0
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 5
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    .line 1
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/common/api/internal/zabl;->zac(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 7

    .prologue
    .line 1
    move-object v0, p0

    move v1, p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v5}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v4, v5, :cond_0

    move-object v4, v0

    move v5, v1

    .line 2
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/internal/zabl;->zaC(I)V

    .line 3
    :goto_0
    return-void

    .line 2
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-object v2, v4

    move-object v4, v2

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v4

    move-object v2, v4

    new-instance v4, Lcom/google/android/gms/common/api/internal/zabi;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v0

    move v6, v1

    .line 3
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/api/internal/zabi;-><init>(Lcom/google/android/gms/common/api/internal/zabl;I)V

    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v4

    goto :goto_0
.end method

.method public final zaa(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;Z)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    const/4 v4, 0x0

    throw v4
.end method

.method public final zab(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 11
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v8}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v8

    .line 1
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    move-object v2, v8

    move-object v8, v2

    .line 2
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    move-object v8, v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    move-object v8, v3

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

    const/16 v10, 0x19

    add-int/lit8 v9, v9, 0x19

    move v10, v6

    add-int/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v8, v7

    const-string v9, "onSignInFailed for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v8, v7

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v8, v7

    const-string v9, " with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v8, v7

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v8, v2

    move-object v9, v7

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/google/android/gms/common/api/Api$Client;->disconnect(Ljava/lang/String;)V

    move-object v8, v0

    move-object v9, v1

    const/4 v10, 0x0

    .line 3
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/common/api/internal/zabl;->zac(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public final zac(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V
    .locals 8
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v4

    .line 1
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabl;->zai:Lcom/google/android/gms/common/api/internal/zaco;

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zaco;->zad()V

    :cond_0
    move-object v4, v0

    .line 3
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabl;->zah()V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaw(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Lcom/google/android/gms/common/internal/zal;

    move-result-object v4

    .line 4
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/zal;->zac()V

    move-object v4, v0

    move-object v5, v1

    .line 5
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/internal/zabl;->zaM(Lcom/google/android/gms/common/ConnectionResult;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 6
    instance-of v4, v4, Lcom/google/android/gms/common/internal/service/zap;

    if-eqz v4, :cond_1

    move-object v4, v1

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v4

    const/16 v5, 0x18

    if-eq v4, v5, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    const/4 v5, 0x1

    .line 8
    invoke-static {v4, v5}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaA(Lcom/google/android/gms/common/api/internal/GoogleApiManager;Z)Z

    move-result v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v5}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x13

    .line 9
    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/32 v6, 0x493e0

    .line 10
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v4

    :cond_1
    move-object v4, v1

    .line 11
    invoke-virtual {v4}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    move-object v4, v0

    invoke-static {}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaB()Lcom/google/android/gms/common/api/Status;

    move-result-object v5

    .line 12
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/internal/zabl;->zaI(Lcom/google/android/gms/common/api/Status;)V

    .line 28
    :goto_0
    return-void

    .line 12
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabl;->zab:Ljava/util/Queue;

    .line 13
    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zabl;->zal:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_0

    :cond_3
    move-object v4, v2

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v4

    .line 14
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v2

    const/4 v7, 0x0

    .line 15
    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/common/api/internal/zabl;->zaH(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    goto :goto_0

    :cond_4
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 16
    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaC(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabl;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    move-object v6, v1

    .line 17
    invoke-static {v5, v6}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaF(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 18
    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/common/api/internal/zabl;->zaH(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabl;->zab:Ljava/util/Queue;

    .line 19
    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    move-object v4, v0

    move-object v5, v1

    .line 20
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/internal/zabl;->zaD(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_0

    :cond_6
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/google/android/gms/common/api/internal/zabl;->zah:I

    .line 21
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v4

    if-nez v4, :cond_9

    move-object v4, v1

    .line 22
    invoke-virtual {v4}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v4

    const/16 v5, 0x12

    if-ne v4, v5, :cond_7

    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/gms/common/api/internal/zabl;->zaj:Z

    :cond_7
    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/gms/common/api/internal/zabl;->zaj:Z

    if-eqz v4, :cond_8

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v5}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x9

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zabl;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 25
    invoke-static {v5, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v6}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zau(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)J

    move-result-wide v6

    .line 26
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v4

    goto/16 :goto_0

    :cond_8
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabl;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    move-object v6, v1

    .line 23
    invoke-static {v5, v6}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaF(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    move-result-object v5

    .line 24
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/internal/zabl;->zaI(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_0

    :cond_9
    goto/16 :goto_0

    :cond_a
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabl;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    move-object v6, v1

    .line 27
    invoke-static {v5, v6}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaF(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    move-result-object v5

    .line 28
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/internal/zabl;->zaI(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_0
.end method

.method public final zad(Lcom/google/android/gms/common/api/internal/zai;)V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v2

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    move-object v3, v1

    .line 3
    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/internal/zabl;->zaF(Lcom/google/android/gms/common/api/internal/zai;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 4
    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/zabl;->zaK()V

    .line 9
    :goto_0
    return-void

    .line 4
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabl;->zab:Ljava/util/Queue;

    move-object v3, v1

    .line 5
    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabl;->zab:Ljava/util/Queue;

    move-object v3, v1

    .line 6
    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabl;->zal:Lcom/google/android/gms/common/ConnectionResult;

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabl;->zal:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v4, 0x0

    .line 9
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/common/api/internal/zabl;->zac(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    move-object v2, v0

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabl;->zam()V

    goto :goto_0
.end method

.method public final zae()V
    .locals 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v7}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v7

    .line 1
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    move-object v7, v0

    sget-object v8, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaa:Lcom/google/android/gms/common/api/Status;

    .line 2
    invoke-direct {v7, v8}, Lcom/google/android/gms/common/api/internal/zabl;->zaI(Lcom/google/android/gms/common/api/Status;)V

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zabl;->zae:Lcom/google/android/gms/common/api/internal/zaaa;

    .line 3
    invoke-virtual {v7}, Lcom/google/android/gms/common/api/internal/zaaa;->zad()V

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zabl;->zag:Ljava/util/Map;

    .line 4
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    invoke-interface {v7, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-object v2, v7

    move-object v7, v2

    array-length v7, v7

    move v3, v7

    const/4 v7, 0x0

    move v1, v7

    :goto_0
    move v7, v1

    move v8, v3

    if-ge v7, v8, :cond_0

    move-object v7, v2

    move v8, v1

    aget-object v7, v7, v8

    move-object v4, v7

    new-instance v7, Lcom/google/android/gms/common/api/internal/zah;

    move-object v5, v7

    .line 5
    new-instance v7, Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-object v6, v7

    move-object v7, v6

    invoke-direct {v7}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    move-object v7, v5

    move-object v8, v4

    move-object v9, v6

    invoke-direct {v7, v8, v9}, Lcom/google/android/gms/common/api/internal/zah;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Lcom/google/android/gms/common/api/internal/zabl;->zad(Lcom/google/android/gms/common/api/internal/zai;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v7, Lcom/google/android/gms/common/ConnectionResult;

    move-object v1, v7

    move-object v7, v1

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/google/android/gms/common/api/internal/zabl;->zaM(Lcom/google/android/gms/common/ConnectionResult;)V

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 7
    invoke-interface {v7}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    move-object v1, v7

    .line 8
    new-instance v7, Lcom/google/android/gms/common/api/internal/zabk;

    move-object v2, v7

    move-object v7, v2

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/google/android/gms/common/api/internal/zabk;-><init>(Lcom/google/android/gms/common/api/internal/zabl;)V

    move-object v7, v1

    move-object v8, v2

    invoke-interface {v7, v8}, Lcom/google/android/gms/common/api/Api$Client;->onUserSignOut(Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;)V

    :goto_1
    return-void

    :cond_1
    goto :goto_1
.end method

.method public final zaf()Lcom/google/android/gms/common/api/Api$Client;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    move-object v0, v1

    return-object v0
.end method

.method public final zag()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey",
            "<*>;",
            "Lcom/google/android/gms/common/api/internal/zacc;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabl;->zag:Ljava/util/Map;

    move-object v0, v1

    return-object v0
.end method

.method public final zah()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v1

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabl;->zal:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method public final zai()Lcom/google/android/gms/common/ConnectionResult;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v1

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabl;->zal:Lcom/google/android/gms/common/ConnectionResult;

    move-object v0, v1

    return-object v0
.end method

.method public final zaj()V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v1

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/gms/common/api/internal/zabl;->zaj:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabl;->zam()V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public final zak()V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v2

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/gms/common/api/internal/zabl;->zaj:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 2
    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/zabl;->zaJ()V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaD(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/content/Context;

    move-result-object v3

    .line 3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0x12

    if-ne v2, v3, :cond_0

    .line 4
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    move-object v1, v2

    move-object v2, v1

    const/16 v3, 0x15

    const-string v4, "Connection timed out waiting for Google Play services update to complete."

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_0
    move-object v2, v0

    move-object v3, v1

    .line 6
    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/internal/zabl;->zaI(Lcom/google/android/gms/common/api/Status;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    const-string v3, "Timing out connection while resuming."

    .line 7
    invoke-interface {v2, v3}, Lcom/google/android/gms/common/api/Api$Client;->disconnect(Ljava/lang/String;)V

    :goto_1
    return-void

    .line 5
    :cond_0
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    move-object v1, v2

    move-object v2, v1

    const/16 v3, 0x16

    const-string v4, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    goto :goto_1
.end method

.method public final zal()Z
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    .line 1
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/internal/zabl;->zaL(Z)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public final zam()V
    .locals 11
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v7}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v7

    .line 1
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 2
    invoke-interface {v7}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    invoke-interface {v7}, Lcom/google/android/gms/common/api/Api$Client;->isConnecting()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 15
    :cond_0
    :goto_0
    return-void

    .line 2
    :cond_1
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v7}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaw(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Lcom/google/android/gms/common/internal/zal;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v8}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/content/Context;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 3
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/common/internal/zal;->zaa(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$Client;)I

    move-result v7

    move v1, v7

    move v7, v1

    if-eqz v7, :cond_2

    .line 4
    new-instance v7, Lcom/google/android/gms/common/ConnectionResult;

    move-object v2, v7

    move-object v7, v2

    move v8, v1

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    const-string v7, "GoogleApiManager"

    move-object v1, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 5
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    move-object v7, v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    move-object v7, v3

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v5, v7

    add-int/lit8 v5, v5, 0x23

    move-object v7, v4

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v6, v7

    move v7, v5

    move v8, v6

    add-int/2addr v7, v8

    move v5, v7

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v6, v7

    move-object v7, v6

    move v8, v5

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v7, v6

    const-string v8, "The service for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v6

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v6

    const-string v8, " is not available: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v6

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v1

    move-object v8, v6

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 6
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object v7, v0

    move-object v8, v2

    const/4 v9, 0x0

    .line 7
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/common/api/internal/zabl;->zac(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 10
    :cond_2
    new-instance v7, Lcom/google/android/gms/common/api/internal/zabo;

    move-object v1, v7

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/gms/common/api/internal/zabl;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-direct {v7, v8, v9, v10}, Lcom/google/android/gms/common/api/internal/zabo;-><init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;Lcom/google/android/gms/common/api/Api$Client;Lcom/google/android/gms/common/api/internal/ApiKey;)V

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 11
    invoke-interface {v7}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zabl;->zai:Lcom/google/android/gms/common/api/internal/zaco;

    .line 12
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/api/internal/zaco;

    move-object v8, v1

    invoke-virtual {v7, v8}, Lcom/google/android/gms/common/api/internal/zaco;->zac(Lcom/google/android/gms/common/api/internal/zacn;)V

    :cond_3
    move-object v7, v0

    :try_start_1
    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    move-object v8, v1

    .line 13
    invoke-interface {v7, v8}, Lcom/google/android/gms/common/api/Api$Client;->connect(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v7

    move-object v1, v7

    .line 8
    new-instance v7, Lcom/google/android/gms/common/ConnectionResult;

    move-object v2, v7

    move-object v7, v2

    const/16 v8, 0xa

    invoke-direct {v7, v8}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    move-object v7, v0

    move-object v8, v2

    move-object v9, v1

    .line 9
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/common/api/internal/zabl;->zac(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :catch_1
    move-exception v7

    move-object v1, v7

    .line 14
    new-instance v7, Lcom/google/android/gms/common/ConnectionResult;

    move-object v2, v7

    move-object v7, v2

    const/16 v8, 0xa

    invoke-direct {v7, v8}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    move-object v7, v0

    move-object v8, v2

    move-object v9, v1

    .line 15
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/common/api/internal/zabl;->zac(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method public final zan(Lcom/google/android/gms/common/api/internal/zal;)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabl;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v2

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabl;->zaf:Ljava/util/Set;

    move-object v3, v1

    .line 2
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    return-void
.end method

.method final zao()Z
    .locals 2

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 1
    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public final zap()Z
    .locals 2

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabl;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 1
    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public final zaq()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/android/gms/common/api/internal/zabl;->zah:I

    move v0, v1

    return v0
.end method

.method final zar()I
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/android/gms/common/api/internal/zabl;->zam:I

    move v0, v1

    return v0
.end method

.method final zas()V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/google/android/gms/common/api/internal/zabl;->zam:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/gms/common/api/internal/zabl;->zam:I

    return-void
.end method
