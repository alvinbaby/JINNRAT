.class final Lcom/google/android/gms/common/internal/zzq;
.super Lcom/google/android/gms/common/internal/GmsClientSupervisor;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# instance fields
.field private final zza:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/gms/common/internal/zzm;",
            "Lcom/google/android/gms/common/internal/zzo;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "connectionStatus"
    .end annotation
.end field

.field private final zzb:Landroid/content/Context;

.field private final zzc:Landroid/os/Handler;

.field private final zzd:Lcom/google/android/gms/common/stats/ConnectionTracker;

.field private final zze:J

.field private final zzf:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    move-object v1, p0

    move-object v2, p1

    move-object v5, v1

    invoke-direct {v5}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    move-object v3, v5

    move-object v5, v3

    .line 1
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v5, v1

    move-object v6, v3

    iput-object v6, v5, Lcom/google/android/gms/common/internal/zzq;->zza:Ljava/util/HashMap;

    move-object v5, v1

    move-object v6, v2

    .line 2
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/common/internal/zzq;->zzb:Landroid/content/Context;

    new-instance v5, Lcom/google/android/gms/internal/common/zzh;

    move-object v3, v5

    move-object v5, v2

    .line 3
    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    move-object v2, v5

    new-instance v5, Lcom/google/android/gms/common/internal/zzp;

    move-object v4, v5

    move-object v5, v4

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/common/internal/zzp;-><init>(Lcom/google/android/gms/common/internal/zzq;Lcom/google/android/gms/common/internal/zzn;)V

    move-object v5, v3

    move-object v6, v2

    move-object v7, v4

    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/internal/common/zzh;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    move-object v5, v1

    move-object v6, v3

    iput-object v6, v5, Lcom/google/android/gms/common/internal/zzq;->zzc:Landroid/os/Handler;

    move-object v5, v1

    .line 4
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/common/internal/zzq;->zzd:Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-object v5, v1

    const-wide/16 v6, 0x1388

    iput-wide v6, v5, Lcom/google/android/gms/common/internal/zzq;->zze:J

    move-object v5, v1

    const-wide/32 v6, 0x493e0

    iput-wide v6, v5, Lcom/google/android/gms/common/internal/zzq;->zzf:J

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/common/internal/zzq;)Ljava/util/HashMap;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/internal/zzq;->zza:Ljava/util/HashMap;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/common/internal/zzq;)Landroid/os/Handler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/internal/zzq;->zzc:Landroid/os/Handler;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/common/internal/zzq;)Landroid/content/Context;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/internal/zzq;->zzb:Landroid/content/Context;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/common/internal/zzq;)Lcom/google/android/gms/common/stats/ConnectionTracker;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/internal/zzq;->zzd:Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/common/internal/zzq;)J
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/android/gms/common/internal/zzq;->zzf:J

    move-wide v0, v1

    return-wide v0
.end method


# virtual methods
.method protected final zzb(Lcom/google/android/gms/common/internal/zzm;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    .locals 10

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v2

    const-string v7, "ServiceConnection must not be null"

    .line 1
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/internal/zzq;->zza:Ljava/util/HashMap;

    move-object v4, v6

    move-object v6, v4

    monitor-enter v6

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/google/android/gms/common/internal/zzq;->zza:Ljava/util/HashMap;

    move-object v7, v1

    .line 2
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/internal/zzo;

    move-object v5, v6

    move-object v6, v5

    if-nez v6, :cond_0

    new-instance v6, Lcom/google/android/gms/common/internal/zzo;

    move-object v5, v6

    move-object v6, v5

    move-object v7, v0

    move-object v8, v1

    .line 3
    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/common/internal/zzo;-><init>(Lcom/google/android/gms/common/internal/zzq;Lcom/google/android/gms/common/internal/zzm;)V

    move-object v6, v5

    move-object v7, v2

    move-object v8, v2

    move-object v9, v3

    .line 4
    invoke-virtual {v6, v7, v8, v9}, Lcom/google/android/gms/common/internal/zzo;->zzc(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    move-object v6, v5

    move-object v7, v3

    .line 5
    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/internal/zzo;->zza(Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/internal/zzq;->zza:Ljava/util/HashMap;

    move-object v7, v1

    move-object v8, v5

    .line 6
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v6, v5

    move-object v0, v6

    :goto_0
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/gms/common/internal/zzo;->zze()Z

    move-result v6

    move v0, v6

    move-object v6, v4

    .line 13
    monitor-exit v6

    move v6, v0

    move v0, v6

    return v0

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/internal/zzq;->zzc:Landroid/os/Handler;

    const/4 v7, 0x0

    move-object v8, v1

    .line 7
    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    move-object v6, v5

    move-object v7, v2

    .line 8
    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/internal/zzo;->zzg(Landroid/content/ServiceConnection;)Z

    move-result v6

    move v0, v6

    move v6, v0

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v0, v6

    move-object v6, v1

    .line 9
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v2, v6

    add-int/lit8 v2, v2, 0x51

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v3, v6

    move-object v6, v3

    move v7, v2

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v3

    const-string v7, "Trying to bind a GmsServiceConnection that was already connected before.  config="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    throw v6

    .line 12
    :catchall_0
    move-exception v6

    move-object v0, v6

    .line 14
    move-object v6, v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    move-object v6, v0

    .line 14
    throw v6

    .line 9
    :cond_1
    move-object v6, v5

    move-object v7, v2

    move-object v8, v2

    move-object v9, v3

    .line 10
    :try_start_1
    invoke-virtual {v6, v7, v8, v9}, Lcom/google/android/gms/common/internal/zzo;->zzc(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    move-object v6, v5

    invoke-virtual {v6}, Lcom/google/android/gms/common/internal/zzo;->zzf()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    :pswitch_0
    move-object v6, v5

    move-object v7, v3

    .line 11
    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/internal/zzo;->zza(Ljava/lang/String;)V

    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    :pswitch_1
    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v7}, Lcom/google/android/gms/common/internal/zzo;->zzj()Landroid/content/ComponentName;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v8}, Lcom/google/android/gms/common/internal/zzo;->zzi()Landroid/os/IBinder;

    move-result-object v8

    .line 12
    invoke-interface {v6, v7, v8}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v5

    move-object v0, v6

    goto/16 :goto_0

    .line 10
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final zzc(Lcom/google/android/gms/common/internal/zzm;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 12

    .prologue
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, v3

    const-string v9, "ServiceConnection must not be null"

    .line 1
    invoke-static {v8, v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/internal/zzq;->zza:Ljava/util/HashMap;

    move-object v5, v8

    move-object v8, v5

    monitor-enter v8

    move-object v8, v1

    :try_start_0
    iget-object v8, v8, Lcom/google/android/gms/common/internal/zzq;->zza:Ljava/util/HashMap;

    move-object v9, v2

    .line 2
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/common/internal/zzo;

    move-object v6, v8

    move-object v8, v6

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v1, v8

    move-object v8, v2

    .line 3
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    move-object v8, v2

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move v3, v8

    add-int/lit8 v3, v3, 0x32

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v4, v8

    move-object v8, v4

    move v9, v3

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v8, v4

    const-string v9, "Nonexistent connection status for service config: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v8, v4

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v8, v1

    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    throw v8

    .line 10
    :catchall_0
    move-exception v8

    move-object v1, v8

    move-object v8, v5

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v1

    throw v8

    .line 3
    :cond_0
    move-object v8, v6

    move-object v9, v3

    .line 4
    :try_start_1
    invoke-virtual {v8, v9}, Lcom/google/android/gms/common/internal/zzo;->zzg(Landroid/content/ServiceConnection;)Z

    move-result v8

    move v7, v8

    move v8, v7

    if-nez v8, :cond_1

    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v1, v8

    move-object v8, v2

    .line 5
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    move-object v8, v2

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move v3, v8

    add-int/lit8 v3, v3, 0x4c

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v4, v8

    move-object v8, v4

    move v9, v3

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v8, v4

    const-string v9, "Trying to unbind a GmsServiceConnection  that was not bound before.  config="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v8, v4

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v8, v1

    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    throw v8

    :cond_1
    move-object v8, v6

    move-object v9, v3

    move-object v10, v4

    .line 6
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/common/internal/zzo;->zzd(Landroid/content/ServiceConnection;Ljava/lang/String;)V

    move-object v8, v6

    .line 7
    invoke-virtual {v8}, Lcom/google/android/gms/common/internal/zzo;->zzh()Z

    move-result v8

    move v3, v8

    move v8, v3

    if-eqz v8, :cond_2

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/internal/zzq;->zzc:Landroid/os/Handler;

    move-object v3, v8

    move-object v8, v3

    const/4 v9, 0x0

    move-object v10, v2

    .line 8
    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    move-object v2, v8

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/internal/zzq;->zzc:Landroid/os/Handler;

    move-object v9, v2

    move-object v10, v1

    iget-wide v10, v10, Lcom/google/android/gms/common/internal/zzq;->zze:J

    .line 9
    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v8

    :cond_2
    move-object v8, v5

    .line 10
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
