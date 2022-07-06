.class public Lcom/google/android/gms/common/internal/AccountAccessor;
.super Lcom/google/android/gms/common/internal/IAccountAccessor$Stub;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# direct methods
.method public static getAccountBinderSafe(Lcom/google/android/gms/common/internal/IAccountAccessor;)Landroid/accounts/Account;
    .locals 6
    .param p0    # Lcom/google/android/gms/common/internal/IAccountAccessor;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v1, p0

    move-object v4, v1

    if-eqz v4, :cond_0

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    move-wide v2, v4

    move-object v4, v1

    .line 2
    :try_start_0
    invoke-interface {v4}, Lcom/google/android/gms/common/internal/IAccountAccessor;->zzb()Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    move-object v1, v4

    move-wide v4, v2

    .line 4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    move-object v4, v1

    move-object v1, v4

    return-object v1

    :cond_0
    const/4 v4, 0x0

    move-object v1, v4

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_1
    const-string v4, "AccountAccessor"

    const-string v5, "Remote account accessor probably died"

    .line 3
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 5
    move-wide v4, v2

    .line 4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v4, 0x0

    move-object v1, v4

    goto :goto_0

    .line 3
    :catchall_0
    move-exception v4

    move-object v1, v4

    move-wide v4, v2

    .line 4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v4, v1

    .line 5
    throw v4
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    throw v2
.end method

.method public final zzb()Landroid/accounts/Account;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    move-object v0, p0

    const/4 v1, 0x0

    throw v1
.end method
