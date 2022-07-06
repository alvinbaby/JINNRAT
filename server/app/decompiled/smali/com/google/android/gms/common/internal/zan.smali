.class public final Lcom/google/android/gms/common/internal/zan;
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
        "Lcom/google/android/gms/common/internal/MethodInvocation;",
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
    .locals 35

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v24, v4

    invoke-static/range {v24 .. v24}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v24

    move/from16 v23, v24

    const/16 v24, 0x0

    move/from16 v3, v24

    const/16 v24, 0x0

    move/from16 v5, v24

    const/16 v24, 0x0

    move/from16 v6, v24

    const-wide/16 v24, 0x0

    move-wide/from16 v7, v24

    const-wide/16 v24, 0x0

    move-wide/from16 v9, v24

    const/16 v24, 0x0

    move-object/from16 v11, v24

    const/16 v24, 0x0

    move-object/from16 v12, v24

    const/16 v24, 0x0

    move/from16 v13, v24

    :goto_0
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Landroid/os/Parcel;->dataPosition()I

    move-result v24

    move/from16 v25, v23

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    move-object/from16 v24, v4

    invoke-static/range {v24 .. v24}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v24

    move/from16 v14, v24

    move/from16 v24, v14

    invoke-static/range {v24 .. v24}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v24

    packed-switch v24, :pswitch_data_0

    move-object/from16 v24, v4

    move/from16 v25, v14

    invoke-static/range {v24 .. v25}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    move/from16 v24, v5

    move/from16 v14, v24

    move/from16 v24, v6

    move/from16 v15, v24

    move-wide/from16 v24, v7

    move-wide/from16 v16, v24

    move-wide/from16 v24, v9

    move-wide/from16 v18, v24

    move-object/from16 v24, v11

    move-object/from16 v20, v24

    move-object/from16 v24, v12

    move-object/from16 v21, v24

    move/from16 v24, v13

    move/from16 v22, v24

    :goto_1
    move/from16 v24, v14

    move/from16 v5, v24

    move/from16 v24, v15

    move/from16 v6, v24

    move-wide/from16 v24, v16

    move-wide/from16 v7, v24

    move-wide/from16 v24, v18

    move-wide/from16 v9, v24

    move-object/from16 v24, v20

    move-object/from16 v11, v24

    move-object/from16 v24, v21

    move-object/from16 v12, v24

    move/from16 v24, v22

    move/from16 v13, v24

    goto :goto_0

    :pswitch_0
    move-object/from16 v24, v4

    move/from16 v25, v14

    invoke-static/range {v24 .. v25}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v24

    move/from16 v22, v24

    move/from16 v24, v5

    move/from16 v14, v24

    move/from16 v24, v6

    move/from16 v15, v24

    move-wide/from16 v24, v7

    move-wide/from16 v16, v24

    move-wide/from16 v24, v9

    move-wide/from16 v18, v24

    move-object/from16 v24, v11

    move-object/from16 v20, v24

    move-object/from16 v24, v12

    move-object/from16 v21, v24

    goto :goto_1

    :pswitch_1
    move-object/from16 v24, v4

    move/from16 v25, v14

    invoke-static/range {v24 .. v25}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v21, v24

    move/from16 v24, v5

    move/from16 v14, v24

    move/from16 v24, v6

    move/from16 v15, v24

    move-wide/from16 v24, v7

    move-wide/from16 v16, v24

    move-wide/from16 v24, v9

    move-wide/from16 v18, v24

    move-object/from16 v24, v11

    move-object/from16 v20, v24

    move/from16 v24, v13

    move/from16 v22, v24

    goto :goto_1

    :pswitch_2
    move-object/from16 v24, v4

    move/from16 v25, v14

    invoke-static/range {v24 .. v25}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v20, v24

    move/from16 v24, v5

    move/from16 v14, v24

    move/from16 v24, v6

    move/from16 v15, v24

    move-wide/from16 v24, v7

    move-wide/from16 v16, v24

    move-wide/from16 v24, v9

    move-wide/from16 v18, v24

    move-object/from16 v24, v12

    move-object/from16 v21, v24

    move/from16 v24, v13

    move/from16 v22, v24

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v24, v4

    move/from16 v25, v14

    invoke-static/range {v24 .. v25}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v24

    move-wide/from16 v18, v24

    move/from16 v24, v5

    move/from16 v14, v24

    move/from16 v24, v6

    move/from16 v15, v24

    move-wide/from16 v24, v7

    move-wide/from16 v16, v24

    move-object/from16 v24, v11

    move-object/from16 v20, v24

    move-object/from16 v24, v12

    move-object/from16 v21, v24

    move/from16 v24, v13

    move/from16 v22, v24

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v24, v4

    move/from16 v25, v14

    invoke-static/range {v24 .. v25}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v24

    move-wide/from16 v16, v24

    move/from16 v24, v5

    move/from16 v14, v24

    move/from16 v24, v6

    move/from16 v15, v24

    move-wide/from16 v24, v9

    move-wide/from16 v18, v24

    move-object/from16 v24, v11

    move-object/from16 v20, v24

    move-object/from16 v24, v12

    move-object/from16 v21, v24

    move/from16 v24, v13

    move/from16 v22, v24

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v24, v4

    move/from16 v25, v14

    invoke-static/range {v24 .. v25}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v24

    move/from16 v15, v24

    move/from16 v24, v5

    move/from16 v14, v24

    move-wide/from16 v24, v7

    move-wide/from16 v16, v24

    move-wide/from16 v24, v9

    move-wide/from16 v18, v24

    move-object/from16 v24, v11

    move-object/from16 v20, v24

    move-object/from16 v24, v12

    move-object/from16 v21, v24

    move/from16 v24, v13

    move/from16 v22, v24

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v24, v4

    move/from16 v25, v14

    invoke-static/range {v24 .. v25}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v24

    move/from16 v14, v24

    move/from16 v24, v6

    move/from16 v15, v24

    move-wide/from16 v24, v7

    move-wide/from16 v16, v24

    move-wide/from16 v24, v9

    move-wide/from16 v18, v24

    move-object/from16 v24, v11

    move-object/from16 v20, v24

    move-object/from16 v24, v12

    move-object/from16 v21, v24

    move/from16 v24, v13

    move/from16 v22, v24

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v24, v4

    move/from16 v25, v14

    invoke-static/range {v24 .. v25}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v24

    move/from16 v3, v24

    move/from16 v24, v5

    move/from16 v14, v24

    move/from16 v24, v6

    move/from16 v15, v24

    move-wide/from16 v24, v7

    move-wide/from16 v16, v24

    move-wide/from16 v24, v9

    move-wide/from16 v18, v24

    move-object/from16 v24, v11

    move-object/from16 v20, v24

    move-object/from16 v24, v12

    move-object/from16 v21, v24

    move/from16 v24, v13

    move/from16 v22, v24

    goto/16 :goto_1

    :cond_0
    move-object/from16 v24, v4

    move/from16 v25, v23

    invoke-static/range {v24 .. v25}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v24, Lcom/google/android/gms/common/internal/MethodInvocation;

    move-object/from16 v4, v24

    move-object/from16 v24, v4

    move/from16 v25, v3

    move/from16 v26, v5

    move/from16 v27, v6

    move-wide/from16 v28, v7

    move-wide/from16 v30, v9

    move-object/from16 v32, v11

    move-object/from16 v33, v12

    move/from16 v34, v13

    invoke-direct/range {v24 .. v34}, Lcom/google/android/gms/common/internal/MethodInvocation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v24, v4

    move-object/from16 v3, v24

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
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

    new-array v2, v2, [Lcom/google/android/gms/common/internal/MethodInvocation;

    move-object v0, v2

    return-object v0
.end method
