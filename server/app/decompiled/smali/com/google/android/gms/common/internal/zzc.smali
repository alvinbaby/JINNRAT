.class public abstract Lcom/google/android/gms/common/internal/zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private zza:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT",
            "Listener;"
        }
    .end annotation
.end field

.field private zzb:Z

.field final synthetic zzd:Lcom/google/android/gms/common/internal/BaseGmsClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/common/internal/zzc;->zzd:Lcom/google/android/gms/common/internal/BaseGmsClient;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/common/internal/zzc;->zza:Ljava/lang/Object;

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/android/gms/common/internal/zzc;->zzb:Z

    return-void
.end method


# virtual methods
.method protected abstract zzc()V
.end method

.method protected abstract zzd(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation
.end method

.method public final zze()V
    .locals 8

    .prologue
    move-object v0, p0

    move-object v6, v0

    monitor-enter v6

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/google/android/gms/common/internal/zzc;->zza:Ljava/lang/Object;

    move-object v1, v6

    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/android/gms/common/internal/zzc;->zzb:Z

    move v2, v6

    move v6, v2

    if-eqz v6, :cond_0

    const-string v6, "GmsClient"

    move-object v2, v6

    move-object v6, v0

    .line 1
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    move-object v6, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v4, v6

    add-int/lit8 v4, v4, 0x2f

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v5, v6

    move-object v6, v5

    move v7, v4

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v5

    const-string v7, "Callback proxy "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v5

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v5

    const-string v7, " being reused. This is not safe."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    :cond_0
    move-object v6, v0

    .line 2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v1

    if-eqz v6, :cond_1

    move-object v6, v0

    move-object v7, v1

    .line 3
    :try_start_1
    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/internal/zzc;->zzd(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    move-object v6, v0

    monitor-enter v6

    move-object v6, v0

    const/4 v7, 0x1

    :try_start_2
    iput-boolean v7, v6, Lcom/google/android/gms/common/internal/zzc;->zzb:Z

    move-object v6, v0

    .line 5
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v6, v0

    .line 6
    invoke-virtual {v6}, Lcom/google/android/gms/common/internal/zzc;->zzf()V

    return-void

    :catchall_0
    move-exception v6

    move-object v1, v6

    move-object v6, v0

    .line 2
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v6, v1

    throw v6

    :catch_0
    move-exception v6

    move-object v0, v6

    move-object v6, v0

    .line 4
    throw v6

    :catchall_1
    move-exception v6

    move-object v1, v6

    .line 5
    move-object v6, v0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4
    move-object v6, v1

    .line 5
    throw v6
.end method

.method public final zzf()V
    .locals 4

    .prologue
    move-object v0, p0

    move-object v2, v0

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzc;->zzg()V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/internal/zzc;->zzd:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzm(Lcom/google/android/gms/common/internal/BaseGmsClient;)Ljava/util/ArrayList;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    monitor-enter v2

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/android/gms/common/internal/zzc;->zzd:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzm(Lcom/google/android/gms/common/internal/BaseGmsClient;)Ljava/util/ArrayList;

    move-result-object v2

    move-object v3, v0

    .line 2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    .line 3
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v2

    move-object v0, v2

    move-object v2, v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    throw v2
.end method

.method public final zzg()V
    .locals 4

    .prologue
    move-object v0, p0

    move-object v2, v0

    monitor-enter v2

    move-object v2, v0

    const/4 v3, 0x0

    :try_start_0
    iput-object v3, v2, Lcom/google/android/gms/common/internal/zzc;->zza:Ljava/lang/Object;

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
