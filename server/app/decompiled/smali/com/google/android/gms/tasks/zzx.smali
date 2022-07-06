.class final Lcom/google/android/gms/tasks/zzx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@17.2.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tasks/zzw;

.field final synthetic zzb:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/zzw;Ljava/util/concurrent/Callable;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/tasks/zzx;->zza:Lcom/google/android/gms/tasks/zzw;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/tasks/zzx;->zzb:Ljava/util/concurrent/Callable;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/android/gms/tasks/zzx;->zza:Lcom/google/android/gms/tasks/zzw;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/tasks/zzx;->zzb:Ljava/util/concurrent/Callable;

    .line 1
    invoke-interface {v4}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/zzw;->zza(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :goto_0
    return-void

    .line 1
    :catch_0
    move-exception v3

    move-object v1, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/tasks/zzx;->zza:Lcom/google/android/gms/tasks/zzw;

    move-object v4, v1

    .line 3
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/zzw;->zzc(Ljava/lang/Exception;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    move-object v1, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/tasks/zzx;->zza:Lcom/google/android/gms/tasks/zzw;

    move-object v0, v3

    new-instance v3, Ljava/lang/RuntimeException;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    .line 2
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/zzw;->zzc(Ljava/lang/Exception;)V

    goto :goto_0
.end method
