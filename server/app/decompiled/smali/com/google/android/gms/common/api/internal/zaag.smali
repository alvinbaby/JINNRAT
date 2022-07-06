.class public final Lcom/google/android/gms/common/api/internal/zaag;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zaba;


# instance fields
.field private final zaa:Lcom/google/android/gms/common/api/internal/zabd;

.field private zab:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zabd;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/android/gms/common/api/internal/zaag;->zab:Z

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    return-void
.end method

.method static synthetic zaj(Lcom/google/android/gms/common/api/internal/zaag;)Lcom/google/android/gms/common/api/internal/zabd;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public final zaa()V
    .locals 0

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

    move-object v3, v1

    .line 1
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/zaag;->zac(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object v2

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public final zac(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .locals 7
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

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabd;->zag:Lcom/google/android/gms/common/api/internal/zaaz;

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaaz;->zai:Lcom/google/android/gms/common/api/internal/zacx;

    move-object v5, v1

    .line 1
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/zacx;->zaa(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    move-object v2, v4

    move-object v4, v2

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabd;->zag:Lcom/google/android/gms/common/api/internal/zaaz;

    move-object v2, v4

    move-object v4, v1

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v4

    move-object v3, v4

    move-object v4, v2

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaaz;->zac:Ljava/util/Map;

    move-object v5, v3

    .line 3
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/Api$Client;

    move-object v2, v4

    const-string v4, "Appropriate Api was not requested."

    move-object v3, v4

    move-object v4, v2

    move-object v5, v3

    .line 4
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v2

    .line 5
    invoke-interface {v4}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v4

    move v3, v4

    move v4, v3

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabd;->zab:Ljava/util/Map;

    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    move v3, v4

    move v4, v3

    if-eqz v4, :cond_0

    .line 6
    new-instance v4, Lcom/google/android/gms/common/api/Status;

    move-object v2, v4

    move-object v4, v2

    const/16 v5, 0x11

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->setFailedResult(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    move-object v4, v1

    move-object v0, v4

    return-object v0

    :cond_0
    move-object v4, v1

    move-object v5, v2

    .line 7
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->run(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    move-object v2, v4

    new-instance v4, Lcom/google/android/gms/common/api/internal/zaae;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v0

    move-object v6, v0

    .line 8
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/api/internal/zaae;-><init>(Lcom/google/android/gms/common/api/internal/zaag;Lcom/google/android/gms/common/api/internal/zaba;)V

    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/zabd;->zar(Lcom/google/android/gms/common/api/internal/zabb;)V

    goto :goto_0
.end method

.method public final zad()Z
    .locals 4

    .prologue
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/gms/common/api/internal/zaag;->zab:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    move v0, v2

    .line 4
    :goto_0
    return v0

    .line 4294967295
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zag:Lcom/google/android/gms/common/api/internal/zaaz;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->zah:Ljava/util/Set;

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 1
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/gms/common/api/internal/zaag;->zab:Z

    move-object v2, v1

    .line 3
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v0, v2

    :goto_1
    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/zacv;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zacv;->zab()V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/zabd;->zaq(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public final zae()V
    .locals 6

    .prologue
    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/android/gms/common/api/internal/zaag;->zab:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/android/gms/common/api/internal/zaag;->zab:Z

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    move-object v1, v3

    new-instance v3, Lcom/google/android/gms/common/api/internal/zaaf;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v0

    move-object v5, v0

    .line 1
    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/api/internal/zaaf;-><init>(Lcom/google/android/gms/common/api/internal/zaag;Lcom/google/android/gms/common/api/internal/zaba;)V

    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/zabd;->zar(Lcom/google/android/gms/common/api/internal/zabb;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public final zaf(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final zag(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;Z)V"
        }
    .end annotation

    return-void
.end method

.method public final zah(I)V
    .locals 5

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    const/4 v3, 0x0

    .line 1
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/zabd;->zaq(Lcom/google/android/gms/common/ConnectionResult;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zah:Lcom/google/android/gms/common/api/internal/zabt;

    move v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/gms/common/api/internal/zaag;->zab:Z

    .line 2
    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/common/api/internal/zabt;->zac(IZ)V

    return-void
.end method

.method final zai()V
    .locals 3

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/gms/common/api/internal/zaag;->zab:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/gms/common/api/internal/zaag;->zab:Z

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabd;->zag:Lcom/google/android/gms/common/api/internal/zaaz;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zai:Lcom/google/android/gms/common/api/internal/zacx;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zacx;->zab()V

    move-object v1, v0

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zaag;->zad()Z

    move-result v1

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method
