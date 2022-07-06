.class public final Lcom/google/android/gms/common/api/internal/zaaz;
.super Lcom/google/android/gms/common/api/GoogleApiClient;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zabt;


# instance fields
.field final zaa:Ljava/util/Queue;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl",
            "<**>;>;"
        }
    .end annotation
.end field

.field zab:Lcom/google/android/gms/common/api/internal/zabr;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field final zac:Ljava/util/Map;
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

.field zad:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field final zae:Lcom/google/android/gms/common/internal/ClientSettings;

.field final zaf:Ljava/util/Map;
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

.field final zag:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
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

.field zah:Ljava/util/Set;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/internal/zacv;",
            ">;"
        }
    .end annotation
.end field

.field final zai:Lcom/google/android/gms/common/api/internal/zacx;

.field private final zaj:Ljava/util/concurrent/locks/Lock;

.field private final zak:Lcom/google/android/gms/common/internal/zak;

.field private zal:Lcom/google/android/gms/common/api/internal/zabu;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zam:I

.field private final zan:Landroid/content/Context;

.field private final zao:Landroid/os/Looper;

.field private volatile zap:Z

.field private zaq:J

.field private zar:J

.field private final zas:Lcom/google/android/gms/common/api/internal/zaax;

.field private final zat:Lcom/google/android/gms/common/GoogleApiAvailability;

.field private final zau:Lcom/google/android/gms/common/api/internal/ListenerHolders;

.field private final zav:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/internal/zas;",
            ">;"
        }
    .end annotation
.end field

.field private zaw:Ljava/lang/Integer;

.field private final zax:Lcom/google/android/gms/common/internal/zaj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/GoogleApiAvailability;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/ClientSettings;",
            "Lcom/google/android/gms/common/GoogleApiAvailability;",
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder",
            "<+",
            "Lcom/google/android/gms/signin/zae;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/internal/zas;",
            ">;)V"
        }
    .end annotation

    .prologue
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    move-object/from16 v17, p13

    move-object/from16 v20, v4

    invoke-direct/range {v20 .. v20}, Lcom/google/android/gms/common/api/GoogleApiClient;-><init>()V

    move-object/from16 v20, v4

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zal:Lcom/google/android/gms/common/api/internal/zabu;

    new-instance v20, Ljava/util/LinkedList;

    move-object/from16 v18, v20

    move-object/from16 v20, v18

    .line 1
    invoke-direct/range {v20 .. v20}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v20, v4

    move-object/from16 v21, v18

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zaa:Ljava/util/Queue;

    const/16 v20, 0x1

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    const-wide/32 v20, 0x1d4c0

    move-wide/from16 v18, v20

    :goto_0
    move-object/from16 v20, v4

    move-wide/from16 v21, v18

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zaq:J

    move-object/from16 v20, v4

    const-wide/16 v21, 0x1388

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zar:J

    new-instance v20, Ljava/util/HashSet;

    move-object/from16 v18, v20

    move-object/from16 v20, v18

    .line 3
    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v20, v4

    move-object/from16 v21, v18

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zad:Ljava/util/Set;

    new-instance v20, Lcom/google/android/gms/common/api/internal/ListenerHolders;

    move-object/from16 v18, v20

    move-object/from16 v20, v18

    .line 4
    invoke-direct/range {v20 .. v20}, Lcom/google/android/gms/common/api/internal/ListenerHolders;-><init>()V

    move-object/from16 v20, v4

    move-object/from16 v21, v18

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zau:Lcom/google/android/gms/common/api/internal/ListenerHolders;

    move-object/from16 v20, v4

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zaw:Ljava/lang/Integer;

    move-object/from16 v20, v4

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zah:Ljava/util/Set;

    new-instance v20, Lcom/google/android/gms/common/api/internal/zaat;

    move-object/from16 v18, v20

    move-object/from16 v20, v18

    move-object/from16 v21, v4

    .line 5
    invoke-direct/range {v20 .. v21}, Lcom/google/android/gms/common/api/internal/zaat;-><init>(Lcom/google/android/gms/common/api/internal/zaaz;)V

    move-object/from16 v20, v4

    move-object/from16 v21, v18

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zax:Lcom/google/android/gms/common/internal/zaj;

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zan:Landroid/content/Context;

    move-object/from16 v20, v4

    move-object/from16 v21, v6

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 6
    new-instance v20, Lcom/google/android/gms/common/internal/zak;

    move-object/from16 v5, v20

    move-object/from16 v20, v5

    move-object/from16 v21, v7

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zax:Lcom/google/android/gms/common/internal/zaj;

    move-object/from16 v22, v0

    invoke-direct/range {v20 .. v22}, Lcom/google/android/gms/common/internal/zak;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/zaj;)V

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zak:Lcom/google/android/gms/common/internal/zak;

    move-object/from16 v20, v4

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zao:Landroid/os/Looper;

    new-instance v20, Lcom/google/android/gms/common/api/internal/zaax;

    move-object/from16 v5, v20

    move-object/from16 v20, v5

    move-object/from16 v21, v4

    move-object/from16 v22, v7

    .line 7
    invoke-direct/range {v20 .. v22}, Lcom/google/android/gms/common/api/internal/zaax;-><init>(Lcom/google/android/gms/common/api/internal/zaaz;Landroid/os/Looper;)V

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zas:Lcom/google/android/gms/common/api/internal/zaax;

    move-object/from16 v20, v4

    move-object/from16 v21, v9

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zat:Lcom/google/android/gms/common/GoogleApiAvailability;

    move-object/from16 v20, v4

    move/from16 v21, v15

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zam:I

    move/from16 v20, v15

    if-ltz v20, :cond_0

    move-object/from16 v20, v4

    move/from16 v21, v16

    .line 8
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zaw:Ljava/lang/Integer;

    :cond_0
    move-object/from16 v20, v4

    move-object/from16 v21, v11

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zaf:Ljava/util/Map;

    move-object/from16 v20, v4

    move-object/from16 v21, v14

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zac:Ljava/util/Map;

    move-object/from16 v20, v4

    move-object/from16 v21, v17

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zav:Ljava/util/ArrayList;

    .line 9
    new-instance v20, Lcom/google/android/gms/common/api/internal/zacx;

    move-object/from16 v5, v20

    move-object/from16 v20, v5

    invoke-direct/range {v20 .. v20}, Lcom/google/android/gms/common/api/internal/zacx;-><init>()V

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zai:Lcom/google/android/gms/common/api/internal/zacx;

    move-object/from16 v20, v12

    .line 10
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move-object/from16 v5, v20

    :goto_1
    move-object/from16 v20, v5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    move-object/from16 v20, v5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v6, v20

    move-object/from16 v20, v6

    check-cast v20, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    move-object/from16 v6, v20

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zak:Lcom/google/android/gms/common/internal/zak;

    move-object/from16 v20, v0

    move-object/from16 v21, v6

    .line 11
    invoke-virtual/range {v20 .. v21}, Lcom/google/android/gms/common/internal/zak;->zaf(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    goto :goto_1

    :cond_1
    move-object/from16 v20, v13

    .line 12
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move-object/from16 v5, v20

    :goto_2
    move-object/from16 v20, v5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v20, v5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v6, v20

    move-object/from16 v20, v6

    check-cast v20, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    move-object/from16 v6, v20

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zak:Lcom/google/android/gms/common/internal/zak;

    move-object/from16 v20, v0

    move-object/from16 v21, v6

    .line 13
    invoke-virtual/range {v20 .. v21}, Lcom/google/android/gms/common/internal/zak;->zai(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    goto :goto_2

    :cond_2
    move-object/from16 v20, v4

    move-object/from16 v21, v8

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zae:Lcom/google/android/gms/common/internal/ClientSettings;

    move-object/from16 v20, v4

    move-object/from16 v21, v10

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zag:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    return-void

    :cond_3
    const-wide/16 v20, 0x2710

    move-wide/from16 v18, v20

    goto/16 :goto_0
.end method

.method public static zaf(Ljava/lang/Iterable;Z)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    .line 1
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    const/4 v5, 0x0

    move v0, v5

    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/api/Api$Client;

    move-object v4, v5

    move-object v5, v4

    .line 2
    invoke-interface {v5}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v5

    move v6, v0

    or-int/2addr v5, v6

    move v0, v5

    move-object v5, v4

    .line 3
    invoke-interface {v5}, Lcom/google/android/gms/common/api/Api$Client;->providesSignIn()Z

    move-result v5

    move v6, v2

    or-int/2addr v5, v6

    move v2, v5

    goto :goto_0

    :cond_0
    move v5, v0

    if-eqz v5, :cond_2

    move v5, v2

    if-eqz v5, :cond_1

    move v5, v1

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    move v0, v5

    :goto_1
    return v0

    :cond_1
    const/4 v5, 0x1

    move v0, v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x3

    move v0, v5

    goto :goto_1
.end method

.method static zag(I)Ljava/lang/String;
    .locals 2

    move v0, p0

    move v1, v0

    packed-switch v1, :pswitch_data_0

    const-string v1, "UNKNOWN"

    move-object v0, v1

    :goto_0
    return-object v0

    :pswitch_0
    const-string v1, "SIGN_IN_MODE_NONE"

    move-object v0, v1

    goto :goto_0

    :pswitch_1
    const-string v1, "SIGN_IN_MODE_OPTIONAL"

    move-object v0, v1

    goto :goto_0

    :pswitch_2
    const-string v1, "SIGN_IN_MODE_REQUIRED"

    move-object v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic zah(Lcom/google/android/gms/common/api/internal/zaaz;)V
    .locals 3

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object v2, v0

    :try_start_0
    iget-boolean v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zap:Z

    move v1, v2

    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/zaaz;->zan()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v2, v1

    throw v2
.end method

.method static synthetic zai(Lcom/google/android/gms/common/api/internal/zaaz;)V
    .locals 3

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zaaz;->zad()Z

    move-result v2

    move v1, v2

    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/zaaz;->zan()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v2, v1

    throw v2
.end method

.method static synthetic zaj(Lcom/google/android/gms/common/api/internal/zaaz;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/internal/StatusPendingResult;Z)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/common/api/internal/zaaz;->zal(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/internal/StatusPendingResult;Z)V

    return-void
.end method

.method static synthetic zak(Lcom/google/android/gms/common/api/internal/zaaz;)Landroid/content/Context;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zan:Landroid/content/Context;

    move-object v0, v1

    return-object v0
.end method

.method private final zal(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/internal/StatusPendingResult;Z)V
    .locals 11

    .prologue
    .line 1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    sget-object v6, Lcom/google/android/gms/common/internal/service/Common;->zaa:Lcom/google/android/gms/common/internal/service/zae;

    move-object v4, v6

    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/internal/service/zae;->zaa(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v6

    move-object v4, v6

    new-instance v6, Lcom/google/android/gms/common/api/internal/zaaw;

    move-object v5, v6

    move-object v6, v5

    move-object v7, v0

    move-object v8, v2

    move v9, v3

    move-object v10, v1

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/android/gms/common/api/internal/zaaw;-><init>(Lcom/google/android/gms/common/api/internal/zaaz;Lcom/google/android/gms/common/api/internal/StatusPendingResult;ZLcom/google/android/gms/common/api/GoogleApiClient;)V

    move-object v6, v4

    move-object v7, v5

    .line 2
    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method private final zam(I)V
    .locals 19

    .prologue
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zaaz;->zaw:Ljava/lang/Integer;

    move-object v3, v7

    move-object v7, v3

    if-nez v7, :cond_5

    move-object v7, v1

    move v8, v2

    .line 1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v7, Lcom/google/android/gms/common/api/internal/zaaz;->zaw:Ljava/lang/Integer;

    :cond_0
    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zaaz;->zal:Lcom/google/android/gms/common/api/internal/zabu;

    if-eqz v7, :cond_1

    .line 10
    :goto_0
    return-void

    .line 1
    :cond_1
    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zaaz;->zac:Ljava/util/Map;

    .line 3
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v4, v7

    const/4 v7, 0x0

    move v2, v7

    const/4 v7, 0x0

    move v3, v7

    :goto_1
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/api/Api$Client;

    move-object v5, v7

    move-object v7, v5

    .line 4
    invoke-interface {v7}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v7

    move v8, v2

    or-int/2addr v7, v8

    move v2, v7

    move-object v7, v5

    .line 5
    invoke-interface {v7}, Lcom/google/android/gms/common/api/Api$Client;->providesSignIn()Z

    move-result v7

    move v8, v3

    or-int/2addr v7, v8

    move v3, v7

    goto :goto_1

    :cond_2
    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zaaz;->zaw:Ljava/lang/Integer;

    .line 6
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 7
    :cond_3
    new-instance v7, Lcom/google/android/gms/common/api/internal/zabd;

    move-object v2, v7

    move-object v7, v2

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zaaz;->zan:Landroid/content/Context;

    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    move-object v11, v1

    iget-object v11, v11, Lcom/google/android/gms/common/api/internal/zaaz;->zao:Landroid/os/Looper;

    move-object v12, v1

    iget-object v12, v12, Lcom/google/android/gms/common/api/internal/zaaz;->zat:Lcom/google/android/gms/common/GoogleApiAvailability;

    move-object v13, v1

    iget-object v13, v13, Lcom/google/android/gms/common/api/internal/zaaz;->zac:Ljava/util/Map;

    move-object v14, v1

    iget-object v14, v14, Lcom/google/android/gms/common/api/internal/zaaz;->zae:Lcom/google/android/gms/common/internal/ClientSettings;

    move-object v15, v1

    iget-object v15, v15, Lcom/google/android/gms/common/api/internal/zaaz;->zaf:Ljava/util/Map;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zag:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zav:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    .line 10
    invoke-direct/range {v7 .. v18}, Lcom/google/android/gms/common/api/internal/zabd;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaaz;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/zabt;)V

    move-object v7, v1

    move-object v8, v2

    iput-object v8, v7, Lcom/google/android/gms/common/api/internal/zaaz;->zal:Lcom/google/android/gms/common/api/internal/zabu;

    goto :goto_0

    .line 6
    :pswitch_0
    move v7, v2

    if-nez v7, :cond_4

    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v1, v7

    move-object v7, v1

    const-string v8, "SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead."

    .line 8
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v7, v1

    throw v7

    :cond_4
    move v7, v3

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v1, v7

    move-object v7, v1

    const-string v8, "Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead."

    .line 9
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v7, v1

    throw v7

    :pswitch_1
    move v7, v2

    if-eqz v7, :cond_3

    move-object v7, v1

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zaaz;->zan:Landroid/content/Context;

    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    move-object v11, v1

    iget-object v11, v11, Lcom/google/android/gms/common/api/internal/zaaz;->zao:Landroid/os/Looper;

    move-object v12, v1

    iget-object v12, v12, Lcom/google/android/gms/common/api/internal/zaaz;->zat:Lcom/google/android/gms/common/GoogleApiAvailability;

    move-object v13, v1

    iget-object v13, v13, Lcom/google/android/gms/common/api/internal/zaaz;->zac:Ljava/util/Map;

    move-object v14, v1

    iget-object v14, v14, Lcom/google/android/gms/common/api/internal/zaaz;->zae:Lcom/google/android/gms/common/internal/ClientSettings;

    move-object v15, v1

    iget-object v15, v15, Lcom/google/android/gms/common/api/internal/zaaz;->zaf:Ljava/util/Map;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zag:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zav:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 7
    invoke-static/range {v8 .. v17}, Lcom/google/android/gms/common/api/internal/zax;->zaa(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaaz;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zax;

    move-result-object v8

    iput-object v8, v7, Lcom/google/android/gms/common/api/internal/zaaz;->zal:Lcom/google/android/gms/common/api/internal/zabu;

    goto/16 :goto_0

    .line 11
    :cond_5
    move-object v7, v3

    .line 2
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v8, v2

    if-eq v7, v8, :cond_0

    .line 10
    move v7, v2

    invoke-static {v7}, Lcom/google/android/gms/common/api/internal/zaaz;->zag(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v3, v7

    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zaaz;->zaw:Ljava/lang/Integer;

    .line 11
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/common/api/internal/zaaz;->zag(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v4, v7

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v5, v7

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v6, v7

    move-object v7, v6

    move v8, v4

    const/16 v9, 0x33

    add-int/lit8 v8, v8, 0x33

    move v9, v5

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v7, v6

    const-string v8, "Cannot use sign-in mode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v6

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v6

    const-string v8, ". Mode was already set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v6

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v3

    move-object v8, v6

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v7, v3

    throw v7

    .line 6
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final zan()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zak:Lcom/google/android/gms/common/internal/zak;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zak;->zab()V

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zal:Lcom/google/android/gms/common/api/internal/zabu;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/internal/zabu;->zae()V

    return-void
.end method


# virtual methods
.method public final blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .locals 5

    .prologue
    .line 1
    move-object v0, p0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_4

    const/4 v2, 0x1

    move v1, v2

    :goto_0
    move v2, v1

    const-string v3, "blockingConnect must not be called on the UI thread"

    .line 2
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object v2, v0

    :try_start_0
    iget v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zam:I

    move v1, v2

    move v2, v1

    if-ltz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zaw:Ljava/lang/Integer;

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move v1, v2

    :goto_1
    move v2, v1

    const-string v3, "Sign-in mode should have been set explicitly by auto-manage."

    .line 4
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    :cond_0
    :goto_2
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zaw:Ljava/lang/Integer;

    .line 8
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/internal/zaaz;->zam(I)V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zak:Lcom/google/android/gms/common/internal/zak;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zak;->zab()V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zal:Lcom/google/android/gms/common/api/internal/zabu;

    .line 10
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/internal/zabu;->zaf()Lcom/google/android/gms/common/ConnectionResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 11
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v2, v1

    move-object v0, v2

    return-object v0

    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_1

    :cond_2
    move-object v2, v0

    :try_start_1
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zaw:Ljava/lang/Integer;

    move-object v1, v2

    move-object v2, v1

    if-nez v2, :cond_3

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zac:Ljava/util/Map;

    .line 7
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/android/gms/common/api/internal/zaaz;->zaf(Ljava/lang/Iterable;Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zaw:Ljava/lang/Integer;

    goto :goto_2

    :cond_3
    move-object v2, v1

    .line 5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v1, v2

    move v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v1, v2

    move-object v2, v1

    const-string v3, "Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    .line 6
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 11
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v2, v1

    .line 12
    throw v2

    :cond_4
    const/4 v2, 0x0

    move v1, v2

    goto/16 :goto_0
.end method

.method public final blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 9
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 13
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    if-eq v5, v6, :cond_2

    const/4 v5, 0x1

    move v4, v5

    :goto_0
    move v5, v4

    const-string v6, "blockingConnect must not be called on the UI thread"

    .line 14
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    move-object v5, v3

    const-string v6, "TimeUnit must not be null"

    .line 15
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 16
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zaaz;->zaw:Ljava/lang/Integer;

    move-object v4, v5

    move-object v5, v4

    if-nez v5, :cond_1

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zac:Ljava/util/Map;

    .line 19
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/google/android/gms/common/api/internal/zaaz;->zaf(Ljava/lang/Iterable;Z)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/zaaz;->zaw:Ljava/lang/Integer;

    :cond_0
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zaw:Ljava/lang/Integer;

    .line 20
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/google/android/gms/common/api/internal/zaaz;->zam(I)V

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zaaz;->zak:Lcom/google/android/gms/common/internal/zak;

    .line 21
    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/zak;->zab()V

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zaaz;->zal:Lcom/google/android/gms/common/api/internal/zabu;

    .line 22
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/api/internal/zabu;

    move-wide v6, v1

    move-object v8, v3

    invoke-interface {v5, v6, v7, v8}, Lcom/google/android/gms/common/api/internal/zabu;->zag(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    move-object v3, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 23
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v5, v3

    move-object v0, v5

    return-object v0

    :cond_1
    move-object v5, v4

    .line 17
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v4, v5

    move v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v3, v5

    move-object v5, v3

    const-string v6, "Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    .line 18
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v5, v3

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v5

    move-object v3, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 23
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v5, v3

    .line 24
    throw v5

    :cond_2
    const/4 v5, 0x0

    move v4, v5

    goto :goto_0
.end method

.method public final clearDefaultAccountAndReconnect()Lcom/google/android/gms/common/api/PendingResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v6, v0

    .line 1
    invoke-virtual {v6}, Lcom/google/android/gms/common/api/internal/zaaz;->isConnected()Z

    move-result v6

    const-string v7, "GoogleApiClient is not connected yet."

    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zaw:Ljava/lang/Integer;

    move-object v1, v6

    move-object v6, v1

    if-eqz v6, :cond_2

    move-object v6, v1

    .line 2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    const/4 v6, 0x1

    move v1, v6

    :goto_0
    move v6, v1

    const-string v7, "Cannot use clearDefaultAccountAndReconnect with GOOGLE_SIGN_IN_API"

    .line 3
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 4
    new-instance v6, Lcom/google/android/gms/common/api/internal/StatusPendingResult;

    move-object v1, v6

    move-object v6, v1

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/android/gms/common/api/internal/StatusPendingResult;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zac:Ljava/util/Map;

    .line 5
    sget-object v7, Lcom/google/android/gms/common/internal/service/Common;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v0

    move-object v7, v0

    move-object v8, v1

    const/4 v9, 0x0

    .line 6
    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/gms/common/api/internal/zaaz;->zal(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/internal/StatusPendingResult;Z)V

    :goto_1
    move-object v6, v1

    move-object v0, v6

    return-object v0

    :cond_0
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    move-object v2, v6

    move-object v6, v2

    .line 7
    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v6, Lcom/google/android/gms/common/api/internal/zaau;

    move-object v3, v6

    move-object v6, v3

    move-object v7, v0

    move-object v8, v2

    move-object v9, v1

    .line 8
    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/gms/common/api/internal/zaau;-><init>(Lcom/google/android/gms/common/api/internal/zaaz;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/common/api/internal/StatusPendingResult;)V

    new-instance v6, Lcom/google/android/gms/common/api/internal/zaav;

    move-object v4, v6

    move-object v6, v4

    move-object v7, v0

    move-object v8, v1

    .line 9
    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/common/api/internal/zaav;-><init>(Lcom/google/android/gms/common/api/internal/zaaz;Lcom/google/android/gms/common/api/internal/StatusPendingResult;)V

    new-instance v6, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-object v5, v6

    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zaaz;->zan:Landroid/content/Context;

    .line 10
    invoke-direct {v6, v7}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    move-object v6, v5

    sget-object v7, Lcom/google/android/gms/common/internal/service/Common;->API:Lcom/google/android/gms/common/api/Api;

    .line 11
    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v6

    move-object v6, v5

    move-object v7, v3

    .line 12
    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v6

    move-object v6, v5

    move-object v7, v4

    .line 13
    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v6

    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zaaz;->zas:Lcom/google/android/gms/common/api/internal/zaax;

    .line 14
    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setHandler(Landroid/os/Handler;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v6

    move-object v6, v5

    .line 15
    invoke-virtual {v6}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v6

    move-object v0, v6

    move-object v6, v2

    move-object v7, v0

    .line 16
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move-object v6, v0

    .line 17
    invoke-virtual {v6}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    move v1, v6

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    move v1, v6

    goto :goto_0
.end method

.method public final connect()V
    .locals 7

    .prologue
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object v4, v0

    :try_start_0
    iget v4, v4, Lcom/google/android/gms/common/api/internal/zaaz;->zam:I

    move v1, v4

    move v4, v1

    if-ltz v4, :cond_5

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaaz;->zaw:Ljava/lang/Integer;

    move-object v1, v4

    move-object v4, v1

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    move v1, v4

    :goto_0
    const-string v4, "Sign-in mode should have been set explicitly by auto-manage."

    move-object v2, v4

    move v4, v1

    move-object v5, v2

    .line 2
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    :cond_0
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaaz;->zaw:Ljava/lang/Integer;

    move-object v1, v4

    move-object v4, v1

    .line 6
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v1, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 7
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    move v4, v1

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    move v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v4, 0x2

    move v1, v4

    const/4 v4, 0x1

    move v2, v4

    :goto_2
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v3, v4

    move-object v4, v3

    const/16 v5, 0x21

    .line 8
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v3

    const-string v5, "Illegal sign-in mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v3

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    move v4, v2

    move-object v5, v3

    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move-object v4, v0

    move v5, v1

    .line 9
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/internal/zaaz;->zam(I)V

    move-object v4, v0

    .line 10
    invoke-direct {v4}, Lcom/google/android/gms/common/api/internal/zaaz;->zan()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v0

    :try_start_2
    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 11
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 13
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    const/4 v4, 0x0

    move v2, v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x1

    move v2, v4

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    move v2, v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    :cond_5
    move-object v4, v0

    :try_start_3
    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaaz;->zaw:Ljava/lang/Integer;

    move-object v1, v4

    move-object v4, v1

    if-nez v4, :cond_6

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zaaz;->zac:Ljava/util/Map;

    .line 5
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/google/android/gms/common/api/internal/zaaz;->zaf(Ljava/lang/Iterable;Z)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zaaz;->zaw:Ljava/lang/Integer;

    goto/16 :goto_1

    :cond_6
    move-object v4, v1

    .line 3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v1, v4

    .line 14
    move v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 12
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v1, v4

    move-object v4, v1

    const-string v5, "Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    .line 4
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v4

    move-object v1, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 13
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v4, v1

    .line 14
    throw v4

    .line 3
    :catchall_1
    move-exception v4

    move-object v1, v4

    move-object v4, v0

    :try_start_4
    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 11
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v4, v1

    .line 12
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public final connect(I)V
    .locals 6

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 15
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    move v4, v1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    move v4, v1

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    move v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x2

    move v1, v4

    const/4 v4, 0x1

    move v2, v4

    :goto_0
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v3, v4

    move-object v4, v3

    const/16 v5, 0x21

    .line 16
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v3

    const-string v5, "Illegal sign-in mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v3

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    move v4, v2

    move-object v5, v3

    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move-object v4, v0

    move v5, v1

    .line 17
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/internal/zaaz;->zam(I)V

    move-object v4, v0

    .line 18
    invoke-direct {v4}, Lcom/google/android/gms/common/api/internal/zaaz;->zan()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 19
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    const/4 v4, 0x0

    move v2, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    move v2, v4

    goto :goto_0

    :catchall_0
    move-exception v4

    move-object v1, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v4, v1

    .line 20
    throw v4

    :cond_2
    const/4 v4, 0x1

    move v2, v4

    goto :goto_0
.end method

.method public final disconnect()V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zai:Lcom/google/android/gms/common/api/internal/zacx;

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zacx;->zab()V

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zal:Lcom/google/android/gms/common/api/internal/zabu;

    move-object v1, v3

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 3
    invoke-interface {v3}, Lcom/google/android/gms/common/api/internal/zabu;->zah()V

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zau:Lcom/google/android/gms/common/api/internal/ListenerHolders;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/ListenerHolders;->zab()V

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zaa:Ljava/util/Queue;

    .line 5
    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    move v2, v3

    move v3, v2

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-object v2, v3

    move-object v3, v2

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zan(Lcom/google/android/gms/common/api/internal/zacw;)V

    move-object v3, v2

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->cancel()V

    goto :goto_0

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zaa:Ljava/util/Queue;

    .line 8
    invoke-interface {v3}, Ljava/util/Queue;->clear()V

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zal:Lcom/google/android/gms/common/api/internal/zabu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    move-object v3, v1

    if-nez v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 9
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return-void

    :cond_2
    move-object v3, v0

    .line 10
    :try_start_1
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zaaz;->zad()Z

    move-result v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zak:Lcom/google/android/gms/common/internal/zak;

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/zak;->zaa()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 9
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 11
    :catchall_0
    move-exception v3

    move-object v1, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 9
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v3, v1

    .line 12
    throw v3
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11
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

    move-object v6, v3

    move-object v7, v1

    .line 1
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v6

    const-string v7, "mContext="

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zaaz;->zan:Landroid/content/Context;

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    move-object v6, v3

    move-object v7, v1

    .line 2
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v6

    const-string v7, "mResuming="

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v6

    move-object v7, v0

    iget-boolean v7, v7, Lcom/google/android/gms/common/api/internal/zaaz;->zap:Z

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Z)V

    move-object v6, v3

    const-string v7, " mWorkQueue.size()="

    .line 3
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zaaz;->zaa:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(I)V

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zai:Lcom/google/android/gms/common/api/internal/zacx;

    move-object v5, v6

    move-object v6, v3

    const-string v7, " mUnconsumedApiCalls.size()="

    .line 4
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v6

    move-object v7, v5

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zacx;->zab:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(I)V

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zal:Lcom/google/android/gms/common/api/internal/zabu;

    move-object v0, v6

    move-object v6, v0

    if-eqz v6, :cond_0

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    .line 5
    invoke-interface {v6, v7, v8, v9, v10}, Lcom/google/android/gms/common/api/internal/zabu;->zan(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public final enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .locals 9
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

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    .line 1
    invoke-virtual {v6}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getApi()Lcom/google/android/gms/common/api/Api;

    move-result-object v6

    move-object v2, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zac:Ljava/util/Map;

    move-object v7, v1

    .line 2
    invoke-virtual {v7}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    move v3, v6

    move-object v6, v2

    if-eqz v6, :cond_1

    move-object v6, v2

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/Api;->zad()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    :goto_0
    move-object v6, v2

    .line 3
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v5, v6

    move-object v6, v5

    move v7, v4

    const/16 v8, 0x41

    add-int/lit8 v7, v7, 0x41

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v5

    const-string v7, "GoogleApiClient is not configured to use "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v5

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v5

    const-string v7, " required for this call."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v6, v3

    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zal:Lcom/google/android/gms/common/api/internal/zabu;

    move-object v2, v6

    move-object v6, v2

    if-nez v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zaa:Ljava/util/Queue;

    move-object v7, v1

    .line 8
    invoke-interface {v6, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 7
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v6, v1

    move-object v0, v6

    :goto_1
    return-object v0

    :cond_0
    move-object v6, v2

    move-object v7, v1

    .line 6
    :try_start_1
    invoke-interface {v6, v7}, Lcom/google/android/gms/common/api/internal/zabu;->zab(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    move-object v1, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 7
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v6, v1

    move-object v0, v6

    goto :goto_1

    :catchall_0
    move-exception v6

    move-object v1, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v6, v1

    .line 9
    throw v6

    :cond_1
    const-string v6, "the API"

    move-object v2, v6

    goto :goto_0
.end method

.method public final execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .locals 9
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

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    .line 1
    invoke-virtual {v6}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getApi()Lcom/google/android/gms/common/api/Api;

    move-result-object v6

    move-object v2, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zac:Ljava/util/Map;

    move-object v7, v1

    .line 2
    invoke-virtual {v7}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    move v3, v6

    move-object v6, v2

    if-eqz v6, :cond_3

    move-object v6, v2

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/Api;->zad()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    :goto_0
    move-object v6, v2

    .line 3
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v5, v6

    move-object v6, v5

    move v7, v4

    const/16 v8, 0x41

    add-int/lit8 v7, v7, 0x41

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v5

    const-string v7, "GoogleApiClient is not configured to use "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v5

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v5

    const-string v7, " required for this call."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v6, v3

    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zal:Lcom/google/android/gms/common/api/internal/zabu;

    move-object v2, v6

    move-object v6, v2

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zap:Z

    move v3, v6

    move v6, v3

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zaa:Ljava/util/Queue;

    move-object v7, v1

    .line 6
    invoke-interface {v6, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v6

    :goto_1
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zaa:Ljava/util/Queue;

    .line 7
    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    move v2, v6

    move v6, v2

    if-nez v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zaa:Ljava/util/Queue;

    .line 8
    invoke-interface {v6}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-object v2, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zai:Lcom/google/android/gms/common/api/internal/zacx;

    move-object v7, v2

    .line 9
    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/api/internal/zacx;->zaa(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V

    move-object v6, v2

    .line 10
    sget-object v7, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->setFailedResult(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 11
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v6, v1

    move-object v0, v6

    :goto_2
    return-object v0

    :cond_1
    move-object v6, v2

    move-object v7, v1

    .line 12
    :try_start_1
    invoke-interface {v6, v7}, Lcom/google/android/gms/common/api/internal/zabu;->zac(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    move-object v1, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 11
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v6, v1

    move-object v0, v6

    goto :goto_2

    :cond_2
    :try_start_2
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v1, v6

    move-object v6, v1

    const-string v7, "GoogleApiClient is not connected yet."

    .line 13
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v6

    move-object v1, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 11
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v6, v1

    .line 14
    throw v6

    :cond_3
    const-string v6, "the API"

    move-object v2, v6

    goto/16 :goto_0
.end method

.method public final getClient(Lcom/google/android/gms/common/api/Api$AnyClientKey;)Lcom/google/android/gms/common/api/Api$Client;
    .locals 4
    .param p1    # Lcom/google/android/gms/common/api/Api$AnyClientKey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey",
            "<TC;>;)TC;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zac:Ljava/util/Map;

    move-object v3, v1

    .line 1
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$Client;

    move-object v0, v2

    move-object v2, v0

    const-string v3, "Appropriate Api was not requested."

    .line 2
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public final getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 6
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;)",
            "Lcom/google/android/gms/common/ConnectionResult;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object v3, v0

    .line 2
    :try_start_0
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zaaz;->isConnected()Z

    move-result v3

    move v2, v3

    move v3, v2

    if-nez v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zap:Z

    move v2, v3

    move v3, v2

    if-eqz v3, :cond_3

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zac:Ljava/util/Map;

    move-object v4, v1

    .line 3
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/Api;->zac()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    move v2, v3

    move v3, v2

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zal:Lcom/google/android/gms/common/api/internal/zabu;

    move-object v2, v3

    move-object v3, v2

    .line 4
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/internal/zabu;

    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/google/android/gms/common/api/internal/zabu;->zad(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-nez v3, :cond_4

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zap:Z

    move v2, v3

    move v3, v2

    if-eqz v3, :cond_1

    .line 5
    sget-object v3, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 6
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v3, v1

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    const-string v3, "GoogleApiClientImpl"

    move-object v4, v0

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zaaz;->zae()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object v3, v1

    .line 8
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Api;->zad()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    move-object v3, v1

    const-string v4, " requested in getConnectionResult is not connected but is not present in the failed  connections map"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    new-instance v3, Ljava/lang/Exception;

    move-object v2, v3

    move-object v3, v2

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    const-string v3, "GoogleApiClientImpl"

    move-object v4, v1

    move-object v5, v2

    .line 9
    invoke-static {v3, v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 10
    new-instance v3, Lcom/google/android/gms/common/ConnectionResult;

    move-object v1, v3

    move-object v3, v1

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 6
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v3, v1

    move-object v0, v3

    goto :goto_0

    :cond_2
    :try_start_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    .line 11
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/Api;->zad()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " was never registered with GoogleApiClient"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v3, v2

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    move-object v1, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 6
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v3, v1

    .line 13
    throw v3

    :cond_3
    :try_start_3
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v1, v3

    move-object v3, v1

    const-string v4, "Cannot invoke getConnectionResult unless GoogleApiClient is connected"

    .line 12
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 6
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zan:Landroid/content/Context;

    move-object v0, v1

    return-object v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zao:Landroid/os/Looper;

    move-object v0, v1

    return-object v0
.end method

.method public final hasApi(Lcom/google/android/gms/common/api/Api;)Z
    .locals 4
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zac:Ljava/util/Map;

    move-object v3, v1

    .line 1
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Api;->zac()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public final hasConnectedApi(Lcom/google/android/gms/common/api/Api;)Z
    .locals 4
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zaaz;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move v0, v2

    .line 3
    :goto_0
    return v0

    .line 1
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zac:Ljava/util/Map;

    move-object v3, v1

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Api;->zac()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$Client;

    move-object v0, v2

    move-object v2, v0

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 3
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public final isConnected()Z
    .locals 2

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zal:Lcom/google/android/gms/common/api/internal/zabu;

    move-object v0, v1

    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1
    invoke-interface {v1}, Lcom/google/android/gms/common/api/internal/zabu;->zai()Z

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

.method public final isConnecting()Z
    .locals 2

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zal:Lcom/google/android/gms/common/api/internal/zabu;

    move-object v0, v1

    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1
    invoke-interface {v1}, Lcom/google/android/gms/common/api/internal/zabu;->zaj()Z

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

.method public final isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z
    .locals 4
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zak:Lcom/google/android/gms/common/internal/zak;

    move-object v3, v1

    .line 1
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/internal/zak;->zag(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public final isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z
    .locals 4
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zak:Lcom/google/android/gms/common/internal/zak;

    move-object v3, v1

    .line 1
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/internal/zak;->zaj(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public final maybeSignIn(Lcom/google/android/gms/common/api/internal/SignInConnectionListener;)Z
    .locals 4

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zal:Lcom/google/android/gms/common/api/internal/zabu;

    move-object v0, v2

    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    .line 1
    invoke-interface {v2, v3}, Lcom/google/android/gms/common/api/internal/zabu;->zak(Lcom/google/android/gms/common/api/internal/SignInConnectionListener;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public final maybeSignOut()V
    .locals 2

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zal:Lcom/google/android/gms/common/api/internal/zabu;

    move-object v0, v1

    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1
    invoke-interface {v1}, Lcom/google/android/gms/common/api/internal/zabu;->zam()V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public final reconnect()V
    .locals 2

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zaaz;->disconnect()V

    move-object v1, v0

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zaaz;->connect()V

    return-void
.end method

.method public final registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zak:Lcom/google/android/gms/common/internal/zak;

    move-object v3, v1

    .line 1
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/internal/zak;->zaf(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public final registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zak:Lcom/google/android/gms/common/internal/zak;

    move-object v3, v1

    .line 1
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/internal/zak;->zai(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public final registerListener(Ljava/lang/Object;)Lcom/google/android/gms/common/api/internal/ListenerHolder;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(T",
            "L;",
            ")",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder",
            "<T",
            "L;",
            ">;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaaz;->zau:Lcom/google/android/gms/common/api/internal/ListenerHolders;

    move-object v2, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaaz;->zao:Landroid/os/Looper;

    move-object v3, v4

    move-object v4, v2

    move-object v5, v1

    move-object v6, v3

    const-string v7, "NO_TYPE"

    .line 2
    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/gms/common/api/internal/ListenerHolders;->zaa(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/ListenerHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    move-object v1, v4

    .line 4
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v4, v1

    move-object v0, v4

    return-object v0

    .line 2
    :catchall_0
    move-exception v4

    move-object v1, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v4, v1

    .line 4
    throw v4
.end method

.method public final stopAutoManage(Landroidx/fragment/app/FragmentActivity;)V
    .locals 5
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Lcom/google/android/gms/common/api/internal/LifecycleActivity;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/internal/LifecycleActivity;-><init>(Landroid/app/Activity;)V

    move-object v3, v0

    iget v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zam:I

    if-gez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v0, v3

    move-object v3, v0

    const-string v4, "Called stopAutoManage but automatic lifecycle management is not enabled."

    .line 3
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    throw v3

    :cond_0
    move-object v3, v2

    .line 2
    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zak;->zaa(Lcom/google/android/gms/common/api/internal/LifecycleActivity;)Lcom/google/android/gms/common/api/internal/zak;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/google/android/gms/common/api/internal/zaaz;->zam:I

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/zak;->zac(I)V

    return-void
.end method

.method public final unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zak:Lcom/google/android/gms/common/internal/zak;

    move-object v3, v1

    .line 1
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/internal/zak;->zah(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public final unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zak:Lcom/google/android/gms/common/internal/zak;

    move-object v3, v1

    .line 1
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/internal/zak;->zak(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public final zaa(Landroid/os/Bundle;)V
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

    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zaa:Ljava/util/Queue;

    .line 1
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zaa:Ljava/util/Queue;

    .line 2
    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zak:Lcom/google/android/gms/common/internal/zak;

    move-object v3, v1

    .line 3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/internal/zak;->zac(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zab(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 5
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zat:Lcom/google/android/gms/common/GoogleApiAvailability;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zan:Landroid/content/Context;

    move-object v4, v1

    .line 1
    invoke-virtual {v4}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/common/GoogleApiAvailability;->isPlayServicesPossiblyUpdating(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zaaz;->zad()Z

    move-result v2

    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zap:Z

    if-nez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zak:Lcom/google/android/gms/common/internal/zak;

    move-object v3, v1

    .line 3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/internal/zak;->zae(Lcom/google/android/gms/common/ConnectionResult;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zak:Lcom/google/android/gms/common/internal/zak;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zak;->zaa()V

    :goto_0
    return-void

    :cond_1
    goto :goto_0
.end method

.method public final zac(IZ)V
    .locals 10
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, v2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    move v6, v3

    if-nez v6, :cond_5

    move-object v6, v1

    iget-boolean v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zap:Z

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    move v2, v6

    :cond_0
    :goto_0
    move-object v6, v1

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zai:Lcom/google/android/gms/common/api/internal/zacx;

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zacx;->zab:Ljava/util/Set;

    const/4 v7, 0x0

    new-array v7, v7, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 8
    invoke-interface {v6, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    move-object v4, v6

    move-object v6, v4

    .line 9
    array-length v6, v6

    move v5, v6

    const/4 v6, 0x0

    move v3, v6

    :goto_1
    move v6, v3

    move v7, v5

    if-ge v6, v7, :cond_1

    move-object v6, v4

    move v7, v3

    aget-object v6, v6, v7

    sget-object v7, Lcom/google/android/gms/common/api/internal/zacx;->zaa:Lcom/google/android/gms/common/api/Status;

    .line 10
    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->forceFailureUnlessReady(Lcom/google/android/gms/common/api/Status;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move-object v6, v1

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zak:Lcom/google/android/gms/common/internal/zak;

    move v7, v2

    .line 11
    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/internal/zak;->zad(I)V

    move-object v6, v1

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zak:Lcom/google/android/gms/common/internal/zak;

    .line 12
    invoke-virtual {v6}, Lcom/google/android/gms/common/internal/zak;->zaa()V

    move v6, v2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    move-object v6, v1

    .line 13
    invoke-direct {v6}, Lcom/google/android/gms/common/api/internal/zaaz;->zan()V

    :goto_2
    return-void

    :cond_2
    goto :goto_2

    :cond_3
    move-object v6, v1

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zap:Z

    move-object v6, v1

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zab:Lcom/google/android/gms/common/api/internal/zabr;

    if-nez v6, :cond_4

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result v6

    if-nez v6, :cond_4

    move-object v6, v1

    :try_start_0
    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zat:Lcom/google/android/gms/common/GoogleApiAvailability;

    move-object v2, v6

    move-object v6, v1

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zan:Landroid/content/Context;

    move-object v3, v6

    move-object v6, v3

    .line 2
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    move-object v3, v6

    new-instance v6, Lcom/google/android/gms/common/api/internal/zaay;

    move-object v4, v6

    move-object v6, v4

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/google/android/gms/common/api/internal/zaay;-><init>(Lcom/google/android/gms/common/api/internal/zaaz;)V

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    .line 3
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/common/GoogleApiAvailability;->zae(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zabq;)Lcom/google/android/gms/common/api/internal/zabr;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zab:Lcom/google/android/gms/common/api/internal/zabr;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_3
    move-object v6, v1

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zas:Lcom/google/android/gms/common/api/internal/zaax;

    move-object v2, v6

    move-object v6, v2

    move-object v7, v2

    const/4 v8, 0x1

    .line 4
    invoke-virtual {v7, v8}, Lcom/google/android/gms/common/api/internal/zaax;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    move-object v8, v1

    iget-wide v8, v8, Lcom/google/android/gms/common/api/internal/zaaz;->zaq:J

    .line 5
    invoke-virtual {v6, v7, v8, v9}, Lcom/google/android/gms/common/api/internal/zaax;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v6

    move-object v6, v1

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaaz;->zas:Lcom/google/android/gms/common/api/internal/zaax;

    move-object v2, v6

    move-object v6, v2

    move-object v7, v2

    const/4 v8, 0x2

    .line 6
    invoke-virtual {v7, v8}, Lcom/google/android/gms/common/api/internal/zaax;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    move-object v8, v1

    iget-wide v8, v8, Lcom/google/android/gms/common/api/internal/zaaz;->zar:J

    .line 7
    invoke-virtual {v6, v7, v8, v9}, Lcom/google/android/gms/common/api/internal/zaax;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v6

    const/4 v6, 0x1

    move v2, v6

    goto/16 :goto_0

    :cond_5
    const/4 v6, 0x1

    move v2, v6

    goto/16 :goto_0

    :catch_0
    move-exception v6

    goto :goto_3
.end method

.method final zad()Z
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zap:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move v0, v2

    .line 3
    :goto_0
    return v0

    .line 4294967295
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zap:Z

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zas:Lcom/google/android/gms/common/api/internal/zaax;

    const/4 v3, 0x2

    .line 1
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/zaax;->removeMessages(I)V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zas:Lcom/google/android/gms/common/api/internal/zaax;

    const/4 v3, 0x1

    .line 2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/zaax;->removeMessages(I)V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zab:Lcom/google/android/gms/common/api/internal/zabr;

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabr;->zab()V

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zab:Lcom/google/android/gms/common/api/internal/zabr;

    :cond_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method final zae()Ljava/lang/String;
    .locals 8

    .prologue
    move-object v0, p0

    new-instance v3, Ljava/io/StringWriter;

    move-object v1, v3

    move-object v3, v1

    .line 1
    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    .line 2
    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object v3, v0

    const-string v4, ""

    const/4 v5, 0x0

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/gms/common/api/internal/zaaz;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    move-object v3, v1

    .line 3
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public final zao(Lcom/google/android/gms/common/api/internal/zacv;)V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zah:Ljava/util/Set;

    move-object v2, v3

    move-object v3, v2

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/HashSet;

    move-object v2, v3

    move-object v3, v2

    .line 2
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zah:Ljava/util/Set;

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zah:Ljava/util/Set;

    move-object v4, v1

    .line 3
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 5
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 4
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 3
    :catchall_0
    move-exception v3

    move-object v1, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 4
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v3, v1

    .line 5
    throw v3
.end method

.method public final zap(Lcom/google/android/gms/common/api/internal/zacv;)V
    .locals 6

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zah:Ljava/util/Set;

    move-object v2, v3

    move-object v3, v2

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/Exception;

    move-object v1, v3

    move-object v3, v1

    .line 9
    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    const-string v3, "GoogleApiClientImpl"

    const-string v4, "Attempted to remove pending transform when no transforms are registered."

    move-object v5, v1

    invoke-static {v3, v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    :cond_0
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 10
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    move-object v3, v2

    move-object v4, v1

    .line 2
    :try_start_1
    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    move v1, v3

    move v3, v1

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/Exception;

    move-object v1, v3

    move-object v3, v1

    .line 8
    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    const-string v3, "GoogleApiClientImpl"

    const-string v4, "Failed to remove pending transform - this may lead to memory leaks!"

    move-object v5, v1

    invoke-static {v3, v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_0

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v0

    :try_start_2
    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zah:Ljava/util/Set;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v3

    move-object v3, v1

    if-nez v3, :cond_3

    move-object v3, v0

    :try_start_3
    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zal:Lcom/google/android/gms/common/api/internal/zabu;

    move-object v1, v3

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 7
    invoke-interface {v3}, Lcom/google/android/gms/common/api/internal/zabu;->zal()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :cond_3
    move-object v3, v1

    .line 4
    :try_start_4
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v3

    move v1, v3

    move v3, v1

    const/4 v4, 0x1

    xor-int/lit8 v3, v3, 0x1

    move v1, v3

    move-object v3, v0

    :try_start_5
    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 11
    move v3, v1

    if-nez v3, :cond_0

    goto :goto_1

    .line 5
    :catchall_0
    move-exception v3

    move-object v1, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v3, v1

    .line 6
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    move-object v1, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 10
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v3, v1

    .line 11
    throw v3
.end method
