.class public Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBigDecimal(Landroid/os/Parcel;I)Ljava/math/BigDecimal;
    .locals 8
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    move v6, v1

    .line 1
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v5

    move v1, v5

    move-object v5, v0

    .line 2
    invoke-virtual {v5}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    move v2, v5

    move v5, v1

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move-object v0, v5

    .line 6
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move-object v5, v0

    .line 3
    invoke-virtual {v5}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    move-object v3, v5

    move-object v5, v0

    .line 4
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move v4, v5

    move-object v5, v0

    move v6, v2

    move v7, v1

    add-int/2addr v6, v7

    .line 5
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v5, Ljava/math/BigDecimal;

    move-object v0, v5

    new-instance v5, Ljava/math/BigInteger;

    move-object v1, v5

    move-object v5, v1

    move-object v6, v3

    .line 6
    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>([B)V

    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-direct {v5, v6, v7}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object v5, v0

    move-object v0, v5

    goto :goto_0
.end method

.method public static createBigDecimalArray(Landroid/os/Parcel;I)[Ljava/math/BigDecimal;
    .locals 13
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v10, v0

    move v11, v1

    .line 1
    invoke-static {v10, v11}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v10

    move v2, v10

    move-object v10, v0

    .line 2
    invoke-virtual {v10}, Landroid/os/Parcel;->dataPosition()I

    move-result v10

    move v3, v10

    move v10, v2

    if-nez v10, :cond_0

    const/4 v10, 0x0

    move-object v0, v10

    .line 8
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move-object v10, v0

    .line 3
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move v4, v10

    move v10, v4

    .line 4
    new-array v10, v10, [Ljava/math/BigDecimal;

    move-object v5, v10

    const/4 v10, 0x0

    move v1, v10

    :goto_1
    move v10, v1

    move v11, v4

    if-ge v10, v11, :cond_1

    move-object v10, v0

    .line 5
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    move-object v6, v10

    move-object v10, v0

    .line 6
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move v7, v10

    new-instance v10, Ljava/math/BigDecimal;

    move-object v8, v10

    new-instance v10, Ljava/math/BigInteger;

    move-object v9, v10

    move-object v10, v9

    move-object v11, v6

    .line 7
    invoke-direct {v10, v11}, Ljava/math/BigInteger;-><init>([B)V

    move-object v10, v8

    move-object v11, v9

    move v12, v7

    invoke-direct {v10, v11, v12}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object v10, v5

    move v11, v1

    move-object v12, v8

    aput-object v12, v10, v11

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v10, v0

    move v11, v3

    move v12, v2

    add-int/2addr v11, v12

    .line 8
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v10, v5

    move-object v0, v10

    goto :goto_0
.end method

.method public static createBigInteger(Landroid/os/Parcel;I)Ljava/math/BigInteger;
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    .line 1
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    .line 2
    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    move v2, v4

    move v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 5
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move-object v4, v0

    .line 3
    invoke-virtual {v4}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    move v5, v2

    move v6, v1

    add-int/2addr v5, v6

    .line 4
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v4, Ljava/math/BigInteger;

    move-object v0, v4

    move-object v4, v0

    move-object v5, v3

    .line 5
    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>([B)V

    move-object v4, v0

    move-object v0, v4

    goto :goto_0
.end method

.method public static createBigIntegerArray(Landroid/os/Parcel;I)[Ljava/math/BigInteger;
    .locals 10
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v7, v0

    move v8, v1

    .line 1
    invoke-static {v7, v8}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v7

    move v2, v7

    move-object v7, v0

    .line 2
    invoke-virtual {v7}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    move v3, v7

    move v7, v2

    if-nez v7, :cond_0

    const/4 v7, 0x0

    move-object v0, v7

    .line 6
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move-object v7, v0

    .line 3
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move v4, v7

    move v7, v4

    .line 4
    new-array v7, v7, [Ljava/math/BigInteger;

    move-object v5, v7

    const/4 v7, 0x0

    move v1, v7

    :goto_1
    move v7, v1

    move v8, v4

    if-ge v7, v8, :cond_1

    new-instance v7, Ljava/math/BigInteger;

    move-object v6, v7

    move-object v7, v6

    move-object v8, v0

    .line 5
    invoke-virtual {v8}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>([B)V

    move-object v7, v5

    move v8, v1

    move-object v9, v6

    aput-object v9, v7, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v7, v0

    move v8, v3

    move v9, v2

    add-int/2addr v8, v9

    .line 6
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v7, v5

    move-object v0, v7

    goto :goto_0
.end method

.method public static createBooleanArray(Landroid/os/Parcel;I)[Z
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    .line 1
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    .line 2
    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    move v2, v4

    move v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 4
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move-object v4, v0

    .line 3
    invoke-virtual {v4}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    move v5, v2

    move v6, v1

    add-int/2addr v5, v6

    .line 4
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method public static createBooleanList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .locals 10
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v7, v0

    move v8, v1

    .line 1
    invoke-static {v7, v8}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v7

    move v3, v7

    move-object v7, v0

    .line 2
    invoke-virtual {v7}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    move v4, v7

    move v7, v3

    if-nez v7, :cond_0

    const/4 v7, 0x0

    move-object v0, v7

    .line 6
    :goto_0
    return-object v0

    .line 2
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    move-object v5, v7

    move-object v7, v5

    .line 3
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 4
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move v6, v7

    const/4 v7, 0x0

    move v1, v7

    :goto_1
    move v7, v1

    move v8, v6

    if-ge v7, v8, :cond_2

    move-object v7, v0

    .line 5
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    move v2, v7

    :goto_2
    move-object v7, v5

    move v8, v2

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    move v2, v7

    goto :goto_2

    :cond_2
    move-object v7, v0

    move v8, v4

    move v9, v3

    add-int/2addr v8, v9

    .line 6
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v7, v5

    move-object v0, v7

    goto :goto_0
.end method

.method public static createBundle(Landroid/os/Parcel;I)Landroid/os/Bundle;
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    .line 1
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    .line 2
    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    move v2, v4

    move v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 4
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move-object v4, v0

    .line 3
    invoke-virtual {v4}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    move v5, v2

    move v6, v1

    add-int/2addr v5, v6

    .line 4
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method public static createByteArray(Landroid/os/Parcel;I)[B
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    .line 1
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    .line 2
    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    move v2, v4

    move v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 4
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move-object v4, v0

    .line 3
    invoke-virtual {v4}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    move v5, v2

    move v6, v1

    add-int/2addr v5, v6

    .line 4
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method public static createByteArrayArray(Landroid/os/Parcel;I)[[B
    .locals 9
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    move v7, v1

    .line 1
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v6

    move v2, v6

    move-object v6, v0

    .line 2
    invoke-virtual {v6}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    move v3, v6

    move v6, v2

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move-object v0, v6

    .line 6
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move-object v6, v0

    .line 3
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move v4, v6

    move v6, v4

    .line 4
    new-array v6, v6, [[B

    move-object v5, v6

    const/4 v6, 0x0

    move v1, v6

    :goto_1
    move v6, v1

    move v7, v4

    if-ge v6, v7, :cond_1

    move-object v6, v5

    move v7, v1

    move-object v8, v0

    .line 5
    invoke-virtual {v8}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v6, v0

    move v7, v3

    move v8, v2

    add-int/2addr v7, v8

    .line 6
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v6, v5

    move-object v0, v6

    goto :goto_0
.end method

.method public static createByteArraySparseArray(Landroid/os/Parcel;I)Landroid/util/SparseArray;
    .locals 9
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Landroid/util/SparseArray",
            "<[B>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    move v7, v1

    .line 1
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v6

    move v2, v6

    move-object v6, v0

    .line 2
    invoke-virtual {v6}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    move v3, v6

    move v6, v2

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move-object v0, v6

    .line 8
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move-object v6, v0

    .line 3
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move v4, v6

    new-instance v6, Landroid/util/SparseArray;

    move-object v5, v6

    move-object v6, v5

    move v7, v4

    .line 4
    invoke-direct {v6, v7}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v6, 0x0

    move v1, v6

    :goto_1
    move v6, v1

    move v7, v4

    if-ge v6, v7, :cond_1

    move-object v6, v5

    move-object v7, v0

    .line 5
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v8, v0

    .line 6
    invoke-virtual {v8}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 7
    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v6, v0

    move v7, v3

    move v8, v2

    add-int/2addr v7, v8

    .line 8
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v6, v5

    move-object v0, v6

    goto :goto_0
.end method

.method public static createCharArray(Landroid/os/Parcel;I)[C
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    .line 1
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    .line 2
    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    move v2, v4

    move v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 4
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move-object v4, v0

    .line 3
    invoke-virtual {v4}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    move v5, v2

    move v6, v1

    add-int/2addr v5, v6

    .line 4
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method public static createDoubleArray(Landroid/os/Parcel;I)[D
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    .line 1
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    .line 2
    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    move v2, v4

    move v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 4
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move-object v4, v0

    .line 3
    invoke-virtual {v4}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    move v5, v2

    move v6, v1

    add-int/2addr v5, v6

    .line 4
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method public static createDoubleList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .locals 10
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    move-object v1, p0

    move v2, p1

    move-object v7, v1

    move v8, v2

    .line 1
    invoke-static {v7, v8}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v7

    move v3, v7

    move-object v7, v1

    .line 2
    invoke-virtual {v7}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    move v4, v7

    move v7, v3

    if-nez v7, :cond_0

    const/4 v7, 0x0

    move-object v1, v7

    .line 6
    :goto_0
    return-object v1

    .line 2
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    move-object v5, v7

    move-object v7, v5

    .line 3
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    .line 4
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move v6, v7

    const/4 v7, 0x0

    move v2, v7

    :goto_1
    move v7, v2

    move v8, v6

    if-ge v7, v8, :cond_1

    move-object v7, v5

    move-object v8, v1

    .line 5
    invoke-virtual {v8}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v7, v1

    move v8, v4

    move v9, v3

    add-int/2addr v8, v9

    .line 6
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v7, v5

    move-object v1, v7

    goto :goto_0
.end method

.method public static createDoubleSparseArray(Landroid/os/Parcel;I)Landroid/util/SparseArray;
    .locals 10
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    move v7, v1

    .line 1
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v6

    move v2, v6

    move-object v6, v0

    .line 2
    invoke-virtual {v6}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    move v3, v6

    move v6, v2

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move-object v0, v6

    .line 8
    :goto_0
    return-object v0

    .line 2
    :cond_0
    new-instance v6, Landroid/util/SparseArray;

    move-object v4, v6

    move-object v6, v4

    .line 3
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    move-object v6, v0

    .line 4
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move v5, v6

    const/4 v6, 0x0

    move v1, v6

    :goto_1
    move v6, v1

    move v7, v5

    if-ge v6, v7, :cond_1

    move-object v6, v4

    move-object v7, v0

    .line 5
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v8, v0

    .line 6
    invoke-virtual {v8}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    .line 7
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v6, v0

    move v7, v3

    move v8, v2

    add-int/2addr v7, v8

    .line 8
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v6, v4

    move-object v0, v6

    goto :goto_0
.end method

.method public static createFloatArray(Landroid/os/Parcel;I)[F
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    .line 1
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    .line 2
    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    move v2, v4

    move v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 4
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move-object v4, v0

    .line 3
    invoke-virtual {v4}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    move v5, v2

    move v6, v1

    add-int/2addr v5, v6

    .line 4
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method public static createFloatList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .locals 9
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    move v7, v1

    .line 1
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v6

    move v2, v6

    move-object v6, v0

    .line 2
    invoke-virtual {v6}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    move v3, v6

    move v6, v2

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move-object v0, v6

    .line 6
    :goto_0
    return-object v0

    .line 2
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    move-object v4, v6

    move-object v6, v4

    .line 3
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 4
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move v5, v6

    const/4 v6, 0x0

    move v1, v6

    :goto_1
    move v6, v1

    move v7, v5

    if-ge v6, v7, :cond_1

    move-object v6, v4

    move-object v7, v0

    .line 5
    invoke-virtual {v7}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v6, v0

    move v7, v3

    move v8, v2

    add-int/2addr v7, v8

    .line 6
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v6, v4

    move-object v0, v6

    goto :goto_0
.end method

.method public static createFloatSparseArray(Landroid/os/Parcel;I)Landroid/util/SparseArray;
    .locals 9
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    move v7, v1

    .line 1
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v6

    move v2, v6

    move-object v6, v0

    .line 2
    invoke-virtual {v6}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    move v3, v6

    move v6, v2

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move-object v0, v6

    .line 8
    :goto_0
    return-object v0

    .line 2
    :cond_0
    new-instance v6, Landroid/util/SparseArray;

    move-object v4, v6

    move-object v6, v4

    .line 3
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    move-object v6, v0

    .line 4
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move v5, v6

    const/4 v6, 0x0

    move v1, v6

    :goto_1
    move v6, v1

    move v7, v5

    if-ge v6, v7, :cond_1

    move-object v6, v4

    move-object v7, v0

    .line 5
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v8, v0

    .line 6
    invoke-virtual {v8}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 7
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v6, v0

    move v7, v3

    move v8, v2

    add-int/2addr v7, v8

    .line 8
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v6, v4

    move-object v0, v6

    goto :goto_0
.end method

.method public static createIBinderArray(Landroid/os/Parcel;I)[Landroid/os/IBinder;
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    .line 1
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    .line 2
    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    move v2, v4

    move v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 4
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move-object v4, v0

    .line 3
    invoke-virtual {v4}, Landroid/os/Parcel;->createBinderArray()[Landroid/os/IBinder;

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    move v5, v2

    move v6, v1

    add-int/2addr v5, v6

    .line 4
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method public static createIBinderList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    .line 1
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    .line 2
    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    move v2, v4

    move v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 4
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move-object v4, v0

    .line 3
    invoke-virtual {v4}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    move v5, v2

    move v6, v1

    add-int/2addr v5, v6

    .line 4
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method public static createIBinderSparseArray(Landroid/os/Parcel;I)Landroid/util/SparseArray;
    .locals 9
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    move v7, v1

    .line 1
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v6

    move v2, v6

    move-object v6, v0

    .line 2
    invoke-virtual {v6}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    move v3, v6

    move v6, v2

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move-object v0, v6

    .line 8
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move-object v6, v0

    .line 3
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move v4, v6

    new-instance v6, Landroid/util/SparseArray;

    move-object v5, v6

    move-object v6, v5

    move v7, v4

    .line 4
    invoke-direct {v6, v7}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v6, 0x0

    move v1, v6

    :goto_1
    move v6, v1

    move v7, v4

    if-ge v6, v7, :cond_1

    move-object v6, v5

    move-object v7, v0

    .line 5
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v8, v0

    .line 6
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 7
    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v6, v0

    move v7, v3

    move v8, v2

    add-int/2addr v7, v8

    .line 8
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v6, v5

    move-object v0, v6

    goto :goto_0
.end method

.method public static createIntArray(Landroid/os/Parcel;I)[I
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    .line 1
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    .line 2
    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    move v2, v4

    move v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 4
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move-object v4, v0

    .line 3
    invoke-virtual {v4}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    move v5, v2

    move v6, v1

    add-int/2addr v5, v6

    .line 4
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method public static createIntegerList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .locals 9
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    move v7, v1

    .line 1
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v6

    move v2, v6

    move-object v6, v0

    .line 2
    invoke-virtual {v6}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    move v3, v6

    move v6, v2

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move-object v0, v6

    .line 6
    :goto_0
    return-object v0

    .line 2
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    move-object v4, v6

    move-object v6, v4

    .line 3
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 4
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move v5, v6

    const/4 v6, 0x0

    move v1, v6

    :goto_1
    move v6, v1

    move v7, v5

    if-ge v6, v7, :cond_1

    move-object v6, v4

    move-object v7, v0

    .line 5
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v6, v0

    move v7, v3

    move v8, v2

    add-int/2addr v7, v8

    .line 6
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v6, v4

    move-object v0, v6

    goto :goto_0
.end method

.method public static createLongArray(Landroid/os/Parcel;I)[J
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    .line 1
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    .line 2
    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    move v2, v4

    move v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 4
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move-object v4, v0

    .line 3
    invoke-virtual {v4}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    move v5, v2

    move v6, v1

    add-int/2addr v5, v6

    .line 4
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method public static createLongList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .locals 10
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    move-object v1, p0

    move v2, p1

    move-object v7, v1

    move v8, v2

    .line 1
    invoke-static {v7, v8}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v7

    move v3, v7

    move-object v7, v1

    .line 2
    invoke-virtual {v7}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    move v4, v7

    move v7, v3

    if-nez v7, :cond_0

    const/4 v7, 0x0

    move-object v1, v7

    .line 6
    :goto_0
    return-object v1

    .line 2
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    move-object v5, v7

    move-object v7, v5

    .line 3
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    .line 4
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move v6, v7

    const/4 v7, 0x0

    move v2, v7

    :goto_1
    move v7, v2

    move v8, v6

    if-ge v7, v8, :cond_1

    move-object v7, v5

    move-object v8, v1

    .line 5
    invoke-virtual {v8}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v7, v1

    move v8, v4

    move v9, v3

    add-int/2addr v8, v9

    .line 6
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v7, v5

    move-object v1, v7

    goto :goto_0
.end method

.method public static createParcel(Landroid/os/Parcel;I)Landroid/os/Parcel;
    .locals 8
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    .line 1
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    .line 2
    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    move v2, v4

    move v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 5
    :goto_0
    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    move-object v5, v0

    move v6, v2

    move v7, v1

    .line 4
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    move-object v4, v0

    move v5, v2

    move v6, v1

    add-int/2addr v5, v6

    .line 5
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method public static createParcelArray(Landroid/os/Parcel;I)[Landroid/os/Parcel;
    .locals 13
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v9, v0

    move v10, v1

    .line 1
    invoke-static {v9, v10}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v9

    move v2, v9

    move-object v9, v0

    .line 2
    invoke-virtual {v9}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    move v3, v9

    move v9, v2

    if-nez v9, :cond_0

    const/4 v9, 0x0

    move-object v0, v9

    .line 12
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move-object v9, v0

    .line 3
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move v4, v9

    move v9, v4

    .line 4
    new-array v9, v9, [Landroid/os/Parcel;

    move-object v5, v9

    const/4 v9, 0x0

    move v1, v9

    :goto_1
    move v9, v1

    move v10, v4

    if-ge v9, v10, :cond_2

    move-object v9, v0

    .line 5
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move v6, v9

    move v9, v6

    if-eqz v9, :cond_1

    move-object v9, v0

    .line 6
    invoke-virtual {v9}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    move v7, v9

    .line 7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    move-object v8, v9

    move-object v9, v8

    move-object v10, v0

    move v11, v7

    move v12, v6

    .line 8
    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    move-object v9, v5

    move v10, v1

    move-object v11, v8

    .line 9
    aput-object v11, v9, v10

    move-object v9, v0

    move v10, v7

    move v11, v6

    add-int/2addr v10, v11

    .line 10
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->setDataPosition(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v9, v5

    move v10, v1

    const/4 v11, 0x0

    .line 11
    aput-object v11, v9, v10

    goto :goto_2

    :cond_2
    move-object v9, v0

    move v10, v3

    move v11, v2

    add-int/2addr v10, v11

    .line 12
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v9, v5

    move-object v0, v9

    goto :goto_0
.end method

.method public static createParcelList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .locals 13
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcel;",
            ">;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v9, v0

    move v10, v1

    .line 1
    invoke-static {v9, v10}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v9

    move v2, v9

    move-object v9, v0

    .line 2
    invoke-virtual {v9}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    move v3, v9

    move v9, v2

    if-nez v9, :cond_0

    const/4 v9, 0x0

    move-object v0, v9

    .line 12
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move-object v9, v0

    .line 3
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move v4, v9

    new-instance v9, Ljava/util/ArrayList;

    move-object v5, v9

    move-object v9, v5

    .line 4
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    move v1, v9

    :goto_1
    move v9, v1

    move v10, v4

    if-ge v9, v10, :cond_2

    move-object v9, v0

    .line 5
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move v6, v9

    move v9, v6

    if-eqz v9, :cond_1

    move-object v9, v0

    .line 6
    invoke-virtual {v9}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    move v7, v9

    .line 7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    move-object v8, v9

    move-object v9, v8

    move-object v10, v0

    move v11, v7

    move v12, v6

    .line 8
    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    move-object v9, v5

    move-object v10, v8

    .line 9
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    move-object v9, v0

    move v10, v7

    move v11, v6

    add-int/2addr v10, v11

    .line 10
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->setDataPosition(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v9, v5

    const/4 v10, 0x0

    .line 11
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_2

    :cond_2
    move-object v9, v0

    move v10, v3

    move v11, v2

    add-int/2addr v10, v11

    .line 12
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v9, v5

    move-object v0, v9

    goto :goto_0
.end method

.method public static createParcelSparseArray(Landroid/os/Parcel;I)Landroid/util/SparseArray;
    .locals 14
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcel;",
            ">;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v10, v0

    move v11, v1

    .line 1
    invoke-static {v10, v11}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v10

    move v2, v10

    move-object v10, v0

    .line 2
    invoke-virtual {v10}, Landroid/os/Parcel;->dataPosition()I

    move-result v10

    move v3, v10

    move v10, v2

    if-nez v10, :cond_0

    const/4 v10, 0x0

    move-object v0, v10

    .line 13
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move-object v10, v0

    .line 3
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move v4, v10

    new-instance v10, Landroid/util/SparseArray;

    move-object v5, v10

    move-object v10, v5

    .line 4
    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    const/4 v10, 0x0

    move v1, v10

    :goto_1
    move v10, v1

    move v11, v4

    if-ge v10, v11, :cond_2

    move-object v10, v0

    .line 5
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move v6, v10

    move-object v10, v0

    .line 6
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move v7, v10

    move v10, v7

    if-eqz v10, :cond_1

    move-object v10, v0

    .line 7
    invoke-virtual {v10}, Landroid/os/Parcel;->dataPosition()I

    move-result v10

    move v8, v10

    .line 8
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    move-object v9, v10

    move-object v10, v9

    move-object v11, v0

    move v12, v8

    move v13, v7

    .line 9
    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    move-object v10, v5

    move v11, v6

    move-object v12, v9

    .line 10
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    move-object v10, v0

    move v11, v8

    move v12, v7

    add-int/2addr v11, v12

    .line 11
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v10, v5

    move v11, v6

    const/4 v12, 0x0

    .line 12
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    move-object v10, v0

    move v11, v3

    move v12, v2

    add-int/2addr v11, v12

    .line 13
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v10, v5

    move-object v0, v10

    goto :goto_0
.end method

.method public static createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Parcelable$Creator;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    move v5, v1

    .line 1
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    .line 2
    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    move v3, v4

    move v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 4
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move-object v4, v2

    move-object v5, v0

    .line 3
    invoke-interface {v4, v5}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    check-cast v4, Landroid/os/Parcelable;

    move-object v2, v4

    move-object v4, v0

    move v5, v3

    move v6, v1

    add-int/2addr v5, v6

    .line 4
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v4, v2

    move-object v0, v4

    goto :goto_0
.end method

.method public static createSparseBooleanArray(Landroid/os/Parcel;I)Landroid/util/SparseBooleanArray;
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    .line 1
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    .line 2
    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    move v2, v4

    move v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 4
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move-object v4, v0

    .line 3
    invoke-virtual {v4}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    move v5, v2

    move v6, v1

    add-int/2addr v5, v6

    .line 4
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method public static createSparseIntArray(Landroid/os/Parcel;I)Landroid/util/SparseIntArray;
    .locals 9
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    move v7, v1

    .line 1
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v6

    move v2, v6

    move-object v6, v0

    .line 2
    invoke-virtual {v6}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    move v3, v6

    move v6, v2

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move-object v0, v6

    .line 8
    :goto_0
    return-object v0

    .line 2
    :cond_0
    new-instance v6, Landroid/util/SparseIntArray;

    move-object v4, v6

    move-object v6, v4

    .line 3
    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    move-object v6, v0

    .line 4
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move v5, v6

    const/4 v6, 0x0

    move v1, v6

    :goto_1
    move v6, v1

    move v7, v5

    if-ge v6, v7, :cond_1

    move-object v6, v4

    move-object v7, v0

    .line 5
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v8, v0

    .line 6
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 7
    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->append(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v6, v0

    move v7, v3

    move v8, v2

    add-int/2addr v7, v8

    .line 8
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v6, v4

    move-object v0, v6

    goto :goto_0
.end method

.method public static createSparseLongArray(Landroid/os/Parcel;I)Landroid/util/SparseLongArray;
    .locals 10
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    move v7, v1

    .line 1
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v6

    move v2, v6

    move-object v6, v0

    .line 2
    invoke-virtual {v6}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    move v3, v6

    move v6, v2

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move-object v0, v6

    .line 8
    :goto_0
    return-object v0

    .line 3
    :cond_0
    new-instance v6, Landroid/util/SparseLongArray;

    move-object v4, v6

    move-object v6, v4

    invoke-direct {v6}, Landroid/util/SparseLongArray;-><init>()V

    move-object v6, v0

    .line 4
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move v5, v6

    const/4 v6, 0x0

    move v1, v6

    :goto_1
    move v6, v1

    move v7, v5

    if-ge v6, v7, :cond_1

    move-object v6, v4

    move-object v7, v0

    .line 5
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v8, v0

    .line 6
    invoke-virtual {v8}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 7
    invoke-virtual {v6, v7, v8, v9}, Landroid/util/SparseLongArray;->append(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v6, v0

    move v7, v3

    move v8, v2

    add-int/2addr v7, v8

    .line 8
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v6, v4

    move-object v0, v6

    goto :goto_0
.end method

.method public static createString(Landroid/os/Parcel;I)Ljava/lang/String;
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    .line 1
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    .line 2
    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    move v2, v4

    move v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 4
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move-object v4, v0

    .line 3
    invoke-virtual {v4}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    move v5, v2

    move v6, v1

    add-int/2addr v5, v6

    .line 4
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method public static createStringArray(Landroid/os/Parcel;I)[Ljava/lang/String;
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    .line 1
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    .line 2
    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    move v2, v4

    move v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 4
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move-object v4, v0

    .line 3
    invoke-virtual {v4}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    move v5, v2

    move v6, v1

    add-int/2addr v5, v6

    .line 4
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method public static createStringList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    .line 1
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    .line 2
    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    move v2, v4

    move v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 4
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move-object v4, v0

    .line 3
    invoke-virtual {v4}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    move v5, v2

    move v6, v1

    add-int/2addr v5, v6

    .line 4
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method public static createStringSparseArray(Landroid/os/Parcel;I)Landroid/util/SparseArray;
    .locals 9
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    move v7, v1

    .line 1
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v6

    move v2, v6

    move-object v6, v0

    .line 2
    invoke-virtual {v6}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    move v3, v6

    move v6, v2

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move-object v0, v6

    .line 8
    :goto_0
    return-object v0

    .line 2
    :cond_0
    new-instance v6, Landroid/util/SparseArray;

    move-object v4, v6

    move-object v6, v4

    .line 3
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    move-object v6, v0

    .line 4
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move v5, v6

    const/4 v6, 0x0

    move v1, v6

    :goto_1
    move v6, v1

    move v7, v5

    if-ge v6, v7, :cond_1

    move-object v6, v4

    move-object v7, v0

    .line 5
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v8, v0

    .line 6
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 7
    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v6, v0

    move v7, v3

    move v8, v2

    add-int/2addr v7, v8

    .line 8
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v6, v4

    move-object v0, v6

    goto :goto_0
.end method

.method public static createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Parcelable$Creator;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    move v5, v1

    .line 1
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    .line 2
    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    move v3, v4

    move v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 4
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move-object v4, v0

    move-object v5, v2

    .line 3
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    move-object v4, v0

    move v5, v3

    move v6, v1

    add-int/2addr v5, v6

    .line 4
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v4, v2

    move-object v0, v4

    goto :goto_0
.end method

.method public static createTypedList(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Parcelable$Creator;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    move v5, v1

    .line 1
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    .line 2
    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    move v3, v4

    move v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 4
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move-object v4, v0

    move-object v5, v2

    .line 3
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    move-object v2, v4

    move-object v4, v0

    move v5, v3

    move v6, v1

    add-int/2addr v5, v6

    .line 4
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v4, v2

    move-object v0, v4

    goto :goto_0
.end method

.method public static createTypedSparseArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/util/SparseArray;
    .locals 12
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Parcelable$Creator;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)",
            "Landroid/util/SparseArray",
            "<TT;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v9, v0

    move v10, v1

    .line 1
    invoke-static {v9, v10}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v9

    move v4, v9

    move-object v9, v0

    .line 2
    invoke-virtual {v9}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    move v5, v9

    move v9, v4

    if-nez v9, :cond_0

    const/4 v9, 0x0

    move-object v0, v9

    .line 9
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move-object v9, v0

    .line 3
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move v6, v9

    new-instance v9, Landroid/util/SparseArray;

    move-object v7, v9

    move-object v9, v7

    .line 4
    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    const/4 v9, 0x0

    move v1, v9

    :goto_1
    move v9, v1

    move v10, v6

    if-ge v9, v10, :cond_2

    move-object v9, v0

    .line 5
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move v8, v9

    move-object v9, v0

    .line 6
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v2

    move-object v10, v0

    .line 7
    invoke-interface {v9, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    move-object v3, v9

    :goto_2
    move-object v9, v7

    move v10, v8

    move-object v11, v3

    .line 8
    invoke-virtual {v9, v10, v11}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    move-object v3, v9

    goto :goto_2

    :cond_2
    move-object v9, v0

    move v10, v5

    move v11, v4

    add-int/2addr v10, v11

    .line 9
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v9, v7

    move-object v0, v9

    goto :goto_0
.end method

.method public static ensureAtEnd(Landroid/os/Parcel;I)V
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    .line 1
    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    move v5, v1

    if-eq v4, v5, :cond_0

    new-instance v4, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException;

    move-object v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v3, v4

    move-object v4, v3

    const/16 v5, 0x25

    .line 2
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v3

    const-string v5, "Overread allowed size end="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v3

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    move-object v4, v2

    throw v4

    :cond_0
    return-void
.end method

.method public static getFieldId(I)I
    .locals 2

    move v0, p0

    move v1, v0

    int-to-char v1, v1

    move v0, v1

    return v0
.end method

.method public static readBoolean(Landroid/os/Parcel;I)Z
    .locals 5
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x4

    .line 1
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->zza(Landroid/os/Parcel;II)V

    move-object v2, v0

    .line 2
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public static readBooleanObject(Landroid/os/Parcel;I)Ljava/lang/Boolean;
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    .line 1
    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v3

    move v2, v3

    move v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    .line 3
    :goto_0
    return-object v0

    .line 1
    :cond_0
    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x4

    .line 2
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->zzb(Landroid/os/Parcel;III)V

    move-object v3, v0

    .line 3
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move v0, v3

    :goto_1
    move v3, v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public static readByte(Landroid/os/Parcel;I)B
    .locals 5
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x4

    .line 1
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->zza(Landroid/os/Parcel;II)V

    move-object v2, v0

    .line 2
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-byte v2, v2

    move v0, v2

    return v0
.end method

.method public static readChar(Landroid/os/Parcel;I)C
    .locals 5
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x4

    .line 1
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->zza(Landroid/os/Parcel;II)V

    move-object v2, v0

    .line 2
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    move v0, v2

    return v0
.end method

.method public static readDouble(Landroid/os/Parcel;I)D
    .locals 5
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/16 v4, 0x8

    .line 1
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->zza(Landroid/os/Parcel;II)V

    move-object v2, v0

    .line 2
    invoke-virtual {v2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static readDoubleObject(Landroid/os/Parcel;I)Ljava/lang/Double;
    .locals 8
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v1, p0

    move v2, p1

    move-object v4, v1

    move v5, v2

    .line 1
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v4

    move v3, v4

    move v4, v3

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v1, v4

    .line 3
    :goto_0
    return-object v1

    .line 1
    :cond_0
    move-object v4, v1

    move v5, v2

    move v6, v3

    const/16 v7, 0x8

    .line 2
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->zzb(Landroid/os/Parcel;III)V

    move-object v4, v1

    .line 3
    invoke-virtual {v4}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v1, v4

    goto :goto_0
.end method

.method public static readFloat(Landroid/os/Parcel;I)F
    .locals 5
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x4

    .line 1
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->zza(Landroid/os/Parcel;II)V

    move-object v2, v0

    .line 2
    invoke-virtual {v2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    move v0, v2

    return v0
.end method

.method public static readFloatObject(Landroid/os/Parcel;I)Ljava/lang/Float;
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    .line 1
    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v3

    move v2, v3

    move v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    .line 3
    :goto_0
    return-object v0

    .line 1
    :cond_0
    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x4

    .line 2
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->zzb(Landroid/os/Parcel;III)V

    move-object v3, v0

    .line 3
    invoke-virtual {v3}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public static readHeader(Landroid/os/Parcel;)I
    .locals 2
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static readIBinder(Landroid/os/Parcel;I)Landroid/os/IBinder;
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    .line 1
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    .line 2
    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    move v2, v4

    move v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 4
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move-object v4, v0

    .line 3
    invoke-virtual {v4}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    move v5, v2

    move v6, v1

    add-int/2addr v5, v6

    .line 4
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method public static readInt(Landroid/os/Parcel;I)I
    .locals 5
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x4

    .line 1
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->zza(Landroid/os/Parcel;II)V

    move-object v2, v0

    .line 2
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move v0, v2

    return v0
.end method

.method public static readIntegerObject(Landroid/os/Parcel;I)Ljava/lang/Integer;
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    .line 1
    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v3

    move v2, v3

    move v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    .line 3
    :goto_0
    return-object v0

    .line 1
    :cond_0
    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x4

    .line 2
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->zzb(Landroid/os/Parcel;III)V

    move-object v3, v0

    .line 3
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public static readList(Landroid/os/Parcel;ILjava/util/List;Ljava/lang/ClassLoader;)V
    .locals 8
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/ClassLoader;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    move v6, v1

    .line 1
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v5

    move v1, v5

    move-object v5, v0

    .line 2
    invoke-virtual {v5}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    move v4, v5

    move v5, v1

    if-nez v5, :cond_0

    .line 4
    :goto_0
    return-void

    .line 2
    :cond_0
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    .line 3
    invoke-virtual {v5, v6, v7}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    move-object v5, v0

    move v6, v4

    move v7, v1

    add-int/2addr v6, v7

    .line 4
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public static readLong(Landroid/os/Parcel;I)J
    .locals 5
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/16 v4, 0x8

    .line 1
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->zza(Landroid/os/Parcel;II)V

    move-object v2, v0

    .line 2
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static readLongObject(Landroid/os/Parcel;I)Ljava/lang/Long;
    .locals 8
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v1, p0

    move v2, p1

    move-object v4, v1

    move v5, v2

    .line 1
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v4

    move v3, v4

    move v4, v3

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v1, v4

    .line 3
    :goto_0
    return-object v1

    .line 1
    :cond_0
    move-object v4, v1

    move v5, v2

    move v6, v3

    const/16 v7, 0x8

    .line 2
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->zzb(Landroid/os/Parcel;III)V

    move-object v4, v1

    .line 3
    invoke-virtual {v4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v1, v4

    goto :goto_0
.end method

.method public static readPendingIntent(Landroid/os/Parcel;I)Landroid/app/PendingIntent;
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    .line 1
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    .line 2
    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    move v2, v4

    move v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 4
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move-object v4, v0

    .line 3
    invoke-static {v4}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    move v5, v2

    move v6, v1

    add-int/2addr v5, v6

    .line 4
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method public static readShort(Landroid/os/Parcel;I)S
    .locals 5
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x4

    .line 1
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->zza(Landroid/os/Parcel;II)V

    move-object v2, v0

    .line 2
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-short v2, v2

    move v0, v2

    return v0
.end method

.method public static readSize(Landroid/os/Parcel;I)I
    .locals 4
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/high16 v3, -0x10000

    and-int/2addr v2, v3

    const/high16 v3, -0x10000

    if-eq v2, v3, :cond_0

    move v2, v1

    const/16 v3, 0x10

    shr-int/lit8 v2, v2, 0x10

    int-to-char v2, v2

    move v0, v2

    .line 1
    :goto_0
    return v0

    .line 4294967295
    :cond_0
    move-object v2, v0

    .line 1
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public static skipUnknownField(Landroid/os/Parcel;I)V
    .locals 5
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    .line 1
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v2

    move v1, v2

    move-object v2, v0

    move-object v3, v0

    .line 2
    invoke-virtual {v3}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    move v4, v1

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public static validateObjectHeader(Landroid/os/Parcel;)I
    .locals 8
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v5, v0

    .line 1
    invoke-static {v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v5

    move v1, v5

    move-object v5, v0

    move v6, v1

    .line 2
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v5

    move v2, v5

    move-object v5, v0

    .line 3
    invoke-virtual {v5}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    move v3, v5

    move v5, v1

    invoke-static {v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v5

    const/16 v6, 0x4f45

    if-eq v5, v6, :cond_0

    new-instance v5, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException;

    move-object v2, v5

    move v5, v1

    .line 4
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    const-string v5, "Expected object header. Got 0x"

    move-object v3, v5

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    :goto_0
    move-object v5, v2

    move-object v6, v1

    move-object v7, v0

    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    move-object v5, v2

    throw v5

    :cond_0
    move v5, v3

    move v6, v2

    add-int/2addr v5, v6

    move v1, v5

    move v5, v1

    move v6, v3

    if-lt v5, v6, :cond_1

    move v5, v1

    move-object v6, v0

    .line 5
    invoke-virtual {v6}, Landroid/os/Parcel;->dataSize()I

    move-result v6

    if-le v5, v6, :cond_2

    :cond_1
    new-instance v5, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException;

    move-object v2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v4, v5

    move-object v5, v4

    const/16 v6, 0x36

    .line 6
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v5, v4

    const-string v6, "Size read is invalid start="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v4

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v4

    const-string v6, " end="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v4

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v0

    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    move-object v5, v2

    throw v5

    :cond_2
    move v5, v1

    move v0, v5

    return v0

    :cond_3
    new-instance v5, Ljava/lang/String;

    move-object v1, v5

    move-object v5, v1

    move-object v6, v3

    .line 4
    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static zza(Landroid/os/Parcel;II)V
    .locals 10

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v7, v0

    move v8, v1

    .line 1
    invoke-static {v7, v8}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v7

    move v1, v7

    move v7, v1

    move v8, v2

    if-eq v7, v8, :cond_0

    new-instance v7, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException;

    move-object v3, v7

    move v7, v1

    .line 2
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    move-object v7, v4

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v5, v7

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v6, v7

    move-object v7, v6

    move v8, v5

    const/16 v9, 0x2e

    add-int/lit8 v8, v8, 0x2e

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v7, v6

    const-string v8, "Expected size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v6

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v6

    const-string v8, " got "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v6

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v6

    const-string v8, " (0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v6

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v6

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v3

    move-object v8, v6

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v0

    invoke-direct {v7, v8, v9}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    move-object v7, v3

    throw v7

    :cond_0
    return-void
.end method

.method private static zzb(Landroid/os/Parcel;III)V
    .locals 10

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v7, v2

    move v8, v3

    if-eq v7, v8, :cond_0

    new-instance v7, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException;

    move-object v1, v7

    move v7, v2

    .line 1
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    move-object v7, v4

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v5, v7

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v6, v7

    move-object v7, v6

    move v8, v5

    const/16 v9, 0x2e

    add-int/lit8 v8, v8, 0x2e

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v7, v6

    const-string v8, "Expected size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v6

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v6

    const-string v8, " got "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v6

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v6

    const-string v8, " (0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v6

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v6

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v1

    move-object v8, v6

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v0

    invoke-direct {v7, v8, v9}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    move-object v7, v1

    throw v7

    :cond_0
    return-void
.end method
