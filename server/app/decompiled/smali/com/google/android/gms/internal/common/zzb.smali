.class public Lcom/google/android/gms/internal/common/zzb;
.super Landroid/os/Binder;
.source "com.google.android.gms:play-services-basement@@17.6.0"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    .line 1
    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    .line 2
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/common/zzb;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, v1

    const v6, 0xffffff

    if-le v5, v6, :cond_0

    move-object v5, v0

    move v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    .line 1
    invoke-super {v5, v6, v7, v8, v9}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    move v0, v5

    .line 3
    :goto_0
    return v0

    :cond_0
    move-object v5, v2

    move-object v6, v0

    .line 2
    invoke-virtual {v6}, Lcom/google/android/gms/internal/common/zzb;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1
    :cond_1
    move-object v5, v0

    move v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    .line 3
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/android/gms/internal/common/zzb;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method protected zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    const/4 v5, 0x0

    move v0, v5

    return v0
.end method
