.class public Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# direct methods
.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginObjectHeader(Landroid/os/Parcel;)I
    .locals 3
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0x4f45

    .line 1
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static finishObjectHeader(Landroid/os/Parcel;I)V
    .locals 4
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
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static writeBigDecimal(Landroid/os/Parcel;ILjava/math/BigDecimal;Z)V
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/math/BigDecimal;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    if-nez v4, :cond_1

    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    .line 1
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 5
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v4, v0

    move v5, v1

    .line 2
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    move-object v5, v2

    .line 3
    invoke-virtual {v5}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object v4, v0

    move-object v5, v2

    .line 4
    invoke-virtual {v5}, Ljava/math/BigDecimal;->scale()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object v4, v0

    move v5, v1

    .line 5
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeBigDecimalArray(Landroid/os/Parcel;I[Ljava/math/BigDecimal;Z)V
    .locals 8
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/math/BigDecimal;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v2

    if-nez v5, :cond_1

    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    move v6, v1

    const/4 v7, 0x0

    .line 1
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 6
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v5, v0

    move v6, v1

    .line 2
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v5

    move v3, v5

    move-object v5, v2

    array-length v5, v5

    move v4, v5

    move-object v5, v0

    move v6, v4

    .line 3
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x0

    move v1, v5

    :goto_1
    move v5, v1

    move v6, v4

    if-ge v5, v6, :cond_2

    move-object v5, v0

    move-object v6, v2

    move v7, v1

    .line 4
    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object v5, v0

    move-object v6, v2

    move v7, v1

    .line 5
    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/math/BigDecimal;->scale()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v5, v0

    move v6, v3

    .line 6
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeBigInteger(Landroid/os/Parcel;ILjava/math/BigInteger;Z)V
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/math/BigInteger;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    if-nez v4, :cond_1

    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    .line 1
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 4
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v4, v0

    move v5, v1

    .line 2
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    move-object v5, v2

    .line 3
    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object v4, v0

    move v5, v1

    .line 4
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeBigIntegerArray(Landroid/os/Parcel;I[Ljava/math/BigInteger;Z)V
    .locals 8
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/math/BigInteger;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v2

    if-nez v5, :cond_1

    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    move v6, v1

    const/4 v7, 0x0

    .line 1
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 5
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v5, v0

    move v6, v1

    .line 2
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v5

    move v3, v5

    move-object v5, v2

    array-length v5, v5

    move v4, v5

    move-object v5, v0

    move v6, v4

    .line 3
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x0

    move v1, v5

    :goto_1
    move v5, v1

    move v6, v4

    if-ge v5, v6, :cond_2

    move-object v5, v0

    move-object v6, v2

    move v7, v1

    .line 4
    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v5, v0

    move v6, v3

    .line 5
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeBoolean(Landroid/os/Parcel;IZ)V
    .locals 6
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x4

    .line 1
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    move-object v3, v0

    move v4, v2

    .line 2
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static writeBooleanArray(Landroid/os/Parcel;I[ZZ)V
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # [Z
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    if-nez v4, :cond_1

    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    .line 1
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 4
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v4, v0

    move v5, v1

    .line 2
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    move-object v5, v2

    .line 3
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    move-object v4, v0

    move v5, v1

    .line 4
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeBooleanList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 8
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v2

    if-nez v5, :cond_1

    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    move v6, v1

    const/4 v7, 0x0

    .line 1
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 6
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v5, v0

    move v6, v1

    .line 2
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v5

    move v3, v5

    move-object v5, v2

    .line 3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v4, v5

    move-object v5, v0

    move v6, v4

    .line 4
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x0

    move v1, v5

    :goto_1
    move v5, v1

    move v6, v4

    if-ge v5, v6, :cond_2

    move-object v5, v0

    move-object v6, v2

    move v7, v1

    .line 5
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v5, v0

    move v6, v3

    .line 6
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeBooleanObject(Landroid/os/Parcel;ILjava/lang/Boolean;Z)V
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    if-nez v4, :cond_1

    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    .line 1
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 3
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x4

    .line 2
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    move-object v4, v0

    move-object v5, v2

    .line 3
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public static writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    if-nez v4, :cond_1

    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    .line 1
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 4
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v4, v0

    move v5, v1

    .line 2
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    move-object v5, v2

    .line 3
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    move-object v4, v0

    move v5, v1

    .line 4
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeByte(Landroid/os/Parcel;IB)V
    .locals 6
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x4

    .line 1
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    move-object v3, v0

    move v4, v2

    .line 2
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static writeByteArray(Landroid/os/Parcel;I[BZ)V
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    if-nez v4, :cond_1

    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    .line 1
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 4
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v4, v0

    move v5, v1

    .line 2
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    move-object v5, v2

    .line 3
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object v4, v0

    move v5, v1

    .line 4
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeByteArrayArray(Landroid/os/Parcel;I[[BZ)V
    .locals 8
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # [[B
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v2

    if-nez v5, :cond_1

    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    move v6, v1

    const/4 v7, 0x0

    .line 1
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 5
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v5, v0

    move v6, v1

    .line 2
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v5

    move v3, v5

    move-object v5, v2

    array-length v5, v5

    move v4, v5

    move-object v5, v0

    move v6, v4

    .line 3
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x0

    move v1, v5

    :goto_1
    move v5, v1

    move v6, v4

    if-ge v5, v6, :cond_2

    move-object v5, v0

    move-object v6, v2

    move v7, v1

    .line 4
    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v5, v0

    move v6, v3

    .line 5
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeByteArraySparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .locals 8
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/SparseArray;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray",
            "<[B>;Z)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v2

    if-nez v5, :cond_1

    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    move v6, v1

    const/4 v7, 0x0

    .line 1
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 7
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v5, v0

    move v6, v1

    .line 2
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v5

    move v3, v5

    move-object v5, v2

    .line 3
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v4, v5

    move-object v5, v0

    move v6, v4

    .line 4
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x0

    move v1, v5

    :goto_1
    move v5, v1

    move v6, v4

    if-ge v5, v6, :cond_2

    move-object v5, v0

    move-object v6, v2

    move v7, v1

    .line 5
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    move-object v5, v0

    move-object v6, v2

    move v7, v1

    .line 6
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v5, v0

    move v6, v3

    .line 7
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeChar(Landroid/os/Parcel;IC)V
    .locals 6
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x4

    .line 1
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    move-object v3, v0

    move v4, v2

    .line 2
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static writeCharArray(Landroid/os/Parcel;I[CZ)V
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # [C
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    if-nez v4, :cond_1

    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    .line 1
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 4
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v4, v0

    move v5, v1

    .line 2
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    move-object v5, v2

    .line 3
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeCharArray([C)V

    move-object v4, v0

    move v5, v1

    .line 4
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeDouble(Landroid/os/Parcel;ID)V
    .locals 8
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, v0

    move v5, v1

    const/16 v6, 0x8

    .line 1
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    move-object v4, v0

    move-wide v5, v2

    .line 2
    invoke-virtual {v4, v5, v6}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method

.method public static writeDoubleArray(Landroid/os/Parcel;I[DZ)V
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # [D
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    if-nez v4, :cond_1

    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    .line 1
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 4
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v4, v0

    move v5, v1

    .line 2
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    move-object v5, v2

    .line 3
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeDoubleArray([D)V

    move-object v4, v0

    move v5, v1

    .line 4
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeDoubleList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 8
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v2

    if-nez v5, :cond_1

    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    move v6, v1

    const/4 v7, 0x0

    .line 1
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 6
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v5, v0

    move v6, v1

    .line 2
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v5

    move v3, v5

    move-object v5, v2

    .line 3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v4, v5

    move-object v5, v0

    move v6, v4

    .line 4
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x0

    move v1, v5

    :goto_1
    move v5, v1

    move v6, v4

    if-ge v5, v6, :cond_2

    move-object v5, v0

    move-object v6, v2

    move v7, v1

    .line 5
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/Parcel;->writeDouble(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v5, v0

    move v6, v3

    .line 6
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeDoubleObject(Landroid/os/Parcel;ILjava/lang/Double;Z)V
    .locals 8
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v3

    if-nez v5, :cond_1

    move v5, v4

    if-eqz v5, :cond_0

    move-object v5, v1

    move v6, v2

    const/4 v7, 0x0

    .line 1
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 3
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v5, v1

    move v6, v2

    const/16 v7, 0x8

    .line 2
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    move-object v5, v1

    move-object v6, v3

    .line 3
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_0
.end method

.method public static writeDoubleSparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .locals 8
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/SparseArray;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v2

    if-nez v5, :cond_1

    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    move v6, v1

    const/4 v7, 0x0

    .line 1
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 7
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v5, v0

    move v6, v1

    .line 2
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v5

    move v3, v5

    move-object v5, v2

    .line 3
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v4, v5

    move-object v5, v0

    move v6, v4

    .line 4
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x0

    move v1, v5

    :goto_1
    move v5, v1

    move v6, v4

    if-ge v5, v6, :cond_2

    move-object v5, v0

    move-object v6, v2

    move v7, v1

    .line 5
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    move-object v5, v0

    move-object v6, v2

    move v7, v1

    .line 6
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/Parcel;->writeDouble(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v5, v0

    move v6, v3

    .line 7
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeFloat(Landroid/os/Parcel;IF)V
    .locals 6
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x4

    .line 1
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    move-object v3, v0

    move v4, v2

    .line 2
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method

.method public static writeFloatArray(Landroid/os/Parcel;I[FZ)V
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    if-nez v4, :cond_1

    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    .line 1
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 4
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v4, v0

    move v5, v1

    .line 2
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    move-object v5, v2

    .line 3
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeFloatArray([F)V

    move-object v4, v0

    move v5, v1

    .line 4
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeFloatList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 8
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v2

    if-nez v5, :cond_1

    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    move v6, v1

    const/4 v7, 0x0

    .line 1
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 6
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v5, v0

    move v6, v1

    .line 2
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v5

    move v3, v5

    move-object v5, v2

    .line 3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v4, v5

    move-object v5, v0

    move v6, v4

    .line 4
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x0

    move v1, v5

    :goto_1
    move v5, v1

    move v6, v4

    if-ge v5, v6, :cond_2

    move-object v5, v0

    move-object v6, v2

    move v7, v1

    .line 5
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeFloat(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v5, v0

    move v6, v3

    .line 6
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeFloatObject(Landroid/os/Parcel;ILjava/lang/Float;Z)V
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Float;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    if-nez v4, :cond_1

    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    .line 1
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 3
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x4

    .line 2
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    move-object v4, v0

    move-object v5, v2

    .line 3
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_0
.end method

.method public static writeFloatSparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .locals 8
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/SparseArray;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v2

    if-nez v5, :cond_1

    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    move v6, v1

    const/4 v7, 0x0

    .line 1
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 7
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v5, v0

    move v6, v1

    .line 2
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v5

    move v3, v5

    move-object v5, v2

    .line 3
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v4, v5

    move-object v5, v0

    move v6, v4

    .line 4
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x0

    move v1, v5

    :goto_1
    move v5, v1

    move v6, v4

    if-ge v5, v6, :cond_2

    move-object v5, v0

    move-object v6, v2

    move v7, v1

    .line 5
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    move-object v5, v0

    move-object v6, v2

    move v7, v1

    .line 6
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeFloat(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v5, v0

    move v6, v3

    .line 7
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    if-nez v4, :cond_1

    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    .line 1
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 4
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v4, v0

    move v5, v1

    .line 2
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    move-object v5, v2

    .line 3
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move-object v4, v0

    move v5, v1

    .line 4
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeIBinderArray(Landroid/os/Parcel;I[Landroid/os/IBinder;Z)V
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # [Landroid/os/IBinder;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    if-nez v4, :cond_1

    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    .line 1
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 4
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v4, v0

    move v5, v1

    .line 2
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    move-object v5, v2

    .line 3
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeBinderArray([Landroid/os/IBinder;)V

    move-object v4, v0

    move v5, v1

    .line 4
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeIBinderList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    if-nez v4, :cond_1

    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    .line 1
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 4
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v4, v0

    move v5, v1

    .line 2
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    move-object v5, v2

    .line 3
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    move-object v4, v0

    move v5, v1

    .line 4
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeIBinderSparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .locals 8
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/SparseArray;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/IBinder;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v2

    if-nez v5, :cond_1

    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    move v6, v1

    const/4 v7, 0x0

    .line 1
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 7
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v5, v0

    move v6, v1

    .line 2
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v5

    move v3, v5

    move-object v5, v2

    .line 3
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v4, v5

    move-object v5, v0

    move v6, v4

    .line 4
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x0

    move v1, v5

    :goto_1
    move v5, v1

    move v6, v4

    if-ge v5, v6, :cond_2

    move-object v5, v0

    move-object v6, v2

    move v7, v1

    .line 5
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    move-object v5, v0

    move-object v6, v2

    move v7, v1

    .line 6
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v5, v0

    move v6, v3

    .line 7
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeInt(Landroid/os/Parcel;II)V
    .locals 6
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x4

    .line 1
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    move-object v3, v0

    move v4, v2

    .line 2
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static writeIntArray(Landroid/os/Parcel;I[IZ)V
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    if-nez v4, :cond_1

    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    .line 1
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 4
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v4, v0

    move v5, v1

    .line 2
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    move-object v5, v2

    .line 3
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    move-object v4, v0

    move v5, v1

    .line 4
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeIntegerList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 8
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v2

    if-nez v5, :cond_1

    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    move v6, v1

    const/4 v7, 0x0

    .line 1
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 6
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v5, v0

    move v6, v1

    .line 2
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v5

    move v3, v5

    move-object v5, v2

    .line 3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v4, v5

    move-object v5, v0

    move v6, v4

    .line 4
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x0

    move v1, v5

    :goto_1
    move v5, v1

    move v6, v4

    if-ge v5, v6, :cond_2

    move-object v5, v0

    move-object v6, v2

    move v7, v1

    .line 5
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v5, v0

    move v6, v3

    .line 6
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeIntegerObject(Landroid/os/Parcel;ILjava/lang/Integer;Z)V
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    if-nez v4, :cond_1

    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    .line 1
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 3
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x4

    .line 2
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    move-object v4, v0

    move-object v5, v2

    .line 3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public static writeList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    if-nez v4, :cond_1

    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    .line 1
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 4
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v4, v0

    move v5, v1

    .line 2
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    move-object v5, v2

    .line 3
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    move-object v4, v0

    move v5, v1

    .line 4
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeLong(Landroid/os/Parcel;IJ)V
    .locals 8
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, v0

    move v5, v1

    const/16 v6, 0x8

    .line 1
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    move-object v4, v0

    move-wide v5, v2

    .line 2
    invoke-virtual {v4, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method public static writeLongArray(Landroid/os/Parcel;I[JZ)V
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # [J
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    if-nez v4, :cond_1

    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    .line 1
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 4
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v4, v0

    move v5, v1

    .line 2
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    move-object v5, v2

    .line 3
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeLongArray([J)V

    move-object v4, v0

    move v5, v1

    .line 4
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeLongList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 8
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v2

    if-nez v5, :cond_1

    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    move v6, v1

    const/4 v7, 0x0

    .line 1
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 6
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v5, v0

    move v6, v1

    .line 2
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v5

    move v3, v5

    move-object v5, v2

    .line 3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v4, v5

    move-object v5, v0

    move v6, v4

    .line 4
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x0

    move v1, v5

    :goto_1
    move v5, v1

    move v6, v4

    if-ge v5, v6, :cond_2

    move-object v5, v0

    move-object v6, v2

    move v7, v1

    .line 5
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v5, v0

    move v6, v3

    .line 6
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeLongObject(Landroid/os/Parcel;ILjava/lang/Long;Z)V
    .locals 8
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v3

    if-nez v5, :cond_1

    move v5, v4

    if-eqz v5, :cond_0

    move-object v5, v1

    move v6, v2

    const/4 v7, 0x0

    .line 1
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 3
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v5, v1

    move v6, v2

    const/16 v7, 0x8

    .line 2
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    move-object v5, v1

    move-object v6, v3

    .line 3
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0
.end method

.method public static writeParcel(Landroid/os/Parcel;ILandroid/os/Parcel;Z)V
    .locals 8
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    if-nez v4, :cond_1

    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    .line 1
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 4
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v4, v0

    move v5, v1

    .line 2
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v2

    .line 3
    invoke-virtual {v7}, Landroid/os/Parcel;->dataSize()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    move-object v4, v0

    move v5, v1

    .line 4
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeParcelArray(Landroid/os/Parcel;I[Landroid/os/Parcel;Z)V
    .locals 10
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # [Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v2

    if-nez v6, :cond_1

    move v6, v3

    if-eqz v6, :cond_0

    move-object v6, v0

    move v7, v1

    const/4 v8, 0x0

    .line 1
    invoke-static {v6, v7, v8}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 8
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v6, v0

    move v7, v1

    .line 2
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v6

    move v3, v6

    move-object v6, v2

    array-length v6, v6

    move v4, v6

    move-object v6, v0

    move v7, v4

    .line 3
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x0

    move v1, v6

    :goto_1
    move v6, v1

    move v7, v4

    if-ge v6, v7, :cond_3

    move-object v6, v2

    move v7, v1

    .line 4
    aget-object v6, v6, v7

    move-object v5, v6

    move-object v6, v5

    if-eqz v6, :cond_2

    move-object v6, v0

    move-object v7, v5

    .line 5
    invoke-virtual {v7}, Landroid/os/Parcel;->dataSize()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    move-object v6, v0

    move-object v7, v5

    const/4 v8, 0x0

    move-object v9, v5

    .line 6
    invoke-virtual {v9}, Landroid/os/Parcel;->dataSize()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v6, v0

    const/4 v7, 0x0

    .line 7
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_3
    move-object v6, v0

    move v7, v3

    .line 8
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeParcelList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 10
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/os/Parcel;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v2

    if-nez v6, :cond_1

    move v6, v3

    if-eqz v6, :cond_0

    move-object v6, v0

    move v7, v1

    const/4 v8, 0x0

    .line 1
    invoke-static {v6, v7, v8}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 9
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v6, v0

    move v7, v1

    .line 2
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v6

    move v3, v6

    move-object v6, v2

    .line 3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v4, v6

    move-object v6, v0

    move v7, v4

    .line 4
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x0

    move v1, v6

    :goto_1
    move v6, v1

    move v7, v4

    if-ge v6, v7, :cond_3

    move-object v6, v2

    move v7, v1

    .line 5
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcel;

    move-object v5, v6

    move-object v6, v5

    if-eqz v6, :cond_2

    move-object v6, v0

    move-object v7, v5

    .line 6
    invoke-virtual {v7}, Landroid/os/Parcel;->dataSize()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    move-object v6, v0

    move-object v7, v5

    const/4 v8, 0x0

    move-object v9, v5

    .line 7
    invoke-virtual {v9}, Landroid/os/Parcel;->dataSize()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v6, v0

    const/4 v7, 0x0

    .line 8
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_3
    move-object v6, v0

    move v7, v3

    .line 9
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeParcelSparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .locals 10
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/SparseArray;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcel;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v2

    if-nez v6, :cond_1

    move v6, v3

    if-eqz v6, :cond_0

    move-object v6, v0

    move v7, v1

    const/4 v8, 0x0

    .line 1
    invoke-static {v6, v7, v8}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 10
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v6, v0

    move v7, v1

    .line 2
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v6

    move v3, v6

    move-object v6, v2

    .line 3
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    move v4, v6

    move-object v6, v0

    move v7, v4

    .line 4
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x0

    move v1, v6

    :goto_1
    move v6, v1

    move v7, v4

    if-ge v6, v7, :cond_3

    move-object v6, v0

    move-object v7, v2

    move v8, v1

    .line 5
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    move-object v6, v2

    move v7, v1

    .line 6
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcel;

    move-object v5, v6

    move-object v6, v5

    if-eqz v6, :cond_2

    move-object v6, v0

    move-object v7, v5

    .line 7
    invoke-virtual {v7}, Landroid/os/Parcel;->dataSize()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    move-object v6, v0

    move-object v7, v5

    const/4 v8, 0x0

    move-object v9, v5

    .line 8
    invoke-virtual {v9}, Landroid/os/Parcel;->dataSize()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v6, v0

    const/4 v7, 0x0

    .line 9
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_3
    move-object v6, v0

    move v7, v3

    .line 10
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
    .locals 8
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v2

    if-nez v5, :cond_1

    move v5, v4

    if-eqz v5, :cond_0

    move-object v5, v0

    move v6, v1

    const/4 v7, 0x0

    .line 1
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 4
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v5, v0

    move v6, v1

    .line 2
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v5

    move v1, v5

    move-object v5, v2

    move-object v6, v0

    move v7, v3

    .line 3
    invoke-interface {v5, v6, v7}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    move-object v5, v0

    move v6, v1

    .line 4
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writePendingIntent(Landroid/os/Parcel;ILandroid/app/PendingIntent;Z)V
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    if-nez v4, :cond_1

    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    .line 1
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 4
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v4, v0

    move v5, v1

    .line 2
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v2

    move-object v5, v0

    .line 3
    invoke-static {v4, v5}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    move-object v4, v0

    move v5, v1

    .line 4
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeShort(Landroid/os/Parcel;IS)V
    .locals 6
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x4

    .line 1
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    move-object v3, v0

    move v4, v2

    .line 2
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static writeSparseBooleanArray(Landroid/os/Parcel;ILandroid/util/SparseBooleanArray;Z)V
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/SparseBooleanArray;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    if-nez v4, :cond_1

    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    .line 1
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 4
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v4, v0

    move v5, v1

    .line 2
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    move-object v5, v2

    .line 3
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    move-object v4, v0

    move v5, v1

    .line 4
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeSparseIntArray(Landroid/os/Parcel;ILandroid/util/SparseIntArray;Z)V
    .locals 8
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/SparseIntArray;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v2

    if-nez v5, :cond_1

    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    move v6, v1

    const/4 v7, 0x0

    .line 1
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 7
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v5, v0

    move v6, v1

    .line 2
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v5

    move v3, v5

    move-object v5, v2

    .line 3
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    move v4, v5

    move-object v5, v0

    move v6, v4

    .line 4
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x0

    move v1, v5

    :goto_1
    move v5, v1

    move v6, v4

    if-ge v5, v6, :cond_2

    move-object v5, v0

    move-object v6, v2

    move v7, v1

    .line 5
    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    move-object v5, v0

    move-object v6, v2

    move v7, v1

    .line 6
    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v5, v0

    move v6, v3

    .line 7
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeSparseLongArray(Landroid/os/Parcel;ILandroid/util/SparseLongArray;Z)V
    .locals 8
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/SparseLongArray;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v2

    if-nez v5, :cond_1

    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    move v6, v1

    const/4 v7, 0x0

    .line 1
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 7
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v5, v0

    move v6, v1

    .line 2
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v5

    move v3, v5

    move-object v5, v2

    .line 3
    invoke-virtual {v5}, Landroid/util/SparseLongArray;->size()I

    move-result v5

    move v4, v5

    move-object v5, v0

    move v6, v4

    .line 4
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x0

    move v1, v5

    :goto_1
    move v5, v1

    move v6, v4

    if-ge v5, v6, :cond_2

    move-object v5, v0

    move-object v6, v2

    move v7, v1

    .line 5
    invoke-virtual {v6, v7}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    move-object v5, v0

    move-object v6, v2

    move v7, v1

    .line 6
    invoke-virtual {v6, v7}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v5, v0

    move v6, v3

    .line 7
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    if-nez v4, :cond_1

    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    .line 1
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 4
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v4, v0

    move v5, v1

    .line 2
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    move-object v5, v2

    .line 3
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v4, v0

    move v5, v1

    .line 4
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeStringArray(Landroid/os/Parcel;I[Ljava/lang/String;Z)V
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    if-nez v4, :cond_1

    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    .line 1
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 4
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v4, v0

    move v5, v1

    .line 2
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    move-object v5, v2

    .line 3
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move-object v4, v0

    move v5, v1

    .line 4
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 7
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    if-nez v4, :cond_1

    move v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    .line 1
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 4
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v4, v0

    move v5, v1

    .line 2
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v4

    move v1, v4

    move-object v4, v0

    move-object v5, v2

    .line 3
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move-object v4, v0

    move v5, v1

    .line 4
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeStringSparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .locals 8
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/SparseArray;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v2

    if-nez v5, :cond_1

    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    move v6, v1

    const/4 v7, 0x0

    .line 1
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 7
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v5, v0

    move v6, v1

    .line 2
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v5

    move v3, v5

    move-object v5, v2

    .line 3
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v4, v5

    move-object v5, v0

    move v6, v4

    .line 4
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x0

    move v1, v5

    :goto_1
    move v5, v1

    move v6, v4

    if-ge v5, v6, :cond_2

    move-object v5, v0

    move-object v6, v2

    move v7, v1

    .line 5
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    move-object v5, v0

    move-object v6, v2

    move v7, v1

    .line 6
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v5, v0

    move v6, v3

    .line 7
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V
    .locals 10
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # [Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I[TT;IZ)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v7, v2

    if-nez v7, :cond_1

    move v7, v4

    if-eqz v7, :cond_0

    move-object v7, v0

    move v8, v1

    const/4 v9, 0x0

    .line 1
    invoke-static {v7, v8, v9}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 7
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v7, v0

    move v8, v1

    .line 2
    invoke-static {v7, v8}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v7

    move v4, v7

    move-object v7, v2

    array-length v7, v7

    move v5, v7

    move-object v7, v0

    move v8, v5

    .line 3
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x0

    move v1, v7

    :goto_1
    move v7, v1

    move v8, v5

    if-ge v7, v8, :cond_3

    move-object v7, v2

    move v8, v1

    .line 4
    aget-object v7, v7, v8

    move-object v6, v7

    move-object v7, v6

    if-nez v7, :cond_2

    move-object v7, v0

    const/4 v8, 0x0

    .line 5
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v7, v0

    move-object v8, v6

    move v9, v3

    .line 6
    invoke-static {v7, v8, v9}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzd(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_2

    :cond_3
    move-object v7, v0

    move v8, v4

    .line 7
    invoke-static {v7, v8}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 9
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v2

    if-nez v6, :cond_1

    move v6, v3

    if-eqz v6, :cond_0

    move-object v6, v0

    move v7, v1

    const/4 v8, 0x0

    .line 1
    invoke-static {v6, v7, v8}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 8
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v6, v0

    move v7, v1

    .line 2
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v6

    move v3, v6

    move-object v6, v2

    .line 3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v4, v6

    move-object v6, v0

    move v7, v4

    .line 4
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x0

    move v1, v6

    :goto_1
    move v6, v1

    move v7, v4

    if-ge v6, v7, :cond_3

    move-object v6, v2

    move v7, v1

    .line 5
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    move-object v5, v6

    move-object v6, v5

    if-nez v6, :cond_2

    move-object v6, v0

    const/4 v7, 0x0

    .line 6
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v6, v0

    move-object v7, v5

    const/4 v8, 0x0

    .line 7
    invoke-static {v6, v7, v8}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzd(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_2

    :cond_3
    move-object v6, v0

    move v7, v3

    .line 8
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static writeTypedSparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .locals 9
    .param p0    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/SparseArray;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v2

    if-nez v6, :cond_1

    move v6, v3

    if-eqz v6, :cond_0

    move-object v6, v0

    move v7, v1

    const/4 v8, 0x0

    .line 1
    invoke-static {v6, v7, v8}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;II)V

    .line 9
    :goto_0
    return-void

    .line 1
    :cond_0
    goto :goto_0

    :cond_1
    move-object v6, v0

    move v7, v1

    .line 2
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)I

    move-result v6

    move v3, v6

    move-object v6, v2

    .line 3
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    move v4, v6

    move-object v6, v0

    move v7, v4

    .line 4
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x0

    move v1, v6

    :goto_1
    move v6, v1

    move v7, v4

    if-ge v6, v7, :cond_3

    move-object v6, v0

    move-object v7, v2

    move v8, v1

    .line 5
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    move-object v6, v2

    move v7, v1

    .line 6
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    move-object v5, v6

    move-object v6, v5

    if-nez v6, :cond_2

    move-object v6, v0

    const/4 v7, 0x0

    .line 7
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v6, v0

    move-object v7, v5

    const/4 v8, 0x0

    .line 8
    invoke-static {v6, v7, v8}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzd(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_2

    :cond_3
    move-object v6, v0

    move v7, v3

    .line 9
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method private static zza(Landroid/os/Parcel;II)V
    .locals 6

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v2

    const/16 v5, 0x10

    shl-int/lit8 v4, v4, 0x10

    move v5, v1

    or-int/2addr v4, v5

    .line 1
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method private static zzb(Landroid/os/Parcel;I)I
    .locals 5

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/high16 v4, -0x10000

    or-int/2addr v3, v4

    .line 1
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    move-object v2, v0

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    move-object v2, v0

    .line 3
    invoke-virtual {v2}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    move v0, v2

    return v0
.end method

.method private static zzc(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    .line 1
    invoke-virtual {v3}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    move v2, v3

    move-object v3, v0

    move v4, v1

    const/4 v5, -0x4

    add-int/lit8 v4, v4, -0x4

    .line 2
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v3, v0

    move v4, v2

    move v5, v1

    sub-int/2addr v4, v5

    .line 3
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object v3, v0

    move v4, v2

    .line 4
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method private static zzd(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "TT;I)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    .line 1
    invoke-virtual {v5}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    move v3, v5

    move-object v5, v0

    const/4 v6, 0x1

    .line 2
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    move-object v5, v0

    .line 3
    invoke-virtual {v5}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    move v4, v5

    move-object v5, v1

    move-object v6, v0

    move v7, v2

    .line 4
    invoke-interface {v5, v6, v7}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    move-object v5, v0

    .line 5
    invoke-virtual {v5}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    move v1, v5

    move-object v5, v0

    move v6, v3

    .line 6
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v5, v0

    move v6, v1

    move v7, v4

    sub-int/2addr v6, v7

    .line 7
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    move-object v5, v0

    move v6, v1

    .line 8
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
