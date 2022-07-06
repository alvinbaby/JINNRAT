.class final Lcom/google/android/gms/common/api/internal/zaal;
.super Lcom/google/android/gms/common/api/internal/zaaq;
.source "com.google.android.gms:play-services-base@@17.6.0"


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/zaar;

.field private final zac:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$Client;",
            "Lcom/google/android/gms/common/api/internal/zaai;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaar;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$Client;",
            "Lcom/google/android/gms/common/api/internal/zaai;",
            ">;)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zaal;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    .line 1
    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/api/internal/zaaq;-><init>(Lcom/google/android/gms/common/api/internal/zaar;Lcom/google/android/gms/common/api/internal/zaah;)V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zaal;->zac:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zaa()V
    .locals 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    move-object v0, p0

    new-instance v6, Lcom/google/android/gms/common/internal/zal;

    move-object v3, v6

    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zaal;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-static {v7}, Lcom/google/android/gms/common/api/internal/zaar;->zaj(Lcom/google/android/gms/common/api/internal/zaar;)Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v7

    .line 1
    invoke-direct {v6, v7}, Lcom/google/android/gms/common/internal/zal;-><init>(Lcom/google/android/gms/common/GoogleApiAvailabilityLight;)V

    new-instance v6, Ljava/util/ArrayList;

    move-object v4, v6

    move-object v6, v4

    .line 2
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    move-object v5, v6

    move-object v6, v5

    .line 3
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaal;->zac:Ljava/util/Map;

    .line 4
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v6

    :goto_0
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/api/Api$Client;

    move-object v2, v6

    move-object v6, v2

    .line 5
    invoke-interface {v6}, Lcom/google/android/gms/common/api/Api$Client;->requiresGooglePlayServices()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaal;->zac:Ljava/util/Map;

    move-object v7, v2

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/api/internal/zaai;

    invoke-static {v6}, Lcom/google/android/gms/common/api/internal/zaai;->zaa(Lcom/google/android/gms/common/api/internal/zaai;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v4

    move-object v7, v2

    .line 7
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_0

    :cond_0
    move-object v6, v5

    move-object v7, v2

    .line 6
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_0

    :cond_1
    move-object v6, v4

    .line 8
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v6, v5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v4, v6

    const/4 v6, 0x0

    move v1, v6

    const/4 v6, -0x1

    move v2, v6

    :cond_2
    move v6, v1

    move v7, v4

    if-ge v6, v7, :cond_7

    move-object v6, v5

    move v7, v1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    move-object v6, v2

    .line 9
    check-cast v6, Lcom/google/android/gms/common/api/Api$Client;

    move-object v2, v6

    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zaal;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-static {v7}, Lcom/google/android/gms/common/api/internal/zaar;->zai(Lcom/google/android/gms/common/api/internal/zaar;)Landroid/content/Context;

    move-result-object v7

    move-object v8, v2

    .line 10
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/common/internal/zal;->zaa(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$Client;)I

    move-result v6

    move v2, v6

    add-int/lit8 v1, v1, 0x1

    move v6, v2

    if-nez v6, :cond_2

    move v6, v2

    move v1, v6

    :goto_1
    move v6, v1

    if-eqz v6, :cond_3

    .line 13
    new-instance v6, Lcom/google/android/gms/common/ConnectionResult;

    move-object v2, v6

    move-object v6, v2

    move v7, v1

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaal;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    move-object v1, v6

    move-object v6, v1

    invoke-static {v6}, Lcom/google/android/gms/common/api/internal/zaar;->zal(Lcom/google/android/gms/common/api/internal/zaar;)Lcom/google/android/gms/common/api/internal/zabd;

    move-result-object v6

    move-object v1, v6

    new-instance v6, Lcom/google/android/gms/common/api/internal/zaaj;

    move-object v3, v6

    move-object v6, v3

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zaal;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    move-object v9, v2

    .line 14
    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/gms/common/api/internal/zaaj;-><init>(Lcom/google/android/gms/common/api/internal/zaal;Lcom/google/android/gms/common/api/internal/zaba;Lcom/google/android/gms/common/ConnectionResult;)V

    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/api/internal/zabd;->zar(Lcom/google/android/gms/common/api/internal/zabb;)V

    .line 20
    :goto_2
    return-void

    .line 14
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaal;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-static {v6}, Lcom/google/android/gms/common/api/internal/zaar;->zan(Lcom/google/android/gms/common/api/internal/zaar;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaal;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-static {v6}, Lcom/google/android/gms/common/api/internal/zaar;->zao(Lcom/google/android/gms/common/api/internal/zaar;)Lcom/google/android/gms/signin/zae;

    move-result-object v6

    if-eqz v6, :cond_4

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaal;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-static {v6}, Lcom/google/android/gms/common/api/internal/zaar;->zao(Lcom/google/android/gms/common/api/internal/zaar;)Lcom/google/android/gms/signin/zae;

    move-result-object v6

    .line 15
    invoke-interface {v6}, Lcom/google/android/gms/signin/zae;->zad()V

    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaal;->zac:Ljava/util/Map;

    .line 16
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v6

    :goto_3
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v6, v1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/api/Api$Client;

    move-object v2, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaal;->zac:Ljava/util/Map;

    move-object v7, v2

    .line 17
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    move-object v4, v6

    move-object v6, v2

    .line 18
    invoke-interface {v6}, Lcom/google/android/gms/common/api/Api$Client;->requiresGooglePlayServices()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zaal;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-static {v7}, Lcom/google/android/gms/common/api/internal/zaar;->zai(Lcom/google/android/gms/common/api/internal/zaar;)Landroid/content/Context;

    move-result-object v7

    move-object v8, v2

    .line 19
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/common/internal/zal;->zaa(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$Client;)I

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zaal;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    move-object v2, v6

    move-object v6, v2

    invoke-static {v6}, Lcom/google/android/gms/common/api/internal/zaar;->zal(Lcom/google/android/gms/common/api/internal/zaar;)Lcom/google/android/gms/common/api/internal/zabd;

    move-result-object v6

    move-object v2, v6

    new-instance v6, Lcom/google/android/gms/common/api/internal/zaak;

    move-object v5, v6

    move-object v6, v5

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zaal;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    move-object v9, v4

    .line 21
    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/gms/common/api/internal/zaak;-><init>(Lcom/google/android/gms/common/api/internal/zaal;Lcom/google/android/gms/common/api/internal/zaba;Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V

    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/api/internal/zabd;->zar(Lcom/google/android/gms/common/api/internal/zabb;)V

    goto :goto_3

    :cond_5
    move-object v6, v2

    move-object v7, v4

    .line 20
    invoke-interface {v6, v7}, Lcom/google/android/gms/common/api/Api$Client;->connect(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V

    goto :goto_3

    :cond_6
    goto :goto_2

    :cond_7
    move v6, v2

    move v1, v6

    goto/16 :goto_1

    :cond_8
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v5, v6

    const/4 v6, 0x0

    move v1, v6

    const/4 v6, -0x1

    move v2, v6

    :cond_9
    move v6, v1

    move v7, v5

    if-ge v6, v7, :cond_a

    move-object v6, v4

    move v7, v1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    move-object v6, v2

    .line 11
    check-cast v6, Lcom/google/android/gms/common/api/Api$Client;

    move-object v2, v6

    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zaal;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-static {v7}, Lcom/google/android/gms/common/api/internal/zaar;->zai(Lcom/google/android/gms/common/api/internal/zaar;)Landroid/content/Context;

    move-result-object v7

    move-object v8, v2

    .line 12
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/common/internal/zal;->zaa(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$Client;)I

    move-result v6

    move v2, v6

    add-int/lit8 v1, v1, 0x1

    move v6, v2

    if-eqz v6, :cond_9

    move v6, v2

    move v1, v6

    goto/16 :goto_1

    :cond_a
    move v6, v2

    move v1, v6

    goto/16 :goto_1
.end method
