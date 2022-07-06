.class final Lcom/google/android/gms/common/internal/zzp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/common/internal/zzq;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/common/internal/zzq;Lcom/google/android/gms/common/internal/zzn;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/common/internal/zzp;->zza:Lcom/google/android/gms/common/internal/zzq;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 10

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    .line 1
    iget v7, v7, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 8
    const/4 v7, 0x0

    move v0, v7

    .line 14
    :goto_0
    return v0

    .line 1
    :pswitch_0
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/zzp;->zza:Lcom/google/android/gms/common/internal/zzq;

    invoke-static {v7}, Lcom/google/android/gms/common/internal/zzq;->zzd(Lcom/google/android/gms/common/internal/zzq;)Ljava/util/HashMap;

    move-result-object v7

    move-object v2, v7

    move-object v7, v2

    monitor-enter v7

    move-object v7, v1

    .line 9
    :try_start_0
    iget-object v7, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/common/internal/zzm;

    move-object v1, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/zzp;->zza:Lcom/google/android/gms/common/internal/zzq;

    invoke-static {v7}, Lcom/google/android/gms/common/internal/zzq;->zzd(Lcom/google/android/gms/common/internal/zzq;)Ljava/util/HashMap;

    move-result-object v7

    move-object v8, v1

    .line 10
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/internal/zzo;

    move-object v3, v7

    move-object v7, v3

    if-eqz v7, :cond_1

    move-object v7, v3

    .line 11
    invoke-virtual {v7}, Lcom/google/android/gms/common/internal/zzo;->zzh()Z

    move-result v7

    move v4, v7

    move v7, v4

    if-eqz v7, :cond_1

    move-object v7, v3

    invoke-virtual {v7}, Lcom/google/android/gms/common/internal/zzo;->zze()Z

    move-result v7

    move v4, v7

    move v7, v4

    if-eqz v7, :cond_0

    move-object v7, v3

    const-string v8, "GmsClientSupervisor"

    .line 12
    invoke-virtual {v7, v8}, Lcom/google/android/gms/common/internal/zzo;->zzb(Ljava/lang/String;)V

    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/zzp;->zza:Lcom/google/android/gms/common/internal/zzq;

    invoke-static {v7}, Lcom/google/android/gms/common/internal/zzq;->zzd(Lcom/google/android/gms/common/internal/zzq;)Ljava/util/HashMap;

    move-result-object v7

    move-object v8, v1

    .line 13
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :cond_1
    move-object v7, v2

    .line 14
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    :pswitch_1
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/zzp;->zza:Lcom/google/android/gms/common/internal/zzq;

    invoke-static {v7}, Lcom/google/android/gms/common/internal/zzq;->zzd(Lcom/google/android/gms/common/internal/zzq;)Ljava/util/HashMap;

    move-result-object v7

    move-object v2, v7

    move-object v7, v2

    monitor-enter v7

    move-object v7, v1

    .line 2
    :try_start_1
    iget-object v7, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/common/internal/zzm;

    move-object v1, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/zzp;->zza:Lcom/google/android/gms/common/internal/zzq;

    invoke-static {v7}, Lcom/google/android/gms/common/internal/zzq;->zzd(Lcom/google/android/gms/common/internal/zzq;)Ljava/util/HashMap;

    move-result-object v7

    move-object v8, v1

    .line 3
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/internal/zzo;

    move-object v3, v7

    move-object v7, v3

    if-eqz v7, :cond_4

    move-object v7, v3

    invoke-virtual {v7}, Lcom/google/android/gms/common/internal/zzo;->zzf()I

    move-result v7

    move v0, v7

    move v7, v0

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    const-string v7, "GmsClientSupervisor"

    move-object v0, v7

    move-object v7, v1

    .line 4
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    move-object v7, v4

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v5, v7

    add-int/lit8 v5, v5, 0x2f

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v6, v7

    move-object v7, v6

    move v8, v5

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v7, v6

    const-string v8, "Timeout waiting for ServiceConnection callback "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v6

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v6

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    new-instance v7, Ljava/lang/Exception;

    move-object v5, v7

    move-object v7, v5

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    move-object v7, v0

    move-object v8, v4

    move-object v9, v5

    invoke-static {v7, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v7

    move-object v7, v3

    invoke-virtual {v7}, Lcom/google/android/gms/common/internal/zzo;->zzj()Landroid/content/ComponentName;

    move-result-object v7

    move-object v0, v7

    move-object v7, v0

    if-nez v7, :cond_2

    move-object v7, v1

    .line 5
    invoke-virtual {v7}, Lcom/google/android/gms/common/internal/zzm;->zzb()Landroid/content/ComponentName;

    move-result-object v7

    move-object v0, v7

    :cond_2
    move-object v7, v0

    if-nez v7, :cond_3

    new-instance v7, Landroid/content/ComponentName;

    move-object v0, v7

    move-object v7, v1

    .line 6
    invoke-virtual {v7}, Lcom/google/android/gms/common/internal/zzm;->zza()Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    move-object v7, v1

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    move-object v8, v1

    const-string v9, "unknown"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v7, v3

    move-object v8, v0

    .line 7
    invoke-virtual {v7, v8}, Lcom/google/android/gms/common/internal/zzo;->onServiceDisconnected(Landroid/content/ComponentName;)V

    :cond_4
    move-object v7, v2

    .line 8
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    move-object v0, v7

    move-object v7, v2

    .line 14
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v0

    throw v7

    :catchall_1
    move-exception v7

    move-object v0, v7

    .line 8
    move-object v7, v2

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 14
    move-object v7, v0

    .line 8
    throw v7

    .line 1
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
