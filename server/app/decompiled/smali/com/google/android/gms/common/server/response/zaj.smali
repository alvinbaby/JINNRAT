.class public final Lcom/google/android/gms/common/server/response/zaj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;",
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


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v21, v3

    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v21

    move/from16 v20, v21

    const/16 v21, 0x0

    move/from16 v2, v21

    const/16 v21, 0x0

    move/from16 v4, v21

    const/16 v21, 0x0

    move/from16 v5, v21

    const/16 v21, 0x0

    move/from16 v6, v21

    const/16 v21, 0x0

    move/from16 v7, v21

    const/16 v21, 0x0

    move-object/from16 v8, v21

    const/16 v21, 0x0

    move/from16 v9, v21

    const/16 v21, 0x0

    move-object/from16 v10, v21

    const/16 v21, 0x0

    move-object/from16 v11, v21

    :goto_0
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Landroid/os/Parcel;->dataPosition()I

    move-result v21

    move/from16 v22, v20

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    move-object/from16 v21, v3

    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v21

    move/from16 v12, v21

    move/from16 v21, v12

    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v21

    packed-switch v21, :pswitch_data_0

    move-object/from16 v21, v3

    move/from16 v22, v12

    invoke-static/range {v21 .. v22}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    move/from16 v21, v4

    move/from16 v12, v21

    move/from16 v21, v5

    move/from16 v13, v21

    move/from16 v21, v6

    move/from16 v14, v21

    move/from16 v21, v7

    move/from16 v15, v21

    move-object/from16 v21, v8

    move-object/from16 v16, v21

    move/from16 v21, v9

    move/from16 v17, v21

    move-object/from16 v21, v10

    move-object/from16 v18, v21

    move-object/from16 v21, v11

    move-object/from16 v19, v21

    :goto_1
    move/from16 v21, v12

    move/from16 v4, v21

    move/from16 v21, v13

    move/from16 v5, v21

    move/from16 v21, v14

    move/from16 v6, v21

    move/from16 v21, v15

    move/from16 v7, v21

    move-object/from16 v21, v16

    move-object/from16 v8, v21

    move/from16 v21, v17

    move/from16 v9, v21

    move-object/from16 v21, v18

    move-object/from16 v10, v21

    move-object/from16 v21, v19

    move-object/from16 v11, v21

    goto :goto_0

    :pswitch_0
    move-object/from16 v21, v3

    move/from16 v22, v12

    sget-object v23, Lcom/google/android/gms/common/server/converter/zaa;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static/range {v21 .. v23}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v21

    check-cast v21, Lcom/google/android/gms/common/server/converter/zaa;

    move-object/from16 v19, v21

    move/from16 v21, v4

    move/from16 v12, v21

    move/from16 v21, v5

    move/from16 v13, v21

    move/from16 v21, v6

    move/from16 v14, v21

    move/from16 v21, v7

    move/from16 v15, v21

    move-object/from16 v21, v8

    move-object/from16 v16, v21

    move/from16 v21, v9

    move/from16 v17, v21

    move-object/from16 v21, v10

    move-object/from16 v18, v21

    goto :goto_1

    :pswitch_1
    move-object/from16 v21, v3

    move/from16 v22, v12

    invoke-static/range {v21 .. v22}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v18, v21

    move/from16 v21, v4

    move/from16 v12, v21

    move/from16 v21, v5

    move/from16 v13, v21

    move/from16 v21, v6

    move/from16 v14, v21

    move/from16 v21, v7

    move/from16 v15, v21

    move-object/from16 v21, v8

    move-object/from16 v16, v21

    move/from16 v21, v9

    move/from16 v17, v21

    move-object/from16 v21, v11

    move-object/from16 v19, v21

    goto :goto_1

    :pswitch_2
    move-object/from16 v21, v3

    move/from16 v22, v12

    invoke-static/range {v21 .. v22}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v21

    move/from16 v17, v21

    move/from16 v21, v4

    move/from16 v12, v21

    move/from16 v21, v5

    move/from16 v13, v21

    move/from16 v21, v6

    move/from16 v14, v21

    move/from16 v21, v7

    move/from16 v15, v21

    move-object/from16 v21, v8

    move-object/from16 v16, v21

    move-object/from16 v21, v10

    move-object/from16 v18, v21

    move-object/from16 v21, v11

    move-object/from16 v19, v21

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v21, v3

    move/from16 v22, v12

    invoke-static/range {v21 .. v22}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v16, v21

    move/from16 v21, v4

    move/from16 v12, v21

    move/from16 v21, v5

    move/from16 v13, v21

    move/from16 v21, v6

    move/from16 v14, v21

    move/from16 v21, v7

    move/from16 v15, v21

    move/from16 v21, v9

    move/from16 v17, v21

    move-object/from16 v21, v10

    move-object/from16 v18, v21

    move-object/from16 v21, v11

    move-object/from16 v19, v21

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v21, v3

    move/from16 v22, v12

    invoke-static/range {v21 .. v22}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v21

    move/from16 v15, v21

    move/from16 v21, v4

    move/from16 v12, v21

    move/from16 v21, v5

    move/from16 v13, v21

    move/from16 v21, v6

    move/from16 v14, v21

    move-object/from16 v21, v8

    move-object/from16 v16, v21

    move/from16 v21, v9

    move/from16 v17, v21

    move-object/from16 v21, v10

    move-object/from16 v18, v21

    move-object/from16 v21, v11

    move-object/from16 v19, v21

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v21, v3

    move/from16 v22, v12

    invoke-static/range {v21 .. v22}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v21

    move/from16 v14, v21

    move/from16 v21, v4

    move/from16 v12, v21

    move/from16 v21, v5

    move/from16 v13, v21

    move/from16 v21, v7

    move/from16 v15, v21

    move-object/from16 v21, v8

    move-object/from16 v16, v21

    move/from16 v21, v9

    move/from16 v17, v21

    move-object/from16 v21, v10

    move-object/from16 v18, v21

    move-object/from16 v21, v11

    move-object/from16 v19, v21

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v21, v3

    move/from16 v22, v12

    invoke-static/range {v21 .. v22}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v21

    move/from16 v13, v21

    move/from16 v21, v4

    move/from16 v12, v21

    move/from16 v21, v6

    move/from16 v14, v21

    move/from16 v21, v7

    move/from16 v15, v21

    move-object/from16 v21, v8

    move-object/from16 v16, v21

    move/from16 v21, v9

    move/from16 v17, v21

    move-object/from16 v21, v10

    move-object/from16 v18, v21

    move-object/from16 v21, v11

    move-object/from16 v19, v21

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v21, v3

    move/from16 v22, v12

    invoke-static/range {v21 .. v22}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v21

    move/from16 v12, v21

    move/from16 v21, v5

    move/from16 v13, v21

    move/from16 v21, v6

    move/from16 v14, v21

    move/from16 v21, v7

    move/from16 v15, v21

    move-object/from16 v21, v8

    move-object/from16 v16, v21

    move/from16 v21, v9

    move/from16 v17, v21

    move-object/from16 v21, v10

    move-object/from16 v18, v21

    move-object/from16 v21, v11

    move-object/from16 v19, v21

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v21, v3

    move/from16 v22, v12

    invoke-static/range {v21 .. v22}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v21

    move/from16 v2, v21

    move/from16 v21, v4

    move/from16 v12, v21

    move/from16 v21, v5

    move/from16 v13, v21

    move/from16 v21, v6

    move/from16 v14, v21

    move/from16 v21, v7

    move/from16 v15, v21

    move-object/from16 v21, v8

    move-object/from16 v16, v21

    move/from16 v21, v9

    move/from16 v17, v21

    move-object/from16 v21, v10

    move-object/from16 v18, v21

    move-object/from16 v21, v11

    move-object/from16 v19, v21

    goto/16 :goto_1

    :cond_0
    move-object/from16 v21, v3

    move/from16 v22, v20

    invoke-static/range {v21 .. v22}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v21, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-object/from16 v3, v21

    move-object/from16 v21, v3

    move/from16 v22, v2

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v26, v7

    move-object/from16 v27, v8

    move/from16 v28, v9

    move-object/from16 v29, v10

    move-object/from16 v30, v11

    invoke-direct/range {v21 .. v30}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;-><init>(IIZIZLjava/lang/String;ILjava/lang/String;Lcom/google/android/gms/common/server/converter/zaa;)V

    move-object/from16 v21, v3

    move-object/from16 v2, v21

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 3

    move-object v0, p0

    move v1, p1

    move v2, v1

    new-array v2, v2, [Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-object v0, v2

    return-object v0
.end method
