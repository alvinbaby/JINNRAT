.class public final Lcom/google/android/gms/common/api/internal/zaar;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zaba;


# instance fields
.field private final zaa:Lcom/google/android/gms/common/api/internal/zabd;

.field private final zab:Ljava/util/concurrent/locks/Lock;

.field private final zac:Landroid/content/Context;

.field private final zad:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

.field private zae:Lcom/google/android/gms/common/ConnectionResult;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zaf:I

.field private zag:I

.field private zah:I

.field private final zai:Landroid/os/Bundle;

.field private final zaj:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey;",
            ">;"
        }
    .end annotation
.end field

.field private zak:Lcom/google/android/gms/signin/zae;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zal:Z

.field private zam:Z

.field private zan:Z

.field private zao:Lcom/google/android/gms/common/internal/IAccountAccessor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zap:Z

.field private zaq:Z

.field private final zar:Lcom/google/android/gms/common/internal/ClientSettings;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zas:Ljava/util/Map;
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

.field private final zat:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
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

.field private final zau:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zabd;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V
    .locals 11
    .param p2    # Lcom/google/android/gms/common/internal/ClientSettings;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zabd;",
            "Lcom/google/android/gms/common/internal/ClientSettings;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/gms/common/GoogleApiAvailabilityLight;",
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder",
            "<+",
            "Lcom/google/android/gms/signin/zae;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v9, v0

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Lcom/google/android/gms/common/api/internal/zaar;->zag:I

    new-instance v9, Landroid/os/Bundle;

    move-object v8, v9

    move-object v9, v8

    .line 1
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    move-object v9, v0

    move-object v10, v8

    iput-object v10, v9, Lcom/google/android/gms/common/api/internal/zaar;->zai:Landroid/os/Bundle;

    new-instance v9, Ljava/util/HashSet;

    move-object v8, v9

    move-object v9, v8

    .line 2
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    move-object v9, v0

    move-object v10, v8

    iput-object v10, v9, Lcom/google/android/gms/common/api/internal/zaar;->zaj:Ljava/util/Set;

    new-instance v9, Ljava/util/ArrayList;

    move-object v8, v9

    move-object v9, v8

    .line 3
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    move-object v10, v8

    iput-object v10, v9, Lcom/google/android/gms/common/api/internal/zaar;->zau:Ljava/util/ArrayList;

    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    move-object v9, v0

    move-object v10, v2

    iput-object v10, v9, Lcom/google/android/gms/common/api/internal/zaar;->zar:Lcom/google/android/gms/common/internal/ClientSettings;

    move-object v9, v0

    move-object v10, v3

    iput-object v10, v9, Lcom/google/android/gms/common/api/internal/zaar;->zas:Ljava/util/Map;

    move-object v9, v0

    move-object v10, v4

    iput-object v10, v9, Lcom/google/android/gms/common/api/internal/zaar;->zad:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-object v9, v0

    move-object v10, v5

    iput-object v10, v9, Lcom/google/android/gms/common/api/internal/zaar;->zat:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    move-object v9, v0

    move-object v10, v6

    iput-object v10, v9, Lcom/google/android/gms/common/api/internal/zaar;->zab:Ljava/util/concurrent/locks/Lock;

    move-object v9, v0

    move-object v10, v7

    iput-object v10, v9, Lcom/google/android/gms/common/api/internal/zaar;->zac:Landroid/content/Context;

    return-void
.end method

.method private final zaA()V
    .locals 8
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v5, v0

    iget v5, v5, Lcom/google/android/gms/common/api/internal/zaar;->zah:I

    if-eqz v5, :cond_0

    .line 9
    :goto_0
    return-void

    .line 4294967295
    :cond_0
    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/android/gms/common/api/internal/zaar;->zam:Z

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/android/gms/common/api/internal/zaar;->zan:Z

    if-eqz v5, :cond_5

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    move-object v1, v5

    move-object v5, v1

    .line 1
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Lcom/google/android/gms/common/api/internal/zaar;->zag:I

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zabd;->zaa:Ljava/util/Map;

    .line 2
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    iput v6, v5, Lcom/google/android/gms/common/api/internal/zaar;->zah:I

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabd;->zaa:Ljava/util/Map;

    .line 3
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :cond_2
    :goto_1
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-object v3, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabd;->zab:Ljava/util/Map;

    move-object v6, v3

    .line 4
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v0

    .line 5
    invoke-direct {v5}, Lcom/google/android/gms/common/api/internal/zaar;->zaz()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v0

    .line 6
    invoke-direct {v5}, Lcom/google/android/gms/common/api/internal/zaar;->zaB()V

    goto :goto_1

    :cond_3
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zabd;->zaa:Ljava/util/Map;

    move-object v7, v3

    .line 7
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/api/Api$Client;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1

    :cond_4
    move-object v5, v1

    .line 8
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zaar;->zau:Ljava/util/ArrayList;

    move-object v2, v5

    .line 9
    invoke-static {}, Lcom/google/android/gms/common/api/internal/zabe;->zaa()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    move-object v3, v5

    new-instance v5, Lcom/google/android/gms/common/api/internal/zaam;

    move-object v4, v5

    move-object v5, v4

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/common/api/internal/zaam;-><init>(Lcom/google/android/gms/common/api/internal/zaar;Ljava/util/ArrayList;)V

    move-object v5, v2

    move-object v6, v3

    move-object v7, v4

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    goto/16 :goto_0

    :cond_5
    goto/16 :goto_0
.end method

.method private final zaB()V
    .locals 6
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    .line 1
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabd;->zap()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/api/internal/zabe;->zaa()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    move-object v1, v3

    new-instance v3, Lcom/google/android/gms/common/api/internal/zaah;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/internal/zaah;-><init>(Lcom/google/android/gms/common/api/internal/zaar;)V

    move-object v3, v1

    move-object v4, v2

    .line 3
    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaar;->zak:Lcom/google/android/gms/signin/zae;

    move-object v1, v3

    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/android/gms/common/api/internal/zaar;->zap:Z

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaar;->zao:Lcom/google/android/gms/common/internal/IAccountAccessor;

    .line 4
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/android/gms/common/api/internal/zaar;->zaq:Z

    .line 5
    invoke-interface {v3, v4, v5}, Lcom/google/android/gms/signin/zae;->zab(Lcom/google/android/gms/common/internal/IAccountAccessor;Z)V

    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    .line 6
    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/internal/zaar;->zaG(Z)V

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabd;->zab:Ljava/util/Map;

    .line 7
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabd;->zaa:Ljava/util/Map;

    move-object v4, v2

    .line 8
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/Api$Client;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/Api$Client;

    .line 9
    invoke-interface {v3}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    goto :goto_0

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaar;->zai:Landroid/os/Bundle;

    .line 10
    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    move-object v1, v3

    :goto_1
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabd;->zah:Lcom/google/android/gms/common/api/internal/zabt;

    move-object v4, v1

    .line 11
    invoke-interface {v3, v4}, Lcom/google/android/gms/common/api/internal/zabt;->zaa(Landroid/os/Bundle;)V

    return-void

    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaar;->zai:Landroid/os/Bundle;

    move-object v1, v3

    goto :goto_1
.end method

.method private final zaC(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;Z)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v2

    .line 1
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/Api;->zaa()Lcom/google/android/gms/common/api/Api$BaseClientBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/Api$BaseClientBuilder;->getPriority()I

    move-result v5

    move v4, v5

    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v1

    .line 2
    invoke-virtual {v5}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zaar;->zae:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v5, :cond_1

    move v5, v4

    move-object v6, v0

    iget v6, v6, Lcom/google/android/gms/common/api/internal/zaar;->zaf:I

    if-ge v5, v6, :cond_2

    :cond_1
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/zaar;->zae:Lcom/google/android/gms/common/ConnectionResult;

    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/google/android/gms/common/api/internal/zaar;->zaf:I

    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabd;->zab:Ljava/util/Map;

    move-object v6, v2

    .line 4
    invoke-virtual {v6}, Lcom/google/android/gms/common/api/Api;->zac()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v6

    move-object v7, v1

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-void

    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zaar;->zad:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-object v6, v1

    .line 3
    invoke-virtual {v6}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionIntent(I)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_0
.end method

.method private final zaD()V
    .locals 8
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/google/android/gms/common/api/internal/zaar;->zam:Z

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabd;->zag:Lcom/google/android/gms/common/api/internal/zaaz;

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/zaaz;->zad:Ljava/util/Set;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zaar;->zaj:Ljava/util/Set;

    .line 2
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v5

    :cond_0
    :goto_0
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-object v2, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabd;->zab:Ljava/util/Map;

    move-object v6, v2

    .line 3
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    move-object v3, v5

    move-object v5, v3

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabd;->zab:Ljava/util/Map;

    move-object v3, v5

    .line 4
    new-instance v5, Lcom/google/android/gms/common/ConnectionResult;

    move-object v4, v5

    move-object v5, v4

    const/16 v6, 0x11

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    move-object v5, v3

    move-object v6, v2

    move-object v7, v4

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final zaE(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/gms/common/api/internal/zaar;->zal:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private final zaF(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 5
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    .line 1
    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/zaar;->zaH()V

    move-object v2, v0

    move-object v3, v1

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/internal/zaar;->zaG(Z)V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    move-object v3, v1

    .line 3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/zabd;->zaq(Lcom/google/android/gms/common/ConnectionResult;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zah:Lcom/google/android/gms/common/api/internal/zabt;

    move-object v3, v1

    .line 4
    invoke-interface {v2, v3}, Lcom/google/android/gms/common/api/internal/zabt;->zab(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method private final zaG(Z)V
    .locals 5
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaar;->zak:Lcom/google/android/gms/signin/zae;

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    .line 1
    invoke-interface {v3}, Lcom/google/android/gms/signin/zae;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 2
    invoke-interface {v3}, Lcom/google/android/gms/signin/zae;->zac()V

    :cond_0
    move-object v3, v2

    .line 3
    invoke-interface {v3}, Lcom/google/android/gms/signin/zae;->disconnect()V

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaar;->zar:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 4
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/internal/ClientSettings;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zaar;->zao:Lcom/google/android/gms/common/internal/IAccountAccessor;

    :goto_0
    return-void

    :cond_1
    goto :goto_0
.end method

.method private final zaH()V
    .locals 6

    .prologue
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaar;->zau:Ljava/util/ArrayList;

    move-object v2, v4

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v3, v4

    const/4 v4, 0x0

    move v1, v4

    :goto_0
    move v4, v1

    move v5, v3

    if-ge v4, v5, :cond_0

    move-object v4, v2

    move v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1
    check-cast v4, Ljava/util/concurrent/Future;

    const/4 v5, 0x1

    .line 2
    invoke-interface {v4, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaar;->zau:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private final zaI(I)Z
    .locals 9
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    iget v6, v6, Lcom/google/android/gms/common/api/internal/zaar;->zag:I

    move v7, v1

    if-eq v6, v7, :cond_0

    const-string v6, "GACConnecting"

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zabd;->zag:Lcom/google/android/gms/common/api/internal/zaaz;

    .line 1
    invoke-virtual {v7}, Lcom/google/android/gms/common/api/internal/zaaz;->zae()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object v6, v0

    .line 2
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    move-object v6, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v3, v6

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v4, v6

    move-object v6, v4

    move v7, v3

    const/16 v8, 0x17

    add-int/lit8 v7, v7, 0x17

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v4

    const-string v7, "Unexpected callback in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v4

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v6, "GACConnecting"

    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object v6, v0

    iget v6, v6, Lcom/google/android/gms/common/api/internal/zaar;->zah:I

    move v2, v6

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v3, v6

    move-object v6, v3

    const/16 v7, 0x21

    .line 3
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v3

    const-string v7, "mRemainingConnections="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v3

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v6, "GACConnecting"

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object v6, v0

    iget v6, v6, Lcom/google/android/gms/common/api/internal/zaar;->zag:I

    invoke-static {v6}, Lcom/google/android/gms/common/api/internal/zaar;->zaJ(I)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    move v6, v1

    invoke-static {v6}, Lcom/google/android/gms/common/api/internal/zaar;->zaJ(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    move-object v6, v2

    .line 4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v3, v6

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v5, v6

    move-object v6, v5

    move v7, v3

    const/16 v8, 0x46

    add-int/lit8 v7, v7, 0x46

    move v8, v4

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v5

    const-string v7, "GoogleApiClient connecting is in step "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v5

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v5

    const-string v7, " but received callback for step "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    new-instance v6, Ljava/lang/Exception;

    move-object v2, v6

    move-object v6, v2

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    const-string v6, "GACConnecting"

    move-object v7, v1

    move-object v8, v2

    .line 5
    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    .line 6
    new-instance v6, Lcom/google/android/gms/common/ConnectionResult;

    move-object v1, v6

    move-object v6, v1

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/google/android/gms/common/api/internal/zaar;->zaF(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v6, 0x0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0
.end method

.method private static final zaJ(I)Ljava/lang/String;
    .locals 2

    move v0, p0

    move v1, v0

    packed-switch v1, :pswitch_data_0

    const-string v1, "STEP_GETTING_REMOTE_SERVICE"

    move-object v0, v1

    :goto_0
    return-object v0

    :pswitch_0
    const-string v1, "STEP_SERVICE_BINDINGS_AND_SIGN_IN"

    move-object v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic zai(Lcom/google/android/gms/common/api/internal/zaar;)Landroid/content/Context;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaar;->zac:Landroid/content/Context;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zaj(Lcom/google/android/gms/common/api/internal/zaar;)Lcom/google/android/gms/common/GoogleApiAvailabilityLight;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaar;->zad:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zak(Lcom/google/android/gms/common/api/internal/zaar;)Ljava/util/concurrent/locks/Lock;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaar;->zab:Ljava/util/concurrent/locks/Lock;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zal(Lcom/google/android/gms/common/api/internal/zaar;)Lcom/google/android/gms/common/api/internal/zabd;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zam(Lcom/google/android/gms/common/api/internal/zaar;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/internal/zaar;->zaF(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method static synthetic zan(Lcom/google/android/gms/common/api/internal/zaar;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/gms/common/api/internal/zaar;->zam:Z

    move v0, v1

    return v0
.end method

.method static synthetic zao(Lcom/google/android/gms/common/api/internal/zaar;)Lcom/google/android/gms/signin/zae;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaar;->zak:Lcom/google/android/gms/signin/zae;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zap(Lcom/google/android/gms/common/api/internal/zaar;)Ljava/util/Set;
    .locals 8

    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zaar;->zar:Lcom/google/android/gms/common/internal/ClientSettings;

    move-object v1, v5

    move-object v5, v1

    if-nez v5, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    move-object v0, v5

    :goto_0
    move-object v5, v0

    move-object v0, v5

    return-object v0

    :cond_0
    new-instance v5, Ljava/util/HashSet;

    move-object v2, v5

    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/android/gms/common/internal/ClientSettings;->getRequiredScopes()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zaar;->zar:Lcom/google/android/gms/common/internal/ClientSettings;

    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/ClientSettings;->zaa()Ljava/util/Map;

    move-result-object v5

    move-object v1, v5

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :cond_1
    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/api/Api;

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabd;->zab:Ljava/util/Map;

    move-object v6, v4

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/Api;->zac()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v2

    move-object v6, v1

    move-object v7, v4

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/internal/zab;

    iget-object v6, v6, Lcom/google/android/gms/common/internal/zab;->zaa:Ljava/util/Set;

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v5

    goto :goto_1

    :cond_2
    move-object v5, v2

    move-object v0, v5

    goto :goto_0
.end method

.method static synthetic zaq(Lcom/google/android/gms/common/api/internal/zaar;)Lcom/google/android/gms/common/internal/IAccountAccessor;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaar;->zao:Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zar(Lcom/google/android/gms/common/api/internal/zaar;)Lcom/google/android/gms/common/internal/ClientSettings;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaar;->zar:Lcom/google/android/gms/common/internal/ClientSettings;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zas(Lcom/google/android/gms/common/api/internal/zaar;Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/internal/zaar;->zaE(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method static synthetic zat(Lcom/google/android/gms/common/api/internal/zaar;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zaar;->zaD()V

    return-void
.end method

.method static synthetic zau(Lcom/google/android/gms/common/api/internal/zaar;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zaar;->zaA()V

    return-void
.end method

.method static synthetic zav(Lcom/google/android/gms/common/api/internal/zaar;I)Z
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/internal/zaar;->zaI(I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method static synthetic zaw(Lcom/google/android/gms/common/api/internal/zaar;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/common/api/internal/zaar;->zaC(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V

    return-void
.end method

.method static synthetic zax(Lcom/google/android/gms/common/api/internal/zaar;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zaar;->zaz()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic zay(Lcom/google/android/gms/common/api/internal/zaar;Lcom/google/android/gms/signin/internal/zak;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/google/android/gms/common/api/internal/zaar;->zaI(I)Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/android/gms/signin/internal/zak;->zaa()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    invoke-virtual {v5}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/android/gms/signin/internal/zak;->zab()Lcom/google/android/gms/common/internal/zav;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/internal/zav;

    move-object v1, v5

    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/zav;->zab()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    invoke-virtual {v5}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    move-object v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v4, v5

    move-object v5, v4

    move v6, v3

    const/16 v7, 0x30

    add-int/lit8 v6, v6, 0x30

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v5, v4

    const-string v6, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    new-instance v5, Ljava/lang/Exception;

    move-object v3, v5

    move-object v5, v3

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    const-string v5, "GACConnecting"

    move-object v6, v1

    move-object v7, v3

    invoke-static {v5, v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/google/android/gms/common/api/internal/zaar;->zaF(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_1
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/google/android/gms/common/api/internal/zaar;->zan:Z

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/android/gms/common/internal/zav;->zaa()Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/internal/IAccountAccessor;

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/zaar;->zao:Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/android/gms/common/internal/zav;->zac()Z

    move-result v6

    iput-boolean v6, v5, Lcom/google/android/gms/common/api/internal/zaar;->zap:Z

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/android/gms/common/internal/zav;->zad()Z

    move-result v6

    iput-boolean v6, v5, Lcom/google/android/gms/common/api/internal/zaar;->zaq:Z

    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/gms/common/api/internal/zaar;->zaA()V

    goto/16 :goto_0

    :cond_2
    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/google/android/gms/common/api/internal/zaar;->zaE(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/gms/common/api/internal/zaar;->zaD()V

    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/gms/common/api/internal/zaar;->zaA()V

    goto/16 :goto_0

    :cond_3
    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/google/android/gms/common/api/internal/zaar;->zaF(Lcom/google/android/gms/common/ConnectionResult;)V

    goto/16 :goto_0
.end method

.method private final zaz()Z
    .locals 5
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/google/android/gms/common/api/internal/zaar;->zah:I

    const/4 v3, -0x1

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/gms/common/api/internal/zaar;->zah:I

    move v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    move v0, v2

    .line 4
    :goto_0
    return v0

    .line 4294967295
    :cond_0
    move v2, v1

    if-gez v2, :cond_1

    const-string v2, "GACConnecting"

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabd;->zag:Lcom/google/android/gms/common/api/internal/zaaz;

    .line 1
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zaaz;->zae()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v2, Ljava/lang/Exception;

    move-object v1, v2

    move-object v2, v1

    .line 2
    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const-string v2, "GACConnecting"

    const-string v3, "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect."

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 3
    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    move-object v1, v2

    move-object v2, v1

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/internal/zaar;->zaF(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaar;->zae:Lcom/google/android/gms/common/ConnectionResult;

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    move-object v3, v0

    iget v3, v3, Lcom/google/android/gms/common/api/internal/zaar;->zaf:I

    iput v3, v2, Lcom/google/android/gms/common/api/internal/zabd;->zaf:I

    move-object v2, v0

    move-object v3, v1

    .line 4
    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/internal/zaar;->zaF(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final zaa()V
    .locals 16
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zabd;->zab:Ljava/util/Map;

    .line 1
    invoke-interface {v8}, Ljava/util/Map;->clear()V

    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/google/android/gms/common/api/internal/zaar;->zam:Z

    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/google/android/gms/common/api/internal/zaar;->zae:Lcom/google/android/gms/common/ConnectionResult;

    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Lcom/google/android/gms/common/api/internal/zaar;->zag:I

    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/google/android/gms/common/api/internal/zaar;->zal:Z

    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/google/android/gms/common/api/internal/zaar;->zan:Z

    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/google/android/gms/common/api/internal/zaar;->zap:Z

    new-instance v8, Ljava/util/HashMap;

    move-object v3, v8

    move-object v8, v3

    .line 2
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zaar;->zas:Ljava/util/Map;

    .line 3
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v8

    const/4 v8, 0x0

    move v1, v8

    :goto_0
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/common/api/Api;

    move-object v5, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zabd;->zaa:Ljava/util/Map;

    move-object v9, v5

    .line 4
    invoke-virtual {v9}, Lcom/google/android/gms/common/api/Api;->zac()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/common/api/Api$Client;

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/common/api/Api$Client;

    move-object v6, v8

    move-object v8, v5

    .line 5
    invoke-virtual {v8}, Lcom/google/android/gms/common/api/Api;->zaa()Lcom/google/android/gms/common/api/Api$BaseClientBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/common/api/Api$BaseClientBuilder;->getPriority()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    const/4 v8, 0x1

    move v2, v8

    :goto_1
    move v8, v1

    move v9, v2

    or-int/2addr v8, v9

    move v1, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zaar;->zas:Ljava/util/Map;

    move-object v9, v5

    .line 6
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move v2, v8

    move-object v8, v6

    .line 7
    invoke-interface {v8}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/google/android/gms/common/api/internal/zaar;->zam:Z

    move v8, v2

    if-eqz v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zaar;->zaj:Ljava/util/Set;

    move-object v9, v5

    .line 8
    invoke-virtual {v9}, Lcom/google/android/gms/common/api/Api;->zac()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 9
    :cond_0
    :goto_2
    new-instance v8, Lcom/google/android/gms/common/api/internal/zaai;

    move-object v7, v8

    move-object v8, v7

    move-object v9, v0

    move-object v10, v5

    move v11, v2

    invoke-direct {v8, v9, v10, v11}, Lcom/google/android/gms/common/api/internal/zaai;-><init>(Lcom/google/android/gms/common/api/internal/zaar;Lcom/google/android/gms/common/api/Api;Z)V

    move-object v8, v3

    move-object v9, v6

    move-object v10, v7

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    :cond_1
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/google/android/gms/common/api/internal/zaar;->zal:Z

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    move v2, v8

    goto :goto_1

    :cond_3
    move v8, v1

    if-eqz v8, :cond_4

    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/google/android/gms/common/api/internal/zaar;->zam:Z

    :cond_4
    move-object v8, v0

    iget-boolean v8, v8, Lcom/google/android/gms/common/api/internal/zaar;->zam:Z

    if-eqz v8, :cond_5

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zaar;->zar:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 10
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zaar;->zat:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 11
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zaar;->zar:Lcom/google/android/gms/common/internal/ClientSettings;

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v9, v9, Lcom/google/android/gms/common/api/internal/zabd;->zag:Lcom/google/android/gms/common/api/internal/zaaz;

    .line 12
    invoke-static {v9}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    .line 13
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/common/internal/ClientSettings;->zae(Ljava/lang/Integer;)V

    new-instance v8, Lcom/google/android/gms/common/api/internal/zaap;

    move-object v1, v8

    move-object v8, v1

    move-object v9, v0

    const/4 v10, 0x0

    .line 14
    invoke-direct {v8, v9, v10}, Lcom/google/android/gms/common/api/internal/zaap;-><init>(Lcom/google/android/gms/common/api/internal/zaar;Lcom/google/android/gms/common/api/internal/zaah;)V

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zaar;->zat:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    move-object v2, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zaar;->zac:Landroid/content/Context;

    move-object v4, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    move-object v5, v8

    move-object v8, v5

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zabd;->zag:Lcom/google/android/gms/common/api/internal/zaaz;

    move-object v5, v8

    move-object v8, v5

    invoke-virtual {v8}, Lcom/google/android/gms/common/api/GoogleApiClient;->getLooper()Landroid/os/Looper;

    move-result-object v8

    move-object v5, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zaar;->zar:Lcom/google/android/gms/common/internal/ClientSettings;

    move-object v6, v8

    move-object v8, v0

    move-object v9, v2

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    move-object v13, v6

    .line 15
    invoke-virtual {v13}, Lcom/google/android/gms/common/internal/ClientSettings;->zac()Lcom/google/android/gms/signin/SignInOptions;

    move-result-object v13

    move-object v14, v1

    move-object v15, v1

    .line 16
    invoke-virtual/range {v9 .. v15}, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v9

    iput-object v9, v8, Lcom/google/android/gms/common/api/internal/zaar;->zak:Lcom/google/android/gms/signin/zae;

    :cond_5
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v9, v9, Lcom/google/android/gms/common/api/internal/zabd;->zaa:Ljava/util/Map;

    .line 17
    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    iput v9, v8, Lcom/google/android/gms/common/api/internal/zaar;->zah:I

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zaar;->zau:Ljava/util/ArrayList;

    move-object v1, v8

    .line 18
    invoke-static {}, Lcom/google/android/gms/common/api/internal/zabe;->zaa()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    move-object v2, v8

    new-instance v8, Lcom/google/android/gms/common/api/internal/zaal;

    move-object v4, v8

    move-object v8, v4

    move-object v9, v0

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lcom/google/android/gms/common/api/internal/zaal;-><init>(Lcom/google/android/gms/common/api/internal/zaar;Ljava/util/Map;)V

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    invoke-interface {v9, v10}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v9

    .line 19
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    return-void
.end method

.method public final zab(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .locals 4
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

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zag:Lcom/google/android/gms/common/api/internal/zaaz;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zaa:Ljava/util/Queue;

    move-object v3, v1

    .line 1
    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public final zac(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .locals 4
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

    .prologue
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v0, v2

    move-object v2, v0

    const-string v3, "GoogleApiClient is not connected yet."

    .line 1
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    throw v2
.end method

.method public final zad()Z
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zaar;->zaH()V

    move-object v1, v0

    const/4 v2, 0x1

    .line 2
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/internal/zaar;->zaG(Z)V

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/zabd;->zaq(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method public final zae()V
    .locals 0

    return-void
.end method

.method public final zaf(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    .line 1
    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/internal/zaar;->zaI(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    :goto_0
    return-void

    .line 1
    :cond_0
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaar;->zai:Landroid/os/Bundle;

    move-object v3, v1

    .line 2
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    move-object v2, v0

    .line 3
    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/zaar;->zaz()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 4
    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/zaar;->zaB()V

    goto :goto_0

    :cond_2
    goto :goto_0
.end method

.method public final zag(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;Z)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    const/4 v5, 0x1

    .line 1
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/internal/zaar;->zaI(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4
    :goto_0
    return-void

    .line 1
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    .line 2
    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/common/api/internal/zaar;->zaC(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V

    move-object v4, v0

    .line 3
    invoke-direct {v4}, Lcom/google/android/gms/common/api/internal/zaar;->zaz()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    .line 4
    invoke-direct {v4}, Lcom/google/android/gms/common/api/internal/zaar;->zaB()V

    goto :goto_0

    :cond_1
    goto :goto_0
.end method

.method public final zah(I)V
    .locals 5
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    .line 1
    move-object v0, p0

    move v1, p1

    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    move-object v1, v2

    move-object v2, v1

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/internal/zaar;->zaF(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
