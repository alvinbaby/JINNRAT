.class public final Lcom/google/android/gms/common/internal/zau;
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
        "Lcom/google/android/gms/common/internal/zat;",
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
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object v9, v1

    invoke-static {v9}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v9

    move v8, v9

    const/4 v9, 0x0

    move v0, v9

    const/4 v9, 0x0

    move-object v2, v9

    const/4 v9, 0x0

    move v3, v9

    const/4 v9, 0x0

    move-object v4, v9

    :goto_0
    move-object v9, v1

    invoke-virtual {v9}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    move v10, v8

    if-ge v9, v10, :cond_0

    move-object v9, v1

    invoke-static {v9}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v9

    move v5, v9

    move v9, v5

    invoke-static {v9}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    move-object v9, v1

    move v10, v5

    invoke-static {v9, v10}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    move-object v9, v2

    move-object v5, v9

    move v9, v3

    move v6, v9

    move-object v9, v4

    move-object v7, v9

    :goto_1
    move-object v9, v5

    move-object v2, v9

    move v9, v6

    move v3, v9

    move-object v9, v7

    move-object v4, v9

    goto :goto_0

    :pswitch_0
    move-object v9, v1

    move v10, v5

    sget-object v11, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v9, v10, v11}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-object v7, v9

    move-object v9, v2

    move-object v5, v9

    move v9, v3

    move v6, v9

    goto :goto_1

    :pswitch_1
    move-object v9, v1

    move v10, v5

    invoke-static {v9, v10}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v9

    move v6, v9

    move-object v9, v2

    move-object v5, v9

    move-object v9, v4

    move-object v7, v9

    goto :goto_1

    :pswitch_2
    move-object v9, v1

    move v10, v5

    sget-object v11, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v9, v10, v11}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/accounts/Account;

    move-object v5, v9

    move v9, v3

    move v6, v9

    move-object v9, v4

    move-object v7, v9

    goto :goto_1

    :pswitch_3
    move-object v9, v1

    move v10, v5

    invoke-static {v9, v10}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v9

    move v0, v9

    move-object v9, v2

    move-object v5, v9

    move v9, v3

    move v6, v9

    move-object v9, v4

    move-object v7, v9

    goto :goto_1

    :cond_0
    move-object v9, v1

    move v10, v8

    invoke-static {v9, v10}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v9, Lcom/google/android/gms/common/internal/zat;

    move-object v1, v9

    move-object v9, v1

    move v10, v0

    move-object v11, v2

    move v12, v3

    move-object v13, v4

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/android/gms/common/internal/zat;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    move-object v9, v1

    move-object v0, v9

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    new-array v2, v2, [Lcom/google/android/gms/common/internal/zat;

    move-object v0, v2

    return-object v0
.end method
