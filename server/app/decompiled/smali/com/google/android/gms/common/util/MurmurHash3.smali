.class public Lcom/google/android/gms/common/util/MurmurHash3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static murmurhash3_x86_32([BIII)I
    .locals 10
    .param p0    # [B
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, v1

    move v7, v2

    const/4 v8, -0x4

    and-int/lit8 v7, v7, -0x4

    add-int/2addr v6, v7

    move v5, v6

    move v6, v1

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v5

    if-ge v6, v7, :cond_0

    move-object v6, v0

    move v7, v4

    .line 1
    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    move-object v7, v0

    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    aget-byte v7, v7, v8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    move-object v7, v0

    move v8, v4

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    aget-byte v7, v7, v8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x10

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    move-object v7, v0

    move v8, v4

    const/4 v9, 0x3

    add-int/lit8 v8, v8, 0x3

    aget-byte v7, v7, v8

    const/16 v8, 0x18

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    const v7, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v6, v7

    move v1, v6

    move v6, v3

    move v7, v1

    const/16 v8, 0xf

    shl-int/lit8 v7, v7, 0xf

    move v8, v1

    const/16 v9, 0x11

    ushr-int/lit8 v8, v8, 0x11

    or-int/2addr v7, v8

    const v8, 0x1b873593

    mul-int/2addr v7, v8

    xor-int/2addr v6, v7

    move v1, v6

    move v6, v1

    const/16 v7, 0xd

    shl-int/lit8 v6, v6, 0xd

    move v7, v1

    const/16 v8, 0x13

    ushr-int/lit8 v7, v7, 0x13

    or-int/2addr v6, v7

    const/4 v7, 0x5

    mul-int/lit8 v6, v6, 0x5

    const v7, -0x19ab949c

    add-int/2addr v6, v7

    move v3, v6

    add-int/lit8 v4, v4, 0x4

    goto :goto_0

    :cond_0
    move v6, v2

    const/4 v7, 0x3

    and-int/lit8 v6, v6, 0x3

    packed-switch v6, :pswitch_data_0

    move v6, v3

    move v0, v6

    :goto_1
    move v6, v0

    move v7, v2

    xor-int/2addr v6, v7

    move v0, v6

    move v6, v0

    move v7, v0

    const/16 v8, 0x10

    ushr-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    const v7, -0x7a143595

    mul-int/2addr v6, v7

    move v0, v6

    move v6, v0

    move v7, v0

    const/16 v8, 0xd

    ushr-int/lit8 v7, v7, 0xd

    xor-int/2addr v6, v7

    const v7, -0x3d4d51cb

    mul-int/2addr v6, v7

    move v0, v6

    move v6, v0

    move v7, v0

    const/16 v8, 0x10

    ushr-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    move v0, v6

    return v0

    :pswitch_0
    const/4 v6, 0x0

    move v1, v6

    :goto_2
    move v6, v1

    move-object v7, v0

    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 3
    aget-byte v7, v7, v8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    move v1, v6

    :goto_3
    move v6, v1

    move-object v7, v0

    move v8, v5

    .line 4
    aget-byte v7, v7, v8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    const v7, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v6, v7

    move v0, v6

    move v6, v3

    move v7, v0

    const/16 v8, 0xf

    shl-int/lit8 v7, v7, 0xf

    move v8, v0

    const/16 v9, 0x11

    ushr-int/lit8 v8, v8, 0x11

    or-int/2addr v7, v8

    const v8, 0x1b873593

    mul-int/2addr v7, v8

    xor-int/2addr v6, v7

    move v0, v6

    goto :goto_1

    :pswitch_1
    const/4 v6, 0x0

    move v1, v6

    goto :goto_3

    :pswitch_2
    move-object v6, v0

    move v7, v5

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    .line 2
    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x10

    shl-int/lit8 v6, v6, 0x10

    move v1, v6

    goto :goto_2

    .line 1
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
