.class public final Lcom/google/android/gms/common/data/zad;
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
        "Lcom/google/android/gms/common/data/DataHolder;",
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
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v11, v1

    invoke-static {v11}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v11

    move v10, v11

    const/4 v11, 0x0

    move v0, v11

    const/4 v11, 0x0

    move-object v2, v11

    const/4 v11, 0x0

    move-object v3, v11

    const/4 v11, 0x0

    move v4, v11

    const/4 v11, 0x0

    move-object v5, v11

    :goto_0
    move-object v11, v1

    invoke-virtual {v11}, Landroid/os/Parcel;->dataPosition()I

    move-result v11

    move v12, v10

    if-ge v11, v12, :cond_0

    move-object v11, v1

    invoke-static {v11}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v11

    move v6, v11

    move v11, v6

    invoke-static {v11}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    move-object v11, v1

    move v12, v6

    invoke-static {v11, v12}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    move-object v11, v3

    move-object v6, v11

    move v11, v4

    move v7, v11

    move-object v11, v5

    move-object v8, v11

    move v11, v0

    move v9, v11

    :goto_1
    move v11, v9

    move v0, v11

    move-object v11, v6

    move-object v3, v11

    move v11, v7

    move v4, v11

    move-object v11, v8

    move-object v5, v11

    goto :goto_0

    :sswitch_0
    move-object v11, v1

    move v12, v6

    invoke-static {v11, v12}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v11

    move v9, v11

    move-object v11, v3

    move-object v6, v11

    move v11, v4

    move v7, v11

    move-object v11, v5

    move-object v8, v11

    goto :goto_1

    :sswitch_1
    move-object v11, v1

    move v12, v6

    invoke-static {v11, v12}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createBundle(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v11

    move-object v8, v11

    move-object v11, v3

    move-object v6, v11

    move v11, v4

    move v7, v11

    move v11, v0

    move v9, v11

    goto :goto_1

    :sswitch_2
    move-object v11, v1

    move v12, v6

    invoke-static {v11, v12}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v11

    move v7, v11

    move-object v11, v3

    move-object v6, v11

    move-object v11, v5

    move-object v8, v11

    move v11, v0

    move v9, v11

    goto :goto_1

    :sswitch_3
    move-object v11, v1

    move v12, v6

    sget-object v13, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v11, v12, v13}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/database/CursorWindow;

    move-object v6, v11

    move v11, v4

    move v7, v11

    move-object v11, v5

    move-object v8, v11

    move v11, v0

    move v9, v11

    goto :goto_1

    :sswitch_4
    move-object v11, v1

    move v12, v6

    invoke-static {v11, v12}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createStringArray(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v11

    move-object v2, v11

    move-object v11, v3

    move-object v6, v11

    move v11, v4

    move v7, v11

    move-object v11, v5

    move-object v8, v11

    move v11, v0

    move v9, v11

    goto :goto_1

    :cond_0
    move-object v11, v1

    move v12, v10

    invoke-static {v11, v12}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v11, Lcom/google/android/gms/common/data/DataHolder;

    move-object v1, v11

    move-object v11, v1

    move v12, v0

    move-object v13, v2

    move-object v14, v3

    move v15, v4

    move-object/from16 v16, v5

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/common/data/DataHolder;-><init>(I[Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    move-object v11, v1

    invoke-virtual {v11}, Lcom/google/android/gms/common/data/DataHolder;->zaa()V

    move-object v11, v1

    move-object v0, v11

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 3

    move-object v0, p0

    move v1, p1

    move v2, v1

    new-array v2, v2, [Lcom/google/android/gms/common/data/DataHolder;

    move-object v0, v2

    return-object v0
.end method
