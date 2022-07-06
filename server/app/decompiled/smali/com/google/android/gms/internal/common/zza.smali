.class public Lcom/google/android/gms/internal/common/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field private final zza:Landroid/os/IBinder;

.field private final zzb:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/internal/common/zza;->zza:Landroid/os/IBinder;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/internal/common/zza;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/internal/common/zza;->zza:Landroid/os/IBinder;

    move-object v0, v1

    return-object v0
.end method

.method protected final zzB(ILandroid/os/Parcel;)Landroid/os/Parcel;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/android/gms/internal/common/zza;->zza:Landroid/os/IBinder;

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    .line 2
    invoke-interface {v4, v5, v6, v7, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    move-object v4, v3

    .line 3
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v2

    .line 6
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    move-object v4, v3

    move-object v0, v4

    return-object v0

    :catchall_0
    move-exception v4

    move-object v0, v4

    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    move-object v4, v0

    .line 7
    throw v4

    .line 5
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 7
    move-object v4, v3

    .line 4
    :try_start_1
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    move-object v4, v0

    .line 5
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method protected final zzC(ILandroid/os/Parcel;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/android/gms/internal/common/zza;->zza:Landroid/os/IBinder;

    const/4 v4, 0x2

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1
    invoke-interface {v3, v4, v5, v6, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 3
    move-object v3, v2

    .line 2
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1
    :catchall_0
    move-exception v3

    move-object v0, v3

    move-object v3, v2

    .line 2
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    move-object v3, v0

    .line 3
    throw v3
.end method

.method protected final zzD(ILandroid/os/Parcel;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    move-object v1, v3

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/android/gms/internal/common/zza;->zza:Landroid/os/IBinder;

    const/4 v4, 0x1

    move-object v5, v2

    move-object v6, v1

    const/4 v7, 0x0

    .line 2
    invoke-interface {v3, v4, v5, v6, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    move-object v3, v1

    .line 3
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    move-object v3, v2

    .line 4
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    move-object v3, v1

    .line 5
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3
    :catchall_0
    move-exception v3

    move-object v0, v3

    move-object v3, v2

    .line 4
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    move-object v3, v1

    .line 5
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    move-object v3, v0

    .line 6
    throw v3
.end method

.method protected final zza()Landroid/os/Parcel;
    .locals 4

    .prologue
    .line 1
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/internal/common/zza;->zzb:Ljava/lang/String;

    .line 2
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method
