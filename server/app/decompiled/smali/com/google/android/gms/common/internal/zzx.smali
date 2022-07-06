.class public abstract Lcom/google/android/gms/common/internal/zzx;
.super Lcom/google/android/gms/internal/common/zzb;
.source "com.google.android.gms:play-services-basement@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/zzy;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    move-object v0, p0

    move-object v1, v0

    const-string v2, "com.google.android.gms.common.internal.ICertData"

    .line 1
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/common/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzg(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzy;
    .locals 4

    .prologue
    move-object v0, p0

    move-object v2, v0

    const-string v3, "com.google.android.gms.common.internal.ICertData"

    .line 1
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    .line 2
    instance-of v2, v2, Lcom/google/android/gms/common/internal/zzy;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 3
    check-cast v2, Lcom/google/android/gms/common/internal/zzy;

    move-object v0, v2

    .line 4
    :goto_0
    return-object v0

    .line 3
    :cond_0
    new-instance v2, Lcom/google/android/gms/common/internal/zzw;

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    .line 4
    invoke-direct {v2, v3}, Lcom/google/android/gms/common/internal/zzw;-><init>(Landroid/os/IBinder;)V

    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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

    packed-switch v5, :pswitch_data_0

    .line 2
    const/4 v5, 0x0

    move v0, v5

    .line 5
    :goto_0
    return v0

    .line 4294967295
    :pswitch_0
    move-object v5, v0

    .line 3
    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/zzx;->zzd()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    move-object v0, v5

    move-object v5, v3

    .line 4
    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    move-object v5, v3

    move-object v6, v0

    .line 5
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/common/zzc;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_1
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    :pswitch_1
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/zzx;->zze()I

    move-result v5

    move v0, v5

    move-object v5, v3

    .line 1
    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    move-object v5, v3

    move v6, v0

    .line 2
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
