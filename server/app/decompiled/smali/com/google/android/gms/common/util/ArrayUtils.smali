.class public final Lcom/google/android/gms/common/util/ArrayUtils;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendToArray([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    if-nez v2, :cond_0

    move-object v2, v1

    if-eqz v2, :cond_1

    :cond_0
    move-object v2, v0

    if-nez v2, :cond_2

    move-object v2, v1

    .line 1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    :goto_0
    move-object v2, v0

    move-object v3, v0

    .line 3
    array-length v3, v3

    const/4 v4, -0x1

    add-int/lit8 v3, v3, -0x1

    move-object v4, v1

    aput-object v4, v2, v3

    move-object v2, v0

    move-object v0, v2

    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v0, v2

    move-object v2, v0

    const-string v3, "Cannot generate array of generic type w/o class info"

    .line 4
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    throw v2

    :cond_2
    move-object v2, v0

    move-object v3, v0

    array-length v3, v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    .line 2
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public static varargs concat([[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 11
    .param p0    # [[Ljava/lang/Object;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;)[TT;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v6, v0

    .line 1
    array-length v6, v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    move v1, v6

    const/4 v6, 0x0

    move v2, v6

    :goto_0
    move v6, v2

    move-object v7, v0

    .line 2
    array-length v7, v7

    if-ge v6, v7, :cond_0

    move v6, v1

    move-object v7, v0

    move v8, v2

    .line 3
    aget-object v7, v7, v8

    array-length v7, v7

    add-int/2addr v6, v7

    move v1, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v6, v0

    const/4 v7, 0x0

    .line 4
    aget-object v6, v6, v7

    move v7, v1

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    move-object v6, v0

    const/4 v7, 0x0

    .line 5
    aget-object v6, v6, v7

    array-length v6, v6

    move v1, v6

    const/4 v6, 0x1

    move v2, v6

    :goto_1
    move v6, v2

    move-object v7, v0

    .line 6
    array-length v7, v7

    if-ge v6, v7, :cond_1

    move-object v6, v0

    move v7, v2

    .line 7
    aget-object v6, v6, v7

    move-object v4, v6

    move-object v6, v4

    .line 8
    array-length v6, v6

    move v5, v6

    move-object v6, v4

    const/4 v7, 0x0

    move-object v8, v3

    move v9, v1

    move v10, v5

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v6, v1

    move v7, v5

    add-int/2addr v6, v7

    move v1, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v6, v3

    move-object v0, v6

    .line 9
    :goto_2
    return-object v0

    .line 8
    :cond_2
    move-object v6, v0

    .line 9
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v0, v6

    goto :goto_2
.end method

.method public static varargs concatByteArrays([[B)[B
    .locals 11
    .param p0    # [[B
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v6, v0

    .line 1
    array-length v6, v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    move v1, v6

    const/4 v6, 0x0

    move v2, v6

    :goto_0
    move v6, v2

    move-object v7, v0

    .line 2
    array-length v7, v7

    if-ge v6, v7, :cond_0

    move v6, v1

    move-object v7, v0

    move v8, v2

    .line 3
    aget-object v7, v7, v8

    array-length v7, v7

    add-int/2addr v6, v7

    move v1, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v6, v0

    const/4 v7, 0x0

    .line 4
    aget-object v6, v6, v7

    move v7, v1

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    move-object v3, v6

    move-object v6, v0

    const/4 v7, 0x0

    .line 5
    aget-object v6, v6, v7

    array-length v6, v6

    move v1, v6

    const/4 v6, 0x1

    move v2, v6

    :goto_1
    move v6, v2

    move-object v7, v0

    .line 6
    array-length v7, v7

    if-ge v6, v7, :cond_1

    move-object v6, v0

    move v7, v2

    .line 7
    aget-object v6, v6, v7

    move-object v4, v6

    move-object v6, v4

    .line 8
    array-length v6, v6

    move v5, v6

    move-object v6, v4

    const/4 v7, 0x0

    move-object v8, v3

    move v9, v1

    move v10, v5

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v6, v1

    move v7, v5

    add-int/2addr v6, v7

    move v1, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v6, v3

    move-object v0, v6

    :goto_2
    return-object v0

    :cond_2
    const/4 v6, 0x0

    new-array v6, v6, [B

    move-object v0, v6

    goto :goto_2
.end method

.method public static contains([II)Z
    .locals 6
    .param p0    # [I
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move v0, v4

    .line 1
    :goto_0
    return v0

    .line 4294967295
    :cond_0
    move-object v4, v0

    array-length v4, v4

    move v3, v4

    const/4 v4, 0x0

    move v2, v4

    :goto_1
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_2

    move-object v4, v0

    move v5, v2

    .line 1
    aget v4, v4, v5

    move v5, v1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    if-eqz v4, :cond_2

    move-object v4, v0

    array-length v4, v4

    move v2, v4

    :goto_0
    const/4 v4, 0x0

    move v3, v4

    :goto_1
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_1

    move-object v4, v0

    move v5, v3

    .line 2
    aget-object v4, v4, v5

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    move v0, v4

    :goto_2
    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    move v2, v4

    goto :goto_0
.end method

.method public static newArrayList()Ljava/util/ArrayList;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/util/ArrayList;

    move-object v0, v1

    move-object v1, v0

    .line 1
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public static varargs removeAll([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 11
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    if-nez v8, :cond_0

    const/4 v8, 0x0

    move-object v0, v8

    .line 9
    :goto_0
    return-object v0

    .line 4294967295
    :cond_0
    move-object v8, v1

    if-eqz v8, :cond_1

    move-object v8, v1

    array-length v8, v8

    move v2, v8

    move v8, v2

    if-nez v8, :cond_2

    :cond_1
    move-object v8, v0

    move-object v9, v0

    array-length v9, v9

    .line 1
    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    :cond_2
    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 2
    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    move-object v3, v8

    move-object v8, v0

    array-length v8, v8

    move v4, v8

    move-object v8, v3

    move v9, v4

    invoke-static {v8, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    move-object v5, v8

    move v8, v2

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    const/4 v8, 0x0

    move v2, v8

    const/4 v8, 0x0

    move v3, v8

    :goto_1
    move v8, v3

    move v9, v4

    if-ge v8, v9, :cond_4

    move-object v8, v0

    move v9, v3

    .line 6
    aget-object v8, v8, v9

    move-object v6, v8

    move-object v8, v1

    const/4 v9, 0x0

    .line 7
    aget-object v8, v8, v9

    move-object v9, v6

    invoke-static {v8, v9}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v7, v8

    move-object v8, v5

    move v9, v2

    move-object v10, v6

    .line 8
    aput-object v10, v8, v9

    move v8, v7

    move v2, v8

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move v8, v2

    move v0, v8

    :goto_2
    move-object v8, v5

    if-nez v8, :cond_5

    const/4 v8, 0x0

    move-object v0, v8

    :goto_3
    move-object v8, v0

    move-object v0, v8

    goto :goto_0

    :cond_5
    move v8, v0

    move-object v9, v5

    array-length v9, v9

    if-ne v8, v9, :cond_6

    move-object v8, v5

    move-object v0, v8

    goto :goto_3

    :cond_6
    move-object v8, v5

    move v9, v0

    .line 9
    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    :cond_7
    const/4 v8, 0x0

    move v2, v8

    const/4 v8, 0x0

    move v3, v8

    :goto_4
    move v8, v3

    move v9, v4

    if-ge v8, v9, :cond_9

    move-object v8, v0

    move v9, v3

    .line 3
    aget-object v8, v8, v9

    move-object v6, v8

    move-object v8, v1

    move-object v9, v6

    .line 4
    invoke-static {v8, v9}, Lcom/google/android/gms/common/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v7, v8

    move-object v8, v5

    move v9, v2

    move-object v10, v6

    .line 5
    aput-object v10, v8, v9

    move v8, v7

    move v2, v8

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    move v8, v2

    move v0, v8

    goto :goto_2
.end method

.method public static toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 7
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v4, v0

    .line 1
    array-length v4, v4

    move v2, v4

    new-instance v4, Ljava/util/ArrayList;

    move-object v3, v4

    move-object v4, v3

    move v5, v2

    .line 2
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v1, v4

    :goto_0
    move v4, v1

    move v5, v2

    if-ge v4, v5, :cond_0

    move-object v4, v3

    move-object v5, v0

    move v6, v1

    .line 3
    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method public static toPrimitiveArray(Ljava/util/Collection;)[I
    .locals 7
    .param p0    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v4, v0

    if-eqz v4, :cond_0

    move-object v4, v0

    .line 1
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    new-array v4, v4, [I

    move-object v0, v4

    .line 4
    :goto_0
    return-object v0

    .line 1
    :cond_1
    move-object v4, v0

    .line 2
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v4, v4, [I

    move-object v1, v4

    move-object v4, v0

    .line 3
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    const/4 v4, 0x0

    move v0, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v0

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    move-object v4, v1

    move v5, v0

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 4
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v5

    move v4, v3

    move v0, v4

    goto :goto_1

    :cond_2
    move-object v4, v1

    move-object v0, v4

    goto :goto_0
.end method

.method public static toWrapperArray([I)[Ljava/lang/Integer;
    .locals 8
    .param p0    # [I
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v4, v0

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 1
    :goto_0
    return-object v0

    .line 4294967295
    :cond_0
    move-object v4, v0

    array-length v4, v4

    move v2, v4

    move v4, v2

    new-array v4, v4, [Ljava/lang/Integer;

    move-object v3, v4

    const/4 v4, 0x0

    move v1, v4

    :goto_1
    move v4, v1

    move v5, v2

    if-ge v4, v5, :cond_1

    move-object v4, v3

    move v5, v1

    move-object v6, v0

    move v7, v1

    .line 1
    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method public static writeArray(Ljava/lang/StringBuilder;[D)V
    .locals 8
    .param p0    # Ljava/lang/StringBuilder;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # [D
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v1, p0

    move-object v2, p1

    move-object v5, v2

    .line 1
    array-length v5, v5

    move v4, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_1

    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v1

    const-string v6, ","

    .line 2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    :cond_0
    move-object v5, v1

    move-object v6, v2

    move v7, v3

    .line 3
    aget-wide v6, v6, v7

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static writeArray(Ljava/lang/StringBuilder;[F)V
    .locals 7
    .param p0    # Ljava/lang/StringBuilder;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    .line 4
    array-length v4, v4

    move v3, v4

    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_1

    move v4, v2

    if-eqz v4, :cond_0

    move-object v4, v0

    const-string v5, ","

    .line 5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    .line 6
    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static writeArray(Ljava/lang/StringBuilder;[I)V
    .locals 7
    .param p0    # Ljava/lang/StringBuilder;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # [I
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    .line 7
    array-length v4, v4

    move v3, v4

    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_1

    move v4, v2

    if-eqz v4, :cond_0

    move-object v4, v0

    const-string v5, ","

    .line 8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    .line 9
    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static writeArray(Ljava/lang/StringBuilder;[J)V
    .locals 8
    .param p0    # Ljava/lang/StringBuilder;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # [J
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v1, p0

    move-object v2, p1

    move-object v5, v2

    .line 10
    array-length v5, v5

    move v4, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_1

    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v1

    const-string v6, ","

    .line 11
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    :cond_0
    move-object v5, v1

    move-object v6, v2

    move v7, v3

    .line 12
    aget-wide v6, v6, v7

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static writeArray(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V
    .locals 7
    .param p0    # Ljava/lang/StringBuilder;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/StringBuilder;",
            "[TT;)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    .line 13
    array-length v4, v4

    move v3, v4

    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_1

    move v4, v2

    if-eqz v4, :cond_0

    move-object v4, v0

    const-string v5, ","

    .line 14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    .line 15
    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static writeArray(Ljava/lang/StringBuilder;[Z)V
    .locals 7
    .param p0    # Ljava/lang/StringBuilder;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # [Z
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    .line 16
    array-length v4, v4

    move v3, v4

    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_1

    move v4, v2

    if-eqz v4, :cond_0

    move-object v4, v0

    const-string v5, ","

    .line 17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    .line 18
    aget-boolean v5, v5, v6

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static writeStringArray(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .locals 7
    .param p0    # Ljava/lang/StringBuilder;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    .line 1
    array-length v4, v4

    move v3, v4

    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_1

    move v4, v2

    if-eqz v4, :cond_0

    move-object v4, v0

    const-string v5, ","

    .line 2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    :cond_0
    move-object v4, v0

    const-string v5, "\""

    .line 3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v0

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
