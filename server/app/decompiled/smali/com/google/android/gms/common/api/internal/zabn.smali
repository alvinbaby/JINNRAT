.class final Lcom/google/android/gms/common/api/internal/zabn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic zab:Lcom/google/android/gms/common/api/internal/zabo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zabo;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabn;->zab:Lcom/google/android/gms/common/api/internal/zabo;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabn;->zaa:Lcom/google/android/gms/common/ConnectionResult;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabn;->zab:Lcom/google/android/gms/common/api/internal/zabo;

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabo;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaG(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Ljava/util/Map;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabn;->zab:Lcom/google/android/gms/common/api/internal/zabo;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zabo;->zac(Lcom/google/android/gms/common/api/internal/zabo;)Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v4

    .line 1
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/internal/zabl;

    move-object v1, v3

    move-object v3, v1

    if-nez v3, :cond_0

    .line 12
    :goto_0
    return-void

    .line 1
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabn;->zaa:Lcom/google/android/gms/common/ConnectionResult;

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabn;->zab:Lcom/google/android/gms/common/api/internal/zabo;

    const/4 v4, 0x1

    .line 3
    invoke-static {v3, v4}, Lcom/google/android/gms/common/api/internal/zabo;->zad(Lcom/google/android/gms/common/api/internal/zabo;Z)Z

    move-result v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabn;->zab:Lcom/google/android/gms/common/api/internal/zabo;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zabo;->zae(Lcom/google/android/gms/common/api/internal/zabo;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v3

    .line 4
    invoke-interface {v3}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabn;->zab:Lcom/google/android/gms/common/api/internal/zabo;

    .line 5
    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zabo;->zaf(Lcom/google/android/gms/common/api/internal/zabo;)V

    goto :goto_0

    :cond_1
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabn;->zab:Lcom/google/android/gms/common/api/internal/zabo;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zabo;->zae(Lcom/google/android/gms/common/api/internal/zabo;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabn;->zab:Lcom/google/android/gms/common/api/internal/zabo;

    invoke-static {v5}, Lcom/google/android/gms/common/api/internal/zabo;->zae(Lcom/google/android/gms/common/api/internal/zabo;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v5

    .line 6
    invoke-interface {v5}, Lcom/google/android/gms/common/api/Api$Client;->getScopesForConnectionlessNonSignIn()Ljava/util/Set;

    move-result-object v5

    .line 7
    invoke-interface {v3, v4, v5}, Lcom/google/android/gms/common/api/Api$Client;->getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabn;->zaa:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v5, 0x0

    .line 12
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/common/api/internal/zabl;->zac(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v2, v3

    const-string v3, "GoogleApiManager"

    const-string v4, "Failed to get service from broker. "

    move-object v5, v2

    .line 8
    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabn;->zab:Lcom/google/android/gms/common/api/internal/zabo;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zabo;->zae(Lcom/google/android/gms/common/api/internal/zabo;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v3

    const-string v4, "Failed to get service from broker."

    .line 9
    invoke-interface {v3, v4}, Lcom/google/android/gms/common/api/Api$Client;->disconnect(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/common/ConnectionResult;

    move-object v0, v3

    move-object v3, v0

    const/16 v4, 0xa

    .line 10
    invoke-direct {v3, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    move-object v3, v1

    move-object v4, v0

    const/4 v5, 0x0

    .line 11
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/common/api/internal/zabl;->zac(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    goto :goto_0
.end method
