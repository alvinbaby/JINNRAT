.class public Landroidx/collection/SimpleArrayMap;
.super Ljava/lang/Object;
.source "SimpleArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final CONCURRENT_MODIFICATION_EXCEPTIONS:Z = true

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArrayMap"

.field static mBaseCache:[Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mHashes:[I

.field mSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 236
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 237
    move-object v1, v0

    sget-object v2, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v2, v1, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 238
    move-object v1, v0

    sget-object v2, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v2, v1, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 239
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 240
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 246
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 247
    move v2, v1

    if-nez v2, :cond_0

    .line 248
    move-object v2, v0

    sget-object v3, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v3, v2, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 249
    move-object v2, v0

    sget-object v3, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v3, v2, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 253
    :goto_0
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 254
    return-void

    .line 251
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/collection/SimpleArrayMap;->allocArrays(I)V

    goto :goto_0
.end method

.method public constructor <init>(Landroidx/collection/SimpleArrayMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SimpleArrayMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 260
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroidx/collection/SimpleArrayMap;-><init>()V

    .line 261
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 262
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/SimpleArrayMap;->putAll(Landroidx/collection/SimpleArrayMap;)V

    .line 264
    :cond_0
    return-void
.end method

.method private allocArrays(I)V
    .locals 15

    .prologue
    .line 165
    move-object v0, p0

    move/from16 v1, p1

    move v6, v1

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2

    .line 166
    const-class v6, Landroidx/collection/SimpleArrayMap;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v2, v7

    monitor-enter v6

    .line 167
    :try_start_0
    sget-object v6, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 168
    sget-object v6, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    move-object v3, v6

    .line 169
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 170
    move-object v6, v3

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, [Ljava/lang/Object;

    sput-object v6, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 171
    move-object v6, v0

    move-object v7, v3

    const/4 v8, 0x1

    aget-object v7, v7, v8

    check-cast v7, [I

    iput-object v7, v6, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 172
    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v3

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v12, v8

    move v13, v9

    move-object v14, v10

    move-object v8, v14

    move-object v9, v12

    move v10, v13

    move-object v11, v14

    aput-object v11, v9, v10

    aput-object v8, v6, v7

    .line 173
    sget v6, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    sput v6, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    .line 176
    move-object v6, v2

    monitor-exit v6

    .line 197
    :goto_0
    return-void

    .line 178
    :cond_0
    move-object v6, v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_1
    :goto_1
    move-object v6, v0

    move v7, v1

    new-array v7, v7, [I

    iput-object v7, v6, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 196
    move-object v6, v0

    move v7, v1

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iput-object v7, v6, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 197
    goto :goto_0

    .line 178
    :catchall_0
    move-exception v6

    move-object v4, v6

    move-object v6, v2

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v4

    throw v6

    .line 179
    :cond_2
    move v6, v1

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 180
    const-class v6, Landroidx/collection/SimpleArrayMap;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v2, v7

    monitor-enter v6

    .line 181
    :try_start_2
    sget-object v6, Landroidx/collection/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    if-eqz v6, :cond_3

    .line 182
    sget-object v6, Landroidx/collection/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    move-object v3, v6

    .line 183
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 184
    move-object v6, v3

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, [Ljava/lang/Object;

    sput-object v6, Landroidx/collection/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 185
    move-object v6, v0

    move-object v7, v3

    const/4 v8, 0x1

    aget-object v7, v7, v8

    check-cast v7, [I

    iput-object v7, v6, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 186
    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v3

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v12, v8

    move v13, v9

    move-object v14, v10

    move-object v8, v14

    move-object v9, v12

    move v10, v13

    move-object v11, v14

    aput-object v11, v9, v10

    aput-object v8, v6, v7

    .line 187
    sget v6, Landroidx/collection/SimpleArrayMap;->mBaseCacheSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    sput v6, Landroidx/collection/SimpleArrayMap;->mBaseCacheSize:I

    .line 190
    move-object v6, v2

    monitor-exit v6

    goto :goto_0

    .line 192
    :cond_3
    move-object v6, v2

    monitor-exit v6

    goto :goto_1

    :catchall_1
    move-exception v6

    move-object v5, v6

    move-object v6, v2

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v6, v5

    throw v6
.end method

.method private static binarySearchHashes([III)I
    .locals 8

    .prologue
    .line 77
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    move v5, v1

    move v6, v2

    :try_start_0
    invoke-static {v4, v5, v6}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v0, v4

    return v0

    .line 78
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 80
    new-instance v4, Ljava/util/ConcurrentModificationException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .locals 11

    .prologue
    .line 201
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v7, v0

    array-length v7, v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_3

    .line 202
    const-class v7, Landroidx/collection/SimpleArrayMap;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v3, v8

    monitor-enter v7

    .line 203
    :try_start_0
    sget v7, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    const/16 v8, 0xa

    if-ge v7, v8, :cond_1

    .line 204
    move-object v7, v1

    const/4 v8, 0x0

    sget-object v9, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    aput-object v9, v7, v8

    .line 205
    move-object v7, v1

    const/4 v8, 0x1

    move-object v9, v0

    aput-object v9, v7, v8

    .line 206
    move v7, v2

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    :goto_0
    move v7, v4

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    .line 207
    move-object v7, v1

    move v8, v4

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 206
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 209
    :cond_0
    move-object v7, v1

    sput-object v7, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 210
    sget v7, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    sput v7, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    .line 214
    :cond_1
    move-object v7, v3

    monitor-exit v7

    .line 230
    :cond_2
    :goto_1
    return-void

    .line 214
    :catchall_0
    move-exception v7

    move-object v5, v7

    move-object v7, v3

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v5

    throw v7

    .line 215
    :cond_3
    move-object v7, v0

    array-length v7, v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    .line 216
    const-class v7, Landroidx/collection/SimpleArrayMap;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v3, v8

    monitor-enter v7

    .line 217
    :try_start_1
    sget v7, Landroidx/collection/SimpleArrayMap;->mBaseCacheSize:I

    const/16 v8, 0xa

    if-ge v7, v8, :cond_5

    .line 218
    move-object v7, v1

    const/4 v8, 0x0

    sget-object v9, Landroidx/collection/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    aput-object v9, v7, v8

    .line 219
    move-object v7, v1

    const/4 v8, 0x1

    move-object v9, v0

    aput-object v9, v7, v8

    .line 220
    move v7, v2

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    :goto_2
    move v7, v4

    const/4 v8, 0x2

    if-lt v7, v8, :cond_4

    .line 221
    move-object v7, v1

    move v8, v4

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 220
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 223
    :cond_4
    move-object v7, v1

    sput-object v7, Landroidx/collection/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 224
    sget v7, Landroidx/collection/SimpleArrayMap;->mBaseCacheSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    sput v7, Landroidx/collection/SimpleArrayMap;->mBaseCacheSize:I

    .line 228
    :cond_5
    move-object v7, v3

    monitor-exit v7

    goto :goto_1

    :catchall_1
    move-exception v7

    move-object v6, v7

    move-object v7, v3

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v7, v6

    throw v7
.end method


# virtual methods
.method public clear()V
    .locals 8

    .prologue
    .line 270
    move-object v0, p0

    move-object v4, v0

    iget v4, v4, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-lez v4, :cond_0

    .line 271
    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move-object v1, v4

    .line 272
    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move-object v2, v4

    .line 273
    move-object v4, v0

    iget v4, v4, Landroidx/collection/SimpleArrayMap;->mSize:I

    move v3, v4

    .line 274
    move-object v4, v0

    sget-object v5, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v5, v4, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 275
    move-object v4, v0

    sget-object v5, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v5, v4, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 276
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 277
    move-object v4, v1

    move-object v5, v2

    move v6, v3

    invoke-static {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 279
    :cond_0
    move-object v4, v0

    iget v4, v4, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-lez v4, :cond_1

    .line 280
    new-instance v4, Ljava/util/ConcurrentModificationException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 282
    :cond_1
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 312
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 352
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/SimpleArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public ensureCapacity(I)V
    .locals 12

    .prologue
    .line 289
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget v5, v5, Landroidx/collection/SimpleArrayMap;->mSize:I

    move v2, v5

    .line 290
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    array-length v5, v5

    move v6, v1

    if-ge v5, v6, :cond_1

    .line 291
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move-object v3, v5

    .line 292
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move-object v4, v5

    .line 293
    move-object v5, v0

    move v6, v1

    invoke-direct {v5, v6}, Landroidx/collection/SimpleArrayMap;->allocArrays(I)V

    .line 294
    move-object v5, v0

    iget v5, v5, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-lez v5, :cond_0

    .line 295
    move-object v5, v3

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    const/4 v8, 0x0

    move v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    move-object v5, v4

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v8, 0x0

    move v9, v2

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    :cond_0
    move-object v5, v3

    move-object v6, v4

    move v7, v2

    invoke-static {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 300
    :cond_1
    move-object v5, v0

    iget v5, v5, Landroidx/collection/SimpleArrayMap;->mSize:I

    move v6, v2

    if-eq v5, v6, :cond_2

    .line 301
    new-instance v5, Ljava/util/ConcurrentModificationException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5

    .line 303
    :cond_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    .prologue
    .line 683
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    move-object v8, v1

    if-ne v7, v8, :cond_0

    .line 684
    const/4 v7, 0x1

    move v0, v7

    .line 730
    :goto_0
    return v0

    .line 687
    :cond_0
    move-object v7, v1

    :try_start_0
    instance-of v7, v7, Landroidx/collection/SimpleArrayMap;

    if-eqz v7, :cond_6

    .line 688
    move-object v7, v1

    check-cast v7, Landroidx/collection/SimpleArrayMap;

    move-object v2, v7

    .line 689
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v7

    move-object v8, v2

    invoke-virtual {v8}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v8

    if-eq v7, v8, :cond_1

    .line 690
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 693
    :cond_1
    const/4 v7, 0x0

    move v3, v7

    :goto_1
    move v7, v3

    move-object v8, v0

    iget v8, v8, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-ge v7, v8, :cond_5

    .line 694
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    .line 695
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 697
    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 698
    move-object v7, v5

    if-nez v7, :cond_3

    .line 699
    move-object v7, v6

    if-nez v7, :cond_2

    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 700
    :cond_2
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 702
    :cond_3
    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 703
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 693
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 706
    :cond_5
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 707
    :cond_6
    move-object v7, v1

    instance-of v7, v7, Ljava/util/Map;

    if-eqz v7, :cond_c

    .line 708
    move-object v7, v1

    check-cast v7, Ljava/util/Map;

    move-object v2, v7

    .line 709
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v7

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    if-eq v7, v8, :cond_7

    .line 710
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 713
    :cond_7
    const/4 v7, 0x0

    move v3, v7

    :goto_2
    move v7, v3

    move-object v8, v0

    iget v8, v8, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-ge v7, v8, :cond_b

    .line 714
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    .line 715
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 716
    move-object v7, v2

    move-object v8, v4

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 717
    move-object v7, v5

    if-nez v7, :cond_9

    .line 718
    move-object v7, v6

    if-nez v7, :cond_8

    move-object v7, v2

    move-object v8, v4

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 719
    :cond_8
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0

    .line 721
    :cond_9
    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-nez v7, :cond_a

    .line 722
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0

    .line 713
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 725
    :cond_b
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 730
    :cond_c
    :goto_3
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0

    .line 727
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 729
    goto :goto_3

    .line 728
    :catch_1
    move-exception v7

    move-object v2, v7

    goto :goto_3
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 369
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .prologue
    .line 381
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v4

    move v3, v4

    .line 382
    move v4, v3

    if-ltz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v5, v3

    const/4 v6, 0x1

    shl-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    :goto_0
    move-object v0, v4

    return-object v0

    :cond_0
    move-object v4, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 11

    .prologue
    .line 738
    move-object v0, p0

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move-object v1, v8

    .line 739
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move-object v2, v8

    .line 740
    const/4 v8, 0x0

    move v3, v8

    .line 741
    const/4 v8, 0x0

    move v4, v8

    const/4 v8, 0x1

    move v5, v8

    move-object v8, v0

    iget v8, v8, Landroidx/collection/SimpleArrayMap;->mSize:I

    move v6, v8

    :goto_0
    move v8, v4

    move v9, v6

    if-ge v8, v9, :cond_1

    .line 742
    move-object v8, v2

    move v9, v5

    aget-object v8, v8, v9

    move-object v7, v8

    .line 743
    move v8, v3

    move-object v9, v1

    move v10, v4

    aget v9, v9, v10

    move-object v10, v7

    if-nez v10, :cond_0

    const/4 v10, 0x0

    :goto_1
    xor-int/2addr v9, v10

    add-int/2addr v8, v9

    move v3, v8

    .line 741
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 743
    :cond_0
    move-object v10, v7

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_1

    .line 745
    :cond_1
    move v8, v3

    move v0, v8

    return v0
.end method

.method indexOf(Ljava/lang/Object;I)I
    .locals 11

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v7, v0

    iget v7, v7, Landroidx/collection/SimpleArrayMap;->mSize:I

    move v3, v7

    .line 91
    move v7, v3

    if-nez v7, :cond_0

    .line 92
    const/4 v7, -0x1

    move v0, v7

    .line 122
    :goto_0
    return v0

    .line 95
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move v8, v3

    move v9, v2

    invoke-static {v7, v8, v9}, Landroidx/collection/SimpleArrayMap;->binarySearchHashes([III)I

    move-result v7

    move v4, v7

    .line 98
    move v7, v4

    if-gez v7, :cond_1

    .line 99
    move v7, v4

    move v0, v7

    goto :goto_0

    .line 103
    :cond_1
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v9, v4

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 104
    move v7, v4

    move v0, v7

    goto :goto_0

    .line 109
    :cond_2
    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v5, v7

    :goto_1
    move v7, v5

    move v8, v3

    if-ge v7, v8, :cond_4

    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move v8, v5

    aget v7, v7, v8

    move v8, v2

    if-ne v7, v8, :cond_4

    .line 110
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v9, v5

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v5

    move v0, v7

    goto :goto_0

    .line 109
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 114
    :cond_4
    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v6, v7

    :goto_2
    move v7, v6

    if-ltz v7, :cond_6

    move-object v7, v0

    iget-object v7, v7, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move v8, v6

    aget v7, v7, v8

    move v8, v2

    if-ne v7, v8, :cond_6

    .line 115
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v9, v6

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v6

    move v0, v7

    goto :goto_0

    .line 114
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 122
    :cond_6
    move v7, v5

    const/4 v8, -0x1

    xor-int/lit8 v7, v7, -0x1

    move v0, v7

    goto :goto_0
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 322
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/collection/SimpleArrayMap;->indexOfNull()I

    move-result v2

    :goto_0
    move v0, v2

    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroidx/collection/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v2

    goto :goto_0
.end method

.method indexOfNull()I
    .locals 9

    .prologue
    .line 126
    move-object v0, p0

    move-object v5, v0

    iget v5, v5, Landroidx/collection/SimpleArrayMap;->mSize:I

    move v1, v5

    .line 129
    move v5, v1

    if-nez v5, :cond_0

    .line 130
    const/4 v5, -0x1

    move v0, v5

    .line 160
    :goto_0
    return v0

    .line 133
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move v6, v1

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->binarySearchHashes([III)I

    move-result v5

    move v2, v5

    .line 136
    move v5, v2

    if-gez v5, :cond_1

    .line 137
    move v5, v2

    move v0, v5

    goto :goto_0

    .line 141
    :cond_1
    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v7, v2

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    aget-object v6, v6, v7

    if-ne v5, v6, :cond_2

    .line 142
    move v5, v2

    move v0, v5

    goto :goto_0

    .line 147
    :cond_2
    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v3, v5

    :goto_1
    move v5, v3

    move v6, v1

    if-ge v5, v6, :cond_4

    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move v6, v3

    aget v5, v5, v6

    if-nez v5, :cond_4

    .line 148
    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v7, v3

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    aget-object v6, v6, v7

    if-ne v5, v6, :cond_3

    move v5, v3

    move v0, v5

    goto :goto_0

    .line 147
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 152
    :cond_4
    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    :goto_2
    move v5, v4

    if-ltz v5, :cond_6

    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move v6, v4

    aget v5, v5, v6

    if-nez v5, :cond_6

    .line 153
    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v7, v4

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    aget-object v6, v6, v7

    if-ne v5, v6, :cond_5

    move v5, v4

    move v0, v5

    goto :goto_0

    .line 152
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 160
    :cond_6
    move v5, v3

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    move v0, v5

    goto :goto_0
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .locals 8

    .prologue
    .line 326
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget v5, v5, Landroidx/collection/SimpleArrayMap;->mSize:I

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    move v2, v5

    .line 327
    move-object v5, v0

    iget-object v5, v5, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move-object v3, v5

    .line 328
    move-object v5, v1

    if-nez v5, :cond_2

    .line 329
    const/4 v5, 0x1

    move v4, v5

    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 330
    move-object v5, v3

    move v6, v4

    aget-object v5, v5, v6

    if-nez v5, :cond_0

    .line 331
    move v5, v4

    const/4 v6, 0x1

    shr-int/lit8 v5, v5, 0x1

    move v0, v5

    .line 341
    :goto_1
    return v0

    .line 329
    :cond_0
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 341
    :cond_1
    const/4 v5, -0x1

    move v0, v5

    goto :goto_1

    .line 335
    :cond_2
    const/4 v5, 0x1

    move v4, v5

    :goto_2
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 336
    move-object v5, v1

    move-object v6, v3

    move v7, v4

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 337
    move v5, v4

    const/4 v6, 0x1

    shr-int/lit8 v5, v5, 0x1

    move v0, v5

    goto :goto_1

    .line 335
    :cond_3
    add-int/lit8 v4, v4, 0x2

    goto :goto_2
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 423
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyAt(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 392
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v3, v1

    const/4 v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    move-object v0, v2

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 437
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v9, v0

    iget v9, v9, Landroidx/collection/SimpleArrayMap;->mSize:I

    move v3, v9

    .line 440
    move-object v9, v1

    if-nez v9, :cond_0

    .line 441
    const/4 v9, 0x0

    move v4, v9

    .line 442
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/collection/SimpleArrayMap;->indexOfNull()I

    move-result v9

    move v5, v9

    .line 447
    :goto_0
    move v9, v5

    if-ltz v9, :cond_1

    .line 448
    move v9, v5

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v5, v9

    .line 449
    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v10, v5

    aget-object v9, v9, v10

    move-object v6, v9

    .line 450
    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v10, v5

    move-object v11, v2

    aput-object v11, v9, v10

    .line 451
    move-object v9, v6

    move-object v0, v9

    .line 495
    :goto_1
    return-object v0

    .line 444
    :cond_0
    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v9

    move v4, v9

    .line 445
    move-object v9, v0

    move-object v10, v1

    move v11, v4

    invoke-virtual {v9, v10, v11}, Landroidx/collection/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v9

    move v5, v9

    goto :goto_0

    .line 454
    :cond_1
    move v9, v5

    const/4 v10, -0x1

    xor-int/lit8 v9, v9, -0x1

    move v5, v9

    .line 455
    move v9, v3

    move-object v10, v0

    iget-object v10, v10, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    array-length v10, v10

    if-lt v9, v10, :cond_6

    .line 456
    move v9, v3

    const/16 v10, 0x8

    if-lt v9, v10, :cond_2

    move v9, v3

    move v10, v3

    const/4 v11, 0x1

    shr-int/lit8 v10, v10, 0x1

    add-int/2addr v9, v10

    .line 457
    :goto_2
    move v6, v9

    .line 461
    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move-object v7, v9

    .line 462
    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move-object v8, v9

    .line 463
    move-object v9, v0

    move v10, v6

    invoke-direct {v9, v10}, Landroidx/collection/SimpleArrayMap;->allocArrays(I)V

    .line 465
    move v9, v3

    move-object v10, v0

    iget v10, v10, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-eq v9, v10, :cond_4

    .line 466
    new-instance v9, Ljava/util/ConcurrentModificationException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v9

    .line 457
    :cond_2
    move v9, v3

    const/4 v10, 0x4

    if-lt v9, v10, :cond_3

    const/16 v9, 0x8

    goto :goto_2

    :cond_3
    const/4 v9, 0x4

    goto :goto_2

    .line 469
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    array-length v9, v9

    if-lez v9, :cond_5

    .line 471
    move-object v9, v7

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    const/4 v12, 0x0

    move-object v13, v7

    array-length v13, v13

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 472
    move-object v9, v8

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v12, 0x0

    move-object v13, v8

    array-length v13, v13

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 475
    :cond_5
    move-object v9, v7

    move-object v10, v8

    move v11, v3

    invoke-static {v9, v10, v11}, Landroidx/collection/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 478
    :cond_6
    move v9, v5

    move v10, v3

    if-ge v9, v10, :cond_7

    .line 481
    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move v10, v5

    move-object v11, v0

    iget-object v11, v11, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move v12, v5

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v13, v3

    move v14, v5

    sub-int/2addr v13, v14

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 482
    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v10, v5

    const/4 v11, 0x1

    shl-int/lit8 v10, v10, 0x1

    move-object v11, v0

    iget-object v11, v11, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v12, v5

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x1

    shl-int/lit8 v12, v12, 0x1

    move-object v13, v0

    iget v13, v13, Landroidx/collection/SimpleArrayMap;->mSize:I

    move v14, v5

    sub-int/2addr v13, v14

    const/4 v14, 0x1

    shl-int/lit8 v13, v13, 0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 486
    :cond_7
    move v9, v3

    move-object v10, v0

    iget v10, v10, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-ne v9, v10, :cond_8

    move v9, v5

    move-object v10, v0

    iget-object v10, v10, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    array-length v10, v10

    if-lt v9, v10, :cond_9

    .line 487
    :cond_8
    new-instance v9, Ljava/util/ConcurrentModificationException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v9

    .line 491
    :cond_9
    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move v10, v5

    move v11, v4

    aput v11, v9, v10

    .line 492
    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v10, v5

    const/4 v11, 0x1

    shl-int/lit8 v10, v10, 0x1

    move-object v11, v1

    aput-object v11, v9, v10

    .line 493
    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v10, v5

    const/4 v11, 0x1

    shl-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object v11, v2

    aput-object v11, v9, v10

    .line 494
    move-object v9, v0

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    iget v10, v10, Landroidx/collection/SimpleArrayMap;->mSize:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 495
    const/4 v9, 0x0

    move-object v0, v9

    goto/16 :goto_1
.end method

.method public putAll(Landroidx/collection/SimpleArrayMap;)V
    .locals 10
    .param p1    # Landroidx/collection/SimpleArrayMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SimpleArrayMap",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 503
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    iget v4, v4, Landroidx/collection/SimpleArrayMap;->mSize:I

    move v2, v4

    .line 504
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Landroidx/collection/SimpleArrayMap;->mSize:I

    move v6, v2

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroidx/collection/SimpleArrayMap;->ensureCapacity(I)V

    .line 505
    move-object v4, v0

    iget v4, v4, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-nez v4, :cond_1

    .line 506
    move v4, v2

    if-lez v4, :cond_0

    .line 507
    move-object v4, v1

    iget-object v4, v4, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    const/4 v7, 0x0

    move v8, v2

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 508
    move-object v4, v1

    iget-object v4, v4, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v7, 0x0

    move v8, v2

    const/4 v9, 0x1

    shl-int/lit8 v8, v8, 0x1

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 516
    :cond_0
    return-void

    .line 512
    :cond_1
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 513
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 512
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 528
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 529
    move-object v4, v3

    if-nez v4, :cond_0

    .line 530
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 532
    :cond_0
    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 543
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v3

    move v2, v3

    .line 544
    move v3, v2

    if-ltz v3, :cond_0

    .line 545
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .line 548
    :goto_0
    return-object v0

    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 558
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v5

    move v3, v5

    .line 559
    move v5, v3

    if-ltz v5, :cond_1

    .line 560
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 561
    move-object v5, v2

    move-object v6, v4

    if-eq v5, v6, :cond_0

    move-object v5, v2

    if-eqz v5, :cond_1

    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 562
    :cond_0
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 563
    const/4 v5, 0x1

    move v0, v5

    .line 566
    :goto_0
    return v0

    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 576
    move-object v0, p0

    move/from16 v1, p1

    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v9, v1

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-object v8, v8, v9

    move-object v2, v8

    .line 577
    move-object v8, v0

    iget v8, v8, Landroidx/collection/SimpleArrayMap;->mSize:I

    move v3, v8

    .line 578
    move v8, v3

    const/4 v9, 0x1

    if-gt v8, v9, :cond_0

    .line 581
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 628
    :goto_0
    move-object v8, v2

    move-object v0, v8

    return-object v0

    .line 583
    :cond_0
    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v4, v8

    .line 584
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    array-length v8, v8

    const/16 v9, 0x8

    if-le v8, v9, :cond_5

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    array-length v9, v9

    const/4 v10, 0x3

    div-int/lit8 v9, v9, 0x3

    if-ge v8, v9, :cond_5

    .line 588
    move v8, v3

    const/16 v9, 0x8

    if-le v8, v9, :cond_1

    move v8, v3

    move v9, v3

    const/4 v10, 0x1

    shr-int/lit8 v9, v9, 0x1

    add-int/2addr v8, v9

    :goto_1
    move v5, v8

    .line 592
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move-object v6, v8

    .line 593
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move-object v7, v8

    .line 594
    move-object v8, v0

    move v9, v5

    invoke-direct {v8, v9}, Landroidx/collection/SimpleArrayMap;->allocArrays(I)V

    .line 596
    move v8, v3

    move-object v9, v0

    iget v9, v9, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-eq v8, v9, :cond_2

    .line 597
    new-instance v8, Ljava/util/ConcurrentModificationException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v8

    .line 588
    :cond_1
    const/16 v8, 0x8

    goto :goto_1

    .line 600
    :cond_2
    move v8, v1

    if-lez v8, :cond_3

    .line 602
    move-object v8, v6

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    const/4 v11, 0x0

    move v12, v1

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 603
    move-object v8, v7

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v11, 0x0

    move v12, v1

    const/4 v13, 0x1

    shl-int/lit8 v12, v12, 0x1

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 605
    :cond_3
    move v8, v1

    move v9, v4

    if-ge v8, v9, :cond_4

    .line 608
    move-object v8, v6

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move v11, v1

    move v12, v4

    move v13, v1

    sub-int/2addr v12, v13

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 609
    move-object v8, v7

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v11, v1

    const/4 v12, 0x1

    shl-int/lit8 v11, v11, 0x1

    move v12, v4

    move v13, v1

    sub-int/2addr v12, v13

    const/4 v13, 0x1

    shl-int/lit8 v12, v12, 0x1

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 623
    :cond_4
    :goto_2
    move v8, v3

    move-object v9, v0

    iget v9, v9, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-eq v8, v9, :cond_7

    .line 624
    new-instance v8, Ljava/util/ConcurrentModificationException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v8

    .line 613
    :cond_5
    move v8, v1

    move v9, v4

    if-ge v8, v9, :cond_6

    .line 616
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    move v11, v1

    move v12, v4

    move v13, v1

    sub-int/2addr v12, v13

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 617
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v11, v1

    const/4 v12, 0x1

    shl-int/lit8 v11, v11, 0x1

    move v12, v4

    move v13, v1

    sub-int/2addr v12, v13

    const/4 v13, 0x1

    shl-int/lit8 v12, v12, 0x1

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 620
    :cond_6
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v9, v4

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    .line 621
    move-object v8, v0

    iget-object v8, v8, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v9, v4

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    goto :goto_2

    .line 626
    :cond_7
    move-object v8, v0

    move v9, v4

    iput v9, v8, Landroidx/collection/SimpleArrayMap;->mSize:I

    goto/16 :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 639
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v4

    move v3, v4

    .line 640
    move v4, v3

    if-ltz v4, :cond_0

    .line 641
    move-object v4, v0

    move v5, v3

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .line 643
    :goto_0
    return-object v0

    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 655
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v6

    move v4, v6

    .line 656
    move v6, v4

    if-ltz v6, :cond_1

    .line 657
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 658
    move-object v6, v5

    move-object v7, v2

    if-eq v6, v7, :cond_0

    move-object v6, v2

    if-eqz v6, :cond_1

    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 659
    :cond_0
    move-object v6, v0

    move v7, v4

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Landroidx/collection/SimpleArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 660
    const/4 v6, 0x1

    move v0, v6

    .line 663
    :goto_0
    return v0

    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 413
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v1

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v1, v4

    .line 414
    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v5, v1

    aget-object v4, v4, v5

    move-object v3, v4

    .line 415
    move-object v4, v0

    iget-object v4, v4, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v5, v1

    move-object v6, v2

    aput-object v6, v4, v5

    .line 416
    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 670
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/collection/SimpleArrayMap;->mSize:I

    move v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 757
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 758
    const-string v5, "{}"

    move-object v0, v5

    .line 782
    :goto_0
    return-object v0

    .line 761
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget v7, v7, Landroidx/collection/SimpleArrayMap;->mSize:I

    const/16 v8, 0x1c

    mul-int/lit8 v7, v7, 0x1c

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v5

    .line 762
    move-object v5, v1

    const/16 v6, 0x7b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 763
    const/4 v5, 0x0

    move v2, v5

    :goto_1
    move v5, v2

    move-object v6, v0

    iget v6, v6, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-ge v5, v6, :cond_4

    .line 764
    move v5, v2

    if-lez v5, :cond_1

    .line 765
    move-object v5, v1

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 767
    :cond_1
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 768
    move-object v5, v3

    move-object v6, v0

    if-eq v5, v6, :cond_2

    .line 769
    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 773
    :goto_2
    move-object v5, v1

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 774
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 775
    move-object v5, v4

    move-object v6, v0

    if-eq v5, v6, :cond_3

    .line 776
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 763
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 771
    :cond_2
    move-object v5, v1

    const-string v6, "(this Map)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_2

    .line 778
    :cond_3
    move-object v5, v1

    const-string v6, "(this Map)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_3

    .line 781
    :cond_4
    move-object v5, v1

    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 782
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 402
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v3, v1

    const/4 v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    move-object v0, v2

    return-object v0
.end method
