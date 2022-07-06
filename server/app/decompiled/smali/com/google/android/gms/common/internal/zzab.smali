.class final Lcom/google/android/gms/common/internal/zzab;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/IGmsServiceBroker;


# instance fields
.field private final zza:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/internal/zzab;->zza:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/internal/zzab;->zza:Landroid/os/IBinder;

    move-object v0, v1

    return-object v0
.end method

.method public final getService(Lcom/google/android/gms/common/internal/IGmsCallbacks;Lcom/google/android/gms/common/internal/GetServiceRequest;)V
    .locals 10
    .param p2    # Lcom/google/android/gms/common/internal/GetServiceRequest;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v3, v5

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v4, v5

    move-object v5, v3

    :try_start_0
    const-string v6, "com.google.android.gms.common.internal.IGmsServiceBroker"

    .line 3
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object v5, v1

    if-eqz v5, :cond_1

    move-object v5, v1

    .line 4
    invoke-interface {v5}, Lcom/google/android/gms/common/internal/IGmsCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    move-object v1, v5

    :goto_0
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v3

    const/4 v6, 0x1

    .line 5
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    move-object v5, v2

    move-object v6, v3

    const/4 v7, 0x0

    .line 6
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/common/internal/zzl;->zza(Lcom/google/android/gms/common/internal/GetServiceRequest;Landroid/os/Parcel;I)V

    :goto_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/internal/zzab;->zza:Landroid/os/IBinder;

    const/16 v6, 0x2e

    move-object v7, v3

    move-object v8, v4

    const/4 v9, 0x0

    .line 8
    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    move-object v5, v4

    .line 9
    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    .line 10
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v3

    .line 11
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    move-object v5, v3

    const/4 v6, 0x0

    .line 7
    :try_start_1
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    move-object v0, v5

    move-object v5, v4

    .line 10
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v3

    .line 11
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v0

    .line 12
    throw v5

    :cond_1
    const/4 v5, 0x0

    move-object v1, v5

    goto :goto_0
.end method
