.class final Lcom/google/android/gms/common/api/internal/zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/common/api/internal/zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzd;Lcom/google/android/gms/common/api/internal/LifecycleCallback;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zzc;->zzc:Lcom/google/android/gms/common/api/internal/zzd;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zzc;->zza:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zzc;->zzb:Ljava/lang/String;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zzc;->zzc:Lcom/google/android/gms/common/api/internal/zzd;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zzd;->zzb(Lcom/google/android/gms/common/api/internal/zzd;)I

    move-result v3

    if-lez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zzc;->zza:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zzc;->zzc:Lcom/google/android/gms/common/api/internal/zzd;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zzd;->zzc(Lcom/google/android/gms/common/api/internal/zzd;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zzc;->zzc:Lcom/google/android/gms/common/api/internal/zzd;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zzd;->zzc(Lcom/google/android/gms/common/api/internal/zzd;)Landroid/os/Bundle;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zzc;->zzb:Ljava/lang/String;

    .line 1
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v2

    move-object v4, v1

    .line 2
    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onCreate(Landroid/os/Bundle;)V

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zzc;->zzc:Lcom/google/android/gms/common/api/internal/zzd;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zzd;->zzb(Lcom/google/android/gms/common/api/internal/zzd;)I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zzc;->zza:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onStart()V

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zzc;->zzc:Lcom/google/android/gms/common/api/internal/zzd;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zzd;->zzb(Lcom/google/android/gms/common/api/internal/zzd;)I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zzc;->zza:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onResume()V

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zzc;->zzc:Lcom/google/android/gms/common/api/internal/zzd;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zzd;->zzb(Lcom/google/android/gms/common/api/internal/zzd;)I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zzc;->zza:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onStop()V

    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zzc;->zzc:Lcom/google/android/gms/common/api/internal/zzd;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zzd;->zzb(Lcom/google/android/gms/common/api/internal/zzd;)I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zzc;->zza:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onDestroy()V

    :goto_1
    return-void

    :cond_4
    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    move-object v1, v3

    goto :goto_0
.end method
