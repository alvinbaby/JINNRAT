.class public Lcom/google/android/gms/security/ProviderInstaller;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;
    }
.end annotation


# static fields
.field public static final PROVIDER_NAME:Ljava/lang/String; = "GmsCore_OpenSSL"
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field private static final zza:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

.field private static final zzb:Ljava/lang/Object;

.field private static zzc:Ljava/lang/reflect/Method;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "ProviderInstaller.lock"
    .end annotation
.end field

.field private static zzd:Ljava/lang/reflect/Method;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "ProviderInstaller.lock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/security/ProviderInstaller;->zza:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    new-instance v1, Ljava/lang/Object;

    move-object v0, v1

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/security/ProviderInstaller;->zzb:Ljava/lang/Object;

    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/gms/security/ProviderInstaller;->zzc:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/gms/security/ProviderInstaller;->zzd:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installIfNeeded(Landroid/content/Context;)V
    .locals 16
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/GooglePlayServicesRepairableException;,
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
        }
    .end annotation

    .prologue
    move-object/from16 v1, p0

    move-object v12, v1

    const-string v13, "Context must not be null"

    .line 1
    invoke-static {v12, v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    sget-object v12, Lcom/google/android/gms/security/ProviderInstaller;->zza:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-object v13, v1

    const v14, 0xb5f608

    .line 2
    invoke-virtual {v12, v13, v14}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->verifyGooglePlayServicesIsAvailable(Landroid/content/Context;I)V

    sget-object v12, Lcom/google/android/gms/security/ProviderInstaller;->zzb:Ljava/lang/Object;

    move-object v3, v12

    move-object v12, v3

    .line 3
    monitor-enter v12

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v12

    move-wide v4, v12

    move-object v12, v1

    .line 5
    :try_start_1
    sget-object v13, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    const-string v14, "com.google.android.gms.providerinstaller.dynamite"

    invoke-static {v12, v13, v14}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v12

    move-object v2, v12

    move-object v12, v2

    invoke-virtual {v12}, Lcom/google/android/gms/dynamite/DynamiteModule;->getModuleContext()Landroid/content/Context;
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    move-object v2, v12

    :goto_0
    move-object v12, v2

    if-nez v12, :cond_2

    .line 7
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-wide v6, v12

    move-object v12, v1

    .line 8
    invoke-static {v12}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    move-object v8, v12

    move-object v12, v8

    if-eqz v12, :cond_1

    :try_start_3
    sget-object v12, Lcom/google/android/gms/security/ProviderInstaller;->zzd:Ljava/lang/reflect/Method;

    move-object v2, v12

    move-object v12, v2

    if-nez v12, :cond_0

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Class;

    move-object v2, v12

    move-object v12, v2

    const/4 v13, 0x0

    const-class v14, Landroid/content/Context;

    aput-object v14, v12, v13

    move-object v12, v2

    const/4 v13, 0x1

    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    move-object v12, v2

    const/4 v13, 0x2

    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    move-object v12, v8

    const-string v13, "com.google.android.gms.common.security.ProviderInstallerImpl"

    const-string v14, "reportRequestStats"

    move-object v15, v2

    .line 9
    invoke-static {v12, v13, v14, v15}, Lcom/google/android/gms/security/ProviderInstaller;->zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    sput-object v12, Lcom/google/android/gms/security/ProviderInstaller;->zzd:Ljava/lang/reflect/Method;

    :cond_0
    sget-object v12, Lcom/google/android/gms/security/ProviderInstaller;->zzd:Ljava/lang/reflect/Method;

    move-object v2, v12

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    move-object v9, v12

    move-object v12, v9

    const/4 v13, 0x0

    move-object v14, v1

    aput-object v14, v12, v13

    move-object v12, v9

    const/4 v13, 0x1

    move-wide v14, v4

    .line 10
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v12, v9

    const/4 v13, 0x2

    move-wide v14, v6

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v12, v2

    const/4 v13, 0x0

    move-object v14, v9

    invoke-virtual {v12, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v12

    :cond_1
    :goto_1
    move-object v12, v8

    if-eqz v12, :cond_3

    move-object v12, v8

    move-object v13, v1

    :try_start_4
    const-string v14, "com.google.android.gms.common.security.ProviderInstallerImpl"

    .line 12
    invoke-static {v12, v13, v14}, Lcom/google/android/gms/security/ProviderInstaller;->zzb(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)V

    move-object v12, v3

    .line 13
    monitor-exit v12

    .line 17
    :goto_2
    return-void

    .line 13
    :cond_2
    move-object v12, v2

    move-object v13, v1

    const-string v14, "com.google.android.gms.providerinstaller.ProviderInstallerImpl"

    .line 16
    invoke-static {v12, v13, v14}, Lcom/google/android/gms/security/ProviderInstaller;->zzb(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)V

    move-object v12, v3

    .line 17
    monitor-exit v12

    goto :goto_2

    :catchall_0
    move-exception v12

    move-object v1, v12

    move-object v12, v3

    .line 18
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v12, v1

    throw v12

    :catch_0
    move-exception v12

    move-object v2, v12

    :try_start_5
    const-string v12, "ProviderInstaller"

    move-object v8, v12

    const-string v12, "Failed to load providerinstaller module: "

    move-object v9, v12

    move-object v12, v2

    .line 6
    invoke-virtual {v12}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object v2, v12

    move-object v12, v2

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    move v10, v12

    move v12, v10

    if-eqz v12, :cond_4

    move-object v12, v9

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v2, v12

    :goto_3
    move-object v12, v8

    move-object v13, v2

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    const/4 v12, 0x0

    move-object v2, v12

    goto/16 :goto_0

    :catch_1
    move-exception v12

    move-object v2, v12

    const-string v12, "ProviderInstaller"

    move-object v9, v12

    const-string v12, "Failed to report request stats: "

    move-object v10, v12

    move-object v12, v2

    .line 11
    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object v2, v12

    move-object v12, v2

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    move v11, v12

    move v12, v11

    if-eqz v12, :cond_5

    move-object v12, v10

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v2, v12

    :goto_4
    move-object v12, v9

    move-object v13, v2

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    goto :goto_1

    :cond_3
    const-string v12, "ProviderInstaller"

    const-string v13, "Failed to get remote context"

    .line 14
    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    new-instance v12, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    move-object v1, v12

    move-object v12, v1

    const/16 v13, 0x8

    .line 15
    invoke-direct {v12, v13}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    move-object v12, v1

    throw v12

    :cond_4
    new-instance v12, Ljava/lang/String;

    move-object v2, v12

    move-object v12, v2

    move-object v13, v9

    .line 6
    invoke-direct {v12, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    new-instance v12, Ljava/lang/String;

    move-object v2, v12

    move-object v12, v2

    move-object v13, v10

    .line 11
    invoke-direct {v12, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4
.end method

.method public static installIfNeededAsync(Landroid/content/Context;Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;)V
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "Context must not be null"

    .line 1
    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v3, v1

    const-string v4, "Listener must not be null"

    .line 2
    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v3, "Must be called on the UI thread"

    .line 3
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    new-instance v3, Lcom/google/android/gms/security/zza;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/security/zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;)V

    move-object v3, v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    .line 5
    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;
    .locals 1

    sget-object v0, Lcom/google/android/gms/security/ProviderInstaller;->zza:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    return-object v0
.end method

.method private static zzb(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .annotation build Landroidx/annotation/GuardedBy;
        value = "ProviderInstaller.lock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    :try_start_0
    sget-object v3, Lcom/google/android/gms/security/ProviderInstaller;->zzc:Ljava/lang/reflect/Method;

    move-object v1, v3

    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    move-object v1, v3

    move-object v3, v1

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    move-object v3, v0

    move-object v4, v2

    const-string v5, "insertProvider"

    move-object v6, v1

    .line 1
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/gms/security/ProviderInstaller;->zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/security/ProviderInstaller;->zzc:Ljava/lang/reflect/Method;

    :cond_0
    sget-object v3, Lcom/google/android/gms/security/ProviderInstaller;->zzc:Ljava/lang/reflect/Method;

    move-object v1, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v2, v3

    move-object v3, v2

    const/4 v4, 0x0

    move-object v5, v0

    aput-object v5, v3, v4

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v2

    .line 2
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-void

    :catch_0
    move-exception v3

    move-object v0, v3

    move-object v3, v0

    .line 3
    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    move-object v1, v3

    const-string v3, "ProviderInstaller"

    const/4 v4, 0x6

    .line 4
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    if-nez v3, :cond_2

    move-object v3, v0

    .line 5
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    :goto_0
    move-object v3, v0

    .line 6
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    const-string v3, "Failed to install provider: "

    move-object v1, v3

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    :goto_1
    const-string v3, "ProviderInstaller"

    move-object v4, v0

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    :cond_1
    new-instance v3, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    move-object v0, v3

    move-object v3, v0

    const/16 v4, 0x8

    .line 7
    invoke-direct {v3, v4}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    move-object v3, v0

    throw v3

    :cond_2
    move-object v3, v1

    .line 5
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/String;

    move-object v0, v3

    move-object v3, v0

    move-object v4, v1

    .line 6
    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    .line 1
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v5, v2

    move-object v6, v3

    .line 2
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method
