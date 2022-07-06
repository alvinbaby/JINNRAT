.class public abstract Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;
.super Lcom/google/android/gms/internal/common/zzb;
.source "com.google.android.gms:play-services-basement@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/dynamic/IFragmentWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/dynamic/IFragmentWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    move-object v0, p0

    move-object v1, v0

    const-string v2, "com.google.android.gms.dynamic.IFragmentWrapper"

    .line 1
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/common/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IFragmentWrapper;
    .locals 4
    .param p0    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    .line 4
    :goto_0
    return-object v0

    .line 4294967295
    :cond_0
    move-object v2, v0

    const-string v3, "com.google.android.gms.dynamic.IFragmentWrapper"

    .line 1
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    .line 2
    instance-of v2, v2, Lcom/google/android/gms/dynamic/IFragmentWrapper;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 3
    check-cast v2, Lcom/google/android/gms/dynamic/IFragmentWrapper;

    move-object v0, v2

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/gms/dynamic/zza;

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    .line 4
    invoke-direct {v2, v3}, Lcom/google/android/gms/dynamic/zza;-><init>(Landroid/os/IBinder;)V

    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p2    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
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

    .line 76
    const/4 v5, 0x0

    move v0, v5

    :goto_0
    return v0

    .line 4294967295
    :pswitch_0
    move-object v5, v0

    move-object v6, v2

    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/common/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    move-object v7, v2

    .line 5
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 6
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzz(Landroid/content/Intent;I)V

    move-object v5, v3

    .line 7
    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    :goto_1
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    :pswitch_1
    move-object v5, v0

    move-object v6, v2

    .line 1
    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v6

    .line 2
    invoke-virtual {v5, v6}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzA(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    move-object v5, v3

    .line 3
    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_2
    move-object v5, v0

    move-object v6, v2

    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/common/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 9
    invoke-virtual {v5, v6}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzy(Landroid/content/Intent;)V

    move-object v5, v3

    .line 10
    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_3
    move-object v5, v0

    .line 77
    invoke-virtual {v5}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzb()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    move-object v0, v5

    move-object v5, v3

    .line 78
    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    move-object v5, v3

    move-object v6, v0

    .line 79
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/common/zzc;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_1

    :pswitch_4
    move-object v5, v0

    move-object v6, v2

    .line 11
    invoke-static {v6}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;)Z

    move-result v6

    .line 12
    invoke-virtual {v5, v6}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzx(Z)V

    move-object v5, v3

    .line 13
    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_5
    move-object v5, v0

    move-object v6, v2

    .line 14
    invoke-static {v6}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;)Z

    move-result v6

    .line 15
    invoke-virtual {v5, v6}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzw(Z)V

    move-object v5, v3

    .line 16
    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_6
    move-object v5, v0

    move-object v6, v2

    .line 17
    invoke-static {v6}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;)Z

    move-result v6

    .line 18
    invoke-virtual {v5, v6}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzv(Z)V

    move-object v5, v3

    .line 19
    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_7
    move-object v5, v0

    move-object v6, v2

    .line 20
    invoke-static {v6}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;)Z

    move-result v6

    .line 21
    invoke-virtual {v5, v6}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzu(Z)V

    move-object v5, v3

    .line 22
    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_8
    move-object v5, v0

    move-object v6, v2

    .line 23
    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v6

    .line 24
    invoke-virtual {v5, v6}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzt(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    move-object v5, v3

    .line 25
    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_9
    move-object v5, v0

    .line 26
    invoke-virtual {v5}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzs()Z

    move-result v5

    move v0, v5

    move-object v5, v3

    .line 27
    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    move-object v5, v3

    move v6, v0

    .line 28
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;Z)V

    goto/16 :goto_1

    :pswitch_a
    move-object v5, v0

    .line 29
    invoke-virtual {v5}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzr()Z

    move-result v5

    move v0, v5

    move-object v5, v3

    .line 30
    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    move-object v5, v3

    move v6, v0

    .line 31
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;Z)V

    goto/16 :goto_1

    :pswitch_b
    move-object v5, v0

    .line 32
    invoke-virtual {v5}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzq()Z

    move-result v5

    move v0, v5

    move-object v5, v3

    .line 33
    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    move-object v5, v3

    move v6, v0

    .line 34
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;Z)V

    goto/16 :goto_1

    :pswitch_c
    move-object v5, v0

    .line 35
    invoke-virtual {v5}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzp()Z

    move-result v5

    move v0, v5

    move-object v5, v3

    .line 36
    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    move-object v5, v3

    move v6, v0

    .line 37
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;Z)V

    goto/16 :goto_1

    :pswitch_d
    move-object v5, v0

    .line 38
    invoke-virtual {v5}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzo()Z

    move-result v5

    move v0, v5

    move-object v5, v3

    .line 39
    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    move-object v5, v3

    move v6, v0

    .line 40
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;Z)V

    goto/16 :goto_1

    :pswitch_e
    move-object v5, v0

    .line 41
    invoke-virtual {v5}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzn()Z

    move-result v5

    move v0, v5

    move-object v5, v3

    .line 42
    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    move-object v5, v3

    move v6, v0

    .line 43
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;Z)V

    goto/16 :goto_1

    :pswitch_f
    move-object v5, v0

    .line 44
    invoke-virtual {v5}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzm()Z

    move-result v5

    move v0, v5

    move-object v5, v3

    .line 45
    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    move-object v5, v3

    move v6, v0

    .line 46
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;Z)V

    goto/16 :goto_1

    :pswitch_10
    move-object v5, v0

    .line 47
    invoke-virtual {v5}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzl()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    move-object v0, v5

    move-object v5, v3

    .line 48
    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    move-object v5, v3

    move-object v6, v0

    .line 49
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/common/zzc;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_1

    :pswitch_11
    move-object v5, v0

    .line 50
    invoke-virtual {v5}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzk()Z

    move-result v5

    move v0, v5

    move-object v5, v3

    .line 51
    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    move-object v5, v3

    move v6, v0

    .line 52
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;Z)V

    goto/16 :goto_1

    :pswitch_12
    move-object v5, v0

    .line 53
    invoke-virtual {v5}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzj()I

    move-result v5

    move v0, v5

    move-object v5, v3

    .line 54
    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    move-object v5, v3

    move v6, v0

    .line 55
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_13
    move-object v5, v0

    .line 56
    invoke-virtual {v5}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzi()Lcom/google/android/gms/dynamic/IFragmentWrapper;

    move-result-object v5

    move-object v0, v5

    move-object v5, v3

    .line 57
    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    move-object v5, v3

    move-object v6, v0

    .line 58
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/common/zzc;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_1

    :pswitch_14
    move-object v5, v0

    .line 59
    invoke-virtual {v5}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzh()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object v5, v3

    .line 60
    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    move-object v5, v3

    move-object v6, v0

    .line 61
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_15
    move-object v5, v0

    .line 62
    invoke-virtual {v5}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzg()Z

    move-result v5

    move v0, v5

    move-object v5, v3

    .line 63
    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    move-object v5, v3

    move v6, v0

    .line 64
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;Z)V

    goto/16 :goto_1

    :pswitch_16
    move-object v5, v0

    .line 65
    invoke-virtual {v5}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzf()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    move-object v0, v5

    move-object v5, v3

    .line 66
    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    move-object v5, v3

    move-object v6, v0

    .line 67
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/common/zzc;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_1

    :pswitch_17
    move-object v5, v0

    .line 68
    invoke-virtual {v5}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zze()Lcom/google/android/gms/dynamic/IFragmentWrapper;

    move-result-object v5

    move-object v0, v5

    move-object v5, v3

    .line 69
    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    move-object v5, v3

    move-object v6, v0

    .line 70
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/common/zzc;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_1

    :pswitch_18
    move-object v5, v0

    .line 71
    invoke-virtual {v5}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzd()I

    move-result v5

    move v0, v5

    move-object v5, v3

    .line 72
    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    move-object v5, v3

    move v6, v0

    .line 73
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_19
    move-object v5, v0

    .line 74
    invoke-virtual {v5}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzc()Landroid/os/Bundle;

    move-result-object v5

    move-object v0, v5

    move-object v5, v3

    .line 75
    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    move-object v5, v3

    move-object v6, v0

    .line 76
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/common/zzc;->zze(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_1

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
