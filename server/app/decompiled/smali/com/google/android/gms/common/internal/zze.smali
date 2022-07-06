.class public final Lcom/google/android/gms/common/internal/zze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

.field private final zzb:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;I)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/common/internal/zze;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/android/gms/common/internal/zze;->zzb:I

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v2

    if-nez v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/internal/zze;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    const/16 v7, 0x10

    .line 1
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc(Lcom/google/android/gms/common/internal/BaseGmsClient;I)V

    .line 8
    :goto_0
    return-void

    .line 1
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/internal/zze;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v6}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd(Lcom/google/android/gms/common/internal/BaseGmsClient;)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    move-object v6, v3

    monitor-enter v6

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/google/android/gms/common/internal/zze;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    move-object v4, v6

    move-object v6, v2

    const-string v7, "com.google.android.gms.common.internal.IGmsServiceBroker"

    .line 2
    invoke-interface {v6, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v6

    move-object v1, v6

    move-object v6, v1

    if-eqz v6, :cond_1

    move-object v6, v1

    .line 3
    instance-of v6, v6, Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    move v5, v6

    move v6, v5

    if-eqz v6, :cond_1

    move-object v6, v1

    .line 5
    check-cast v6, Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    move-object v1, v6

    :goto_1
    move-object v6, v4

    move-object v7, v1

    .line 6
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zze(Lcom/google/android/gms/common/internal/BaseGmsClient;Lcom/google/android/gms/common/internal/IGmsServiceBroker;)Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    move-result-object v6

    move-object v6, v3

    .line 7
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/internal/zze;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Lcom/google/android/gms/common/internal/zze;->zzb:I

    .line 8
    invoke-virtual {v6, v7, v8, v9}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb(ILandroid/os/Bundle;I)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v6, Lcom/google/android/gms/common/internal/zzab;

    move-object v1, v6

    move-object v6, v1

    move-object v7, v2

    .line 4
    invoke-direct {v6, v7}, Lcom/google/android/gms/common/internal/zzab;-><init>(Landroid/os/IBinder;)V

    goto :goto_1

    :catchall_0
    move-exception v6

    move-object v0, v6

    .line 7
    move-object v6, v3

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    move-object v6, v0

    .line 7
    throw v6
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 7

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/internal/zze;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd(Lcom/google/android/gms/common/internal/BaseGmsClient;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    monitor-enter v2

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/android/gms/common/internal/zze;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    const/4 v3, 0x0

    .line 1
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zze(Lcom/google/android/gms/common/internal/BaseGmsClient;Lcom/google/android/gms/common/internal/IGmsServiceBroker;)Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    move-result-object v2

    move-object v2, v1

    .line 2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/internal/zze;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget-object v2, v2, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb:Landroid/os/Handler;

    move-object v1, v2

    move-object v2, v1

    move-object v3, v1

    const/4 v4, 0x6

    move-object v5, v0

    iget v5, v5, Lcom/google/android/gms/common/internal/zze;->zzb:I

    const/4 v6, 0x1

    .line 3
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 4
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    return-void

    :catchall_0
    move-exception v2

    move-object v0, v2

    .line 2
    move-object v2, v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    move-object v2, v0

    .line 2
    throw v2
.end method
