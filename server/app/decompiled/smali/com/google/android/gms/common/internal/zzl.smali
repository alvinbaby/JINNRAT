.class public final Lcom/google/android/gms/common/internal/zzl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/common/internal/GetServiceRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Lcom/google/android/gms/common/internal/GetServiceRequest;Landroid/os/Parcel;I)V
    .locals 9

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    .line 1
    invoke-static {v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v4

    move v3, v4

    move-object v4, v1

    const/4 v5, 0x1

    move-object v6, v0

    iget v6, v6, Lcom/google/android/gms/common/internal/GetServiceRequest;->zza:I

    .line 2
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    move-object v4, v1

    const/4 v5, 0x2

    move-object v6, v0

    iget v6, v6, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzb:I

    .line 3
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    move-object v4, v1

    const/4 v5, 0x3

    move-object v6, v0

    iget v6, v6, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzc:I

    .line 4
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    move-object v4, v1

    const/4 v5, 0x4

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzd:Ljava/lang/String;

    const/4 v7, 0x0

    .line 5
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    move-object v4, v1

    const/4 v5, 0x5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/internal/GetServiceRequest;->zze:Landroid/os/IBinder;

    const/4 v7, 0x0

    .line 6
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    move-object v4, v1

    const/4 v5, 0x6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzf:[Lcom/google/android/gms/common/api/Scope;

    move v7, v2

    const/4 v8, 0x0

    .line 7
    invoke-static {v4, v5, v6, v7, v8}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    move-object v4, v1

    const/4 v5, 0x7

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzg:Landroid/os/Bundle;

    const/4 v7, 0x0

    .line 8
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    move-object v4, v1

    const/16 v5, 0x8

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzh:Landroid/accounts/Account;

    move v7, v2

    const/4 v8, 0x0

    .line 9
    invoke-static {v4, v5, v6, v7, v8}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    move-object v4, v1

    const/16 v5, 0xa

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzi:[Lcom/google/android/gms/common/Feature;

    move v7, v2

    const/4 v8, 0x0

    .line 10
    invoke-static {v4, v5, v6, v7, v8}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    move-object v4, v1

    const/16 v5, 0xb

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzj:[Lcom/google/android/gms/common/Feature;

    move v7, v2

    const/4 v8, 0x0

    .line 11
    invoke-static {v4, v5, v6, v7, v8}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    move-object v4, v1

    const/16 v5, 0xc

    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzk:Z

    .line 12
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    move-object v4, v1

    const/16 v5, 0xd

    move-object v6, v0

    iget v6, v6, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzl:I

    .line 13
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    move-object v4, v1

    const/16 v5, 0xe

    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzm:Z

    .line 14
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    move-object v4, v1

    const/16 v5, 0xf

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/gms/common/internal/GetServiceRequest;->zza()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 15
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    move-object v4, v1

    move v5, v3

    .line 16
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 46

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v31, v3

    invoke-static/range {v31 .. v31}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v31

    move/from16 v30, v31

    const/16 v31, 0x0

    move/from16 v2, v31

    const/16 v31, 0x0

    move/from16 v4, v31

    const/16 v31, 0x0

    move/from16 v5, v31

    const/16 v31, 0x0

    move-object/from16 v6, v31

    const/16 v31, 0x0

    move-object/from16 v7, v31

    const/16 v31, 0x0

    move-object/from16 v8, v31

    const/16 v31, 0x0

    move-object/from16 v9, v31

    const/16 v31, 0x0

    move-object/from16 v10, v31

    const/16 v31, 0x0

    move-object/from16 v11, v31

    const/16 v31, 0x0

    move-object/from16 v12, v31

    const/16 v31, 0x0

    move/from16 v13, v31

    const/16 v31, 0x0

    move/from16 v14, v31

    const/16 v31, 0x0

    move/from16 v15, v31

    const/16 v31, 0x0

    move-object/from16 v16, v31

    :goto_0
    move-object/from16 v31, v3

    invoke-virtual/range {v31 .. v31}, Landroid/os/Parcel;->dataPosition()I

    move-result v31

    move/from16 v32, v30

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_0

    move-object/from16 v31, v3

    invoke-static/range {v31 .. v31}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v31

    move/from16 v17, v31

    move/from16 v31, v17

    invoke-static/range {v31 .. v31}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v31

    packed-switch v31, :pswitch_data_0

    :pswitch_0
    move-object/from16 v31, v3

    move/from16 v32, v17

    invoke-static/range {v31 .. v32}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    move/from16 v31, v4

    move/from16 v17, v31

    move/from16 v31, v5

    move/from16 v18, v31

    move-object/from16 v31, v6

    move-object/from16 v19, v31

    move-object/from16 v31, v7

    move-object/from16 v20, v31

    move-object/from16 v31, v8

    move-object/from16 v21, v31

    move-object/from16 v31, v9

    move-object/from16 v22, v31

    move-object/from16 v31, v10

    move-object/from16 v23, v31

    move-object/from16 v31, v11

    move-object/from16 v24, v31

    move-object/from16 v31, v12

    move-object/from16 v25, v31

    move/from16 v31, v13

    move/from16 v26, v31

    move/from16 v31, v14

    move/from16 v27, v31

    move/from16 v31, v15

    move/from16 v28, v31

    move-object/from16 v31, v16

    move-object/from16 v29, v31

    :goto_1
    move/from16 v31, v17

    move/from16 v4, v31

    move/from16 v31, v18

    move/from16 v5, v31

    move-object/from16 v31, v19

    move-object/from16 v6, v31

    move-object/from16 v31, v20

    move-object/from16 v7, v31

    move-object/from16 v31, v21

    move-object/from16 v8, v31

    move-object/from16 v31, v22

    move-object/from16 v9, v31

    move-object/from16 v31, v23

    move-object/from16 v10, v31

    move-object/from16 v31, v24

    move-object/from16 v11, v31

    move-object/from16 v31, v25

    move-object/from16 v12, v31

    move/from16 v31, v26

    move/from16 v13, v31

    move/from16 v31, v27

    move/from16 v14, v31

    move/from16 v31, v28

    move/from16 v15, v31

    move-object/from16 v31, v29

    move-object/from16 v16, v31

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v31, v3

    move/from16 v32, v17

    invoke-static/range {v31 .. v32}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v29, v31

    move/from16 v31, v4

    move/from16 v17, v31

    move/from16 v31, v5

    move/from16 v18, v31

    move-object/from16 v31, v6

    move-object/from16 v19, v31

    move-object/from16 v31, v7

    move-object/from16 v20, v31

    move-object/from16 v31, v8

    move-object/from16 v21, v31

    move-object/from16 v31, v9

    move-object/from16 v22, v31

    move-object/from16 v31, v10

    move-object/from16 v23, v31

    move-object/from16 v31, v11

    move-object/from16 v24, v31

    move-object/from16 v31, v12

    move-object/from16 v25, v31

    move/from16 v31, v13

    move/from16 v26, v31

    move/from16 v31, v14

    move/from16 v27, v31

    move/from16 v31, v15

    move/from16 v28, v31

    goto :goto_1

    :pswitch_2
    move-object/from16 v31, v3

    move/from16 v32, v17

    invoke-static/range {v31 .. v32}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v31

    move/from16 v28, v31

    move/from16 v31, v4

    move/from16 v17, v31

    move/from16 v31, v5

    move/from16 v18, v31

    move-object/from16 v31, v6

    move-object/from16 v19, v31

    move-object/from16 v31, v7

    move-object/from16 v20, v31

    move-object/from16 v31, v8

    move-object/from16 v21, v31

    move-object/from16 v31, v9

    move-object/from16 v22, v31

    move-object/from16 v31, v10

    move-object/from16 v23, v31

    move-object/from16 v31, v11

    move-object/from16 v24, v31

    move-object/from16 v31, v12

    move-object/from16 v25, v31

    move/from16 v31, v13

    move/from16 v26, v31

    move/from16 v31, v14

    move/from16 v27, v31

    move-object/from16 v31, v16

    move-object/from16 v29, v31

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v31, v3

    move/from16 v32, v17

    invoke-static/range {v31 .. v32}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v31

    move/from16 v27, v31

    move/from16 v31, v4

    move/from16 v17, v31

    move/from16 v31, v5

    move/from16 v18, v31

    move-object/from16 v31, v6

    move-object/from16 v19, v31

    move-object/from16 v31, v7

    move-object/from16 v20, v31

    move-object/from16 v31, v8

    move-object/from16 v21, v31

    move-object/from16 v31, v9

    move-object/from16 v22, v31

    move-object/from16 v31, v10

    move-object/from16 v23, v31

    move-object/from16 v31, v11

    move-object/from16 v24, v31

    move-object/from16 v31, v12

    move-object/from16 v25, v31

    move/from16 v31, v13

    move/from16 v26, v31

    move/from16 v31, v15

    move/from16 v28, v31

    move-object/from16 v31, v16

    move-object/from16 v29, v31

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v31, v3

    move/from16 v32, v17

    invoke-static/range {v31 .. v32}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v31

    move/from16 v26, v31

    move/from16 v31, v4

    move/from16 v17, v31

    move/from16 v31, v5

    move/from16 v18, v31

    move-object/from16 v31, v6

    move-object/from16 v19, v31

    move-object/from16 v31, v7

    move-object/from16 v20, v31

    move-object/from16 v31, v8

    move-object/from16 v21, v31

    move-object/from16 v31, v9

    move-object/from16 v22, v31

    move-object/from16 v31, v10

    move-object/from16 v23, v31

    move-object/from16 v31, v11

    move-object/from16 v24, v31

    move-object/from16 v31, v12

    move-object/from16 v25, v31

    move/from16 v31, v14

    move/from16 v27, v31

    move/from16 v31, v15

    move/from16 v28, v31

    move-object/from16 v31, v16

    move-object/from16 v29, v31

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v31, v3

    move/from16 v32, v17

    sget-object v33, Lcom/google/android/gms/common/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static/range {v31 .. v33}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [Lcom/google/android/gms/common/Feature;

    move-object/from16 v25, v31

    move/from16 v31, v4

    move/from16 v17, v31

    move/from16 v31, v5

    move/from16 v18, v31

    move-object/from16 v31, v6

    move-object/from16 v19, v31

    move-object/from16 v31, v7

    move-object/from16 v20, v31

    move-object/from16 v31, v8

    move-object/from16 v21, v31

    move-object/from16 v31, v9

    move-object/from16 v22, v31

    move-object/from16 v31, v10

    move-object/from16 v23, v31

    move-object/from16 v31, v11

    move-object/from16 v24, v31

    move/from16 v31, v13

    move/from16 v26, v31

    move/from16 v31, v14

    move/from16 v27, v31

    move/from16 v31, v15

    move/from16 v28, v31

    move-object/from16 v31, v16

    move-object/from16 v29, v31

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v31, v3

    move/from16 v32, v17

    sget-object v33, Lcom/google/android/gms/common/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static/range {v31 .. v33}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [Lcom/google/android/gms/common/Feature;

    move-object/from16 v24, v31

    move/from16 v31, v4

    move/from16 v17, v31

    move/from16 v31, v5

    move/from16 v18, v31

    move-object/from16 v31, v6

    move-object/from16 v19, v31

    move-object/from16 v31, v7

    move-object/from16 v20, v31

    move-object/from16 v31, v8

    move-object/from16 v21, v31

    move-object/from16 v31, v9

    move-object/from16 v22, v31

    move-object/from16 v31, v10

    move-object/from16 v23, v31

    move-object/from16 v31, v12

    move-object/from16 v25, v31

    move/from16 v31, v13

    move/from16 v26, v31

    move/from16 v31, v14

    move/from16 v27, v31

    move/from16 v31, v15

    move/from16 v28, v31

    move-object/from16 v31, v16

    move-object/from16 v29, v31

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v31, v3

    move/from16 v32, v17

    sget-object v33, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static/range {v31 .. v33}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v31

    check-cast v31, Landroid/accounts/Account;

    move-object/from16 v23, v31

    move/from16 v31, v4

    move/from16 v17, v31

    move/from16 v31, v5

    move/from16 v18, v31

    move-object/from16 v31, v6

    move-object/from16 v19, v31

    move-object/from16 v31, v7

    move-object/from16 v20, v31

    move-object/from16 v31, v8

    move-object/from16 v21, v31

    move-object/from16 v31, v9

    move-object/from16 v22, v31

    move-object/from16 v31, v11

    move-object/from16 v24, v31

    move-object/from16 v31, v12

    move-object/from16 v25, v31

    move/from16 v31, v13

    move/from16 v26, v31

    move/from16 v31, v14

    move/from16 v27, v31

    move/from16 v31, v15

    move/from16 v28, v31

    move-object/from16 v31, v16

    move-object/from16 v29, v31

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v31, v3

    move/from16 v32, v17

    invoke-static/range {v31 .. v32}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createBundle(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v31

    move-object/from16 v22, v31

    move/from16 v31, v4

    move/from16 v17, v31

    move/from16 v31, v5

    move/from16 v18, v31

    move-object/from16 v31, v6

    move-object/from16 v19, v31

    move-object/from16 v31, v7

    move-object/from16 v20, v31

    move-object/from16 v31, v8

    move-object/from16 v21, v31

    move-object/from16 v31, v10

    move-object/from16 v23, v31

    move-object/from16 v31, v11

    move-object/from16 v24, v31

    move-object/from16 v31, v12

    move-object/from16 v25, v31

    move/from16 v31, v13

    move/from16 v26, v31

    move/from16 v31, v14

    move/from16 v27, v31

    move/from16 v31, v15

    move/from16 v28, v31

    move-object/from16 v31, v16

    move-object/from16 v29, v31

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v31, v3

    move/from16 v32, v17

    sget-object v33, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static/range {v31 .. v33}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [Lcom/google/android/gms/common/api/Scope;

    move-object/from16 v21, v31

    move/from16 v31, v4

    move/from16 v17, v31

    move/from16 v31, v5

    move/from16 v18, v31

    move-object/from16 v31, v6

    move-object/from16 v19, v31

    move-object/from16 v31, v7

    move-object/from16 v20, v31

    move-object/from16 v31, v9

    move-object/from16 v22, v31

    move-object/from16 v31, v10

    move-object/from16 v23, v31

    move-object/from16 v31, v11

    move-object/from16 v24, v31

    move-object/from16 v31, v12

    move-object/from16 v25, v31

    move/from16 v31, v13

    move/from16 v26, v31

    move/from16 v31, v14

    move/from16 v27, v31

    move/from16 v31, v15

    move/from16 v28, v31

    move-object/from16 v31, v16

    move-object/from16 v29, v31

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v31, v3

    move/from16 v32, v17

    invoke-static/range {v31 .. v32}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readIBinder(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v31

    move-object/from16 v20, v31

    move/from16 v31, v4

    move/from16 v17, v31

    move/from16 v31, v5

    move/from16 v18, v31

    move-object/from16 v31, v6

    move-object/from16 v19, v31

    move-object/from16 v31, v8

    move-object/from16 v21, v31

    move-object/from16 v31, v9

    move-object/from16 v22, v31

    move-object/from16 v31, v10

    move-object/from16 v23, v31

    move-object/from16 v31, v11

    move-object/from16 v24, v31

    move-object/from16 v31, v12

    move-object/from16 v25, v31

    move/from16 v31, v13

    move/from16 v26, v31

    move/from16 v31, v14

    move/from16 v27, v31

    move/from16 v31, v15

    move/from16 v28, v31

    move-object/from16 v31, v16

    move-object/from16 v29, v31

    goto/16 :goto_1

    :pswitch_b
    move-object/from16 v31, v3

    move/from16 v32, v17

    invoke-static/range {v31 .. v32}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v19, v31

    move/from16 v31, v4

    move/from16 v17, v31

    move/from16 v31, v5

    move/from16 v18, v31

    move-object/from16 v31, v7

    move-object/from16 v20, v31

    move-object/from16 v31, v8

    move-object/from16 v21, v31

    move-object/from16 v31, v9

    move-object/from16 v22, v31

    move-object/from16 v31, v10

    move-object/from16 v23, v31

    move-object/from16 v31, v11

    move-object/from16 v24, v31

    move-object/from16 v31, v12

    move-object/from16 v25, v31

    move/from16 v31, v13

    move/from16 v26, v31

    move/from16 v31, v14

    move/from16 v27, v31

    move/from16 v31, v15

    move/from16 v28, v31

    move-object/from16 v31, v16

    move-object/from16 v29, v31

    goto/16 :goto_1

    :pswitch_c
    move-object/from16 v31, v3

    move/from16 v32, v17

    invoke-static/range {v31 .. v32}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v31

    move/from16 v18, v31

    move/from16 v31, v4

    move/from16 v17, v31

    move-object/from16 v31, v6

    move-object/from16 v19, v31

    move-object/from16 v31, v7

    move-object/from16 v20, v31

    move-object/from16 v31, v8

    move-object/from16 v21, v31

    move-object/from16 v31, v9

    move-object/from16 v22, v31

    move-object/from16 v31, v10

    move-object/from16 v23, v31

    move-object/from16 v31, v11

    move-object/from16 v24, v31

    move-object/from16 v31, v12

    move-object/from16 v25, v31

    move/from16 v31, v13

    move/from16 v26, v31

    move/from16 v31, v14

    move/from16 v27, v31

    move/from16 v31, v15

    move/from16 v28, v31

    move-object/from16 v31, v16

    move-object/from16 v29, v31

    goto/16 :goto_1

    :pswitch_d
    move-object/from16 v31, v3

    move/from16 v32, v17

    invoke-static/range {v31 .. v32}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v31

    move/from16 v17, v31

    move/from16 v31, v5

    move/from16 v18, v31

    move-object/from16 v31, v6

    move-object/from16 v19, v31

    move-object/from16 v31, v7

    move-object/from16 v20, v31

    move-object/from16 v31, v8

    move-object/from16 v21, v31

    move-object/from16 v31, v9

    move-object/from16 v22, v31

    move-object/from16 v31, v10

    move-object/from16 v23, v31

    move-object/from16 v31, v11

    move-object/from16 v24, v31

    move-object/from16 v31, v12

    move-object/from16 v25, v31

    move/from16 v31, v13

    move/from16 v26, v31

    move/from16 v31, v14

    move/from16 v27, v31

    move/from16 v31, v15

    move/from16 v28, v31

    move-object/from16 v31, v16

    move-object/from16 v29, v31

    goto/16 :goto_1

    :pswitch_e
    move-object/from16 v31, v3

    move/from16 v32, v17

    invoke-static/range {v31 .. v32}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v31

    move/from16 v2, v31

    move/from16 v31, v4

    move/from16 v17, v31

    move/from16 v31, v5

    move/from16 v18, v31

    move-object/from16 v31, v6

    move-object/from16 v19, v31

    move-object/from16 v31, v7

    move-object/from16 v20, v31

    move-object/from16 v31, v8

    move-object/from16 v21, v31

    move-object/from16 v31, v9

    move-object/from16 v22, v31

    move-object/from16 v31, v10

    move-object/from16 v23, v31

    move-object/from16 v31, v11

    move-object/from16 v24, v31

    move-object/from16 v31, v12

    move-object/from16 v25, v31

    move/from16 v31, v13

    move/from16 v26, v31

    move/from16 v31, v14

    move/from16 v27, v31

    move/from16 v31, v15

    move/from16 v28, v31

    move-object/from16 v31, v16

    move-object/from16 v29, v31

    goto/16 :goto_1

    :cond_0
    move-object/from16 v31, v3

    move/from16 v32, v30

    invoke-static/range {v31 .. v32}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v31, Lcom/google/android/gms/common/internal/GetServiceRequest;

    move-object/from16 v3, v31

    move-object/from16 v31, v3

    move/from16 v32, v2

    move/from16 v33, v4

    move/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    move-object/from16 v39, v10

    move-object/from16 v40, v11

    move-object/from16 v41, v12

    move/from16 v42, v13

    move/from16 v43, v14

    move/from16 v44, v15

    move-object/from16 v45, v16

    invoke-direct/range {v31 .. v45}, Lcom/google/android/gms/common/internal/GetServiceRequest;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lcom/google/android/gms/common/Feature;[Lcom/google/android/gms/common/Feature;ZIZLjava/lang/String;)V

    move-object/from16 v31, v3

    move-object/from16 v2, v31

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 3

    move-object v0, p0

    move v1, p1

    move v2, v1

    new-array v2, v2, [Lcom/google/android/gms/common/internal/GetServiceRequest;

    move-object v0, v2

    return-object v0
.end method
