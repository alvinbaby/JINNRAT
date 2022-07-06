.class public abstract Lcom/google/android/gms/common/internal/zzaa;
.super Lcom/google/android/gms/internal/common/zzb;
.source "com.google.android.gms:play-services-basement@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/IGmsCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    move-object v0, p0

    move-object v1, v0

    const-string v2, "com.google.android.gms.common.internal.IGmsCallbacks"

    .line 1
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/common/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    packed-switch v5, :pswitch_data_0

    .line 7
    const/4 v5, 0x0

    move v0, v5

    .line 12
    :goto_0
    return v0

    .line 4294967295
    :pswitch_0
    move-object v5, v0

    move-object v6, v2

    .line 8
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v7, v2

    .line 9
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    move-object v8, v2

    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/common/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 11
    invoke-virtual {v5, v6, v7, v8}, Lcom/google/android/gms/common/internal/zzaa;->onPostInitComplete(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    :goto_1
    move-object v5, v3

    .line 12
    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    :pswitch_1
    move-object v5, v0

    move-object v6, v2

    .line 1
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v7, v2

    .line 2
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    move-object v8, v2

    sget-object v9, Lcom/google/android/gms/common/internal/zzi;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/common/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/common/internal/zzi;

    .line 4
    invoke-virtual {v5, v6, v7, v8}, Lcom/google/android/gms/common/internal/zzaa;->zzc(ILandroid/os/IBinder;Lcom/google/android/gms/common/internal/zzi;)V

    goto :goto_1

    :pswitch_2
    move-object v5, v0

    move-object v6, v2

    .line 5
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v7, v2

    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/common/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 7
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/common/internal/zzaa;->zzb(ILandroid/os/Bundle;)V

    goto :goto_1

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
