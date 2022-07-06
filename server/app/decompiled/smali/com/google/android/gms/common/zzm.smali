.class final Lcom/google/android/gms/common/zzm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# annotations
.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field static final zza:Lcom/google/android/gms/common/zzk;

.field static final zzb:Lcom/google/android/gms/common/zzk;

.field static final zzc:Lcom/google/android/gms/common/zzk;

.field static final zzd:Lcom/google/android/gms/common/zzk;

.field private static volatile zze:Lcom/google/android/gms/common/internal/zzae;

.field private static final zzf:Ljava/lang/Object;

.field private static zzg:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1
    new-instance v1, Lcom/google/android/gms/common/zze;

    move-object v0, v1

    move-object v1, v0

    const-string v2, "0\u0082\u0005\u00c80\u0082\u0003\u00b0\u00a0\u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\u0008s\u00f9/\u008eQ\u00ed"

    .line 2
    invoke-static {v2}, Lcom/google/android/gms/common/zzi;->zzf(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/zze;-><init>([B)V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/zzm;->zza:Lcom/google/android/gms/common/zzk;

    new-instance v1, Lcom/google/android/gms/common/zzf;

    move-object v0, v1

    move-object v1, v0

    const-string v2, "0\u0082\u0006\u00040\u0082\u0003\u00ec\u00a0\u0003\u0002\u0001\u0002\u0002\u0014\u0003\u00a3\u00b2\u00ad\u00d7\u00e1r\u00cak\u00ec"

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/common/zzi;->zzf(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/zzf;-><init>([B)V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/zzm;->zzb:Lcom/google/android/gms/common/zzk;

    new-instance v1, Lcom/google/android/gms/common/zzg;

    move-object v0, v1

    move-object v1, v0

    const-string v2, "0\u0082\u0004C0\u0082\u0003+\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00c2\u00e0\u0087FdJ0\u008d0"

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/common/zzi;->zzf(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/zzg;-><init>([B)V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/zzm;->zzc:Lcom/google/android/gms/common/zzk;

    new-instance v1, Lcom/google/android/gms/common/zzh;

    move-object v0, v1

    move-object v1, v0

    const-string v2, "0\u0082\u0004\u00a80\u0082\u0003\u0090\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00d5\u0085\u00b8l}\u00d3N\u00f50"

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/common/zzi;->zzf(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/zzh;-><init>([B)V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/zzm;->zzd:Lcom/google/android/gms/common/zzk;

    new-instance v1, Ljava/lang/Object;

    move-object v0, v1

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/zzm;->zzf:Ljava/lang/Object;

    return-void
.end method

.method static declared-synchronized zza(Landroid/content/Context;)V
    .locals 4

    .prologue
    move-object v0, p0

    const-class v3, Lcom/google/android/gms/common/zzm;

    monitor-enter v3

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/zzm;->zzg:Landroid/content/Context;

    if-nez v1, :cond_1

    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/common/zzm;->zzg:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :goto_0
    monitor-exit v3

    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    :try_start_1
    const-string v1, "GoogleCertificates"

    const-string v2, "GoogleCertificates has been initialized already"

    .line 2
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 4294967295
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method static zzb(Ljava/lang/String;ZZZ)Lcom/google/android/gms/common/zzw;
    .locals 11

    .prologue
    .line 1
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    move-object v2, v5

    :try_start_0
    sget-object v5, Lcom/google/android/gms/common/zzm;->zzg:Landroid/content/Context;

    .line 2
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 3
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/common/zzm;->zzf()V
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v5, Lcom/google/android/gms/common/zzn;

    move-object v3, v5

    move-object v5, v3

    move-object v6, v0

    move v7, v1

    const/4 v8, 0x0

    sget-object v9, Lcom/google/android/gms/common/zzm;->zzg:Landroid/content/Context;

    .line 6
    invoke-static {v9}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/common/zzn;-><init>(Ljava/lang/String;ZZLandroid/os/IBinder;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v5, Lcom/google/android/gms/common/zzm;->zze:Lcom/google/android/gms/common/internal/zzae;

    move-object v6, v3

    .line 7
    invoke-interface {v5, v6}, Lcom/google/android/gms/common/internal/zzae;->zzf(Lcom/google/android/gms/common/zzn;)Lcom/google/android/gms/common/zzq;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    move-object v1, v5

    move-object v5, v1

    .line 9
    :try_start_4
    invoke-virtual {v5}, Lcom/google/android/gms/common/zzq;->zza()Z

    move-result v5

    move v0, v5

    move v5, v0

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/zzw;->zzb()Lcom/google/android/gms/common/zzw;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    move-object v0, v5

    :goto_0
    move-object v5, v2

    .line 13
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v5, v0

    move-object v0, v5

    return-object v0

    :cond_0
    move-object v5, v1

    .line 10
    :try_start_5
    invoke-virtual {v5}, Lcom/google/android/gms/common/zzq;->zzb()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    const-string v5, "error checking package certificate"

    move-object v3, v5

    move-object v5, v0

    if-nez v5, :cond_1

    move-object v5, v3

    move-object v0, v5

    :cond_1
    move-object v5, v1

    .line 11
    invoke-virtual {v5}, Lcom/google/android/gms/common/zzq;->zzc()I

    move-result v5

    move v1, v5

    move v5, v1

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 12
    new-instance v5, Landroid/content/pm/PackageManager$NameNotFoundException;

    move-object v1, v5

    move-object v5, v1

    invoke-direct {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    move-object v5, v0

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/google/android/gms/common/zzw;->zze(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/zzw;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    :cond_2
    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/gms/common/zzw;->zzd(Ljava/lang/String;)Lcom/google/android/gms/common/zzw;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    :catchall_0
    move-exception v5

    move-object v0, v5

    move-object v5, v2

    .line 13
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v5, v0

    .line 14
    throw v5

    :catch_0
    move-exception v5

    move-object v1, v5

    :try_start_6
    const-string v5, "GoogleCertificates"

    const-string v6, "Failed to get Google certificates from remote"

    move-object v7, v1

    .line 4
    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    const-string v5, "module init: "

    move-object v0, v5

    move-object v5, v1

    .line 5
    invoke-virtual {v5}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v5

    move v5, v4

    if-eqz v5, :cond_3

    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    :goto_1
    move-object v5, v0

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/google/android/gms/common/zzw;->zze(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/zzw;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    :catch_1
    move-exception v5

    move-object v0, v5

    const-string v5, "GoogleCertificates"

    const-string v6, "Failed to get Google certificates from remote"

    move-object v7, v0

    .line 8
    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    const-string v5, "module call"

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/google/android/gms/common/zzw;->zze(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/zzw;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    :cond_3
    new-instance v5, Ljava/lang/String;

    move-object v3, v5

    move-object v5, v3

    move-object v6, v0

    .line 5
    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v5, v3

    move-object v0, v5

    goto :goto_1
.end method

.method static zzc(Ljava/lang/String;Lcom/google/android/gms/common/zzi;ZZ)Lcom/google/android/gms/common/zzw;
    .locals 9

    .prologue
    .line 1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    move-object v4, v5

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    .line 2
    :try_start_0
    invoke-static {v5, v6, v7, v8}, Lcom/google/android/gms/common/zzm;->zzg(Ljava/lang/String;Lcom/google/android/gms/common/zzi;ZZ)Lcom/google/android/gms/common/zzw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    move-object v0, v5

    .line 4
    move-object v5, v4

    .line 3
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v5, v0

    move-object v0, v5

    return-object v0

    .line 2
    :catchall_0
    move-exception v5

    move-object v0, v5

    move-object v5, v4

    .line 3
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v5, v0

    .line 4
    throw v5
.end method

.method static zzd()Z
    .locals 5

    .prologue
    .line 1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    move-object v0, v2

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/zzm;->zzf()V

    sget-object v2, Lcom/google/android/gms/common/zzm;->zze:Lcom/google/android/gms/common/internal/zzae;

    .line 3
    invoke-interface {v2}, Lcom/google/android/gms/common/internal/zzae;->zzg()Z
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    move v1, v2

    move-object v2, v0

    .line 5
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move v2, v1

    move v0, v2

    :goto_0
    return v0

    :catch_0
    move-exception v2

    :goto_1
    move-object v1, v2

    :try_start_1
    const-string v2, "GoogleCertificates"

    const-string v3, "Failed to get Google certificates from remote"

    move-object v4, v1

    .line 4
    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 6
    move-object v2, v0

    .line 5
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 4
    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    .line 5
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v2, v1

    .line 6
    throw v2

    .line 5
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method static final synthetic zze(ZLjava/lang/String;Lcom/google/android/gms/common/zzi;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v0

    if-nez v4, :cond_1

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/common/zzm;->zzg(Ljava/lang/String;Lcom/google/android/gms/common/zzi;ZZ)Lcom/google/android/gms/common/zzw;

    move-result-object v4

    iget-boolean v4, v4, Lcom/google/android/gms/common/zzw;->zza:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    move v3, v4

    :goto_0
    move-object v4, v1

    move-object v5, v2

    move v6, v0

    move v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/common/zzw;->zzg(Ljava/lang/String;Lcom/google/android/gms/common/zzi;ZZ)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0

    :cond_0
    const/4 v4, 0x0

    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    move v3, v4

    goto :goto_0
.end method

.method private static zzf()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .prologue
    sget-object v2, Lcom/google/android/gms/common/zzm;->zze:Lcom/google/android/gms/common/internal/zzae;

    if-eqz v2, :cond_0

    .line 7
    :goto_0
    return-void

    .line 4294967295
    :cond_0
    sget-object v2, Lcom/google/android/gms/common/zzm;->zzg:Landroid/content/Context;

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v2, Lcom/google/android/gms/common/zzm;->zzf:Ljava/lang/Object;

    move-object v0, v2

    move-object v2, v0

    .line 2
    monitor-enter v2

    :try_start_0
    sget-object v2, Lcom/google/android/gms/common/zzm;->zze:Lcom/google/android/gms/common/internal/zzae;

    move-object v1, v2

    move-object v2, v1

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/gms/common/zzm;->zzg:Landroid/content/Context;

    move-object v1, v2

    move-object v2, v1

    .line 3
    sget-object v3, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    const-string v4, "com.google.android.gms.googlecertificates"

    .line 4
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v2

    const-string v3, "com.google.android.gms.common.GoogleCertificatesImpl"

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    .line 6
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzad;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzae;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/common/zzm;->zze:Lcom/google/android/gms/common/internal/zzae;

    :cond_1
    move-object v2, v0

    .line 7
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    throw v2
.end method

.method private static zzg(Ljava/lang/String;Lcom/google/android/gms/common/zzi;ZZ)Lcom/google/android/gms/common/zzw;
    .locals 11

    .prologue
    .line 1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/zzm;->zzf()V
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v6, Lcom/google/android/gms/common/zzm;->zzg:Landroid/content/Context;

    .line 4
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    new-instance v6, Lcom/google/android/gms/common/zzs;

    move-object v4, v6

    move-object v6, v4

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    .line 5
    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/android/gms/common/zzs;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/zzi;ZZ)V

    :try_start_1
    sget-object v6, Lcom/google/android/gms/common/zzm;->zze:Lcom/google/android/gms/common/internal/zzae;

    move-object v3, v6

    sget-object v6, Lcom/google/android/gms/common/zzm;->zzg:Landroid/content/Context;

    .line 6
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    move-object v5, v6

    move-object v6, v3

    move-object v7, v4

    move-object v8, v5

    invoke-static {v8}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v8

    .line 7
    invoke-interface {v6, v7, v8}, Lcom/google/android/gms/common/internal/zzae;->zze(Lcom/google/android/gms/common/zzs;Lcom/google/android/gms/dynamic/IObjectWrapper;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    move v3, v6

    move v6, v3

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/zzw;->zzb()Lcom/google/android/gms/common/zzw;

    move-result-object v6

    move-object v0, v6

    .line 9
    :goto_0
    return-object v0

    .line 7
    :cond_0
    new-instance v6, Lcom/google/android/gms/common/zzd;

    move-object v3, v6

    move-object v6, v3

    move v7, v2

    move-object v8, v0

    move-object v9, v1

    .line 9
    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/gms/common/zzd;-><init>(ZLjava/lang/String;Lcom/google/android/gms/common/zzi;)V

    move-object v6, v3

    invoke-static {v6}, Lcom/google/android/gms/common/zzw;->zzc(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/common/zzw;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v1, v6

    const-string v6, "GoogleCertificates"

    const-string v7, "Failed to get Google certificates from remote"

    move-object v8, v1

    .line 2
    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    move-object v6, v1

    .line 3
    invoke-virtual {v6}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    const-string v6, "module init: "

    move-object v2, v6

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    :goto_1
    move-object v6, v0

    move-object v7, v1

    invoke-static {v6, v7}, Lcom/google/android/gms/common/zzw;->zze(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/zzw;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    :catch_1
    move-exception v6

    move-object v0, v6

    const-string v6, "GoogleCertificates"

    const-string v7, "Failed to get Google certificates from remote"

    move-object v8, v0

    .line 8
    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    const-string v6, "module call"

    move-object v7, v0

    invoke-static {v6, v7}, Lcom/google/android/gms/common/zzw;->zze(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/zzw;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/lang/String;

    move-object v0, v6

    move-object v6, v0

    move-object v7, v2

    .line 3
    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
