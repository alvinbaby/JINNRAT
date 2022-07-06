.class final Lcom/google/android/gms/common/internal/zzb;
.super Lcom/google/android/gms/internal/common/zzh;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/common/internal/BaseGmsClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;Landroid/os/Looper;)V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    move-object v3, v0

    move-object v4, v2

    .line 1
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/common/zzh;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private static final zza(Landroid/os/Message;)V
    .locals 2

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/common/internal/zzc;

    move-object v0, v1

    move-object v1, v0

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzc;->zzc()V

    move-object v1, v0

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzc;->zzf()V

    return-void
.end method

.method private static final zzb(Landroid/os/Message;)Z
    .locals 3

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    iget v1, v1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Landroid/os/Message;->what:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget-object v4, v4, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    move-object v5, v1

    iget v5, v5, Landroid/os/Message;->arg1:I

    if-eq v4, v5, :cond_1

    move-object v4, v1

    .line 2
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzb;->zzb(Landroid/os/Message;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    .line 3
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzb;->zza(Landroid/os/Message;)V

    .line 34
    :goto_0
    return-void

    .line 3
    :cond_0
    goto :goto_0

    :cond_1
    move-object v4, v1

    .line 4
    iget v4, v4, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    move-object v4, v1

    iget v4, v4, Landroid/os/Message;->what:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_3

    move-object v4, v1

    iget v4, v4, Landroid/os/Message;->what:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 5
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->enableLocalFallback()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move-object v4, v1

    iget v4, v4, Landroid/os/Message;->what:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnecting()Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_4
    move-object v4, v1

    .line 7
    iget v4, v4, Landroid/os/Message;->what:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_8

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    move-object v2, v4

    new-instance v4, Lcom/google/android/gms/common/ConnectionResult;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    .line 8
    iget v5, v5, Landroid/os/Message;->arg2:I

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    move-object v4, v2

    move-object v5, v3

    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzf(Lcom/google/android/gms/common/internal/BaseGmsClient;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 9
    invoke-static {v4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzg(Lcom/google/android/gms/common/internal/BaseGmsClient;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzh(Lcom/google/android/gms/common/internal/BaseGmsClient;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_5
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzj(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v4

    if-eqz v4, :cond_6

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzj(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v4

    move-object v1, v4

    :goto_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget-object v4, v4, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    move-object v5, v1

    .line 11
    invoke-interface {v4, v5}, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;->onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    move-object v5, v1

    .line 12
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_6
    new-instance v4, Lcom/google/android/gms/common/ConnectionResult;

    move-object v1, v4

    move-object v4, v1

    const/16 v5, 0x8

    .line 10
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    goto :goto_1

    :cond_7
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 13
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzi(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IInterface;)V

    goto/16 :goto_0

    :cond_8
    move-object v4, v1

    .line 14
    iget v4, v4, Landroid/os/Message;->what:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_a

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzj(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v4

    if-eqz v4, :cond_9

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzj(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v4

    move-object v1, v4

    :goto_2
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget-object v4, v4, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    move-object v5, v1

    .line 16
    invoke-interface {v4, v5}, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;->onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    move-object v5, v1

    .line 17
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto/16 :goto_0

    :cond_9
    new-instance v4, Lcom/google/android/gms/common/ConnectionResult;

    move-object v1, v4

    move-object v4, v1

    const/16 v5, 0x8

    .line 15
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    goto :goto_2

    :cond_a
    move-object v4, v1

    .line 18
    iget v4, v4, Landroid/os/Message;->what:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_c

    move-object v4, v1

    .line 19
    iget-object v4, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Landroid/app/PendingIntent;

    if-eqz v4, :cond_b

    move-object v4, v1

    iget-object v4, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/PendingIntent;

    move-object v2, v4

    :goto_3
    new-instance v4, Lcom/google/android/gms/common/ConnectionResult;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    .line 20
    iget v5, v5, Landroid/os/Message;->arg2:I

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget-object v4, v4, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    move-object v5, v3

    .line 21
    invoke-interface {v4, v5}, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;->onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    move-object v5, v3

    .line 22
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto/16 :goto_0

    :cond_b
    const/4 v4, 0x0

    move-object v2, v4

    goto :goto_3

    :cond_c
    move-object v4, v1

    .line 23
    iget v4, v4, Landroid/os/Message;->what:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_e

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    const/4 v5, 0x5

    const/4 v6, 0x0

    .line 24
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzi(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IInterface;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    move-result-object v4

    if-eqz v4, :cond_d

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    move-result-object v4

    move-object v5, v1

    .line 25
    iget v5, v5, Landroid/os/Message;->arg2:I

    invoke-interface {v4, v5}, Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;->onConnectionSuspended(I)V

    :cond_d
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    move-object v5, v1

    .line 26
    iget v5, v5, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionSuspended(I)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 27
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzl(Lcom/google/android/gms/common/internal/BaseGmsClient;IILandroid/os/IInterface;)Z

    move-result v4

    goto/16 :goto_0

    :cond_e
    move-object v4, v1

    .line 28
    iget v4, v4, Landroid/os/Message;->what:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_f

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_f
    move-object v4, v1

    .line 29
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzb;->zzb(Landroid/os/Message;)Z

    move-result v4

    if-eqz v4, :cond_10

    move-object v4, v1

    .line 30
    iget-object v4, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/common/internal/zzc;

    .line 31
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/zzc;->zze()V

    goto/16 :goto_0

    :cond_10
    move-object v4, v1

    .line 32
    iget v4, v4, Landroid/os/Message;->what:I

    move v0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v1, v4

    move-object v4, v1

    const/16 v5, 0x2d

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v1

    const-string v5, "Don\'t know how to handle message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v1

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    new-instance v4, Ljava/lang/Exception;

    move-object v1, v4

    move-object v4, v1

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    const-string v4, "GmsClient"

    move-object v5, v0

    move-object v6, v1

    invoke-static {v4, v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    goto/16 :goto_0

    :cond_11
    move-object v4, v1

    .line 33
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzb;->zza(Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_12
    move-object v4, v1

    .line 34
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzb;->zza(Landroid/os/Message;)V

    goto/16 :goto_0
.end method
