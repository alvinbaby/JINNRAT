.class public final Lcom/google/android/gms/common/internal/zzac;
.super Lcom/google/android/gms/internal/common/zza;
.source "com.google.android.gms:play-services-basement@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/zzae;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-string v4, "com.google.android.gms.common.internal.IGoogleCertificatesApi"

    .line 1
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/common/zza;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/common/zzs;Lcom/google/android/gms/dynamic/IObjectWrapper;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    .line 1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/common/zza;->zza()Landroid/os/Parcel;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    .line 2
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/common/zzc;->zzd(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    move-object v4, v3

    move-object v5, v2

    .line 3
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/common/zzc;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    move-object v4, v0

    const/4 v5, 0x5

    move-object v6, v3

    .line 4
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/common/zza;->zzB(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v4

    move-object v0, v4

    move-object v4, v0

    .line 5
    invoke-static {v4}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;)Z

    move-result v4

    move v1, v4

    move-object v4, v0

    .line 6
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    move v4, v1

    move v0, v4

    return v0
.end method

.method public final zzf(Lcom/google/android/gms/common/zzn;)Lcom/google/android/gms/common/zzq;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    .line 1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/common/zza;->zza()Landroid/os/Parcel;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    .line 2
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/common/zzc;->zzd(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    move-object v3, v0

    const/4 v4, 0x6

    move-object v5, v2

    .line 3
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/common/zza;->zzB(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v3

    move-object v0, v3

    sget-object v3, Lcom/google/android/gms/common/zzq;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v1, v3

    move-object v3, v0

    move-object v4, v1

    .line 4
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/common/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v1, v3

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/common/zzq;

    move-object v1, v3

    move-object v3, v0

    .line 5
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method public final zzg()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    const/4 v3, 0x7

    move-object v4, v0

    .line 1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/common/zza;->zza()Landroid/os/Parcel;

    move-result-object v4

    .line 2
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/common/zza;->zzB(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v2

    move-object v0, v2

    move-object v2, v0

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;)Z

    move-result v2

    move v1, v2

    move-object v2, v0

    .line 4
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    move v2, v1

    move v0, v2

    return v0
.end method
