.class public Lcom/google/android/gms/common/util/WorkSourceUtil;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static final zza:I

.field private static final zzb:Ljava/lang/reflect/Method;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final zzc:Ljava/lang/reflect/Method;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final zzd:Ljava/lang/reflect/Method;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final zze:Ljava/lang/reflect/Method;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final zzf:Ljava/lang/reflect/Method;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final zzg:Ljava/lang/reflect/Method;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final zzh:Ljava/lang/reflect/Method;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    sput v2, Lcom/google/android/gms/common/util/WorkSourceUtil;->zza:I

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    move-object v0, v2

    move-object v2, v0

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const-class v2, Landroid/os/WorkSource;

    const-string v3, "add"

    move-object v4, v0

    .line 2
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    :goto_0
    move-object v2, v0

    sput-object v2, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzb:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR2()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    :try_start_1
    new-array v2, v2, [Ljava/lang/Class;

    move-object v0, v2

    move-object v2, v0

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    move-object v2, v0

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const-class v2, Landroid/os/WorkSource;

    const-string v3, "add"

    move-object v4, v0

    .line 3
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    move-object v0, v2

    :goto_1
    move-object v2, v0

    sput-object v2, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzc:Ljava/lang/reflect/Method;

    :try_start_2
    const-class v2, Landroid/os/WorkSource;

    const-string v3, "size"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    .line 4
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    move-object v0, v2

    :goto_2
    move-object v2, v0

    sput-object v2, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzd:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    :try_start_3
    new-array v2, v2, [Ljava/lang/Class;

    move-object v0, v2

    move-object v2, v0

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const-class v2, Landroid/os/WorkSource;

    const-string v3, "get"

    move-object v4, v0

    .line 5
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    move-object v0, v2

    :goto_3
    move-object v2, v0

    sput-object v2, Lcom/google/android/gms/common/util/WorkSourceUtil;->zze:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR2()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :try_start_4
    new-array v2, v2, [Ljava/lang/Class;

    move-object v0, v2

    move-object v2, v0

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const-class v2, Landroid/os/WorkSource;

    const-string v3, "getName"

    move-object v4, v0

    .line 6
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v2

    move-object v0, v2

    :goto_4
    move-object v2, v0

    sput-object v2, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzf:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastP()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_5
    const-class v2, Landroid/os/WorkSource;

    const-string v3, "createWorkChain"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    .line 7
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v2

    move-object v0, v2

    :goto_5
    move-object v2, v0

    sput-object v2, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzg:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastP()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_6
    const-string v2, "android.os.WorkSource$WorkChain"

    .line 9
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v0, v2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    move-object v1, v2

    move-object v2, v1

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    move-object v2, v1

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    move-object v2, v0

    const-string v3, "addNode"

    move-object v4, v1

    .line 10
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v2

    move-object v0, v2

    :goto_6
    move-object v2, v0

    sput-object v2, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzh:Ljava/lang/reflect/Method;

    return-void

    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_6

    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_5

    :cond_2
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_4

    :cond_3
    const/4 v2, 0x0

    move-object v0, v2

    goto/16 :goto_1

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    move-object v0, v2

    goto/16 :goto_0

    :catch_1
    move-exception v2

    const/4 v2, 0x0

    move-object v0, v2

    goto/16 :goto_1

    :catch_2
    move-exception v2

    const/4 v2, 0x0

    move-object v0, v2

    goto/16 :goto_2

    :catch_3
    move-exception v2

    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_3

    :catch_4
    move-exception v2

    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_4

    :catch_5
    move-exception v2

    move-object v0, v2

    const-string v2, "WorkSourceUtil"

    const-string v3, "Missing WorkChain API createWorkChain"

    move-object v4, v0

    .line 8
    invoke-static {v2, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_5

    :catch_6
    move-exception v2

    move-object v0, v2

    const-string v2, "WorkSourceUtil"

    const-string v3, "Missing WorkChain class"

    move-object v4, v0

    .line 11
    invoke-static {v2, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_6
.end method

.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/os/WorkSource;
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    if-eqz v3, :cond_2

    move-object v3, v0

    .line 1
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v3, v1

    if-eqz v3, :cond_2

    move-object v3, v0

    .line 2
    :try_start_0
    invoke-static {v3}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v3

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    move-object v3, v0

    if-nez v3, :cond_1

    const-string v3, "Could not get applicationInfo from package: "

    move-object v0, v3

    move-object v3, v1

    .line 4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    :goto_0
    const-string v3, "WorkSourceUtil"

    move-object v4, v0

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v3, 0x0

    move-object v0, v3

    .line 7
    :goto_1
    return-object v0

    .line 4
    :cond_0
    new-instance v3, Ljava/lang/String;

    move-object v1, v3

    move-object v3, v1

    move-object v4, v0

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    move-object v0, v3

    goto :goto_0

    :cond_1
    move-object v3, v0

    .line 5
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move v0, v3

    .line 6
    new-instance v3, Landroid/os/WorkSource;

    move-object v2, v3

    move-object v3, v2

    invoke-direct {v3}, Landroid/os/WorkSource;-><init>()V

    move-object v3, v2

    move v4, v0

    move-object v5, v1

    .line 7
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/common/util/WorkSourceUtil;->zza(Landroid/os/WorkSource;ILjava/lang/String;)V

    move-object v3, v2

    move-object v0, v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1

    .line 3
    :catch_0
    move-exception v3

    const-string v3, "Could not find package: "

    move-object v0, v3

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    :goto_2
    const-string v3, "WorkSourceUtil"

    move-object v4, v0

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/String;

    move-object v1, v3

    move-object v3, v1

    move-object v4, v0

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    move-object v0, v3

    goto :goto_2
.end method

.method public static fromPackageAndModuleExperimentalPi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/WorkSource;
    .locals 10
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v0

    if-eqz v7, :cond_0

    move-object v7, v0

    .line 1
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object v7, v2

    if-eqz v7, :cond_0

    move-object v7, v1

    if-nez v7, :cond_1

    :cond_0
    const-string v7, "WorkSourceUtil"

    const-string v8, "Unexpected null arguments"

    .line 2
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v7, 0x0

    move-object v0, v7

    .line 8
    :goto_0
    return-object v0

    .line 2
    :cond_1
    move-object v7, v0

    .line 3
    :try_start_0
    invoke-static {v7}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v7

    move-object v8, v1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move-object v0, v7

    move-object v7, v0

    if-nez v7, :cond_7

    const-string v7, "Could not get applicationInfo from package: "

    move-object v0, v7

    move-object v7, v1

    .line 5
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    :goto_1
    const-string v7, "WorkSourceUtil"

    move-object v8, v0

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v7, -0x1

    move v0, v7

    :goto_2
    move v7, v0

    if-gez v7, :cond_2

    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0

    .line 7
    :cond_2
    new-instance v7, Landroid/os/WorkSource;

    move-object v3, v7

    move-object v7, v3

    invoke-direct {v7}, Landroid/os/WorkSource;-><init>()V

    sget-object v7, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzg:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_3

    sget-object v7, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzh:Ljava/lang/reflect/Method;

    if-nez v7, :cond_4

    :cond_3
    move-object v7, v3

    move v8, v0

    move-object v9, v1

    .line 8
    invoke-static {v7, v8, v9}, Lcom/google/android/gms/common/util/WorkSourceUtil;->zza(Landroid/os/WorkSource;ILjava/lang/String;)V

    :goto_3
    move-object v7, v3

    move-object v0, v7

    goto :goto_0

    :cond_4
    :try_start_1
    sget-object v7, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzg:Ljava/lang/reflect/Method;

    move-object v8, v3

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    sget v7, Lcom/google/android/gms/common/util/WorkSourceUtil;->zza:I

    move v5, v7

    move v7, v0

    move v8, v5

    if-eq v7, v8, :cond_5

    sget-object v7, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzh:Ljava/lang/reflect/Method;

    move-object v5, v7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v6, v7

    move-object v7, v6

    const/4 v8, 0x0

    move v9, v0

    .line 10
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v7, v6

    const/4 v8, 0x1

    move-object v9, v1

    aput-object v9, v7, v8

    move-object v7, v5

    move-object v8, v4

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :cond_5
    sget-object v7, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzh:Ljava/lang/reflect/Method;

    move-object v0, v7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v1, v7

    move-object v7, v1

    const/4 v8, 0x0

    sget v9, Lcom/google/android/gms/common/util/WorkSourceUtil;->zza:I

    .line 11
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v7, v1

    const/4 v8, 0x1

    move-object v9, v2

    aput-object v9, v7, v8

    move-object v7, v0

    move-object v8, v4

    move-object v9, v1

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    goto :goto_3

    :cond_6
    new-instance v7, Ljava/lang/String;

    move-object v3, v7

    move-object v7, v3

    move-object v8, v0

    .line 5
    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v7, v3

    move-object v0, v7

    goto :goto_1

    :cond_7
    move-object v7, v0

    .line 6
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move v0, v7

    goto :goto_2

    .line 4
    :catch_0
    move-exception v7

    const-string v7, "Could not find package: "

    move-object v0, v7

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_8

    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    :goto_4
    const-string v7, "WorkSourceUtil"

    move-object v8, v0

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v7, -0x1

    move v0, v7

    goto/16 :goto_2

    :catch_1
    move-exception v7

    move-object v0, v7

    const-string v7, "WorkSourceUtil"

    const-string v8, "Unable to assign chained blame through WorkSource"

    move-object v9, v0

    .line 12
    invoke-static {v7, v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v7

    goto/16 :goto_3

    :cond_8
    new-instance v7, Ljava/lang/String;

    move-object v3, v7

    move-object v7, v3

    move-object v8, v0

    .line 4
    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v7, v3

    move-object v0, v7

    goto :goto_4
.end method

.method public static getNames(Landroid/os/WorkSource;)Ljava/util/List;
    .locals 9
    .param p0    # Landroid/os/WorkSource;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/WorkSource;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    new-instance v6, Ljava/util/ArrayList;

    move-object v4, v6

    move-object v6, v4

    .line 1
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    if-nez v6, :cond_4

    const/4 v6, 0x0

    move v1, v6

    :goto_0
    move v6, v1

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    move v2, v6

    :goto_1
    move v6, v2

    move v7, v1

    if-ge v6, v7, :cond_2

    sget-object v6, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzf:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_1

    :try_start_0
    sget-object v6, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzf:Ljava/lang/reflect/Method;

    move-object v3, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v5, v6

    move-object v6, v5

    const/4 v7, 0x0

    move v8, v2

    .line 4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v6, v3

    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v6

    :goto_2
    move-object v6, v3

    .line 6
    invoke-static {v6}, Lcom/google/android/gms/common/util/Strings;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v3

    .line 7
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v6, v4

    move-object v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    move-object v3, v6

    goto :goto_2

    :cond_2
    move-object v6, v4

    move-object v0, v6

    :goto_3
    return-object v0

    :cond_3
    move-object v6, v4

    move-object v0, v6

    goto :goto_3

    :cond_4
    sget-object v6, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzd:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_5

    :try_start_1
    sget-object v6, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzd:Ljava/lang/reflect/Method;

    move-object v7, v0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    .line 2
    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    move-object v6, v1

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v6, v1

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    move v1, v6

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    move v1, v6

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v3, v6

    const-string v6, "WorkSourceUtil"

    const-string v7, "Unable to assign blame through WorkSource"

    move-object v8, v3

    .line 5
    invoke-static {v6, v7, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    const/4 v6, 0x0

    move-object v3, v6

    goto :goto_2

    :catch_1
    move-exception v6

    move-object v1, v6

    const-string v6, "WorkSourceUtil"

    const-string v7, "Unable to assign blame through WorkSource"

    move-object v8, v1

    .line 3
    invoke-static {v6, v7, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    const/4 v6, 0x0

    move v1, v6

    goto :goto_0
.end method

.method public static hasWorkSourcePermission(Landroid/content/Context;)Z
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 3
    :goto_0
    return v0

    .line 4294967295
    :cond_0
    move-object v1, v0

    .line 1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v1

    const-string v2, "android.permission.UPDATE_DEVICE_STATS"

    move-object v3, v0

    .line 3
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static zza(Landroid/os/WorkSource;ILjava/lang/String;)V
    .locals 8
    .param p0    # Landroid/os/WorkSource;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    sget-object v5, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzc:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_0

    :try_start_0
    sget-object v5, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzc:Ljava/lang/reflect/Method;

    move-object v3, v5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v4, v5

    move-object v5, v4

    const/4 v6, 0x0

    move v7, v1

    .line 1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v5, v4

    const/4 v6, 0x1

    move-object v7, v2

    aput-object v7, v5, v6

    move-object v5, v3

    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 4
    :goto_0
    return-void

    .line 1
    :cond_0
    sget-object v5, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzb:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_1

    :try_start_1
    sget-object v5, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzb:Ljava/lang/reflect/Method;

    move-object v2, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v3, v5

    move-object v5, v3

    const/4 v6, 0x0

    move v7, v1

    .line 3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v5, v2

    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    goto :goto_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v5

    move-object v0, v5

    const-string v5, "WorkSourceUtil"

    const-string v6, "Unable to assign blame through WorkSource"

    move-object v7, v0

    .line 2
    invoke-static {v5, v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    goto :goto_0

    :catch_1
    move-exception v5

    move-object v0, v5

    const-string v5, "WorkSourceUtil"

    const-string v6, "Unable to assign blame through WorkSource"

    move-object v7, v0

    .line 4
    invoke-static {v5, v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    goto :goto_0
.end method
