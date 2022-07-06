.class public Lcom/google/android/gms/common/api/AvailabilityException;
.super Ljava/lang/Exception;
.source "com.google.android.gms:play-services-base@@17.6.0"


# instance fields
.field private final zaa:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap",
            "<",
            "Lcom/google/android/gms/common/api/internal/ApiKey",
            "<*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/collection/ArrayMap;)V
    .locals 4
    .param p1    # Landroidx/collection/ArrayMap;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap",
            "<",
            "Lcom/google/android/gms/common/api/internal/ApiKey",
            "<*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    .line 1
    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/api/AvailabilityException;->zaa:Landroidx/collection/ArrayMap;

    return-void
.end method


# virtual methods
.method public getConnectionResult(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 9
    .param p1    # Lcom/google/android/gms/common/api/GoogleApi;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApi",
            "<+",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">;)",
            "Lcom/google/android/gms/common/ConnectionResult;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    .line 1
    invoke-virtual {v6}, Lcom/google/android/gms/common/api/GoogleApi;->getApiKey()Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v6

    move-object v2, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/AvailabilityException;->zaa:Landroidx/collection/ArrayMap;

    move-object v7, v2

    .line 2
    invoke-virtual {v6, v7}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    move v1, v6

    :goto_0
    move-object v6, v2

    .line 3
    invoke-virtual {v6}, Lcom/google/android/gms/common/api/internal/ApiKey;->zab()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    move-object v6, v3

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

    const/16 v8, 0x3a

    add-int/lit8 v7, v7, 0x3a

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v5

    const-string v7, "The given API ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v5

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v5

    const-string v7, ") was not part of the availability request."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v6, v1

    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/AvailabilityException;->zaa:Landroidx/collection/ArrayMap;

    move-object v7, v2

    .line 5
    invoke-virtual {v6, v7}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/ConnectionResult;

    move-object v0, v6

    return-object v0

    :cond_0
    const/4 v6, 0x0

    move v1, v6

    goto :goto_0
.end method

.method public getConnectionResult(Lcom/google/android/gms/common/api/HasApiKey;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 9
    .param p1    # Lcom/google/android/gms/common/api/HasApiKey;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/HasApiKey",
            "<+",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">;)",
            "Lcom/google/android/gms/common/ConnectionResult;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    .line 6
    invoke-interface {v6}, Lcom/google/android/gms/common/api/HasApiKey;->getApiKey()Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v6

    move-object v2, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/AvailabilityException;->zaa:Landroidx/collection/ArrayMap;

    move-object v7, v2

    .line 7
    invoke-virtual {v6, v7}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    move v1, v6

    :goto_0
    move-object v6, v2

    .line 8
    invoke-virtual {v6}, Lcom/google/android/gms/common/api/internal/ApiKey;->zab()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    move-object v6, v3

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

    const/16 v8, 0x3a

    add-int/lit8 v7, v7, 0x3a

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v5

    const-string v7, "The given API ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v5

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v5

    const-string v7, ") was not part of the availability request."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v6, v1

    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/AvailabilityException;->zaa:Landroidx/collection/ArrayMap;

    move-object v7, v2

    .line 10
    invoke-virtual {v6, v7}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/ConnectionResult;

    move-object v0, v6

    return-object v0

    :cond_0
    const/4 v6, 0x0

    move v1, v6

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 12
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    move-object v0, p0

    new-instance v9, Ljava/util/ArrayList;

    move-object v2, v9

    move-object v9, v2

    .line 1
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/gms/common/api/AvailabilityException;->zaa:Landroidx/collection/ArrayMap;

    .line 2
    invoke-virtual {v9}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v3, v9

    const/4 v9, 0x1

    move v1, v9

    :goto_0
    move-object v9, v3

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, v3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/common/api/internal/ApiKey;

    move-object v4, v9

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/gms/common/api/AvailabilityException;->zaa:Landroidx/collection/ArrayMap;

    move-object v10, v4

    .line 3
    invoke-virtual {v9, v10}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/common/ConnectionResult;

    move-object v5, v9

    move-object v9, v5

    .line 4
    invoke-virtual {v9}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v9

    const/4 v10, 0x1

    xor-int/lit8 v9, v9, 0x1

    move v10, v1

    and-int/2addr v9, v10

    move v1, v9

    move-object v9, v4

    .line 5
    invoke-virtual {v9}, Lcom/google/android/gms/common/api/internal/ApiKey;->zab()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    move-object v9, v5

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    move-object v9, v4

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move v6, v9

    move-object v9, v5

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    move-object v9, v7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move v7, v9

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v8, v9

    move-object v9, v8

    move v10, v6

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    move v11, v7

    add-int/2addr v10, v11

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v9, v8

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v9, v8

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v9, v8

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v9, v2

    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_0

    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v0, v9

    move-object v9, v0

    .line 6
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move v9, v1

    if-eqz v9, :cond_1

    move-object v9, v0

    const-string v10, "None of the queried APIs are available. "

    .line 7
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    :goto_1
    move-object v9, v0

    const-string v10, "; "

    move-object v11, v2

    .line 9
    invoke-static {v10, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v9, v0

    .line 10
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    return-object v0

    :cond_1
    move-object v9, v0

    const-string v10, "Some of the queried APIs are unavailable. "

    .line 8
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    goto :goto_1
.end method
