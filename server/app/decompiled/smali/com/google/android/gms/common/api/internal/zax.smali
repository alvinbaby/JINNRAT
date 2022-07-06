.class final Lcom/google/android/gms/common/api/internal/zax;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zabu;


# instance fields
.field private final zaa:Landroid/content/Context;

.field private final zab:Lcom/google/android/gms/common/api/internal/zaaz;

.field private final zac:Landroid/os/Looper;

.field private final zad:Lcom/google/android/gms/common/api/internal/zabd;

.field private final zae:Lcom/google/android/gms/common/api/internal/zabd;

.field private final zaf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey",
            "<*>;",
            "Lcom/google/android/gms/common/api/internal/zabd;",
            ">;"
        }
    .end annotation
.end field

.field private final zag:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/internal/SignInConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final zah:Lcom/google/android/gms/common/api/Api$Client;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zai:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zaj:Lcom/google/android/gms/common/ConnectionResult;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zak:Lcom/google/android/gms/common/ConnectionResult;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zal:Z

.field private final zam:Ljava/util/concurrent/locks/Lock;

.field private zan:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaaz;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$Client;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V
    .locals 30
    .param p10    # Lcom/google/android/gms/common/api/Api$Client;
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
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;",
            "Lcom/google/android/gms/common/internal/ClientSettings;",
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder",
            "<+",
            "Lcom/google/android/gms/signin/zae;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/internal/zas;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/internal/zas;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Ljava/lang/Object;-><init>()V

    new-instance v18, Ljava/util/WeakHashMap;

    move-object/from16 v17, v18

    move-object/from16 v18, v17

    .line 1
    invoke-direct/range {v18 .. v18}, Ljava/util/WeakHashMap;-><init>()V

    move-object/from16 v18, v2

    move-object/from16 v19, v17

    .line 2
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zax;->zag:Ljava/util/Set;

    move-object/from16 v18, v2

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zax;->zaj:Lcom/google/android/gms/common/ConnectionResult;

    move-object/from16 v18, v2

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zax;->zak:Lcom/google/android/gms/common/ConnectionResult;

    move-object/from16 v18, v2

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/google/android/gms/common/api/internal/zax;->zal:Z

    move-object/from16 v18, v2

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/google/android/gms/common/api/internal/zax;->zan:I

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zax;->zaa:Landroid/content/Context;

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zax;->zab:Lcom/google/android/gms/common/api/internal/zaaz;

    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zax;->zam:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v18, v2

    move-object/from16 v19, v6

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zax;->zac:Landroid/os/Looper;

    move-object/from16 v18, v2

    move-object/from16 v19, v12

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zax;->zah:Lcom/google/android/gms/common/api/Api$Client;

    new-instance v18, Lcom/google/android/gms/common/api/internal/zabd;

    move-object/from16 v4, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zax;->zab:Lcom/google/android/gms/common/api/internal/zaaz;

    move-object/from16 v18, v0

    move-object/from16 v12, v18

    new-instance v18, Lcom/google/android/gms/common/api/internal/zav;

    move-object/from16 v17, v18

    move-object/from16 v18, v17

    move-object/from16 v19, v2

    const/16 v20, 0x0

    .line 3
    invoke-direct/range {v18 .. v20}, Lcom/google/android/gms/common/api/internal/zav;-><init>(Lcom/google/android/gms/common/api/internal/zax;Lcom/google/android/gms/common/api/internal/zau;)V

    move-object/from16 v18, v4

    move-object/from16 v19, v3

    move-object/from16 v20, v12

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v9

    const/16 v25, 0x0

    move-object/from16 v26, v16

    const/16 v27, 0x0

    move-object/from16 v28, v14

    move-object/from16 v29, v17

    invoke-direct/range {v18 .. v29}, Lcom/google/android/gms/common/api/internal/zabd;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaaz;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/zabt;)V

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zax;->zad:Lcom/google/android/gms/common/api/internal/zabd;

    new-instance v18, Lcom/google/android/gms/common/api/internal/zabd;

    move-object/from16 v4, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zax;->zab:Lcom/google/android/gms/common/api/internal/zaaz;

    move-object/from16 v18, v0

    move-object/from16 v12, v18

    new-instance v18, Lcom/google/android/gms/common/api/internal/zaw;

    move-object/from16 v14, v18

    move-object/from16 v18, v14

    move-object/from16 v19, v2

    const/16 v20, 0x0

    .line 4
    invoke-direct/range {v18 .. v20}, Lcom/google/android/gms/common/api/internal/zaw;-><init>(Lcom/google/android/gms/common/api/internal/zax;Lcom/google/android/gms/common/api/internal/zau;)V

    move-object/from16 v18, v4

    move-object/from16 v19, v3

    move-object/from16 v20, v12

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v10

    move-object/from16 v26, v15

    move-object/from16 v27, v11

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    invoke-direct/range {v18 .. v29}, Lcom/google/android/gms/common/api/internal/zabd;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaaz;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/zabt;)V

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    new-instance v18, Landroidx/collection/ArrayMap;

    move-object/from16 v3, v18

    move-object/from16 v18, v3

    .line 5
    invoke-direct/range {v18 .. v18}, Landroidx/collection/ArrayMap;-><init>()V

    move-object/from16 v18, v9

    .line 6
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v4, v18

    :goto_0
    move-object/from16 v18, v4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zax;->zad:Lcom/google/android/gms/common/api/internal/zabd;

    move-object/from16 v20, v0

    .line 7
    invoke-virtual/range {v18 .. v20}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    goto :goto_0

    :cond_0
    move-object/from16 v18, v8

    .line 8
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v4, v18

    :goto_1
    move-object/from16 v18, v4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    move-object/from16 v20, v0

    .line 9
    invoke-virtual/range {v18 .. v20}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    goto :goto_1

    :cond_1
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    .line 10
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zax;->zaf:Ljava/util/Map;

    return-void
.end method

.method private final zaA()V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zax;->zag:Ljava/util/Set;

    .line 1
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v2

    :goto_0
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/SignInConnectionListener;

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/common/api/internal/SignInConnectionListener;->onComplete()V

    goto :goto_0

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zax;->zag:Ljava/util/Set;

    .line 3
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private final zaB()Z
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zax;->zak:Lcom/google/android/gms/common/ConnectionResult;

    move-object v0, v1

    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private final zaC(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "+",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            ">;)Z"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zax;->zaf:Ljava/util/Map;

    move-object v3, v1

    .line 2
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/zabd;

    move-object v1, v2

    move-object v2, v1

    const-string v3, "GoogleApiClient is not configured to use the API required for this call."

    .line 3
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method private final zaD()Landroid/app/PendingIntent;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zax;->zah:Lcom/google/android/gms/common/api/Api$Client;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move-object v0, v1

    .line 3
    :goto_0
    return-object v0

    .line 4294967295
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zax;->zaa:Landroid/content/Context;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zax;->zab:Lcom/google/android/gms/common/api/internal/zaaz;

    .line 1
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zah:Lcom/google/android/gms/common/api/Api$Client;

    .line 2
    invoke-interface {v3}, Lcom/google/android/gms/common/api/Api$Client;->getSignInIntent()Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x8000000

    .line 3
    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method private static zaE(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 2
    .param p0    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static zaa(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaaz;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zax;
    .locals 35
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
            ">;)",
            "Lcom/google/android/gms/common/api/internal/zax;"
        }
    .end annotation

    .prologue
    .line 1
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    new-instance v20, Landroidx/collection/ArrayMap;

    move-object/from16 v12, v20

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v20}, Landroidx/collection/ArrayMap;-><init>()V

    new-instance v20, Landroidx/collection/ArrayMap;

    move-object/from16 v13, v20

    move-object/from16 v20, v13

    .line 2
    invoke-direct/range {v20 .. v20}, Landroidx/collection/ArrayMap;-><init>()V

    move-object/from16 v20, v7

    .line 3
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move-object/from16 v14, v20

    const/16 v20, 0x0

    move-object/from16 v7, v20

    :goto_0
    move-object/from16 v20, v14

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v20, v14

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    move-object/from16 v15, v20

    move-object/from16 v20, v15

    .line 4
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/android/gms/common/api/Api$Client;

    move-object/from16 v16, v20

    const/16 v20, 0x1

    move-object/from16 v21, v16

    .line 5
    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/common/api/Api$Client;->providesSignIn()Z

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    move-object/from16 v20, v16

    move-object/from16 v7, v20

    :cond_0
    move-object/from16 v20, v16

    .line 6
    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v20

    if-eqz v20, :cond_1

    move-object/from16 v20, v12

    move-object/from16 v21, v15

    .line 7
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-object/from16 v22, v16

    invoke-interface/range {v20 .. v22}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    goto :goto_0

    :cond_1
    move-object/from16 v20, v13

    move-object/from16 v21, v15

    .line 8
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-object/from16 v22, v16

    invoke-interface/range {v20 .. v22}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    goto :goto_0

    :cond_2
    move-object/from16 v20, v12

    .line 9
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->isEmpty()Z

    move-result v20

    const/16 v21, 0x1

    xor-int/lit8 v20, v20, 0x1

    const-string v21, "CompositeGoogleApiClient should not be used without any APIs that require sign-in."

    .line 10
    invoke-static/range {v20 .. v21}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    new-instance v20, Landroidx/collection/ArrayMap;

    move-object/from16 v14, v20

    move-object/from16 v20, v14

    .line 11
    invoke-direct/range {v20 .. v20}, Landroidx/collection/ArrayMap;-><init>()V

    new-instance v20, Landroidx/collection/ArrayMap;

    move-object/from16 v15, v20

    move-object/from16 v20, v15

    .line 12
    invoke-direct/range {v20 .. v20}, Landroidx/collection/ArrayMap;-><init>()V

    move-object/from16 v20, v9

    .line 13
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move-object/from16 v16, v20

    :goto_1
    move-object/from16 v20, v16

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v20, v16

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/android/gms/common/api/Api;

    move-object/from16 v17, v20

    move-object/from16 v20, v17

    .line 14
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/common/api/Api;->zac()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v20

    move-object/from16 v18, v20

    move-object/from16 v20, v12

    move-object/from16 v21, v18

    .line 15
    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    move-object/from16 v20, v14

    move-object/from16 v21, v17

    move-object/from16 v22, v9

    move-object/from16 v23, v17

    .line 16
    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Boolean;

    invoke-interface/range {v20 .. v22}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    goto :goto_1

    :cond_3
    move-object/from16 v20, v13

    move-object/from16 v21, v18

    .line 17
    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v20, v15

    move-object/from16 v21, v17

    move-object/from16 v22, v9

    move-object/from16 v23, v17

    .line 18
    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Boolean;

    invoke-interface/range {v20 .. v22}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    goto :goto_1

    :cond_4
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v16, v20

    move-object/from16 v20, v16

    .line 20
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v17, v20

    move-object/from16 v20, v17

    .line 21
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v20, v11

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v18, v20

    const/16 v20, 0x0

    move/from16 v9, v20

    :goto_2
    move/from16 v20, v9

    move/from16 v21, v18

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    move-object/from16 v20, v11

    move/from16 v21, v9

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    .line 22
    check-cast v20, Lcom/google/android/gms/common/api/internal/zas;

    move-object/from16 v19, v20

    move-object/from16 v20, v14

    move-object/from16 v21, v19

    .line 23
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zas;->zaa:Lcom/google/android/gms/common/api/Api;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    move-object/from16 v20, v16

    move-object/from16 v21, v19

    .line 24
    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v20

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v20, v15

    move-object/from16 v21, v19

    .line 25
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zas;->zaa:Lcom/google/android/gms/common/api/Api;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v20, v17

    move-object/from16 v21, v19

    .line 26
    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v20

    goto :goto_3

    :cond_6
    new-instance v20, Ljava/lang/IllegalStateException;

    move-object/from16 v2, v20

    move-object/from16 v20, v2

    const-string v21, "Each ClientCallbacks must have a corresponding API in the isOptionalMap"

    .line 27
    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v2

    throw v20

    :cond_7
    new-instance v20, Ljava/lang/IllegalStateException;

    move-object/from16 v2, v20

    move-object/from16 v20, v2

    const-string v21, "Each API in the isOptionalMap must have a corresponding client in the clients map."

    .line 19
    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v2

    throw v20

    :cond_8
    new-instance v20, Lcom/google/android/gms/common/api/internal/zax;

    move-object/from16 v9, v20

    move-object/from16 v20, v9

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move-object/from16 v28, v8

    move-object/from16 v29, v10

    move-object/from16 v30, v7

    move-object/from16 v31, v16

    move-object/from16 v32, v17

    move-object/from16 v33, v14

    move-object/from16 v34, v15

    .line 28
    invoke-direct/range {v20 .. v34}, Lcom/google/android/gms/common/api/internal/zax;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaaz;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$Client;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V

    move-object/from16 v20, v9

    move-object/from16 v2, v20

    return-object v2
.end method

.method static synthetic zao(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/concurrent/locks/Lock;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zax;->zam:Ljava/util/concurrent/locks/Lock;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zap(Lcom/google/android/gms/common/api/internal/zax;)V
    .locals 6

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zaj:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zax;->zaE(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zak:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zax;->zaE(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zax;->zaB()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v3, v0

    iget v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zan:I

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/AssertionError;

    move-object v1, v3

    move-object v3, v1

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    const-string v3, "CompositeGAC"

    const-string v4, "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    move-object v5, v1

    invoke-static {v3, v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    :goto_0
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/android/gms/common/api/internal/zax;->zan:I

    :goto_1
    return-void

    :pswitch_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zab:Lcom/google/android/gms/common/api/internal/zaaz;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/internal/zaaz;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zax;->zai:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/zaaz;->zaa(Landroid/os/Bundle;)V

    :pswitch_1
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zax;->zaA()V

    goto :goto_0

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zak:Lcom/google/android/gms/common/ConnectionResult;

    move-object v1, v3

    move-object v3, v1

    if-eqz v3, :cond_3

    move-object v3, v0

    iget v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zan:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zax;->zaA()V

    goto :goto_1

    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/internal/zax;->zaz(Lcom/google/android/gms/common/ConnectionResult;)V

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zad:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabd;->zah()V

    goto :goto_1

    :cond_3
    goto :goto_1

    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zaj:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zak:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zax;->zaE(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_5
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zaj:Lcom/google/android/gms/common/ConnectionResult;

    move-object v1, v3

    move-object v3, v1

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zak:Lcom/google/android/gms/common/ConnectionResult;

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    iget v3, v3, Lcom/google/android/gms/common/api/internal/zabd;->zaf:I

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zax;->zad:Lcom/google/android/gms/common/api/internal/zabd;

    iget v4, v4, Lcom/google/android/gms/common/api/internal/zabd;->zaf:I

    if-ge v3, v4, :cond_6

    move-object v3, v2

    move-object v1, v3

    :cond_6
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/internal/zax;->zaz(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_1

    :cond_7
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabd;->zah()V

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zax;->zaj:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/internal/zax;->zaz(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic zaq(Lcom/google/android/gms/common/api/internal/zax;Landroid/os/Bundle;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zai:Landroid/os/Bundle;

    move-object v2, v3

    move-object v3, v2

    if-nez v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zax;->zai:Landroid/os/Bundle;

    :goto_0
    return-void

    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    goto :goto_0
.end method

.method static synthetic zar(Lcom/google/android/gms/common/api/internal/zax;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zax;->zaj:Lcom/google/android/gms/common/ConnectionResult;

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method static synthetic zas(Lcom/google/android/gms/common/api/internal/zax;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/gms/common/api/internal/zax;->zal:Z

    move v0, v1

    return v0
.end method

.method static synthetic zat(Lcom/google/android/gms/common/api/internal/zax;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zax;->zak:Lcom/google/android/gms/common/ConnectionResult;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zau(Lcom/google/android/gms/common/api/internal/zax;Z)Z
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/gms/common/api/internal/zax;->zal:Z

    move v2, v1

    move v0, v2

    return v0
.end method

.method static synthetic zav(Lcom/google/android/gms/common/api/internal/zax;IZ)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zab:Lcom/google/android/gms/common/api/internal/zaaz;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/common/api/internal/zaaz;->zac(IZ)V

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zax;->zak:Lcom/google/android/gms/common/ConnectionResult;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zax;->zaj:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method static synthetic zaw(Lcom/google/android/gms/common/api/internal/zax;)Lcom/google/android/gms/common/api/internal/zabd;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zax(Lcom/google/android/gms/common/api/internal/zax;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zax;->zak:Lcom/google/android/gms/common/ConnectionResult;

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method static synthetic zay(Lcom/google/android/gms/common/api/internal/zax;)Lcom/google/android/gms/common/api/internal/zabd;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zax;->zad:Lcom/google/android/gms/common/api/internal/zabd;

    move-object v0, v1

    return-object v0
.end method

.method private final zaz(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 5
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget v2, v2, Lcom/google/android/gms/common/api/internal/zax;->zan:I

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/Exception;

    move-object v1, v2

    move-object v2, v1

    .line 3
    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const-string v2, "CompositeGAC"

    const-string v3, "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    :goto_0
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/android/gms/common/api/internal/zax;->zan:I

    return-void

    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zax;->zab:Lcom/google/android/gms/common/api/internal/zaaz;

    move-object v3, v1

    .line 1
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/zaaz;->zab(Lcom/google/android/gms/common/ConnectionResult;)V

    :pswitch_1
    move-object v2, v0

    .line 2
    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/zax;->zaA()V

    goto :goto_0

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final zab(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .locals 7
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

    move-object v3, v0

    move-object v4, v1

    .line 1
    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/internal/zax;->zaC(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    .line 2
    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zax;->zaB()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    new-instance v3, Lcom/google/android/gms/common/api/Status;

    move-object v2, v3

    move-object v3, v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v6, v0

    .line 4
    invoke-direct {v6}, Lcom/google/android/gms/common/api/internal/zax;->zaD()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    move-object v3, v1

    move-object v4, v2

    .line 3
    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->setFailedResult(Lcom/google/android/gms/common/api/Status;)V

    move-object v3, v1

    move-object v0, v3

    .line 6
    :goto_0
    return-object v0

    .line 3
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    move-object v4, v1

    .line 5
    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/zabd;->zab(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object v3

    move-object v3, v1

    move-object v0, v3

    goto :goto_0

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zad:Lcom/google/android/gms/common/api/internal/zabd;

    move-object v4, v1

    .line 6
    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/zabd;->zab(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object v3

    move-object v3, v1

    move-object v0, v3

    goto :goto_0
.end method

.method public final zac(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .locals 7
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

    move-object v3, v0

    move-object v4, v1

    .line 1
    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/internal/zax;->zaC(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    .line 2
    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zax;->zaB()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    new-instance v3, Lcom/google/android/gms/common/api/Status;

    move-object v2, v3

    move-object v3, v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v6, v0

    .line 4
    invoke-direct {v6}, Lcom/google/android/gms/common/api/internal/zax;->zaD()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    move-object v3, v1

    move-object v4, v2

    .line 3
    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->setFailedResult(Lcom/google/android/gms/common/api/Status;)V

    move-object v3, v1

    move-object v0, v3

    .line 6
    :goto_0
    return-object v0

    .line 3
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    move-object v4, v1

    .line 5
    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/zabd;->zac(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zad:Lcom/google/android/gms/common/api/internal/zabd;

    move-object v4, v1

    .line 6
    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/zabd;->zac(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public final zad(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 5
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

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zax;->zaf:Ljava/util/Map;

    move-object v3, v1

    .line 1
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Api;->zac()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 2
    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/zax;->zaB()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    move-object v1, v2

    move-object v2, v1

    const/4 v3, 0x4

    move-object v4, v0

    invoke-direct {v4}, Lcom/google/android/gms/common/api/internal/zax;->zaD()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    move-object v2, v1

    move-object v0, v2

    .line 5
    :goto_0
    return-object v0

    .line 3
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    move-object v3, v1

    .line 4
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/zabd;->zad(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zax;->zad:Lcom/google/android/gms/common/api/internal/zabd;

    move-object v3, v1

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/zabd;->zad(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public final zae()V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x2

    iput v2, v1, Lcom/google/android/gms/common/api/internal/zax;->zan:I

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/gms/common/api/internal/zax;->zal:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zax;->zak:Lcom/google/android/gms/common/ConnectionResult;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zax;->zaj:Lcom/google/android/gms/common/ConnectionResult;

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zax;->zad:Lcom/google/android/gms/common/api/internal/zabd;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabd;->zae()V

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabd;->zae()V

    return-void
.end method

.method public final zaf()Lcom/google/android/gms/common/ConnectionResult;
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v0, v1

    move-object v1, v0

    .line 1
    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    move-object v1, v0

    throw v1
.end method

.method public final zag(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 7
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object v1, v5

    move-object v5, v1

    .line 1
    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    move-object v5, v1

    throw v5
.end method

.method public final zah()V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zax;->zak:Lcom/google/android/gms/common/ConnectionResult;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zax;->zaj:Lcom/google/android/gms/common/ConnectionResult;

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/android/gms/common/api/internal/zax;->zan:I

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zax;->zad:Lcom/google/android/gms/common/api/internal/zabd;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabd;->zah()V

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabd;->zah()V

    move-object v1, v0

    .line 3
    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zax;->zaA()V

    return-void
.end method

.method public final zai()Z
    .locals 4

    .prologue
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zax;->zam:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zax;->zad:Lcom/google/android/gms/common/api/internal/zabd;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabd;->zai()Z

    move-result v2

    move v1, v2

    move v2, v1

    if-eqz v2, :cond_3

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabd;->zai()Z

    move-result v2

    move v1, v2

    move v2, v1

    if-nez v2, :cond_2

    move-object v2, v0

    .line 4
    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/zax;->zaB()Z

    move-result v2

    move v1, v2

    move v2, v1

    if-nez v2, :cond_1

    move-object v2, v0

    iget v2, v2, Lcom/google/android/gms/common/api/internal/zax;->zan:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v1, v2

    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zax;->zam:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v2, v1

    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zax;->zam:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v2, v1

    .line 6
    throw v2

    :cond_3
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public final zaj()Z
    .locals 4

    .prologue
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zax;->zam:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object v2, v0

    :try_start_0
    iget v2, v2, Lcom/google/android/gms/common/api/internal/zax;->zan:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    move v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v1, v2

    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zax;->zam:Ljava/util/concurrent/locks/Lock;

    .line 2
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v2, v1

    move v0, v2

    return v0

    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zax;->zam:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v2, v1

    .line 3
    throw v2

    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public final zak(Lcom/google/android/gms/common/api/internal/SignInConnectionListener;)Z
    .locals 5

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zam:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object v3, v0

    .line 2
    :try_start_0
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zax;->zaj()Z

    move-result v3

    move v2, v3

    move v3, v2

    if-nez v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zax;->zai()Z

    move-result v3

    move v2, v3

    move v3, v2

    if-eqz v3, :cond_2

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabd;->zai()Z

    move-result v3

    move v2, v3

    move v3, v2

    if-nez v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zag:Ljava/util/Set;

    move-object v4, v1

    .line 5
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    move-object v3, v0

    iget v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zan:I

    move v1, v3

    move v3, v1

    if-nez v3, :cond_1

    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lcom/google/android/gms/common/api/internal/zax;->zan:I

    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zax;->zak:Lcom/google/android/gms/common/ConnectionResult;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabd;->zae()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zam:Ljava/util/concurrent/locks/Lock;

    .line 4
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v3, 0x1

    move v0, v3

    :goto_0
    return v0

    :catchall_0
    move-exception v3

    move-object v1, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zam:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v3, v1

    .line 7
    throw v3

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zam:Ljava/util/concurrent/locks/Lock;

    .line 4
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public final zal()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zax;->zad:Lcom/google/android/gms/common/api/internal/zabd;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabd;->zal()V

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabd;->zal()V

    return-void
.end method

.method public final zam()V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zam:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object v3, v0

    .line 2
    :try_start_0
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zax;->zaj()Z

    move-result v3

    move v1, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabd;->zah()V

    .line 4
    new-instance v3, Lcom/google/android/gms/common/ConnectionResult;

    move-object v2, v3

    move-object v3, v2

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zax;->zak:Lcom/google/android/gms/common/ConnectionResult;

    move v3, v1

    if-eqz v3, :cond_0

    new-instance v3, Lcom/google/android/gms/internal/base/zap;

    move-object v1, v3

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zax;->zac:Landroid/os/Looper;

    .line 5
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/base/zap;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/google/android/gms/common/api/internal/zau;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v0

    .line 6
    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/internal/zau;-><init>(Lcom/google/android/gms/common/api/internal/zax;)V

    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zam:Ljava/util/concurrent/locks/Lock;

    .line 8
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v3

    move-object v1, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zax;->zam:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v3, v1

    .line 9
    throw v3

    :cond_0
    move-object v3, v0

    .line 7
    :try_start_1
    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zax;->zaA()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final zan(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
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

    move-object v3, p3

    move-object v4, p4

    move-object v5, v3

    move-object v6, v1

    .line 1
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v5

    const-string v6, "authClient"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    move-object v6, v1

    .line 2
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/android/gms/common/api/internal/zabd;->zan(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v1

    .line 3
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v5

    const-string v6, "anonClient"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zax;->zad:Lcom/google/android/gms/common/api/internal/zabd;

    move-object v6, v1

    .line 4
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/android/gms/common/api/internal/zabd;->zan(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method
