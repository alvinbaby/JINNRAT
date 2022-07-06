.class public final Lcom/google/android/gms/common/images/Size;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"


# instance fields
.field private final zaa:I

.field private final zab:I


# direct methods
.method public constructor <init>(II)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/android/gms/common/images/Size;->zaa:I

    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/android/gms/common/images/Size;->zab:I

    return-void
.end method

.method public static parseSize(Ljava/lang/String;)Lcom/google/android/gms/common/images/Size;
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v3, v0

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v0, v3

    move-object v3, v0

    const-string v4, "string must not be null"

    .line 1
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    throw v3

    :cond_0
    move-object v3, v0

    const/16 v4, 0x2a

    .line 2
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    move v1, v3

    move v3, v1

    if-gez v3, :cond_1

    move-object v3, v0

    const/16 v4, 0x78

    .line 3
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    move v1, v3

    :cond_1
    move v3, v1

    if-gez v3, :cond_2

    move-object v3, v0

    .line 4
    invoke-static {v3}, Lcom/google/android/gms/common/images/Size;->zaa(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3

    :cond_2
    :try_start_0
    new-instance v3, Lcom/google/android/gms/common/images/Size;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v0

    const/4 v5, 0x0

    move v6, v1

    .line 5
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object v5, v0

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    .line 6
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/images/Size;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    move-object v0, v3

    return-object v0

    .line 7
    :catch_0
    move-exception v3

    move-object v3, v0

    invoke-static {v3}, Lcom/google/android/gms/common/images/Size;->zaa(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3
.end method

.method private static zaa(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .locals 7

    .prologue
    move-object v0, p0

    new-instance v4, Ljava/lang/NumberFormatException;

    move-object v1, v4

    move-object v4, v0

    .line 1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v3, v4

    move-object v4, v3

    move v5, v2

    const/16 v6, 0x10

    add-int/lit8 v5, v5, 0x10

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v3

    const-string v5, "Invalid Size: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v3

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    throw v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move v0, v2

    .line 2
    :goto_0
    return v0

    .line 4294967295
    :cond_0
    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 1
    instance-of v2, v2, Lcom/google/android/gms/common/images/Size;

    if-eqz v2, :cond_3

    move-object v2, v1

    .line 2
    check-cast v2, Lcom/google/android/gms/common/images/Size;

    move-object v1, v2

    move-object v2, v0

    iget v2, v2, Lcom/google/android/gms/common/images/Size;->zaa:I

    move-object v3, v1

    iget v3, v3, Lcom/google/android/gms/common/images/Size;->zaa:I

    if-ne v2, v3, :cond_2

    move-object v2, v0

    iget v2, v2, Lcom/google/android/gms/common/images/Size;->zab:I

    move-object v3, v1

    iget v3, v3, Lcom/google/android/gms/common/images/Size;->zab:I

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getHeight()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/android/gms/common/images/Size;->zab:I

    move v0, v1

    return v0
.end method

.method public getWidth()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/android/gms/common/images/Size;->zaa:I

    move v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 6

    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/google/android/gms/common/images/Size;->zab:I

    move v1, v2

    move-object v2, v0

    iget v2, v2, Lcom/google/android/gms/common/images/Size;->zaa:I

    move v0, v2

    move v2, v1

    move v3, v0

    const/16 v4, 0x10

    shl-int/lit8 v3, v3, 0x10

    move v4, v0

    const/16 v5, 0x10

    ushr-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    xor-int/2addr v2, v3

    move v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Lcom/google/android/gms/common/images/Size;->zaa:I

    move v1, v3

    move-object v3, v0

    iget v3, v3, Lcom/google/android/gms/common/images/Size;->zab:I

    move v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v2, v3

    move-object v3, v2

    const/16 v4, 0x17

    .line 1
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v3, v2

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v3, v2

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method
