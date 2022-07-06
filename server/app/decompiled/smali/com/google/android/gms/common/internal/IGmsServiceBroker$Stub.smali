.class public abstract Lcom/google/android/gms/common/internal/IGmsServiceBroker$Stub;
.super Landroid/os/Binder;
.source "com.google.android.gms:play-services-basement@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/IGmsServiceBroker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/IGmsServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    move-object v1, v0

    move-object v2, v0

    const-string v3, "com.google.android.gms.common.internal.IGmsServiceBroker"

    .line 2
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/internal/IGmsServiceBroker$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .param p2    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/Nullable;
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

    move v6, v1

    const v7, 0xffffff

    if-le v6, v7, :cond_0

    move-object v6, v0

    move v7, v1

    move-object v8, v2

    move-object v9, v3

    move v10, v4

    .line 1
    invoke-super {v6, v7, v8, v9, v10}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    move v0, v6

    .line 11
    :goto_0
    return v0

    .line 1
    :cond_0
    move-object v6, v2

    const-string v7, "com.google.android.gms.common.internal.IGmsServiceBroker"

    .line 2
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    move-object v6, v2

    .line 3
    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object v4, v6

    move-object v6, v4

    if-nez v6, :cond_2

    const/4 v6, 0x0

    move-object v4, v6

    :goto_1
    move v6, v1

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_4

    move-object v6, v2

    .line 8
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/google/android/gms/common/internal/GetServiceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v7, v2

    .line 9
    invoke-interface {v6, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/internal/GetServiceRequest;

    move-object v1, v6

    :goto_2
    move-object v6, v0

    move-object v7, v4

    move-object v8, v1

    .line 10
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/common/internal/IGmsServiceBroker$Stub;->getService(Lcom/google/android/gms/common/internal/IGmsCallbacks;Lcom/google/android/gms/common/internal/GetServiceRequest;)V

    move-object v6, v3

    .line 11
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    move-object v1, v6

    goto :goto_2

    :cond_2
    move-object v6, v4

    const-string v7, "com.google.android.gms.common.internal.IGmsCallbacks"

    .line 4
    invoke-interface {v6, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v6

    move-object v5, v6

    move-object v6, v5

    .line 5
    instance-of v6, v6, Lcom/google/android/gms/common/internal/IGmsCallbacks;

    if-eqz v6, :cond_3

    move-object v6, v5

    .line 6
    check-cast v6, Lcom/google/android/gms/common/internal/IGmsCallbacks;

    move-object v4, v6

    goto :goto_1

    :cond_3
    new-instance v6, Lcom/google/android/gms/common/internal/zzz;

    move-object v5, v6

    move-object v6, v5

    move-object v7, v4

    .line 7
    invoke-direct {v6, v7}, Lcom/google/android/gms/common/internal/zzz;-><init>(Landroid/os/IBinder;)V

    move-object v6, v5

    move-object v4, v6

    goto :goto_1

    :cond_4
    move v6, v1

    const/16 v7, 0x2f

    if-ne v6, v7, :cond_6

    move-object v6, v2

    .line 12
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Lcom/google/android/gms/common/internal/zzai;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v7, v2

    .line 13
    invoke-interface {v6, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/internal/zzai;

    :cond_5
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    move-object v0, v6

    move-object v6, v0

    .line 14
    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    move-object v6, v0

    throw v6

    :cond_6
    move-object v6, v2

    .line 15
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move v6, v1

    const/4 v7, 0x4

    if-eq v6, v7, :cond_7

    move-object v6, v2

    .line 16
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move v6, v1

    packed-switch v6, :pswitch_data_0

    :cond_7
    :goto_3
    :pswitch_0
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    move-object v0, v6

    move-object v6, v0

    .line 41
    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    move-object v6, v0

    throw v6

    :pswitch_1
    move-object v6, v2

    .line 36
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v6, v2

    .line 37
    invoke-virtual {v6}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    move-object v6, v2

    .line 38
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v6, v2

    .line 39
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v7, v2

    .line 40
    invoke-interface {v6, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    goto :goto_3

    :pswitch_2
    move-object v6, v2

    .line 34
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v7, v2

    .line 35
    invoke-interface {v6, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    goto :goto_3

    :pswitch_3
    move-object v6, v2

    .line 27
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v6, v2

    .line 28
    invoke-virtual {v6}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    move-object v6, v2

    .line 29
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v6, v2

    .line 30
    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object v6, v2

    .line 31
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v6, v2

    .line 32
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v7, v2

    .line 33
    invoke-interface {v6, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    goto :goto_3

    :pswitch_4
    move-object v6, v2

    .line 25
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v6, v2

    .line 26
    invoke-virtual {v6}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :pswitch_5
    move-object v6, v2

    .line 22
    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object v6, v2

    .line 23
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v7, v2

    .line 24
    invoke-interface {v6, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    goto/16 :goto_3

    :pswitch_6
    move-object v6, v2

    .line 18
    invoke-virtual {v6}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    move-object v6, v2

    .line 19
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v6, v2

    .line 20
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v7, v2

    .line 21
    invoke-interface {v6, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    goto/16 :goto_3

    :pswitch_7
    move-object v6, v2

    .line 17
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 16
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
