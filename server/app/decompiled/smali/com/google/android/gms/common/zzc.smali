.class public final Lcom/google/android/gms/common/zzc;
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
        "Lcom/google/android/gms/common/Feature;",
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
    .locals 15

    move-object v1, p0

    move-object/from16 v2, p1

    move-object v10, v2

    invoke-static {v10}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v10

    move v9, v10

    const/4 v10, 0x0

    move-object v1, v10

    const/4 v10, 0x0

    move v3, v10

    const-wide/16 v10, -0x1

    move-wide v4, v10

    :goto_0
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->dataPosition()I

    move-result v10

    move v11, v9

    if-ge v10, v11, :cond_0

    move-object v10, v2

    invoke-static {v10}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v10

    move v6, v10

    move v10, v6

    invoke-static {v10}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    move-object v10, v2

    move v11, v6

    invoke-static {v10, v11}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    move v10, v3

    move v6, v10

    move-wide v10, v4

    move-wide v7, v10

    :goto_1
    move v10, v6

    move v3, v10

    move-wide v10, v7

    move-wide v4, v10

    goto :goto_0

    :pswitch_0
    move-object v10, v2

    move v11, v6

    invoke-static {v10, v11}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v10

    move-wide v7, v10

    move v10, v3

    move v6, v10

    goto :goto_1

    :pswitch_1
    move-object v10, v2

    move v11, v6

    invoke-static {v10, v11}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v10

    move v6, v10

    move-wide v10, v4

    move-wide v7, v10

    goto :goto_1

    :pswitch_2
    move-object v10, v2

    move v11, v6

    invoke-static {v10, v11}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    move-object v1, v10

    move v10, v3

    move v6, v10

    move-wide v10, v4

    move-wide v7, v10

    goto :goto_1

    :cond_0
    move-object v10, v2

    move v11, v9

    invoke-static {v10, v11}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v10, Lcom/google/android/gms/common/Feature;

    move-object v2, v10

    move-object v10, v2

    move-object v11, v1

    move v12, v3

    move-wide v13, v4

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;IJ)V

    move-object v10, v2

    move-object v1, v10

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
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

    new-array v2, v2, [Lcom/google/android/gms/common/Feature;

    move-object v0, v2

    return-object v0
.end method
