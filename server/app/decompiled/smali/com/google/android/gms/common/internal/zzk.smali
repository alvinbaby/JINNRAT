.class public final Lcom/google/android/gms/common/internal/zzk;
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
        "Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;",
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
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v13, v1

    invoke-static {v13}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v13

    move v12, v13

    const/4 v13, 0x0

    move-object v0, v13

    const/4 v13, 0x0

    move v2, v13

    const/4 v13, 0x0

    move v3, v13

    const/4 v13, 0x0

    move-object v4, v13

    const/4 v13, 0x0

    move v5, v13

    const/4 v13, 0x0

    move-object v6, v13

    :goto_0
    move-object v13, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->dataPosition()I

    move-result v13

    move v14, v12

    if-ge v13, v14, :cond_0

    move-object v13, v1

    invoke-static {v13}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v13

    move v7, v13

    move v13, v7

    invoke-static {v13}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v13

    packed-switch v13, :pswitch_data_0

    move-object v13, v1

    move v14, v7

    invoke-static {v13, v14}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    move v13, v2

    move v7, v13

    move v13, v3

    move v8, v13

    move-object v13, v4

    move-object v9, v13

    move v13, v5

    move v10, v13

    move-object v13, v6

    move-object v11, v13

    :goto_1
    move v13, v7

    move v2, v13

    move v13, v8

    move v3, v13

    move-object v13, v9

    move-object v4, v13

    move v13, v10

    move v5, v13

    move-object v13, v11

    move-object v6, v13

    goto :goto_0

    :pswitch_0
    move-object v13, v1

    move v14, v7

    invoke-static {v13, v14}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createIntArray(Landroid/os/Parcel;I)[I

    move-result-object v13

    move-object v11, v13

    move v13, v2

    move v7, v13

    move v13, v3

    move v8, v13

    move-object v13, v4

    move-object v9, v13

    move v13, v5

    move v10, v13

    goto :goto_1

    :pswitch_1
    move-object v13, v1

    move v14, v7

    invoke-static {v13, v14}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v13

    move v10, v13

    move v13, v2

    move v7, v13

    move v13, v3

    move v8, v13

    move-object v13, v4

    move-object v9, v13

    move-object v13, v6

    move-object v11, v13

    goto :goto_1

    :pswitch_2
    move-object v13, v1

    move v14, v7

    invoke-static {v13, v14}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createIntArray(Landroid/os/Parcel;I)[I

    move-result-object v13

    move-object v9, v13

    move v13, v2

    move v7, v13

    move v13, v3

    move v8, v13

    move v13, v5

    move v10, v13

    move-object v13, v6

    move-object v11, v13

    goto :goto_1

    :pswitch_3
    move-object v13, v1

    move v14, v7

    invoke-static {v13, v14}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v13

    move v8, v13

    move v13, v2

    move v7, v13

    move-object v13, v4

    move-object v9, v13

    move v13, v5

    move v10, v13

    move-object v13, v6

    move-object v11, v13

    goto :goto_1

    :pswitch_4
    move-object v13, v1

    move v14, v7

    invoke-static {v13, v14}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v13

    move v7, v13

    move v13, v3

    move v8, v13

    move-object v13, v4

    move-object v9, v13

    move v13, v5

    move v10, v13

    move-object v13, v6

    move-object v11, v13

    goto :goto_1

    :pswitch_5
    move-object v13, v1

    move v14, v7

    sget-object v15, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v13, v14, v15}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    move-object v0, v13

    move v13, v2

    move v7, v13

    move v13, v3

    move v8, v13

    move-object v13, v4

    move-object v9, v13

    move v13, v5

    move v10, v13

    move-object v13, v6

    move-object v11, v13

    goto :goto_1

    :cond_0
    move-object v13, v1

    move v14, v12

    invoke-static {v13, v14}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v13, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    move-object v1, v13

    move-object v13, v1

    move-object v14, v0

    move v15, v2

    move/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v19, v6

    invoke-direct/range {v13 .. v19}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;-><init>(Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;ZZ[II[I)V

    move-object v13, v1

    move-object v0, v13

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    new-array v2, v2, [Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    move-object v0, v2

    return-object v0
.end method
