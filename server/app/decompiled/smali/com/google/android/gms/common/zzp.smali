.class final Lcom/google/android/gms/common/zzp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# direct methods
.method static zza(I)I
    .locals 8

    .prologue
    move v0, p0

    const/4 v5, 0x5

    new-array v5, v5, [I

    move-object v2, v5

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput v7, v5, v6

    move-object v5, v2

    const/4 v6, 0x1

    const/4 v7, 0x2

    aput v7, v5, v6

    move-object v5, v2

    const/4 v6, 0x2

    const/4 v7, 0x3

    aput v7, v5, v6

    move-object v5, v2

    const/4 v6, 0x3

    const/4 v7, 0x4

    aput v7, v5, v6

    move-object v5, v2

    const/4 v6, 0x4

    const/4 v7, 0x5

    aput v7, v5, v6

    const/4 v5, 0x0

    move v1, v5

    :goto_0
    move v5, v1

    const/4 v6, 0x5

    if-ge v5, v6, :cond_2

    move-object v5, v2

    move v6, v1

    .line 1
    aget v5, v5, v6

    move v3, v5

    move v5, v3

    const/4 v6, -0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    move v5, v3

    if-eqz v5, :cond_1

    move v5, v4

    move v6, v0

    if-ne v5, v6, :cond_0

    move v5, v3

    move v0, v5

    .line 2
    :goto_1
    return v0

    .line 1
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 2
    throw v5

    :cond_2
    const/4 v5, 0x1

    move v0, v5

    goto :goto_1
.end method
