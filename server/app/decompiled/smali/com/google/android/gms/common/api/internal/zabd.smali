.class public final Lcom/google/android/gms/common/api/internal/zabd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zabu;
.implements Lcom/google/android/gms/common/api/internal/zat;


# instance fields
.field final zaa:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;"
        }
    .end annotation
.end field

.field final zab:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey",
            "<*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field final zac:Lcom/google/android/gms/common/internal/ClientSettings;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final zad:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final zae:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder",
            "<+",
            "Lcom/google/android/gms/signin/zae;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field zaf:I

.field final zag:Lcom/google/android/gms/common/api/internal/zaaz;

.field final zah:Lcom/google/android/gms/common/api/internal/zabt;

.field private final zai:Ljava/util/concurrent/locks/Lock;

.field private final zaj:Ljava/util/concurrent/locks/Condition;

.field private final zak:Landroid/content/Context;

.field private final zal:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

.field private final zam:Lcom/google/android/gms/common/api/internal/zabc;

.field private volatile zan:Lcom/google/android/gms/common/api/internal/zaba;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field private zao:Lcom/google/android/gms/common/ConnectionResult;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaaz;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/zabt;)V
    .locals 16
    .param p7    # Lcom/google/android/gms/common/internal/ClientSettings;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/internal/zaaz;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/GoogleApiAvailabilityLight;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;",
            "Lcom/google/android/gms/common/internal/ClientSettings;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder",
            "<+",
            "Lcom/google/android/gms/signin/zae;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/internal/zas;",
            ">;",
            "Lcom/google/android/gms/common/api/internal/zabt;",
            ")V"
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object v13, v0

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    new-instance v13, Ljava/util/HashMap;

    move-object v12, v13

    move-object v13, v12

    .line 1
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object v13, v0

    move-object v14, v12

    iput-object v14, v13, Lcom/google/android/gms/common/api/internal/zabd;->zab:Ljava/util/Map;

    move-object v13, v0

    const/4 v14, 0x0

    iput-object v14, v13, Lcom/google/android/gms/common/api/internal/zabd;->zao:Lcom/google/android/gms/common/ConnectionResult;

    move-object v13, v0

    move-object v14, v1

    iput-object v14, v13, Lcom/google/android/gms/common/api/internal/zabd;->zak:Landroid/content/Context;

    move-object v13, v0

    move-object v14, v3

    iput-object v14, v13, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    move-object v13, v0

    move-object v14, v5

    iput-object v14, v13, Lcom/google/android/gms/common/api/internal/zabd;->zal:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-object v13, v0

    move-object v14, v6

    iput-object v14, v13, Lcom/google/android/gms/common/api/internal/zabd;->zaa:Ljava/util/Map;

    move-object v13, v0

    move-object v14, v7

    iput-object v14, v13, Lcom/google/android/gms/common/api/internal/zabd;->zac:Lcom/google/android/gms/common/internal/ClientSettings;

    move-object v13, v0

    move-object v14, v8

    iput-object v14, v13, Lcom/google/android/gms/common/api/internal/zabd;->zad:Ljava/util/Map;

    move-object v13, v0

    move-object v14, v9

    iput-object v14, v13, Lcom/google/android/gms/common/api/internal/zabd;->zae:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    move-object v13, v0

    move-object v14, v2

    iput-object v14, v13, Lcom/google/android/gms/common/api/internal/zabd;->zag:Lcom/google/android/gms/common/api/internal/zaaz;

    move-object v13, v0

    move-object v14, v11

    iput-object v14, v13, Lcom/google/android/gms/common/api/internal/zabd;->zah:Lcom/google/android/gms/common/api/internal/zabt;

    move-object v13, v10

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    move v2, v13

    const/4 v13, 0x0

    move v1, v13

    :goto_0
    move v13, v1

    move v14, v2

    if-ge v13, v14, :cond_0

    move-object v13, v10

    move v14, v1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 2
    check-cast v13, Lcom/google/android/gms/common/api/internal/zas;

    move-object v14, v0

    .line 3
    invoke-virtual {v13, v14}, Lcom/google/android/gms/common/api/internal/zas;->zaa(Lcom/google/android/gms/common/api/internal/zat;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v13, Lcom/google/android/gms/common/api/internal/zabc;

    move-object v1, v13

    move-object v13, v1

    move-object v14, v0

    move-object v15, v4

    .line 4
    invoke-direct {v13, v14, v15}, Lcom/google/android/gms/common/api/internal/zabc;-><init>(Lcom/google/android/gms/common/api/internal/zabd;Landroid/os/Looper;)V

    move-object v13, v0

    move-object v14, v1

    iput-object v14, v13, Lcom/google/android/gms/common/api/internal/zabd;->zam:Lcom/google/android/gms/common/api/internal/zabc;

    move-object v13, v0

    move-object v14, v3

    .line 5
    invoke-interface {v14}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v14

    iput-object v14, v13, Lcom/google/android/gms/common/api/internal/zabd;->zaj:Ljava/util/concurrent/locks/Condition;

    new-instance v13, Lcom/google/android/gms/common/api/internal/zaas;

    move-object v1, v13

    move-object v13, v1

    move-object v14, v0

    .line 6
    invoke-direct {v13, v14}, Lcom/google/android/gms/common/api/internal/zaas;-><init>(Lcom/google/android/gms/common/api/internal/zabd;)V

    move-object v13, v0

    move-object v14, v1

    iput-object v14, v13, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    return-void
.end method

.method static synthetic zat(Lcom/google/android/gms/common/api/internal/zabd;)Ljava/util/concurrent/locks/Lock;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zau(Lcom/google/android/gms/common/api/internal/zabd;)Lcom/google/android/gms/common/api/internal/zaba;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    move-object v3, v1

    .line 2
    invoke-interface {v2, v3}, Lcom/google/android/gms/common/api/internal/zaba;->zaf(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 2
    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v2, v1

    .line 4
    throw v2
.end method

.method public final onConnectionSuspended(I)V
    .locals 4

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    move v3, v1

    .line 2
    invoke-interface {v2, v3}, Lcom/google/android/gms/common/api/internal/zaba;->zah(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 2
    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v2, v1

    .line 4
    throw v2
.end method

.method public final zaa(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    .locals 8
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    .line 2
    invoke-interface {v4, v5, v6, v7}, Lcom/google/android/gms/common/api/internal/zaba;->zag(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 2
    :catchall_0
    move-exception v4

    move-object v1, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v4, v1

    .line 4
    throw v4
.end method

.method public final zab(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .locals 4
    .param p1    # Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zak()V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    move-object v3, v1

    .line 2
    invoke-interface {v2, v3}, Lcom/google/android/gms/common/api/internal/zaba;->zab(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object v2

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public final zac(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .locals 4
    .param p1    # Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zak()V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    move-object v3, v1

    .line 2
    invoke-interface {v2, v3}, Lcom/google/android/gms/common/api/internal/zaba;->zac(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public final zad(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 4
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;)",
            "Lcom/google/android/gms/common/ConnectionResult;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Api;->zac()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zaa:Ljava/util/Map;

    move-object v3, v1

    .line 2
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zaa:Ljava/util/Map;

    move-object v3, v1

    .line 3
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$Client;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    sget-object v2, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    move-object v0, v2

    .line 6
    :goto_0
    return-object v0

    .line 4
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zab:Ljava/util/Map;

    move-object v3, v1

    .line 5
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zab:Ljava/util/Map;

    move-object v3, v1

    .line 6
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/ConnectionResult;

    move-object v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public final zae()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 1
    invoke-interface {v1}, Lcom/google/android/gms/common/api/internal/zaba;->zae()V

    return-void
.end method

.method public final zaf()Lcom/google/android/gms/common/ConnectionResult;
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabd;->zae()V

    :goto_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 2
    instance-of v1, v1, Lcom/google/android/gms/common/api/internal/zaar;

    if-eqz v1, :cond_0

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabd;->zaj:Ljava/util/concurrent/locks/Condition;

    .line 3
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 4
    instance-of v1, v1, Lcom/google/android/gms/common/api/internal/zaag;

    if-eqz v1, :cond_1

    .line 5
    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    move-object v0, v1

    .line 8
    :goto_1
    return-object v0

    .line 5
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabd;->zao:Lcom/google/android/gms/common/ConnectionResult;

    move-object v0, v1

    move-object v1, v0

    if-eqz v1, :cond_2

    move-object v1, v0

    move-object v0, v1

    goto :goto_1

    .line 6
    :cond_2
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    move-object v0, v1

    move-object v1, v0

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    move-object v1, v0

    move-object v0, v1

    goto :goto_1

    .line 7
    :catch_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 8
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    move-object v0, v1

    move-object v1, v0

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    move-object v1, v0

    move-object v0, v1

    goto :goto_1
.end method

.method public final zag(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 13
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v3, p3

    move-object v8, v0

    .line 1
    invoke-virtual {v8}, Lcom/google/android/gms/common/api/internal/zabd;->zae()V

    move-object v8, v3

    move-wide v9, v1

    .line 2
    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    move-wide v4, v8

    :goto_0
    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 3
    instance-of v8, v8, Lcom/google/android/gms/common/api/internal/zaar;

    if-eqz v8, :cond_1

    move-wide v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_0

    move-object v8, v0

    .line 8
    :try_start_0
    invoke-virtual {v8}, Lcom/google/android/gms/common/api/internal/zabd;->zah()V

    .line 9
    new-instance v8, Lcom/google/android/gms/common/ConnectionResult;

    move-object v0, v8

    move-object v8, v0

    const/16 v9, 0xe

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    move-object v8, v0

    move-object v0, v8

    .line 11
    :goto_1
    return-object v0

    .line 9
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zabd;->zaj:Ljava/util/concurrent/locks/Condition;

    move-wide v9, v4

    .line 4
    invoke-interface {v8, v9, v10}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    move-wide v6, v8

    move-wide v8, v6

    move-wide v4, v8

    goto :goto_0

    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 5
    instance-of v8, v8, Lcom/google/android/gms/common/api/internal/zaag;

    if-eqz v8, :cond_2

    .line 6
    sget-object v8, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    move-object v0, v8

    goto :goto_1

    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zabd;->zao:Lcom/google/android/gms/common/ConnectionResult;

    move-object v0, v8

    move-object v8, v0

    if-eqz v8, :cond_3

    move-object v8, v0

    move-object v0, v8

    goto :goto_1

    .line 7
    :cond_3
    new-instance v8, Lcom/google/android/gms/common/ConnectionResult;

    move-object v0, v8

    move-object v8, v0

    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    move-object v8, v0

    move-object v0, v8

    goto :goto_1

    .line 10
    :catch_0
    move-exception v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    .line 11
    new-instance v8, Lcom/google/android/gms/common/ConnectionResult;

    move-object v0, v8

    move-object v8, v0

    const/16 v9, 0xf

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    move-object v8, v0

    move-object v0, v8

    goto :goto_1
.end method

.method public final zah()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 1
    invoke-interface {v1}, Lcom/google/android/gms/common/api/internal/zaba;->zad()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabd;->zab:Ljava/util/Map;

    .line 2
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public final zai()Z
    .locals 2

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 1
    instance-of v1, v1, Lcom/google/android/gms/common/api/internal/zaag;

    move v0, v1

    return v0
.end method

.method public final zaj()Z
    .locals 2

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 1
    instance-of v1, v1, Lcom/google/android/gms/common/api/internal/zaar;

    move v0, v1

    return v0
.end method

.method public final zak(Lcom/google/android/gms/common/api/internal/SignInConnectionListener;)Z
    .locals 3

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public final zal()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 1
    instance-of v1, v1, Lcom/google/android/gms/common/api/internal/zaag;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 2
    check-cast v1, Lcom/google/android/gms/common/api/internal/zaag;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zaag;->zai()V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public final zam()V
    .locals 0

    return-void
.end method

.method public final zan(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 13
    .param p2    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v8, v1

    .line 1
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    move-object v8, v3

    move-object v9, v1

    .line 2
    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v8

    const-string v9, "mState="

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zabd;->zad:Ljava/util/Map;

    .line 3
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v8

    :goto_0
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/common/api/Api;

    move-object v7, v8

    move-object v8, v3

    move-object v9, v1

    .line 4
    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v8

    move-object v9, v7

    invoke-virtual {v9}, Lcom/google/android/gms/common/api/Api;->zad()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zabd;->zaa:Ljava/util/Map;

    move-object v9, v7

    .line 5
    invoke-virtual {v9}, Lcom/google/android/gms/common/api/Api;->zac()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/common/api/Api$Client;

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/common/api/Api$Client;

    move-object v9, v5

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    .line 6
    invoke-interface {v8, v9, v10, v11, v12}, Lcom/google/android/gms/common/api/Api$Client;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final zao()V
    .locals 10

    .prologue
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v2, Lcom/google/android/gms/common/api/internal/zaar;

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabd;->zac:Lcom/google/android/gms/common/internal/ClientSettings;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabd;->zad:Ljava/util/Map;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zabd;->zal:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zabd;->zae:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/gms/common/api/internal/zabd;->zak:Landroid/content/Context;

    .line 2
    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/common/api/internal/zaar;-><init>(Lcom/google/android/gms/common/api/internal/zabd;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 3
    invoke-interface {v2}, Lcom/google/android/gms/common/api/internal/zaba;->zaa()V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zaj:Ljava/util/concurrent/locks/Condition;

    .line 4
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 4
    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v2, v1

    .line 6
    throw v2
.end method

.method final zap()V
    .locals 4

    .prologue
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zag:Lcom/google/android/gms/common/api/internal/zaaz;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zaaz;->zad()Z

    move-result v2

    new-instance v2, Lcom/google/android/gms/common/api/internal/zaag;

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    .line 3
    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/internal/zaag;-><init>(Lcom/google/android/gms/common/api/internal/zabd;)V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/common/api/internal/zaba;->zaa()V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zaj:Ljava/util/concurrent/locks/Condition;

    .line 5
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 6
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 5
    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 6
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v2, v1

    .line 7
    throw v2
.end method

.method final zaq(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object v2, v0

    move-object v3, v1

    :try_start_0
    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabd;->zao:Lcom/google/android/gms/common/ConnectionResult;

    new-instance v2, Lcom/google/android/gms/common/api/internal/zaas;

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    .line 2
    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/internal/zaas;-><init>(Lcom/google/android/gms/common/api/internal/zabd;)V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 3
    invoke-interface {v2}, Lcom/google/android/gms/common/api/internal/zaba;->zaa()V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zaj:Ljava/util/concurrent/locks/Condition;

    .line 4
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 4
    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v2, v1

    .line 6
    throw v2
.end method

.method final zar(Lcom/google/android/gms/common/api/internal/zabb;)V
    .locals 6

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabd;->zam:Lcom/google/android/gms/common/api/internal/zabc;

    move-object v2, v3

    move-object v3, v2

    const/4 v4, 0x1

    move-object v5, v1

    .line 1
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/common/api/internal/zabc;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    move-object v1, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabd;->zam:Lcom/google/android/gms/common/api/internal/zabc;

    move-object v4, v1

    .line 2
    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/zabc;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    return-void
.end method

.method final zas(Ljava/lang/RuntimeException;)V
    .locals 6

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabd;->zam:Lcom/google/android/gms/common/api/internal/zabc;

    move-object v2, v3

    move-object v3, v2

    const/4 v4, 0x2

    move-object v5, v1

    .line 1
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/common/api/internal/zabc;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    move-object v1, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabd;->zam:Lcom/google/android/gms/common/api/internal/zabc;

    move-object v4, v1

    .line 2
    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/zabc;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    return-void
.end method
