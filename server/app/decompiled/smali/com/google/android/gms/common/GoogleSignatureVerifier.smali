.class public Lcom/google/android/gms/common/GoogleSignatureVerifier;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field private static zza:Lcom/google/android/gms/common/GoogleSignatureVerifier;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final zzb:Landroid/content/Context;

.field private volatile zzc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    .line 1
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzb:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/GoogleSignatureVerifier;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v3, v0

    .line 1
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-class v3, Lcom/google/android/gms/common/GoogleSignatureVerifier;

    move-object v1, v3

    move-object v3, v1

    monitor-enter v3

    :try_start_0
    sget-object v3, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    move-object v2, v3

    move-object v3, v2

    if-nez v3, :cond_0

    move-object v3, v0

    .line 2
    invoke-static {v3}, Lcom/google/android/gms/common/zzm;->zza(Landroid/content/Context;)V

    new-instance v3, Lcom/google/android/gms/common/GoogleSignatureVerifier;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v0

    .line 3
    invoke-direct {v3, v4}, Lcom/google/android/gms/common/GoogleSignatureVerifier;-><init>(Landroid/content/Context;)V

    move-object v3, v2

    sput-object v3, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    :cond_0
    move-object v3, v1

    .line 4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v3, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    move-object v0, v3

    return-object v0

    :catchall_0
    move-exception v3

    move-object v0, v3

    move-object v3, v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v0

    throw v3
.end method

.method static final varargs zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzi;)Lcom/google/android/gms/common/zzi;
    .locals 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    .line 1
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    .line 7
    :goto_0
    return-object v0

    .line 1
    :cond_0
    move-object v3, v0

    .line 2
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const-string v3, "GoogleSignatureVerifier"

    const-string v4, "Package has more than one signature."

    .line 3
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/google/android/gms/common/zzj;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v0

    .line 4
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/zzj;-><init>([B)V

    const/4 v3, 0x0

    move v0, v3

    :goto_1
    move v3, v0

    move-object v4, v1

    .line 5
    array-length v4, v4

    if-ge v3, v4, :cond_3

    move-object v3, v1

    move v4, v0

    .line 6
    aget-object v3, v3, v4

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/zzi;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    move v4, v0

    .line 7
    aget-object v3, v3, v4

    move-object v0, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public static final zzb(Landroid/content/pm/PackageInfo;Z)Z
    .locals 6
    .param p0    # Landroid/content/pm/PackageInfo;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 1
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_1

    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 2
    sget-object v3, Lcom/google/android/gms/common/zzl;->zza:[Lcom/google/android/gms/common/zzi;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzi;)Lcom/google/android/gms/common/zzi;

    move-result-object v2

    move-object v0, v2

    :goto_0
    move-object v2, v0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move v0, v2

    .line 3
    :goto_1
    return v0

    .line 2
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/common/zzi;

    move-object v1, v2

    move-object v2, v1

    const/4 v3, 0x0

    .line 3
    sget-object v4, Lcom/google/android/gms/common/zzl;->zza:[Lcom/google/android/gms/common/zzi;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzi;)Lcom/google/android/gms/common/zzi;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method private final zzc(Ljava/lang/String;ZZ)Lcom/google/android/gms/common/zzw;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PackageManagerGetSignatures"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, v1

    if-nez v6, :cond_0

    const-string v6, "null pkg"

    invoke-static {v6}, Lcom/google/android/gms/common/zzw;->zzd(Ljava/lang/String;)Lcom/google/android/gms/common/zzw;

    move-result-object v6

    move-object v0, v6

    .line 14
    :goto_0
    return-object v0

    .line 4294967295
    :cond_0
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzc:Ljava/lang/String;

    .line 1
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/zzm;->zzd()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzb:Landroid/content/Context;

    .line 3
    invoke-static {v7}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 4
    invoke-static {v6, v7, v8, v9}, Lcom/google/android/gms/common/zzm;->zzb(Ljava/lang/String;ZZZ)Lcom/google/android/gms/common/zzw;

    move-result-object v6

    move-object v2, v6

    :goto_1
    move-object v6, v2

    iget-boolean v6, v6, Lcom/google/android/gms/common/zzw;->zza:Z

    if-eqz v6, :cond_1

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzc:Ljava/lang/String;

    :cond_1
    move-object v6, v2

    move-object v0, v6

    goto :goto_0

    :cond_2
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzb:Landroid/content/Context;

    .line 5
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    move-object v7, v1

    const/16 v8, 0x40

    .line 6
    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v2, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzb:Landroid/content/Context;

    .line 8
    invoke-static {v6}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result v6

    move v3, v6

    move-object v6, v2

    if-nez v6, :cond_3

    const-string v6, "null pkg"

    invoke-static {v6}, Lcom/google/android/gms/common/zzw;->zzd(Ljava/lang/String;)Lcom/google/android/gms/common/zzw;

    move-result-object v6

    move-object v2, v6

    goto :goto_1

    :cond_3
    move-object v6, v2

    .line 9
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v6, :cond_4

    move-object v6, v2

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    :cond_4
    const-string v6, "single cert required"

    invoke-static {v6}, Lcom/google/android/gms/common/zzw;->zzd(Ljava/lang/String;)Lcom/google/android/gms/common/zzw;

    move-result-object v6

    move-object v2, v6

    goto :goto_1

    :cond_5
    new-instance v6, Lcom/google/android/gms/common/zzj;

    move-object v4, v6

    move-object v6, v4

    move-object v7, v2

    .line 10
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/gms/common/zzj;-><init>([B)V

    move-object v6, v2

    .line 11
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object v5, v6

    move-object v6, v5

    move-object v7, v4

    move v8, v3

    const/4 v9, 0x0

    .line 12
    invoke-static {v6, v7, v8, v9}, Lcom/google/android/gms/common/zzm;->zzc(Ljava/lang/String;Lcom/google/android/gms/common/zzi;ZZ)Lcom/google/android/gms/common/zzw;

    move-result-object v6

    move-object v3, v6

    move-object v6, v3

    iget-boolean v6, v6, Lcom/google/android/gms/common/zzw;->zza:Z

    if-eqz v6, :cond_9

    move-object v6, v2

    .line 13
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_8

    move-object v6, v2

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v7, 0x2

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_7

    move-object v6, v5

    move-object v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 14
    invoke-static {v6, v7, v8, v9}, Lcom/google/android/gms/common/zzm;->zzc(Ljava/lang/String;Lcom/google/android/gms/common/zzi;ZZ)Lcom/google/android/gms/common/zzw;

    move-result-object v6

    iget-boolean v6, v6, Lcom/google/android/gms/common/zzw;->zza:Z

    if-eqz v6, :cond_6

    const-string v6, "debuggable release cert app rejected"

    invoke-static {v6}, Lcom/google/android/gms/common/zzw;->zzd(Ljava/lang/String;)Lcom/google/android/gms/common/zzw;

    move-result-object v6

    move-object v2, v6

    goto/16 :goto_1

    :cond_6
    move-object v6, v3

    move-object v2, v6

    goto/16 :goto_1

    :cond_7
    move-object v6, v3

    move-object v2, v6

    goto/16 :goto_1

    :cond_8
    move-object v6, v3

    move-object v2, v6

    goto/16 :goto_1

    :cond_9
    move-object v6, v3

    move-object v2, v6

    goto/16 :goto_1

    :cond_a
    invoke-static {}, Lcom/google/android/gms/common/zzw;->zzb()Lcom/google/android/gms/common/zzw;

    move-result-object v6

    move-object v0, v6

    goto/16 :goto_0

    :catch_0
    move-exception v6

    move-object v2, v6

    const-string v6, "no pkg "

    move-object v0, v6

    move-object v6, v1

    .line 7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_b

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    :goto_2
    move-object v6, v0

    move-object v7, v2

    invoke-static {v6, v7}, Lcom/google/android/gms/common/zzw;->zze(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/zzw;

    move-result-object v6

    move-object v0, v6

    goto/16 :goto_0

    :cond_b
    new-instance v6, Ljava/lang/String;

    move-object v1, v6

    move-object v6, v1

    move-object v7, v0

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    move-object v0, v6

    goto :goto_2
.end method


# virtual methods
.method public isGooglePublicSignedPackage(Landroid/content/pm/PackageInfo;)Z
    .locals 4
    .param p1    # Landroid/content/pm/PackageInfo;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move v0, v2

    .line 4
    :goto_0
    return v0

    .line 4294967295
    :cond_0
    move-object v2, v1

    const/4 v3, 0x0

    .line 1
    invoke-static {v2, v3}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzb(Landroid/content/pm/PackageInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    const/4 v3, 0x1

    .line 2
    invoke-static {v2, v3}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzb(Landroid/content/pm/PackageInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzb:Landroid/content/Context;

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    :cond_2
    const-string v2, "GoogleSignatureVerifier"

    const-string v3, "Test-keys aren\'t accepted on this build."

    .line 4
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :cond_3
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public isPackageGoogleSigned(Ljava/lang/String;)Z
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1
    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzc(Ljava/lang/String;ZZ)Lcom/google/android/gms/common/zzw;

    move-result-object v2

    move-object v0, v2

    move-object v2, v0

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/common/zzw;->zzf()V

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/gms/common/zzw;->zza:Z

    move v0, v2

    return v0
.end method

.method public isUidGoogleSigned(I)Z
    .locals 9
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzb:Landroid/content/Context;

    .line 1
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    array-length v5, v5

    move v4, v5

    move v5, v4

    if-nez v5, :cond_1

    :cond_0
    const-string v5, "no pkgs"

    invoke-static {v5}, Lcom/google/android/gms/common/zzw;->zzd(Ljava/lang/String;)Lcom/google/android/gms/common/zzw;

    move-result-object v5

    move-object v0, v5

    :goto_0
    move-object v5, v0

    .line 5
    invoke-virtual {v5}, Lcom/google/android/gms/common/zzw;->zzf()V

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/android/gms/common/zzw;->zza:Z

    move v0, v5

    return v0

    :cond_1
    const/4 v5, 0x0

    move-object v1, v5

    const/4 v5, 0x0

    move v2, v5

    :goto_1
    move v5, v2

    move v6, v4

    if-ge v5, v6, :cond_3

    move-object v5, v0

    move-object v6, v3

    move v7, v2

    .line 2
    aget-object v6, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 3
    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzc(Ljava/lang/String;ZZ)Lcom/google/android/gms/common/zzw;

    move-result-object v5

    move-object v1, v5

    move-object v5, v1

    iget-boolean v5, v5, Lcom/google/android/gms/common/zzw;->zza:Z

    if-eqz v5, :cond_2

    move-object v5, v1

    move-object v0, v5

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move-object v5, v1

    .line 4
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v5, v1

    move-object v0, v5

    goto :goto_0
.end method
