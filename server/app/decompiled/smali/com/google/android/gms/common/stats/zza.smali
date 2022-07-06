.class public final Lcom/google/android/gms/common/stats/zza;
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
        "Lcom/google/android/gms/common/stats/WakeLockEvent;",
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
    .locals 59

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v40, v4

    invoke-static/range {v40 .. v40}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v40

    move/from16 v39, v40

    const/16 v40, 0x0

    move/from16 v3, v40

    const-wide/16 v40, 0x0

    move-wide/from16 v5, v40

    const/16 v40, 0x0

    move/from16 v7, v40

    const/16 v40, 0x0

    move-object/from16 v8, v40

    const/16 v40, 0x0

    move/from16 v9, v40

    const/16 v40, 0x0

    move-object/from16 v10, v40

    const/16 v40, 0x0

    move-object/from16 v11, v40

    const-wide/16 v40, 0x0

    move-wide/from16 v12, v40

    const/16 v40, 0x0

    move/from16 v14, v40

    const/16 v40, 0x0

    move-object/from16 v15, v40

    const/16 v40, 0x0

    move-object/from16 v16, v40

    const/16 v40, 0x0

    move/from16 v17, v40

    const-wide/16 v40, 0x0

    move-wide/from16 v18, v40

    const/16 v40, 0x0

    move-object/from16 v20, v40

    const/16 v40, 0x0

    move/from16 v21, v40

    :goto_0
    move-object/from16 v40, v4

    invoke-virtual/range {v40 .. v40}, Landroid/os/Parcel;->dataPosition()I

    move-result v40

    move/from16 v41, v39

    move/from16 v0, v40

    move/from16 v1, v41

    if-ge v0, v1, :cond_0

    move-object/from16 v40, v4

    invoke-static/range {v40 .. v40}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v40

    move/from16 v22, v40

    move/from16 v40, v22

    invoke-static/range {v40 .. v40}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v40

    packed-switch v40, :pswitch_data_0

    :pswitch_0
    move-object/from16 v40, v4

    move/from16 v41, v22

    invoke-static/range {v40 .. v41}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    move-wide/from16 v40, v5

    move-wide/from16 v22, v40

    move-object/from16 v40, v8

    move-object/from16 v24, v40

    move/from16 v40, v9

    move/from16 v25, v40

    move-object/from16 v40, v10

    move-object/from16 v26, v40

    move-wide/from16 v40, v12

    move-wide/from16 v27, v40

    move-object/from16 v40, v15

    move-object/from16 v29, v40

    move/from16 v40, v7

    move/from16 v30, v40

    move-object/from16 v40, v11

    move-object/from16 v31, v40

    move-object/from16 v40, v16

    move-object/from16 v32, v40

    move/from16 v40, v14

    move/from16 v33, v40

    move/from16 v40, v17

    move/from16 v34, v40

    move-wide/from16 v40, v18

    move-wide/from16 v35, v40

    move-object/from16 v40, v20

    move-object/from16 v37, v40

    move/from16 v40, v21

    move/from16 v38, v40

    :goto_1
    move-wide/from16 v40, v22

    move-wide/from16 v5, v40

    move/from16 v40, v30

    move/from16 v7, v40

    move-object/from16 v40, v24

    move-object/from16 v8, v40

    move/from16 v40, v25

    move/from16 v9, v40

    move-object/from16 v40, v26

    move-object/from16 v10, v40

    move-object/from16 v40, v31

    move-object/from16 v11, v40

    move-wide/from16 v40, v27

    move-wide/from16 v12, v40

    move/from16 v40, v33

    move/from16 v14, v40

    move-object/from16 v40, v29

    move-object/from16 v15, v40

    move-object/from16 v40, v32

    move-object/from16 v16, v40

    move/from16 v40, v34

    move/from16 v17, v40

    move-wide/from16 v40, v35

    move-wide/from16 v18, v40

    move-object/from16 v40, v37

    move-object/from16 v20, v40

    move/from16 v40, v38

    move/from16 v21, v40

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v40, v4

    move/from16 v41, v22

    invoke-static/range {v40 .. v41}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v40

    move/from16 v38, v40

    move-wide/from16 v40, v5

    move-wide/from16 v22, v40

    move-object/from16 v40, v8

    move-object/from16 v24, v40

    move/from16 v40, v9

    move/from16 v25, v40

    move-object/from16 v40, v10

    move-object/from16 v26, v40

    move-wide/from16 v40, v12

    move-wide/from16 v27, v40

    move-object/from16 v40, v15

    move-object/from16 v29, v40

    move/from16 v40, v7

    move/from16 v30, v40

    move-object/from16 v40, v11

    move-object/from16 v31, v40

    move-object/from16 v40, v16

    move-object/from16 v32, v40

    move/from16 v40, v14

    move/from16 v33, v40

    move/from16 v40, v17

    move/from16 v34, v40

    move-wide/from16 v40, v18

    move-wide/from16 v35, v40

    move-object/from16 v40, v20

    move-object/from16 v37, v40

    goto :goto_1

    :pswitch_2
    move-object/from16 v40, v4

    move/from16 v41, v22

    invoke-static/range {v40 .. v41}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v37, v40

    move-wide/from16 v40, v5

    move-wide/from16 v22, v40

    move-object/from16 v40, v8

    move-object/from16 v24, v40

    move/from16 v40, v9

    move/from16 v25, v40

    move-object/from16 v40, v10

    move-object/from16 v26, v40

    move-wide/from16 v40, v12

    move-wide/from16 v27, v40

    move-object/from16 v40, v15

    move-object/from16 v29, v40

    move/from16 v40, v7

    move/from16 v30, v40

    move-object/from16 v40, v11

    move-object/from16 v31, v40

    move-object/from16 v40, v16

    move-object/from16 v32, v40

    move/from16 v40, v14

    move/from16 v33, v40

    move/from16 v40, v17

    move/from16 v34, v40

    move-wide/from16 v40, v18

    move-wide/from16 v35, v40

    move/from16 v40, v21

    move/from16 v38, v40

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v40, v4

    move/from16 v41, v22

    invoke-static/range {v40 .. v41}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v40

    move-wide/from16 v35, v40

    move-wide/from16 v40, v5

    move-wide/from16 v22, v40

    move-object/from16 v40, v8

    move-object/from16 v24, v40

    move/from16 v40, v9

    move/from16 v25, v40

    move-object/from16 v40, v10

    move-object/from16 v26, v40

    move-wide/from16 v40, v12

    move-wide/from16 v27, v40

    move-object/from16 v40, v15

    move-object/from16 v29, v40

    move/from16 v40, v7

    move/from16 v30, v40

    move-object/from16 v40, v11

    move-object/from16 v31, v40

    move-object/from16 v40, v16

    move-object/from16 v32, v40

    move/from16 v40, v14

    move/from16 v33, v40

    move/from16 v40, v17

    move/from16 v34, v40

    move-object/from16 v40, v20

    move-object/from16 v37, v40

    move/from16 v40, v21

    move/from16 v38, v40

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v40, v4

    move/from16 v41, v22

    invoke-static/range {v40 .. v41}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readFloat(Landroid/os/Parcel;I)F

    move-result v40

    move/from16 v34, v40

    move-wide/from16 v40, v5

    move-wide/from16 v22, v40

    move-object/from16 v40, v8

    move-object/from16 v24, v40

    move/from16 v40, v9

    move/from16 v25, v40

    move-object/from16 v40, v10

    move-object/from16 v26, v40

    move-wide/from16 v40, v12

    move-wide/from16 v27, v40

    move-object/from16 v40, v15

    move-object/from16 v29, v40

    move/from16 v40, v7

    move/from16 v30, v40

    move-object/from16 v40, v11

    move-object/from16 v31, v40

    move-object/from16 v40, v16

    move-object/from16 v32, v40

    move/from16 v40, v14

    move/from16 v33, v40

    move-wide/from16 v40, v18

    move-wide/from16 v35, v40

    move-object/from16 v40, v20

    move-object/from16 v37, v40

    move/from16 v40, v21

    move/from16 v38, v40

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v40, v4

    move/from16 v41, v22

    invoke-static/range {v40 .. v41}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v40

    move/from16 v33, v40

    move-wide/from16 v40, v5

    move-wide/from16 v22, v40

    move-object/from16 v40, v8

    move-object/from16 v24, v40

    move/from16 v40, v9

    move/from16 v25, v40

    move-object/from16 v40, v10

    move-object/from16 v26, v40

    move-wide/from16 v40, v12

    move-wide/from16 v27, v40

    move-object/from16 v40, v15

    move-object/from16 v29, v40

    move/from16 v40, v7

    move/from16 v30, v40

    move-object/from16 v40, v11

    move-object/from16 v31, v40

    move-object/from16 v40, v16

    move-object/from16 v32, v40

    move/from16 v40, v17

    move/from16 v34, v40

    move-wide/from16 v40, v18

    move-wide/from16 v35, v40

    move-object/from16 v40, v20

    move-object/from16 v37, v40

    move/from16 v40, v21

    move/from16 v38, v40

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v40, v4

    move/from16 v41, v22

    invoke-static/range {v40 .. v41}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v32, v40

    move-wide/from16 v40, v5

    move-wide/from16 v22, v40

    move-object/from16 v40, v8

    move-object/from16 v24, v40

    move/from16 v40, v9

    move/from16 v25, v40

    move-object/from16 v40, v10

    move-object/from16 v26, v40

    move-wide/from16 v40, v12

    move-wide/from16 v27, v40

    move-object/from16 v40, v15

    move-object/from16 v29, v40

    move/from16 v40, v7

    move/from16 v30, v40

    move-object/from16 v40, v11

    move-object/from16 v31, v40

    move/from16 v40, v14

    move/from16 v33, v40

    move/from16 v40, v17

    move/from16 v34, v40

    move-wide/from16 v40, v18

    move-wide/from16 v35, v40

    move-object/from16 v40, v20

    move-object/from16 v37, v40

    move/from16 v40, v21

    move/from16 v38, v40

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v40, v4

    move/from16 v41, v22

    invoke-static/range {v40 .. v41}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v31, v40

    move-wide/from16 v40, v5

    move-wide/from16 v22, v40

    move-object/from16 v40, v8

    move-object/from16 v24, v40

    move/from16 v40, v9

    move/from16 v25, v40

    move-object/from16 v40, v10

    move-object/from16 v26, v40

    move-wide/from16 v40, v12

    move-wide/from16 v27, v40

    move-object/from16 v40, v15

    move-object/from16 v29, v40

    move/from16 v40, v7

    move/from16 v30, v40

    move-object/from16 v40, v16

    move-object/from16 v32, v40

    move/from16 v40, v14

    move/from16 v33, v40

    move/from16 v40, v17

    move/from16 v34, v40

    move-wide/from16 v40, v18

    move-wide/from16 v35, v40

    move-object/from16 v40, v20

    move-object/from16 v37, v40

    move/from16 v40, v21

    move/from16 v38, v40

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v40, v4

    move/from16 v41, v22

    invoke-static/range {v40 .. v41}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v40

    move/from16 v30, v40

    move-wide/from16 v40, v5

    move-wide/from16 v22, v40

    move-object/from16 v40, v8

    move-object/from16 v24, v40

    move/from16 v40, v9

    move/from16 v25, v40

    move-object/from16 v40, v10

    move-object/from16 v26, v40

    move-wide/from16 v40, v12

    move-wide/from16 v27, v40

    move-object/from16 v40, v15

    move-object/from16 v29, v40

    move-object/from16 v40, v11

    move-object/from16 v31, v40

    move-object/from16 v40, v16

    move-object/from16 v32, v40

    move/from16 v40, v14

    move/from16 v33, v40

    move/from16 v40, v17

    move/from16 v34, v40

    move-wide/from16 v40, v18

    move-wide/from16 v35, v40

    move-object/from16 v40, v20

    move-object/from16 v37, v40

    move/from16 v40, v21

    move/from16 v38, v40

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v40, v4

    move/from16 v41, v22

    invoke-static/range {v40 .. v41}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v29, v40

    move-wide/from16 v40, v5

    move-wide/from16 v22, v40

    move-object/from16 v40, v8

    move-object/from16 v24, v40

    move/from16 v40, v9

    move/from16 v25, v40

    move-object/from16 v40, v10

    move-object/from16 v26, v40

    move-wide/from16 v40, v12

    move-wide/from16 v27, v40

    move/from16 v40, v7

    move/from16 v30, v40

    move-object/from16 v40, v11

    move-object/from16 v31, v40

    move-object/from16 v40, v16

    move-object/from16 v32, v40

    move/from16 v40, v14

    move/from16 v33, v40

    move/from16 v40, v17

    move/from16 v34, v40

    move-wide/from16 v40, v18

    move-wide/from16 v35, v40

    move-object/from16 v40, v20

    move-object/from16 v37, v40

    move/from16 v40, v21

    move/from16 v38, v40

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v40, v4

    move/from16 v41, v22

    invoke-static/range {v40 .. v41}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v40

    move-wide/from16 v27, v40

    move-wide/from16 v40, v5

    move-wide/from16 v22, v40

    move-object/from16 v40, v8

    move-object/from16 v24, v40

    move/from16 v40, v9

    move/from16 v25, v40

    move-object/from16 v40, v10

    move-object/from16 v26, v40

    move-object/from16 v40, v15

    move-object/from16 v29, v40

    move/from16 v40, v7

    move/from16 v30, v40

    move-object/from16 v40, v11

    move-object/from16 v31, v40

    move-object/from16 v40, v16

    move-object/from16 v32, v40

    move/from16 v40, v14

    move/from16 v33, v40

    move/from16 v40, v17

    move/from16 v34, v40

    move-wide/from16 v40, v18

    move-wide/from16 v35, v40

    move-object/from16 v40, v20

    move-object/from16 v37, v40

    move/from16 v40, v21

    move/from16 v38, v40

    goto/16 :goto_1

    :pswitch_b
    move-object/from16 v40, v4

    move/from16 v41, v22

    invoke-static/range {v40 .. v41}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createStringList(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v40

    move-object/from16 v26, v40

    move-wide/from16 v40, v5

    move-wide/from16 v22, v40

    move-object/from16 v40, v8

    move-object/from16 v24, v40

    move/from16 v40, v9

    move/from16 v25, v40

    move-wide/from16 v40, v12

    move-wide/from16 v27, v40

    move-object/from16 v40, v15

    move-object/from16 v29, v40

    move/from16 v40, v7

    move/from16 v30, v40

    move-object/from16 v40, v11

    move-object/from16 v31, v40

    move-object/from16 v40, v16

    move-object/from16 v32, v40

    move/from16 v40, v14

    move/from16 v33, v40

    move/from16 v40, v17

    move/from16 v34, v40

    move-wide/from16 v40, v18

    move-wide/from16 v35, v40

    move-object/from16 v40, v20

    move-object/from16 v37, v40

    move/from16 v40, v21

    move/from16 v38, v40

    goto/16 :goto_1

    :pswitch_c
    move-object/from16 v40, v4

    move/from16 v41, v22

    invoke-static/range {v40 .. v41}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v40

    move/from16 v25, v40

    move-wide/from16 v40, v5

    move-wide/from16 v22, v40

    move-object/from16 v40, v8

    move-object/from16 v24, v40

    move-object/from16 v40, v10

    move-object/from16 v26, v40

    move-wide/from16 v40, v12

    move-wide/from16 v27, v40

    move-object/from16 v40, v15

    move-object/from16 v29, v40

    move/from16 v40, v7

    move/from16 v30, v40

    move-object/from16 v40, v11

    move-object/from16 v31, v40

    move-object/from16 v40, v16

    move-object/from16 v32, v40

    move/from16 v40, v14

    move/from16 v33, v40

    move/from16 v40, v17

    move/from16 v34, v40

    move-wide/from16 v40, v18

    move-wide/from16 v35, v40

    move-object/from16 v40, v20

    move-object/from16 v37, v40

    move/from16 v40, v21

    move/from16 v38, v40

    goto/16 :goto_1

    :pswitch_d
    move-object/from16 v40, v4

    move/from16 v41, v22

    invoke-static/range {v40 .. v41}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v24, v40

    move-wide/from16 v40, v5

    move-wide/from16 v22, v40

    move/from16 v40, v9

    move/from16 v25, v40

    move-object/from16 v40, v10

    move-object/from16 v26, v40

    move-wide/from16 v40, v12

    move-wide/from16 v27, v40

    move-object/from16 v40, v15

    move-object/from16 v29, v40

    move/from16 v40, v7

    move/from16 v30, v40

    move-object/from16 v40, v11

    move-object/from16 v31, v40

    move-object/from16 v40, v16

    move-object/from16 v32, v40

    move/from16 v40, v14

    move/from16 v33, v40

    move/from16 v40, v17

    move/from16 v34, v40

    move-wide/from16 v40, v18

    move-wide/from16 v35, v40

    move-object/from16 v40, v20

    move-object/from16 v37, v40

    move/from16 v40, v21

    move/from16 v38, v40

    goto/16 :goto_1

    :pswitch_e
    move-object/from16 v40, v4

    move/from16 v41, v22

    invoke-static/range {v40 .. v41}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v40

    move-wide/from16 v5, v40

    move-wide/from16 v40, v5

    move-wide/from16 v22, v40

    move-object/from16 v40, v8

    move-object/from16 v24, v40

    move/from16 v40, v9

    move/from16 v25, v40

    move-object/from16 v40, v10

    move-object/from16 v26, v40

    move-wide/from16 v40, v12

    move-wide/from16 v27, v40

    move-object/from16 v40, v15

    move-object/from16 v29, v40

    move/from16 v40, v7

    move/from16 v30, v40

    move-object/from16 v40, v11

    move-object/from16 v31, v40

    move-object/from16 v40, v16

    move-object/from16 v32, v40

    move/from16 v40, v14

    move/from16 v33, v40

    move/from16 v40, v17

    move/from16 v34, v40

    move-wide/from16 v40, v18

    move-wide/from16 v35, v40

    move-object/from16 v40, v20

    move-object/from16 v37, v40

    move/from16 v40, v21

    move/from16 v38, v40

    goto/16 :goto_1

    :pswitch_f
    move-object/from16 v40, v4

    move/from16 v41, v22

    invoke-static/range {v40 .. v41}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v40

    move/from16 v3, v40

    move-wide/from16 v40, v5

    move-wide/from16 v22, v40

    move-object/from16 v40, v8

    move-object/from16 v24, v40

    move/from16 v40, v9

    move/from16 v25, v40

    move-object/from16 v40, v10

    move-object/from16 v26, v40

    move-wide/from16 v40, v12

    move-wide/from16 v27, v40

    move-object/from16 v40, v15

    move-object/from16 v29, v40

    move/from16 v40, v7

    move/from16 v30, v40

    move-object/from16 v40, v11

    move-object/from16 v31, v40

    move-object/from16 v40, v16

    move-object/from16 v32, v40

    move/from16 v40, v14

    move/from16 v33, v40

    move/from16 v40, v17

    move/from16 v34, v40

    move-wide/from16 v40, v18

    move-wide/from16 v35, v40

    move-object/from16 v40, v20

    move-object/from16 v37, v40

    move/from16 v40, v21

    move/from16 v38, v40

    goto/16 :goto_1

    :cond_0
    move-object/from16 v40, v4

    move/from16 v41, v39

    invoke-static/range {v40 .. v41}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v40, Lcom/google/android/gms/common/stats/WakeLockEvent;

    move-object/from16 v4, v40

    move-object/from16 v40, v4

    move/from16 v41, v3

    move-wide/from16 v42, v5

    move/from16 v44, v7

    move-object/from16 v45, v8

    move/from16 v46, v9

    move-object/from16 v47, v10

    move-object/from16 v48, v11

    move-wide/from16 v49, v12

    move/from16 v51, v14

    move-object/from16 v52, v15

    move-object/from16 v53, v16

    move/from16 v54, v17

    move-wide/from16 v55, v18

    move-object/from16 v57, v20

    move/from16 v58, v21

    invoke-direct/range {v40 .. v58}, Lcom/google/android/gms/common/stats/WakeLockEvent;-><init>(IJILjava/lang/String;ILjava/util/List;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJLjava/lang/String;Z)V

    move-object/from16 v40, v4

    move-object/from16 v3, v40

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
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

    new-array v2, v2, [Lcom/google/android/gms/common/stats/WakeLockEvent;

    move-object v0, v2

    return-object v0
.end method
