.class public final Lcom/google/android/gms/common/internal/zzaf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static zzb:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static zzc:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v1, Ljava/lang/Object;

    move-object v0, v1

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/internal/zzaf;->zza:Ljava/lang/Object;

    return-void
.end method

.method public static zza(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzaf;->zzc(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/common/internal/zzaf;->zzc:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public static zzb(Landroid/content/Context;)I
    .locals 2

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzaf;->zzc(Landroid/content/Context;)V

    sget v1, Lcom/google/android/gms/common/internal/zzaf;->zzd:I

    move v0, v1

    return v0
.end method

.method private static zzc(Landroid/content/Context;)V
    .locals 6

    .prologue
    move-object v0, p0

    sget-object v3, Lcom/google/android/gms/common/internal/zzaf;->zza:Ljava/lang/Object;

    move-object v1, v3

    move-object v3, v1

    monitor-enter v3

    :try_start_0
    sget-boolean v3, Lcom/google/android/gms/common/internal/zzaf;->zzb:Z

    move v2, v3

    move v3, v2

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 1
    monitor-exit v3

    .line 10
    :goto_0
    return-void

    .line 1
    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/google/android/gms/common/internal/zzaf;->zzb:Z

    move-object v3, v0

    .line 2
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    move-object v3, v0

    .line 3
    invoke-static {v3}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    move-object v0, v3

    move-object v3, v0

    move-object v4, v2

    const/16 v5, 0x80

    .line 4
    :try_start_1
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 5
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    move-object v3, v0

    if-nez v3, :cond_1

    move-object v3, v1

    .line 6
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    move-object v3, v0

    :try_start_3
    const-string v4, "com.google.app.id"

    .line 7
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/common/internal/zzaf;->zzc:Ljava/lang/String;

    move-object v3, v0

    const-string v4, "com.google.android.gms.version"

    .line 8
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/google/android/gms/common/internal/zzaf;->zzd:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    move-object v3, v1

    .line 10
    :try_start_4
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v3

    move-object v0, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v3, v0

    throw v3

    :catch_0
    move-exception v3

    move-object v0, v3

    :try_start_5
    const-string v3, "MetadataValueReader"

    const-string v4, "This should never happen."

    move-object v5, v0

    .line 9
    invoke-static {v3, v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v3

    goto :goto_1
.end method
