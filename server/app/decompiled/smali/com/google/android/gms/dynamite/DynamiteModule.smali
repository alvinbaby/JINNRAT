.class public final Lcom/google/android/gms/dynamite/DynamiteModule;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;,
        Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;,
        Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    }
.end annotation


# static fields
.field public static final PREFER_HIGHEST_OR_LOCAL_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final PREFER_HIGHEST_OR_REMOTE_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final PREFER_LOCAL:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final PREFER_REMOTE_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final zza:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field private static zzb:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "DynamiteModule.class"
    .end annotation
.end field

.field private static zzc:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "DynamiteModule.class"
    .end annotation
.end field

.field private static zzd:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "DynamiteModule.class"
    .end annotation
.end field

.field private static final zze:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/google/android/gms/dynamite/zzk;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzf:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzg:Lcom/google/android/gms/dynamite/zzm;

.field private static zzi:Lcom/google/android/gms/dynamite/zzo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "DynamiteModule.class"
    .end annotation
.end field

.field private static zzj:Lcom/google/android/gms/dynamite/zzp;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "DynamiteModule.class"
    .end annotation
.end field


# instance fields
.field private final zzh:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    sput v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd:I

    new-instance v1, Ljava/lang/ThreadLocal;

    move-object v0, v1

    move-object v1, v0

    .line 1
    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zze:Ljava/lang/ThreadLocal;

    new-instance v1, Lcom/google/android/gms/dynamite/zzb;

    move-object v0, v1

    move-object v1, v0

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/dynamite/zzb;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/ThreadLocal;

    new-instance v1, Lcom/google/android/gms/dynamite/zzc;

    move-object v0, v1

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/gms/dynamite/zzc;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Lcom/google/android/gms/dynamite/zzm;

    new-instance v1, Lcom/google/android/gms/dynamite/zzd;

    move-object v0, v1

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/gms/dynamite/zzd;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v1, Lcom/google/android/gms/dynamite/zze;

    move-object v0, v1

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/gms/dynamite/zze;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_LOCAL:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v1, Lcom/google/android/gms/dynamite/zzf;

    move-object v0, v1

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/gms/dynamite/zzf;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v1, Lcom/google/android/gms/dynamite/zzg;

    move-object v0, v1

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/gms/dynamite/zzg;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v1, Lcom/google/android/gms/dynamite/zzh;

    move-object v0, v1

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/gms/dynamite/zzh;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v1, Lcom/google/android/gms/dynamite/zzi;

    move-object v0, v1

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/gms/dynamite/zzi;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_REMOTE_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v1, Lcom/google/android/gms/dynamite/zzj;

    move-object v0, v1

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/gms/dynamite/zzj;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zza:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v1

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Landroid/content/Context;

    return-void
.end method

.method public static getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    .line 1
    :try_start_0
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 2
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object v0, v5

    move-object v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v5

    add-int/lit8 v2, v2, 0x3d

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v3, v5

    move-object v5, v3

    move v6, v2

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v5, v3

    const-string v6, "com.google.android.gms.dynamite.descriptors."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v3

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v3

    const-string v6, "ModuleDescriptor"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3
    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v0, v5

    move-object v5, v0

    const-string v6, "MODULE_ID"

    .line 4
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    move-object v2, v5

    move-object v5, v0

    const-string v6, "MODULE_VERSION"

    .line 5
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    move-object v0, v5

    move-object v5, v2

    const/4 v6, 0x0

    .line 6
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    move v3, v5

    move v5, v3

    if-nez v5, :cond_0

    const-string v5, "DynamiteModule"

    move-object v0, v5

    move-object v5, v2

    const/4 v6, 0x0

    .line 7
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v5

    add-int/lit8 v3, v3, 0x33

    move-object v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v5

    move v5, v3

    move v6, v4

    add-int/2addr v5, v6

    move v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v4, v5

    move-object v5, v4

    move v6, v3

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v5, v4

    const-string v6, "Module descriptor id \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v4

    const-string v6, "\' didn\'t match expected id \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v4

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v5, 0x0

    move v0, v5

    .line 11
    :goto_0
    return v0

    .line 8
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    .line 9
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    move v0, v5

    move v5, v0

    move v0, v5

    goto :goto_0

    .line 11
    :catch_0
    move-exception v5

    move-object v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v0, v5

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v2, v5

    move-object v5, v2

    move v6, v0

    const/16 v7, 0x2d

    add-int/lit8 v6, v6, 0x2d

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v5, v2

    const-string v6, "Local module descriptor class for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v2

    const-string v6, " not found."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v5, "DynamiteModule"

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    :goto_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    :catch_1
    move-exception v5

    move-object v0, v5

    move-object v5, v0

    .line 10
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    const-string v5, "Failed to load module descriptor class: "

    move-object v1, v5

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    :goto_2
    const-string v5, "DynamiteModule"

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/String;

    move-object v0, v5

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    .line 1
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public static load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    .locals 21
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .prologue
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    sget-object v16, Lcom/google/android/gms/dynamite/DynamiteModule;->zze:Ljava/lang/ThreadLocal;

    .line 1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/gms/dynamite/zzk;

    move-object/from16 v6, v16

    new-instance v16, Lcom/google/android/gms/dynamite/zzk;

    move-object/from16 v7, v16

    move-object/from16 v16, v7

    const/16 v17, 0x0

    invoke-direct/range {v16 .. v17}, Lcom/google/android/gms/dynamite/zzk;-><init>(Lcom/google/android/gms/dynamite/zzb;)V

    sget-object v16, Lcom/google/android/gms/dynamite/DynamiteModule;->zze:Ljava/lang/ThreadLocal;

    move-object/from16 v17, v7

    .line 2
    invoke-virtual/range {v16 .. v17}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v16, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v8, v16

    :try_start_0
    sget-object v16, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/ThreadLocal;

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object/from16 v16, v3

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    sget-object v19, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Lcom/google/android/gms/dynamite/zzm;

    .line 5
    invoke-interface/range {v16 .. v19}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/zzm;)Lcom/google/android/gms/dynamite/zzn;

    move-result-object v16

    move-object/from16 v10, v16

    const-string v16, "DynamiteModule"

    move-object/from16 v5, v16

    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/gms/dynamite/zzn;->zza:I

    move/from16 v16, v0

    move/from16 v11, v16

    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/gms/dynamite/zzn;->zzb:I

    move/from16 v16, v0

    move/from16 v12, v16

    move-object/from16 v16, v4

    .line 6
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v13, v16

    add-int/lit8 v13, v13, 0x44

    move-object/from16 v16, v4

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v14, v16

    move/from16 v16, v13

    move/from16 v17, v14

    add-int v16, v16, v17

    move/from16 v13, v16

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v14, v16

    move-object/from16 v16, v14

    move/from16 v17, v13

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v16, v14

    const-string v17, "Considering local module "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v16, v14

    move-object/from16 v17, v4

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v16, v14

    const-string v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v16, v14

    move/from16 v17, v11

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v16, v14

    const-string v17, " and remote module "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v16, v14

    move-object/from16 v17, v4

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v16, v14

    const-string v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v16, v14

    move/from16 v17, v12

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v16, v5

    move-object/from16 v17, v14

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/gms/dynamite/zzn;->zzc:I

    move/from16 v16, v0

    move/from16 v5, v16

    move/from16 v16, v5

    if-eqz v16, :cond_16

    move/from16 v16, v5

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/gms/dynamite/zzn;->zza:I

    move/from16 v16, v0

    move/from16 v11, v16

    move/from16 v16, v11

    if-eqz v16, :cond_16

    :cond_0
    move/from16 v16, v5

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/gms/dynamite/zzn;->zzb:I

    move/from16 v16, v0

    move/from16 v11, v16

    move/from16 v16, v11

    if-eqz v16, :cond_16

    :cond_1
    move/from16 v16, v5

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .line 61
    invoke-static/range {v16 .. v17}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v16

    move-object/from16 v2, v16

    move-wide/from16 v16, v8

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_3

    sget-object v16, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/ThreadLocal;

    .line 57
    invoke-virtual/range {v16 .. v16}, Ljava/lang/ThreadLocal;->remove()V

    :goto_0
    move-object/from16 v16, v7

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/gms/dynamite/zzk;->zza:Landroid/database/Cursor;

    move-object/from16 v16, v0

    move-object/from16 v3, v16

    move-object/from16 v16, v3

    if-eqz v16, :cond_2

    move-object/from16 v16, v3

    .line 59
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_2
    sget-object v16, Lcom/google/android/gms/dynamite/DynamiteModule;->zze:Ljava/lang/ThreadLocal;

    move-object/from16 v17, v6

    .line 60
    invoke-virtual/range {v16 .. v17}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object/from16 v16, v2

    move-object/from16 v2, v16

    :goto_1
    return-object v2

    :cond_3
    sget-object v16, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/ThreadLocal;

    move-wide/from16 v17, v8

    .line 58
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    move/from16 v16, v5

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_17

    move-object/from16 v16, v10

    :try_start_1
    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/gms/dynamite/zzn;->zzb:I

    move/from16 v16, v0
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v11, v16

    :try_start_2
    const-class v16, Lcom/google/android/gms/dynamite/DynamiteModule;

    move-object/from16 v5, v16

    move-object/from16 v16, v5

    monitor-enter v16
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    sget-object v16, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb:Ljava/lang/Boolean;

    move-object/from16 v12, v16

    move-object/from16 v16, v5

    .line 8
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v16, v12

    if-nez v16, :cond_6

    :try_start_4
    new-instance v16, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    move-object/from16 v5, v16

    move-object/from16 v16, v5

    const-string v17, "Failed to determine which loading route to use."

    const/16 v18, 0x0

    .line 9
    invoke-direct/range {v16 .. v18}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzb;)V

    move-object/from16 v16, v5

    throw v16
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 60
    :catch_0
    move-exception v16

    move-object/from16 v5, v16

    :try_start_5
    new-instance v16, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    move-object/from16 v11, v16

    move-object/from16 v16, v11

    const-string v17, "Failed to load remote module."

    move-object/from16 v18, v5

    const/16 v19, 0x0

    .line 51
    invoke-direct/range {v16 .. v19}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzb;)V

    move-object/from16 v16, v11

    throw v16
    :try_end_5
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 7
    :catch_1
    move-exception v16

    move-object/from16 v11, v16

    :try_start_6
    const-string v16, "DynamiteModule"

    move-object/from16 v12, v16

    const-string v16, "Failed to load remote module: "

    move-object/from16 v5, v16

    move-object/from16 v16, v11

    .line 52
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v13, v16

    move-object/from16 v16, v13

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v14, v16

    move/from16 v16, v14

    if-eqz v16, :cond_19

    move-object/from16 v16, v5

    move-object/from16 v17, v13

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v5, v16

    :goto_2
    move-object/from16 v16, v12

    move-object/from16 v17, v5

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/gms/dynamite/zzn;->zza:I

    move/from16 v16, v0

    move/from16 v5, v16

    move/from16 v16, v5

    if-eqz v16, :cond_1a

    new-instance v16, Lcom/google/android/gms/dynamite/zzl;

    move-object/from16 v10, v16

    move-object/from16 v16, v10

    move/from16 v17, v5

    const/16 v18, 0x0

    .line 53
    invoke-direct/range {v16 .. v18}, Lcom/google/android/gms/dynamite/zzl;-><init>(II)V

    move-object/from16 v16, v3

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v10

    .line 54
    invoke-interface/range {v16 .. v19}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/zzm;)Lcom/google/android/gms/dynamite/zzn;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/gms/dynamite/zzn;->zzc:I

    move/from16 v16, v0

    move/from16 v3, v16

    move/from16 v16, v3

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1a

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .line 56
    invoke-static/range {v16 .. v17}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v16

    move-object/from16 v2, v16

    move-wide/from16 v16, v8

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_1b

    sget-object v16, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/ThreadLocal;

    .line 57
    invoke-virtual/range {v16 .. v16}, Ljava/lang/ThreadLocal;->remove()V

    :goto_3
    move-object/from16 v16, v7

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/gms/dynamite/zzk;->zza:Landroid/database/Cursor;

    move-object/from16 v16, v0

    move-object/from16 v3, v16

    move-object/from16 v16, v3

    if-eqz v16, :cond_5

    move-object/from16 v16, v3

    .line 59
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_5
    sget-object v16, Lcom/google/android/gms/dynamite/DynamiteModule;->zze:Ljava/lang/ThreadLocal;

    move-object/from16 v17, v6

    .line 60
    invoke-virtual/range {v16 .. v17}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object/from16 v16, v2

    move-object/from16 v2, v16

    goto/16 :goto_1

    .line 9
    :cond_6
    move-object/from16 v16, v12

    .line 10
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    move/from16 v5, v16

    move/from16 v16, v5

    if-eqz v16, :cond_10

    const-string v16, "DynamiteModule"

    move-object/from16 v5, v16

    move-object/from16 v16, v4

    .line 27
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v12, v16

    add-int/lit8 v12, v12, 0x33

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v13, v16

    move-object/from16 v16, v13

    move/from16 v17, v12

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v16, v13

    const-string v17, "Selected remote version of "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v16, v13

    move-object/from16 v17, v4

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v16, v13

    const-string v17, ", version >= "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v16, v13

    move/from16 v17, v11

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v16, v5

    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    const-class v16, Lcom/google/android/gms/dynamite/DynamiteModule;

    move-object/from16 v5, v16

    move-object/from16 v16, v5

    monitor-enter v16
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    sget-object v16, Lcom/google/android/gms/dynamite/DynamiteModule;->zzj:Lcom/google/android/gms/dynamite/zzp;

    move-object/from16 v12, v16

    move-object/from16 v16, v5

    .line 28
    monitor-exit v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v16, v12

    if-nez v16, :cond_8

    :try_start_9
    new-instance v16, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    move-object/from16 v5, v16

    move-object/from16 v16, v5

    const-string v17, "DynamiteLoaderV2 was not cached."

    const/16 v18, 0x0

    .line 29
    invoke-direct/range {v16 .. v18}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzb;)V

    move-object/from16 v16, v5

    throw v16
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 51
    :catch_2
    move-exception v16

    move-object/from16 v5, v16

    move-object/from16 v16, v5

    .line 50
    :try_start_a
    throw v16
    :try_end_a
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 23
    :catchall_0
    move-exception v16

    move-object/from16 v2, v16

    move-wide/from16 v16, v8

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_18

    sget-object v16, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/ThreadLocal;

    .line 57
    invoke-virtual/range {v16 .. v16}, Ljava/lang/ThreadLocal;->remove()V

    :goto_4
    move-object/from16 v16, v7

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/gms/dynamite/zzk;->zza:Landroid/database/Cursor;

    move-object/from16 v16, v0

    move-object/from16 v3, v16

    move-object/from16 v16, v3

    if-eqz v16, :cond_7

    move-object/from16 v16, v3

    .line 59
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_7
    sget-object v16, Lcom/google/android/gms/dynamite/DynamiteModule;->zze:Ljava/lang/ThreadLocal;

    move-object/from16 v17, v6

    .line 60
    invoke-virtual/range {v16 .. v17}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object/from16 v16, v2

    .line 63
    throw v16

    .line 29
    :cond_8
    :try_start_b
    sget-object v16, Lcom/google/android/gms/dynamite/DynamiteModule;->zze:Ljava/lang/ThreadLocal;

    .line 30
    invoke-virtual/range {v16 .. v16}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/gms/dynamite/zzk;

    move-object/from16 v5, v16

    move-object/from16 v16, v5

    if-eqz v16, :cond_9

    move-object/from16 v16, v5

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/gms/dynamite/zzk;->zza:Landroid/database/Cursor;

    move-object/from16 v16, v0

    move-object/from16 v13, v16

    move-object/from16 v16, v13

    if-nez v16, :cond_a

    :cond_9
    new-instance v16, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    move-object/from16 v5, v16

    move-object/from16 v16, v5

    const-string v17, "No result cursor"

    const/16 v18, 0x0

    .line 31
    invoke-direct/range {v16 .. v18}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzb;)V

    move-object/from16 v16, v5

    throw v16
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 50
    :catchall_1
    move-exception v16

    move-object/from16 v5, v16

    move-object/from16 v16, v2

    move-object/from16 v17, v5

    .line 48
    :try_start_c
    invoke-static/range {v16 .. v17}, Lcom/google/android/gms/common/util/CrashUtils;->addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z

    move-result v16

    new-instance v16, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    move-object/from16 v11, v16

    move-object/from16 v16, v11

    const-string v17, "Failed to load remote module."

    move-object/from16 v18, v5

    const/16 v19, 0x0

    .line 49
    invoke-direct/range {v16 .. v19}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzb;)V

    move-object/from16 v16, v11

    throw v16
    :try_end_c
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 31
    :cond_a
    move-object/from16 v16, v2

    .line 32
    :try_start_d
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v13, v16

    move-object/from16 v16, v5

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/gms/dynamite/zzk;->zza:Landroid/database/Cursor;

    move-object/from16 v16, v0

    move-object/from16 v14, v16

    const/16 v16, 0x0

    .line 33
    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v16

    const-class v16, Lcom/google/android/gms/dynamite/DynamiteModule;

    move-object/from16 v15, v16

    move-object/from16 v16, v15

    monitor-enter v16
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    sget v16, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd:I

    move/from16 v5, v16

    move/from16 v16, v5

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_f

    const/16 v16, 0x1

    move/from16 v5, v16

    :goto_5
    move/from16 v16, v5

    .line 34
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v5, v16

    move-object/from16 v16, v15

    monitor-exit v16
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    move-object/from16 v16, v5

    .line 36
    :try_start_f
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    move/from16 v5, v16

    move/from16 v16, v5

    if-eqz v16, :cond_e

    const-string v16, "DynamiteModule"

    const-string v17, "Dynamite loader version >= 2, using loadModule2NoCrashUtils"

    .line 37
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    move-object/from16 v16, v12

    move-object/from16 v17, v13

    .line 38
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v17

    move-object/from16 v18, v4

    move/from16 v19, v11

    move-object/from16 v20, v14

    .line 39
    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v20

    .line 40
    invoke-virtual/range {v16 .. v20}, Lcom/google/android/gms/dynamite/zzp;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v16

    move-object/from16 v5, v16

    :goto_6
    move-object/from16 v16, v5

    .line 45
    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/Context;

    move-object/from16 v5, v16

    move-object/from16 v16, v5

    if-nez v16, :cond_b

    new-instance v16, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    move-object/from16 v5, v16

    move-object/from16 v16, v5

    const-string v17, "Failed to get module context"

    const/16 v18, 0x0

    .line 46
    invoke-direct/range {v16 .. v18}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzb;)V

    move-object/from16 v16, v5

    throw v16

    :cond_b
    new-instance v16, Lcom/google/android/gms/dynamite/DynamiteModule;

    move-object/from16 v11, v16

    move-object/from16 v16, v11

    move-object/from16 v17, v5

    .line 47
    invoke-direct/range {v16 .. v17}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-object/from16 v16, v11

    move-object/from16 v2, v16

    :goto_7
    move-wide/from16 v16, v8

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_d

    sget-object v16, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/ThreadLocal;

    .line 57
    invoke-virtual/range {v16 .. v16}, Ljava/lang/ThreadLocal;->remove()V

    :goto_8
    move-object/from16 v16, v7

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/gms/dynamite/zzk;->zza:Landroid/database/Cursor;

    move-object/from16 v16, v0

    move-object/from16 v3, v16

    move-object/from16 v16, v3

    if-eqz v16, :cond_c

    move-object/from16 v16, v3

    .line 59
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_c
    sget-object v16, Lcom/google/android/gms/dynamite/DynamiteModule;->zze:Ljava/lang/ThreadLocal;

    move-object/from16 v17, v6

    .line 60
    invoke-virtual/range {v16 .. v17}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object/from16 v16, v2

    move-object/from16 v2, v16

    goto/16 :goto_1

    :cond_d
    sget-object v16, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/ThreadLocal;

    move-wide/from16 v17, v8

    .line 58
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_8

    :cond_e
    :try_start_10
    const-string v16, "DynamiteModule"

    const-string v17, "Dynamite loader version < 2, falling back to loadModule2"

    .line 41
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    move-object/from16 v16, v12

    move-object/from16 v17, v13

    .line 42
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v17

    move-object/from16 v18, v4

    move/from16 v19, v11

    move-object/from16 v20, v14

    .line 43
    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v20

    .line 44
    invoke-virtual/range {v16 .. v20}, Lcom/google/android/gms/dynamite/zzp;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v16

    move-object/from16 v5, v16

    goto/16 :goto_6

    :cond_f
    const/16 v16, 0x0

    move/from16 v5, v16

    goto/16 :goto_5

    :cond_10
    const-string v16, "DynamiteModule"

    move-object/from16 v5, v16

    move-object/from16 v16, v4

    .line 11
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v12, v16

    add-int/lit8 v12, v12, 0x33

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v13, v16

    move-object/from16 v16, v13

    move/from16 v17, v12

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v16, v13

    const-string v17, "Selected remote version of "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v16, v13

    move-object/from16 v17, v4

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v16, v13

    const-string v17, ", version >= "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v16, v13

    move/from16 v17, v11

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v16, v5

    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    move-object/from16 v16, v2

    .line 12
    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzo;

    move-result-object v16

    move-object/from16 v5, v16

    move-object/from16 v16, v5

    if-nez v16, :cond_11

    new-instance v16, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    move-object/from16 v5, v16

    move-object/from16 v16, v5

    const-string v17, "Failed to create IDynamiteLoader."

    const/16 v18, 0x0

    .line 13
    invoke-direct/range {v16 .. v18}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzb;)V

    move-object/from16 v16, v5

    throw v16

    :cond_11
    move-object/from16 v16, v5

    .line 14
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/dynamite/zzo;->zzi()I

    move-result v16

    move/from16 v12, v16

    move/from16 v16, v12

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_14

    sget-object v16, Lcom/google/android/gms/dynamite/DynamiteModule;->zze:Ljava/lang/ThreadLocal;

    .line 15
    invoke-virtual/range {v16 .. v16}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/gms/dynamite/zzk;

    move-object/from16 v12, v16

    move-object/from16 v16, v12

    if-nez v16, :cond_12

    new-instance v16, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    move-object/from16 v5, v16

    move-object/from16 v16, v5

    const-string v17, "No cached result cursor holder"

    const/16 v18, 0x0

    .line 16
    invoke-direct/range {v16 .. v18}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzb;)V

    move-object/from16 v16, v5

    throw v16

    :cond_12
    move-object/from16 v16, v5

    move-object/from16 v17, v2

    .line 17
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v17

    move-object/from16 v18, v4

    move/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gms/dynamite/zzk;->zza:Landroid/database/Cursor;

    move-object/from16 v20, v0

    .line 18
    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v20

    .line 19
    invoke-virtual/range {v16 .. v20}, Lcom/google/android/gms/dynamite/zzo;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v16

    move-object/from16 v5, v16

    :goto_9
    move-object/from16 v16, v5

    .line 24
    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    move-object/from16 v16, v11

    if-nez v16, :cond_13

    new-instance v16, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    move-object/from16 v5, v16

    move-object/from16 v16, v5

    const-string v17, "Failed to load remote module."

    const/16 v18, 0x0

    .line 25
    invoke-direct/range {v16 .. v18}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzb;)V

    move-object/from16 v16, v5

    throw v16

    :cond_13
    new-instance v16, Lcom/google/android/gms/dynamite/DynamiteModule;

    move-object/from16 v11, v16

    move-object/from16 v16, v11

    move-object/from16 v17, v5

    .line 26
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/Context;

    invoke-direct/range {v16 .. v17}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    move-object/from16 v16, v11

    move-object/from16 v2, v16

    goto/16 :goto_7

    :cond_14
    move/from16 v16, v12

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_15

    const-string v16, "DynamiteModule"

    const-string v17, "IDynamite loader version = 2"

    .line 20
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    move-object/from16 v16, v5

    move-object/from16 v17, v2

    .line 21
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v17

    move-object/from16 v18, v4

    move/from16 v19, v11

    invoke-virtual/range {v16 .. v19}, Lcom/google/android/gms/dynamite/zzo;->zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;I)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v16

    move-object/from16 v5, v16

    goto :goto_9

    :cond_15
    const-string v16, "DynamiteModule"

    const-string v17, "Dynamite loader version < 2, falling back to createModuleContext"

    .line 22
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    move-object/from16 v16, v5

    move-object/from16 v17, v2

    .line 23
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v17

    move-object/from16 v18, v4

    move/from16 v19, v11

    invoke-virtual/range {v16 .. v19}, Lcom/google/android/gms/dynamite/zzo;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;I)Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-result-object v16

    move-object/from16 v5, v16

    goto :goto_9

    .line 63
    :cond_16
    :try_start_11
    new-instance v16, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    move-object/from16 v2, v16

    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/gms/dynamite/zzn;->zza:I

    move/from16 v16, v0

    move/from16 v3, v16

    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/gms/dynamite/zzn;->zzb:I

    move/from16 v16, v0

    move/from16 v4, v16

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v5, v16

    move-object/from16 v16, v5

    const/16 v17, 0x5b

    .line 62
    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v16, v5

    const-string v17, "No acceptable module found. Local version is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v16, v5

    move/from16 v17, v3

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v16, v5

    const-string v17, " and remote version is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v16, v5

    move/from16 v17, v4

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v16, v5

    const-string v17, "."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v16, v2

    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-direct/range {v16 .. v18}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzb;)V

    move-object/from16 v16, v2

    throw v16

    :cond_17
    new-instance v16, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    move-object/from16 v2, v16

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v3, v16

    move-object/from16 v16, v3

    const/16 v17, 0x2f

    .line 7
    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v16, v3

    const-string v17, "VersionPolicy returned invalid code:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v16, v3

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-direct/range {v16 .. v18}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzb;)V

    move-object/from16 v16, v2

    throw v16
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 49
    :catchall_2
    move-exception v16

    move-object/from16 v11, v16

    move-object/from16 v16, v5

    .line 8
    :try_start_12
    monitor-exit v16
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    move-object/from16 v16, v11

    :try_start_13
    throw v16
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :catchall_3
    move-exception v16

    move-object/from16 v11, v16

    move-object/from16 v16, v5

    .line 28
    :try_start_14
    monitor-exit v16
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    move-object/from16 v16, v11

    :try_start_15
    throw v16
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :catchall_4
    move-exception v16

    move-object/from16 v5, v16

    move-object/from16 v16, v15

    .line 35
    :try_start_16
    monitor-exit v16
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    move-object/from16 v16, v5

    :try_start_17
    throw v16
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_17 .. :try_end_17} :catch_2
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    :cond_18
    sget-object v16, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/ThreadLocal;

    move-wide/from16 v17, v8

    .line 58
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_19
    :try_start_18
    new-instance v16, Ljava/lang/String;

    move-object/from16 v13, v16

    move-object/from16 v16, v13

    move-object/from16 v17, v5

    .line 52
    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v13

    move-object/from16 v5, v16

    goto/16 :goto_2

    :cond_1a
    new-instance v16, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    move-object/from16 v2, v16

    move-object/from16 v16, v2

    const-string v17, "Remote load failed. No local fallback found."

    move-object/from16 v18, v11

    const/16 v19, 0x0

    .line 55
    invoke-direct/range {v16 .. v19}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzb;)V

    move-object/from16 v16, v2

    throw v16
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :cond_1b
    sget-object v16, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/ThreadLocal;

    move-wide/from16 v17, v8

    .line 58
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto/16 :goto_3
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 16
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    :try_start_0
    const-class v10, Lcom/google/android/gms/dynamite/DynamiteModule;

    move-object v5, v10

    move-object v10, v5

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v10, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v10

    move-object v10, v4

    if-nez v10, :cond_0

    move-object v10, v1

    .line 1
    :try_start_2
    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    const-class v11, Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;

    .line 2
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-string v11, "sClassLoader"

    .line 3
    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    move-object v6, v10

    move-object v10, v6

    .line 4
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v10

    move-object v7, v10

    move-object v10, v7

    monitor-enter v10
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v10, v6

    const/4 v11, 0x0

    .line 5
    :try_start_3
    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ClassLoader;

    move-object v4, v10

    move-object v10, v4

    if-eqz v10, :cond_c

    .line 6
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    move-object v6, v10

    move-object v10, v4

    move-object v11, v6

    if-ne v10, v11, :cond_b

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v4, v10

    :goto_0
    move-object v10, v7

    .line 21
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_1
    move-object v10, v4

    :try_start_4
    sput-object v10, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb:Ljava/lang/Boolean;

    :cond_0
    move-object v10, v5

    .line 24
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v10, v4

    .line 25
    :try_start_5
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v10

    move v4, v10

    move v10, v4

    if-eqz v10, :cond_1

    move-object v10, v1

    move-object v11, v2

    move v12, v3

    .line 43
    :try_start_6
    invoke-static {v10, v11, v12}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb(Landroid/content/Context;Ljava/lang/String;Z)I
    :try_end_6
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v10

    move v2, v10

    move v10, v2

    move v1, v10

    .line 44
    :goto_2
    return v1

    .line 26
    :cond_1
    move-object v10, v1

    :try_start_7
    invoke-static {v10}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzo;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v10

    move-object v4, v10

    move-object v10, v4

    if-nez v10, :cond_2

    const/4 v10, 0x0

    move v2, v10

    :goto_3
    move v10, v2

    move v1, v10

    goto :goto_2

    :cond_2
    move-object v10, v4

    .line 27
    :try_start_8
    invoke-virtual {v10}, Lcom/google/android/gms/dynamite/zzo;->zzi()I

    move-result v10

    move v5, v10

    move v10, v5

    const/4 v11, 0x3

    if-lt v10, v11, :cond_9

    move-object v10, v4

    move-object v11, v1

    .line 28
    invoke-static {v11}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v11

    move-object v12, v2

    move v13, v3

    sget-object v14, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/ThreadLocal;

    invoke-virtual {v14}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 29
    invoke-virtual/range {v10 .. v15}, Lcom/google/android/gms/dynamite/zzo;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ZJ)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v10

    .line 30
    invoke-static {v10}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/database/Cursor;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object v3, v10

    move-object v10, v3

    if-eqz v10, :cond_3

    move-object v10, v3

    .line 31
    :try_start_9
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    move v2, v10

    move v10, v2

    if-nez v10, :cond_5

    :cond_3
    const-string v10, "DynamiteModule"

    const-string v11, "Failed to retrieve remote module version."

    .line 32
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-result v10

    move-object v10, v3

    if-eqz v10, :cond_4

    move-object v10, v3

    .line 33
    :try_start_a
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/4 v10, 0x0

    move v2, v10

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    move v2, v10

    goto :goto_3

    :cond_5
    move-object v10, v3

    const/4 v11, 0x0

    .line 34
    :try_start_b
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move v4, v10

    move v10, v4

    if-lez v10, :cond_8

    move-object v10, v3

    .line 35
    invoke-static {v10}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc(Landroid/database/Cursor;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-result v10

    move v2, v10

    move v10, v2

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    move-object v2, v10

    :goto_4
    move-object v10, v2

    if-eqz v10, :cond_6

    move-object v10, v2

    .line 33
    :try_start_c
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move v10, v4

    move v2, v10

    goto :goto_3

    :cond_6
    move v10, v4

    move v2, v10

    goto :goto_3

    :cond_7
    move-object v10, v3

    move-object v2, v10

    goto :goto_4

    :cond_8
    move-object v10, v3

    move-object v2, v10

    goto :goto_4

    :cond_9
    move v10, v5

    const/4 v11, 0x2

    if-ne v10, v11, :cond_a

    :try_start_d
    const-string v10, "DynamiteModule"

    const-string v11, "IDynamite loader version = 2, no high precision latency measurement."

    .line 36
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    move-object v10, v4

    move-object v11, v1

    .line 37
    invoke-static {v11}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v11

    move-object v12, v2

    move v13, v3

    .line 38
    invoke-virtual {v10, v11, v12, v13}, Lcom/google/android/gms/dynamite/zzo;->zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Z)I

    move-result v10

    move v2, v10

    goto/16 :goto_3

    :cond_a
    const-string v10, "DynamiteModule"

    const-string v11, "IDynamite loader version < 2, falling back to getModuleVersion2"

    .line 39
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    move-object v10, v4

    move-object v11, v1

    .line 40
    invoke-static {v11}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v11

    move-object v12, v2

    move v13, v3

    invoke-virtual {v10, v11, v12, v13}, Lcom/google/android/gms/dynamite/zzo;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Z)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-result v10

    move v2, v10

    goto/16 :goto_3

    :cond_b
    move-object v10, v4

    .line 7
    :try_start_e
    invoke-static {v10}, Lcom/google/android/gms/dynamite/DynamiteModule;->zze(Ljava/lang/ClassLoader;)V
    :try_end_e
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :goto_5
    :try_start_f
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v4, v10

    goto/16 :goto_0

    :cond_c
    const-string v10, "com.google.android.gms"

    move-object v11, v1

    .line 8
    invoke-virtual {v11}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 9
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    move v4, v10

    move v10, v4

    if-eqz v10, :cond_d

    move-object v10, v6

    const/4 v11, 0x0

    .line 10
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    move-object v4, v10

    goto/16 :goto_0

    :cond_d
    move-object v10, v1

    move-object v11, v2

    move v12, v3

    .line 11
    :try_start_10
    invoke-static {v10, v11, v12}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v10

    move v8, v10

    sget-object v10, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/String;

    move-object v4, v10

    move-object v10, v4

    if-eqz v10, :cond_e

    sget-object v10, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/String;

    .line 12
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z
    :try_end_10
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    move-result v10

    move v4, v10

    move v10, v4

    if-eqz v10, :cond_f

    :cond_e
    move-object v10, v7

    .line 13
    :try_start_11
    monitor-exit v10
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    move-object v10, v5

    :try_start_12
    monitor-exit v10
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    move v10, v8

    move v1, v10

    goto/16 :goto_2

    :cond_f
    :try_start_13
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    move v4, v10

    move v10, v4

    const/16 v11, 0x1d

    if-lt v10, v11, :cond_10

    .line 16
    new-instance v10, Ldalvik/system/DelegateLastClassLoader;

    move-object v4, v10

    sget-object v10, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/String;

    move-object v9, v10

    move-object v10, v9

    .line 17
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v10, v4

    move-object v11, v9

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ldalvik/system/DelegateLastClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    :goto_6
    move-object v10, v4

    .line 18
    invoke-static {v10}, Lcom/google/android/gms/dynamite/DynamiteModule;->zze(Ljava/lang/ClassLoader;)V

    move-object v10, v6

    const/4 v11, 0x0

    move-object v12, v4

    .line 19
    invoke-virtual {v10, v11, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v10, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb:Ljava/lang/Boolean;
    :try_end_13
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    move-object v10, v7

    .line 22
    :try_start_14
    monitor-exit v10
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    move-object v10, v5

    :try_start_15
    monitor-exit v10
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    move v10, v8

    move v1, v10

    goto/16 :goto_2

    .line 14
    :cond_10
    :try_start_16
    new-instance v10, Lcom/google/android/gms/dynamite/zza;

    move-object v4, v10

    sget-object v10, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/String;

    move-object v9, v10

    move-object v10, v9

    .line 15
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v10, v4

    move-object v11, v9

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/google/android/gms/dynamite/zza;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_16
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    goto :goto_6

    :catchall_0
    move-exception v10

    move-object v2, v10

    move-object v10, v1

    move-object v11, v2

    .line 45
    invoke-static {v10, v11}, Lcom/google/android/gms/common/util/CrashUtils;->addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z

    move-result v10

    move-object v10, v2

    .line 46
    throw v10

    :catchall_1
    move-exception v10

    move-object v2, v10

    move-object v10, v5

    .line 24
    :try_start_17
    monitor-exit v10
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    move-object v10, v2

    :try_start_18
    throw v10
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :catch_0
    move-exception v10

    :goto_7
    move-object v4, v10

    :try_start_19
    const-string v10, "DynamiteModule"

    move-object v6, v10

    move-object v10, v4

    .line 23
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    move-object v10, v4

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v7, v10

    add-int/lit8 v7, v7, 0x1e

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v8, v10

    move-object v10, v8

    move v11, v7

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v10, v8

    const-string v11, "Failed to load module via V2: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v10, v8

    move-object v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v10, v6

    move-object v11, v8

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    move-object v4, v10

    goto/16 :goto_1

    :catchall_2
    move-exception v10

    move-object v4, v10

    move-object v10, v7

    .line 21
    :try_start_1a
    monitor-exit v10
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    move-object v10, v4

    :try_start_1b
    throw v10
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1b .. :try_end_1b} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1b .. :try_end_1b} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1b .. :try_end_1b} :catch_7
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    .line 24
    :catch_1
    move-exception v10

    goto :goto_7

    .line 21
    :catch_2
    move-exception v10

    move-object v2, v10

    :try_start_1c
    const-string v10, "DynamiteModule"

    move-object v3, v10

    const-string v10, "Failed to retrieve remote module version: "

    move-object v4, v10

    move-object v10, v2

    .line 44
    invoke-virtual {v10}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    move-object v10, v2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v5, v10

    move v10, v5

    if-eqz v10, :cond_12

    move-object v10, v4

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    :goto_8
    move-object v10, v3

    move-object v11, v2

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    move-result v10

    const/4 v10, 0x0

    move v1, v10

    goto/16 :goto_2

    :catch_3
    move-exception v10

    move-object v2, v10

    const/4 v10, 0x0

    move-object v3, v10

    :goto_9
    :try_start_1d
    const-string v10, "DynamiteModule"

    move-object v4, v10

    const-string v10, "Failed to retrieve remote module version: "

    move-object v5, v10

    move-object v10, v2

    .line 41
    invoke-virtual {v10}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    move-object v10, v2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v6, v10

    move v10, v6

    if-eqz v10, :cond_13

    move-object v10, v5

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    :goto_a
    move-object v10, v4

    move-object v11, v2

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    move-result v10

    move-object v10, v3

    if-eqz v10, :cond_14

    move-object v10, v3

    .line 33
    :try_start_1e
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    move v2, v10

    goto/16 :goto_3

    :catchall_3
    move-exception v10

    move-object v2, v10

    const/4 v10, 0x0

    move-object v4, v10

    :goto_b
    move-object v10, v4

    if-eqz v10, :cond_11

    move-object v10, v4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_11
    move-object v10, v2

    .line 42
    throw v10
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    :catch_4
    move-exception v10

    move-object v2, v10

    goto :goto_9

    :catchall_4
    move-exception v10

    move-object v2, v10

    move-object v10, v3

    move-object v4, v10

    goto :goto_b

    :catch_5
    move-exception v10

    goto/16 :goto_5

    :catch_6
    move-exception v10

    move-object v10, v6

    const/4 v11, 0x0

    .line 20
    :try_start_1f
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    move-object v4, v10

    goto/16 :goto_0

    :cond_12
    :try_start_20
    new-instance v10, Ljava/lang/String;

    move-object v2, v10

    move-object v10, v2

    move-object v11, v4

    .line 44
    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    goto :goto_8

    :catchall_5
    move-exception v10

    move-object v2, v10

    move-object v10, v3

    move-object v4, v10

    goto :goto_b

    :cond_13
    :try_start_21
    new-instance v10, Ljava/lang/String;

    move-object v2, v10

    move-object v10, v2

    move-object v11, v5

    .line 41
    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    goto :goto_a

    :cond_14
    const/4 v10, 0x0

    move v2, v10

    goto/16 :goto_3

    .line 24
    :catch_7
    move-exception v10

    goto/16 :goto_7
.end method

.method private static zzb(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .prologue
    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    :try_start_0
    sget-object v8, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/ThreadLocal;

    .line 1
    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-wide v4, v8

    .line 2
    move-object v8, v1

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    move-object v6, v8

    const-string v8, "api_force_staging"

    move-object v1, v8

    const-string v8, "api"

    move-object v7, v8

    const/4 v8, 0x1

    move v9, v3

    if-eq v8, v9, :cond_0

    move-object v8, v7

    move-object v1, v8

    :cond_0
    new-instance v8, Landroid/net/Uri$Builder;

    move-object v3, v8

    move-object v8, v3

    .line 3
    invoke-direct {v8}, Landroid/net/Uri$Builder;-><init>()V

    move-object v8, v6

    move-object v9, v3

    const-string v10, "content"

    .line 4
    invoke-virtual {v9, v10}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    const-string v10, "com.google.android.gms.chimera"

    .line 5
    invoke-virtual {v9, v10}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    move-object v10, v1

    .line 6
    invoke-virtual {v9, v10}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    move-object v10, v2

    .line 7
    invoke-virtual {v9, v10}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    const-string v10, "requestStartTime"

    move-wide v11, v4

    .line 8
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    .line 9
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 10
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    move-object v2, v8

    move-object v8, v2

    if-eqz v8, :cond_1

    move-object v8, v2

    .line 11
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    move v1, v8

    move v8, v1

    if-nez v8, :cond_3

    :cond_1
    const-string v8, "DynamiteModule"

    const-string v9, "Failed to retrieve remote module version."

    .line 12
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    new-instance v8, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    move-object v1, v8

    move-object v8, v1

    const-string v9, "Failed to connect to dynamite module ContentResolver."

    const/4 v10, 0x0

    .line 13
    invoke-direct {v8, v9, v10}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzb;)V

    move-object v8, v1

    throw v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 24
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 23
    :goto_0
    move-object v8, v1

    .line 20
    :try_start_2
    instance-of v8, v8, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    move v3, v8

    move v8, v3

    if-eqz v8, :cond_8

    move-object v8, v1

    .line 21
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    :catchall_0
    move-exception v8

    move-object v1, v8

    move-object v8, v2

    move-object v3, v8

    .line 21
    :goto_1
    move-object v8, v3

    if-eqz v8, :cond_2

    move-object v8, v3

    .line 23
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v8, v1

    .line 24
    throw v8

    .line 13
    :cond_3
    move-object v8, v2

    const/4 v9, 0x0

    .line 14
    :try_start_3
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    move v3, v8

    move v8, v3

    if-lez v8, :cond_7

    const-class v8, Lcom/google/android/gms/dynamite/DynamiteModule;

    move-object v1, v8

    move-object v8, v1

    monitor-enter v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v8, v2

    const/4 v9, 0x2

    .line 15
    :try_start_4
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/String;

    move-object v8, v2

    const-string v9, "loaderVersion"

    .line 16
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move v6, v8

    move v8, v6

    if-ltz v8, :cond_4

    move-object v8, v2

    move v9, v6

    .line 17
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    sput v8, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd:I

    :cond_4
    move-object v8, v1

    .line 18
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v8, v2

    .line 19
    :try_start_5
    invoke-static {v8}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc(Landroid/database/Cursor;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v8

    move v1, v8

    move v8, v1

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    move-object v1, v8

    :goto_2
    move-object v8, v1

    if-eqz v8, :cond_5

    move-object v8, v1

    .line 23
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    move v8, v3

    move v1, v8

    return v1

    :cond_6
    move-object v8, v2

    move-object v1, v8

    goto :goto_2

    :cond_7
    move-object v8, v2

    move-object v1, v8

    goto :goto_2

    :catch_1
    move-exception v8

    move-object v1, v8

    const/4 v8, 0x0

    move-object v2, v8

    goto :goto_0

    .line 21
    :catchall_1
    move-exception v8

    move-object v1, v8

    const/4 v8, 0x0

    move-object v3, v8

    goto :goto_1

    .line 24
    :catchall_2
    move-exception v8

    move-object v1, v8

    move-object v8, v2

    move-object v3, v8

    goto :goto_1

    :catchall_3
    move-exception v8

    move-object v3, v8

    move-object v8, v1

    .line 18
    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v8, v3

    :try_start_7
    throw v8
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_8
    :try_start_8
    new-instance v8, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    move-object v3, v8

    move-object v8, v3

    const-string v9, "V2 version check failed"

    move-object v10, v1

    const/4 v11, 0x0

    .line 22
    invoke-direct {v8, v9, v10, v11}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzb;)V

    move-object v8, v3

    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method private static zzc(Landroid/database/Cursor;)Z
    .locals 4

    .prologue
    move-object v0, p0

    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zze:Ljava/lang/ThreadLocal;

    .line 1
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/dynamite/zzk;

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Lcom/google/android/gms/dynamite/zzk;->zza:Landroid/database/Cursor;

    if-nez v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lcom/google/android/gms/dynamite/zzk;->zza:Landroid/database/Cursor;

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private static zzd(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    .locals 5

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    .line 1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    const-string v3, "Selected local version of "

    move-object v2, v3

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    :goto_0
    const-string v3, "DynamiteModule"

    move-object v4, v1

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    new-instance v3, Lcom/google/android/gms/dynamite/DynamiteModule;

    move-object v1, v3

    move-object v3, v1

    move-object v4, v0

    .line 2
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    move-object v3, v1

    move-object v0, v3

    return-object v0

    :cond_0
    new-instance v3, Ljava/lang/String;

    move-object v1, v3

    move-object v3, v1

    move-object v4, v2

    .line 1
    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static zze(Ljava/lang/ClassLoader;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "DynamiteModule.class"
    .end annotation

    .prologue
    move-object v0, p0

    move-object v3, v0

    :try_start_0
    const-string v4, "com.google.android.gms.dynamiteloader.DynamiteLoaderV2"

    .line 1
    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    move-object v0, v3

    move-object v3, v0

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    :goto_0
    move-object v3, v0

    sput-object v3, Lcom/google/android/gms/dynamite/DynamiteModule;->zzj:Lcom/google/android/gms/dynamite/zzp;

    return-void

    :cond_0
    move-object v3, v0

    const-string v4, "com.google.android.gms.dynamite.IDynamiteLoaderV2"

    .line 2
    invoke-interface {v3, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    move-object v1, v3

    move-object v3, v1

    .line 3
    instance-of v3, v3, Lcom/google/android/gms/dynamite/zzp;

    move v2, v3

    move v3, v2

    if-eqz v3, :cond_1

    move-object v3, v1

    .line 4
    check-cast v3, Lcom/google/android/gms/dynamite/zzp;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_1
    move-object v0, v3

    new-instance v3, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    move-object v1, v3

    move-object v3, v1

    const-string v4, "Failed to instantiate dynamite loader"

    move-object v5, v0

    const/4 v6, 0x0

    .line 6
    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzb;)V

    move-object v3, v1

    throw v3

    :cond_1
    :try_start_1
    new-instance v3, Lcom/google/android/gms/dynamite/zzp;

    move-object v1, v3

    move-object v3, v1

    move-object v4, v0

    .line 5
    invoke-direct {v3, v4}, Lcom/google/android/gms/dynamite/zzp;-><init>(Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v3, v1

    move-object v0, v3

    goto :goto_0

    .line 4
    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_1

    :catch_3
    move-exception v3

    goto :goto_1

    :catch_4
    move-exception v3

    goto :goto_1
.end method

.method private static zzf(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzo;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    move-object v0, p0

    const-class v5, Lcom/google/android/gms/dynamite/DynamiteModule;

    move-object v1, v5

    move-object v5, v1

    monitor-enter v5

    :try_start_0
    sget-object v5, Lcom/google/android/gms/dynamite/DynamiteModule;->zzi:Lcom/google/android/gms/dynamite/zzo;

    move-object v2, v5

    move-object v5, v2

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/dynamite/DynamiteModule;->zzi:Lcom/google/android/gms/dynamite/zzo;

    move-object v0, v5

    move-object v5, v1

    .line 1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v0

    move-object v0, v5

    .line 12
    :goto_0
    return-object v0

    .line 1
    :cond_0
    move-object v5, v0

    :try_start_1
    const-string v6, "com.google.android.gms"

    const/4 v7, 0x3

    .line 2
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    .line 3
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const-string v6, "com.google.android.gms.chimera.container.DynamiteLoaderImpl"

    .line 4
    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 5
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    move-object v0, v5

    move-object v5, v0

    if-nez v5, :cond_2

    const/4 v5, 0x0

    move-object v0, v5

    :goto_1
    move-object v5, v0

    if-eqz v5, :cond_1

    move-object v5, v0

    sput-object v5, Lcom/google/android/gms/dynamite/DynamiteModule;->zzi:Lcom/google/android/gms/dynamite/zzo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v1

    .line 12
    :try_start_2
    monitor-exit v5

    move-object v5, v0

    move-object v0, v5

    goto :goto_0

    .line 11
    :catch_0
    move-exception v5

    move-object v0, v5

    const-string v5, "DynamiteModule"

    move-object v2, v5

    const-string v5, "Failed to load IDynamiteLoader from GmsCore: "

    move-object v3, v5

    move-object v5, v0

    .line 10
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v5

    move v5, v4

    if-eqz v5, :cond_4

    move-object v5, v3

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    :goto_2
    move-object v5, v2

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 12
    :cond_1
    move-object v5, v1

    .line 11
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    :cond_2
    move-object v5, v0

    :try_start_3
    const-string v6, "com.google.android.gms.dynamite.IDynamiteLoader"

    .line 6
    invoke-interface {v5, v6}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    .line 7
    instance-of v5, v5, Lcom/google/android/gms/dynamite/zzo;

    move v3, v5

    move v5, v3

    if-eqz v5, :cond_3

    move-object v5, v2

    .line 8
    check-cast v5, Lcom/google/android/gms/dynamite/zzo;

    move-object v0, v5

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/google/android/gms/dynamite/zzo;

    move-object v2, v5

    move-object v5, v2

    move-object v6, v0

    .line 9
    invoke-direct {v5, v6}, Lcom/google/android/gms/dynamite/zzo;-><init>(Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v5, v2

    move-object v0, v5

    goto :goto_1

    :catchall_0
    move-exception v5

    move-object v0, v5

    move-object v5, v1

    .line 11
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v5, v0

    throw v5

    .line 10
    :cond_4
    :try_start_5
    new-instance v5, Ljava/lang/String;

    move-object v0, v5

    move-object v5, v0

    move-object v6, v3

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public getModuleContext()Landroid/content/Context;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Landroid/content/Context;

    move-object v0, v1

    return-object v0
.end method

.method public instantiate(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Landroid/content/Context;

    .line 1
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 2
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v4

    move-object v4, v0

    move-object v0, v4

    return-object v0

    :catch_0
    move-exception v4

    :goto_0
    move-object v2, v4

    new-instance v4, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    move-object v3, v4

    move-object v4, v1

    .line 3
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    const-string v4, "Failed to instantiate module class: "

    move-object v1, v4

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    :goto_1
    move-object v4, v3

    move-object v5, v0

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzb;)V

    move-object v4, v3

    throw v4

    :cond_0
    new-instance v4, Ljava/lang/String;

    move-object v0, v4

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 2
    :catch_1
    move-exception v4

    goto :goto_0

    :catch_2
    move-exception v4

    goto :goto_0
.end method
