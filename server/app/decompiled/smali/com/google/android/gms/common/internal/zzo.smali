.class final Lcom/google/android/gms/common/internal/zzo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/google/android/gms/common/internal/zzr;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/common/internal/zzq;

.field private final zzb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ServiceConnection;",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private zzc:I

.field private zzd:Z

.field private zze:Landroid/os/IBinder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzf:Lcom/google/android/gms/common/internal/zzm;

.field private zzg:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzq;Lcom/google/android/gms/common/internal/zzm;)V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/common/internal/zzo;->zzf:Lcom/google/android/gms/common/internal/zzm;

    new-instance v3, Ljava/util/HashMap;

    move-object v1, v3

    move-object v3, v1

    .line 1
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/Map;

    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Lcom/google/android/gms/common/internal/zzo;->zzc:I

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    invoke-static {v6}, Lcom/google/android/gms/common/internal/zzq;->zzd(Lcom/google/android/gms/common/internal/zzq;)Ljava/util/HashMap;

    move-result-object v6

    move-object v3, v6

    move-object v6, v3

    monitor-enter v6

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    invoke-static {v6}, Lcom/google/android/gms/common/internal/zzq;->zze(Lcom/google/android/gms/common/internal/zzq;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x1

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/internal/zzo;->zzf:Lcom/google/android/gms/common/internal/zzm;

    .line 1
    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/google/android/gms/common/internal/zzo;->zze:Landroid/os/IBinder;

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/google/android/gms/common/internal/zzo;->zzg:Landroid/content/ComponentName;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    move v5, v6

    move v6, v5

    if-eqz v6, :cond_0

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ServiceConnection;

    move-object v7, v1

    move-object v8, v2

    .line 3
    invoke-interface {v6, v7, v8}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    move-object v6, v0

    const/4 v7, 0x1

    iput v7, v6, Lcom/google/android/gms/common/internal/zzo;->zzc:I

    move-object v6, v3

    .line 4
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v6

    move-object v0, v6

    move-object v6, v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v0

    throw v6
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 8

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/zzq;->zzd(Lcom/google/android/gms/common/internal/zzq;)Ljava/util/HashMap;

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    monitor-enter v5

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/zzq;->zze(Lcom/google/android/gms/common/internal/zzq;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/zzo;->zzf:Lcom/google/android/gms/common/internal/zzm;

    .line 1
    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/google/android/gms/common/internal/zzo;->zze:Landroid/os/IBinder;

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/android/gms/common/internal/zzo;->zzg:Landroid/content/ComponentName;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    move v4, v5

    move v5, v4

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ServiceConnection;

    move-object v6, v1

    .line 3
    invoke-interface {v5, v6}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_0
    move-object v5, v0

    const/4 v6, 0x2

    iput v6, v5, Lcom/google/android/gms/common/internal/zzo;->zzc:I

    move-object v5, v2

    .line 4
    monitor-exit v5

    return-void

    :catchall_0
    move-exception v5

    move-object v0, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v0

    throw v5
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 10

    .prologue
    move-object v1, p0

    move-object v2, p1

    move-object v4, v1

    const/4 v5, 0x3

    iput v5, v4, Lcom/google/android/gms/common/internal/zzo;->zzc:I

    move-object v4, v1

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzq;->zzg(Lcom/google/android/gms/common/internal/zzq;)Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v4

    move-object v5, v1

    iget-object v5, v5, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/zzq;->zzf(Lcom/google/android/gms/common/internal/zzq;)Landroid/content/Context;

    move-result-object v5

    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/gms/common/internal/zzo;->zzf:Lcom/google/android/gms/common/internal/zzm;

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    invoke-static {v8}, Lcom/google/android/gms/common/internal/zzq;->zzf(Lcom/google/android/gms/common/internal/zzq;)Landroid/content/Context;

    move-result-object v8

    .line 1
    invoke-virtual {v7, v8}, Lcom/google/android/gms/common/internal/zzm;->zzd(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v7

    move-object v8, v1

    move-object v9, v1

    iget-object v9, v9, Lcom/google/android/gms/common/internal/zzo;->zzf:Lcom/google/android/gms/common/internal/zzm;

    invoke-virtual {v9}, Lcom/google/android/gms/common/internal/zzm;->zzc()I

    move-result v9

    .line 2
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/common/stats/ConnectionTracker;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    move v2, v4

    move-object v4, v1

    move v5, v2

    iput-boolean v5, v4, Lcom/google/android/gms/common/internal/zzo;->zzd:Z

    move v4, v2

    if-eqz v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    move-object v2, v4

    move-object v4, v2

    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzq;->zze(Lcom/google/android/gms/common/internal/zzq;)Landroid/os/Handler;

    move-result-object v4

    move-object v2, v4

    move-object v4, v1

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzo;->zzf:Lcom/google/android/gms/common/internal/zzm;

    move-object v3, v4

    move-object v4, v2

    const/4 v5, 0x1

    move-object v6, v3

    .line 3
    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object v2, v4

    move-object v4, v1

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzq;->zze(Lcom/google/android/gms/common/internal/zzq;)Landroid/os/Handler;

    move-result-object v4

    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    invoke-static {v6}, Lcom/google/android/gms/common/internal/zzq;->zzh(Lcom/google/android/gms/common/internal/zzq;)J

    move-result-wide v6

    .line 4
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v4

    .line 5
    :goto_0
    return-void

    .line 4
    :cond_0
    move-object v4, v1

    const/4 v5, 0x2

    iput v5, v4, Lcom/google/android/gms/common/internal/zzo;->zzc:I

    move-object v4, v1

    :try_start_0
    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzq;->zzg(Lcom/google/android/gms/common/internal/zzq;)Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v4

    move-object v5, v1

    iget-object v5, v5, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/zzq;->zzf(Lcom/google/android/gms/common/internal/zzq;)Landroid/content/Context;

    move-result-object v5

    move-object v6, v1

    .line 5
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public final zzb(Ljava/lang/String;)V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzq;->zze(Lcom/google/android/gms/common/internal/zzq;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzo;->zzf:Lcom/google/android/gms/common/internal/zzm;

    .line 1
    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzq;->zzg(Lcom/google/android/gms/common/internal/zzq;)Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzq;->zzf(Lcom/google/android/gms/common/internal/zzq;)Landroid/content/Context;

    move-result-object v3

    move-object v4, v0

    .line 2
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/android/gms/common/internal/zzo;->zzd:Z

    move-object v2, v0

    const/4 v3, 0x2

    iput v3, v2, Lcom/google/android/gms/common/internal/zzo;->zzc:I

    return-void
.end method

.method public final zzc(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 7

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/Map;

    move-object v5, v1

    move-object v6, v2

    .line 1
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-void
.end method

.method public final zzd(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/Map;

    move-object v4, v1

    .line 1
    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-void
.end method

.method public final zze()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/gms/common/internal/zzo;->zzd:Z

    move v0, v1

    return v0
.end method

.method public final zzf()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/android/gms/common/internal/zzo;->zzc:I

    move v0, v1

    return v0
.end method

.method public final zzg(Landroid/content/ServiceConnection;)Z
    .locals 4

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/Map;

    move-object v3, v1

    .line 1
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public final zzh()Z
    .locals 2

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/Map;

    .line 1
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public final zzi()Landroid/os/IBinder;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/internal/zzo;->zze:Landroid/os/IBinder;

    move-object v0, v1

    return-object v0
.end method

.method public final zzj()Landroid/content/ComponentName;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/internal/zzo;->zzg:Landroid/content/ComponentName;

    move-object v0, v1

    return-object v0
.end method
