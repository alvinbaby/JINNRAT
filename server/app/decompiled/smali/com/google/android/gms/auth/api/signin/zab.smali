.class public final Lcom/google/android/gms/auth/api/signin/zab;
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
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
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
    .locals 44

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v30, v4

    invoke-static/range {v30 .. v30}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v30

    move/from16 v29, v30

    const/16 v30, 0x0

    move/from16 v3, v30

    const/16 v30, 0x0

    move-object/from16 v5, v30

    const/16 v30, 0x0

    move-object/from16 v6, v30

    const/16 v30, 0x0

    move-object/from16 v7, v30

    const/16 v30, 0x0

    move-object/from16 v8, v30

    const/16 v30, 0x0

    move-object/from16 v9, v30

    const/16 v30, 0x0

    move-object/from16 v10, v30

    const-wide/16 v30, 0x0

    move-wide/from16 v11, v30

    const/16 v30, 0x0

    move-object/from16 v13, v30

    const/16 v30, 0x0

    move-object/from16 v14, v30

    const/16 v30, 0x0

    move-object/from16 v15, v30

    const/16 v30, 0x0

    move-object/from16 v16, v30

    :goto_0
    move-object/from16 v30, v4

    invoke-virtual/range {v30 .. v30}, Landroid/os/Parcel;->dataPosition()I

    move-result v30

    move/from16 v31, v29

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_0

    move-object/from16 v30, v4

    invoke-static/range {v30 .. v30}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v30

    move/from16 v17, v30

    move/from16 v30, v17

    invoke-static/range {v30 .. v30}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v30

    packed-switch v30, :pswitch_data_0

    move-object/from16 v30, v4

    move/from16 v31, v17

    invoke-static/range {v30 .. v31}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    move-object/from16 v30, v5

    move-object/from16 v17, v30

    move-object/from16 v30, v6

    move-object/from16 v18, v30

    move-object/from16 v30, v7

    move-object/from16 v19, v30

    move-object/from16 v30, v8

    move-object/from16 v20, v30

    move-object/from16 v30, v9

    move-object/from16 v21, v30

    move-object/from16 v30, v10

    move-object/from16 v22, v30

    move-wide/from16 v30, v11

    move-wide/from16 v23, v30

    move-object/from16 v30, v13

    move-object/from16 v25, v30

    move-object/from16 v30, v14

    move-object/from16 v26, v30

    move-object/from16 v30, v15

    move-object/from16 v27, v30

    move-object/from16 v30, v16

    move-object/from16 v28, v30

    :goto_1
    move-object/from16 v30, v17

    move-object/from16 v5, v30

    move-object/from16 v30, v18

    move-object/from16 v6, v30

    move-object/from16 v30, v19

    move-object/from16 v7, v30

    move-object/from16 v30, v20

    move-object/from16 v8, v30

    move-object/from16 v30, v21

    move-object/from16 v9, v30

    move-object/from16 v30, v22

    move-object/from16 v10, v30

    move-wide/from16 v30, v23

    move-wide/from16 v11, v30

    move-object/from16 v30, v25

    move-object/from16 v13, v30

    move-object/from16 v30, v26

    move-object/from16 v14, v30

    move-object/from16 v30, v27

    move-object/from16 v15, v30

    move-object/from16 v30, v28

    move-object/from16 v16, v30

    goto :goto_0

    :pswitch_0
    move-object/from16 v30, v4

    move/from16 v31, v17

    invoke-static/range {v30 .. v31}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v28, v30

    move-object/from16 v30, v5

    move-object/from16 v17, v30

    move-object/from16 v30, v6

    move-object/from16 v18, v30

    move-object/from16 v30, v7

    move-object/from16 v19, v30

    move-object/from16 v30, v8

    move-object/from16 v20, v30

    move-object/from16 v30, v9

    move-object/from16 v21, v30

    move-object/from16 v30, v10

    move-object/from16 v22, v30

    move-wide/from16 v30, v11

    move-wide/from16 v23, v30

    move-object/from16 v30, v13

    move-object/from16 v25, v30

    move-object/from16 v30, v14

    move-object/from16 v26, v30

    move-object/from16 v30, v15

    move-object/from16 v27, v30

    goto :goto_1

    :pswitch_1
    move-object/from16 v30, v4

    move/from16 v31, v17

    invoke-static/range {v30 .. v31}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v27, v30

    move-object/from16 v30, v5

    move-object/from16 v17, v30

    move-object/from16 v30, v6

    move-object/from16 v18, v30

    move-object/from16 v30, v7

    move-object/from16 v19, v30

    move-object/from16 v30, v8

    move-object/from16 v20, v30

    move-object/from16 v30, v9

    move-object/from16 v21, v30

    move-object/from16 v30, v10

    move-object/from16 v22, v30

    move-wide/from16 v30, v11

    move-wide/from16 v23, v30

    move-object/from16 v30, v13

    move-object/from16 v25, v30

    move-object/from16 v30, v14

    move-object/from16 v26, v30

    move-object/from16 v30, v16

    move-object/from16 v28, v30

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v30, v4

    move/from16 v31, v17

    sget-object v32, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static/range {v30 .. v32}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createTypedList(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v30

    move-object/from16 v26, v30

    move-object/from16 v30, v5

    move-object/from16 v17, v30

    move-object/from16 v30, v6

    move-object/from16 v18, v30

    move-object/from16 v30, v7

    move-object/from16 v19, v30

    move-object/from16 v30, v8

    move-object/from16 v20, v30

    move-object/from16 v30, v9

    move-object/from16 v21, v30

    move-object/from16 v30, v10

    move-object/from16 v22, v30

    move-wide/from16 v30, v11

    move-wide/from16 v23, v30

    move-object/from16 v30, v13

    move-object/from16 v25, v30

    move-object/from16 v30, v15

    move-object/from16 v27, v30

    move-object/from16 v30, v16

    move-object/from16 v28, v30

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v30, v4

    move/from16 v31, v17

    invoke-static/range {v30 .. v31}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v25, v30

    move-object/from16 v30, v5

    move-object/from16 v17, v30

    move-object/from16 v30, v6

    move-object/from16 v18, v30

    move-object/from16 v30, v7

    move-object/from16 v19, v30

    move-object/from16 v30, v8

    move-object/from16 v20, v30

    move-object/from16 v30, v9

    move-object/from16 v21, v30

    move-object/from16 v30, v10

    move-object/from16 v22, v30

    move-wide/from16 v30, v11

    move-wide/from16 v23, v30

    move-object/from16 v30, v14

    move-object/from16 v26, v30

    move-object/from16 v30, v15

    move-object/from16 v27, v30

    move-object/from16 v30, v16

    move-object/from16 v28, v30

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v30, v4

    move/from16 v31, v17

    invoke-static/range {v30 .. v31}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v30

    move-wide/from16 v23, v30

    move-object/from16 v30, v5

    move-object/from16 v17, v30

    move-object/from16 v30, v6

    move-object/from16 v18, v30

    move-object/from16 v30, v7

    move-object/from16 v19, v30

    move-object/from16 v30, v8

    move-object/from16 v20, v30

    move-object/from16 v30, v9

    move-object/from16 v21, v30

    move-object/from16 v30, v10

    move-object/from16 v22, v30

    move-object/from16 v30, v13

    move-object/from16 v25, v30

    move-object/from16 v30, v14

    move-object/from16 v26, v30

    move-object/from16 v30, v15

    move-object/from16 v27, v30

    move-object/from16 v30, v16

    move-object/from16 v28, v30

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v30, v4

    move/from16 v31, v17

    invoke-static/range {v30 .. v31}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v22, v30

    move-object/from16 v30, v5

    move-object/from16 v17, v30

    move-object/from16 v30, v6

    move-object/from16 v18, v30

    move-object/from16 v30, v7

    move-object/from16 v19, v30

    move-object/from16 v30, v8

    move-object/from16 v20, v30

    move-object/from16 v30, v9

    move-object/from16 v21, v30

    move-wide/from16 v30, v11

    move-wide/from16 v23, v30

    move-object/from16 v30, v13

    move-object/from16 v25, v30

    move-object/from16 v30, v14

    move-object/from16 v26, v30

    move-object/from16 v30, v15

    move-object/from16 v27, v30

    move-object/from16 v30, v16

    move-object/from16 v28, v30

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v30, v4

    move/from16 v31, v17

    sget-object v32, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static/range {v30 .. v32}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v30

    check-cast v30, Landroid/net/Uri;

    move-object/from16 v21, v30

    move-object/from16 v30, v5

    move-object/from16 v17, v30

    move-object/from16 v30, v6

    move-object/from16 v18, v30

    move-object/from16 v30, v7

    move-object/from16 v19, v30

    move-object/from16 v30, v8

    move-object/from16 v20, v30

    move-object/from16 v30, v10

    move-object/from16 v22, v30

    move-wide/from16 v30, v11

    move-wide/from16 v23, v30

    move-object/from16 v30, v13

    move-object/from16 v25, v30

    move-object/from16 v30, v14

    move-object/from16 v26, v30

    move-object/from16 v30, v15

    move-object/from16 v27, v30

    move-object/from16 v30, v16

    move-object/from16 v28, v30

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v30, v4

    move/from16 v31, v17

    invoke-static/range {v30 .. v31}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v20, v30

    move-object/from16 v30, v5

    move-object/from16 v17, v30

    move-object/from16 v30, v6

    move-object/from16 v18, v30

    move-object/from16 v30, v7

    move-object/from16 v19, v30

    move-object/from16 v30, v9

    move-object/from16 v21, v30

    move-object/from16 v30, v10

    move-object/from16 v22, v30

    move-wide/from16 v30, v11

    move-wide/from16 v23, v30

    move-object/from16 v30, v13

    move-object/from16 v25, v30

    move-object/from16 v30, v14

    move-object/from16 v26, v30

    move-object/from16 v30, v15

    move-object/from16 v27, v30

    move-object/from16 v30, v16

    move-object/from16 v28, v30

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v30, v4

    move/from16 v31, v17

    invoke-static/range {v30 .. v31}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v19, v30

    move-object/from16 v30, v5

    move-object/from16 v17, v30

    move-object/from16 v30, v6

    move-object/from16 v18, v30

    move-object/from16 v30, v8

    move-object/from16 v20, v30

    move-object/from16 v30, v9

    move-object/from16 v21, v30

    move-object/from16 v30, v10

    move-object/from16 v22, v30

    move-wide/from16 v30, v11

    move-wide/from16 v23, v30

    move-object/from16 v30, v13

    move-object/from16 v25, v30

    move-object/from16 v30, v14

    move-object/from16 v26, v30

    move-object/from16 v30, v15

    move-object/from16 v27, v30

    move-object/from16 v30, v16

    move-object/from16 v28, v30

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v30, v4

    move/from16 v31, v17

    invoke-static/range {v30 .. v31}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v18, v30

    move-object/from16 v30, v5

    move-object/from16 v17, v30

    move-object/from16 v30, v7

    move-object/from16 v19, v30

    move-object/from16 v30, v8

    move-object/from16 v20, v30

    move-object/from16 v30, v9

    move-object/from16 v21, v30

    move-object/from16 v30, v10

    move-object/from16 v22, v30

    move-wide/from16 v30, v11

    move-wide/from16 v23, v30

    move-object/from16 v30, v13

    move-object/from16 v25, v30

    move-object/from16 v30, v14

    move-object/from16 v26, v30

    move-object/from16 v30, v15

    move-object/from16 v27, v30

    move-object/from16 v30, v16

    move-object/from16 v28, v30

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v30, v4

    move/from16 v31, v17

    invoke-static/range {v30 .. v31}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v17, v30

    move-object/from16 v30, v6

    move-object/from16 v18, v30

    move-object/from16 v30, v7

    move-object/from16 v19, v30

    move-object/from16 v30, v8

    move-object/from16 v20, v30

    move-object/from16 v30, v9

    move-object/from16 v21, v30

    move-object/from16 v30, v10

    move-object/from16 v22, v30

    move-wide/from16 v30, v11

    move-wide/from16 v23, v30

    move-object/from16 v30, v13

    move-object/from16 v25, v30

    move-object/from16 v30, v14

    move-object/from16 v26, v30

    move-object/from16 v30, v15

    move-object/from16 v27, v30

    move-object/from16 v30, v16

    move-object/from16 v28, v30

    goto/16 :goto_1

    :pswitch_b
    move-object/from16 v30, v4

    move/from16 v31, v17

    invoke-static/range {v30 .. v31}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v30

    move/from16 v3, v30

    move-object/from16 v30, v5

    move-object/from16 v17, v30

    move-object/from16 v30, v6

    move-object/from16 v18, v30

    move-object/from16 v30, v7

    move-object/from16 v19, v30

    move-object/from16 v30, v8

    move-object/from16 v20, v30

    move-object/from16 v30, v9

    move-object/from16 v21, v30

    move-object/from16 v30, v10

    move-object/from16 v22, v30

    move-wide/from16 v30, v11

    move-wide/from16 v23, v30

    move-object/from16 v30, v13

    move-object/from16 v25, v30

    move-object/from16 v30, v14

    move-object/from16 v26, v30

    move-object/from16 v30, v15

    move-object/from16 v27, v30

    move-object/from16 v30, v16

    move-object/from16 v28, v30

    goto/16 :goto_1

    :cond_0
    move-object/from16 v30, v4

    move/from16 v31, v29

    invoke-static/range {v30 .. v31}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v30, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-object/from16 v4, v30

    move-object/from16 v30, v4

    move/from16 v31, v3

    move-object/from16 v32, v5

    move-object/from16 v33, v6

    move-object/from16 v34, v7

    move-object/from16 v35, v8

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    move-wide/from16 v38, v11

    move-object/from16 v40, v13

    move-object/from16 v41, v14

    move-object/from16 v42, v15

    move-object/from16 v43, v16

    invoke-direct/range {v30 .. v43}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v30, v4

    move-object/from16 v3, v30

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

    new-array v2, v2, [Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-object v0, v2

    return-object v0
.end method
