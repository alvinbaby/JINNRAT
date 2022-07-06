.class public final Lcom/google/android/gms/common/api/internal/GoogleServices;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static zzb:Lcom/google/android/gms/common/api/internal/GoogleServices;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "sLock"
    .end annotation
.end field


# instance fields
.field private final zzc:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/common/api/Status;

.field private final zze:Z

.field private final zzf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v1, Ljava/lang/Object;

    move-object v0, v1

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/api/internal/GoogleServices;->zza:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 9
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v1

    .line 1
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    const-string v5, "google_app_measurement_enable"

    const-string v6, "integer"

    move-object v7, v2

    .line 2
    sget v8, Lcom/google/android/gms/common/R$string;->common_google_play_services_unknown_issue:I

    .line 3
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v7

    .line 4
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    move v4, v3

    if-eqz v4, :cond_4

    move-object v4, v2

    move v5, v3

    .line 5
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    move v3, v4

    move v4, v3

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v3

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    move v3, v4

    :goto_1
    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzf:Z

    move v4, v3

    move v2, v4

    :goto_2
    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Lcom/google/android/gms/common/api/internal/GoogleServices;->zze:Z

    move-object v4, v1

    .line 6
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzaf;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    if-nez v4, :cond_1

    new-instance v4, Lcom/google/android/gms/common/internal/StringResourceValueReader;

    move-object v2, v4

    move-object v4, v2

    move-object v5, v1

    .line 7
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/internal/StringResourceValueReader;-><init>(Landroid/content/Context;)V

    move-object v4, v2

    const-string v5, "google_app_id"

    .line 8
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    :goto_3
    move-object v4, v1

    .line 9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/google/android/gms/common/api/Status;

    move-object v1, v4

    move-object v4, v1

    const/16 v5, 0xa

    const-string v6, "Missing google app id value from from string resources with name google_app_id."

    .line 10
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzd:Lcom/google/android/gms/common/api/Status;

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzc:Ljava/lang/String;

    :goto_4
    return-void

    :cond_0
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzc:Ljava/lang/String;

    move-object v4, v0

    sget-object v5, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzd:Lcom/google/android/gms/common/api/Status;

    goto :goto_4

    :cond_1
    move-object v4, v2

    move-object v1, v4

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    move v3, v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    move v2, v4

    goto :goto_0

    :cond_4
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzf:Z

    const/4 v4, 0x1

    move v2, v4

    goto :goto_2
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 6
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzc:Ljava/lang/String;

    move-object v3, v0

    sget-object v4, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzd:Lcom/google/android/gms/common/api/Status;

    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/google/android/gms/common/api/internal/GoogleServices;->zze:Z

    move-object v3, v0

    move v4, v2

    const/4 v5, 0x1

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, v3, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzf:Z

    return-void
.end method

.method private static checkInitialized(Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/GoogleServices;
    .locals 7
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    sget-object v5, Lcom/google/android/gms/common/api/internal/GoogleServices;->zza:Ljava/lang/Object;

    move-object v1, v5

    move-object v5, v1

    monitor-enter v5

    :try_start_0
    sget-object v5, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzb:Lcom/google/android/gms/common/api/internal/GoogleServices;

    move-object v2, v5

    move-object v5, v2

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v2, v5

    move-object v5, v0

    .line 1
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v5

    add-int/lit8 v3, v3, 0x22

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v4, v5

    move-object v5, v4

    move v6, v3

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v5, v4

    const-string v6, "Initialize must be called before "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v4

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v4

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v5, v2

    throw v5

    .line 2
    :catchall_0
    move-exception v5

    move-object v0, v5

    .line 3
    move-object v5, v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    move-object v5, v0

    .line 3
    throw v5

    .line 1
    :cond_0
    :try_start_1
    sget-object v5, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzb:Lcom/google/android/gms/common/api/internal/GoogleServices;

    move-object v0, v5

    move-object v5, v1

    .line 2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v0

    move-object v0, v5

    return-object v0
.end method

.method static clearInstanceForTest()V
    .locals 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    sget-object v2, Lcom/google/android/gms/common/api/internal/GoogleServices;->zza:Ljava/lang/Object;

    move-object v0, v2

    move-object v2, v0

    monitor-enter v2

    const/4 v2, 0x0

    :try_start_0
    sput-object v2, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzb:Lcom/google/android/gms/common/api/internal/GoogleServices;

    move-object v2, v0

    .line 1
    monitor-exit v2

    return-void

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

.method public static getGoogleAppId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    const-string v0, "getGoogleAppId"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/GoogleServices;->checkInitialized(Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/GoogleServices;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;
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

    const-string v4, "Context must not be null."

    .line 1
    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v3, Lcom/google/android/gms/common/api/internal/GoogleServices;->zza:Ljava/lang/Object;

    move-object v1, v3

    move-object v3, v1

    monitor-enter v3

    :try_start_0
    sget-object v3, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzb:Lcom/google/android/gms/common/api/internal/GoogleServices;

    move-object v2, v3

    move-object v3, v2

    if-nez v3, :cond_0

    new-instance v3, Lcom/google/android/gms/common/api/internal/GoogleServices;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v0

    .line 2
    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/internal/GoogleServices;-><init>(Landroid/content/Context;)V

    move-object v3, v2

    sput-object v3, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzb:Lcom/google/android/gms/common/api/internal/GoogleServices;

    :cond_0
    sget-object v3, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzb:Lcom/google/android/gms/common/api/internal/GoogleServices;

    .line 3
    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzd:Lcom/google/android/gms/common/api/Status;

    move-object v0, v3

    move-object v3, v1

    monitor-exit v3

    move-object v3, v0

    move-object v0, v3

    return-object v0

    :catchall_0
    move-exception v3

    move-object v0, v3

    .line 4
    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    move-object v3, v0

    .line 4
    throw v3
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/Status;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    const-string v5, "Context must not be null."

    .line 5
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v1

    const-string v5, "App ID must be nonempty."

    .line 6
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v4, Lcom/google/android/gms/common/api/internal/GoogleServices;->zza:Ljava/lang/Object;

    move-object v0, v4

    move-object v4, v0

    monitor-enter v4

    :try_start_0
    sget-object v4, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzb:Lcom/google/android/gms/common/api/internal/GoogleServices;

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzb:Lcom/google/android/gms/common/api/internal/GoogleServices;

    move-object v5, v1

    .line 7
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/GoogleServices;->checkGoogleAppId(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object v4

    move-object v1, v4

    move-object v4, v0

    monitor-exit v4

    move-object v4, v1

    move-object v0, v4

    .line 9
    :goto_0
    return-object v0

    .line 7
    :cond_0
    new-instance v4, Lcom/google/android/gms/common/api/internal/GoogleServices;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    move v6, v2

    .line 8
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/api/internal/GoogleServices;-><init>(Ljava/lang/String;Z)V

    move-object v4, v3

    sput-object v4, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzb:Lcom/google/android/gms/common/api/internal/GoogleServices;

    sget-object v4, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzb:Lcom/google/android/gms/common/api/internal/GoogleServices;

    .line 9
    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzd:Lcom/google/android/gms/common/api/Status;

    move-object v1, v4

    move-object v4, v0

    monitor-exit v4

    move-object v4, v1

    move-object v0, v4

    goto :goto_0

    :catchall_0
    move-exception v4

    move-object v1, v4

    .line 10
    move-object v4, v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    move-object v4, v1

    .line 10
    throw v4
.end method

.method public static isMeasurementEnabled()Z
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    const-string v1, "isMeasurementEnabled"

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/GoogleServices;->checkInitialized(Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/GoogleServices;

    move-result-object v1

    move-object v0, v1

    move-object v1, v0

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzd:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/gms/common/api/internal/GoogleServices;->zze:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static isMeasurementExplicitlyDisabled()Z
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    const-string v0, "isMeasurementExplicitlyDisabled"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/GoogleServices;->checkInitialized(Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/GoogleServices;

    move-result-object v0

    .line 2
    iget-boolean v0, v0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzf:Z

    return v0
.end method


# virtual methods
.method checkGoogleAppId(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;
    .locals 7
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzc:Ljava/lang/String;

    move-object v2, v4

    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    move-object v5, v1

    .line 1
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/google/android/gms/common/api/Status;

    move-object v1, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzc:Ljava/lang/String;

    move-object v0, v4

    move-object v4, v0

    .line 2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v3, v4

    move-object v4, v3

    move v5, v2

    const/16 v6, 0x61

    add-int/lit8 v5, v5, 0x61

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v3

    const-string v5, "Initialize was called with two different Google App IDs.  Only the first app ID will be used: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v3

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v1

    const/16 v5, 0xa

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    move-object v4, v1

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    sget-object v4, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    move-object v0, v4

    goto :goto_0
.end method
