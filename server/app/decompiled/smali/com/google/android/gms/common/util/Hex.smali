.class public Lcom/google/android/gms/common/util/Hex;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation


# static fields
.field private static final zza:[C

.field private static final zzb:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v1, 0x10

    new-array v1, v1, [C

    move-object v0, v1

    move-object v1, v0

    const/4 v2, 0x0

    const/16 v3, 0x30

    aput-char v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x1

    const/16 v3, 0x31

    aput-char v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x2

    const/16 v3, 0x32

    aput-char v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x3

    const/16 v3, 0x33

    aput-char v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x4

    const/16 v3, 0x34

    aput-char v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x5

    const/16 v3, 0x35

    aput-char v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x6

    const/16 v3, 0x36

    aput-char v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x7

    const/16 v3, 0x37

    aput-char v3, v1, v2

    move-object v1, v0

    const/16 v2, 0x8

    const/16 v3, 0x38

    aput-char v3, v1, v2

    move-object v1, v0

    const/16 v2, 0x9

    const/16 v3, 0x39

    aput-char v3, v1, v2

    move-object v1, v0

    const/16 v2, 0xa

    const/16 v3, 0x41

    aput-char v3, v1, v2

    move-object v1, v0

    const/16 v2, 0xb

    const/16 v3, 0x42

    aput-char v3, v1, v2

    move-object v1, v0

    const/16 v2, 0xc

    const/16 v3, 0x43

    aput-char v3, v1, v2

    move-object v1, v0

    const/16 v2, 0xd

    const/16 v3, 0x44

    aput-char v3, v1, v2

    move-object v1, v0

    const/16 v2, 0xe

    const/16 v3, 0x45

    aput-char v3, v1, v2

    move-object v1, v0

    const/16 v2, 0xf

    const/16 v3, 0x46

    aput-char v3, v1, v2

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/util/Hex;->zza:[C

    const/16 v1, 0x10

    new-array v1, v1, [C

    move-object v0, v1

    move-object v1, v0

    const/4 v2, 0x0

    const/16 v3, 0x30

    aput-char v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x1

    const/16 v3, 0x31

    aput-char v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x2

    const/16 v3, 0x32

    aput-char v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x3

    const/16 v3, 0x33

    aput-char v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x4

    const/16 v3, 0x34

    aput-char v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x5

    const/16 v3, 0x35

    aput-char v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x6

    const/16 v3, 0x36

    aput-char v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x7

    const/16 v3, 0x37

    aput-char v3, v1, v2

    move-object v1, v0

    const/16 v2, 0x8

    const/16 v3, 0x38

    aput-char v3, v1, v2

    move-object v1, v0

    const/16 v2, 0x9

    const/16 v3, 0x39

    aput-char v3, v1, v2

    move-object v1, v0

    const/16 v2, 0xa

    const/16 v3, 0x61

    aput-char v3, v1, v2

    move-object v1, v0

    const/16 v2, 0xb

    const/16 v3, 0x62

    aput-char v3, v1, v2

    move-object v1, v0

    const/16 v2, 0xc

    const/16 v3, 0x63

    aput-char v3, v1, v2

    move-object v1, v0

    const/16 v2, 0xd

    const/16 v3, 0x64

    aput-char v3, v1, v2

    move-object v1, v0

    const/16 v2, 0xe

    const/16 v3, 0x65

    aput-char v3, v1, v2

    move-object v1, v0

    const/16 v2, 0xf

    const/16 v3, 0x66

    aput-char v3, v1, v2

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/util/Hex;->zzb:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToStringLowercase([B)Ljava/lang/String;
    .locals 11
    .param p0    # [B
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

    move v1, v6

    move v6, v1

    move v7, v1

    add-int/2addr v6, v7

    new-array v6, v6, [C

    move-object v3, v6

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

    move-object v6, v0

    move v7, v2

    .line 3
    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    move v4, v6

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v5, v6

    move-object v6, v3

    move v7, v1

    sget-object v8, Lcom/google/android/gms/common/util/Hex;->zzb:[C

    move v9, v4

    const/4 v10, 0x4

    ushr-int/lit8 v9, v9, 0x4

    aget-char v8, v8, v9

    .line 4
    aput-char v8, v6, v7

    move v6, v5

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v1, v6

    move-object v6, v3

    move v7, v5

    sget-object v8, Lcom/google/android/gms/common/util/Hex;->zzb:[C

    move v9, v4

    const/16 v10, 0xf

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    .line 5
    aput-char v8, v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/lang/String;

    move-object v0, v6

    move-object v6, v0

    move-object v7, v3

    .line 6
    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    move-object v6, v0

    move-object v0, v6

    return-object v0
.end method

.method public static bytesToStringUppercase([B)Ljava/lang/String;
    .locals 3
    .param p0    # [B
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    .line 1
    invoke-static {v1, v2}, Lcom/google/android/gms/common/util/Hex;->bytesToStringUppercase([BZ)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static bytesToStringUppercase([BZ)Ljava/lang/String;
    .locals 9
    .param p0    # [B
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    .line 2
    array-length v5, v5

    move v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v4, v5

    move-object v5, v4

    move v6, v3

    move v7, v3

    add-int/2addr v6, v7

    .line 3
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_1

    move v5, v1

    if-eqz v5, :cond_0

    move v5, v2

    move v6, v3

    const/4 v7, -0x1

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_0

    move-object v5, v0

    move v6, v2

    .line 4
    aget-byte v5, v5, v6

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    if-eqz v5, :cond_1

    :cond_0
    move-object v5, v4

    sget-object v6, Lcom/google/android/gms/common/util/Hex;->zza:[C

    move-object v7, v0

    move v8, v2

    .line 5
    aget-byte v7, v7, v8

    const/16 v8, 0xf0

    and-int/lit16 v7, v7, 0xf0

    const/4 v8, 0x4

    ushr-int/lit8 v7, v7, 0x4

    aget-char v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v4

    sget-object v6, Lcom/google/android/gms/common/util/Hex;->zza:[C

    move-object v7, v0

    move v8, v2

    .line 6
    aget-byte v7, v7, v8

    const/16 v8, 0xf

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v4

    .line 7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public static stringToBytes(Ljava/lang/String;)[B
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v5, v0

    .line 1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v5

    move v5, v2

    const/4 v6, 0x2

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v0, v5

    move-object v5, v0

    const-string v6, "Hex string has odd number of characters"

    .line 2
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    throw v5

    :cond_0
    move v5, v2

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    .line 3
    new-array v5, v5, [B

    move-object v3, v5

    const/4 v5, 0x0

    move v1, v5

    :goto_0
    move v5, v1

    move v6, v2

    if-ge v5, v6, :cond_1

    move v5, v1

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    move v4, v5

    move-object v5, v3

    move v6, v1

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    move-object v7, v0

    move v8, v1

    move v9, v4

    .line 4
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    move v5, v4

    move v1, v5

    goto :goto_0

    :cond_1
    move-object v5, v3

    move-object v0, v5

    return-object v0
.end method
