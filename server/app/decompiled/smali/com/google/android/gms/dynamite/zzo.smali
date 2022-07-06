.class public final Lcom/google/android/gms/dynamite/zzo;
.super Lcom/google/android/gms/internal/common/zza;
.source "com.google.android.gms:play-services-basement@@17.6.0"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-string v4, "com.google.android.gms.dynamite.IDynamiteLoader"

    .line 1
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/common/zza;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;I)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    .line 1
    invoke-virtual {v5}, Lcom/google/android/gms/internal/common/zza;->zza()Landroid/os/Parcel;

    move-result-object v5

    move-object v4, v5

    move-object v5, v4

    move-object v6, v1

    .line 2
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/common/zzc;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    move-object v5, v4

    move-object v6, v2

    .line 3
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v5, v4

    move v6, v3

    .line 4
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    move-object v5, v0

    const/4 v6, 0x2

    move-object v7, v4

    .line 5
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/common/zza;->zzB(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v5

    move-object v0, v5

    move-object v5, v0

    .line 6
    invoke-virtual {v5}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    move-object v1, v5

    move-object v5, v1

    invoke-static {v5}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    move-object v1, v5

    move-object v5, v0

    .line 7
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v1

    move-object v0, v5

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Z)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    .line 1
    invoke-virtual {v5}, Lcom/google/android/gms/internal/common/zza;->zza()Landroid/os/Parcel;

    move-result-object v5

    move-object v4, v5

    move-object v5, v4

    move-object v6, v1

    .line 2
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/common/zzc;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    move-object v5, v4

    move-object v6, v2

    .line 3
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v5, v4

    move v6, v3

    .line 4
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;Z)V

    move-object v5, v0

    const/4 v6, 0x3

    move-object v7, v4

    .line 5
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/common/zza;->zzB(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v5

    move-object v0, v5

    move-object v5, v0

    .line 6
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move v1, v5

    move-object v5, v0

    .line 7
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move v5, v1

    move v0, v5

    return v0
.end method

.method public final zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;I)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    .line 1
    invoke-virtual {v5}, Lcom/google/android/gms/internal/common/zza;->zza()Landroid/os/Parcel;

    move-result-object v5

    move-object v4, v5

    move-object v5, v4

    move-object v6, v1

    .line 2
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/common/zzc;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    move-object v5, v4

    move-object v6, v2

    .line 3
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v5, v4

    move v6, v3

    .line 4
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    move-object v5, v0

    const/4 v6, 0x4

    move-object v7, v4

    .line 5
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/common/zza;->zzB(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v5

    move-object v0, v5

    move-object v5, v0

    .line 6
    invoke-virtual {v5}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    move-object v1, v5

    move-object v5, v1

    invoke-static {v5}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    move-object v1, v5

    move-object v5, v0

    .line 7
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v1

    move-object v0, v5

    return-object v0
.end method

.method public final zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Z)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    .line 1
    invoke-virtual {v5}, Lcom/google/android/gms/internal/common/zza;->zza()Landroid/os/Parcel;

    move-result-object v5

    move-object v4, v5

    move-object v5, v4

    move-object v6, v1

    .line 2
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/common/zzc;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    move-object v5, v4

    move-object v6, v2

    .line 3
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v5, v4

    move v6, v3

    .line 4
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;Z)V

    move-object v5, v0

    const/4 v6, 0x5

    move-object v7, v4

    .line 5
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/common/zza;->zzB(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v5

    move-object v0, v5

    move-object v5, v0

    .line 6
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move v1, v5

    move-object v5, v0

    .line 7
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move v5, v1

    move v0, v5

    return v0
.end method

.method public final zzi()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    const/4 v3, 0x6

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
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move v1, v2

    move-object v2, v0

    .line 4
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    move v2, v1

    move v0, v2

    return v0
.end method

.method public final zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ZJ)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v7, v0

    .line 1
    invoke-virtual {v7}, Lcom/google/android/gms/internal/common/zza;->zza()Landroid/os/Parcel;

    move-result-object v7

    move-object v6, v7

    move-object v7, v6

    move-object v8, v1

    .line 2
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/common/zzc;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    move-object v7, v6

    move-object v8, v2

    .line 3
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v7, v6

    move v8, v3

    .line 4
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;Z)V

    move-object v7, v6

    move-wide v8, v4

    .line 5
    invoke-virtual {v7, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    move-object v7, v0

    const/4 v8, 0x7

    move-object v9, v6

    .line 6
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/common/zza;->zzB(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v7

    move-object v0, v7

    move-object v7, v0

    .line 7
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    move-object v1, v7

    move-object v7, v1

    invoke-static {v7}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v7

    move-object v1, v7

    move-object v7, v0

    .line 8
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    move-object v7, v1

    move-object v0, v7

    return-object v0
.end method

.method public final zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, v0

    .line 1
    invoke-virtual {v6}, Lcom/google/android/gms/internal/common/zza;->zza()Landroid/os/Parcel;

    move-result-object v6

    move-object v5, v6

    move-object v6, v5

    move-object v7, v1

    .line 2
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/common/zzc;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    move-object v6, v5

    move-object v7, v2

    .line 3
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v6, v5

    move v7, v3

    .line 4
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    move-object v6, v5

    move-object v7, v4

    .line 5
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/common/zzc;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    move-object v6, v0

    const/16 v7, 0x8

    move-object v8, v5

    .line 6
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/common/zza;->zzB(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v6

    move-object v0, v6

    move-object v6, v0

    .line 7
    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object v1, v6

    move-object v6, v1

    invoke-static {v6}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v6

    move-object v1, v6

    move-object v6, v0

    .line 8
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v6, v1

    move-object v0, v6

    return-object v0
.end method
